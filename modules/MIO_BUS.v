`timescale 1ns/1ps
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 26 15:11:09 2023
// Host        : LAPTOP-E4IJ843E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub C:/Users/user/Desktop/projects/edf_file/MIO_BUS.v
// Design      : MIO_BUS
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MIO_BUS(
    input clk,
    input rst,
    input [7:0] key,
    input [4:0] BTN,
    input [15:0] SW,
    input [31:0] PC,
    input mem_w,
    input [31:0] Cpu_data2bus,
    input [31:0] addr_bus,
    input [31:0] ram_data_out,
    input [15:0] led_out,
    input [31:0] counter_out,
    input counter0_out,
    input counter1_out,
    input counter2_out,
    input mie_out,
    input [31:0] sd_data_out,
    output [31:0] Cpu_data4bus,
    output [31:0] ram_data_in,
    output [10:0] ram_addr,
    output [31:0] Peripheral_in,
    output data_ram_we,
    output GPIOf0000000_we,
    output GPIOe0000000_we,
    output counter_we,
    output audio_we,
    output volume_we,
    output mie_we,
    output sd_we,
    output [1:0] sd_reg_a,
    output keybd_rd
);
    // output data to memory or peripherals
    assign ram_data_in=Cpu_data2bus;
    assign Peripheral_in=Cpu_data2bus;
    // fetch data from memory or peripherals
    assign ram_addr=(addr_bus[31:28]==4'h0)?addr_bus[12:2]:12'h0;
    assign Cpu_data4bus=
        (addr_bus[31:28]==4'h0)?ram_data_out:
        (addr_bus[31:24]==8'hf0)?{16'b0,SW}: // for switch (0xf0000000)
        (addr_bus[31:24]==8'hf4)?{24'b0,key}: // extra part for keyboard (0xf4000000)
        (addr_bus[31:24]==8'hf8)?counter_out: // for counter (0xf8000000)
        (addr_bus[31:24]==8'hef)?{31'b0,mie_out}: // for MIE (0xef000000)
        (addr_bus[31:24]==8'he9)?sd_data_out: // for SD controller (0xe9000000)
        32'h0d000721; // default value for other peripherals
    assign keybd_rd=(addr_bus[31:24]==8'hf4);
    // write enable signals
    assign data_ram_we=(mem_w&&addr_bus[31:28]==4'h0);
    assign GPIOe0000000_we=(mem_w&&addr_bus[31:24]==8'he0); // for display (0xe0000000)
	assign audio_we=(mem_w&&addr_bus[31:24]==8'he4); // extra part for audio (0xe4000000)
    assign volume_we=(mem_w&&addr_bus[31:24]==8'he5); // extra part for volume control (0xe5000000)
    assign mie_we=(mem_w&&addr_bus[31:24]==8'hef); // for MIE control (0xef000000)
    assign counter_we=(mem_w&&addr_bus[31:24]==8'he8); // for counter control (0xe8000000)
    assign GPIOf0000000_we=(mem_w&&addr_bus[31:24]==8'hec); // for LED (0xec000000)
    assign sd_we=(mem_w&&addr_bus[31:24]==8'he9); // for SD controller (0xe9000000)
    assign sd_reg_a=addr_bus[3:2]; // register select within SD controller
endmodule
