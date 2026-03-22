// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 20 11:12:44 2023
// Host        : LAPTOP-E4IJ843E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub C:/Users/user/Desktop/projects/edf_file/dm_controller.v
// Design      : dm_controller
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.

`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100

module dm_controller(mem_w, Addr_in, Data_write, dm_ctrl, 
    Data_read_from_dm, Data_read, Data_write_to_dm, wea_mem);
    input mem_w;
    input [31:0] Addr_in;
    input [31:0] Data_write;
    input [2:0] dm_ctrl;
    input [31:0] Data_read_from_dm;
    output [31:0] Data_read;
    output [31:0] Data_write_to_dm;
    output [3:0] wea_mem;

    wire [31:0] temp;
    assign temp=dm_ctrl==`dm_word?Data_read_from_dm:
                dm_ctrl==`dm_halfword||dm_ctrl==`dm_halfword_unsigned?
                        {16'b0,Addr_in[1]?Data_read_from_dm[31:16]:Data_read_from_dm[15:0]}:
                dm_ctrl==`dm_byte||dm_ctrl==`dm_byte_unsigned?
                ({24'b0,Addr_in[1:0]==2'b00 ?Data_read_from_dm[7:0]:
                        Addr_in[1:0]==2'b01 ?Data_read_from_dm[15:8]:
                        Addr_in[1:0]==2'b10 ?Data_read_from_dm[23:16]:
                        Addr_in[1:0]==2'b11 ?Data_read_from_dm[31:24]:
                        8'b0}):
                32'b0;
    assign Data_read=dm_ctrl==`dm_word?temp:
                    dm_ctrl==`dm_halfword?{{16{temp[15]}},temp[15:0]}:
                    dm_ctrl==`dm_halfword_unsigned?{{16{1'b0}},temp[15:0]}:
                    dm_ctrl==`dm_byte?{{24{temp[7]}},temp[7:0]}:
                    dm_ctrl==`dm_byte_unsigned?{{24{1'b0}},temp[7:0]}:
                    32'b0;
    assign wea_mem=(!mem_w)?4'b0000:
                dm_ctrl==`dm_word?4'b1111:
                dm_ctrl==`dm_halfword||dm_ctrl==`dm_halfword_unsigned?
                            (Addr_in[1]?4'b1100:4'b0011):
                dm_ctrl==`dm_byte||dm_ctrl==`dm_byte_unsigned?
                            (Addr_in[1:0]==2'b00 ?4'b0001:
                            Addr_in[1:0]==2'b01 ?4'b0010:
                            Addr_in[1:0]==2'b10 ?4'b0100:
                            Addr_in[1:0]==2'b11 ?4'b1000:
                            4'b0):
                4'b0000;
    assign Data_write_to_dm=dm_ctrl==`dm_word?Data_write:
                            dm_ctrl==`dm_halfword||dm_ctrl==`dm_halfword_unsigned?{Data_write[15:0],Data_write[15:0]}:
                            dm_ctrl==`dm_byte||dm_ctrl==`dm_byte_unsigned?{Data_write[7:0],Data_write[7:0],Data_write[7:0],Data_write[7:0]}:
                            32'b0;
endmodule
