`timescale 1ns/1ps
module predict(
    input clk,
    input reset,
    input [31:0] PC_IF,
    input [31:0] instr_IF,
    input report,
    input solution,
    output guess,
    output [31:0] pc_guess
);
    wire [6:0] opcode=instr_IF[6:0];
    wire [2:0] funct3=instr_IF[14:12];
    wire [6:0] funct7=instr_IF[31:25];
    wire [31:0] imm_jal={{20{instr_IF[31]}},instr_IF[19:12],instr_IF[20],instr_IF[30:21],1'b0};
    wire [31:0] imm_branch={{20{instr_IF[31]}},instr_IF[7],instr_IF[30:25],instr_IF[11:8],1'b0};
    wire branch=(opcode==7'b1100011);
    wire jal=(opcode==7'b1101111);
    reg [1:0] state;
    always @(posedge clk or posedge reset)
    begin
        if(reset)
            state<=2'b01;
        else if(report)
        begin
            if(solution)
                state<=(state==2'b11)?2'b11:state+1;
            else
                state<=(state==2'b00)?2'b00:state-1;
        end
        else
            state<=state;
    end
    assign guess=(branch&state[1])|jal;
    assign pc_guess=(branch&&guess)?imm_branch:
                    jal?imm_jal:
                    4;
endmodule