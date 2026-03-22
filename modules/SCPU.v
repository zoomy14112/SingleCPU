// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 20 18:23:52 2023
// Host        : LAPTOP-E4IJ843E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub C:/Users/user/Desktop/projects/edf_file/SCPU.v
// Design      : SCPU
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module SCPU(clk, reset, MIO_ready, inst_in, Data_in, mem_w, 
  PC_out, Addr_out, Data_out, dm_ctrl, CPU_MIO, INT);
    input clk;
    input reset;
    input MIO_ready;
    input [31:0] inst_in;
    input [31:0] Data_in;
    output mem_w;
    output [31:0] PC_out;
    output [31:0] Addr_out;
    output [31:0] Data_out;
    output [2:0] dm_ctrl;
    output CPU_MIO;
    input INT;
    // ---- Internal registers and wires ---- 
    reg [31:0] pc; // program counter
    wire [31:0] NextPC; // next program counter
    wire [31:0] instr; // instruction from ROM
    // signals between modules
    wire Zero;
    wire CarryOut;
    wire branch;
    wire MemtoReg;
    wire [5:0] extOP;
    wire [4:0] ALUop;
    wire MemWrite;
    wire ALUSrc;
    wire [2:0] DMtype;
    wire RegWrite;
    // for special instructions
    wire jal;
    wire jalr;
    wire lui;
    wire auipc;
    // ALU input
    wire [4:0] rs1=instr[19:15];
    wire [4:0] rs2=instr[24:20];
    wire [4:0] ws=instr[11:7];
    wire [31:0] WriteBack;
    wire [31:0] rd1,rd2;
    // outputs
    wire [31:0] IMMout;
    wire [31:0] ALUout;
    wire [31:0] DMout;
    // interface
    assign instr=inst_in;
    assign DMout=Data_in;
    assign mem_w=MemWrite;
    assign PC_out=pc;
    assign Addr_out=ALUout;
    assign dm_ctrl=DMtype;
    assign Data_out=rd2;
    
    ctrl my_ctrl(
        .Op(instr[6:0]),
        .Funct7(instr[31:25]),
        .Funct3(instr[14:12]),
        .Zero(Zero),
        .CarryOut(CarryOut),
        .branch(branch),
        .MemtoReg(MemtoReg),
        .EXTop(extOP),
        .ALUop(ALUop),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .DMType(DMtype),
        .RegWrite(RegWrite),
        .jal(jal),
        .jalr(jalr),
        .lui(lui),
        .auipc(auipc)
    );
    EXT my_EXT(
        .instr(instr),
        .EXTop(extOP),
        .immout(IMMout)
    );
    RF U_RF(
        .clk(clk),
        .rstn(reset),
        .A1(rs1),
        .A2(rs2),
        .A3(ws),
        .WD(WriteBack),
        .RD1(rd1),
        .RD2(rd2),
        .RegWrite(RegWrite)
    );
    assign WriteBack=lui?IMMout:
            auipc?(pc+IMMout):
            jal|jalr?(pc+4):
            MemtoReg?DMout:
            ALUout;
    ALU U_ALU(
        .A(rd1),
        .B(ALUSrc?IMMout:rd2),
        .C(ALUout),
        .ALUop(ALUop),
        .Zero(Zero),
        .CarryOut(CarryOut)
    );

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            pc<=32'h0;
        else
            pc<=NextPC;
    end
    assign NextPC=jalr?(rd1+IMMout):
                jal|branch?(pc+IMMout):
                pc+4;
endmodule
