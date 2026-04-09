
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	7a8000ef          	jal	7dc <main>
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
  98:	118000ef          	jal	1b0 <read>
  9c:	fac42783          	lw	a5,-84(s0)
  a0:	0ff7f793          	zext.b	a5,a5
  a4:	faf42623          	sw	a5,-84(s0)
  a8:	fac42783          	lw	a5,-84(s0)
  ac:	00078593          	mv	a1,a5
  b0:	e0000537          	lui	a0,0xe0000
  b4:	0bc000ef          	jal	170 <write>
  b8:	fff00593          	li	a1,-1
  bc:	b0000537          	lui	a0,0xb0000
  c0:	0b0000ef          	jal	170 <write>
  c4:	fac42783          	lw	a5,-84(s0)
  c8:	00078513          	mv	a0,a5
  cc:	128000ef          	jal	1f4 <transform>
  d0:	00050793          	mv	a5,a0
  d4:	00078593          	mv	a1,a5
  d8:	b0000537          	lui	a0,0xb0000
  dc:	094000ef          	jal	170 <write>
  e0:	00000013          	nop
  e4:	05c12083          	lw	ra,92(sp)
  e8:	05812283          	lw	t0,88(sp)
  ec:	05412303          	lw	t1,84(sp)
  f0:	05012383          	lw	t2,80(sp)
  f4:	04c12403          	lw	s0,76(sp)
  f8:	04812503          	lw	a0,72(sp)
  fc:	04412583          	lw	a1,68(sp)
 100:	04012603          	lw	a2,64(sp)
 104:	03c12683          	lw	a3,60(sp)
 108:	03812703          	lw	a4,56(sp)
 10c:	03412783          	lw	a5,52(sp)
 110:	03012803          	lw	a6,48(sp)
 114:	02c12883          	lw	a7,44(sp)
 118:	02812e03          	lw	t3,40(sp)
 11c:	02412e83          	lw	t4,36(sp)
 120:	02012f03          	lw	t5,32(sp)
 124:	01c12f83          	lw	t6,28(sp)
 128:	06010113          	addi	sp,sp,96
 12c:	30200073          	mret

00000130 <wait>:
 130:	fe010113          	addi	sp,sp,-32
 134:	00112e23          	sw	ra,28(sp)
 138:	00812c23          	sw	s0,24(sp)
 13c:	02010413          	addi	s0,sp,32
 140:	fea42623          	sw	a0,-20(s0)
 144:	00000013          	nop
 148:	fec42783          	lw	a5,-20(s0)
 14c:	fff78713          	addi	a4,a5,-1
 150:	fee42623          	sw	a4,-20(s0)
 154:	fe079ae3          	bnez	a5,148 <wait+0x18>
 158:	00000013          	nop
 15c:	00000013          	nop
 160:	01c12083          	lw	ra,28(sp)
 164:	01812403          	lw	s0,24(sp)
 168:	02010113          	addi	sp,sp,32
 16c:	00008067          	ret

00000170 <write>:
 170:	fd010113          	addi	sp,sp,-48
 174:	02112623          	sw	ra,44(sp)
 178:	02812423          	sw	s0,40(sp)
 17c:	03010413          	addi	s0,sp,48
 180:	fca42e23          	sw	a0,-36(s0)
 184:	fcb42c23          	sw	a1,-40(s0)
 188:	fdc42783          	lw	a5,-36(s0)
 18c:	fef42623          	sw	a5,-20(s0)
 190:	fec42783          	lw	a5,-20(s0)
 194:	fd842703          	lw	a4,-40(s0)
 198:	00e7a023          	sw	a4,0(a5)
 19c:	00000013          	nop
 1a0:	02c12083          	lw	ra,44(sp)
 1a4:	02812403          	lw	s0,40(sp)
 1a8:	03010113          	addi	sp,sp,48
 1ac:	00008067          	ret

000001b0 <read>:
 1b0:	fd010113          	addi	sp,sp,-48
 1b4:	02112623          	sw	ra,44(sp)
 1b8:	02812423          	sw	s0,40(sp)
 1bc:	03010413          	addi	s0,sp,48
 1c0:	fca42e23          	sw	a0,-36(s0)
 1c4:	fcb42c23          	sw	a1,-40(s0)
 1c8:	fdc42783          	lw	a5,-36(s0)
 1cc:	fef42623          	sw	a5,-20(s0)
 1d0:	fec42783          	lw	a5,-20(s0)
 1d4:	0007a703          	lw	a4,0(a5)
 1d8:	fd842783          	lw	a5,-40(s0)
 1dc:	00e7a023          	sw	a4,0(a5)
 1e0:	00000013          	nop
 1e4:	02c12083          	lw	ra,44(sp)
 1e8:	02812403          	lw	s0,40(sp)
 1ec:	03010113          	addi	sp,sp,48
 1f0:	00008067          	ret

000001f4 <transform>:
 1f4:	fe010113          	addi	sp,sp,-32
 1f8:	00112e23          	sw	ra,28(sp)
 1fc:	00812c23          	sw	s0,24(sp)
 200:	02010413          	addi	s0,sp,32
 204:	fea42623          	sw	a0,-20(s0)
 208:	fec42703          	lw	a4,-20(s0)
 20c:	0f000793          	li	a5,240
 210:	2ef70663          	beq	a4,a5,4fc <transform+0x308>
 214:	fec42703          	lw	a4,-20(s0)
 218:	0f000793          	li	a5,240
 21c:	2ee7c663          	blt	a5,a4,508 <transform+0x314>
 220:	fec42703          	lw	a4,-20(s0)
 224:	03c00793          	li	a5,60
 228:	2cf70463          	beq	a4,a5,4f0 <transform+0x2fc>
 22c:	fec42703          	lw	a4,-20(s0)
 230:	03c00793          	li	a5,60
 234:	2ce7ca63          	blt	a5,a4,508 <transform+0x314>
 238:	fec42703          	lw	a4,-20(s0)
 23c:	03b00793          	li	a5,59
 240:	24f70e63          	beq	a4,a5,49c <transform+0x2a8>
 244:	fec42703          	lw	a4,-20(s0)
 248:	03b00793          	li	a5,59
 24c:	2ae7ce63          	blt	a5,a4,508 <transform+0x314>
 250:	fec42703          	lw	a4,-20(s0)
 254:	03a00793          	li	a5,58
 258:	1ef70863          	beq	a4,a5,448 <transform+0x254>
 25c:	fec42703          	lw	a4,-20(s0)
 260:	03a00793          	li	a5,58
 264:	2ae7c263          	blt	a5,a4,508 <transform+0x314>
 268:	fec42703          	lw	a4,-20(s0)
 26c:	03500793          	li	a5,53
 270:	26f70a63          	beq	a4,a5,4e4 <transform+0x2f0>
 274:	fec42703          	lw	a4,-20(s0)
 278:	03500793          	li	a5,53
 27c:	28e7c663          	blt	a5,a4,508 <transform+0x314>
 280:	fec42703          	lw	a4,-20(s0)
 284:	03400793          	li	a5,52
 288:	1ef70e63          	beq	a4,a5,484 <transform+0x290>
 28c:	fec42703          	lw	a4,-20(s0)
 290:	03400793          	li	a5,52
 294:	26e7ca63          	blt	a5,a4,508 <transform+0x314>
 298:	fec42703          	lw	a4,-20(s0)
 29c:	03300793          	li	a5,51
 2a0:	1ef70863          	beq	a4,a5,490 <transform+0x29c>
 2a4:	fec42703          	lw	a4,-20(s0)
 2a8:	03300793          	li	a5,51
 2ac:	24e7ce63          	blt	a5,a4,508 <transform+0x314>
 2b0:	fec42703          	lw	a4,-20(s0)
 2b4:	03200793          	li	a5,50
 2b8:	16f70c63          	beq	a4,a5,430 <transform+0x23c>
 2bc:	fec42703          	lw	a4,-20(s0)
 2c0:	03200793          	li	a5,50
 2c4:	24e7c263          	blt	a5,a4,508 <transform+0x314>
 2c8:	fec42703          	lw	a4,-20(s0)
 2cc:	03100793          	li	a5,49
 2d0:	16f70663          	beq	a4,a5,43c <transform+0x248>
 2d4:	fec42703          	lw	a4,-20(s0)
 2d8:	03100793          	li	a5,49
 2dc:	22e7c663          	blt	a5,a4,508 <transform+0x314>
 2e0:	fec42703          	lw	a4,-20(s0)
 2e4:	02d00793          	li	a5,45
 2e8:	1ef70263          	beq	a4,a5,4cc <transform+0x2d8>
 2ec:	fec42703          	lw	a4,-20(s0)
 2f0:	02d00793          	li	a5,45
 2f4:	20e7ca63          	blt	a5,a4,508 <transform+0x314>
 2f8:	fec42703          	lw	a4,-20(s0)
 2fc:	02c00793          	li	a5,44
 300:	1cf70c63          	beq	a4,a5,4d8 <transform+0x2e4>
 304:	fec42703          	lw	a4,-20(s0)
 308:	02c00793          	li	a5,44
 30c:	1ee7ce63          	blt	a5,a4,508 <transform+0x314>
 310:	fec42703          	lw	a4,-20(s0)
 314:	02b00793          	li	a5,43
 318:	16f70063          	beq	a4,a5,478 <transform+0x284>
 31c:	fec42703          	lw	a4,-20(s0)
 320:	02b00793          	li	a5,43
 324:	1ee7c263          	blt	a5,a4,508 <transform+0x314>
 328:	fec42703          	lw	a4,-20(s0)
 32c:	02a00793          	li	a5,42
 330:	0ef70a63          	beq	a4,a5,424 <transform+0x230>
 334:	fec42703          	lw	a4,-20(s0)
 338:	02a00793          	li	a5,42
 33c:	1ce7c663          	blt	a5,a4,508 <transform+0x314>
 340:	fec42703          	lw	a4,-20(s0)
 344:	02400793          	li	a5,36
 348:	16f70c63          	beq	a4,a5,4c0 <transform+0x2cc>
 34c:	fec42703          	lw	a4,-20(s0)
 350:	02400793          	li	a5,36
 354:	1ae7ca63          	blt	a5,a4,508 <transform+0x314>
 358:	fec42703          	lw	a4,-20(s0)
 35c:	02300793          	li	a5,35
 360:	10f70663          	beq	a4,a5,46c <transform+0x278>
 364:	fec42703          	lw	a4,-20(s0)
 368:	02300793          	li	a5,35
 36c:	18e7ce63          	blt	a5,a4,508 <transform+0x314>
 370:	fec42703          	lw	a4,-20(s0)
 374:	02200793          	li	a5,34
 378:	08f70a63          	beq	a4,a5,40c <transform+0x218>
 37c:	fec42703          	lw	a4,-20(s0)
 380:	02200793          	li	a5,34
 384:	18e7c263          	blt	a5,a4,508 <transform+0x314>
 388:	fec42703          	lw	a4,-20(s0)
 38c:	02100793          	li	a5,33
 390:	08f70463          	beq	a4,a5,418 <transform+0x224>
 394:	fec42703          	lw	a4,-20(s0)
 398:	02100793          	li	a5,33
 39c:	16e7c663          	blt	a5,a4,508 <transform+0x314>
 3a0:	fec42703          	lw	a4,-20(s0)
 3a4:	01d00793          	li	a5,29
 3a8:	10f70663          	beq	a4,a5,4b4 <transform+0x2c0>
 3ac:	fec42703          	lw	a4,-20(s0)
 3b0:	01d00793          	li	a5,29
 3b4:	14e7ca63          	blt	a5,a4,508 <transform+0x314>
 3b8:	fec42703          	lw	a4,-20(s0)
 3bc:	01c00793          	li	a5,28
 3c0:	08f70a63          	beq	a4,a5,454 <transform+0x260>
 3c4:	fec42703          	lw	a4,-20(s0)
 3c8:	01c00793          	li	a5,28
 3cc:	12e7ce63          	blt	a5,a4,508 <transform+0x314>
 3d0:	fec42703          	lw	a4,-20(s0)
 3d4:	01b00793          	li	a5,27
 3d8:	08f70463          	beq	a4,a5,460 <transform+0x26c>
 3dc:	fec42703          	lw	a4,-20(s0)
 3e0:	01b00793          	li	a5,27
 3e4:	12e7c263          	blt	a5,a4,508 <transform+0x314>
 3e8:	fec42703          	lw	a4,-20(s0)
 3ec:	01500793          	li	a5,21
 3f0:	0af70c63          	beq	a4,a5,4a8 <transform+0x2b4>
 3f4:	fec42703          	lw	a4,-20(s0)
 3f8:	01a00793          	li	a5,26
 3fc:	10f71663          	bne	a4,a5,508 <transform+0x314>
 400:	000bb7b7          	lui	a5,0xbb
 404:	a0478793          	addi	a5,a5,-1532 # baa04 <__global_pointer$+0xb8990>
 408:	1040006f          	j	50c <transform+0x318>
 40c:	000a67b7          	lui	a5,0xa6
 410:	44878793          	addi	a5,a5,1096 # a6448 <__global_pointer$+0xa43d4>
 414:	0f80006f          	j	50c <transform+0x318>
 418:	000947b7          	lui	a5,0x94
 41c:	21678793          	addi	a5,a5,534 # 94216 <__global_pointer$+0x921a2>
 420:	0ec0006f          	j	50c <transform+0x318>
 424:	0008c7b7          	lui	a5,0x8c
 428:	d1878793          	addi	a5,a5,-744 # 8bd18 <__global_pointer$+0x89ca4>
 42c:	0e00006f          	j	50c <transform+0x318>
 430:	0007d7b7          	lui	a5,0x7d
 434:	90278793          	addi	a5,a5,-1790 # 7c902 <__global_pointer$+0x7a88e>
 438:	0d40006f          	j	50c <transform+0x318>
 43c:	0006f7b7          	lui	a5,0x6f
 440:	f9178793          	addi	a5,a5,-111 # 6ef91 <__global_pointer$+0x6cf1d>
 444:	0c80006f          	j	50c <transform+0x318>
 448:	000637b7          	lui	a5,0x63
 44c:	dda78793          	addi	a5,a5,-550 # 62dda <__global_pointer$+0x60d66>
 450:	0bc0006f          	j	50c <transform+0x318>
 454:	0005d7b7          	lui	a5,0x5d
 458:	50278793          	addi	a5,a5,1282 # 5d502 <__global_pointer$+0x5b48e>
 45c:	0b00006f          	j	50c <transform+0x318>
 460:	000537b7          	lui	a5,0x53
 464:	22478793          	addi	a5,a5,548 # 53224 <__global_pointer$+0x511b0>
 468:	0a40006f          	j	50c <transform+0x318>
 46c:	0004a7b7          	lui	a5,0x4a
 470:	10b78793          	addi	a5,a5,267 # 4a10b <__global_pointer$+0x48097>
 474:	0980006f          	j	50c <transform+0x318>
 478:	000467b7          	lui	a5,0x46
 47c:	e8c78793          	addi	a5,a5,-372 # 45e8c <__global_pointer$+0x43e18>
 480:	08c0006f          	j	50c <transform+0x318>
 484:	0003e7b7          	lui	a5,0x3e
 488:	48178793          	addi	a5,a5,1153 # 3e481 <__global_pointer$+0x3c40d>
 48c:	0800006f          	j	50c <transform+0x318>
 490:	000377b7          	lui	a5,0x37
 494:	7c978793          	addi	a5,a5,1993 # 377c9 <__global_pointer$+0x35755>
 498:	0740006f          	j	50c <transform+0x318>
 49c:	000317b7          	lui	a5,0x31
 4a0:	6ed78793          	addi	a5,a5,1773 # 316ed <__global_pointer$+0x2f679>
 4a4:	0680006f          	j	50c <transform+0x318>
 4a8:	0002f7b7          	lui	a5,0x2f
 4ac:	a8978793          	addi	a5,a5,-1399 # 2ea89 <__global_pointer$+0x2ca15>
 4b0:	05c0006f          	j	50c <transform+0x318>
 4b4:	0002a7b7          	lui	a5,0x2a
 4b8:	91278793          	addi	a5,a5,-1774 # 29912 <__global_pointer$+0x2789e>
 4bc:	0500006f          	j	50c <transform+0x318>
 4c0:	000257b7          	lui	a5,0x25
 4c4:	08678793          	addi	a5,a5,134 # 25086 <__global_pointer$+0x23012>
 4c8:	0440006f          	j	50c <transform+0x318>
 4cc:	000237b7          	lui	a5,0x23
 4d0:	f4678793          	addi	a5,a5,-186 # 22f46 <__global_pointer$+0x20ed2>
 4d4:	0380006f          	j	50c <transform+0x318>
 4d8:	0001f7b7          	lui	a5,0x1f
 4dc:	24178793          	addi	a5,a5,577 # 1f241 <__global_pointer$+0x1d1cd>
 4e0:	02c0006f          	j	50c <transform+0x318>
 4e4:	0001c7b7          	lui	a5,0x1c
 4e8:	be478793          	addi	a5,a5,-1052 # 1bbe4 <__global_pointer$+0x19b70>
 4ec:	0200006f          	j	50c <transform+0x318>
 4f0:	000197b7          	lui	a5,0x19
 4f4:	b7778793          	addi	a5,a5,-1161 # 18b77 <__global_pointer$+0x16b03>
 4f8:	0140006f          	j	50c <transform+0x318>
 4fc:	0d0007b7          	lui	a5,0xd000
 500:	72178793          	addi	a5,a5,1825 # d000721 <__global_pointer$+0xcffe6ad>
 504:	0080006f          	j	50c <transform+0x318>
 508:	00000793          	li	a5,0
 50c:	00078513          	mv	a0,a5
 510:	01c12083          	lw	ra,28(sp)
 514:	01812403          	lw	s0,24(sp)
 518:	02010113          	addi	sp,sp,32
 51c:	00008067          	ret

00000520 <displayAC>:
 520:	f8010113          	addi	sp,sp,-128
 524:	06112e23          	sw	ra,124(sp)
 528:	06812c23          	sw	s0,120(sp)
 52c:	08010413          	addi	s0,sp,128
 530:	f8a42623          	sw	a0,-116(s0)
 534:	fe042623          	sw	zero,-20(s0)
 538:	0380006f          	j	570 <displayAC+0x50>
 53c:	fec42783          	lw	a5,-20(s0)
 540:	00279793          	slli	a5,a5,0x2
 544:	01078693          	addi	a3,a5,16
 548:	f9c40713          	addi	a4,s0,-100
 54c:	fec42783          	lw	a5,-20(s0)
 550:	00279793          	slli	a5,a5,0x2
 554:	00f707b3          	add	a5,a4,a5
 558:	00078593          	mv	a1,a5
 55c:	00068513          	mv	a0,a3
 560:	c51ff0ef          	jal	1b0 <read>
 564:	fec42783          	lw	a5,-20(s0)
 568:	00178793          	addi	a5,a5,1
 56c:	fef42623          	sw	a5,-20(s0)
 570:	fec42703          	lw	a4,-20(s0)
 574:	00f00793          	li	a5,15
 578:	fce7d2e3          	bge	a5,a4,53c <displayAC+0x1c>
 57c:	fe042423          	sw	zero,-24(s0)
 580:	0600006f          	j	5e0 <displayAC+0xc0>
 584:	f8c42783          	lw	a5,-116(s0)
 588:	00078e63          	beqz	a5,5a4 <displayAC+0x84>
 58c:	fe842703          	lw	a4,-24(s0)
 590:	f9c40793          	addi	a5,s0,-100
 594:	00271713          	slli	a4,a4,0x2
 598:	00f707b3          	add	a5,a4,a5
 59c:	0007a783          	lw	a5,0(a5)
 5a0:	01c0006f          	j	5bc <displayAC+0x9c>
 5a4:	fe842703          	lw	a4,-24(s0)
 5a8:	f9c40793          	addi	a5,s0,-100
 5ac:	00271713          	slli	a4,a4,0x2
 5b0:	00f707b3          	add	a5,a4,a5
 5b4:	0007a783          	lw	a5,0(a5)
 5b8:	fff7c793          	not	a5,a5
 5bc:	00078593          	mv	a1,a5
 5c0:	e0000537          	lui	a0,0xe0000
 5c4:	badff0ef          	jal	170 <write>
 5c8:	0007a7b7          	lui	a5,0x7a
 5cc:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x780ac>
 5d0:	b61ff0ef          	jal	130 <wait>
 5d4:	fe842783          	lw	a5,-24(s0)
 5d8:	00178793          	addi	a5,a5,1
 5dc:	fef42423          	sw	a5,-24(s0)
 5e0:	fe842703          	lw	a4,-24(s0)
 5e4:	00f00793          	li	a5,15
 5e8:	f8e7dee3          	bge	a5,a4,584 <displayAC+0x64>
 5ec:	fe042223          	sw	zero,-28(s0)
 5f0:	0980006f          	j	688 <displayAC+0x168>
 5f4:	fe442703          	lw	a4,-28(s0)
 5f8:	f9c40793          	addi	a5,s0,-100
 5fc:	00271713          	slli	a4,a4,0x2
 600:	00f707b3          	add	a5,a4,a5
 604:	0007a783          	lw	a5,0(a5)
 608:	0ff7f793          	zext.b	a5,a5
 60c:	fef42023          	sw	a5,-32(s0)
 610:	fe442703          	lw	a4,-28(s0)
 614:	f9c40793          	addi	a5,s0,-100
 618:	00271713          	slli	a4,a4,0x2
 61c:	00f707b3          	add	a5,a4,a5
 620:	0007a783          	lw	a5,0(a5)
 624:	0087d793          	srli	a5,a5,0x8
 628:	fcf42e23          	sw	a5,-36(s0)
 62c:	fe042783          	lw	a5,-32(s0)
 630:	01879713          	slli	a4,a5,0x18
 634:	fdc42783          	lw	a5,-36(s0)
 638:	00f76733          	or	a4,a4,a5
 63c:	fe442683          	lw	a3,-28(s0)
 640:	f9c40793          	addi	a5,s0,-100
 644:	00269693          	slli	a3,a3,0x2
 648:	00f687b3          	add	a5,a3,a5
 64c:	00e7a023          	sw	a4,0(a5)
 650:	fe442783          	lw	a5,-28(s0)
 654:	00279793          	slli	a5,a5,0x2
 658:	01078693          	addi	a3,a5,16
 65c:	fe442703          	lw	a4,-28(s0)
 660:	f9c40793          	addi	a5,s0,-100
 664:	00271713          	slli	a4,a4,0x2
 668:	00f707b3          	add	a5,a4,a5
 66c:	0007a783          	lw	a5,0(a5)
 670:	00078593          	mv	a1,a5
 674:	00068513          	mv	a0,a3
 678:	af9ff0ef          	jal	170 <write>
 67c:	fe442783          	lw	a5,-28(s0)
 680:	00178793          	addi	a5,a5,1
 684:	fef42223          	sw	a5,-28(s0)
 688:	fe442703          	lw	a4,-28(s0)
 68c:	00f00793          	li	a5,15
 690:	f6e7d2e3          	bge	a5,a4,5f4 <displayAC+0xd4>
 694:	00000013          	nop
 698:	00000013          	nop
 69c:	07c12083          	lw	ra,124(sp)
 6a0:	07812403          	lw	s0,120(sp)
 6a4:	08010113          	addi	sp,sp,128
 6a8:	00008067          	ret

000006ac <initialize>:
 6ac:	fa010113          	addi	sp,sp,-96
 6b0:	04112e23          	sw	ra,92(sp)
 6b4:	04812c23          	sw	s0,88(sp)
 6b8:	06010413          	addi	s0,sp,96
 6bc:	fff00793          	li	a5,-1
 6c0:	faf42623          	sw	a5,-84(s0)
 6c4:	fffff7b7          	lui	a5,0xfffff
 6c8:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffcf8b>
 6cc:	faf42823          	sw	a5,-80(s0)
 6d0:	ffffd7b7          	lui	a5,0xffffd
 6d4:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffaf8b>
 6d8:	faf42a23          	sw	a5,-76(s0)
 6dc:	ffffd7b7          	lui	a5,0xffffd
 6e0:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffae8b>
 6e4:	faf42c23          	sw	a5,-72(s0)
 6e8:	ffffd7b7          	lui	a5,0xffffd
 6ec:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffac8b>
 6f0:	faf42e23          	sw	a5,-68(s0)
 6f4:	ffff97b7          	lui	a5,0xffff9
 6f8:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6c8b>
 6fc:	fcf42023          	sw	a5,-64(s0)
 700:	ffff97b7          	lui	a5,0xffff9
 704:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff688b>
 708:	fcf42223          	sw	a5,-60(s0)
 70c:	ffff97b7          	lui	a5,0xffff9
 710:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff688a>
 714:	fcf42423          	sw	a5,-56(s0)
 718:	ffff97b7          	lui	a5,0xffff9
 71c:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff686a>
 720:	fcf42623          	sw	a5,-52(s0)
 724:	ffff97b7          	lui	a5,0xffff9
 728:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff685a>
 72c:	fcf42823          	sw	a5,-48(s0)
 730:	ffff97b7          	lui	a5,0xffff9
 734:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6852>
 738:	fcf42a23          	sw	a5,-44(s0)
 73c:	fff00793          	li	a5,-1
 740:	fcf42c23          	sw	a5,-40(s0)
 744:	ffff97b7          	lui	a5,0xffff9
 748:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6852>
 74c:	fcf42e23          	sw	a5,-36(s0)
 750:	fff00793          	li	a5,-1
 754:	fef42023          	sw	a5,-32(s0)
 758:	ffff97b7          	lui	a5,0xffff9
 75c:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6852>
 760:	fef42223          	sw	a5,-28(s0)
 764:	7f7f87b7          	lui	a5,0x7f7f8
 768:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5f0b>
 76c:	fef42423          	sw	a5,-24(s0)
 770:	fe042623          	sw	zero,-20(s0)
 774:	03c0006f          	j	7b0 <initialize+0x104>
 778:	fec42783          	lw	a5,-20(s0)
 77c:	00279793          	slli	a5,a5,0x2
 780:	01078693          	addi	a3,a5,16
 784:	fec42703          	lw	a4,-20(s0)
 788:	fac40793          	addi	a5,s0,-84
 78c:	00271713          	slli	a4,a4,0x2
 790:	00f707b3          	add	a5,a4,a5
 794:	0007a783          	lw	a5,0(a5)
 798:	00078593          	mv	a1,a5
 79c:	00068513          	mv	a0,a3
 7a0:	9d1ff0ef          	jal	170 <write>
 7a4:	fec42783          	lw	a5,-20(s0)
 7a8:	00178793          	addi	a5,a5,1
 7ac:	fef42623          	sw	a5,-20(s0)
 7b0:	fec42703          	lw	a4,-20(s0)
 7b4:	00f00793          	li	a5,15
 7b8:	fce7d0e3          	bge	a5,a4,778 <initialize+0xcc>
 7bc:	fff00593          	li	a1,-1
 7c0:	e0000537          	lui	a0,0xe0000
 7c4:	9adff0ef          	jal	170 <write>
 7c8:	00000013          	nop
 7cc:	05c12083          	lw	ra,92(sp)
 7d0:	05812403          	lw	s0,88(sp)
 7d4:	06010113          	addi	sp,sp,96
 7d8:	00008067          	ret

000007dc <main>:
 7dc:	fe010113          	addi	sp,sp,-32
 7e0:	00112e23          	sw	ra,28(sp)
 7e4:	00812c23          	sw	s0,24(sp)
 7e8:	02010413          	addi	s0,sp,32
 7ec:	fe042623          	sw	zero,-20(s0)
 7f0:	ebdff0ef          	jal	6ac <initialize>
 7f4:	fec40793          	addi	a5,s0,-20
 7f8:	00078593          	mv	a1,a5
 7fc:	f0000537          	lui	a0,0xf0000
 800:	9b1ff0ef          	jal	1b0 <read>
 804:	fec42783          	lw	a5,-20(s0)
 808:	00279793          	slli	a5,a5,0x2
 80c:	00078593          	mv	a1,a5
 810:	f0000537          	lui	a0,0xf0000
 814:	95dff0ef          	jal	170 <write>
 818:	03c0006f          	j	854 <main+0x78>
 81c:	fec40793          	addi	a5,s0,-20
 820:	00078593          	mv	a1,a5
 824:	f0000537          	lui	a0,0xf0000
 828:	989ff0ef          	jal	1b0 <read>
 82c:	fec42783          	lw	a5,-20(s0)
 830:	00279793          	slli	a5,a5,0x2
 834:	00078593          	mv	a1,a5
 838:	f0000537          	lui	a0,0xf0000
 83c:	935ff0ef          	jal	170 <write>
 840:	fec42783          	lw	a5,-20(s0)
 844:	0017d793          	srli	a5,a5,0x1
 848:	0017f793          	andi	a5,a5,1
 84c:	00078513          	mv	a0,a5
 850:	cd1ff0ef          	jal	520 <displayAC>
 854:	fec42703          	lw	a4,-20(s0)
 858:	000107b7          	lui	a5,0x10
 85c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xde8c>
 860:	00f77733          	and	a4,a4,a5
 864:	000107b7          	lui	a5,0x10
 868:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xde8c>
 86c:	faf708e3          	beq	a4,a5,81c <main+0x40>
 870:	f85ff06f          	j	7f4 <main+0x18>
