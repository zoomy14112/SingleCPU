`timescale 1ns / 1ps

module tb_main;

    // Parameters
    parameter CLK_PERIOD = 10;  // 10 ns clock period (100 MHz)

    // Testbench signals
    reg [4:0]  btn_i;
    reg        clk;
    reg [15:0] sw_i;
    reg        rstn;
    wire [15:0] led_o;
    wire [7:0]  disp_an_o;
    wire [7:0]  disp_seg_o;

    // Instantiate the main module
    main u_main (
        .btn_i      (btn_i),
        .clk        (clk),
        .sw_i       (sw_i),
        .rstn       (rstn),
        .led_o      (led_o),
        .disp_an_o  (disp_an_o),
        .disp_seg_o (disp_seg_o)
    );

    // Clock generation
    always #(CLK_PERIOD/2) clk = ~clk;

    // Reset generation
    initial begin
        rstn = 0;
        #100;           // hold reset for 100 ns
        rstn = 1;
    end

    // Stimulus
    initial begin
        // Initialize inputs
        btn_i = 5'b00000;
        sw_i  = 16'h0000;

        // Wait for reset deassertion
        @(posedge rstn);
        #100;

        // Apply some test patterns
        // Test 1: Toggle button 0
        btn_i[0] = 1;
        #(CLK_PERIOD * 10);
        btn_i[0] = 0;
        #(CLK_PERIOD * 10);

        // Test 2: Set some switch values
        sw_i = 16'hA5A5;
        #(CLK_PERIOD * 20);
        sw_i = 16'h5A5A;
        #(CLK_PERIOD * 20);

        // Test 3: Press multiple buttons
        btn_i = 5'b00101;
        #(CLK_PERIOD * 10);
        btn_i = 5'b00000;
        #(CLK_PERIOD * 10);

        // Test 4: All switches on
        sw_i = 16'hFFFF;
        #(CLK_PERIOD * 20);
        sw_i = 16'h0000;
        #(CLK_PERIOD * 20);
        
        // End simulation after some time
        #500;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %t, rstn = %b, btn_i = %b, sw_i = %h, led_o = %h, disp_an_o = %h, disp_seg_o = %h",
                 $time, rstn, btn_i, sw_i, led_o, disp_an_o, disp_seg_o);
        $display("RF = %b", u_main.U1_SCPU.U_RF.rf[1]);
    end

endmodule