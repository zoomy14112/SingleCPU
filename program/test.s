
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	78c000ef          	jal	7c0 <main>
  38:	0000006f          	j	38 <Entry+0x18>

0000003c <handler>:
  3c:	fa010113          	addi	sp,sp,-96
  40:	04112e23          	sw	ra,92(sp)
  44:	04512c23          	sw	t0,88(sp)
  48:	04612a23          	sw	t1,84(sp)
  4c:	04712823          	sw	t2,80(sp)
  50:	04812623          	sw	s0,76(sp)
  54:	04a12423          	sw	a0,72(sp)
  58:	04b12223          	sw	a1,68(sp)
  5c:	04c12023          	sw	a2,64(sp)
  60:	02d12e23          	sw	a3,60(sp)
  64:	02e12c23          	sw	a4,56(sp)
  68:	02f12a23          	sw	a5,52(sp)
  6c:	03012823          	sw	a6,48(sp)
  70:	03112623          	sw	a7,44(sp)
  74:	03c12423          	sw	t3,40(sp)
  78:	03d12223          	sw	t4,36(sp)
  7c:	03e12023          	sw	t5,32(sp)
  80:	01f12e23          	sw	t6,28(sp)
  84:	06010413          	addi	s0,sp,96
  88:	fac40793          	addi	a5,s0,-84
  8c:	00078593          	mv	a1,a5
  90:	a0000537          	lui	a0,0xa0000
  94:	10c000ef          	jal	1a0 <read>
  98:	fac42783          	lw	a5,-84(s0)
  9c:	0ff7f793          	zext.b	a5,a5
  a0:	faf42623          	sw	a5,-84(s0)
  a4:	fac42783          	lw	a5,-84(s0)
  a8:	00078593          	mv	a1,a5
  ac:	e0000537          	lui	a0,0xe0000
  b0:	0b0000ef          	jal	160 <write>
  b4:	fac42783          	lw	a5,-84(s0)
  b8:	00078513          	mv	a0,a5
  bc:	128000ef          	jal	1e4 <transform>
  c0:	00050793          	mv	a5,a0
  c4:	00078593          	mv	a1,a5
  c8:	b0000537          	lui	a0,0xb0000
  cc:	094000ef          	jal	160 <write>
  d0:	00000013          	nop
  d4:	05c12083          	lw	ra,92(sp)
  d8:	05812283          	lw	t0,88(sp)
  dc:	05412303          	lw	t1,84(sp)
  e0:	05012383          	lw	t2,80(sp)
  e4:	04c12403          	lw	s0,76(sp)
  e8:	04812503          	lw	a0,72(sp)
  ec:	04412583          	lw	a1,68(sp)
  f0:	04012603          	lw	a2,64(sp)
  f4:	03c12683          	lw	a3,60(sp)
  f8:	03812703          	lw	a4,56(sp)
  fc:	03412783          	lw	a5,52(sp)
 100:	03012803          	lw	a6,48(sp)
 104:	02c12883          	lw	a7,44(sp)
 108:	02812e03          	lw	t3,40(sp)
 10c:	02412e83          	lw	t4,36(sp)
 110:	02012f03          	lw	t5,32(sp)
 114:	01c12f83          	lw	t6,28(sp)
 118:	06010113          	addi	sp,sp,96
 11c:	30200073          	mret

00000120 <wait>:
 120:	fe010113          	addi	sp,sp,-32
 124:	00112e23          	sw	ra,28(sp)
 128:	00812c23          	sw	s0,24(sp)
 12c:	02010413          	addi	s0,sp,32
 130:	fea42623          	sw	a0,-20(s0)
 134:	00000013          	nop
 138:	fec42783          	lw	a5,-20(s0)
 13c:	fff78713          	addi	a4,a5,-1
 140:	fee42623          	sw	a4,-20(s0)
 144:	fe079ae3          	bnez	a5,138 <wait+0x18>
 148:	00000013          	nop
 14c:	00000013          	nop
 150:	01c12083          	lw	ra,28(sp)
 154:	01812403          	lw	s0,24(sp)
 158:	02010113          	addi	sp,sp,32
 15c:	00008067          	ret

00000160 <write>:
 160:	fd010113          	addi	sp,sp,-48
 164:	02112623          	sw	ra,44(sp)
 168:	02812423          	sw	s0,40(sp)
 16c:	03010413          	addi	s0,sp,48
 170:	fca42e23          	sw	a0,-36(s0)
 174:	fcb42c23          	sw	a1,-40(s0)
 178:	fdc42783          	lw	a5,-36(s0)
 17c:	fef42623          	sw	a5,-20(s0)
 180:	fec42783          	lw	a5,-20(s0)
 184:	fd842703          	lw	a4,-40(s0)
 188:	00e7a023          	sw	a4,0(a5)
 18c:	00000013          	nop
 190:	02c12083          	lw	ra,44(sp)
 194:	02812403          	lw	s0,40(sp)
 198:	03010113          	addi	sp,sp,48
 19c:	00008067          	ret

000001a0 <read>:
 1a0:	fd010113          	addi	sp,sp,-48
 1a4:	02112623          	sw	ra,44(sp)
 1a8:	02812423          	sw	s0,40(sp)
 1ac:	03010413          	addi	s0,sp,48
 1b0:	fca42e23          	sw	a0,-36(s0)
 1b4:	fcb42c23          	sw	a1,-40(s0)
 1b8:	fdc42783          	lw	a5,-36(s0)
 1bc:	fef42623          	sw	a5,-20(s0)
 1c0:	fec42783          	lw	a5,-20(s0)
 1c4:	0007a703          	lw	a4,0(a5)
 1c8:	fd842783          	lw	a5,-40(s0)
 1cc:	00e7a023          	sw	a4,0(a5)
 1d0:	00000013          	nop
 1d4:	02c12083          	lw	ra,44(sp)
 1d8:	02812403          	lw	s0,40(sp)
 1dc:	03010113          	addi	sp,sp,48
 1e0:	00008067          	ret

000001e4 <transform>:
 1e4:	fe010113          	addi	sp,sp,-32
 1e8:	00112e23          	sw	ra,28(sp)
 1ec:	00812c23          	sw	s0,24(sp)
 1f0:	02010413          	addi	s0,sp,32
 1f4:	fea42623          	sw	a0,-20(s0)
 1f8:	fec42703          	lw	a4,-20(s0)
 1fc:	0f000793          	li	a5,240
 200:	2ef70663          	beq	a4,a5,4ec <transform+0x308>
 204:	fec42703          	lw	a4,-20(s0)
 208:	0f000793          	li	a5,240
 20c:	2ee7c463          	blt	a5,a4,4f4 <transform+0x310>
 210:	fec42703          	lw	a4,-20(s0)
 214:	03c00793          	li	a5,60
 218:	2cf70463          	beq	a4,a5,4e0 <transform+0x2fc>
 21c:	fec42703          	lw	a4,-20(s0)
 220:	03c00793          	li	a5,60
 224:	2ce7c863          	blt	a5,a4,4f4 <transform+0x310>
 228:	fec42703          	lw	a4,-20(s0)
 22c:	03b00793          	li	a5,59
 230:	24f70e63          	beq	a4,a5,48c <transform+0x2a8>
 234:	fec42703          	lw	a4,-20(s0)
 238:	03b00793          	li	a5,59
 23c:	2ae7cc63          	blt	a5,a4,4f4 <transform+0x310>
 240:	fec42703          	lw	a4,-20(s0)
 244:	03a00793          	li	a5,58
 248:	1ef70863          	beq	a4,a5,438 <transform+0x254>
 24c:	fec42703          	lw	a4,-20(s0)
 250:	03a00793          	li	a5,58
 254:	2ae7c063          	blt	a5,a4,4f4 <transform+0x310>
 258:	fec42703          	lw	a4,-20(s0)
 25c:	03500793          	li	a5,53
 260:	26f70a63          	beq	a4,a5,4d4 <transform+0x2f0>
 264:	fec42703          	lw	a4,-20(s0)
 268:	03500793          	li	a5,53
 26c:	28e7c463          	blt	a5,a4,4f4 <transform+0x310>
 270:	fec42703          	lw	a4,-20(s0)
 274:	03400793          	li	a5,52
 278:	1ef70e63          	beq	a4,a5,474 <transform+0x290>
 27c:	fec42703          	lw	a4,-20(s0)
 280:	03400793          	li	a5,52
 284:	26e7c863          	blt	a5,a4,4f4 <transform+0x310>
 288:	fec42703          	lw	a4,-20(s0)
 28c:	03300793          	li	a5,51
 290:	1ef70863          	beq	a4,a5,480 <transform+0x29c>
 294:	fec42703          	lw	a4,-20(s0)
 298:	03300793          	li	a5,51
 29c:	24e7cc63          	blt	a5,a4,4f4 <transform+0x310>
 2a0:	fec42703          	lw	a4,-20(s0)
 2a4:	03200793          	li	a5,50
 2a8:	16f70c63          	beq	a4,a5,420 <transform+0x23c>
 2ac:	fec42703          	lw	a4,-20(s0)
 2b0:	03200793          	li	a5,50
 2b4:	24e7c063          	blt	a5,a4,4f4 <transform+0x310>
 2b8:	fec42703          	lw	a4,-20(s0)
 2bc:	03100793          	li	a5,49
 2c0:	16f70663          	beq	a4,a5,42c <transform+0x248>
 2c4:	fec42703          	lw	a4,-20(s0)
 2c8:	03100793          	li	a5,49
 2cc:	22e7c463          	blt	a5,a4,4f4 <transform+0x310>
 2d0:	fec42703          	lw	a4,-20(s0)
 2d4:	02d00793          	li	a5,45
 2d8:	1ef70263          	beq	a4,a5,4bc <transform+0x2d8>
 2dc:	fec42703          	lw	a4,-20(s0)
 2e0:	02d00793          	li	a5,45
 2e4:	20e7c863          	blt	a5,a4,4f4 <transform+0x310>
 2e8:	fec42703          	lw	a4,-20(s0)
 2ec:	02c00793          	li	a5,44
 2f0:	1cf70c63          	beq	a4,a5,4c8 <transform+0x2e4>
 2f4:	fec42703          	lw	a4,-20(s0)
 2f8:	02c00793          	li	a5,44
 2fc:	1ee7cc63          	blt	a5,a4,4f4 <transform+0x310>
 300:	fec42703          	lw	a4,-20(s0)
 304:	02b00793          	li	a5,43
 308:	16f70063          	beq	a4,a5,468 <transform+0x284>
 30c:	fec42703          	lw	a4,-20(s0)
 310:	02b00793          	li	a5,43
 314:	1ee7c063          	blt	a5,a4,4f4 <transform+0x310>
 318:	fec42703          	lw	a4,-20(s0)
 31c:	02a00793          	li	a5,42
 320:	0ef70a63          	beq	a4,a5,414 <transform+0x230>
 324:	fec42703          	lw	a4,-20(s0)
 328:	02a00793          	li	a5,42
 32c:	1ce7c463          	blt	a5,a4,4f4 <transform+0x310>
 330:	fec42703          	lw	a4,-20(s0)
 334:	02400793          	li	a5,36
 338:	16f70c63          	beq	a4,a5,4b0 <transform+0x2cc>
 33c:	fec42703          	lw	a4,-20(s0)
 340:	02400793          	li	a5,36
 344:	1ae7c863          	blt	a5,a4,4f4 <transform+0x310>
 348:	fec42703          	lw	a4,-20(s0)
 34c:	02300793          	li	a5,35
 350:	10f70663          	beq	a4,a5,45c <transform+0x278>
 354:	fec42703          	lw	a4,-20(s0)
 358:	02300793          	li	a5,35
 35c:	18e7cc63          	blt	a5,a4,4f4 <transform+0x310>
 360:	fec42703          	lw	a4,-20(s0)
 364:	02200793          	li	a5,34
 368:	08f70a63          	beq	a4,a5,3fc <transform+0x218>
 36c:	fec42703          	lw	a4,-20(s0)
 370:	02200793          	li	a5,34
 374:	18e7c063          	blt	a5,a4,4f4 <transform+0x310>
 378:	fec42703          	lw	a4,-20(s0)
 37c:	02100793          	li	a5,33
 380:	08f70463          	beq	a4,a5,408 <transform+0x224>
 384:	fec42703          	lw	a4,-20(s0)
 388:	02100793          	li	a5,33
 38c:	16e7c463          	blt	a5,a4,4f4 <transform+0x310>
 390:	fec42703          	lw	a4,-20(s0)
 394:	01d00793          	li	a5,29
 398:	10f70663          	beq	a4,a5,4a4 <transform+0x2c0>
 39c:	fec42703          	lw	a4,-20(s0)
 3a0:	01d00793          	li	a5,29
 3a4:	14e7c863          	blt	a5,a4,4f4 <transform+0x310>
 3a8:	fec42703          	lw	a4,-20(s0)
 3ac:	01c00793          	li	a5,28
 3b0:	08f70a63          	beq	a4,a5,444 <transform+0x260>
 3b4:	fec42703          	lw	a4,-20(s0)
 3b8:	01c00793          	li	a5,28
 3bc:	12e7cc63          	blt	a5,a4,4f4 <transform+0x310>
 3c0:	fec42703          	lw	a4,-20(s0)
 3c4:	01b00793          	li	a5,27
 3c8:	08f70463          	beq	a4,a5,450 <transform+0x26c>
 3cc:	fec42703          	lw	a4,-20(s0)
 3d0:	01b00793          	li	a5,27
 3d4:	12e7c063          	blt	a5,a4,4f4 <transform+0x310>
 3d8:	fec42703          	lw	a4,-20(s0)
 3dc:	01500793          	li	a5,21
 3e0:	0af70c63          	beq	a4,a5,498 <transform+0x2b4>
 3e4:	fec42703          	lw	a4,-20(s0)
 3e8:	01a00793          	li	a5,26
 3ec:	10f71463          	bne	a4,a5,4f4 <transform+0x310>
 3f0:	000bb7b7          	lui	a5,0xbb
 3f4:	a0478793          	addi	a5,a5,-1532 # baa04 <__global_pointer$+0xb89bc>
 3f8:	1000006f          	j	4f8 <transform+0x314>
 3fc:	000a67b7          	lui	a5,0xa6
 400:	44878793          	addi	a5,a5,1096 # a6448 <__global_pointer$+0xa4400>
 404:	0f40006f          	j	4f8 <transform+0x314>
 408:	000947b7          	lui	a5,0x94
 40c:	21678793          	addi	a5,a5,534 # 94216 <__global_pointer$+0x921ce>
 410:	0e80006f          	j	4f8 <transform+0x314>
 414:	0008c7b7          	lui	a5,0x8c
 418:	d1878793          	addi	a5,a5,-744 # 8bd18 <__global_pointer$+0x89cd0>
 41c:	0dc0006f          	j	4f8 <transform+0x314>
 420:	0007d7b7          	lui	a5,0x7d
 424:	90278793          	addi	a5,a5,-1790 # 7c902 <__global_pointer$+0x7a8ba>
 428:	0d00006f          	j	4f8 <transform+0x314>
 42c:	0006f7b7          	lui	a5,0x6f
 430:	f9178793          	addi	a5,a5,-111 # 6ef91 <__global_pointer$+0x6cf49>
 434:	0c40006f          	j	4f8 <transform+0x314>
 438:	000637b7          	lui	a5,0x63
 43c:	dda78793          	addi	a5,a5,-550 # 62dda <__global_pointer$+0x60d92>
 440:	0b80006f          	j	4f8 <transform+0x314>
 444:	0005d7b7          	lui	a5,0x5d
 448:	50278793          	addi	a5,a5,1282 # 5d502 <__global_pointer$+0x5b4ba>
 44c:	0ac0006f          	j	4f8 <transform+0x314>
 450:	000537b7          	lui	a5,0x53
 454:	22478793          	addi	a5,a5,548 # 53224 <__global_pointer$+0x511dc>
 458:	0a00006f          	j	4f8 <transform+0x314>
 45c:	0004a7b7          	lui	a5,0x4a
 460:	10b78793          	addi	a5,a5,267 # 4a10b <__global_pointer$+0x480c3>
 464:	0940006f          	j	4f8 <transform+0x314>
 468:	000467b7          	lui	a5,0x46
 46c:	e8c78793          	addi	a5,a5,-372 # 45e8c <__global_pointer$+0x43e44>
 470:	0880006f          	j	4f8 <transform+0x314>
 474:	0003e7b7          	lui	a5,0x3e
 478:	48178793          	addi	a5,a5,1153 # 3e481 <__global_pointer$+0x3c439>
 47c:	07c0006f          	j	4f8 <transform+0x314>
 480:	000377b7          	lui	a5,0x37
 484:	7c978793          	addi	a5,a5,1993 # 377c9 <__global_pointer$+0x35781>
 488:	0700006f          	j	4f8 <transform+0x314>
 48c:	000317b7          	lui	a5,0x31
 490:	6ed78793          	addi	a5,a5,1773 # 316ed <__global_pointer$+0x2f6a5>
 494:	0640006f          	j	4f8 <transform+0x314>
 498:	0002f7b7          	lui	a5,0x2f
 49c:	a8978793          	addi	a5,a5,-1399 # 2ea89 <__global_pointer$+0x2ca41>
 4a0:	0580006f          	j	4f8 <transform+0x314>
 4a4:	0002a7b7          	lui	a5,0x2a
 4a8:	91278793          	addi	a5,a5,-1774 # 29912 <__global_pointer$+0x278ca>
 4ac:	04c0006f          	j	4f8 <transform+0x314>
 4b0:	000257b7          	lui	a5,0x25
 4b4:	08678793          	addi	a5,a5,134 # 25086 <__global_pointer$+0x2303e>
 4b8:	0400006f          	j	4f8 <transform+0x314>
 4bc:	000237b7          	lui	a5,0x23
 4c0:	f4678793          	addi	a5,a5,-186 # 22f46 <__global_pointer$+0x20efe>
 4c4:	0340006f          	j	4f8 <transform+0x314>
 4c8:	0001f7b7          	lui	a5,0x1f
 4cc:	24178793          	addi	a5,a5,577 # 1f241 <__global_pointer$+0x1d1f9>
 4d0:	0280006f          	j	4f8 <transform+0x314>
 4d4:	0001c7b7          	lui	a5,0x1c
 4d8:	be478793          	addi	a5,a5,-1052 # 1bbe4 <__global_pointer$+0x19b9c>
 4dc:	01c0006f          	j	4f8 <transform+0x314>
 4e0:	000197b7          	lui	a5,0x19
 4e4:	b7778793          	addi	a5,a5,-1161 # 18b77 <__global_pointer$+0x16b2f>
 4e8:	0100006f          	j	4f8 <transform+0x314>
 4ec:	fff00793          	li	a5,-1
 4f0:	0080006f          	j	4f8 <transform+0x314>
 4f4:	00000793          	li	a5,0
 4f8:	00078513          	mv	a0,a5
 4fc:	01c12083          	lw	ra,28(sp)
 500:	01812403          	lw	s0,24(sp)
 504:	02010113          	addi	sp,sp,32
 508:	00008067          	ret

0000050c <displayAC>:
 50c:	f8010113          	addi	sp,sp,-128
 510:	06112e23          	sw	ra,124(sp)
 514:	06812c23          	sw	s0,120(sp)
 518:	08010413          	addi	s0,sp,128
 51c:	f8a42623          	sw	a0,-116(s0)
 520:	fe042623          	sw	zero,-20(s0)
 524:	0340006f          	j	558 <displayAC+0x4c>
 528:	fec42783          	lw	a5,-20(s0)
 52c:	00279693          	slli	a3,a5,0x2
 530:	f9c40713          	addi	a4,s0,-100
 534:	fec42783          	lw	a5,-20(s0)
 538:	00279793          	slli	a5,a5,0x2
 53c:	00f707b3          	add	a5,a4,a5
 540:	00078593          	mv	a1,a5
 544:	00068513          	mv	a0,a3
 548:	c59ff0ef          	jal	1a0 <read>
 54c:	fec42783          	lw	a5,-20(s0)
 550:	00178793          	addi	a5,a5,1
 554:	fef42623          	sw	a5,-20(s0)
 558:	fec42703          	lw	a4,-20(s0)
 55c:	00f00793          	li	a5,15
 560:	fce7d4e3          	bge	a5,a4,528 <displayAC+0x1c>
 564:	fe042423          	sw	zero,-24(s0)
 568:	0540006f          	j	5bc <displayAC+0xb0>
 56c:	f8c42783          	lw	a5,-116(s0)
 570:	02078063          	beqz	a5,590 <displayAC+0x84>
 574:	fe842703          	lw	a4,-24(s0)
 578:	f9c40793          	addi	a5,s0,-100
 57c:	00271713          	slli	a4,a4,0x2
 580:	00f707b3          	add	a5,a4,a5
 584:	0007a783          	lw	a5,0(a5)
 588:	fff7c793          	not	a5,a5
 58c:	0180006f          	j	5a4 <displayAC+0x98>
 590:	fe842703          	lw	a4,-24(s0)
 594:	f9c40793          	addi	a5,s0,-100
 598:	00271713          	slli	a4,a4,0x2
 59c:	00f707b3          	add	a5,a4,a5
 5a0:	0007a783          	lw	a5,0(a5)
 5a4:	00078593          	mv	a1,a5
 5a8:	e0000537          	lui	a0,0xe0000
 5ac:	bb5ff0ef          	jal	160 <write>
 5b0:	fe842783          	lw	a5,-24(s0)
 5b4:	00178793          	addi	a5,a5,1
 5b8:	fef42423          	sw	a5,-24(s0)
 5bc:	fe842703          	lw	a4,-24(s0)
 5c0:	00f00793          	li	a5,15
 5c4:	fae7d4e3          	bge	a5,a4,56c <displayAC+0x60>
 5c8:	fe042223          	sw	zero,-28(s0)
 5cc:	0940006f          	j	660 <displayAC+0x154>
 5d0:	fe442703          	lw	a4,-28(s0)
 5d4:	f9c40793          	addi	a5,s0,-100
 5d8:	00271713          	slli	a4,a4,0x2
 5dc:	00f707b3          	add	a5,a4,a5
 5e0:	0007a783          	lw	a5,0(a5)
 5e4:	0ff7f793          	zext.b	a5,a5
 5e8:	fef42023          	sw	a5,-32(s0)
 5ec:	fe442703          	lw	a4,-28(s0)
 5f0:	f9c40793          	addi	a5,s0,-100
 5f4:	00271713          	slli	a4,a4,0x2
 5f8:	00f707b3          	add	a5,a4,a5
 5fc:	0007a783          	lw	a5,0(a5)
 600:	0087d793          	srli	a5,a5,0x8
 604:	fcf42e23          	sw	a5,-36(s0)
 608:	fe042783          	lw	a5,-32(s0)
 60c:	01879713          	slli	a4,a5,0x18
 610:	fdc42783          	lw	a5,-36(s0)
 614:	00f76733          	or	a4,a4,a5
 618:	fe442683          	lw	a3,-28(s0)
 61c:	f9c40793          	addi	a5,s0,-100
 620:	00269693          	slli	a3,a3,0x2
 624:	00f687b3          	add	a5,a3,a5
 628:	00e7a023          	sw	a4,0(a5)
 62c:	fe442783          	lw	a5,-28(s0)
 630:	00279693          	slli	a3,a5,0x2
 634:	fe442703          	lw	a4,-28(s0)
 638:	f9c40793          	addi	a5,s0,-100
 63c:	00271713          	slli	a4,a4,0x2
 640:	00f707b3          	add	a5,a4,a5
 644:	0007a783          	lw	a5,0(a5)
 648:	00078593          	mv	a1,a5
 64c:	00068513          	mv	a0,a3
 650:	b11ff0ef          	jal	160 <write>
 654:	fe442783          	lw	a5,-28(s0)
 658:	00178793          	addi	a5,a5,1
 65c:	fef42223          	sw	a5,-28(s0)
 660:	fe442703          	lw	a4,-28(s0)
 664:	00f00793          	li	a5,15
 668:	f6e7d4e3          	bge	a5,a4,5d0 <displayAC+0xc4>
 66c:	00000013          	nop
 670:	00000013          	nop
 674:	07c12083          	lw	ra,124(sp)
 678:	07812403          	lw	s0,120(sp)
 67c:	08010113          	addi	sp,sp,128
 680:	00008067          	ret

00000684 <initialize>:
 684:	fa010113          	addi	sp,sp,-96
 688:	04112e23          	sw	ra,92(sp)
 68c:	04812c23          	sw	s0,88(sp)
 690:	06010413          	addi	s0,sp,96
 694:	00000593          	li	a1,0
 698:	e0000537          	lui	a0,0xe0000
 69c:	ac5ff0ef          	jal	160 <write>
 6a0:	000107b7          	lui	a5,0x10
 6a4:	fff78793          	addi	a5,a5,-1 # ffff <__global_pointer$+0xdfb7>
 6a8:	faf42623          	sw	a5,-84(s0)
 6ac:	0000f7b7          	lui	a5,0xf
 6b0:	fff78793          	addi	a5,a5,-1 # efff <__global_pointer$+0xcfb7>
 6b4:	faf42823          	sw	a5,-80(s0)
 6b8:	0000d7b7          	lui	a5,0xd
 6bc:	fff78793          	addi	a5,a5,-1 # cfff <__global_pointer$+0xafb7>
 6c0:	faf42a23          	sw	a5,-76(s0)
 6c4:	0000d7b7          	lui	a5,0xd
 6c8:	eff78793          	addi	a5,a5,-257 # ceff <__global_pointer$+0xaeb7>
 6cc:	faf42c23          	sw	a5,-72(s0)
 6d0:	0000d7b7          	lui	a5,0xd
 6d4:	cff78793          	addi	a5,a5,-769 # ccff <__global_pointer$+0xacb7>
 6d8:	faf42e23          	sw	a5,-68(s0)
 6dc:	000097b7          	lui	a5,0x9
 6e0:	cff78793          	addi	a5,a5,-769 # 8cff <__global_pointer$+0x6cb7>
 6e4:	fcf42023          	sw	a5,-64(s0)
 6e8:	000097b7          	lui	a5,0x9
 6ec:	8ff78793          	addi	a5,a5,-1793 # 88ff <__global_pointer$+0x68b7>
 6f0:	fcf42223          	sw	a5,-60(s0)
 6f4:	000097b7          	lui	a5,0x9
 6f8:	8fe78793          	addi	a5,a5,-1794 # 88fe <__global_pointer$+0x68b6>
 6fc:	fcf42423          	sw	a5,-56(s0)
 700:	000097b7          	lui	a5,0x9
 704:	8de78793          	addi	a5,a5,-1826 # 88de <__global_pointer$+0x6896>
 708:	fcf42623          	sw	a5,-52(s0)
 70c:	000097b7          	lui	a5,0x9
 710:	8ce78793          	addi	a5,a5,-1842 # 88ce <__global_pointer$+0x6886>
 714:	fcf42823          	sw	a5,-48(s0)
 718:	000097b7          	lui	a5,0x9
 71c:	8c678793          	addi	a5,a5,-1850 # 88c6 <__global_pointer$+0x687e>
 720:	fcf42a23          	sw	a5,-44(s0)
 724:	000107b7          	lui	a5,0x10
 728:	fff78793          	addi	a5,a5,-1 # ffff <__global_pointer$+0xdfb7>
 72c:	fcf42c23          	sw	a5,-40(s0)
 730:	000097b7          	lui	a5,0x9
 734:	8c678793          	addi	a5,a5,-1850 # 88c6 <__global_pointer$+0x687e>
 738:	fcf42e23          	sw	a5,-36(s0)
 73c:	000107b7          	lui	a5,0x10
 740:	fff78793          	addi	a5,a5,-1 # ffff <__global_pointer$+0xdfb7>
 744:	fef42023          	sw	a5,-32(s0)
 748:	000097b7          	lui	a5,0x9
 74c:	8c678793          	addi	a5,a5,-1850 # 88c6 <__global_pointer$+0x687e>
 750:	fef42223          	sw	a5,-28(s0)
 754:	7f7f87b7          	lui	a5,0x7f7f8
 758:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5f37>
 75c:	fef42423          	sw	a5,-24(s0)
 760:	fe042623          	sw	zero,-20(s0)
 764:	0380006f          	j	79c <initialize+0x118>
 768:	fec42783          	lw	a5,-20(s0)
 76c:	00279693          	slli	a3,a5,0x2
 770:	fec42703          	lw	a4,-20(s0)
 774:	fac40793          	addi	a5,s0,-84
 778:	00271713          	slli	a4,a4,0x2
 77c:	00f707b3          	add	a5,a4,a5
 780:	0007a783          	lw	a5,0(a5)
 784:	00078593          	mv	a1,a5
 788:	00068513          	mv	a0,a3
 78c:	9d5ff0ef          	jal	160 <write>
 790:	fec42783          	lw	a5,-20(s0)
 794:	00178793          	addi	a5,a5,1
 798:	fef42623          	sw	a5,-20(s0)
 79c:	fec42703          	lw	a4,-20(s0)
 7a0:	00f00793          	li	a5,15
 7a4:	fce7d2e3          	bge	a5,a4,768 <initialize+0xe4>
 7a8:	00000013          	nop
 7ac:	00000013          	nop
 7b0:	05c12083          	lw	ra,92(sp)
 7b4:	05812403          	lw	s0,88(sp)
 7b8:	06010113          	addi	sp,sp,96
 7bc:	00008067          	ret

000007c0 <main>:
 7c0:	fe010113          	addi	sp,sp,-32
 7c4:	00112e23          	sw	ra,28(sp)
 7c8:	00812c23          	sw	s0,24(sp)
 7cc:	02010413          	addi	s0,sp,32
 7d0:	fe042623          	sw	zero,-20(s0)
 7d4:	fec40793          	addi	a5,s0,-20
 7d8:	00078593          	mv	a1,a5
 7dc:	f0000537          	lui	a0,0xf0000
 7e0:	9c1ff0ef          	jal	1a0 <read>
 7e4:	fec42783          	lw	a5,-20(s0)
 7e8:	00279793          	slli	a5,a5,0x2
 7ec:	00078593          	mv	a1,a5
 7f0:	f0000537          	lui	a0,0xf0000
 7f4:	96dff0ef          	jal	160 <write>
 7f8:	fff00593          	li	a1,-1
 7fc:	e0000537          	lui	a0,0xe0000
 800:	961ff0ef          	jal	160 <write>
 804:	0300006f          	j	834 <main+0x74>
 808:	fec42783          	lw	a5,-20(s0)
 80c:	0017d793          	srli	a5,a5,0x1
 810:	0017f793          	andi	a5,a5,1
 814:	00078513          	mv	a0,a5
 818:	cf5ff0ef          	jal	50c <displayAC>
 81c:	00020537          	lui	a0,0x20
 820:	901ff0ef          	jal	120 <wait>
 824:	fec40793          	addi	a5,s0,-20
 828:	00078593          	mv	a1,a5
 82c:	f0000537          	lui	a0,0xf0000
 830:	971ff0ef          	jal	1a0 <read>
 834:	fec42703          	lw	a4,-20(s0)
 838:	000107b7          	lui	a5,0x10
 83c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xdeb8>
 840:	fcf704e3          	beq	a4,a5,808 <main+0x48>
 844:	f91ff06f          	j	7d4 <main+0x14>
