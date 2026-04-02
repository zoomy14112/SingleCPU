`timescale 1ns/1ps

`define BEQ 3'b001
`define BNE 3'b010
`define BLT 3'b011
`define BGE 3'b100
`define BLTU 3'b101
`define BGEU 3'b110

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
    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        ending=0;

        rstn=0;
        #1280;
        rstn=1;

        displayFlag=0;
        cycles=displayFlag?200:1000000;
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
                "PC: 0x%h | x1: 0x%h,x10: 0x%h,x11: 0x%h,x14: 0x%h,x15: 0x%h",
                uut.PC_out,
                uut.U1_SCPU.my_RF.rf[1],
                uut.U1_SCPU.my_RF.rf[10],
                uut.U1_SCPU.my_RF.rf[11],
                uut.U1_SCPU.my_RF.rf[14],
                uut.U1_SCPU.my_RF.rf[15]
            );
        // if(displayFlag&&uut.U1_SCPU.b_type)
        //     $display(
        //         "PC: 0x%h, BranchType: %s, branch-taken is %b, rd1: 0x%h, rd2: 0x%h",
        //             uut.PC_out,
        //             uut.U1_SCPU.branchType==`BEQ?"BEQ":
        //             uut.U1_SCPU.branchType==`BNE?"BNE":
        //             uut.U1_SCPU.branchType==`BLT?"BLT":
        //             uut.U1_SCPU.branchType==`BGE?"BGE":
        //             uut.U1_SCPU.branchType==`BLTU?"BLTU":
        //             uut.U1_SCPU.branchType==`BGEU?"BGEU":
        //         "Unknown",
        //         uut.U1_SCPU.branch,
        //         uut.U1_SCPU.rd1,
        //         uut.U1_SCPU.rd2);
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
    end
endmodule