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
module MIO_BUS(clk, rst, BTN, SW, PC, mem_w, Cpu_data2bus, addr_bus, 
  ram_data_out, led_out, counter_out, counter0_out, counter1_out, counter2_out, Cpu_data4bus, 
  ram_data_in, ram_addr, data_ram_we, GPIOf0000000_we, GPIOe0000000_we, counter_we, 
  Peripheral_in);
    input clk;
    input rst;
    input [4:0] BTN;
    input [15:0] SW;
    input [31:0] PC;
    input mem_w;
    input [31:0] Cpu_data2bus;
    input [31:0] addr_bus;
    input [31:0] ram_data_out;
    input [15:0] led_out;
    input [31:0] counter_out;
    input counter0_out;
    input counter1_out;
    input counter2_out;
    output [31:0] Cpu_data4bus;
    output [31:0] ram_data_in;
    output [9:0] ram_addr;
    output [31:0] Peripheral_in;
    output data_ram_we;
    output GPIOf0000000_we;
    output GPIOe0000000_we;
    output counter_we;

    assign ram_data_in=Cpu_data2bus;
    assign ram_addr=(addr_bus[31:28]==4'h0)?addr_bus[11:2]:10'h0;
    assign Peripheral_in=Cpu_data2bus;
    assign Cpu_data4bus=(addr_bus[31:28]==4'h0)?ram_data_out:
                        (addr_bus[31:28]==4'hf)?((addr_bus[3:0]==4'h0)?{11'b0,BTN,SW}:
                                                (addr_bus[3:0]==4'h4)?counter_out:
                                                32'h0):
                        32'h0;

    assign data_ram_we=(mem_w&&(addr_bus[31:28]==4'h0))?1'b1:1'b0;
    assign counter_we=(mem_w&&(addr_bus[31:28]==4'he)&&(addr_bus[3:0]!=4'h0))?1'b1:1'b0;
    assign GPIOf0000000_we=(mem_w&&(addr_bus[31:28]==4'hf))?1'b1:1'b0;
    assign GPIOe0000000_we=(mem_w&&(addr_bus[31:28]==4'he)&&(addr_bus[3:0]==4'h0))?1'b1:1'b0;
endmodule
