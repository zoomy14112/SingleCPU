`define BEQ 3'b001
`define BNE 3'b010
`define BLT 3'b011
`define BGE 3'b100
`define BLTU 3'b101
`define BGEU 3'b110
module SCPU(clk, reset, MIO_ready, inst_in, Data_in, mem_w, PC_out, Addr_out, Data_out, dm_ctrl, CPU_MIO, INT);
    input clk;
    input reset;
    input MIO_ready;
    input [31:0] inst_in;
    input [31:0] Data_in;
    output mem_w;
    output [31:0] PC_out;
    output [31:0] Addr_out;
    output [31:0] Data_out;
    output [2:0] dm_ctrl;
    output CPU_MIO;
    input INT;
    // Data path registers in pipeline stages
    reg [31:0] pc;
    wire [31:0] pc,pc_ID,pc_EX,pc_MEM,pc_WB;
    wire [31:0] instr_ID,instr_EX,instr_MEM,instr_WB;
    wire [31:0] rd1_ID,rd2_ID,rd1_EX,rd2_EX,rd2_MEM;
    wire [31:0] IMMout_ID,IMMout_EX,IMMout_MEM,IMMout_WB;
    wire [31:0] ALUout_EX,ALUout_MEM,ALUout_WB;
    wire [31:0] DMout_WB;
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
    wire branch_ID,branch_EX;
    wire [2:0] branch_type_ID,branch_type_EX;
    wire [31:0] WriteBack;
    // signals for forwarding
    wire rtype_ID,rtype_EX,rtype_MEM,rtype_WB;
    wire load_ID,load_EX,load_MEM,load_WB;
    wire store_ID,store_EX,store_MEM,store_WB;
    wire itype_ID,itype_EX,itype_MEM,itype_WB;
    // hazard detection and blocking signals
    wire PC_write;
    wire block_ID,block_EX,block_MEM,block_WB;
    wire flush_ID,flush_EX,flush_MEM,flush_WB;

    wire LoadUseStall=MemtoReg_MEM&&instr_MEM[11:7]!=5'b0&&(instr_MEM[11:7]==instr_EX[19:15]||instr_MEM[11:7]==instr_EX[24:20]);
    wire StaticPredict=branch|jal_EX|jalr_EX;

    assign PC_write=~(block_ID|block_EX|block_MEM|block_WB);
    assign block_ID=LoadUseStall;
    assign block_EX=LoadUseStall;
    assign block_MEM=0;
    assign block_WB=0;
    assign flush_ID=StaticPredict;
    assign flush_EX=StaticPredict;
    assign flush_MEM=0;
    assign flush_WB=0;

// ----- IF -----
    wire [31:0] NextPC;
    wire branch=branch_EX&&
                ((branch_type_EX==`BEQ&&Equal)|
                (branch_type_EX==`BNE&&~Equal)|
                (branch_type_EX==`BLT&&Lessthan)|
                (branch_type_EX==`BGE&&~Lessthan)|
                (branch_type_EX==`BLTU&&LessthanU)|
                (branch_type_EX==`BGEU&&~LessthanU));
    assign NextPC=jal_EX|branch?pc_EX+IMMout_EX:
                  jalr_EX?rd1_EX+IMMout_EX:
                  pc+4;
    always @(negedge clk or posedge reset)
    begin
        if(reset)
            pc<=0;
        else if(PC_write)
            pc<=NextPC;
        else
            pc<=pc;
    end
    assign PC_out=pc;
    Pipeline #(64) IF_ID(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_ID),
        .flush(flush_ID),
        .data_in({inst_in,pc}),
        .data_out({instr_ID,pc_ID})
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
    Pipeline #(183) ID_EX(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_EX),
        .flush(flush_EX),
        .data_in({rtype_ID,load_ID,store_ID,i_type_ID,ALUop_ID,ALUSrc_ID,MemWrite_ID,DMtype_ID,MemtoReg_ID,RegWrite_ID,jal_ID,jalr_ID,lui_ID,auipc_ID,branch_ID,branch_type_ID,instr_ID,pc_ID,rd1_ID,rd2_ID,IMMout_ID}),
        .data_out({rtype_EX,load_EX,store_EX,i_type_EX,ALUop_EX,ALUSrc_EX,MemWrite_EX,DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,branch_EX,branch_type_EX,instr_EX,pc_EX,rd1_EX,rd2_EX,IMMout_EX})
    );
// ----- EX -----
    wire [31:0] ALU_A,ALU_B;
    assign ALU_A=
                RegWrite_MEM&&instr_MEM[11:7]!=0&&instr_MEM[11:7]==instr_EX[19:15]?(
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

    Pipeline #(174) EX_MEM(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_MEM),
        .flush(flush_MEM),
        .data_in({rtype_EX,load_EX,store_EX,i_type_EX,MemWrite_EX,DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,instr_EX,pc_EX,ALUout_EX,rd2_EX,IMMout_EX}),
        .data_out({rtype_MEM,load_MEM,store_MEM,i_type_MEM,MemWrite_MEM,DMtype_MEM,MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,rd2_MEM,IMMout_MEM})
    );
// ----- MEM -----
    assign Addr_out=ALUout_MEM;
    assign Data_out=rd2_MEM;
    assign mem_w=MemWrite_MEM;
    assign dm_ctrl=DMtype_MEM;
    Pipeline #(170) MEM_WB(
        .clk(clk),
        .rst(reset),
        .write_enable(~block_WB),
        .flush(flush_WB),
        .data_in({rtype_MEM,load_MEM,store_MEM,i_type_MEM,MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,Data_in,IMMout_MEM}),
        .data_out({rtype_WB,load_WB,store_WB,i_type_WB,MemtoReg_WB,RegWrite_WB,jal_WB,jalr_WB,lui_WB,auipc_WB,instr_WB,pc_WB,ALUout_WB,DMout_WB,IMMout_WB})
    );
// ----- WB -----
    
    assign WriteBack=lui_WB?IMMout_WB:
                    jal_WB|jalr_WB?pc_WB+4:
                    auipc_WB?pc_WB+IMMout_WB:
                    MemtoReg_WB?DMout_WB:
                    ALUout_WB;
endmodule
