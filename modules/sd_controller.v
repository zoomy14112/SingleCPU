`timescale 1ns / 1ps
module sd_controller(
    input clk, input rst,
    input [1:0] reg_a, input [31:0] data_in, output [31:0] data_out, input we,
    output reg sd_clk, inout sd_cmd, inout [3:0] sd_dat,
    input sd_cd, output reg sd_reset
);

    // ---- Block buffer ----
    (* ram_style = "distributed" *) reg [31:0] buffer [0:127];
    reg buf_sd_we; reg [6:0] buf_sd_waddr; reg [31:0] buf_sd_wdata;
    reg [6:0] buf_sd_raddr;
    wire [31:0] buf_sd_rdata = buffer[buf_sd_raddr];

    // ---- Register file ----
    reg sd_busy, cmd_req, sd_cmd_write;
    reg [31:0] sd_blk_addr;
    reg [6:0] sd_word_addr;
    reg we_d;

    always@(posedge clk or posedge rst) begin
        if(rst) begin
            cmd_req <= 0; sd_cmd_write <= 0; sd_blk_addr <= 0;
            sd_word_addr <= 0; we_d <= 0;
        end else begin
            we_d <= we; cmd_req <= 0;
            if(we && !we_d) begin
                case(reg_a)
                    2'd0: begin cmd_req <= data_in[0]; sd_cmd_write <= data_in[1]; end
                    2'd1: sd_blk_addr <= data_in;
                    2'd2: begin buffer[sd_word_addr] <= data_in; sd_word_addr <= sd_word_addr + 1; end
                    2'd3: sd_word_addr <= data_in[6:0];
                endcase
            end else if(buf_sd_we) buffer[buf_sd_waddr] <= buf_sd_wdata;
        end
    end

    assign data_out = (reg_a == 2'd0) ? {31'b0, sd_busy} :
                      (reg_a == 2'd1) ? sd_blk_addr :
                      (reg_a == 2'd2) ? buffer[sd_word_addr] : 32'h0;

    // ---- SD_CLK: 400kHz (div by 250) ----
    reg [7:0] div;
    wire sck_rise = (div == 8'd249);
    wire sck_fall = (div == 8'd124);
    always@(posedge clk or posedge rst) begin
        if(rst) begin div <= 0; sd_clk <= 0; end
        else begin
            if(div == 8'd249) div <= 0; else div <= div + 1;
            if(sck_rise) sd_clk <= 1; else if(sck_fall) sd_clk <= 0;
        end
    end

    // ---- SPI bus ----
    reg cs, mosi, cs_oe, mosi_oe;
    assign sd_cmd    = mosi_oe ? mosi : 1'bz;
    assign sd_dat[3] = cs_oe   ? cs   : 1'bz;
    assign sd_dat[2] = 1'bz;
    assign sd_dat[1] = 1'bz;
    assign sd_dat[0] = 1'bz;
    wire miso = sd_dat[0];

    // ---- FSM ----
    localparam [5:0]
        S_INIT0=0, S_INIT1=1, S_INIT2=2, S_INIT3=3, S_INIT4=4,
        S_INIT5=5, S_INIT6=6, S_INIT7=7, S_INIT8=8, S_INIT9=9,
        S_IDLE=10, S_TXCMD=11, S_RXCMD=12,
        S_RD_WAIT=13, S_RD_DATA=14, S_RD_CRC=15,
        S_WR_WAIT=16, S_WR_DAT0=17, S_WR_DATA=18,
        S_WR_RESP=19, S_WR_BUSY=20;

    reg [5:0] st, ret_st;
    reg [15:0] retry;
    reg cmd_pending, cmd_is_write;
    reg [7:0] sr;
    reg [2:0] bit_cnt;
    reg [9:0] byte_cnt;
    reg [25:0] timer;
    reg [31:0] rd_word;
    reg [1:0] wr_byte;
    reg [6:0] wr_addr;

    always@(posedge clk or posedge rst) begin
        if(rst) begin
            st <= S_INIT0; ret_st <= S_IDLE; retry <= 0;
            cmd_pending <= 0; cmd_is_write <= 0;
            sd_busy <= 1; sd_reset <= 1;
            cs <= 1; cs_oe <= 1; mosi <= 1; mosi_oe <= 1;
            sr <= 0; bit_cnt <= 0; byte_cnt <= 0;
            timer <= 0; rd_word <= 0; wr_byte <= 0; wr_addr <= 0;
            buf_sd_we <= 0; buf_sd_waddr <= 0; buf_sd_wdata <= 0; buf_sd_raddr <= 0;
        end else begin
            buf_sd_we <= 0;
            if(cmd_req) begin cmd_pending <= 1; cmd_is_write <= sd_cmd_write; end

            case(st)

                // ===== INIT0: power-up 4ms =====
                S_INIT0: begin
                    sd_reset <= 0; cs <= 1; mosi <= 1;
                    timer <= timer + 1;
                    if(timer >= 26'd400_000) begin timer <= 0; byte_cnt <= 0; st <= S_INIT1; end
                end

                // ===== INIT1: 80 clocks CS=1 =====
                S_INIT1: begin
                    cs <= 1; mosi <= 1;
                    if(sck_rise) begin
                        byte_cnt <= byte_cnt + 1;
                        if(byte_cnt == 10'd79) begin
                            cs <= 0; byte_cnt <= 0; bit_cnt <= 0; sr <= 8'h40; st <= S_INIT2;
                        end
                    end
                end

                // ===== INIT2: send CMD0 =====
                S_INIT2: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0};
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            case(byte_cnt) 10'd0,10'd1,10'd2,10'd3: sr <= 8'h00; 10'd4: sr <= 8'h95; default: sr <= 8'hFF; endcase
                            byte_cnt <= byte_cnt + 1;
                        end else bit_cnt <= bit_cnt + 1;
                    end
                    if(byte_cnt == 10'd6) begin byte_cnt <= 0; bit_cnt <= 0; timer <= 0; st <= S_INIT3; end
                end

                // ===== INIT3: read R1 after CMD0 (just consume 8 bits) =====
                S_INIT3: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0; byte_cnt <= 0; timer <= 0; sr <= 8'h48; st <= S_INIT4; end
                    end
                    if(timer >= 26'd50000) begin timer <= 0; sr <= 8'h48; byte_cnt <= 0; st <= S_INIT4; end else timer <= timer + 1;
                end

                // ===== INIT4: send CMD8 =====
                S_INIT4: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0};
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            case(byte_cnt) 10'd0,10'd1: sr <= 8'h00; 10'd2: sr <= 8'h01; 10'd3: sr <= 8'hAA; 10'd4: sr <= 8'h87; default: sr <= 8'hFF; endcase
                            byte_cnt <= byte_cnt + 1;
                        end else bit_cnt <= bit_cnt + 1;
                    end
                    if(byte_cnt == 10'd6) begin byte_cnt <= 0; bit_cnt <= 0; timer <= 0; st <= S_INIT5; end
                end

                // ===== INIT5: read R7 (5 bytes) =====
                S_INIT5: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin
                            byte_cnt <= byte_cnt + 1;
                            if(byte_cnt == 10'd4) begin byte_cnt <= 0; bit_cnt <= 0; retry <= 0; sr <= 8'h77; st <= S_INIT6; end
                        end
                    end
                    if(timer >= 26'd50000) begin timer <= 0; sr <= 8'h77; byte_cnt <= 0; st <= S_INIT6; end else timer <= timer + 1;
                end

                // ===== INIT6: send CMD55 =====
                S_INIT6: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0};
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            case(byte_cnt) 10'd0,10'd1,10'd2,10'd3: sr <= 8'h00; 10'd4: sr <= 8'hFF; default: sr <= 8'hFF; endcase
                            byte_cnt <= byte_cnt + 1;
                        end else bit_cnt <= bit_cnt + 1;
                    end
                    if(byte_cnt == 10'd6) begin byte_cnt <= 0; bit_cnt <= 0; st <= S_INIT7; end
                end

                // ===== INIT7: read R1 after CMD55 =====
                S_INIT7: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0; sr <= 8'h69; st <= S_INIT8; end
                    end
                end

                // ===== INIT8: send ACMD41 =====
                S_INIT8: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0};
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            case(byte_cnt) 10'd0: sr <= 8'h40; 10'd1: sr <= 8'hFF; 10'd2: sr <= 8'h80; 10'd3: sr <= 8'h00; 10'd4: sr <= 8'hFF; default: sr <= 8'hFF; endcase
                            byte_cnt <= byte_cnt + 1;
                        end else bit_cnt <= bit_cnt + 1;
                    end
                    if(byte_cnt == 10'd6) begin byte_cnt <= 0; bit_cnt <= 0; st <= S_INIT9; end
                end

                // ===== INIT9: check ready =====
                S_INIT9: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            if(miso == 0) begin sd_busy <= 0; st <= S_IDLE; end
                            else if(retry < 5000) begin retry <= retry + 1; sr <= 8'h77; byte_cnt <= 0; st <= S_INIT6; end
                            else begin sd_busy <= 0; st <= S_IDLE; end
                        end
                    end
                end

                // ===== IDLE =====
                S_IDLE: begin
                    sd_busy <= 0; cs <= 1; mosi <= 1;
                    if(cmd_pending) begin
                        cmd_pending <= 0; sd_busy <= 1;
                        byte_cnt <= 0; bit_cnt <= 0; timer <= 0;
                        sr <= {2'b01, cmd_is_write ? 6'd24 : 6'd17};
                        if(cmd_is_write) ret_st <= S_WR_WAIT; else ret_st <= S_RD_WAIT;
                        st <= S_TXCMD;
                    end
                end

                // ===== TXCMD: send user command =====
                S_TXCMD: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0};
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            case(byte_cnt) 10'd0: sr <= sd_blk_addr[31:24]; 10'd1: sr <= sd_blk_addr[23:16]; 10'd2: sr <= sd_blk_addr[15:8]; 10'd3: sr <= sd_blk_addr[7:0]; 10'd4: sr <= 8'h01; default: sr <= 8'hFF; endcase
                            byte_cnt <= byte_cnt + 1;
                        end else bit_cnt <= bit_cnt + 1;
                    end
                    if(byte_cnt == 10'd6) begin byte_cnt <= 0; bit_cnt <= 0; timer <= 0; st <= S_RXCMD; end
                end

                // ===== RXCMD: read R1 =====
                S_RXCMD: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso};
                        if(bit_cnt == 0 && miso == 1) begin
                            // wait start bit
                        end else begin
                            bit_cnt <= bit_cnt + 1;
                            if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                                if({sr[6:0], miso} != 8'h00) begin sd_busy <= 0; st <= S_IDLE; end
                                else begin timer <= 0; byte_cnt <= 0; bit_cnt <= 0; st <= ret_st; end
                            end
                        end
                    end
                    if(timer >= 26'd5_000_000) begin sd_busy <= 0; st <= S_IDLE; end else timer <= timer + 1;
                end

                // ===== RD_WAIT: wait 0xFE =====
                S_RD_WAIT: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso};
                        if({sr[6:0], miso} == 8'hFE) begin byte_cnt <= 0; bit_cnt <= 0; rd_word <= 0; st <= S_RD_DATA; end
                    end
                    if(timer >= 26'd50_000_000) begin sd_busy <= 0; st <= S_IDLE; end else timer <= timer + 1;
                end

                // ===== RD_DATA: 512 bytes =====
                S_RD_DATA: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;
                            rd_word <= {rd_word[23:0], sr[6:0], miso};
                            if(byte_cnt[1:0] == 2'd3) begin
                                buf_sd_we <= 1; buf_sd_waddr <= byte_cnt[8:2];
                                buf_sd_wdata <= {rd_word[23:0], sr[6:0], miso};
                            end
                            if(byte_cnt == 10'd511) begin byte_cnt <= 0; st <= S_RD_CRC; end else byte_cnt <= byte_cnt + 1;
                        end
                    end
                end

                // ===== RD_CRC: 2 bytes =====
                S_RD_CRC: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0; byte_cnt <= byte_cnt + 1;
                            if(byte_cnt == 10'd1) begin sd_busy <= 0; st <= S_IDLE; end
                        end
                    end
                end

                // ===== WR_WAIT: Nwr delay =====
                S_WR_WAIT: begin
                    cs <= 0; mosi <= 1;
                    if(timer >= 26'd200) begin timer <= 0; byte_cnt <= 0; bit_cnt <= 0; sr <= 8'hFE; wr_addr <= 0; buf_sd_raddr <= 0; st <= S_WR_DAT0; end
                    else timer <= timer + 1;
                end

                // ===== WR_DAT0: send start token =====
                S_WR_DAT0: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0; byte_cnt <= 0; wr_byte <= 0; buf_sd_raddr <= wr_addr; sr <= buffer[wr_addr][31:24]; st <= S_WR_DATA; end
                    end
                end

                // ===== WR_DATA: 512 bytes + 2 CRC =====
                S_WR_DATA: begin
                    cs <= 0;
                    if(sck_fall) begin
                        mosi <= sr[7]; sr <= {sr[6:0],1'b0}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0; byte_cnt <= byte_cnt + 1;
                            if(byte_cnt == 10'd511) sr <= 8'hFF;
                            else if(byte_cnt == 10'd512) sr <= 8'hFF;
                            else if(byte_cnt == 10'd513) begin byte_cnt <= 0; timer <= 0; st <= S_WR_RESP; end
                            else begin
                                if(wr_byte == 2'd3) begin wr_byte <= 0; wr_addr <= wr_addr + 1; buf_sd_raddr <= wr_addr + 7'd1; sr <= buffer[wr_addr + 7'd1][31:24]; end
                                else begin wr_byte <= wr_byte + 1;
                                    case(wr_byte) 2'd0: sr <= buf_sd_rdata[23:16]; 2'd1: sr <= buf_sd_rdata[15:8]; 2'd2: sr <= buf_sd_rdata[7:0]; endcase
                                end
                            end
                        end
                    end
                end

                // ===== WR_RESP: read data response =====
                S_WR_RESP: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso};
                        if(bit_cnt == 0 && miso == 1) begin
                            // wait start bit of response
                        end else begin
                            bit_cnt <= bit_cnt + 1;
                            if(bit_cnt == 3'd7) begin bit_cnt <= 0; timer <= 0; st <= S_WR_BUSY; end
                        end
                    end
                    if(timer >= 26'd5_000_000) begin timer <= 0; st <= S_WR_BUSY; end else timer <= timer + 1;
                end

                // ===== WR_BUSY: wait MISO high =====
                S_WR_BUSY: begin
                    cs <= 0; mosi <= 1;
                    if(timer < 26'd500) begin
                        timer <= timer + 1;
                    end else begin
                        if(sck_rise && miso == 1) begin sd_busy <= 0; st <= S_IDLE; end
                        if(timer >= 26'd50_000_000) begin sd_busy <= 0; st <= S_IDLE; end else timer <= timer + 1;
                    end
                end

                default: begin sd_busy <= 0; st <= S_IDLE; end

            endcase
        end
    end

endmodule