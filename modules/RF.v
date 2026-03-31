`timescale 1ns/1ps

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
    always @(negedge clk or posedge rstn)
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
        else
        begin
            // Do nothing
        end
    end
    assign RD1=rf[A1];
    assign RD2=rf[A2];
    // --- debug output --- //
    assign rf_debug0=rf[0];
    assign rf_debug1=rf[1];
    assign rf_debug2=rf[2];
    assign rf_debug3=rf[3];
    assign rf_debug4=rf[4];
    assign rf_debug5=rf[5];
    assign rf_debug6=rf[6];
    assign rf_debug7=rf[7];
    assign rf_debug8=rf[8];
    assign rf_debug9=rf[9];
    assign rf_debug10=rf[10];
    assign rf_debug11=rf[11];
    assign rf_debug12=rf[12];
    assign rf_debug13=rf[13];
    assign rf_debug14=rf[14];
    assign rf_debug15=rf[15];
    assign rf_debug16=rf[16];
    assign rf_debug17=rf[17];
    assign rf_debug18=rf[18];
    assign rf_debug19=rf[19];
    assign rf_debug20=rf[20];
    assign rf_debug21=rf[21];
    assign rf_debug22=rf[22];
    assign rf_debug23=rf[23];
    assign rf_debug24=rf[24];
    assign rf_debug25=rf[25];
    assign rf_debug26=rf[26];
    assign rf_debug27=rf[27];
    assign rf_debug28=rf[28];
    assign rf_debug29=rf[29];
    assign rf_debug30=rf[30];
    assign rf_debug31=rf[31];
endmodule
