`define ALUop_add 4'b0001
`define ALUop_sub 4'b0010
`define ALUop_or 4'b0011
`define ALUop_and 4'b0100
`define ALUop_xor 4'b0101
`define ALUop_sll 4'b0110
`define ALUop_srl 4'b0111
`define ALUop_sra 4'b1000
`define ALUop_slt 4'b1001
`define ALUop_stlu 4'b1010

module ALU(
    input signed [31:0] A,
    input signed [31:0] B,
    input [3:0] ALUop,
    output signed [31:0] C,
    output Equal,
    output Lessthan,
    output LessthanU
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
    assign Equal=(A==B);
    assign Lessthan=$signed(A)<$signed(B);
    assign LessthanU=$unsigned(A)<$unsigned(B);
endmodule
