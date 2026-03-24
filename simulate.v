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

    initial begin
        btn_i=5'b0;
        sw_i=16'b0;
        rstn=0;
        #100;
        rstn=1;
        #400000;
        $display("Simulation Finished.");
        $finish;
    end

    integer i;
    always @(posedge uut.Clk_CPU)
    begin
        $display(
"PC: 0x%h | x0:0x%h x1:0x%h x2:0x%h x10:0x%h x14:0x%h x15:0x%h Datain:0x%h Douta:0x%h DWDM:0x%h weamem:0x%h addra:0x%h", 
            uut.PC_out,
            uut.U1_SCPU.U_RF.rf[0],
            uut.U1_SCPU.U_RF.rf[1],
            uut.U1_SCPU.U_RF.rf[2],
            uut.U1_SCPU.U_RF.rf[10],
            uut.U1_SCPU.U_RF.rf[14],
            uut.U1_SCPU.U_RF.rf[15],
            uut.Cpu_data4bus,
            uut.douta,
            uut.dm_ctrl,
            uut.mem_w,
            uut.addra);
    end
endmodule