
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	4b8000ef          	jal	4ec <main>
  38:	0000006f          	j	38 <Entry+0x18>

0000003c <wait>:
  3c:	fe010113          	addi	sp,sp,-32
  40:	00112e23          	sw	ra,28(sp)
  44:	00812c23          	sw	s0,24(sp)
  48:	02010413          	addi	s0,sp,32
  4c:	fea42623          	sw	a0,-20(s0)
  50:	00000013          	nop
  54:	fec42783          	lw	a5,-20(s0)
  58:	fff78713          	addi	a4,a5,-1
  5c:	fee42623          	sw	a4,-20(s0)
  60:	fe079ae3          	bnez	a5,54 <wait+0x18>
  64:	00000013          	nop
  68:	00000013          	nop
  6c:	01c12083          	lw	ra,28(sp)
  70:	01812403          	lw	s0,24(sp)
  74:	02010113          	addi	sp,sp,32
  78:	00008067          	ret

0000007c <handler>:
  7c:	fb010113          	addi	sp,sp,-80
  80:	04112623          	sw	ra,76(sp)
  84:	04512423          	sw	t0,72(sp)
  88:	04612223          	sw	t1,68(sp)
  8c:	04712023          	sw	t2,64(sp)
  90:	02812e23          	sw	s0,60(sp)
  94:	02a12c23          	sw	a0,56(sp)
  98:	02b12a23          	sw	a1,52(sp)
  9c:	02c12823          	sw	a2,48(sp)
  a0:	02d12623          	sw	a3,44(sp)
  a4:	02e12423          	sw	a4,40(sp)
  a8:	02f12223          	sw	a5,36(sp)
  ac:	03012023          	sw	a6,32(sp)
  b0:	01112e23          	sw	a7,28(sp)
  b4:	01c12c23          	sw	t3,24(sp)
  b8:	01d12a23          	sw	t4,20(sp)
  bc:	01e12823          	sw	t5,16(sp)
  c0:	01f12623          	sw	t6,12(sp)
  c4:	05010413          	addi	s0,sp,80
  c8:	123457b7          	lui	a5,0x12345
  cc:	67878593          	addi	a1,a5,1656 # 12345678 <__global_pointer$+0x123438a8>
  d0:	e0000537          	lui	a0,0xe0000
  d4:	06c000ef          	jal	140 <write>
  d8:	009897b7          	lui	a5,0x989
  dc:	68078513          	addi	a0,a5,1664 # 989680 <__global_pointer$+0x9878b0>
  e0:	f5dff0ef          	jal	3c <wait>
  e4:	00000593          	li	a1,0
  e8:	e0000537          	lui	a0,0xe0000
  ec:	054000ef          	jal	140 <write>
  f0:	00000013          	nop
  f4:	04c12083          	lw	ra,76(sp)
  f8:	04812283          	lw	t0,72(sp)
  fc:	04412303          	lw	t1,68(sp)
 100:	04012383          	lw	t2,64(sp)
 104:	03c12403          	lw	s0,60(sp)
 108:	03812503          	lw	a0,56(sp)
 10c:	03412583          	lw	a1,52(sp)
 110:	03012603          	lw	a2,48(sp)
 114:	02c12683          	lw	a3,44(sp)
 118:	02812703          	lw	a4,40(sp)
 11c:	02412783          	lw	a5,36(sp)
 120:	02012803          	lw	a6,32(sp)
 124:	01c12883          	lw	a7,28(sp)
 128:	01812e03          	lw	t3,24(sp)
 12c:	01412e83          	lw	t4,20(sp)
 130:	01012f03          	lw	t5,16(sp)
 134:	00c12f83          	lw	t6,12(sp)
 138:	05010113          	addi	sp,sp,80
 13c:	30200073          	mret

00000140 <write>:
 140:	fd010113          	addi	sp,sp,-48
 144:	02112623          	sw	ra,44(sp)
 148:	02812423          	sw	s0,40(sp)
 14c:	03010413          	addi	s0,sp,48
 150:	fca42e23          	sw	a0,-36(s0)
 154:	fcb42c23          	sw	a1,-40(s0)
 158:	fdc42783          	lw	a5,-36(s0)
 15c:	fef42623          	sw	a5,-20(s0)
 160:	fec42783          	lw	a5,-20(s0)
 164:	fd842703          	lw	a4,-40(s0)
 168:	00e7a023          	sw	a4,0(a5)
 16c:	00000013          	nop
 170:	02c12083          	lw	ra,44(sp)
 174:	02812403          	lw	s0,40(sp)
 178:	03010113          	addi	sp,sp,48
 17c:	00008067          	ret

00000180 <read>:
 180:	fd010113          	addi	sp,sp,-48
 184:	02112623          	sw	ra,44(sp)
 188:	02812423          	sw	s0,40(sp)
 18c:	03010413          	addi	s0,sp,48
 190:	fca42e23          	sw	a0,-36(s0)
 194:	fcb42c23          	sw	a1,-40(s0)
 198:	fdc42783          	lw	a5,-36(s0)
 19c:	fef42623          	sw	a5,-20(s0)
 1a0:	fec42783          	lw	a5,-20(s0)
 1a4:	0007a703          	lw	a4,0(a5)
 1a8:	fd842783          	lw	a5,-40(s0)
 1ac:	00e7a023          	sw	a4,0(a5)
 1b0:	00000013          	nop
 1b4:	02c12083          	lw	ra,44(sp)
 1b8:	02812403          	lw	s0,40(sp)
 1bc:	03010113          	addi	sp,sp,48
 1c0:	00008067          	ret

000001c4 <transform>:
 1c4:	fe010113          	addi	sp,sp,-32
 1c8:	00112e23          	sw	ra,28(sp)
 1cc:	00812c23          	sw	s0,24(sp)
 1d0:	02010413          	addi	s0,sp,32
 1d4:	fea42623          	sw	a0,-20(s0)
 1d8:	fec42703          	lw	a4,-20(s0)
 1dc:	0f000793          	li	a5,240
 1e0:	2ef70663          	beq	a4,a5,4cc <transform+0x308>
 1e4:	fec42703          	lw	a4,-20(s0)
 1e8:	0f000793          	li	a5,240
 1ec:	2ee7c463          	blt	a5,a4,4d4 <transform+0x310>
 1f0:	fec42703          	lw	a4,-20(s0)
 1f4:	03c00793          	li	a5,60
 1f8:	2cf70463          	beq	a4,a5,4c0 <transform+0x2fc>
 1fc:	fec42703          	lw	a4,-20(s0)
 200:	03c00793          	li	a5,60
 204:	2ce7c863          	blt	a5,a4,4d4 <transform+0x310>
 208:	fec42703          	lw	a4,-20(s0)
 20c:	03b00793          	li	a5,59
 210:	24f70e63          	beq	a4,a5,46c <transform+0x2a8>
 214:	fec42703          	lw	a4,-20(s0)
 218:	03b00793          	li	a5,59
 21c:	2ae7cc63          	blt	a5,a4,4d4 <transform+0x310>
 220:	fec42703          	lw	a4,-20(s0)
 224:	03a00793          	li	a5,58
 228:	1ef70863          	beq	a4,a5,418 <transform+0x254>
 22c:	fec42703          	lw	a4,-20(s0)
 230:	03a00793          	li	a5,58
 234:	2ae7c063          	blt	a5,a4,4d4 <transform+0x310>
 238:	fec42703          	lw	a4,-20(s0)
 23c:	03500793          	li	a5,53
 240:	26f70a63          	beq	a4,a5,4b4 <transform+0x2f0>
 244:	fec42703          	lw	a4,-20(s0)
 248:	03500793          	li	a5,53
 24c:	28e7c463          	blt	a5,a4,4d4 <transform+0x310>
 250:	fec42703          	lw	a4,-20(s0)
 254:	03400793          	li	a5,52
 258:	1ef70e63          	beq	a4,a5,454 <transform+0x290>
 25c:	fec42703          	lw	a4,-20(s0)
 260:	03400793          	li	a5,52
 264:	26e7c863          	blt	a5,a4,4d4 <transform+0x310>
 268:	fec42703          	lw	a4,-20(s0)
 26c:	03300793          	li	a5,51
 270:	1ef70863          	beq	a4,a5,460 <transform+0x29c>
 274:	fec42703          	lw	a4,-20(s0)
 278:	03300793          	li	a5,51
 27c:	24e7cc63          	blt	a5,a4,4d4 <transform+0x310>
 280:	fec42703          	lw	a4,-20(s0)
 284:	03200793          	li	a5,50
 288:	16f70c63          	beq	a4,a5,400 <transform+0x23c>
 28c:	fec42703          	lw	a4,-20(s0)
 290:	03200793          	li	a5,50
 294:	24e7c063          	blt	a5,a4,4d4 <transform+0x310>
 298:	fec42703          	lw	a4,-20(s0)
 29c:	03100793          	li	a5,49
 2a0:	16f70663          	beq	a4,a5,40c <transform+0x248>
 2a4:	fec42703          	lw	a4,-20(s0)
 2a8:	03100793          	li	a5,49
 2ac:	22e7c463          	blt	a5,a4,4d4 <transform+0x310>
 2b0:	fec42703          	lw	a4,-20(s0)
 2b4:	02d00793          	li	a5,45
 2b8:	1ef70263          	beq	a4,a5,49c <transform+0x2d8>
 2bc:	fec42703          	lw	a4,-20(s0)
 2c0:	02d00793          	li	a5,45
 2c4:	20e7c863          	blt	a5,a4,4d4 <transform+0x310>
 2c8:	fec42703          	lw	a4,-20(s0)
 2cc:	02c00793          	li	a5,44
 2d0:	1cf70c63          	beq	a4,a5,4a8 <transform+0x2e4>
 2d4:	fec42703          	lw	a4,-20(s0)
 2d8:	02c00793          	li	a5,44
 2dc:	1ee7cc63          	blt	a5,a4,4d4 <transform+0x310>
 2e0:	fec42703          	lw	a4,-20(s0)
 2e4:	02b00793          	li	a5,43
 2e8:	16f70063          	beq	a4,a5,448 <transform+0x284>
 2ec:	fec42703          	lw	a4,-20(s0)
 2f0:	02b00793          	li	a5,43
 2f4:	1ee7c063          	blt	a5,a4,4d4 <transform+0x310>
 2f8:	fec42703          	lw	a4,-20(s0)
 2fc:	02a00793          	li	a5,42
 300:	0ef70a63          	beq	a4,a5,3f4 <transform+0x230>
 304:	fec42703          	lw	a4,-20(s0)
 308:	02a00793          	li	a5,42
 30c:	1ce7c463          	blt	a5,a4,4d4 <transform+0x310>
 310:	fec42703          	lw	a4,-20(s0)
 314:	02400793          	li	a5,36
 318:	16f70c63          	beq	a4,a5,490 <transform+0x2cc>
 31c:	fec42703          	lw	a4,-20(s0)
 320:	02400793          	li	a5,36
 324:	1ae7c863          	blt	a5,a4,4d4 <transform+0x310>
 328:	fec42703          	lw	a4,-20(s0)
 32c:	02300793          	li	a5,35
 330:	10f70663          	beq	a4,a5,43c <transform+0x278>
 334:	fec42703          	lw	a4,-20(s0)
 338:	02300793          	li	a5,35
 33c:	18e7cc63          	blt	a5,a4,4d4 <transform+0x310>
 340:	fec42703          	lw	a4,-20(s0)
 344:	02200793          	li	a5,34
 348:	08f70a63          	beq	a4,a5,3dc <transform+0x218>
 34c:	fec42703          	lw	a4,-20(s0)
 350:	02200793          	li	a5,34
 354:	18e7c063          	blt	a5,a4,4d4 <transform+0x310>
 358:	fec42703          	lw	a4,-20(s0)
 35c:	02100793          	li	a5,33
 360:	08f70463          	beq	a4,a5,3e8 <transform+0x224>
 364:	fec42703          	lw	a4,-20(s0)
 368:	02100793          	li	a5,33
 36c:	16e7c463          	blt	a5,a4,4d4 <transform+0x310>
 370:	fec42703          	lw	a4,-20(s0)
 374:	01d00793          	li	a5,29
 378:	10f70663          	beq	a4,a5,484 <transform+0x2c0>
 37c:	fec42703          	lw	a4,-20(s0)
 380:	01d00793          	li	a5,29
 384:	14e7c863          	blt	a5,a4,4d4 <transform+0x310>
 388:	fec42703          	lw	a4,-20(s0)
 38c:	01c00793          	li	a5,28
 390:	08f70a63          	beq	a4,a5,424 <transform+0x260>
 394:	fec42703          	lw	a4,-20(s0)
 398:	01c00793          	li	a5,28
 39c:	12e7cc63          	blt	a5,a4,4d4 <transform+0x310>
 3a0:	fec42703          	lw	a4,-20(s0)
 3a4:	01b00793          	li	a5,27
 3a8:	08f70463          	beq	a4,a5,430 <transform+0x26c>
 3ac:	fec42703          	lw	a4,-20(s0)
 3b0:	01b00793          	li	a5,27
 3b4:	12e7c063          	blt	a5,a4,4d4 <transform+0x310>
 3b8:	fec42703          	lw	a4,-20(s0)
 3bc:	01500793          	li	a5,21
 3c0:	0af70c63          	beq	a4,a5,478 <transform+0x2b4>
 3c4:	fec42703          	lw	a4,-20(s0)
 3c8:	01a00793          	li	a5,26
 3cc:	10f71463          	bne	a4,a5,4d4 <transform+0x310>
 3d0:	000bb7b7          	lui	a5,0xbb
 3d4:	a0478793          	addi	a5,a5,-1532 # baa04 <__global_pointer$+0xb8c34>
 3d8:	1000006f          	j	4d8 <transform+0x314>
 3dc:	000a67b7          	lui	a5,0xa6
 3e0:	44878793          	addi	a5,a5,1096 # a6448 <__global_pointer$+0xa4678>
 3e4:	0f40006f          	j	4d8 <transform+0x314>
 3e8:	000947b7          	lui	a5,0x94
 3ec:	21678793          	addi	a5,a5,534 # 94216 <__global_pointer$+0x92446>
 3f0:	0e80006f          	j	4d8 <transform+0x314>
 3f4:	0008c7b7          	lui	a5,0x8c
 3f8:	d1878793          	addi	a5,a5,-744 # 8bd18 <__global_pointer$+0x89f48>
 3fc:	0dc0006f          	j	4d8 <transform+0x314>
 400:	0007d7b7          	lui	a5,0x7d
 404:	90278793          	addi	a5,a5,-1790 # 7c902 <__global_pointer$+0x7ab32>
 408:	0d00006f          	j	4d8 <transform+0x314>
 40c:	0006f7b7          	lui	a5,0x6f
 410:	f9178793          	addi	a5,a5,-111 # 6ef91 <__global_pointer$+0x6d1c1>
 414:	0c40006f          	j	4d8 <transform+0x314>
 418:	000637b7          	lui	a5,0x63
 41c:	dda78793          	addi	a5,a5,-550 # 62dda <__global_pointer$+0x6100a>
 420:	0b80006f          	j	4d8 <transform+0x314>
 424:	0005d7b7          	lui	a5,0x5d
 428:	50278793          	addi	a5,a5,1282 # 5d502 <__global_pointer$+0x5b732>
 42c:	0ac0006f          	j	4d8 <transform+0x314>
 430:	000537b7          	lui	a5,0x53
 434:	22478793          	addi	a5,a5,548 # 53224 <__global_pointer$+0x51454>
 438:	0a00006f          	j	4d8 <transform+0x314>
 43c:	0004a7b7          	lui	a5,0x4a
 440:	10b78793          	addi	a5,a5,267 # 4a10b <__global_pointer$+0x4833b>
 444:	0940006f          	j	4d8 <transform+0x314>
 448:	000467b7          	lui	a5,0x46
 44c:	e8c78793          	addi	a5,a5,-372 # 45e8c <__global_pointer$+0x440bc>
 450:	0880006f          	j	4d8 <transform+0x314>
 454:	0003e7b7          	lui	a5,0x3e
 458:	48178793          	addi	a5,a5,1153 # 3e481 <__global_pointer$+0x3c6b1>
 45c:	07c0006f          	j	4d8 <transform+0x314>
 460:	000377b7          	lui	a5,0x37
 464:	7c978793          	addi	a5,a5,1993 # 377c9 <__global_pointer$+0x359f9>
 468:	0700006f          	j	4d8 <transform+0x314>
 46c:	000317b7          	lui	a5,0x31
 470:	6ed78793          	addi	a5,a5,1773 # 316ed <__global_pointer$+0x2f91d>
 474:	0640006f          	j	4d8 <transform+0x314>
 478:	0002f7b7          	lui	a5,0x2f
 47c:	a8978793          	addi	a5,a5,-1399 # 2ea89 <__global_pointer$+0x2ccb9>
 480:	0580006f          	j	4d8 <transform+0x314>
 484:	0002a7b7          	lui	a5,0x2a
 488:	91278793          	addi	a5,a5,-1774 # 29912 <__global_pointer$+0x27b42>
 48c:	04c0006f          	j	4d8 <transform+0x314>
 490:	000257b7          	lui	a5,0x25
 494:	08678793          	addi	a5,a5,134 # 25086 <__global_pointer$+0x232b6>
 498:	0400006f          	j	4d8 <transform+0x314>
 49c:	000237b7          	lui	a5,0x23
 4a0:	f4678793          	addi	a5,a5,-186 # 22f46 <__global_pointer$+0x21176>
 4a4:	0340006f          	j	4d8 <transform+0x314>
 4a8:	0001f7b7          	lui	a5,0x1f
 4ac:	24178793          	addi	a5,a5,577 # 1f241 <__global_pointer$+0x1d471>
 4b0:	0280006f          	j	4d8 <transform+0x314>
 4b4:	0001c7b7          	lui	a5,0x1c
 4b8:	be478793          	addi	a5,a5,-1052 # 1bbe4 <__global_pointer$+0x19e14>
 4bc:	01c0006f          	j	4d8 <transform+0x314>
 4c0:	000197b7          	lui	a5,0x19
 4c4:	b7778793          	addi	a5,a5,-1161 # 18b77 <__global_pointer$+0x16da7>
 4c8:	0100006f          	j	4d8 <transform+0x314>
 4cc:	fff00793          	li	a5,-1
 4d0:	0080006f          	j	4d8 <transform+0x314>
 4d4:	00000793          	li	a5,0
 4d8:	00078513          	mv	a0,a5
 4dc:	01c12083          	lw	ra,28(sp)
 4e0:	01812403          	lw	s0,24(sp)
 4e4:	02010113          	addi	sp,sp,32
 4e8:	00008067          	ret

000004ec <main>:
 4ec:	fd010113          	addi	sp,sp,-48
 4f0:	02112623          	sw	ra,44(sp)
 4f4:	02812423          	sw	s0,40(sp)
 4f8:	03010413          	addi	s0,sp,48
 4fc:	fe042623          	sw	zero,-20(s0)
 500:	fc042a23          	sw	zero,-44(s0)
 504:	f00007b7          	lui	a5,0xf0000
 508:	fef42423          	sw	a5,-24(s0)
 50c:	a00007b7          	lui	a5,0xa0000
 510:	fef42223          	sw	a5,-28(s0)
 514:	f00007b7          	lui	a5,0xf0000
 518:	fef42023          	sw	a5,-32(s0)
 51c:	e00007b7          	lui	a5,0xe0000
 520:	fcf42e23          	sw	a5,-36(s0)
 524:	b00007b7          	lui	a5,0xb0000
 528:	fcf42c23          	sw	a5,-40(s0)
 52c:	fe842783          	lw	a5,-24(s0)
 530:	fd440713          	addi	a4,s0,-44
 534:	00070593          	mv	a1,a4
 538:	00078513          	mv	a0,a5
 53c:	c45ff0ef          	jal	180 <read>
 540:	fd442783          	lw	a5,-44(s0)
 544:	0087d793          	srli	a5,a5,0x8
 548:	0ff7f793          	zext.b	a5,a5
 54c:	fcf42a23          	sw	a5,-44(s0)
 550:	fd442783          	lw	a5,-44(s0)
 554:	0ff7f793          	zext.b	a5,a5
 558:	00078513          	mv	a0,a5
 55c:	c69ff0ef          	jal	1c4 <transform>
 560:	00050793          	mv	a5,a0
 564:	fef42623          	sw	a5,-20(s0)
 568:	fd842783          	lw	a5,-40(s0)
 56c:	fec42703          	lw	a4,-20(s0)
 570:	00070593          	mv	a1,a4
 574:	00078513          	mv	a0,a5
 578:	bc9ff0ef          	jal	140 <write>
 57c:	fe042783          	lw	a5,-32(s0)
 580:	fd442703          	lw	a4,-44(s0)
 584:	00271713          	slli	a4,a4,0x2
 588:	00070593          	mv	a1,a4
 58c:	00078513          	mv	a0,a5
 590:	bb1ff0ef          	jal	140 <write>
 594:	fdc42683          	lw	a3,-36(s0)
 598:	fd442783          	lw	a5,-44(s0)
 59c:	01879713          	slli	a4,a5,0x18
 5a0:	fd442783          	lw	a5,-44(s0)
 5a4:	01079793          	slli	a5,a5,0x10
 5a8:	00f76733          	or	a4,a4,a5
 5ac:	fd442783          	lw	a5,-44(s0)
 5b0:	00879793          	slli	a5,a5,0x8
 5b4:	00f76733          	or	a4,a4,a5
 5b8:	fd442783          	lw	a5,-44(s0)
 5bc:	00f767b3          	or	a5,a4,a5
 5c0:	00078593          	mv	a1,a5
 5c4:	00068513          	mv	a0,a3
 5c8:	b79ff0ef          	jal	140 <write>
 5cc:	f61ff06f          	j	52c <main+0x40>
