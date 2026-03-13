`timescale 1ms/1ms
module test();
    reg [31:0] A,B;
    wire [31:0] C;
    reg [2:0] ALUop;
    reg [10:0] cnt;
    alu myalu(.A(A),.B(B),.ALUop(ALUop),.C(C));
    initial begin
        $dumpfile("test.vcd");
        $dumpvars;
        $display("TEST");
        A=32'h0d000721;
        B=32'hdeadbeef;
        ALUop=3'b000;
        cnt=10'b0;
        #(100) $finish;
    end
    always begin
        #(5) ALUop^=3'b001;
        cnt+=1;
    end
endmodule
