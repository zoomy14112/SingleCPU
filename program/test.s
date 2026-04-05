
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <main>:
  20:	fe010113          	addi	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	addi	s0,sp,32
  30:	fe042623          	sw	zero,-20(s0)
  34:	fe042023          	sw	zero,-32(s0)
  38:	f0000793          	li	a5,-256
  3c:	fef42423          	sw	a5,-24(s0)
  40:	e00007b7          	lui	a5,0xe0000
  44:	fef42223          	sw	a5,-28(s0)
  48:	fe842783          	lw	a5,-24(s0)
  4c:	fe040713          	addi	a4,s0,-32
  50:	00070593          	mv	a1,a4
  54:	00078513          	mv	a0,a5
  58:	0f4000ef          	jal	14c <read>
  5c:	fe042783          	lw	a5,-32(s0)
  60:	0087d793          	srli	a5,a5,0x8
  64:	0ff7f793          	zext.b	a5,a5
  68:	fef42623          	sw	a5,-20(s0)
  6c:	fe442683          	lw	a3,-28(s0)
  70:	fec42783          	lw	a5,-20(s0)
  74:	01879713          	slli	a4,a5,0x18
  78:	fec42783          	lw	a5,-20(s0)
  7c:	01079793          	slli	a5,a5,0x10
  80:	00f76733          	or	a4,a4,a5
  84:	fec42783          	lw	a5,-20(s0)
  88:	00879793          	slli	a5,a5,0x8
  8c:	00f76733          	or	a4,a4,a5
  90:	fec42783          	lw	a5,-20(s0)
  94:	00f767b3          	or	a5,a4,a5
  98:	00078593          	mv	a1,a5
  9c:	00068513          	mv	a0,a3
  a0:	06c000ef          	jal	10c <write>
  a4:	fe442783          	lw	a5,-28(s0)
  a8:	00478793          	addi	a5,a5,4 # e0000004 <__global_pointer$+0xdfffe614>
  ac:	00078693          	mv	a3,a5
  b0:	fec42783          	lw	a5,-20(s0)
  b4:	01879713          	slli	a4,a5,0x18
  b8:	fec42783          	lw	a5,-20(s0)
  bc:	01079793          	slli	a5,a5,0x10
  c0:	00f76733          	or	a4,a4,a5
  c4:	fec42783          	lw	a5,-20(s0)
  c8:	00879793          	slli	a5,a5,0x8
  cc:	00f76733          	or	a4,a4,a5
  d0:	fec42783          	lw	a5,-20(s0)
  d4:	00f767b3          	or	a5,a4,a5
  d8:	fff7c793          	not	a5,a5
  dc:	00078593          	mv	a1,a5
  e0:	00068513          	mv	a0,a3
  e4:	028000ef          	jal	10c <write>
  e8:	fe842703          	lw	a4,-24(s0)
  ec:	fec42783          	lw	a5,-20(s0)
  f0:	00879793          	slli	a5,a5,0x8
  f4:	01079793          	slli	a5,a5,0x10
  f8:	0107d793          	srli	a5,a5,0x10
  fc:	00078593          	mv	a1,a5
 100:	00070513          	mv	a0,a4
 104:	008000ef          	jal	10c <write>
 108:	f41ff06f          	j	48 <main+0x28>

0000010c <write>:
 10c:	fd010113          	addi	sp,sp,-48
 110:	02112623          	sw	ra,44(sp)
 114:	02812423          	sw	s0,40(sp)
 118:	03010413          	addi	s0,sp,48
 11c:	fca42e23          	sw	a0,-36(s0)
 120:	fcb42c23          	sw	a1,-40(s0)
 124:	fdc42783          	lw	a5,-36(s0)
 128:	fef42623          	sw	a5,-20(s0)
 12c:	fec42783          	lw	a5,-20(s0)
 130:	fd842703          	lw	a4,-40(s0)
 134:	00e7a023          	sw	a4,0(a5)
 138:	00000013          	nop
 13c:	02c12083          	lw	ra,44(sp)
 140:	02812403          	lw	s0,40(sp)
 144:	03010113          	addi	sp,sp,48
 148:	00008067          	ret

0000014c <read>:
 14c:	fd010113          	addi	sp,sp,-48
 150:	02112623          	sw	ra,44(sp)
 154:	02812423          	sw	s0,40(sp)
 158:	03010413          	addi	s0,sp,48
 15c:	fca42e23          	sw	a0,-36(s0)
 160:	fcb42c23          	sw	a1,-40(s0)
 164:	fdc42783          	lw	a5,-36(s0)
 168:	fef42623          	sw	a5,-20(s0)
 16c:	fec42783          	lw	a5,-20(s0)
 170:	0007a703          	lw	a4,0(a5)
 174:	fd842783          	lw	a5,-40(s0)
 178:	00e7a023          	sw	a4,0(a5)
 17c:	00000013          	nop
 180:	02c12083          	lw	ra,44(sp)
 184:	02812403          	lw	s0,40(sp)
 188:	03010113          	addi	sp,sp,48
 18c:	00008067          	ret

00000190 <wait>:
 190:	fd010113          	addi	sp,sp,-48
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	03010413          	addi	s0,sp,48
 1a0:	fca42e23          	sw	a0,-36(s0)
 1a4:	fe042623          	sw	zero,-20(s0)
 1a8:	fe042423          	sw	zero,-24(s0)
 1ac:	0200006f          	j	1cc <wait+0x3c>
 1b0:	fec42703          	lw	a4,-20(s0)
 1b4:	fe842783          	lw	a5,-24(s0)
 1b8:	00f707b3          	add	a5,a4,a5
 1bc:	fef42623          	sw	a5,-20(s0)
 1c0:	fe842783          	lw	a5,-24(s0)
 1c4:	00178793          	addi	a5,a5,1
 1c8:	fef42423          	sw	a5,-24(s0)
 1cc:	fe842703          	lw	a4,-24(s0)
 1d0:	fdc42783          	lw	a5,-36(s0)
 1d4:	fcf74ee3          	blt	a4,a5,1b0 <wait+0x20>
 1d8:	fec42783          	lw	a5,-20(s0)
 1dc:	00078513          	mv	a0,a5
 1e0:	02c12083          	lw	ra,44(sp)
 1e4:	02812403          	lw	s0,40(sp)
 1e8:	03010113          	addi	sp,sp,48
 1ec:	00008067          	ret
