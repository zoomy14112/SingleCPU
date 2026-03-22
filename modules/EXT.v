`define EXT_CTRL_ITYPE_SHAMT 6'b000001
`define EXT_CTRL_ITYPE 6'b000010
`define EXT_CTRL_STYPE 6'b000011
`define EXT_CTRL_BTYPE 6'b000100
`define EXT_CTRL_UTYPE 6'b000101
`define EXT_CTRL_JTYPE 6'b000110
module EXT( 
    input [31:0] instr,
    input [5:0]	EXTop,
    output [31:0] immout
);
    wire [4:0] iimm_shamt=instr[24:20];
    wire [11:0] iimm=instr[31:20];
    wire [11:0] simm={instr[31:25],instr[11:7]};
    wire [11:0] bimm={instr[31],instr[7],instr[30:25],instr[11:8]};
    wire [19:0] uimm=instr[31:12];
    wire [19:0] jimm={instr[31],instr[19:12],instr[20],instr[30:21]};

    assign immout=(EXTop==`EXT_CTRL_ITYPE_SHAMT)?{27'b0,iimm_shamt[4:0]}:
                  (EXTop==`EXT_CTRL_ITYPE)?{{20{iimm[11]}},iimm[11:0]}:
                  (EXTop==`EXT_CTRL_STYPE)?{{20{simm[11]}},simm[11:0]}:
                  (EXTop==`EXT_CTRL_BTYPE)?{{19{bimm[11]}},bimm[11:0],1'b0}:
                  (EXTop==`EXT_CTRL_UTYPE)?{uimm[19:0],12'b0}:
                  (EXTop==`EXT_CTRL_JTYPE)?{{11{jimm[19]}},jimm[19:0],1'b0}:
                  32'b0;
endmodule
