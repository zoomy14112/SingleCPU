`timescale 1ns / 1ps
module sd_controller(
    input clk,              // 100MHz
    input rst,              // active high
    // CPU register interface (address 0xe9000000+)
    //   reg 0: STATUS (r/w)   write: bit0=go, bit1=is_write   read: bit0=busy
    //   reg 1: BLK_ADDR (r/w) block address
    //   reg 2: DATA    (r/w) data word; auto-inc word_addr on access
    //   reg 3: WORD_ADDR(w)   set word pointer 0-127
    input [1:0] reg_a,      // register address
    input [31:0] data_in,   // write data
    output [31:0] data_out, // read data (combinational from registers)
    input we,               // write enable
    // SD card
    output reg sd_clk,
    inout sd_cmd,
    inout [3:0] sd_dat,
    input sd_cd,
    output reg sd_reset
);

    // ---- block buffer (128 words = 512 bytes) ----
    (* ram_style = "distributed" *) reg [31:0] buffer [0:127];

    // SD-side buffer write signals
    reg        buf_sd_we;
    reg [6:0]  buf_sd_waddr;
    reg [31:0] buf_sd_wdata;

    // Register file
    reg sd_busy;
    reg sd_cmd_go;
    reg sd_cmd_write;
    reg [31:0] sd_blk_addr;
    reg [6:0]  sd_word_addr;

    // Single always block for ALL buffer writes (CPU + SD data)
    always@(posedge clk)
    begin
        if(we && reg_a == 2'd2)
            buffer[sd_word_addr] <= data_in;
        else if(buf_sd_we)
            buffer[buf_sd_waddr] <= buf_sd_wdata;
    end

    // Register write (non-buffer)
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            sd_cmd_go    <= 1'b0;
            sd_cmd_write <= 1'b0;
            sd_blk_addr  <= 32'h0;
            sd_word_addr <= 7'd0;
        end
        else if(we)
        begin
            case(reg_a)
                2'd0: begin
                    sd_cmd_go    <= data_in[0];
                    sd_cmd_write <= data_in[1];
                end
                2'd1: sd_blk_addr <= data_in;
                2'd2: sd_word_addr <= sd_word_addr + 1'b1; // buffer write in separate block
                2'd3: sd_word_addr <= data_in[6:0];
            endcase
        end
    end

    // Register read (combinational for MIO_BUS compatibility)
    assign data_out = (reg_a == 2'd0) ? {31'b0, sd_busy} :
                      (reg_a == 2'd1) ? sd_blk_addr :
                      (reg_a == 2'd2) ? buffer[sd_word_addr] :
                      32'h0;

    // ---- SD_CLK: 400kHz from 100MHz (div by 250 => 125 counts per half-cycle) ----
    reg [7:0] div;
    wire sck_rise = (div == 8'd124); // sd_clk goes 0->1 when counter resets
    wire sck_fall = (div == 8'd61);  // sd_clk goes 1->0 mid-cycle
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            div <= 0;
            sd_clk <= 0;
        end
        else begin
            if(div == 8'd124) div <= 0;
            else              div <= div + 1'b1;
            if(sck_rise)      sd_clk <= 1'b1;
            else if(sck_fall) sd_clk <= 1'b0;
        end
    end

    // ---- SD bus tristate ----
    reg cmd_oe, cmd_out;
    reg dat_oe;
    reg [3:0] dat_out;
    assign sd_cmd = cmd_oe ? cmd_out : 1'bz;
    assign sd_dat[0] = dat_oe ? dat_out[0] : 1'bz;
    assign sd_dat[1] = dat_oe ? dat_out[1] : 1'bz;
    assign sd_dat[2] = dat_oe ? dat_out[2] : 1'bz;
    assign sd_dat[3] = dat_oe ? dat_out[3] : 1'bz;

    // ---- FSM ----
    localparam S_IDLE       = 5'd0;
    localparam S_CMD_TX     = 5'd1;
    localparam S_RESP_RX    = 5'd2;
    localparam S_RD_TOKEN   = 5'd3;
    localparam S_RD_DATA    = 5'd4;
    localparam S_RD_CRC     = 5'd5;
    localparam S_WR_TX      = 5'd6;
    localparam S_WR_DATA    = 5'd7;
    localparam S_WR_CRC     = 5'd8;
    localparam S_WR_RESP    = 5'd9;
    localparam S_WR_BUSY    = 5'd10;
    localparam S_DONE       = 5'd11;
    reg [4:0] st;

    // Command register (48 bits = start[01] + cmd[6] + arg[32] + crc[7] + stop[1])
    reg [47:0] cmd;
    reg [5:0]  cmd_bit;   // 48->0
    reg [5:0]  resp_bit;  // response bit counter

    // Data phase
    reg [9:0]  byte_cnt;  // 0-511
    reg        nibble;    // 0=upper nibble, 1=lower nibble
    reg [7:0]  shift_byte;
    reg [31:0] rd_word;   // word being assembled during read

    // Timeout
    reg [23:0] timer;

    // CRC7 for CMD (polynomial x^7 + x^3 + 1, seed=0, invert output)
    function [6:0] f_crc7;
        input [39:0] d;
        reg [6:0] c;
        reg inv;
        integer i;
        begin
            c = 7'h00;
            for(i=39; i>=0; i=i-1) begin
                inv = c[6] ^ d[i];
                c = {c[5:0], 1'b0};
                if(inv) c = c ^ 7'h09;
            end
            f_crc7 = {~c[6], ~c[5], ~c[4], ~c[3], ~c[2], ~c[1], ~c[0]};
        end
    endfunction

    wire [39:0] cmd_body = {2'b01, sd_cmd_write ? 6'd24 : 6'd17, sd_blk_addr};
    wire [6:0]  cmd_crc  = f_crc7(cmd_body);

    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            st          <= S_IDLE;
            sd_busy     <= 1'b1;
            sd_reset    <= 1'b1;
            sd_cmd_go   <= 1'b0;
            cmd         <= 48'h0;
            cmd_bit     <= 6'd0;
            cmd_oe      <= 1'b0;
            dat_oe      <= 1'b0;
            byte_cnt    <= 10'd0;
            nibble      <= 1'b0;
            timer       <= 24'd0;
            buf_sd_we   <= 1'b0;
        end
        else
        begin
            case(st)

                S_IDLE:
                begin
                    sd_reset <= 1'b0;
                    sd_busy  <= 1'b0;
                    cmd_oe   <= 1'b0;
                    dat_oe   <= 1'b0;
                    if(sd_cmd_go)
                    begin
                        sd_busy  <= 1'b1;
                        sd_cmd_go<= 1'b0;
                        cmd      <= {cmd_body, cmd_crc, 1'b1};
                        cmd_bit  <= 6'd48;
                        timer    <= 24'd0;
                        st       <= S_CMD_TX;
                    end
                end

                // ---- send 48-bit command on CMD line ----
                S_CMD_TX:
                begin
                    if(sck_fall)
                    begin
                        if(cmd_bit > 0)
                        begin
                            cmd_oe  <= 1'b1;
                            cmd_out <= cmd[47];
                            cmd     <= {cmd[46:0], 1'b0};
                            cmd_bit <= cmd_bit - 1'b1;
                        end
                        else
                        begin
                            cmd_oe  <= 1'b0;
                            resp_bit<= 6'd0;
                            timer   <= 24'd0;
                            st      <= S_RESP_RX;
                        end
                    end
                end

                // ---- receive 48-bit R1 response ----
                S_RESP_RX:
                begin
                    if(sck_rise)
                    begin
                        resp_bit <= resp_bit + 1'b1;
                        if(resp_bit == 6'd47)
                        begin
                            st <= sd_cmd_write ? S_WR_TX : S_RD_TOKEN;
                            timer    <= 24'd0;
                            byte_cnt <= 10'd0;
                            nibble   <= 1'b0;
                        end
                    end
                    // timeout
                    if(sck_fall)
                    begin
                        timer <= timer + 1'b1;
                        if(&timer) st <= S_IDLE; // ~0.67s timeout
                    end
                end

                // ---- read: wait for 0xFE data token on DAT[0] ----
                S_RD_TOKEN:
                begin
                    if(sck_rise)
                    begin
                        if(!sd_dat[0])  // start bit
                        begin
                            shift_byte <= 8'h0;
                            st <= S_RD_DATA;
                        end
                    end
                    if(sck_fall)
                    begin
                        timer <= timer + 1'b1;
                        if(&timer) st <= S_IDLE;
                    end
                end

                // ---- read: capture 512 bytes from DAT[3:0] ----
                S_RD_DATA:
                begin
                    buf_sd_we <= 1'b0; // default: no write
                    if(sck_rise)
                    begin
                        shift_byte <= {shift_byte[3:0], sd_dat[3:0]};
                        nibble <= ~nibble;
                        if(nibble) // just captured lower nibble, byte complete
                        begin
                            // assemble bytes into 32-bit word
                            case(byte_cnt[1:0])
                                2'd0: rd_word[31:24] <= shift_byte;
                                2'd1: rd_word[23:16] <= shift_byte;
                                2'd2: rd_word[15:8]  <= shift_byte;
                                2'd3: begin
                                    rd_word[7:0] <= shift_byte;
                                    // word complete, write to buffer
                                    buf_sd_we    <= 1'b1;
                                    buf_sd_waddr <= byte_cnt[9:2];
                                    buf_sd_wdata <= {rd_word[31:16], rd_word[15:8], shift_byte};
                                end
                            endcase
                            byte_cnt <= byte_cnt + 1'b1;
                            if(byte_cnt == 10'd511)
                            begin
                                st <= S_RD_CRC;
                                byte_cnt <= 10'd0;
                            end
                        end
                    end
                end

                // ---- read: consume 2 CRC bytes (4 nibbles) ----
                S_RD_CRC:
                begin
                    if(sck_rise)
                    begin
                        byte_cnt <= byte_cnt + 1'b1;
                        if(byte_cnt == 10'd3) st <= S_DONE;
                    end
                end

                // ---- write: wait Nwr (8 SD_CLK) after response ----
                S_WR_TX:
                begin
                    if(sck_fall)
                    begin
                        timer <= timer + 1'b1;
                        if(timer == 24'd8)
                        begin
                            // Send start bit (bit 0 of data token 0xFE)
                            dat_oe   <= 1'b1;
                            dat_out  <= 4'h0;   // start bit (low nibble)
                            nibble   <= 1'b0;
                            byte_cnt <= 10'd0;
                            st       <= S_WR_DATA;
                        end
                    end
                end

                // ---- write: send data token + 512 bytes on DAT[3:0] ----
                S_WR_DATA:
                begin
                    if(sck_fall)
                    begin
                        if(byte_cnt < 10'd512)
                        begin
                            if(byte_cnt == 10'd0)
                            begin
                                // Data token: 0xFE (upper nibble first)
                                dat_out <= nibble ? 4'hE : 4'hF;
                            end
                            else
                            begin
                                // Read byte from buffer at position (byte_cnt-1)
                                case(byte_cnt[1:0])
                                    2'd1: dat_out <= nibble ? buffer[{byte_cnt[9:2]}][27:24]
                                                            : buffer[{byte_cnt[9:2]}][31:28];
                                    2'd2: dat_out <= nibble ? buffer[{byte_cnt[9:2]}][19:16]
                                                            : buffer[{byte_cnt[9:2]}][23:20];
                                    2'd3: dat_out <= nibble ? buffer[{byte_cnt[9:2]}][11:8]
                                                            : buffer[{byte_cnt[9:2]}][15:12];
                                    2'd0: dat_out <= nibble ? buffer[{byte_cnt[9:2]}][3:0]
                                                            : buffer[{byte_cnt[9:2]}][7:4];
                                endcase
                            end
                        end

                        nibble <= ~nibble;
                        if(nibble)
                        begin
                            byte_cnt <= byte_cnt + 1'b1;
                            if(byte_cnt == 10'd512)
                            begin
                                dat_oe <= 1'b0;
                                byte_cnt <= 10'd0;
                                st <= S_WR_CRC;
                            end
                        end
                    end
                end

                // ---- write: send CRC16 (2 bytes padded) ----
                S_WR_CRC:
                begin
                    if(sck_fall)
                    begin
                        dat_oe <= 1'b1;
                        dat_out <= 4'hF; // dummy CRC
                        byte_cnt <= byte_cnt + 1'b1;
                        if(byte_cnt == 10'd4)
                        begin
                            dat_oe <= 1'b0;
                            st <= S_WR_RESP;
                            byte_cnt <= 10'd0;
                        end
                    end
                end

                // ---- write: check data response token ----
                S_WR_RESP:
                begin
                    if(sck_rise)
                    begin
                        // Wait for DAT[0] to show response pattern
                        byte_cnt <= byte_cnt + 1'b1;
                        if(byte_cnt == 10'd8)
                            st <= S_WR_BUSY;
                    end
                end

                // ---- write: wait for card to finish programming ----
                S_WR_BUSY:
                begin
                    if(sck_rise)
                        if(sd_dat[0]) // DAT[0] high = not busy
                            st <= S_DONE;
                end

                // ---- done ----
                S_DONE:
                begin
                    sd_busy <= 1'b0;
                    st      <= S_IDLE;
                end

                default: st <= S_IDLE;
            endcase
        end
    end

endmodule
