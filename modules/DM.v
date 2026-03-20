`timescale 1ns / 1ps
`define dm_word 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_halfword 3'b011
`define dm_byte_unsigned 3'b100
`define dm_byte 3'b101

module DM(
    input clk,
    input rstn,
    input DMWr,
    input [7:0] addr,
    input [31:0] DmIn,
    input [2:0] DMtype,
    output reg [31:0] DmOut
    );
    reg [7:0] Mem[255:0];
    integer i;
    always@(posedge clk or negedge rstn)
    begin
        if(!rstn)
        begin
            for(i=0;i<256;i=i+1)
                Mem[i]=i;
        end
        else if(DMWr)
        begin
            case(DMtype)
                `dm_word:
                begin
                    Mem[addr]=DmIn[7:0];
                    Mem[addr+1]=DmIn[15:8];
                    Mem[addr+2]=DmIn[23:16];
                    Mem[addr+3]=DmIn[31:24];
                end
                `dm_halfword:
                begin
                    Mem[addr]=DmIn[7:0];
                    Mem[addr+1]=DmIn[15:8];
                end
                `dm_halfword_unsigned:
                begin
                    Mem[addr]=DmIn[7:0];
                    Mem[addr+1]=DmIn[15:8];
                end
                `dm_byte:
                    Mem[addr]=DmIn[7:0];
                `dm_byte_unsigned:
                    Mem[addr]=DmIn[7:0];
            endcase
        end
    end
    always @(*)
    begin
        case(DMtype)
            `dm_word:
                DmOut={Mem[addr+3],Mem[addr+2],Mem[addr+1],Mem[addr]};
            `dm_halfword:
                DmOut={{16{Mem[addr+1][7]}},Mem[addr+1],Mem[addr]};
            `dm_halfword_unsigned:
                DmOut={16'b0,Mem[addr+1],Mem[addr]};
            `dm_byte:
                DmOut={{24{Mem[addr][7]}},Mem[addr]};
            `dm_byte_unsigned:
                DmOut={24'b0,Mem[addr]};
            default:
                DmOut=32'b0;
        endcase
    end
endmodule