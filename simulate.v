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
        forever #5 clk=~clk;
    end

    integer i;
    integer cycles;
    integer displayFlag;
    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        displayFlag=0;
        rstn=0;
        #100;
        rstn=1;
        cycles=5000000;
        for(i=0;i<cycles;i=i+1)
        begin
            #10;
            if(uut.PC_out==32'h00000894||uut.PC_out==32'h00000218)
            begin
                #500
                $display("Simulation terminated at PC: 0x%h", uut.PC_out);
                $finish;
            end
        end
        $display("Simulation Finished.");
        $finish;
    end

    always @(posedge uut.Clk_CPU)
    begin
//         $display(
// "PC: 0x%h | x1:0x%h x2:0x%h x10:0x%h x14:0x%h x15:0x%h Datain:0x%h Douta:0x%h DWDM:0x%h weamem:0x%h addra:0x%h", 
//             uut.PC_out,
//             uut.U1_SCPU.U_RF.rf[1],
//             uut.U1_SCPU.U_RF.rf[2],
//             uut.U1_SCPU.U_RF.rf[10],
//             uut.U1_SCPU.U_RF.rf[14],
//             uut.U1_SCPU.U_RF.rf[15],
//             uut.Cpu_data4bus,
//             uut.douta,
//             uut.dm_ctrl,
//             uut.mem_w,
//             uut.addra);
        if(displayFlag)
            $display(
    "PC: 0x%h | RomInput: 0x%h NextPC: 0x%h Instruction: 0x%h",
                uut.PC_out,
                {{2'b0,uut.PC_out[10:2]},2'b0},
                uut.U1_SCPU.NextPC,
                uut.U1_SCPU.instr
            );
        if(uut.PC_out==32'h00000014)
            $display("jump into Section 1.");
        if(uut.PC_out==32'h00000018)
            $display("jump into Section 2.");
        if(uut.PC_out==32'h0000001c)
            $display("jump into Section 3.");
        if(uut.PC_out==32'h00000020)
        begin
            $display("jump into Section 4.");
            displayFlag=1;
        end
        if(uut.PC_out==32'h00000024)
            $display("jump into Section 5.");
        if(uut.PC_out==32'h00000028)
            $display("jump into Section 6.");
        if(uut.PC_out==32'h0000002c)
            $display("Congratulations! All sections passed.");
    end
endmodule