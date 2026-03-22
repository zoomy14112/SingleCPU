module RF(
    input clk,
    input rstn,
    input [4:0] A1, // rs1
    input [4:0] A2, // rs2
    input [4:0] A3, // rd
    output [31:0] RD1,
    output [31:0] RD2,
    input [31:0] WD,
    input RegWrite
    );
    reg [31:0] rf[31:0];
    integer i;
    always @(posedge clk or posedge rstn)
    begin
        if(rstn)
        begin
            for(i=0;i<32;i=i+1)
                rf[i]=i*32'h00010000+i;
            rf[1]=32'h00000000; // return address
            rf[2]=32'h00000080; // stack pointer
            rf[31]=32'hdeedbeef; // QwQ 
        end
        else if(RegWrite&&A3!=5'b00000)
        begin
            rf[A3]=WD;
        end
    end
    assign RD1=rf[A1];
    assign RD2=rf[A2];
endmodule
