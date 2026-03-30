`timescale 1ns / 1ps

module MIO_BUS(
    input         clk,
    input         rst,
    input  [4:0]  BTN,
    input  [15:0] SW,
    input  [31:0] PC,
    input         mem_w,
    input  [31:0] Cpu_data2bus,
    input  [31:0] addr_bus,
    input  [31:0] ram_data_out,
    input  [15:0] led_out,
    input  [31:0] counter_out,
    input         counter0_out,
    input         counter1_out,
    input         counter2_out,
    output [31:0] Cpu_data4bus,
    output [31:0] ram_data_in,
    output [9:0]  ram_addr,
    output        data_ram_we,
    output        GPIOf0000000_we,
    output        GPIOe0000000_we,
    output        counter_we,
    output [31:0] Peripheral_in
);

    // Simulation-oriented simplified bus model:
    // route all CPU memory transactions to RAM.
    assign ram_addr         = addr_bus[11:2];
    assign ram_data_in      = Cpu_data2bus;
    assign data_ram_we      = mem_w;
    assign Cpu_data4bus     = ram_data_out;

    assign GPIOf0000000_we  = 1'b0;
    assign GPIOe0000000_we  = 1'b0;
    assign counter_we       = 1'b0;
    assign Peripheral_in    = 32'b0;

endmodule
