`define EXT_CTRL_ITYPE_SHAMT 6'b000001
`define EXT_CTRL_ITYPE 6'b000010
`define EXT_CTRL_STYPE 6'b000011
`define EXT_CTRL_BTYPE 6'b000100
`define EXT_CTRL_UTYPE 6'b000101
`define EXT_CTRL_JTYPE 6'b000110

`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100

`define ALUop_add 5'b00001
`define ALUop_sub 5'b00010
`define ALUop_or 5'b00011
`define ALUop_and 5'b00100
`define ALUop_xor 5'b00101
`define ALUop_sll 5'b00110
`define ALUop_srl 5'b00111
`define ALUop_sra 5'b01000
`define ALUop_slt 5'b01001
`define ALUop_stlu 5'b01010

module ctrl( 
    input [6:0] Op, // opcode
    input [6:0] Funct7, // funct7 
    input [2:0] Funct3, // funct3 
    input Zero,
    input CarryOut,
    output branch,   // branch signal
    output MemtoReg,    // (register) write data selection  (MemtoReg)
    output [5:0] EXTop,    // control signal to signed extension
    output [4:0] ALUop,    // ALU operation
    output MemWrite, // control signal for memory write
    output ALUSrc,   // ALU source for b
    output [2:0] DMType, //dm r/w type
    output RegWrite, // control signal for register write
    output jal, // jal instruction
    output jalr, // jalr instruction
    output lui, // lui instruction
    output auipc // auipc instruction
    );
    // r type
    wire rtype=(Op==7'b0110011); // 0110011
    wire i_add=rtype&(Funct7==7'b0000000)&(Funct3==3'b000);
    wire i_sub=rtype&(Funct7==7'b0100000)&(Funct3==3'b000);
    wire i_sll=rtype&(Funct7==7'b0000000)&(Funct3==3'b001);
    wire i_slt=rtype&(Funct7==7'b0000000)&(Funct3==3'b010);
    wire i_sltu=rtype&(Funct7==7'b0000000)&(Funct3==3'b011);
    wire i_xor=rtype&(Funct7==7'b0000000)&(Funct3==3'b100);
    wire i_srl=rtype&(Funct7==7'b0000000)&(Funct3==3'b101);
    wire i_sra=rtype&(Funct7==7'b0100000)&(Funct3==3'b101);
    wire i_or=rtype&(Funct7==7'b0000000)&(Funct3==3'b110);
    wire i_and=rtype&(Funct7==7'b0000000)&(Funct3==3'b111);
    // i type load
    wire itype_l=(Op==7'b0000011); // 0000011
    wire i_lb=itype_l&(Funct3==3'b000);
    wire i_lh=itype_l&(Funct3==3'b001);
    wire i_lw=itype_l&(Funct3==3'b010);
    wire i_lbu=itype_l&(Funct3==3'b100);
    wire i_lhu=itype_l&(Funct3==3'b101);
    // i type register
    wire itype_r=(Op==7'b0010011); // 0010011
    wire i_addi=itype_r&(Funct3==3'b000);
    wire i_slti=itype_r&(Funct3==3'b010);
    wire i_sltiu=itype_r&(Funct3==3'b011);
    wire i_xori=itype_r&(Funct3==3'b100);
    wire i_ori=itype_r&(Funct3==3'b110);
    wire i_andi=itype_r&(Funct3==3'b111);
    // i type shamt
    wire i_slli=itype_r&(Funct3==3'b001)&(Funct7==7'b0000000);
    wire i_srli=itype_r&(Funct3==3'b101)&(Funct7==7'b0000000);
    wire i_srai=itype_r&(Funct3==3'b101)&(Funct7==7'b0100000);
    wire i_type_shamt=i_slli|i_srli|i_srai;
    // s type
    wire stype=(Op==7'b0100011);//0100011
    wire i_sw=stype&(Funct3==3'b010); // sw 010
    wire i_sb=stype&(Funct3==3'b000);
    wire i_sh=stype&(Funct3==3'b001);
    // b type
    wire btype=(Op==7'b1100011); //1100011
    wire i_beq=btype&(Funct3==3'b000);
    wire i_bne=btype&(Funct3==3'b001);
    wire i_blt=btype&(Funct3==3'b100);
    wire i_bge=btype&(Funct3==3'b101);
    wire i_bltu=btype&(Funct3==3'b110);
    wire i_bgeu=btype&(Funct3==3'b111);
    // j type
    wire i_jal=(Op==7'b1101111); // 1101111
    wire i_jalr=(Op==7'b1100111); // 1100111
    // u type
    wire i_lui=(Op==7'b0110111); // 0110111
    wire i_auipc=(Op==7'b0010111); // 0010111

    assign branch=(btype&((i_beq&Zero)|
                        (i_bne&~Zero)|
                        ((i_bge|i_bgeu)&(Zero|~CarryOut))|
                        ((i_blt|i_bltu)&CarryOut))); // branch
    assign MemtoReg=itype_l; // memory to register

    assign EXTop=i_type_shamt?`EXT_CTRL_ITYPE_SHAMT:
                 itype_l|itype_r|i_jalr?`EXT_CTRL_ITYPE:
                 i_lui|i_auipc?`EXT_CTRL_UTYPE:
                 i_jal?`EXT_CTRL_JTYPE:
                 stype?`EXT_CTRL_STYPE:
                 btype?`EXT_CTRL_BTYPE:
                 6'b000000;
    
    // ALU control
    wire alu_add=i_add|i_addi|itype_l|stype;
    wire alu_sub=i_sub|btype;
    wire alu_and=i_and|i_andi;
    wire alu_or=i_or|i_ori;
    wire alu_xor=i_xor|i_xori;
    wire alu_sll=i_sll|i_slli;
    wire alu_srl=i_srl|i_srli;
    wire alu_sra=i_sra|i_srai;
    wire alu_slt=i_slt|i_slti;
    wire alu_sltu=i_sltu|i_sltiu;
    assign ALUop=alu_add?`ALUop_add:
                    alu_sub?`ALUop_sub:
                    alu_and?`ALUop_and:
                    alu_or?`ALUop_or:
                    alu_xor?`ALUop_xor:
                    alu_sll?`ALUop_sll:
                    alu_srl?`ALUop_srl:
                    alu_sra?`ALUop_sra:
                    alu_slt?`ALUop_slt:
                    alu_sltu?`ALUop_stlu:
                    5'b00000;
    assign MemWrite=stype; // memory write
    assign ALUSrc=itype_r|stype|itype_l; // ALU B is immediate

    wire word=itype_l&i_lw|stype&i_sw;
    wire halfword=itype_l&(i_lh|i_lhu)|stype&i_sh;
    wire byte=itype_l&(i_lb|i_lbu)|stype&i_sb;
    wire Signed=itype_l&(i_lb|i_lh)|stype&(i_sb|i_sh);
    wire Unsigned=itype_l&(i_lbu|i_lhu)|stype&i_sb;
    assign DMType=word?`dm_word:
                  halfword&Signed?`dm_halfword:
                  halfword&Unsigned?`dm_halfword_unsigned:
                  byte&Signed?`dm_byte:
                  byte&Unsigned?`dm_byte_unsigned:
                  3'b000;

    assign RegWrite=rtype|itype_r|itype_l|i_jal|i_jalr|i_lui|i_auipc; // register write
    assign jal=i_jal;
    assign jalr=i_jalr;
    assign lui=i_lui;
    assign auipc=i_auipc;
endmodule