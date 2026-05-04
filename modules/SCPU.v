`timescale 1ns/1ps

`define BEQ 3'b001
`define BNE 3'b010
`define BLT 3'b011
`define BGE 3'b100
`define BLTU 3'b101
`define BGEU 3'b110

module SCPU(
    input clk,
    input reset,
    input keyboard_int,
    input button_int,
    input counter_int,
    input mie_we,
    input mie_in,
    input [31:0] inst_in,
    input [31:0] Data_in,
    output mie_out,
    output mem_w,
    output [31:0] PC_out,
    output [31:0] Addr_out,
    output [31:0] Data_out,
    output [2:0] dm_ctrl,
    output CPU_MIO, // unused
    input MIO_ready // unused
    );
    // basic data paths
    wire [31:0] WriteBack;
    wire [31:0] NextPC;
    reg [31:0] pc;
    // Data path registers in pipeline stages
    wire [31:0] pc_ID,pc_EX,pc_MEM,pc_WB;
    wire [31:0] instr_ID,instr_EX,instr_MEM,instr_WB;
    wire [31:0] rd1_ID,rd2_ID,rd1_EX,rd2_EX;
    wire [31:0] IMMout_ID,IMMout_EX,IMMout_MEM,IMMout_WB;
    wire [31:0] ALUout_EX,ALUout_MEM,ALUout_WB;
    wire [31:0] DMout_WB;
    wire [31:0] DMin_EX,DMin_MEM;
    // control signals in pipeline stages
    wire [2:0] extOP;
    wire [3:0] ALUop_ID,ALUop_EX;
    wire ALUSrc_ID,ALUSrc_EX;
    wire MemWrite_ID,MemWrite_EX,MemWrite_MEM;
    wire MemtoReg_ID,MemtoReg_EX,MemtoReg_MEM,MemtoReg_WB;
    wire [2:0] DMtype_ID,DMtype_EX,DMtype_MEM;
    wire RegWrite_ID,RegWrite_EX,RegWrite_MEM,RegWrite_WB;
    wire jal_ID,jal_EX,jal_MEM,jal_WB;
    wire jalr_ID,jalr_EX,jalr_MEM,jalr_WB;
    wire lui_ID,lui_EX,lui_MEM,lui_WB;
    wire auipc_ID,auipc_EX,auipc_MEM,auipc_WB;
    wire branch_ID,branch_EX,branch;
    wire [2:0] branch_type_ID,branch_type_EX;
    // hazard detection and blocking signals
    wire PC_write;
    wire block_ID,block_EX,block_MEM,block_WB;
    wire flush_ID,flush_EX,flush_MEM,flush_WB;
    // stall and prediction signals
    wire LoadUseStall=MemtoReg_MEM&&instr_MEM[11:7]!=5'b0&&(instr_MEM[11:7]==instr_EX[19:15]||instr_MEM[11:7]==instr_EX[24:20]);
    wire Jump,failure;
    // 2-bit saturating counter predictor
    wire guess_IF,guess_ID,guess_EX;
    wire [31:0] PC_guess;
    predict my_predict(
        .clk(clk),
        .reset(reset),
        .PC_IF(pc),
        .instr_IF(inst_in),
        .report(branch_EX),
        .solution(branch),
        .guess(guess_IF),
        .pc_guess(PC_guess)
    );
    // return address stack for predicting return addresses
    wire [31:0] ret_addr;
    wire ret_IF,ret_ID,ret_EX;
    stack RAS(
        .clk(clk),
        .reset(reset),
        .report(failure),
        .instr(inst_in),
        .instr_EX(instr_EX),
        .data_in(pc_EX+4),
        .addr_out(ret_addr),
        .predict(ret_IF)
    );
    // interrupt handling
    wire INT=keyboard_int|button_int|counter_int; // interrupt signal from keyboard or button or timer
    wire [31:0] int_addr=button_int?32'h000000b8:32'h0000001c; // interrupt handler address(should be modified as needed)
    reg mie; // machine interrupt enable bit (mstatus[3])
    reg [31:0] mepc; // to save the current PC on interrupt
    reg InInterrupt; // flag to indicate we're currently handling an interrupt
    reg int_pending; // flag to indicate an interrupt is pending
    wire mret_IF=(inst_in==32'h30200073); // check for mret instruction in IF stage
    wire mret_ID=(instr_ID==32'h30200073); // check for mret instruction in ID stage
    wire mret_EX=(instr_EX==32'h30200073); // check for mret instruction in EX stage
    wire mret_MEM=(instr_MEM==32'h30200073); // check for mret instruction in MEM stage
    wire mret_WB=(instr_WB==32'h30200073); // check for mret instruction in WB stage
    wire int_taken=int_pending&~InInterrupt&mie&PC_write&(instr_ID!=32'h0); // block interrupt when ID stage is bubble
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            mie<=1;
        else if(mie_we)
            mie<=mie_in;
    end
    assign mie_out=mie;
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            mepc<=0;
        else if(int_taken)
            mepc<=failure?(
                    jalr_EX?ALUout_EX:
                    guess_EX?pc_EX+4:
                    pc_EX+IMMout_EX):
                pc_ID;
    end
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            int_pending<=0;
        else if(int_taken)
            int_pending<=0;
        else if(INT)
            int_pending<=1;
        else
            int_pending<=0;
    end
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            InInterrupt<=0;
        else if(int_taken)
            InInterrupt<=1;
        else if(mret_EX)
            InInterrupt<=0;
    end
    // flush and block control signals
    assign PC_write=~(block_ID|block_EX|block_MEM|block_WB);
    assign block_ID=LoadUseStall;
    assign block_EX=0;
    assign block_MEM=0;
    assign block_WB=0;
    assign flush_ID=failure|int_taken|mret_EX;
    assign flush_EX=failure|int_taken|mret_EX|LoadUseStall;
    assign flush_MEM=0;
    assign flush_WB=0;
// ----- IF -----
    assign branch=branch_EX&&
                ((branch_type_EX==`BEQ&&Equal)|
                (branch_type_EX==`BNE&&~Equal)|
                (branch_type_EX==`BLT&&Lessthan)|
                (branch_type_EX==`BGE&&~Lessthan)|
                (branch_type_EX==`BLTU&&LessthanU)|
                (branch_type_EX==`BGEU&&~LessthanU));
    assign NextPC=int_taken?int_addr:
                mret_EX?mepc:
                failure?(jalr_EX?ALUout_EX:
                        guess_EX?pc_EX+4:
                        pc_EX+IMMout_EX):
                ret_IF?ret_addr:
                pc+PC_guess;
    always @(posedge clk or posedge reset)
    begin
        if(reset)
            pc<=0;
        else if(PC_write)
            pc<=NextPC;
        else
            pc<=pc;
    end
    assign PC_out=pc;
    Pipeline #(66) IF_ID(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_ID),
        .flush(flush_ID),
        .data_in({ret_IF,guess_IF,inst_in,pc}),
        .data_out({ret_ID,guess_ID,instr_ID,pc_ID})
    );
// ----- ID -----
    ctrl my_ctrl(
        .Op(instr_ID[6:0]),
        .Funct3(instr_ID[14:12]),
        .Funct7(instr_ID[31:25]),
        .MemtoReg(MemtoReg_ID),
        .EXTop(extOP),
        .ALUop(ALUop_ID),
        .MemWrite(MemWrite_ID),
        .ALUSrc(ALUSrc_ID),
        .DMType(DMtype_ID),
        .RegWrite(RegWrite_ID),
        .jal(jal_ID),
        .jalr(jalr_ID),
        .lui(lui_ID),
        .auipc(auipc_ID),
        .branch(branch_ID),
        .branch_type(branch_type_ID),
        .load(load_ID),
        .store(store_ID),
        .r_type(rtype_ID),
        .i_type(itype_ID)
    );
    RF my_RF(
        .clk(clk),
        .rstn(reset),
        .A1(instr_ID[19:15]),
        .A2(instr_ID[24:20]),
        .A3(instr_WB[11:7]),
        .RD1(rd1_ID),
        .RD2(rd2_ID),
        .WD(WriteBack),
        .RegWrite(RegWrite_WB)
    );
    EXT my_EXT(
        .instr(instr_ID),
        .immout(IMMout_ID),
        .EXTop(extOP)
    );
    Pipeline #(181) ID_EX(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_EX),
        .flush(flush_EX),
        .data_in({ret_ID,guess_ID,ALUop_ID,ALUSrc_ID,MemWrite_ID,DMtype_ID,MemtoReg_ID,RegWrite_ID,jal_ID,jalr_ID,lui_ID,auipc_ID,branch_ID,branch_type_ID,instr_ID,pc_ID,rd1_ID,rd2_ID,IMMout_ID}),
        .data_out({ret_EX,guess_EX,ALUop_EX,ALUSrc_EX,MemWrite_EX,DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,branch_EX,branch_type_EX,instr_EX,pc_EX,rd1_EX,rd2_EX,IMMout_EX})
    );
// ----- EX -----
    wire [31:0] ALU_A,ALU_B;
    assign ALU_A=RegWrite_MEM&&instr_MEM[11:7]!=0&&instr_MEM[11:7]==instr_EX[19:15]?(
                    lui_MEM?IMMout_MEM:
                    jal_MEM|jalr_MEM?pc_MEM+4:
                    auipc_MEM?pc_MEM+IMMout_MEM:
                    MemtoReg_MEM?Data_in:
                    ALUout_MEM):
                RegWrite_WB&&instr_WB[11:7]!=0&&instr_WB[11:7]==instr_EX[19:15]?WriteBack:
                rd1_EX;
    assign ALU_B=ALUSrc_EX?IMMout_EX:
                RegWrite_MEM&&instr_MEM[11:7]!=0&&instr_MEM[11:7]==instr_EX[24:20]?(
                    lui_MEM?IMMout_MEM:
                    jal_MEM|jalr_MEM?pc_MEM+4:
                    auipc_MEM?pc_MEM+IMMout_MEM:
                    MemtoReg_MEM?Data_in:
                    ALUout_MEM):
                RegWrite_WB&&instr_WB[11:7]!=0&&instr_WB[11:7]==instr_EX[24:20]?WriteBack:
                rd2_EX;
    ALU my_ALU(
        .A(ALU_A),
        .B(ALU_B),
        .C(ALUout_EX),
        .ALUop(ALUop_EX),
        .Equal(Equal),
        .Lessthan(Lessthan),
        .LessthanU(LessthanU)
    );
    assign DMin_EX=RegWrite_MEM&&instr_MEM[11:7]!=0&&instr_MEM[11:7]==instr_EX[24:20]?(
                        lui_MEM?IMMout_MEM:
                        jal_MEM|jalr_MEM?pc_MEM+4:
                        auipc_MEM?pc_MEM+IMMout_MEM:
                        MemtoReg_MEM?Data_in:
                        ALUout_MEM):
                    RegWrite_WB&&instr_WB[11:7]!=0&&instr_WB[11:7]==instr_EX[24:20]?WriteBack:
                    rd2_EX;
    assign Jump=branch|jal_EX;
    assign failure=(Jump^guess_EX)|(jalr_EX&(ALUout_EX!=pc_ID));
    Pipeline #(170) EX_MEM(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_MEM),
        .flush(flush_MEM),
        .data_in({MemWrite_EX,DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,instr_EX,pc_EX,ALUout_EX,DMin_EX,IMMout_EX}),
        .data_out({MemWrite_MEM,DMtype_MEM,MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,DMin_MEM,IMMout_MEM})
    );
// ----- MEM -----
    assign Addr_out=ALUout_MEM;
    assign Data_out=DMin_MEM;
    assign mem_w=MemWrite_MEM;
    assign dm_ctrl=DMtype_MEM;
    Pipeline #(166) MEM_WB(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_WB),
        .flush(flush_WB),
        .data_in({MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,Data_in,IMMout_MEM}),
        .data_out({MemtoReg_WB,RegWrite_WB,jal_WB,jalr_WB,lui_WB,auipc_WB,instr_WB,pc_WB,ALUout_WB,DMout_WB,IMMout_WB})
    );
// ----- WB -----
    assign WriteBack=lui_WB?IMMout_WB:
                    jal_WB|jalr_WB?pc_WB+4:
                    auipc_WB?pc_WB+IMMout_WB:
                    MemtoReg_WB?DMout_WB:
                    ALUout_WB;
endmodule
