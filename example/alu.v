module alu(A,B,ALUop,C);
    input [31:0] A,B;
    input [2:0] ALUop;
    output reg [31:0] C;
    always @(A or B or ALUop) begin
        case(ALUop)
            3'b000: C = A + B; // add
            3'b001: C = A - B; // sub
            3'b010: C = A & B; // and
            3'b011: C = A | B; // or
            default: C = 0;
        endcase
    end
endmodule