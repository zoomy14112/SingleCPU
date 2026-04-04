`timescale 1ns / 1ps

module ROM_D(
    input  [9:0]  a,
    output [31:0] spo
);
    reg [31:0] ROM [0:1023];
    integer i;

    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            ROM[i] = 32'h00000013; // NOP
        end
    end

    assign spo = ROM[a];

endmodule
