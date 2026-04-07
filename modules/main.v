`timescale 1ns/1ps
module main(btn_i,clk,sw_i,rstn,led_o,disp_an_o,disp_seg_o,PS2_CLK,PS2_DATA,AUD_PWM,AUD_SD);
    input [4:0] btn_i;
    input clk;
    input [15:0] sw_i;
    input rstn;
    output [15:0] led_o;
    output [7:0] disp_an_o;
    output [7:0] disp_seg_o;

    // extra parts - interface
    input PS2_CLK;
    input PS2_DATA;
    output AUD_PWM;
    output AUD_SD;

    // extra parts - PS2 keyboard
    wire [31:0] Scancode;
    wire [7:0] testkey;
    wire [7:0] keyboard_data;
    wire keyboard_int;
    wire cpu_ready;
    PS2IO EX1_keyboard(
        .io_read_clk(clk), // unused
        .clk(clk),
        .rst(~rstn),
        .PS2C(PS2_CLK),
        .PS2D(PS2_DATA),
        .RD(cpu_ready),
        .testkey(testkey),
        .Scancode(Scancode),
        .key(keyboard_data),
        .PS2Ready(keyboard_int)
    );

    // extra parts - audio
    wire audio_we;
    wire [31:0] audio_in;
    audio EX2_audio(
        .clk(clk),
        .rst(~rstn),
        .audio_we(audio_we),
        .audio_in(audio_in),
        .AUD_PWM(AUD_PWM),
        .AUD_SD(AUD_SD)
    );

    wire [4:0] BTN_out;
    wire [15:0] SW_out;
    Enter U10_Enter(
        .clk(clk),
        .BTN(btn_i),
        .SW(sw_i),
        .BTN_out(BTN_out),
        .SW_out(SW_out)
    );

    wire Clk_CPU;
    wire [31:0] clkdiv;
    clk_div U8_clk_div(
        .SW2(SW_out[2]),
        .clk(clk),
        .rst(~rstn),
        .Clk_CPU(Clk_CPU),
        .clkdiv(clkdiv)
    );

    wire GPIOf0000000_we;
    wire [31:0] Peripheral_in;
    wire [15:0] LED_out;
    wire [1:0] counter_set;
    SPIO U7_SPIO(
        .EN(GPIOf0000000_we),
        .P_Data(Peripheral_in),
        .clk(~Clk_CPU),
        .rst(~rstn),
        .LED_out(LED_out),
        .counter_set(counter_set),
        .led(led_o)
    );

    wire counter_we;
    wire counter0_OUT;
    wire counter1_OUT;
    wire counter2_OUT;
    Counter_x U9_Counter_x(
        .clk(~Clk_CPU),
        .clk0(clkdiv[6]),
        .clk1(clkdiv[9]),
        .clk2(clkdiv[11]),
        .counter_ch(counter_set),
        .counter_val(Peripheral_in),
        .counter_we(counter_we),
        .rst(~rstn),
        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT),
        .counter_out(counter_out)
    );

    wire [31:0] Addr_out;
    wire [31:0] Data_write;
    wire [2:0] dm_ctrl;
    wire mem_w;
    wire [31:0] Data_read;
    wire [3:0] wea_mem;
    wire [31:0] Data_write_to_dm;
    wire [31:0] Cpu_data4bus;
    dm_controller U3_dm_controller(
        .Addr_in(Addr_out),
        .Data_read_from_dm(Cpu_data4bus),
        .Data_write(Data_write),
        .dm_ctrl(dm_ctrl),
        .mem_w(mem_w),
        .Data_read(Data_read),
        .Data_write_to_dm(Data_write_to_dm),
        .wea_mem(wea_mem)
    );

    wire [31:0] Data_out;
    wire [31:0] PC_out;
    SCPU U1_SCPU(
        .clk(Clk_CPU),
        .reset(~rstn),
        .Data_in(Data_read),
        .inst_in(ROM_output),
        .keyboard_int(keyboard_int),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .PC_out(PC_out),
        .dm_ctrl(dm_ctrl),
        .mem_w(mem_w),
        .reint(cpu_ready)
    );

    wire [9:0] addra;
    wire [31:0] douta;
    RAM_B U3_RAM_B(
        .addra(addra),
        .clka(~clk),
        .dina(Data_write_to_dm),
        .wea(wea_mem),
        .douta(douta)
    );

    wire [31:0] counter_out;
    wire GPIOe0000000_we;
    MIO_BUS U4_MIO_BUS(
        .key(keyboard_data),
        .audio(audio_in),
        .audio_we(audio_we),
        .BTN(BTN_out),
        .Cpu_data2bus(Data_out),
        .PC(PC_out),
        .SW(SW_out),
        .addr_bus(Addr_out),
        .clk(clk),
        .counter_out(counter_out),
        .counter0_out(counter0_OUT),
        .counter1_out(counter1_OUT),
        .counter2_out(counter2_OUT),
        .led_out(LED_out),
        .mem_w(mem_w),
        .ram_data_out(douta),
        .rst(~rstn),
        .Cpu_data4bus(Cpu_data4bus),
        .GPIOe0000000_we(GPIOe0000000_we),
        .GPIOf0000000_we(GPIOf0000000_we),
        .Peripheral_in(Peripheral_in),
        .counter_we(counter_we),
        .ram_addr(addra),
        .ram_data_in(Data_write)
    );

    wire [31:0] ROM_output;
    ROM_D U2_ROM_D(
        .a(PC_out[12:2]),
        .spo(ROM_output)
    );

    wire [31:0] Disp_num;
    wire [7:0] LE_out;
    wire [7:0] point_out;
    Multi_8CH32 U5_Multi_8CH32(
        .EN(GPIOe0000000_we),
        .LES(64'hffff_ffff_ffff_ffff),
        .Switch(SW_out[7:5]),
        .clk(~Clk_CPU),
        .data0(Peripheral_in),
        .data1({{2'b0},PC_out[31:2]}),
        .data2(ROM_output),
        .data3(counter_out),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Cpu_data4bus),
        .data7(PC_out),
        .point_in({32'b0,clkdiv}),
        .rst(~rstn),
        .Disp_num(Disp_num),
        .LE_out(LE_out),
        .point_out(point_out)
    );

    SSeg7 U6_SSeg7(
        .Hexs(Disp_num),
        .LES(LE_out),
        .SW0(SW_out[0]),
        .clk(clk),
        .flash(clkdiv[10]),
        .point(point_out),
        .rst(~rstn),
        .seg_an(disp_an_o),
        .seg_sout(disp_seg_o)
    );
endmodule