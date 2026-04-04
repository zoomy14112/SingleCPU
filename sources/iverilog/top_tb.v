`timescale 1ns / 1ps

module top_tb;

  reg         clk;
  reg         rstn;
  reg  [4:0]  btn_i;
  reg  [15:0] sw_i;

  wire [7:0]  disp_an_o;
  wire [7:0]  disp_seg_o;
  wire [15:0] led_o;

  // Instantiate DUT
  Top U_TOP (
    .rstn(rstn),
    .btn_i(btn_i),
    .sw_i(sw_i),
    .clk(clk),
    .disp_an_o(disp_an_o),
    .disp_seg_o(disp_seg_o),
    .led_o(led_o)
  );

  integer foutput;
  integer debug_output;
  integer pc_output;
  integer counter;
  reg done;

  // Stop and trigger conditions
  localparam integer MAX_CYCLES = 4000;
  localparam [31:0]  TARGET_PC  = 32'h00000100;

  // Optional: if your memory models expose arrays, you can preload here.
  // Example (adjust hierarchy/array names to your ROM/RAM models):
  // initial begin
  //   $readmemh("start.coe",   U_TOP.U2_ROM_D.ROM);
  //   $readmemh("handler.coe", U_TOP.U2_HANDLER_ROM.ROM);
  //   $readmemh("D_mem.coe",   U_TOP.U4_RAM_B.RAM);
  // end

  initial begin
    counter = 0;
    done    = 1'b0;

    // Load instruction image from testbench side.
    // ! 注意：如果你的 ROM 模块层级或数组名称不同，需要修改下面的路径以正确加载指令数据
    $readmemh("riscv32_sim1.dat", U_TOP.U2_ROM_D.ROM, 0, 30);

    // Speed up simulation: bypass FPGA clock divider.
    force U_TOP.Clk_CPU = clk;

    foutput      = $fopen("results.txt", "w");
    debug_output = $fopen("debug.txt", "w");
    pc_output    = $fopen("pc.txt", "w");

    $dumpfile("top_tb.vcd");
    $dumpvars(0, top_tb);

    clk   = 1'b0;
    rstn  = 1'b0;
    btn_i = 5'b0;
    sw_i  = 16'h0000;

    #200;
    rstn = 1'b1;
  end

  always begin
    #50 clk = ~clk;

    if (clk == 1'b1) begin
      if ((counter >= MAX_CYCLES) || (U_TOP.U1_PCPU.PC_out === 32'hxxxxxxxx)) begin
        $fdisplay(debug_output, "[STOP] cycle=%0d PC=%h", counter, U_TOP.U1_PCPU.PC_out);
        $fclose(foutput);
        $fclose(debug_output);
        $fclose(pc_output);
        $finish;
      end else begin
        counter = counter + 1;

        // Always record PC trace
        $fdisplay(pc_output, "cycle=%0d PC=%h", counter, U_TOP.U1_PCPU.PC_out);

        // Write-back event trace (compact and useful)
        if (U_TOP.U1_PCPU.WB_RegWrite && (U_TOP.U1_PCPU.WB_rd != 5'd0)) begin
          $fdisplay(debug_output,
                    "[WB] cycle=%0d PC=%h rd=x%0d data=%h",
                    counter,
                    U_TOP.U1_PCPU.WB_PC,
                    U_TOP.U1_PCPU.WB_rd,
                    U_TOP.U1_PCPU.WD);
        end

        // Preferred stop condition: final writeback to x19 for riscv32_sim1
        // ! 只针对 riscv32_sim1.dat 这个测试程序有效，其他测试程序需要根据实际情况修改触发条件
        // if (U_TOP.U1_PCPU.WB_RegWrite && (U_TOP.U1_PCPU.WB_rd == 5'd19) && !done) begin
        //   done = 1'b1;

        //   #1;

        //   $fdisplay(foutput, "[DONE_BY_WB] cycle=%0d wb_pc=%h", counter, U_TOP.U1_PCPU.WB_PC);
        //   $fdisplay(foutput, "pc:\t %h", U_TOP.U1_PCPU.PC_out);
        //   $fdisplay(foutput, "instr:\t\t %h", U_TOP.inst_in);

        //   $fdisplay(foutput, "rf00-03:\t %h %h %h %h", 32'h0,
        //             U_TOP.U1_PCPU.U_RF.rf[1], U_TOP.U1_PCPU.U_RF.rf[2], U_TOP.U1_PCPU.U_RF.rf[3]);
        //   $fdisplay(foutput, "rf04-07:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[4], U_TOP.U1_PCPU.U_RF.rf[5], U_TOP.U1_PCPU.U_RF.rf[6], U_TOP.U1_PCPU.U_RF.rf[7]);
        //   $fdisplay(foutput, "rf08-11:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[8], U_TOP.U1_PCPU.U_RF.rf[9], U_TOP.U1_PCPU.U_RF.rf[10], U_TOP.U1_PCPU.U_RF.rf[11]);
        //   $fdisplay(foutput, "rf12-15:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[12], U_TOP.U1_PCPU.U_RF.rf[13], U_TOP.U1_PCPU.U_RF.rf[14], U_TOP.U1_PCPU.U_RF.rf[15]);
        //   $fdisplay(foutput, "rf16-19:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[16], U_TOP.U1_PCPU.U_RF.rf[17], U_TOP.U1_PCPU.U_RF.rf[18], U_TOP.U1_PCPU.U_RF.rf[19]);
        //   $fdisplay(foutput, "rf20-23:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[20], U_TOP.U1_PCPU.U_RF.rf[21], U_TOP.U1_PCPU.U_RF.rf[22], U_TOP.U1_PCPU.U_RF.rf[23]);
        //   $fdisplay(foutput, "rf24-27:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[24], U_TOP.U1_PCPU.U_RF.rf[25], U_TOP.U1_PCPU.U_RF.rf[26], U_TOP.U1_PCPU.U_RF.rf[27]);
        //   $fdisplay(foutput, "rf28-31:\t %h %h %h %h",
        //             U_TOP.U1_PCPU.U_RF.rf[28], U_TOP.U1_PCPU.U_RF.rf[29], U_TOP.U1_PCPU.U_RF.rf[30], U_TOP.U1_PCPU.U_RF.rf[31]);

        //   $fclose(foutput);
        //   $fclose(debug_output);
        //   $fclose(pc_output);
        //   $finish;
        // end

        // Fallback trigger: full snapshot at key PC
        if ((U_TOP.U1_PCPU.PC_out == TARGET_PC) && !done) begin
          $fdisplay(debug_output, "[DONE_BY_PC] cycle=%0d PC=%h", counter, U_TOP.U1_PCPU.PC_out);
          $fdisplay(foutput, "pc:\t %h", U_TOP.U1_PCPU.PC_out);
          $fdisplay(foutput, "instr:\t\t %h", U_TOP.inst_in);

          $fdisplay(foutput, "rf00-03:\t %h %h %h %h", 32'h0,
                    U_TOP.U1_PCPU.U_RF.rf[1], U_TOP.U1_PCPU.U_RF.rf[2], U_TOP.U1_PCPU.U_RF.rf[3]);
          $fdisplay(foutput, "rf04-07:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[4], U_TOP.U1_PCPU.U_RF.rf[5], U_TOP.U1_PCPU.U_RF.rf[6], U_TOP.U1_PCPU.U_RF.rf[7]);
          $fdisplay(foutput, "rf08-11:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[8], U_TOP.U1_PCPU.U_RF.rf[9], U_TOP.U1_PCPU.U_RF.rf[10], U_TOP.U1_PCPU.U_RF.rf[11]);
          $fdisplay(foutput, "rf12-15:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[12], U_TOP.U1_PCPU.U_RF.rf[13], U_TOP.U1_PCPU.U_RF.rf[14], U_TOP.U1_PCPU.U_RF.rf[15]);
          $fdisplay(foutput, "rf16-19:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[16], U_TOP.U1_PCPU.U_RF.rf[17], U_TOP.U1_PCPU.U_RF.rf[18], U_TOP.U1_PCPU.U_RF.rf[19]);
          $fdisplay(foutput, "rf20-23:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[20], U_TOP.U1_PCPU.U_RF.rf[21], U_TOP.U1_PCPU.U_RF.rf[22], U_TOP.U1_PCPU.U_RF.rf[23]);
          $fdisplay(foutput, "rf24-27:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[24], U_TOP.U1_PCPU.U_RF.rf[25], U_TOP.U1_PCPU.U_RF.rf[26], U_TOP.U1_PCPU.U_RF.rf[27]);
          $fdisplay(foutput, "rf28-31:\t %h %h %h %h",
                    U_TOP.U1_PCPU.U_RF.rf[28], U_TOP.U1_PCPU.U_RF.rf[29], U_TOP.U1_PCPU.U_RF.rf[30], U_TOP.U1_PCPU.U_RF.rf[31]);

          // Optional deeper pipeline state for first N cycles
          $fdisplay(debug_output, "----- PIPE SNAPSHOT @TARGET_PC -----");
          $fdisplay(debug_output, "IF/ID: PC=%h Inst=%h", U_TOP.U1_PCPU.ID_PC, U_TOP.U1_PCPU.ID_inst);
          $fdisplay(debug_output,
                    "ID/EX: EX_PC=%h EX_rs1=%0d EX_rs2=%0d EX_rd=%0d EX_ALUOp=%h EX_ALUSrc=%b EX_RegWrite=%b EX_Mem_w=%b EX_Mem_r=%b",
                    U_TOP.U1_PCPU.EX_PC,
                    U_TOP.U1_PCPU.EX_rs1,
                    U_TOP.U1_PCPU.EX_rs2,
                    U_TOP.U1_PCPU.EX_rd,
                    U_TOP.U1_PCPU.EX_ALUOp,
                    U_TOP.U1_PCPU.EX_ALUSrc,
                    U_TOP.U1_PCPU.EX_RegWrite,
                    U_TOP.U1_PCPU.EX_Mem_w,
                    U_TOP.U1_PCPU.EX_Mem_r);
          $fdisplay(debug_output,
                    "EX/MEM: MEM_PC=%h MEM_rd=%0d MEM_RegWrite=%b MEM_Mem_w=%b MEM_aluout=%h",
                    U_TOP.U1_PCPU.MEM_PC,
                    U_TOP.U1_PCPU.MEM_rd,
                    U_TOP.U1_PCPU.MEM_RegWrite,
                    U_TOP.U1_PCPU.MEM_Mem_w,
                    U_TOP.U1_PCPU.MEM_aluout);
          $fdisplay(debug_output,
                    "MEM/WB: WB_PC=%h WB_rd=%0d WB_RegWrite=%b WB_WDSel=%b WB_Data_in=%h WB_aluout=%h",
                    U_TOP.U1_PCPU.WB_PC,
                    U_TOP.U1_PCPU.WB_rd,
                    U_TOP.U1_PCPU.WB_RegWrite,
                    U_TOP.U1_PCPU.WB_WDSel,
                    U_TOP.U1_PCPU.WB_Data_in,
                    U_TOP.U1_PCPU.WB_aluout);

          $fclose(foutput);
          $fclose(debug_output);
          $fclose(pc_output);
          $finish;
        end
      end
    end
  end

endmodule
