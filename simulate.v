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
        forever #1 clk=~clk;
    end

    integer i;
    integer cycles;
    integer displayFlag;
    integer ending;
    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        displayFlag=0;
        ending=0;

        rstn=0;
        #256;
        rstn=1;

        cycles=2000000;
        for(i=0;i<cycles;i=i+1)
        begin
            #64;
            if(uut.U1_SCPU.pc_EX==32'h00000218)
            begin
                $display("Simulation terminated at PC: 0x%h", uut.U1_SCPU.pc_EX);
                $finish;
            end
            else if(ending)
            begin
                $display("Simulation ended normally");
                $finish;
            end
            else if(uut.U1_SCPU.my_RF.rf[2]>32'h00000400)
            begin
                $display("fuck you stack pointer");
                displayFlag=1;
                #500;
                $finish;
            end
        end
        $display("Simulation Finished.");
        $finish;
    end

    always @(posedge uut.Clk_CPU)
    begin
        if(displayFlag)
        begin
            // $display(
            //     "PC: 0x%h | x1: 0x%h | x2: 0x%h | x9: 0x%h | x10: 0x%h | x14: 0x%h | x15: 0x%h | AddrOut: 0x%h | CPU2DM: 0x%h | DM2CPU: 0x%h",
            //     uut.U1_SCPU.pc_EX,
            //     uut.U1_SCPU.my_RF.rf[1],
            //     uut.U1_SCPU.my_RF.rf[2],
            //     uut.U1_SCPU.my_RF.rf[9],
            //     uut.U1_SCPU.my_RF.rf[10],
            //     uut.U1_SCPU.my_RF.rf[14],
            //     uut.U1_SCPU.my_RF.rf[15],
            //     uut.U1_SCPU.Addr_out,
            //     uut.U1_SCPU.Data_out,
            //     uut.U1_SCPU.Data_in
            // );
            $display(
                "PC: 0x%h | x1: 0x%h | x2: 0x%h | x9: 0x%h | x10: 0x%h | x14: 0x%h | x15: 0x%h | %h -> %h -> %h -> %h ->%h",
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.my_RF.rf[1],
                uut.U1_SCPU.my_RF.rf[2],
                uut.U1_SCPU.my_RF.rf[9],
                uut.U1_SCPU.my_RF.rf[10],
                uut.U1_SCPU.my_RF.rf[14],
                uut.U1_SCPU.my_RF.rf[15],
                uut.U1_SCPU.inst_in,
                uut.U1_SCPU.instr_ID,
                uut.U1_SCPU.instr_EX,
                uut.U1_SCPU.instr_MEM,
                uut.U1_SCPU.instr_WB
            );
        end
        if(uut.U1_SCPU.pc_EX==32'h00000248)
            $display("jump into Section 1.");
        if(uut.U1_SCPU.pc_EX==32'h000002d8)
            $display("jump into Section 2.");
        if(uut.U1_SCPU.pc_EX==32'h00000420)
            $display("jump into Section 3.");
        if(uut.U1_SCPU.pc_EX==32'h00000494)
            $display("jump into Section 4.");
        if(uut.U1_SCPU.pc_EX==32'h00000658)
            $display("jump into Section 5.");
        if(uut.U1_SCPU.pc_EX==32'h00000a24)
        begin
            $display("jump into Section 6.");
            // displayFlag=1;
        end
        if(uut.U1_SCPU.pc_EX==32'h0000008c)
        begin
            $display("Congratulations! All sections passed.");
            ending=1;
        end
    end
endmodule