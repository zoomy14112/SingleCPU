`timescale 1ns/1ps

module stack(
    input clk,
    input reset,
    input report,
    input [31:0] instr,
    input [31:0] instr_EX,
    input [31:0] data_in,
    output [31:0] addr_out,
    output predict
);
    reg [31:0] stack[0:255];
    reg [7:0] sp;

    wire jalr_IF=(instr[6:0]==7'b1100111);
    wire rs_valid=(instr[19:15]==5'b00001);
    wire load=jalr_IF&rs_valid;

    wire jal_EX=(instr_EX[6:0]==7'b1101111);
    wire jalr_EX=(instr_EX[6:0]==7'b1100111);
    wire rd_vaild=(instr_EX[11:7]==5'b00001);
    wire rs_EX_vaild=(instr_EX[19:15]==5'b00001);
    wire save=(jal_EX|jalr_EX)&rd_vaild;
    wire pop=jalr_EX&rs_EX_vaild&~report;

    wire change=load|save|pop;

    integer i;
    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            sp<=8'h00;
            for(i=0;i<256;i=i+1)
                stack[i]<=0;
        end
        else if(save)
        begin
            sp<=sp+1;
            stack[sp+1]<=data_in;
        end
        else if(pop)
            sp<=(sp==8'h00)?8'h00:(sp-1);
        else
            sp<=sp;
    end
    assign predict=load;
    assign addr_out=stack[sp];
endmodule