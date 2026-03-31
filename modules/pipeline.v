`timescale 1ns/1ps

module Pipeline#(parameter WIDTH=256)(
    input clk,
    input rst,
    input write_enable,
    input flush,
    input [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
);
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            data_out<=0;
        else if(write_enable)
            data_out<=flush?0:data_in;
        else
            data_out<=data_out;
    end
endmodule