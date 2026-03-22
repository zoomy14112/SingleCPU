`define ALUop_add 5'b00001
`define ALUop_sub 5'b00010
`define ALUop_or 5'b00011
`define ALUop_and 5'b00100
`define ALUop_xor 5'b00101
`define ALUop_sll 5'b00110
`define ALUop_srl 5'b00111
`define ALUop_sra 5'b01000
`define ALUop_slt 5'b01001
`define ALUop_stlu 5'b01010

module ALU(
    input signed [31:0] A,
    input signed [31:0] B,
    input [4:0] ALUop,
    output signed [31:0] C,
    output Zero,
    output CarryOut
    );
    assign C=ALUop==`ALUop_add ?A+B:
             ALUop==`ALUop_sub ?A-B:
             ALUop==`ALUop_or  ?A|B:
             ALUop==`ALUop_and ?A&B:
             ALUop==`ALUop_xor ?A^B:
             ALUop==`ALUop_sll ?A<<B[4:0]:
             ALUop==`ALUop_srl ?A>>B[4:0]:
             ALUop==`ALUop_sra ?$signed(A>>>$signed(B)):
             ALUop==`ALUop_slt ?(A<B?32'b1:32'b0):
             ALUop==`ALUop_stlu?($unsigned(A)<$unsigned(B)?32'b1:32'b0):
             32'h0d000721;
    assign Zero=(C==32'b0);
    assign CarryOut=C[31];
endmodule
