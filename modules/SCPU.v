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
    reg [31:0] pc_IF;
    wire [31:0] pc_ID,pc_EX,pc_MEM,pc_WB;
    wire [31:0] instr_ID,instr_EX,instr_MEM,instr_WB;
    wire [31:0] rd1_ID,rd2_ID,rd1_EX,rd2_EX;
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

// ----- IF -----
    wire [31:0] NextPC;
    assign NextPC=jal_EX?pc_EX+IMMout_EX:
                  jalr_EX?rd1_EX+IMMout_EX:
                  (branch_EX&&
                  ((branch_type_EX==`BEQ&&Equal)|
                  (branch_type_EX==`BNE&&~Equal)|
                  (branch_type_EX==`BLT&&Lessthan)|
                  (branch_type_EX==`BGE&&~Lessthan)|
                  (branch_type_EX==`BLTU&&LessthanU)|
                  (branch_type_EX==`BGEU&&~LessthanU)))?pc_EX+IMMout_EX:
                  pc_IF+4;
    always @(posedge clk or posedge reset)
    begin
        if(reset)
            pc_IF<=0;
        else
            pc_IF<=NextPC;
    end
    assign PC_out=pc_ID;
    Pipeline #(64) IF_ID(
        .clk(clk),
        .rst(reset),
        .write_enable(1'b1),
        .flush(1'b0),
        .data_in({inst_in,pc_IF}),
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
        .branch_type(branch_type_ID)
    );
    RF my_RF(
        .clk(clk),
        .rstn(reset),
        .A1(instr_ID[19:15]),
        .A2(instr_ID[24:20]),
        .A3(instr_ID[11:7]),
        .RD1(rd1_ID),
        .RD2(rd2_ID),
        .WD(WriteBack),
        .RegWrite(RegWrite)
    );
    EXT my_EXT(
        .instr(instr_ID),
        .immout(IMMout_ID),
        .EXTop(extOP)
    );
    Pipeline #(179) ID_EX(
        .clk(clk),
        .rst(reset),
        .write_enable(1'b1),
        .flush(1'b0),
        .data_in({ALUop_ID,ALUSrc_ID,MemWrite_ID,DMtype_ID,MemtoReg_ID,RegWrite_ID,jal_ID,jalr_ID,lui_ID,auipc_ID,branch_ID,branch_type_ID,instr_ID,pc_ID,rd1_ID,rd2_ID,IMMout_ID}),
        .data_out({ALUop_EX,ALUSrc_EX,MemWrite_EX,DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,branch_EX,branch_type_EX,instr_EX,pc_EX,rd1_EX,rd2_EX,IMMout_EX})
    );
// ----- EX -----
    ALU my_ALU(
        .A(rd1_EX),
        .B(ALUSrc_EX?IMMout_EX:rd2_EX),
        .C(ALUout_EX),
        .ALUop(ALUop_EX),
        .Equal(Equal),
        .Lessthan(Lessthan),
        .LessthanU(LessthanU)
    );

    Pipeline #(169) EX_MEM(
        .clk(clk),
        .rst(reset),
        .write_enable(1'b1),
        .flush(1'b0),
        .data_in({DMtype_EX,MemtoReg_EX,RegWrite_EX,jal_EX,jalr_EX,lui_EX,auipc_EX,instr_EX,pc_EX,ALUout_EX,rd2_EX,IMMout_EX}),
        .data_out({DMtype_MEM,MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,rd2_MEM,IMMout_MEM})
    );
// ----- MEM -----
    assign Addr_out=ALUout_MEM;
    assign Data_out=rd2_MEM;
    assign mem_w=MemWrite_MEM;
    assign dm_ctrl=DMtype_MEM;
    Pipeline #(166) MEM_WB(
        .clk(clk),
        .rst(reset),
        .write_enable(1'b1),
        .flush(1'b0),
        .data_in({MemtoReg_MEM,RegWrite_MEM,jal_MEM,jalr_MEM,lui_MEM,auipc_MEM,instr_MEM,pc_MEM,ALUout_MEM,Data_in,IMMout_MEM}),
        .data_out({MemtoReg_WB,RegWrite_WB,jal_WB,jalr_WB,lui_WB,auipc_WB,instr_WB,pc_WB,ALUout_WB,DMout_WB,IMMout_WB})
    );
// ----- WB -----
    
    assign WriteBack=lui_WB?IMMout_WB:
                    jal_WB|jalr_WB?pc_WB+4:
                    MemtoReg_WB?DMout_WB:
                    ALUout_WB;
endmodule
