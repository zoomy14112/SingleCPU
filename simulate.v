`timescale 1ns/1ps

module simulate();

    // 1. 接口信号定义
    reg [4:0]  btn_i;
    reg        clk;
    reg [15:0] sw_i;
    reg        rstn;
    wire [15:0] led_o;
    wire [7:0]  disp_an_o;
    wire [7:0]  disp_seg_o;

    // 2. 实例化 Top 模块
    main uut (
        .btn_i(btn_i),
        .clk(clk),
        .sw_i(sw_i),
        .rstn(rstn),
        .led_o(led_o),
        .disp_an_o(disp_an_o),
        .disp_seg_o(disp_seg_o)
    );

    // 3. 时钟产生 (100MHz 模拟板载晶振)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // 4. 激励逻辑
    initial begin
        // 初始化信号
        btn_i = 5'b0;
        sw_i = 16'b0;
        rstn = 0;      // 低电平复位
        
        #100;
        rstn = 1;      // 释放复位
        
        // 模拟拨码开关：假设 SW[2] 控制时钟分频或选择
        // 根据你的 clk_div 逻辑，可能需要设置 SW_out[2]
        sw_i[2] = 0; 
        // 仿真运行一段时间后停止
        #400000;
        $display("Simulation Finished.");
        $finish;
    end

    // 5. 核心监控逻辑：每个 CPU 时钟周期打印 PC 和 RF
    // 注意：这里使用 uut.Clk_CPU 是为了对齐 CPU 的实际执行步长
    /*
    dm_controller U3_dm_controller(
        .Addr_in(Addr_out),
        .Data_read_from_dm(Cpu_data4bus),
        .Data_write(Data_write),
        .dm_ctrl(dm_ctrl),
        .mem_w(mem_w),
        .Data_read(Data_read),
        .Data_write_to_dm(Data_write_to_dm),
    .wea_mem(wea_mem)
    );
    
    */
    integer i;
   always @(posedge uut.Clk_CPU) begin
    if (rstn) begin
        $display("PC: 0x%h | x0:0x%h x1:0x%h x2:0x%h x3:0x%h x4:0x%h x5:0x%h x6:0x%h x7:0x%h x8:0x%h x9:0x%h x10:0x%h x11:0x%h x12:0x%h x13:0x%h x14:0x%h x15:0x%h Datain:0x%h Douta:0x%h DWDM:0x%h weamem:0x%h", 
            uut.PC_out, uut.U1_SCPU.U_RF.rf[0], uut.U1_SCPU.U_RF.rf[1], uut.U1_SCPU.U_RF.rf[2], uut.U1_SCPU.U_RF.rf[3], 
            uut.U1_SCPU.U_RF.rf[4], uut.U1_SCPU.U_RF.rf[5], uut.U1_SCPU.U_RF.rf[6], uut.U1_SCPU.U_RF.rf[7], 
            uut.U1_SCPU.U_RF.rf[8], uut.U1_SCPU.U_RF.rf[9], uut.U1_SCPU.U_RF.rf[10], uut.U1_SCPU.U_RF.rf[11], 
            uut.U1_SCPU.U_RF.rf[12], uut.U1_SCPU.U_RF.rf[13], uut.U1_SCPU.U_RF.rf[14],  uut.U1_SCPU.U_RF.rf[15], uut.Cpu_data4bus, uut.douta, uut.dm_ctrl, uut.mem_w);
    // $display("RAM[0]: 0x%h", uut.U3_RAM_B.inst.native_mem_module.blk_mem_gen_v8_4_5_inst.memory[1020]);
    end
end
//     always @(posedge clk) begin
//     if ($time % 100 == 0) begin // 每 100ns 打印一次
//         $display("Testing Path: PC = 0x%h", uut.PC_out);
//     end
// end
// always @(posedge clk) begin
//    $display("DEBUG: Time=%0t | rstn=%b | clk=%b", $time, rstn, clk);
//     $display("DEBUG: PC_out Value = %h", uut.PC_out);
//     $display("DEBUG: ROM_output Value = %h", uut.ROM_output);
// end

endmodule