`timescale 1ns/1ps
module simulate();
    reg clk;
    reg rstn;
    reg [4:0] btn_i;
    reg [15:0] sw_i;
    wire [15:0] led_o;
    wire [7:0] disp_an_o;
    wire [7:0] disp_seg_o;

    main uut(
        .btn_i(btn_i),
        .clk(clk),
        .sw_i(sw_i),
        .rstn(rstn),
        .led_o(led_o),
        .disp_an_o(disp_an_o),
        .disp_seg_o(disp_seg_o)
    );

    initial begin
        clk=0;
        forever #4 clk=~clk;
    end

    integer i;
    integer cycles;
    integer displayFlag;
    integer ending;
    integer StartTimes;
    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        displayFlag=0;
        StartTimes=0;
        ending=0;

        rstn=0;
        #128;
        rstn=1;

        cycles=100000;
        for(i=0;i<cycles;i=i+1)
        begin
            #64;
            if(uut.PC_out==32'h00000218)
            begin
                #500
                $display("Simulation terminated at PC: 0x%h", uut.PC_out);
                $finish;
            end
            else if(ending)
            begin
                $display("Simulation ended normally");
                $finish;
            end
        end
        $display("Simulation Finished.");
        $finish;
    end

    always @(posedge uut.Clk_CPU)
    begin
        if(displayFlag)
            $display(
                "PC: 0x%h | x1: 0x%h,x10: 0x%h,x11: 0x%h,x18: 0x%h,x19: 0x%h,x20: 0x%h",
                uut.PC_out,
                uut.U1_SCPU.U_RF.rf[1],
                uut.U1_SCPU.U_RF.rf[10],
                uut.U1_SCPU.U_RF.rf[11],
                uut.U1_SCPU.U_RF.rf[18],
                uut.U1_SCPU.U_RF.rf[19],
                uut.U1_SCPU.U_RF.rf[20]
            );
        if(uut.PC_out==32'h00000014)
            $display("jump into Section 1.");
        if(uut.PC_out==32'h00000018)
            $display("jump into Section 2.");
        if(uut.PC_out==32'h0000001c)
            $display("jump into Section 3.");
        if(uut.PC_out==32'h00000020)
            $display("jump into Section 4.");
        if(uut.PC_out==32'h00000024)
            $display("jump into Section 5.");
        if(uut.PC_out==32'h00000028)
            $display("jump into Section 6.");
        if(uut.PC_out==32'h0000002c)
        begin
            $display("Congratulations! All sections passed.");
            ending=1;
            // displayFlag=1;
        end
        if(uut.PC_out==32'h00000000)
        begin
            StartTimes=StartTimes+1;
            if(StartTimes==2)
            begin
                $display("Program restarted abnormally.");
                $finish;
            end
        end
    end
endmodule