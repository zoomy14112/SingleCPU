`timescale 1ms/1ms
module test();
    wire [4:0] btn_i;
    reg clk;
    wire [15:0] sw_i;
    wire rstn;
    wire [15:0] led_o;
    wire [7:0] disp_an_o;
    wire [7:0] disp_seg_o;
    main MyMain(
        .btn_i(btn_i),
        .clk(clk),
        .sw_i(sw_i),
        .rstn(rstn),
        .led_o(led_o),
        .disp_an_o(disp_an_o),
        .disp_seg_o(disp_seg_o)
    );
    initial begin
        // $dumpfile("test.vcd");
        // $dumpvars;
        // $display("TEST");
        clk=0;
        btn_i=5'b00000;
        rstn=1'b1;
        sw_i=16'b0;
        #(1) rstn=1'b0;
        sw_i=16'b0000000000010100;
        #(200) $finish;
    end
    always begin
        #(1) clk=~clk;
    end
endmodule
