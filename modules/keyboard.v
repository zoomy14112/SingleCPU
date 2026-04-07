`timescale 1ns/1ps
module keyboard(
    input clk,
    input rst,
    input PS2_CLK,
    input PS2_DATA,
    output reg [7:0] key
);
    wire [7:0] data;
    wire [7:0] testkey;
    wire [31:0] Scancode;
    wire PS2Ready;
    reg RD;
    PS2IO EX1_PS2IO(
        .io_read_clk(clk),
        .clk(clk),
        .rst(rst),
        .PS2C(PS2_CLK),
        .PS2D(PS2_DATA),
        .RD(RD),
        .testkey(testkey),
        .Scancode(Scancode),
        .key(data),
        .PS2Ready(PS2Ready)
    );
    // why?????????
    reg ready_d;
    reg read_flag;
    wire ready_pos=PS2Ready&(~ready_d);
    always @(posedge clk)
    begin
        ready_d<=PS2Ready;
    end
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            RD<=0;
            read_flag<=0;
        end
        else
        begin
            RD<=0;
            if(ready_pos)
            begin
                RD<=1;
                read_flag<=1;
            end
            else if(read_flag)
                read_flag<=0;
        end
    end
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            key<=0;
        else if(read_flag)
            key<=data;
    end
endmodule