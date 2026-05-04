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
    reg [1:0] state[0:63];

    wire [6:0] opcode=instr_IF[6:0];
    wire [31:0] imm_jal={{12{instr_IF[31]}},instr_IF[19:12],instr_IF[20],instr_IF[30:21],1'b0};
    wire [31:0] imm_branch={{20{instr_IF[31]}},instr_IF[7],instr_IF[30:25],instr_IF[11:8],1'b0};
    wire jal=(opcode==7'b1101111);
    wire branch=(opcode==7'b1100011);
    wire [5:0] index=PC_IF[7:2];

    reg report_prev;
    wire report_rise=report&&~report_prev;
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            report_prev<=0;
        else
            report_prev<=report;
    end
    integer i;
    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            for(i=0;i<64;i=i+1)
                state[i]<=2'b01;
        end
        else if(report_rise)
        begin
            if(solution)
                state[index]<=(state[index]==2'b11)?2'b11:state[index]+1;
            else
                state[index]<=(state[index]==2'b00)?2'b00:state[index]-1;
        end
    end
    assign guess=(branch&state[index][1])|jal;
    assign pc_guess=jal?imm_jal:
                    guess?imm_branch:
                    32'h00000004;
endmodule