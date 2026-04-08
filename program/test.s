
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	798000ef          	jal	7cc <main>
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
  88:	fa042623          	sw	zero,-84(s0)
  8c:	fac40793          	addi	a5,s0,-84
  90:	00078593          	mv	a1,a5
  94:	a0000537          	lui	a0,0xa0000
  98:	10c000ef          	jal	1a4 <read>
  9c:	fac42783          	lw	a5,-84(s0)
  a0:	0ff7f793          	zext.b	a5,a5
  a4:	faf42623          	sw	a5,-84(s0)
  a8:	fac42783          	lw	a5,-84(s0)
  ac:	00078593          	mv	a1,a5
  b0:	e0000537          	lui	a0,0xe0000
  b4:	0b0000ef          	jal	164 <write>
  b8:	fac42783          	lw	a5,-84(s0)
  bc:	00078513          	mv	a0,a5
  c0:	128000ef          	jal	1e8 <transform>
  c4:	00050793          	mv	a5,a0
  c8:	00078593          	mv	a1,a5
  cc:	b0000537          	lui	a0,0xb0000
  d0:	094000ef          	jal	164 <write>
  d4:	00000013          	nop
  d8:	05c12083          	lw	ra,92(sp)
  dc:	05812283          	lw	t0,88(sp)
  e0:	05412303          	lw	t1,84(sp)
  e4:	05012383          	lw	t2,80(sp)
  e8:	04c12403          	lw	s0,76(sp)
  ec:	04812503          	lw	a0,72(sp)
  f0:	04412583          	lw	a1,68(sp)
  f4:	04012603          	lw	a2,64(sp)
  f8:	03c12683          	lw	a3,60(sp)
  fc:	03812703          	lw	a4,56(sp)
 100:	03412783          	lw	a5,52(sp)
 104:	03012803          	lw	a6,48(sp)
 108:	02c12883          	lw	a7,44(sp)
 10c:	02812e03          	lw	t3,40(sp)
 110:	02412e83          	lw	t4,36(sp)
 114:	02012f03          	lw	t5,32(sp)
 118:	01c12f83          	lw	t6,28(sp)
 11c:	06010113          	addi	sp,sp,96
 120:	30200073          	mret

00000124 <wait>:
 124:	fe010113          	addi	sp,sp,-32
 128:	00112e23          	sw	ra,28(sp)
 12c:	00812c23          	sw	s0,24(sp)
 130:	02010413          	addi	s0,sp,32
 134:	fea42623          	sw	a0,-20(s0)
 138:	00000013          	nop
 13c:	fec42783          	lw	a5,-20(s0)
 140:	fff78713          	addi	a4,a5,-1
 144:	fee42623          	sw	a4,-20(s0)
 148:	fe079ae3          	bnez	a5,13c <wait+0x18>
 14c:	00000013          	nop
 150:	00000013          	nop
 154:	01c12083          	lw	ra,28(sp)
 158:	01812403          	lw	s0,24(sp)
 15c:	02010113          	addi	sp,sp,32
 160:	00008067          	ret

00000164 <write>:
 164:	fd010113          	addi	sp,sp,-48
 168:	02112623          	sw	ra,44(sp)
 16c:	02812423          	sw	s0,40(sp)
 170:	03010413          	addi	s0,sp,48
 174:	fca42e23          	sw	a0,-36(s0)
 178:	fcb42c23          	sw	a1,-40(s0)
 17c:	fdc42783          	lw	a5,-36(s0)
 180:	fef42623          	sw	a5,-20(s0)
 184:	fec42783          	lw	a5,-20(s0)
 188:	fd842703          	lw	a4,-40(s0)
 18c:	00e7a023          	sw	a4,0(a5)
 190:	00000013          	nop
 194:	02c12083          	lw	ra,44(sp)
 198:	02812403          	lw	s0,40(sp)
 19c:	03010113          	addi	sp,sp,48
 1a0:	00008067          	ret

000001a4 <read>:
 1a4:	fd010113          	addi	sp,sp,-48
 1a8:	02112623          	sw	ra,44(sp)
 1ac:	02812423          	sw	s0,40(sp)
 1b0:	03010413          	addi	s0,sp,48
 1b4:	fca42e23          	sw	a0,-36(s0)
 1b8:	fcb42c23          	sw	a1,-40(s0)
 1bc:	fdc42783          	lw	a5,-36(s0)
 1c0:	fef42623          	sw	a5,-20(s0)
 1c4:	fec42783          	lw	a5,-20(s0)
 1c8:	0007a703          	lw	a4,0(a5)
 1cc:	fd842783          	lw	a5,-40(s0)
 1d0:	00e7a023          	sw	a4,0(a5)
 1d4:	00000013          	nop
 1d8:	02c12083          	lw	ra,44(sp)
 1dc:	02812403          	lw	s0,40(sp)
 1e0:	03010113          	addi	sp,sp,48
 1e4:	00008067          	ret

000001e8 <transform>:
 1e8:	fe010113          	addi	sp,sp,-32
 1ec:	00112e23          	sw	ra,28(sp)
 1f0:	00812c23          	sw	s0,24(sp)
 1f4:	02010413          	addi	s0,sp,32
 1f8:	fea42623          	sw	a0,-20(s0)
 1fc:	fec42703          	lw	a4,-20(s0)
 200:	0f000793          	li	a5,240
 204:	2ef70663          	beq	a4,a5,4f0 <transform+0x308>
 208:	fec42703          	lw	a4,-20(s0)
 20c:	0f000793          	li	a5,240
 210:	2ee7c463          	blt	a5,a4,4f8 <transform+0x310>
 214:	fec42703          	lw	a4,-20(s0)
 218:	03c00793          	li	a5,60
 21c:	2cf70463          	beq	a4,a5,4e4 <transform+0x2fc>
 220:	fec42703          	lw	a4,-20(s0)
 224:	03c00793          	li	a5,60
 228:	2ce7c863          	blt	a5,a4,4f8 <transform+0x310>
 22c:	fec42703          	lw	a4,-20(s0)
 230:	03b00793          	li	a5,59
 234:	24f70e63          	beq	a4,a5,490 <transform+0x2a8>
 238:	fec42703          	lw	a4,-20(s0)
 23c:	03b00793          	li	a5,59
 240:	2ae7cc63          	blt	a5,a4,4f8 <transform+0x310>
 244:	fec42703          	lw	a4,-20(s0)
 248:	03a00793          	li	a5,58
 24c:	1ef70863          	beq	a4,a5,43c <transform+0x254>
 250:	fec42703          	lw	a4,-20(s0)
 254:	03a00793          	li	a5,58
 258:	2ae7c063          	blt	a5,a4,4f8 <transform+0x310>
 25c:	fec42703          	lw	a4,-20(s0)
 260:	03500793          	li	a5,53
 264:	26f70a63          	beq	a4,a5,4d8 <transform+0x2f0>
 268:	fec42703          	lw	a4,-20(s0)
 26c:	03500793          	li	a5,53
 270:	28e7c463          	blt	a5,a4,4f8 <transform+0x310>
 274:	fec42703          	lw	a4,-20(s0)
 278:	03400793          	li	a5,52
 27c:	1ef70e63          	beq	a4,a5,478 <transform+0x290>
 280:	fec42703          	lw	a4,-20(s0)
 284:	03400793          	li	a5,52
 288:	26e7c863          	blt	a5,a4,4f8 <transform+0x310>
 28c:	fec42703          	lw	a4,-20(s0)
 290:	03300793          	li	a5,51
 294:	1ef70863          	beq	a4,a5,484 <transform+0x29c>
 298:	fec42703          	lw	a4,-20(s0)
 29c:	03300793          	li	a5,51
 2a0:	24e7cc63          	blt	a5,a4,4f8 <transform+0x310>
 2a4:	fec42703          	lw	a4,-20(s0)
 2a8:	03200793          	li	a5,50
 2ac:	16f70c63          	beq	a4,a5,424 <transform+0x23c>
 2b0:	fec42703          	lw	a4,-20(s0)
 2b4:	03200793          	li	a5,50
 2b8:	24e7c063          	blt	a5,a4,4f8 <transform+0x310>
 2bc:	fec42703          	lw	a4,-20(s0)
 2c0:	03100793          	li	a5,49
 2c4:	16f70663          	beq	a4,a5,430 <transform+0x248>
 2c8:	fec42703          	lw	a4,-20(s0)
 2cc:	03100793          	li	a5,49
 2d0:	22e7c463          	blt	a5,a4,4f8 <transform+0x310>
 2d4:	fec42703          	lw	a4,-20(s0)
 2d8:	02d00793          	li	a5,45
 2dc:	1ef70263          	beq	a4,a5,4c0 <transform+0x2d8>
 2e0:	fec42703          	lw	a4,-20(s0)
 2e4:	02d00793          	li	a5,45
 2e8:	20e7c863          	blt	a5,a4,4f8 <transform+0x310>
 2ec:	fec42703          	lw	a4,-20(s0)
 2f0:	02c00793          	li	a5,44
 2f4:	1cf70c63          	beq	a4,a5,4cc <transform+0x2e4>
 2f8:	fec42703          	lw	a4,-20(s0)
 2fc:	02c00793          	li	a5,44
 300:	1ee7cc63          	blt	a5,a4,4f8 <transform+0x310>
 304:	fec42703          	lw	a4,-20(s0)
 308:	02b00793          	li	a5,43
 30c:	16f70063          	beq	a4,a5,46c <transform+0x284>
 310:	fec42703          	lw	a4,-20(s0)
 314:	02b00793          	li	a5,43
 318:	1ee7c063          	blt	a5,a4,4f8 <transform+0x310>
 31c:	fec42703          	lw	a4,-20(s0)
 320:	02a00793          	li	a5,42
 324:	0ef70a63          	beq	a4,a5,418 <transform+0x230>
 328:	fec42703          	lw	a4,-20(s0)
 32c:	02a00793          	li	a5,42
 330:	1ce7c463          	blt	a5,a4,4f8 <transform+0x310>
 334:	fec42703          	lw	a4,-20(s0)
 338:	02400793          	li	a5,36
 33c:	16f70c63          	beq	a4,a5,4b4 <transform+0x2cc>
 340:	fec42703          	lw	a4,-20(s0)
 344:	02400793          	li	a5,36
 348:	1ae7c863          	blt	a5,a4,4f8 <transform+0x310>
 34c:	fec42703          	lw	a4,-20(s0)
 350:	02300793          	li	a5,35
 354:	10f70663          	beq	a4,a5,460 <transform+0x278>
 358:	fec42703          	lw	a4,-20(s0)
 35c:	02300793          	li	a5,35
 360:	18e7cc63          	blt	a5,a4,4f8 <transform+0x310>
 364:	fec42703          	lw	a4,-20(s0)
 368:	02200793          	li	a5,34
 36c:	08f70a63          	beq	a4,a5,400 <transform+0x218>
 370:	fec42703          	lw	a4,-20(s0)
 374:	02200793          	li	a5,34
 378:	18e7c063          	blt	a5,a4,4f8 <transform+0x310>
 37c:	fec42703          	lw	a4,-20(s0)
 380:	02100793          	li	a5,33
 384:	08f70463          	beq	a4,a5,40c <transform+0x224>
 388:	fec42703          	lw	a4,-20(s0)
 38c:	02100793          	li	a5,33
 390:	16e7c463          	blt	a5,a4,4f8 <transform+0x310>
 394:	fec42703          	lw	a4,-20(s0)
 398:	01d00793          	li	a5,29
 39c:	10f70663          	beq	a4,a5,4a8 <transform+0x2c0>
 3a0:	fec42703          	lw	a4,-20(s0)
 3a4:	01d00793          	li	a5,29
 3a8:	14e7c863          	blt	a5,a4,4f8 <transform+0x310>
 3ac:	fec42703          	lw	a4,-20(s0)
 3b0:	01c00793          	li	a5,28
 3b4:	08f70a63          	beq	a4,a5,448 <transform+0x260>
 3b8:	fec42703          	lw	a4,-20(s0)
 3bc:	01c00793          	li	a5,28
 3c0:	12e7cc63          	blt	a5,a4,4f8 <transform+0x310>
 3c4:	fec42703          	lw	a4,-20(s0)
 3c8:	01b00793          	li	a5,27
 3cc:	08f70463          	beq	a4,a5,454 <transform+0x26c>
 3d0:	fec42703          	lw	a4,-20(s0)
 3d4:	01b00793          	li	a5,27
 3d8:	12e7c063          	blt	a5,a4,4f8 <transform+0x310>
 3dc:	fec42703          	lw	a4,-20(s0)
 3e0:	01500793          	li	a5,21
 3e4:	0af70c63          	beq	a4,a5,49c <transform+0x2b4>
 3e8:	fec42703          	lw	a4,-20(s0)
 3ec:	01a00793          	li	a5,26
 3f0:	10f71463          	bne	a4,a5,4f8 <transform+0x310>
 3f4:	000bb7b7          	lui	a5,0xbb
 3f8:	a0478793          	addi	a5,a5,-1532 # baa04 <__global_pointer$+0xb89a0>
 3fc:	1000006f          	j	4fc <transform+0x314>
 400:	000a67b7          	lui	a5,0xa6
 404:	44878793          	addi	a5,a5,1096 # a6448 <__global_pointer$+0xa43e4>
 408:	0f40006f          	j	4fc <transform+0x314>
 40c:	000947b7          	lui	a5,0x94
 410:	21678793          	addi	a5,a5,534 # 94216 <__global_pointer$+0x921b2>
 414:	0e80006f          	j	4fc <transform+0x314>
 418:	0008c7b7          	lui	a5,0x8c
 41c:	d1878793          	addi	a5,a5,-744 # 8bd18 <__global_pointer$+0x89cb4>
 420:	0dc0006f          	j	4fc <transform+0x314>
 424:	0007d7b7          	lui	a5,0x7d
 428:	90278793          	addi	a5,a5,-1790 # 7c902 <__global_pointer$+0x7a89e>
 42c:	0d00006f          	j	4fc <transform+0x314>
 430:	0006f7b7          	lui	a5,0x6f
 434:	f9178793          	addi	a5,a5,-111 # 6ef91 <__global_pointer$+0x6cf2d>
 438:	0c40006f          	j	4fc <transform+0x314>
 43c:	000637b7          	lui	a5,0x63
 440:	dda78793          	addi	a5,a5,-550 # 62dda <__global_pointer$+0x60d76>
 444:	0b80006f          	j	4fc <transform+0x314>
 448:	0005d7b7          	lui	a5,0x5d
 44c:	50278793          	addi	a5,a5,1282 # 5d502 <__global_pointer$+0x5b49e>
 450:	0ac0006f          	j	4fc <transform+0x314>
 454:	000537b7          	lui	a5,0x53
 458:	22478793          	addi	a5,a5,548 # 53224 <__global_pointer$+0x511c0>
 45c:	0a00006f          	j	4fc <transform+0x314>
 460:	0004a7b7          	lui	a5,0x4a
 464:	10b78793          	addi	a5,a5,267 # 4a10b <__global_pointer$+0x480a7>
 468:	0940006f          	j	4fc <transform+0x314>
 46c:	000467b7          	lui	a5,0x46
 470:	e8c78793          	addi	a5,a5,-372 # 45e8c <__global_pointer$+0x43e28>
 474:	0880006f          	j	4fc <transform+0x314>
 478:	0003e7b7          	lui	a5,0x3e
 47c:	48178793          	addi	a5,a5,1153 # 3e481 <__global_pointer$+0x3c41d>
 480:	07c0006f          	j	4fc <transform+0x314>
 484:	000377b7          	lui	a5,0x37
 488:	7c978793          	addi	a5,a5,1993 # 377c9 <__global_pointer$+0x35765>
 48c:	0700006f          	j	4fc <transform+0x314>
 490:	000317b7          	lui	a5,0x31
 494:	6ed78793          	addi	a5,a5,1773 # 316ed <__global_pointer$+0x2f689>
 498:	0640006f          	j	4fc <transform+0x314>
 49c:	0002f7b7          	lui	a5,0x2f
 4a0:	a8978793          	addi	a5,a5,-1399 # 2ea89 <__global_pointer$+0x2ca25>
 4a4:	0580006f          	j	4fc <transform+0x314>
 4a8:	0002a7b7          	lui	a5,0x2a
 4ac:	91278793          	addi	a5,a5,-1774 # 29912 <__global_pointer$+0x278ae>
 4b0:	04c0006f          	j	4fc <transform+0x314>
 4b4:	000257b7          	lui	a5,0x25
 4b8:	08678793          	addi	a5,a5,134 # 25086 <__global_pointer$+0x23022>
 4bc:	0400006f          	j	4fc <transform+0x314>
 4c0:	000237b7          	lui	a5,0x23
 4c4:	f4678793          	addi	a5,a5,-186 # 22f46 <__global_pointer$+0x20ee2>
 4c8:	0340006f          	j	4fc <transform+0x314>
 4cc:	0001f7b7          	lui	a5,0x1f
 4d0:	24178793          	addi	a5,a5,577 # 1f241 <__global_pointer$+0x1d1dd>
 4d4:	0280006f          	j	4fc <transform+0x314>
 4d8:	0001c7b7          	lui	a5,0x1c
 4dc:	be478793          	addi	a5,a5,-1052 # 1bbe4 <__global_pointer$+0x19b80>
 4e0:	01c0006f          	j	4fc <transform+0x314>
 4e4:	000197b7          	lui	a5,0x19
 4e8:	b7778793          	addi	a5,a5,-1161 # 18b77 <__global_pointer$+0x16b13>
 4ec:	0100006f          	j	4fc <transform+0x314>
 4f0:	fff00793          	li	a5,-1
 4f4:	0080006f          	j	4fc <transform+0x314>
 4f8:	00000793          	li	a5,0
 4fc:	00078513          	mv	a0,a5
 500:	01c12083          	lw	ra,28(sp)
 504:	01812403          	lw	s0,24(sp)
 508:	02010113          	addi	sp,sp,32
 50c:	00008067          	ret

00000510 <displayAC>:
 510:	f8010113          	addi	sp,sp,-128
 514:	06112e23          	sw	ra,124(sp)
 518:	06812c23          	sw	s0,120(sp)
 51c:	08010413          	addi	s0,sp,128
 520:	f8a42623          	sw	a0,-116(s0)
 524:	fe042623          	sw	zero,-20(s0)
 528:	0380006f          	j	560 <displayAC+0x50>
 52c:	fec42783          	lw	a5,-20(s0)
 530:	00279793          	slli	a5,a5,0x2
 534:	10078693          	addi	a3,a5,256
 538:	f9c40713          	addi	a4,s0,-100
 53c:	fec42783          	lw	a5,-20(s0)
 540:	00279793          	slli	a5,a5,0x2
 544:	00f707b3          	add	a5,a4,a5
 548:	00078593          	mv	a1,a5
 54c:	00068513          	mv	a0,a3
 550:	c55ff0ef          	jal	1a4 <read>
 554:	fec42783          	lw	a5,-20(s0)
 558:	00178793          	addi	a5,a5,1
 55c:	fef42623          	sw	a5,-20(s0)
 560:	fec42703          	lw	a4,-20(s0)
 564:	00f00793          	li	a5,15
 568:	fce7d2e3          	bge	a5,a4,52c <displayAC+0x1c>
 56c:	fe042423          	sw	zero,-24(s0)
 570:	0600006f          	j	5d0 <displayAC+0xc0>
 574:	f8c42783          	lw	a5,-116(s0)
 578:	00078e63          	beqz	a5,594 <displayAC+0x84>
 57c:	fe842703          	lw	a4,-24(s0)
 580:	f9c40793          	addi	a5,s0,-100
 584:	00271713          	slli	a4,a4,0x2
 588:	00f707b3          	add	a5,a4,a5
 58c:	0007a783          	lw	a5,0(a5)
 590:	01c0006f          	j	5ac <displayAC+0x9c>
 594:	fe842703          	lw	a4,-24(s0)
 598:	f9c40793          	addi	a5,s0,-100
 59c:	00271713          	slli	a4,a4,0x2
 5a0:	00f707b3          	add	a5,a4,a5
 5a4:	0007a783          	lw	a5,0(a5)
 5a8:	fff7c793          	not	a5,a5
 5ac:	00078593          	mv	a1,a5
 5b0:	e0000537          	lui	a0,0xe0000
 5b4:	bb1ff0ef          	jal	164 <write>
 5b8:	0007a7b7          	lui	a5,0x7a
 5bc:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x780bc>
 5c0:	b65ff0ef          	jal	124 <wait>
 5c4:	fe842783          	lw	a5,-24(s0)
 5c8:	00178793          	addi	a5,a5,1
 5cc:	fef42423          	sw	a5,-24(s0)
 5d0:	fe842703          	lw	a4,-24(s0)
 5d4:	00f00793          	li	a5,15
 5d8:	f8e7dee3          	bge	a5,a4,574 <displayAC+0x64>
 5dc:	fe042223          	sw	zero,-28(s0)
 5e0:	0980006f          	j	678 <displayAC+0x168>
 5e4:	fe442703          	lw	a4,-28(s0)
 5e8:	f9c40793          	addi	a5,s0,-100
 5ec:	00271713          	slli	a4,a4,0x2
 5f0:	00f707b3          	add	a5,a4,a5
 5f4:	0007a783          	lw	a5,0(a5)
 5f8:	0ff7f793          	zext.b	a5,a5
 5fc:	fef42023          	sw	a5,-32(s0)
 600:	fe442703          	lw	a4,-28(s0)
 604:	f9c40793          	addi	a5,s0,-100
 608:	00271713          	slli	a4,a4,0x2
 60c:	00f707b3          	add	a5,a4,a5
 610:	0007a783          	lw	a5,0(a5)
 614:	0087d793          	srli	a5,a5,0x8
 618:	fcf42e23          	sw	a5,-36(s0)
 61c:	fe042783          	lw	a5,-32(s0)
 620:	01879713          	slli	a4,a5,0x18
 624:	fdc42783          	lw	a5,-36(s0)
 628:	00f76733          	or	a4,a4,a5
 62c:	fe442683          	lw	a3,-28(s0)
 630:	f9c40793          	addi	a5,s0,-100
 634:	00269693          	slli	a3,a3,0x2
 638:	00f687b3          	add	a5,a3,a5
 63c:	00e7a023          	sw	a4,0(a5)
 640:	fe442783          	lw	a5,-28(s0)
 644:	00279793          	slli	a5,a5,0x2
 648:	10078693          	addi	a3,a5,256
 64c:	fe442703          	lw	a4,-28(s0)
 650:	f9c40793          	addi	a5,s0,-100
 654:	00271713          	slli	a4,a4,0x2
 658:	00f707b3          	add	a5,a4,a5
 65c:	0007a783          	lw	a5,0(a5)
 660:	00078593          	mv	a1,a5
 664:	00068513          	mv	a0,a3
 668:	afdff0ef          	jal	164 <write>
 66c:	fe442783          	lw	a5,-28(s0)
 670:	00178793          	addi	a5,a5,1
 674:	fef42223          	sw	a5,-28(s0)
 678:	fe442703          	lw	a4,-28(s0)
 67c:	00f00793          	li	a5,15
 680:	f6e7d2e3          	bge	a5,a4,5e4 <displayAC+0xd4>
 684:	00000013          	nop
 688:	00000013          	nop
 68c:	07c12083          	lw	ra,124(sp)
 690:	07812403          	lw	s0,120(sp)
 694:	08010113          	addi	sp,sp,128
 698:	00008067          	ret

0000069c <initialize>:
 69c:	fa010113          	addi	sp,sp,-96
 6a0:	04112e23          	sw	ra,92(sp)
 6a4:	04812c23          	sw	s0,88(sp)
 6a8:	06010413          	addi	s0,sp,96
 6ac:	fff00793          	li	a5,-1
 6b0:	faf42623          	sw	a5,-84(s0)
 6b4:	fffff7b7          	lui	a5,0xfffff
 6b8:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffcf9b>
 6bc:	faf42823          	sw	a5,-80(s0)
 6c0:	ffffd7b7          	lui	a5,0xffffd
 6c4:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffaf9b>
 6c8:	faf42a23          	sw	a5,-76(s0)
 6cc:	ffffd7b7          	lui	a5,0xffffd
 6d0:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffae9b>
 6d4:	faf42c23          	sw	a5,-72(s0)
 6d8:	ffffd7b7          	lui	a5,0xffffd
 6dc:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffac9b>
 6e0:	faf42e23          	sw	a5,-68(s0)
 6e4:	ffff97b7          	lui	a5,0xffff9
 6e8:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6c9b>
 6ec:	fcf42023          	sw	a5,-64(s0)
 6f0:	ffff97b7          	lui	a5,0xffff9
 6f4:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff689b>
 6f8:	fcf42223          	sw	a5,-60(s0)
 6fc:	ffff97b7          	lui	a5,0xffff9
 700:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff689a>
 704:	fcf42423          	sw	a5,-56(s0)
 708:	ffff97b7          	lui	a5,0xffff9
 70c:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff687a>
 710:	fcf42623          	sw	a5,-52(s0)
 714:	ffff97b7          	lui	a5,0xffff9
 718:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff686a>
 71c:	fcf42823          	sw	a5,-48(s0)
 720:	ffff97b7          	lui	a5,0xffff9
 724:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6862>
 728:	fcf42a23          	sw	a5,-44(s0)
 72c:	fff00793          	li	a5,-1
 730:	fcf42c23          	sw	a5,-40(s0)
 734:	ffff97b7          	lui	a5,0xffff9
 738:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6862>
 73c:	fcf42e23          	sw	a5,-36(s0)
 740:	fff00793          	li	a5,-1
 744:	fef42023          	sw	a5,-32(s0)
 748:	ffff97b7          	lui	a5,0xffff9
 74c:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6862>
 750:	fef42223          	sw	a5,-28(s0)
 754:	7f7f87b7          	lui	a5,0x7f7f8
 758:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5f1b>
 75c:	fef42423          	sw	a5,-24(s0)
 760:	fe042623          	sw	zero,-20(s0)
 764:	03c0006f          	j	7a0 <initialize+0x104>
 768:	fec42783          	lw	a5,-20(s0)
 76c:	00279793          	slli	a5,a5,0x2
 770:	10078693          	addi	a3,a5,256
 774:	fec42703          	lw	a4,-20(s0)
 778:	fac40793          	addi	a5,s0,-84
 77c:	00271713          	slli	a4,a4,0x2
 780:	00f707b3          	add	a5,a4,a5
 784:	0007a783          	lw	a5,0(a5)
 788:	00078593          	mv	a1,a5
 78c:	00068513          	mv	a0,a3
 790:	9d5ff0ef          	jal	164 <write>
 794:	fec42783          	lw	a5,-20(s0)
 798:	00178793          	addi	a5,a5,1
 79c:	fef42623          	sw	a5,-20(s0)
 7a0:	fec42703          	lw	a4,-20(s0)
 7a4:	00f00793          	li	a5,15
 7a8:	fce7d0e3          	bge	a5,a4,768 <initialize+0xcc>
 7ac:	fff00593          	li	a1,-1
 7b0:	e0000537          	lui	a0,0xe0000
 7b4:	9b1ff0ef          	jal	164 <write>
 7b8:	00000013          	nop
 7bc:	05c12083          	lw	ra,92(sp)
 7c0:	05812403          	lw	s0,88(sp)
 7c4:	06010113          	addi	sp,sp,96
 7c8:	00008067          	ret

000007cc <main>:
 7cc:	fe010113          	addi	sp,sp,-32
 7d0:	00112e23          	sw	ra,28(sp)
 7d4:	00812c23          	sw	s0,24(sp)
 7d8:	02010413          	addi	s0,sp,32
 7dc:	fe042623          	sw	zero,-20(s0)
 7e0:	ebdff0ef          	jal	69c <initialize>
 7e4:	fec40793          	addi	a5,s0,-20
 7e8:	00078593          	mv	a1,a5
 7ec:	f0000537          	lui	a0,0xf0000
 7f0:	9b5ff0ef          	jal	1a4 <read>
 7f4:	fec42783          	lw	a5,-20(s0)
 7f8:	00279793          	slli	a5,a5,0x2
 7fc:	00078593          	mv	a1,a5
 800:	f0000537          	lui	a0,0xf0000
 804:	961ff0ef          	jal	164 <write>
 808:	03c0006f          	j	844 <main+0x78>
 80c:	fec40793          	addi	a5,s0,-20
 810:	00078593          	mv	a1,a5
 814:	f0000537          	lui	a0,0xf0000
 818:	98dff0ef          	jal	1a4 <read>
 81c:	fec42783          	lw	a5,-20(s0)
 820:	00279793          	slli	a5,a5,0x2
 824:	00078593          	mv	a1,a5
 828:	f0000537          	lui	a0,0xf0000
 82c:	939ff0ef          	jal	164 <write>
 830:	fec42783          	lw	a5,-20(s0)
 834:	0017d793          	srli	a5,a5,0x1
 838:	0017f793          	andi	a5,a5,1
 83c:	00078513          	mv	a0,a5
 840:	cd1ff0ef          	jal	510 <displayAC>
 844:	fec42703          	lw	a4,-20(s0)
 848:	000107b7          	lui	a5,0x10
 84c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xde9c>
 850:	00f77733          	and	a4,a4,a5
 854:	000107b7          	lui	a5,0x10
 858:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xde9c>
 85c:	faf708e3          	beq	a4,a5,80c <main+0x40>
 860:	f85ff06f          	j	7e4 <main+0x18>
