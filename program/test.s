
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	40000113          	li	sp,1024
  34:	57c000ef          	jal	5b0 <main>
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
  98:	110000ef          	jal	1a8 <read>
  9c:	fac42783          	lw	a5,-84(s0)
  a0:	0ff7f793          	zext.b	a5,a5
  a4:	00078593          	mv	a1,a5
  a8:	e0000537          	lui	a0,0xe0000
  ac:	0bc000ef          	jal	168 <write>
  b0:	fac42783          	lw	a5,-84(s0)
  b4:	0ff7f793          	zext.b	a5,a5
  b8:	00078513          	mv	a0,a5
  bc:	130000ef          	jal	1ec <transform>
  c0:	00050793          	mv	a5,a0
  c4:	faf42623          	sw	a5,-84(s0)
  c8:	fac42783          	lw	a5,-84(s0)
  cc:	00078593          	mv	a1,a5
  d0:	b0000537          	lui	a0,0xb0000
  d4:	094000ef          	jal	168 <write>
  d8:	00000013          	nop
  dc:	05c12083          	lw	ra,92(sp)
  e0:	05812283          	lw	t0,88(sp)
  e4:	05412303          	lw	t1,84(sp)
  e8:	05012383          	lw	t2,80(sp)
  ec:	04c12403          	lw	s0,76(sp)
  f0:	04812503          	lw	a0,72(sp)
  f4:	04412583          	lw	a1,68(sp)
  f8:	04012603          	lw	a2,64(sp)
  fc:	03c12683          	lw	a3,60(sp)
 100:	03812703          	lw	a4,56(sp)
 104:	03412783          	lw	a5,52(sp)
 108:	03012803          	lw	a6,48(sp)
 10c:	02c12883          	lw	a7,44(sp)
 110:	02812e03          	lw	t3,40(sp)
 114:	02412e83          	lw	t4,36(sp)
 118:	02012f03          	lw	t5,32(sp)
 11c:	01c12f83          	lw	t6,28(sp)
 120:	06010113          	addi	sp,sp,96
 124:	30200073          	mret

00000128 <wait>:
 128:	fe010113          	addi	sp,sp,-32
 12c:	00112e23          	sw	ra,28(sp)
 130:	00812c23          	sw	s0,24(sp)
 134:	02010413          	addi	s0,sp,32
 138:	fea42623          	sw	a0,-20(s0)
 13c:	00000013          	nop
 140:	fec42783          	lw	a5,-20(s0)
 144:	fff78713          	addi	a4,a5,-1
 148:	fee42623          	sw	a4,-20(s0)
 14c:	fe079ae3          	bnez	a5,140 <wait+0x18>
 150:	00000013          	nop
 154:	00000013          	nop
 158:	01c12083          	lw	ra,28(sp)
 15c:	01812403          	lw	s0,24(sp)
 160:	02010113          	addi	sp,sp,32
 164:	00008067          	ret

00000168 <write>:
 168:	fd010113          	addi	sp,sp,-48
 16c:	02112623          	sw	ra,44(sp)
 170:	02812423          	sw	s0,40(sp)
 174:	03010413          	addi	s0,sp,48
 178:	fca42e23          	sw	a0,-36(s0)
 17c:	fcb42c23          	sw	a1,-40(s0)
 180:	fdc42783          	lw	a5,-36(s0)
 184:	fef42623          	sw	a5,-20(s0)
 188:	fec42783          	lw	a5,-20(s0)
 18c:	fd842703          	lw	a4,-40(s0)
 190:	00e7a023          	sw	a4,0(a5)
 194:	00000013          	nop
 198:	02c12083          	lw	ra,44(sp)
 19c:	02812403          	lw	s0,40(sp)
 1a0:	03010113          	addi	sp,sp,48
 1a4:	00008067          	ret

000001a8 <read>:
 1a8:	fd010113          	addi	sp,sp,-48
 1ac:	02112623          	sw	ra,44(sp)
 1b0:	02812423          	sw	s0,40(sp)
 1b4:	03010413          	addi	s0,sp,48
 1b8:	fca42e23          	sw	a0,-36(s0)
 1bc:	fcb42c23          	sw	a1,-40(s0)
 1c0:	fdc42783          	lw	a5,-36(s0)
 1c4:	fef42623          	sw	a5,-20(s0)
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	0007a703          	lw	a4,0(a5)
 1d0:	fd842783          	lw	a5,-40(s0)
 1d4:	00e7a023          	sw	a4,0(a5)
 1d8:	00000013          	nop
 1dc:	02c12083          	lw	ra,44(sp)
 1e0:	02812403          	lw	s0,40(sp)
 1e4:	03010113          	addi	sp,sp,48
 1e8:	00008067          	ret

000001ec <transform>:
 1ec:	fd010113          	addi	sp,sp,-48
 1f0:	02112623          	sw	ra,44(sp)
 1f4:	02812423          	sw	s0,40(sp)
 1f8:	03010413          	addi	s0,sp,48
 1fc:	fca42e23          	sw	a0,-36(s0)
 200:	fe042623          	sw	zero,-20(s0)
 204:	fdc42703          	lw	a4,-36(s0)
 208:	0f000793          	li	a5,240
 20c:	00f71863          	bne	a4,a5,21c <transform+0x30>
 210:	0d0007b7          	lui	a5,0xd000
 214:	72178793          	addi	a5,a5,1825 # d000721 <__global_pointer$+0xcffe8e9>
 218:	0240006f          	j	23c <transform+0x50>
 21c:	fdc42783          	lw	a5,-36(s0)
 220:	00279793          	slli	a5,a5,0x2
 224:	10078793          	addi	a5,a5,256
 228:	fec40713          	addi	a4,s0,-20
 22c:	00070593          	mv	a1,a4
 230:	00078513          	mv	a0,a5
 234:	f75ff0ef          	jal	1a8 <read>
 238:	fec42783          	lw	a5,-20(s0)
 23c:	00078513          	mv	a0,a5
 240:	02c12083          	lw	ra,44(sp)
 244:	02812403          	lw	s0,40(sp)
 248:	03010113          	addi	sp,sp,48
 24c:	00008067          	ret

00000250 <displayAC>:
 250:	fe010113          	addi	sp,sp,-32
 254:	00112e23          	sw	ra,28(sp)
 258:	00812c23          	sw	s0,24(sp)
 25c:	02010413          	addi	s0,sp,32
 260:	fe040793          	addi	a5,s0,-32
 264:	00078593          	mv	a1,a5
 268:	00800513          	li	a0,8
 26c:	f3dff0ef          	jal	1a8 <read>
 270:	fe042783          	lw	a5,-32(s0)
 274:	00279793          	slli	a5,a5,0x2
 278:	01078793          	addi	a5,a5,16
 27c:	00078713          	mv	a4,a5
 280:	fe440793          	addi	a5,s0,-28
 284:	00078593          	mv	a1,a5
 288:	00070513          	mv	a0,a4
 28c:	f1dff0ef          	jal	1a8 <read>
 290:	fe442783          	lw	a5,-28(s0)
 294:	00078593          	mv	a1,a5
 298:	e0000537          	lui	a0,0xe0000
 29c:	ecdff0ef          	jal	168 <write>
 2a0:	fe442783          	lw	a5,-28(s0)
 2a4:	0ff7f793          	zext.b	a5,a5
 2a8:	fef42623          	sw	a5,-20(s0)
 2ac:	fe442783          	lw	a5,-28(s0)
 2b0:	0087d793          	srli	a5,a5,0x8
 2b4:	fef42423          	sw	a5,-24(s0)
 2b8:	fec42783          	lw	a5,-20(s0)
 2bc:	01879713          	slli	a4,a5,0x18
 2c0:	fe842783          	lw	a5,-24(s0)
 2c4:	00f767b3          	or	a5,a4,a5
 2c8:	fef42223          	sw	a5,-28(s0)
 2cc:	fe042783          	lw	a5,-32(s0)
 2d0:	00279793          	slli	a5,a5,0x2
 2d4:	01078793          	addi	a5,a5,16
 2d8:	00078713          	mv	a4,a5
 2dc:	fe442783          	lw	a5,-28(s0)
 2e0:	00078593          	mv	a1,a5
 2e4:	00070513          	mv	a0,a4
 2e8:	e81ff0ef          	jal	168 <write>
 2ec:	fe042783          	lw	a5,-32(s0)
 2f0:	00178793          	addi	a5,a5,1
 2f4:	00f7f793          	andi	a5,a5,15
 2f8:	00078593          	mv	a1,a5
 2fc:	00800513          	li	a0,8
 300:	e69ff0ef          	jal	168 <write>
 304:	0007a7b7          	lui	a5,0x7a
 308:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x782e8>
 30c:	e1dff0ef          	jal	128 <wait>
 310:	00000013          	nop
 314:	01c12083          	lw	ra,28(sp)
 318:	01812403          	lw	s0,24(sp)
 31c:	02010113          	addi	sp,sp,32
 320:	00008067          	ret

00000324 <initialize>:
 324:	fa010113          	addi	sp,sp,-96
 328:	04112e23          	sw	ra,92(sp)
 32c:	04812c23          	sw	s0,88(sp)
 330:	06010413          	addi	s0,sp,96
 334:	fff00793          	li	a5,-1
 338:	faf42623          	sw	a5,-84(s0)
 33c:	fffff7b7          	lui	a5,0xfffff
 340:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffd1c7>
 344:	faf42823          	sw	a5,-80(s0)
 348:	ffffd7b7          	lui	a5,0xffffd
 34c:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffb1c7>
 350:	faf42a23          	sw	a5,-76(s0)
 354:	ffffd7b7          	lui	a5,0xffffd
 358:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffb0c7>
 35c:	faf42c23          	sw	a5,-72(s0)
 360:	ffffd7b7          	lui	a5,0xffffd
 364:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffaec7>
 368:	faf42e23          	sw	a5,-68(s0)
 36c:	ffff97b7          	lui	a5,0xffff9
 370:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6ec7>
 374:	fcf42023          	sw	a5,-64(s0)
 378:	ffff97b7          	lui	a5,0xffff9
 37c:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff6ac7>
 380:	fcf42223          	sw	a5,-60(s0)
 384:	ffff97b7          	lui	a5,0xffff9
 388:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff6ac6>
 38c:	fcf42423          	sw	a5,-56(s0)
 390:	ffff97b7          	lui	a5,0xffff9
 394:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff6aa6>
 398:	fcf42623          	sw	a5,-52(s0)
 39c:	ffff97b7          	lui	a5,0xffff9
 3a0:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff6a96>
 3a4:	fcf42823          	sw	a5,-48(s0)
 3a8:	ffff97b7          	lui	a5,0xffff9
 3ac:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6a8e>
 3b0:	fcf42a23          	sw	a5,-44(s0)
 3b4:	fff00793          	li	a5,-1
 3b8:	fcf42c23          	sw	a5,-40(s0)
 3bc:	ffff97b7          	lui	a5,0xffff9
 3c0:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6a8e>
 3c4:	fcf42e23          	sw	a5,-36(s0)
 3c8:	fff00793          	li	a5,-1
 3cc:	fef42023          	sw	a5,-32(s0)
 3d0:	ffff97b7          	lui	a5,0xffff9
 3d4:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6a8e>
 3d8:	fef42223          	sw	a5,-28(s0)
 3dc:	7f7f87b7          	lui	a5,0x7f7f8
 3e0:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f6147>
 3e4:	fef42423          	sw	a5,-24(s0)
 3e8:	fe042623          	sw	zero,-20(s0)
 3ec:	03c0006f          	j	428 <initialize+0x104>
 3f0:	fec42783          	lw	a5,-20(s0)
 3f4:	00279793          	slli	a5,a5,0x2
 3f8:	01078693          	addi	a3,a5,16
 3fc:	fec42703          	lw	a4,-20(s0)
 400:	fac40793          	addi	a5,s0,-84
 404:	00271713          	slli	a4,a4,0x2
 408:	00f707b3          	add	a5,a4,a5
 40c:	0007a783          	lw	a5,0(a5)
 410:	00078593          	mv	a1,a5
 414:	00068513          	mv	a0,a3
 418:	d51ff0ef          	jal	168 <write>
 41c:	fec42783          	lw	a5,-20(s0)
 420:	00178793          	addi	a5,a5,1
 424:	fef42623          	sw	a5,-20(s0)
 428:	fec42703          	lw	a4,-20(s0)
 42c:	00f00793          	li	a5,15
 430:	fce7d0e3          	bge	a5,a4,3f0 <initialize+0xcc>
 434:	000bb7b7          	lui	a5,0xbb
 438:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb8bcc>
 43c:	16800513          	li	a0,360
 440:	d29ff0ef          	jal	168 <write>
 444:	000a67b7          	lui	a5,0xa6
 448:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa4610>
 44c:	18800513          	li	a0,392
 450:	d19ff0ef          	jal	168 <write>
 454:	000947b7          	lui	a5,0x94
 458:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x923de>
 45c:	18400513          	li	a0,388
 460:	d09ff0ef          	jal	168 <write>
 464:	0008c7b7          	lui	a5,0x8c
 468:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x89ee0>
 46c:	1a800513          	li	a0,424
 470:	cf9ff0ef          	jal	168 <write>
 474:	0007d7b7          	lui	a5,0x7d
 478:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7aaca>
 47c:	1c800513          	li	a0,456
 480:	ce9ff0ef          	jal	168 <write>
 484:	0006f7b7          	lui	a5,0x6f
 488:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6d159>
 48c:	1c400513          	li	a0,452
 490:	cd9ff0ef          	jal	168 <write>
 494:	000637b7          	lui	a5,0x63
 498:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x60fa2>
 49c:	1e800513          	li	a0,488
 4a0:	cc9ff0ef          	jal	168 <write>
 4a4:	0005d7b7          	lui	a5,0x5d
 4a8:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5b6ca>
 4ac:	17000513          	li	a0,368
 4b0:	cb9ff0ef          	jal	168 <write>
 4b4:	000537b7          	lui	a5,0x53
 4b8:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x513ec>
 4bc:	16c00513          	li	a0,364
 4c0:	ca9ff0ef          	jal	168 <write>
 4c4:	0004a7b7          	lui	a5,0x4a
 4c8:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x482d3>
 4cc:	18c00513          	li	a0,396
 4d0:	c99ff0ef          	jal	168 <write>
 4d4:	000467b7          	lui	a5,0x46
 4d8:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x44054>
 4dc:	1ac00513          	li	a0,428
 4e0:	c89ff0ef          	jal	168 <write>
 4e4:	0003e7b7          	lui	a5,0x3e
 4e8:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3c649>
 4ec:	1d000513          	li	a0,464
 4f0:	c79ff0ef          	jal	168 <write>
 4f4:	000377b7          	lui	a5,0x37
 4f8:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x35991>
 4fc:	1cc00513          	li	a0,460
 500:	c69ff0ef          	jal	168 <write>
 504:	000317b7          	lui	a5,0x31
 508:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f8b5>
 50c:	1ec00513          	li	a0,492
 510:	c59ff0ef          	jal	168 <write>
 514:	0002f7b7          	lui	a5,0x2f
 518:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2cc51>
 51c:	15400513          	li	a0,340
 520:	c49ff0ef          	jal	168 <write>
 524:	0002a7b7          	lui	a5,0x2a
 528:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x27ada>
 52c:	17400513          	li	a0,372
 530:	c39ff0ef          	jal	168 <write>
 534:	000257b7          	lui	a5,0x25
 538:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x2324e>
 53c:	19000513          	li	a0,400
 540:	c29ff0ef          	jal	168 <write>
 544:	000237b7          	lui	a5,0x23
 548:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x2110e>
 54c:	1b400513          	li	a0,436
 550:	c19ff0ef          	jal	168 <write>
 554:	0001f7b7          	lui	a5,0x1f
 558:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1d409>
 55c:	1b000513          	li	a0,432
 560:	c09ff0ef          	jal	168 <write>
 564:	0001c7b7          	lui	a5,0x1c
 568:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x19dac>
 56c:	1d400513          	li	a0,468
 570:	bf9ff0ef          	jal	168 <write>
 574:	000197b7          	lui	a5,0x19
 578:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x16d3f>
 57c:	1f000513          	li	a0,496
 580:	be9ff0ef          	jal	168 <write>
 584:	00000593          	li	a1,0
 588:	00800513          	li	a0,8
 58c:	bddff0ef          	jal	168 <write>
 590:	fff00593          	li	a1,-1
 594:	e0000537          	lui	a0,0xe0000
 598:	bd1ff0ef          	jal	168 <write>
 59c:	00000013          	nop
 5a0:	05c12083          	lw	ra,92(sp)
 5a4:	05812403          	lw	s0,88(sp)
 5a8:	06010113          	addi	sp,sp,96
 5ac:	00008067          	ret

000005b0 <main>:
 5b0:	fe010113          	addi	sp,sp,-32
 5b4:	00112e23          	sw	ra,28(sp)
 5b8:	00812c23          	sw	s0,24(sp)
 5bc:	02010413          	addi	s0,sp,32
 5c0:	fe042623          	sw	zero,-20(s0)
 5c4:	d61ff0ef          	jal	324 <initialize>
 5c8:	fec40793          	addi	a5,s0,-20
 5cc:	00078593          	mv	a1,a5
 5d0:	f0000537          	lui	a0,0xf0000
 5d4:	bd5ff0ef          	jal	1a8 <read>
 5d8:	fec42783          	lw	a5,-20(s0)
 5dc:	00279793          	slli	a5,a5,0x2
 5e0:	00078593          	mv	a1,a5
 5e4:	f0000537          	lui	a0,0xf0000
 5e8:	b81ff0ef          	jal	168 <write>
 5ec:	02c0006f          	j	618 <main+0x68>
 5f0:	c61ff0ef          	jal	250 <displayAC>
 5f4:	fec40793          	addi	a5,s0,-20
 5f8:	00078593          	mv	a1,a5
 5fc:	f0000537          	lui	a0,0xf0000
 600:	ba9ff0ef          	jal	1a8 <read>
 604:	fec42783          	lw	a5,-20(s0)
 608:	00279793          	slli	a5,a5,0x2
 60c:	00078593          	mv	a1,a5
 610:	f0000537          	lui	a0,0xf0000
 614:	b55ff0ef          	jal	168 <write>
 618:	fec42703          	lw	a4,-20(s0)
 61c:	000107b7          	lui	a5,0x10
 620:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xe0c8>
 624:	00f77733          	and	a4,a4,a5
 628:	000107b7          	lui	a5,0x10
 62c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xe0c8>
 630:	fcf700e3          	beq	a4,a5,5f0 <main+0x40>
 634:	f95ff06f          	j	5c8 <main+0x18>
