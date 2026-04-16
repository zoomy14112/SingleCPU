
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	6dc000ef          	jal	710 <main>
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
  88:	fa042223          	sw	zero,-92(s0)
  8c:	fac40793          	addi	a5,s0,-84
  90:	00078593          	mv	a1,a5
  94:	f4000537          	lui	a0,0xf4000
  98:	1f4000ef          	jal	28c <read>
  9c:	fa840793          	addi	a5,s0,-88
  a0:	00078593          	mv	a1,a5
  a4:	06800513          	li	a0,104
  a8:	1e4000ef          	jal	28c <read>
  ac:	fa440793          	addi	a5,s0,-92
  b0:	00078593          	mv	a1,a5
  b4:	07000513          	li	a0,112
  b8:	1d4000ef          	jal	28c <read>
  bc:	fac42783          	lw	a5,-84(s0)
  c0:	0ff7f793          	zext.b	a5,a5
  c4:	faf42623          	sw	a5,-84(s0)
  c8:	fac42703          	lw	a4,-84(s0)
  cc:	0f000793          	li	a5,240
  d0:	00f71a63          	bne	a4,a5,e4 <handler+0xa8>
  d4:	00100593          	li	a1,1
  d8:	07000513          	li	a0,112
  dc:	170000ef          	jal	24c <write>
  e0:	1200006f          	j	200 <handler+0x1c4>
  e4:	fa442703          	lw	a4,-92(s0)
  e8:	00100793          	li	a5,1
  ec:	00f71a63          	bne	a4,a5,100 <handler+0xc4>
  f0:	00000593          	li	a1,0
  f4:	07000513          	li	a0,112
  f8:	154000ef          	jal	24c <write>
  fc:	1040006f          	j	200 <handler+0x1c4>
 100:	fac42703          	lw	a4,-84(s0)
 104:	04e00793          	li	a5,78
 108:	04f71a63          	bne	a4,a5,15c <handler+0x120>
 10c:	fa842703          	lw	a4,-88(s0)
 110:	00100793          	li	a5,1
 114:	00e7fa63          	bgeu	a5,a4,128 <handler+0xec>
 118:	fa842783          	lw	a5,-88(s0)
 11c:	fff78793          	addi	a5,a5,-1
 120:	01f7f793          	andi	a5,a5,31
 124:	faf42423          	sw	a5,-88(s0)
 128:	fa842783          	lw	a5,-88(s0)
 12c:	00078593          	mv	a1,a5
 130:	06800513          	li	a0,104
 134:	118000ef          	jal	24c <write>
 138:	fa842783          	lw	a5,-88(s0)
 13c:	00078593          	mv	a1,a5
 140:	e5000537          	lui	a0,0xe5000
 144:	108000ef          	jal	24c <write>
 148:	fa842783          	lw	a5,-88(s0)
 14c:	00078593          	mv	a1,a5
 150:	e0000537          	lui	a0,0xe0000
 154:	0f8000ef          	jal	24c <write>
 158:	0a80006f          	j	200 <handler+0x1c4>
 15c:	fac42703          	lw	a4,-84(s0)
 160:	05500793          	li	a5,85
 164:	04f71a63          	bne	a4,a5,1b8 <handler+0x17c>
 168:	fa842703          	lw	a4,-88(s0)
 16c:	00f00793          	li	a5,15
 170:	00e7ea63          	bltu	a5,a4,184 <handler+0x148>
 174:	fa842783          	lw	a5,-88(s0)
 178:	00178793          	addi	a5,a5,1
 17c:	01f7f793          	andi	a5,a5,31
 180:	faf42423          	sw	a5,-88(s0)
 184:	fa842783          	lw	a5,-88(s0)
 188:	00078593          	mv	a1,a5
 18c:	06800513          	li	a0,104
 190:	0bc000ef          	jal	24c <write>
 194:	fa842783          	lw	a5,-88(s0)
 198:	00078593          	mv	a1,a5
 19c:	e5000537          	lui	a0,0xe5000
 1a0:	0ac000ef          	jal	24c <write>
 1a4:	fa842783          	lw	a5,-88(s0)
 1a8:	00078593          	mv	a1,a5
 1ac:	e0000537          	lui	a0,0xe0000
 1b0:	09c000ef          	jal	24c <write>
 1b4:	04c0006f          	j	200 <handler+0x1c4>
 1b8:	fac42783          	lw	a5,-84(s0)
 1bc:	00078513          	mv	a0,a5
 1c0:	150000ef          	jal	310 <transform>
 1c4:	00050793          	mv	a5,a0
 1c8:	faf42423          	sw	a5,-88(s0)
 1cc:	fa842783          	lw	a5,-88(s0)
 1d0:	00079a63          	bnez	a5,1e4 <handler+0x1a8>
 1d4:	fa842783          	lw	a5,-88(s0)
 1d8:	00078593          	mv	a1,a5
 1dc:	e4000537          	lui	a0,0xe4000
 1e0:	06c000ef          	jal	24c <write>
 1e4:	fa842783          	lw	a5,-88(s0)
 1e8:	00c79713          	slli	a4,a5,0xc
 1ec:	fac42783          	lw	a5,-84(s0)
 1f0:	00f767b3          	or	a5,a4,a5
 1f4:	00078593          	mv	a1,a5
 1f8:	e0000537          	lui	a0,0xe0000
 1fc:	050000ef          	jal	24c <write>
 200:	05c12083          	lw	ra,92(sp)
 204:	05812283          	lw	t0,88(sp)
 208:	05412303          	lw	t1,84(sp)
 20c:	05012383          	lw	t2,80(sp)
 210:	04c12403          	lw	s0,76(sp)
 214:	04812503          	lw	a0,72(sp)
 218:	04412583          	lw	a1,68(sp)
 21c:	04012603          	lw	a2,64(sp)
 220:	03c12683          	lw	a3,60(sp)
 224:	03812703          	lw	a4,56(sp)
 228:	03412783          	lw	a5,52(sp)
 22c:	03012803          	lw	a6,48(sp)
 230:	02c12883          	lw	a7,44(sp)
 234:	02812e03          	lw	t3,40(sp)
 238:	02412e83          	lw	t4,36(sp)
 23c:	02012f03          	lw	t5,32(sp)
 240:	01c12f83          	lw	t6,28(sp)
 244:	06010113          	addi	sp,sp,96
 248:	30200073          	mret

0000024c <write>:
 24c:	fd010113          	addi	sp,sp,-48
 250:	02112623          	sw	ra,44(sp)
 254:	02812423          	sw	s0,40(sp)
 258:	03010413          	addi	s0,sp,48
 25c:	fca42e23          	sw	a0,-36(s0)
 260:	fcb42c23          	sw	a1,-40(s0)
 264:	fdc42783          	lw	a5,-36(s0)
 268:	fef42623          	sw	a5,-20(s0)
 26c:	fec42783          	lw	a5,-20(s0)
 270:	fd842703          	lw	a4,-40(s0)
 274:	00e7a023          	sw	a4,0(a5)
 278:	00000013          	nop
 27c:	02c12083          	lw	ra,44(sp)
 280:	02812403          	lw	s0,40(sp)
 284:	03010113          	addi	sp,sp,48
 288:	00008067          	ret

0000028c <read>:
 28c:	fd010113          	addi	sp,sp,-48
 290:	02112623          	sw	ra,44(sp)
 294:	02812423          	sw	s0,40(sp)
 298:	03010413          	addi	s0,sp,48
 29c:	fca42e23          	sw	a0,-36(s0)
 2a0:	fcb42c23          	sw	a1,-40(s0)
 2a4:	fdc42783          	lw	a5,-36(s0)
 2a8:	fef42623          	sw	a5,-20(s0)
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	0007a703          	lw	a4,0(a5)
 2b4:	fd842783          	lw	a5,-40(s0)
 2b8:	00e7a023          	sw	a4,0(a5)
 2bc:	00000013          	nop
 2c0:	02c12083          	lw	ra,44(sp)
 2c4:	02812403          	lw	s0,40(sp)
 2c8:	03010113          	addi	sp,sp,48
 2cc:	00008067          	ret

000002d0 <wait>:
 2d0:	fe010113          	addi	sp,sp,-32
 2d4:	00112e23          	sw	ra,28(sp)
 2d8:	00812c23          	sw	s0,24(sp)
 2dc:	02010413          	addi	s0,sp,32
 2e0:	fea42623          	sw	a0,-20(s0)
 2e4:	00000013          	nop
 2e8:	fec42783          	lw	a5,-20(s0)
 2ec:	fff78713          	addi	a4,a5,-1
 2f0:	fee42623          	sw	a4,-20(s0)
 2f4:	fe079ae3          	bnez	a5,2e8 <wait+0x18>
 2f8:	00000013          	nop
 2fc:	00000013          	nop
 300:	01c12083          	lw	ra,28(sp)
 304:	01812403          	lw	s0,24(sp)
 308:	02010113          	addi	sp,sp,32
 30c:	00008067          	ret

00000310 <transform>:
 310:	fd010113          	addi	sp,sp,-48
 314:	02112623          	sw	ra,44(sp)
 318:	02812423          	sw	s0,40(sp)
 31c:	03010413          	addi	s0,sp,48
 320:	fca42e23          	sw	a0,-36(s0)
 324:	fe042623          	sw	zero,-20(s0)
 328:	fdc42783          	lw	a5,-36(s0)
 32c:	00279793          	slli	a5,a5,0x2
 330:	10078793          	addi	a5,a5,256
 334:	fec40713          	addi	a4,s0,-20
 338:	00070593          	mv	a1,a4
 33c:	00078513          	mv	a0,a5
 340:	f4dff0ef          	jal	28c <read>
 344:	fec42783          	lw	a5,-20(s0)
 348:	00078513          	mv	a0,a5
 34c:	02c12083          	lw	ra,44(sp)
 350:	02812403          	lw	s0,40(sp)
 354:	03010113          	addi	sp,sp,48
 358:	00008067          	ret

0000035c <displayAC>:
 35c:	fe010113          	addi	sp,sp,-32
 360:	00112e23          	sw	ra,28(sp)
 364:	00812c23          	sw	s0,24(sp)
 368:	02010413          	addi	s0,sp,32
 36c:	fe040793          	addi	a5,s0,-32
 370:	00078593          	mv	a1,a5
 374:	06000513          	li	a0,96
 378:	f15ff0ef          	jal	28c <read>
 37c:	fe042783          	lw	a5,-32(s0)
 380:	00279793          	slli	a5,a5,0x2
 384:	01078793          	addi	a5,a5,16
 388:	00078713          	mv	a4,a5
 38c:	fe440793          	addi	a5,s0,-28
 390:	00078593          	mv	a1,a5
 394:	00070513          	mv	a0,a4
 398:	ef5ff0ef          	jal	28c <read>
 39c:	fe442783          	lw	a5,-28(s0)
 3a0:	00078593          	mv	a1,a5
 3a4:	e0000537          	lui	a0,0xe0000
 3a8:	ea5ff0ef          	jal	24c <write>
 3ac:	fe442783          	lw	a5,-28(s0)
 3b0:	0ff7f793          	zext.b	a5,a5
 3b4:	fef42623          	sw	a5,-20(s0)
 3b8:	fe442783          	lw	a5,-28(s0)
 3bc:	0087d793          	srli	a5,a5,0x8
 3c0:	fef42423          	sw	a5,-24(s0)
 3c4:	fec42783          	lw	a5,-20(s0)
 3c8:	01879713          	slli	a4,a5,0x18
 3cc:	fe842783          	lw	a5,-24(s0)
 3d0:	00f767b3          	or	a5,a4,a5
 3d4:	fef42223          	sw	a5,-28(s0)
 3d8:	fe042783          	lw	a5,-32(s0)
 3dc:	00279793          	slli	a5,a5,0x2
 3e0:	01078793          	addi	a5,a5,16
 3e4:	00078713          	mv	a4,a5
 3e8:	fe442783          	lw	a5,-28(s0)
 3ec:	00078593          	mv	a1,a5
 3f0:	00070513          	mv	a0,a4
 3f4:	e59ff0ef          	jal	24c <write>
 3f8:	fe042783          	lw	a5,-32(s0)
 3fc:	00178793          	addi	a5,a5,1
 400:	00f7f793          	andi	a5,a5,15
 404:	00078593          	mv	a1,a5
 408:	06000513          	li	a0,96
 40c:	e41ff0ef          	jal	24c <write>
 410:	0007a7b7          	lui	a5,0x7a
 414:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x78188>
 418:	eb9ff0ef          	jal	2d0 <wait>
 41c:	00000013          	nop
 420:	01c12083          	lw	ra,28(sp)
 424:	01812403          	lw	s0,24(sp)
 428:	02010113          	addi	sp,sp,32
 42c:	00008067          	ret

00000430 <initialize>:
 430:	fa010113          	addi	sp,sp,-96
 434:	04112e23          	sw	ra,92(sp)
 438:	04812c23          	sw	s0,88(sp)
 43c:	06010413          	addi	s0,sp,96
 440:	fff00793          	li	a5,-1
 444:	faf42423          	sw	a5,-88(s0)
 448:	fffff7b7          	lui	a5,0xfffff
 44c:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffd067>
 450:	faf42623          	sw	a5,-84(s0)
 454:	ffffd7b7          	lui	a5,0xffffd
 458:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffb067>
 45c:	faf42823          	sw	a5,-80(s0)
 460:	ffffd7b7          	lui	a5,0xffffd
 464:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffaf67>
 468:	faf42a23          	sw	a5,-76(s0)
 46c:	ffffd7b7          	lui	a5,0xffffd
 470:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffad67>
 474:	faf42c23          	sw	a5,-72(s0)
 478:	ffff97b7          	lui	a5,0xffff9
 47c:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6d67>
 480:	faf42e23          	sw	a5,-68(s0)
 484:	ffff97b7          	lui	a5,0xffff9
 488:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff6967>
 48c:	fcf42023          	sw	a5,-64(s0)
 490:	ffff97b7          	lui	a5,0xffff9
 494:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff6966>
 498:	fcf42223          	sw	a5,-60(s0)
 49c:	ffff97b7          	lui	a5,0xffff9
 4a0:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff6946>
 4a4:	fcf42423          	sw	a5,-56(s0)
 4a8:	ffff97b7          	lui	a5,0xffff9
 4ac:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff6936>
 4b0:	fcf42623          	sw	a5,-52(s0)
 4b4:	ffff97b7          	lui	a5,0xffff9
 4b8:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff692e>
 4bc:	fcf42823          	sw	a5,-48(s0)
 4c0:	fff00793          	li	a5,-1
 4c4:	fcf42a23          	sw	a5,-44(s0)
 4c8:	ffff97b7          	lui	a5,0xffff9
 4cc:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff692e>
 4d0:	fcf42c23          	sw	a5,-40(s0)
 4d4:	fff00793          	li	a5,-1
 4d8:	fcf42e23          	sw	a5,-36(s0)
 4dc:	ffff97b7          	lui	a5,0xffff9
 4e0:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff692e>
 4e4:	fef42023          	sw	a5,-32(s0)
 4e8:	7f7f87b7          	lui	a5,0x7f7f8
 4ec:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5fe7>
 4f0:	fef42223          	sw	a5,-28(s0)
 4f4:	fe042623          	sw	zero,-20(s0)
 4f8:	03c0006f          	j	534 <initialize+0x104>
 4fc:	fec42783          	lw	a5,-20(s0)
 500:	00279793          	slli	a5,a5,0x2
 504:	01078693          	addi	a3,a5,16
 508:	fec42703          	lw	a4,-20(s0)
 50c:	fa840793          	addi	a5,s0,-88
 510:	00271713          	slli	a4,a4,0x2
 514:	00f707b3          	add	a5,a4,a5
 518:	0007a783          	lw	a5,0(a5)
 51c:	00078593          	mv	a1,a5
 520:	00068513          	mv	a0,a3
 524:	d29ff0ef          	jal	24c <write>
 528:	fec42783          	lw	a5,-20(s0)
 52c:	00178793          	addi	a5,a5,1
 530:	fef42623          	sw	a5,-20(s0)
 534:	fec42703          	lw	a4,-20(s0)
 538:	00f00793          	li	a5,15
 53c:	fce7d0e3          	bge	a5,a4,4fc <initialize+0xcc>
 540:	fe042423          	sw	zero,-24(s0)
 544:	0280006f          	j	56c <initialize+0x13c>
 548:	fe842783          	lw	a5,-24(s0)
 54c:	00279793          	slli	a5,a5,0x2
 550:	10078793          	addi	a5,a5,256
 554:	00000593          	li	a1,0
 558:	00078513          	mv	a0,a5
 55c:	cf1ff0ef          	jal	24c <write>
 560:	fe842783          	lw	a5,-24(s0)
 564:	00178793          	addi	a5,a5,1
 568:	fef42423          	sw	a5,-24(s0)
 56c:	fe842703          	lw	a4,-24(s0)
 570:	03f00793          	li	a5,63
 574:	fce7dae3          	bge	a5,a4,548 <initialize+0x118>
 578:	000bb7b7          	lui	a5,0xbb
 57c:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb8a6c>
 580:	16800513          	li	a0,360
 584:	cc9ff0ef          	jal	24c <write>
 588:	000a67b7          	lui	a5,0xa6
 58c:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa44b0>
 590:	18800513          	li	a0,392
 594:	cb9ff0ef          	jal	24c <write>
 598:	000947b7          	lui	a5,0x94
 59c:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x9227e>
 5a0:	18400513          	li	a0,388
 5a4:	ca9ff0ef          	jal	24c <write>
 5a8:	0008c7b7          	lui	a5,0x8c
 5ac:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x89d80>
 5b0:	1a800513          	li	a0,424
 5b4:	c99ff0ef          	jal	24c <write>
 5b8:	0007d7b7          	lui	a5,0x7d
 5bc:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7a96a>
 5c0:	1c800513          	li	a0,456
 5c4:	c89ff0ef          	jal	24c <write>
 5c8:	0006f7b7          	lui	a5,0x6f
 5cc:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6cff9>
 5d0:	1c400513          	li	a0,452
 5d4:	c79ff0ef          	jal	24c <write>
 5d8:	000637b7          	lui	a5,0x63
 5dc:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x60e42>
 5e0:	1e800513          	li	a0,488
 5e4:	c69ff0ef          	jal	24c <write>
 5e8:	0005d7b7          	lui	a5,0x5d
 5ec:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5b56a>
 5f0:	17000513          	li	a0,368
 5f4:	c59ff0ef          	jal	24c <write>
 5f8:	000537b7          	lui	a5,0x53
 5fc:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x5128c>
 600:	16c00513          	li	a0,364
 604:	c49ff0ef          	jal	24c <write>
 608:	0004a7b7          	lui	a5,0x4a
 60c:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x48173>
 610:	18c00513          	li	a0,396
 614:	c39ff0ef          	jal	24c <write>
 618:	000467b7          	lui	a5,0x46
 61c:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x43ef4>
 620:	1ac00513          	li	a0,428
 624:	c29ff0ef          	jal	24c <write>
 628:	0003e7b7          	lui	a5,0x3e
 62c:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3c4e9>
 630:	1d000513          	li	a0,464
 634:	c19ff0ef          	jal	24c <write>
 638:	000377b7          	lui	a5,0x37
 63c:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x35831>
 640:	1cc00513          	li	a0,460
 644:	c09ff0ef          	jal	24c <write>
 648:	000317b7          	lui	a5,0x31
 64c:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f755>
 650:	1ec00513          	li	a0,492
 654:	bf9ff0ef          	jal	24c <write>
 658:	0002f7b7          	lui	a5,0x2f
 65c:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2caf1>
 660:	15400513          	li	a0,340
 664:	be9ff0ef          	jal	24c <write>
 668:	0002a7b7          	lui	a5,0x2a
 66c:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x2797a>
 670:	17400513          	li	a0,372
 674:	bd9ff0ef          	jal	24c <write>
 678:	000257b7          	lui	a5,0x25
 67c:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x230ee>
 680:	19000513          	li	a0,400
 684:	bc9ff0ef          	jal	24c <write>
 688:	000237b7          	lui	a5,0x23
 68c:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x20fae>
 690:	1b400513          	li	a0,436
 694:	bb9ff0ef          	jal	24c <write>
 698:	0001f7b7          	lui	a5,0x1f
 69c:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1d2a9>
 6a0:	1b000513          	li	a0,432
 6a4:	ba9ff0ef          	jal	24c <write>
 6a8:	0001c7b7          	lui	a5,0x1c
 6ac:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x19c4c>
 6b0:	1d400513          	li	a0,468
 6b4:	b99ff0ef          	jal	24c <write>
 6b8:	000197b7          	lui	a5,0x19
 6bc:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x16bdf>
 6c0:	1f000513          	li	a0,496
 6c4:	b89ff0ef          	jal	24c <write>
 6c8:	00000593          	li	a1,0
 6cc:	06000513          	li	a0,96
 6d0:	b7dff0ef          	jal	24c <write>
 6d4:	192617b7          	lui	a5,0x19261
 6d8:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e87f>
 6dc:	e0000537          	lui	a0,0xe0000
 6e0:	b6dff0ef          	jal	24c <write>
 6e4:	01000593          	li	a1,16
 6e8:	06800513          	li	a0,104
 6ec:	b61ff0ef          	jal	24c <write>
 6f0:	00000593          	li	a1,0
 6f4:	07000513          	li	a0,112
 6f8:	b55ff0ef          	jal	24c <write>
 6fc:	00000013          	nop
 700:	05c12083          	lw	ra,92(sp)
 704:	05812403          	lw	s0,88(sp)
 708:	06010113          	addi	sp,sp,96
 70c:	00008067          	ret

00000710 <main>:
 710:	fe010113          	addi	sp,sp,-32
 714:	00112e23          	sw	ra,28(sp)
 718:	00812c23          	sw	s0,24(sp)
 71c:	02010413          	addi	s0,sp,32
 720:	fe042623          	sw	zero,-20(s0)
 724:	d0dff0ef          	jal	430 <initialize>
 728:	fec40793          	addi	a5,s0,-20
 72c:	00078593          	mv	a1,a5
 730:	f0000537          	lui	a0,0xf0000
 734:	b59ff0ef          	jal	28c <read>
 738:	fec42783          	lw	a5,-20(s0)
 73c:	00279793          	slli	a5,a5,0x2
 740:	00078593          	mv	a1,a5
 744:	ec000537          	lui	a0,0xec000
 748:	b05ff0ef          	jal	24c <write>
 74c:	02c0006f          	j	778 <main+0x68>
 750:	c0dff0ef          	jal	35c <displayAC>
 754:	fec40793          	addi	a5,s0,-20
 758:	00078593          	mv	a1,a5
 75c:	f0000537          	lui	a0,0xf0000
 760:	b2dff0ef          	jal	28c <read>
 764:	fec42783          	lw	a5,-20(s0)
 768:	00279793          	slli	a5,a5,0x2
 76c:	00078593          	mv	a1,a5
 770:	ec000537          	lui	a0,0xec000
 774:	ad9ff0ef          	jal	24c <write>
 778:	fec42703          	lw	a4,-20(s0)
 77c:	000107b7          	lui	a5,0x10
 780:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xdf68>
 784:	00f77733          	and	a4,a4,a5
 788:	000107b7          	lui	a5,0x10
 78c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xdf68>
 790:	fcf700e3          	beq	a4,a5,750 <main+0x40>
 794:	f95ff06f          	j	728 <main+0x18>
