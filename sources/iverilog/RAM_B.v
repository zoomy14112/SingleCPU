`timescale 1ns / 1ps

module RAM_B(
    input  [9:0]  addra,
    input         clka,
    input  [31:0] dina,
    input  [3:0]  wea,
    output [31:0] douta
);
    reg [31:0] RAM [0:1023];
    integer i;

    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            RAM[i] = 32'h00000000;
        end
    end

    always @(posedge clka) begin
        if (wea[0]) RAM[addra][7:0]   <= dina[7:0];
        if (wea[1]) RAM[addra][15:8]  <= dina[15:8];
        if (wea[2]) RAM[addra][23:16] <= dina[23:16];
        if (wea[3]) RAM[addra][31:24] <= dina[31:24];
    end

    assign douta = RAM[addra];

endmodule
