`timescale 1ns/1ps

module stack(
    input clk,
    input reset,
    input report,
    input [31:0] instr,
    input [31:0] instr_EX,
    input [31:0] data_in,
    output [31:0] addr,
    output predict
);
    reg [31:0] stack[0:255];
    reg [7:0] sp;

    wire jal_IF=(instr[6:0]==7'b1101111);
    wire jalr_IF=(instr[6:0]==7'b1100111);
    wire jal_EX=(instr_EX[6:0]==7'b1101111);
    wire jalr_EX=(instr_EX[6:0]==7'b1100111);
    wire rd_vaild=(instr_)
    wire load=(instr_EX[6:0]==7'b1100111)&(instr_EX[6:0]==7'b1100111);
    wire save=(instr_EX[11:7]==5'b00001)&((instr_EX[6:0]==7'b1101111)|(instr_EX[6:0]==7'b1100111));
    wire change=load|save|report;

    integer i;
    always @(posedge save or posedge load or posedge reset)
    begin
        if(reset)
        begin
            sp<=8'h01;
            for(i=0;i<256;i=i+1)
                stack[i]<=0;
        end
        
    end
    assign predict=(instr[6:0]==7'b1100111)&(instr[6:0]==7'b1100111);
    assign addr=stack[sp];
endmodule