`timescale 1ns/1ps
`define showRF 1
`define showDM 2
`define showPC 3
`define showInstr 4
`define showPipeline 5
`define debugINT 6

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
    integer displayMode;
    integer all,wrong;
    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        displayMode=`debugINT;
        ending=0;
        all=0;
        wrong=0;

        rstn=0;
        #1024;
        rstn=1;
        #256;
        rstn=0;
        #1024;
        rstn=1;
        if(displayMode==`debugINT)
        begin
            displayFlag=1;
            #1600;
            btn_i=5'b11111;
            #48;
            btn_i=5'b00000;
            #1600;
            $finish;
        end

        displayFlag=0;
        cycles=(displayFlag?50:2000000);
        for(i=0;i<cycles;i=i+1)
        begin
            #16;
            if(uut.U1_SCPU.pc_EX==32'h00000218)
            begin
                $display("Simulation terminated at PC: 0x%h", uut.U1_SCPU.pc_EX);
                $finish;
            end
            else if(ending)
            begin
                #80000;
                $display("Simulation ended normally");
                $display("Accuracy: %0.4f%% ( %d / %d ) ",(all-wrong)*100.0/all,all-wrong,all);
                $finish;
            end
        end
        $display("Simulation Finished.");
        $finish;
    end

    always @(posedge uut.Clk_CPU)
    begin
        all=all+((uut.U1_SCPU.branch_EX|uut.U1_SCPU.jal_EX|uut.U1_SCPU.jalr_EX)?1:0);
        wrong=wrong+((uut.U1_SCPU.failure&~uut.U1_SCPU.jalr_EX)?1:0);
        if(displayFlag)
        begin
            if(displayMode==`showPC)
                $display(
                "PC: 0x%h -> 0x%h -> 0x%h | sp: 0x%h | top: 0x%h",
                uut.PC_out,
                uut.U1_SCPU.pc_ID,
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.RAS.sp,
                uut.U1_SCPU.RAS.stack[uut.U1_SCPU.RAS.sp]
                );
            else if(displayMode==`showDM)
            $display(
                "PC: 0x%h | x1: 0x%h | x2: 0x%h | x9: 0x%h | x10: 0x%h | x14: 0x%h | x15: 0x%h | AddrOut: 0x%h | CPU2DM: 0x%h | DM2CPU: 0x%h",
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.my_RF.rf[1],
                uut.U1_SCPU.my_RF.rf[2],
                uut.U1_SCPU.my_RF.rf[9],
                uut.U1_SCPU.my_RF.rf[10],
                uut.U1_SCPU.my_RF.rf[14],
                uut.U1_SCPU.my_RF.rf[15],
                uut.U1_SCPU.Addr_out,
                uut.U1_SCPU.Data_out,
                uut.U1_SCPU.Data_in
            );
            else if(displayMode==`showInstr)
            $display(
                "PC: 0x%h | x1: 0x%h | x2: 0x%h | guess: 0x%b | nextPC: 0x%h | %h -> %h -> %h -> %h ->%h",
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.my_RF.rf[1],
                uut.U1_SCPU.my_RF.rf[2],
                uut.U1_SCPU.guess_EX,
                uut.U1_SCPU.PC_guess,
                uut.U1_SCPU.inst_in,
                uut.U1_SCPU.instr_ID,
                uut.U1_SCPU.instr_EX,
                uut.U1_SCPU.instr_MEM,
                uut.U1_SCPU.instr_WB
            );
            else if(displayMode==`showRF)
            $display(
                "PC: 0x%h | x1: 0x%h | x2: 0x%h | x8: 0x%h | x9: 0x%h | x10: 0x%h | x11: 0x%h | x12: 0x%h | x13: 0x%h | x14: 0x%h | x15: 0x%h | x16: 0x%h | x17: 0x%h | x18: 0x%h | x19: 0x%h",
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.my_RF.rf[1],
                uut.U1_SCPU.my_RF.rf[2],
                uut.U1_SCPU.my_RF.rf[8],
                uut.U1_SCPU.my_RF.rf[9],
                uut.U1_SCPU.my_RF.rf[10],
                uut.U1_SCPU.my_RF.rf[11],
                uut.U1_SCPU.my_RF.rf[12],
                uut.U1_SCPU.my_RF.rf[13],
                uut.U1_SCPU.my_RF.rf[14],
                uut.U1_SCPU.my_RF.rf[15],
                uut.U1_SCPU.my_RF.rf[16],
                uut.U1_SCPU.my_RF.rf[17],
                uut.U1_SCPU.my_RF.rf[18],
                uut.U1_SCPU.my_RF.rf[19]
            );
            else if(displayMode==`showPipeline)
            $display(
                "PC: 0x%h | IF/ID: 0x%h | ID/EX: 0x%h | EX/MEM: 0x%h | MEM/WB: 0x%h",
                uut.U1_SCPU.pc,
                uut.U1_SCPU.IF_ID.data_out,
                uut.U1_SCPU.ID_EX.data_out,
                uut.U1_SCPU.EX_MEM.data_out,
                uut.U1_SCPU.MEM_WB.data_out
            );
            else if(displayMode==`debugINT)
            begin
                $display(
                "PC: 0x%h -> 0x%h -> 0x%h -> 0x%h -> 0x%h | int_taken: %b | int_flush: %b | int_pending: %b | MIE: %b | InInterrupt: %b | mepc: 0x%h",
                uut.PC_out,
                uut.U1_SCPU.pc_ID,
                uut.U1_SCPU.pc_EX,
                uut.U1_SCPU.pc_MEM,
                uut.U1_SCPU.pc_WB,
                uut.U1_SCPU.int_taken,
                uut.U1_SCPU.int_flush,
                uut.U1_SCPU.int_pending,
                uut.U1_SCPU.MIE,
                uut.U1_SCPU.InInterrupt,
                uut.U1_SCPU.mepc
                );
                if(uut.U1_SCPU.int_taken)
                    $display("Interrupt taken! Jumping to handler at 0x%h", uut.U1_SCPU.INT_handler_addr);
                if(uut.U1_SCPU.mret_MEM)
                    $display("MRET executed! Returning to 0x%h", uut.U1_SCPU.mepc);
            end
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
            $display("jump into Section 6.");
        if(uut.U1_SCPU.pc_EX==32'h0000008c)
        begin
            $display("Congratulations! All sections passed.");
            displayFlag=1;
            ending=1;
        end
    end
endmodule