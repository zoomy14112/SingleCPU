
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000040 <Entry>:
  40:	ff010113          	addi	sp,sp,-16
  44:	00112623          	sw	ra,12(sp)
  48:	00812423          	sw	s0,8(sp)
  4c:	01010413          	addi	s0,sp,16
  50:	64000113          	li	sp,1600
  54:	4fd000ef          	jal	d50 <main>
  58:	0000006f          	j	58 <Entry+0x18>

0000005c <keyboard_handler>:
  5c:	fb010113          	addi	sp,sp,-80
  60:	04112623          	sw	ra,76(sp)
  64:	04512423          	sw	t0,72(sp)
  68:	04612223          	sw	t1,68(sp)
  6c:	04712023          	sw	t2,64(sp)
  70:	02812e23          	sw	s0,60(sp)
  74:	02a12c23          	sw	a0,56(sp)
  78:	02b12a23          	sw	a1,52(sp)
  7c:	02c12823          	sw	a2,48(sp)
  80:	02d12623          	sw	a3,44(sp)
  84:	02e12423          	sw	a4,40(sp)
  88:	02f12223          	sw	a5,36(sp)
  8c:	03012023          	sw	a6,32(sp)
  90:	01112e23          	sw	a7,28(sp)
  94:	01c12c23          	sw	t3,24(sp)
  98:	01d12a23          	sw	t4,20(sp)
  9c:	01e12823          	sw	t5,16(sp)
  a0:	01f12623          	sw	t6,12(sp)
  a4:	05010413          	addi	s0,sp,80
  a8:	7a8000ef          	jal	850 <keyboard>
  ac:	04c12083          	lw	ra,76(sp)
  b0:	04812283          	lw	t0,72(sp)
  b4:	04412303          	lw	t1,68(sp)
  b8:	04012383          	lw	t2,64(sp)
  bc:	03c12403          	lw	s0,60(sp)
  c0:	03812503          	lw	a0,56(sp)
  c4:	03412583          	lw	a1,52(sp)
  c8:	03012603          	lw	a2,48(sp)
  cc:	02c12683          	lw	a3,44(sp)
  d0:	02812703          	lw	a4,40(sp)
  d4:	02412783          	lw	a5,36(sp)
  d8:	02012803          	lw	a6,32(sp)
  dc:	01c12883          	lw	a7,28(sp)
  e0:	01812e03          	lw	t3,24(sp)
  e4:	01412e83          	lw	t4,20(sp)
  e8:	01012f03          	lw	t5,16(sp)
  ec:	00c12f83          	lw	t6,12(sp)
  f0:	05010113          	addi	sp,sp,80
  f4:	30200073          	mret

000000f8 <button_handler>:
  f8:	fb010113          	addi	sp,sp,-80
  fc:	04112623          	sw	ra,76(sp)
 100:	04512423          	sw	t0,72(sp)
 104:	04612223          	sw	t1,68(sp)
 108:	04712023          	sw	t2,64(sp)
 10c:	02812e23          	sw	s0,60(sp)
 110:	02a12c23          	sw	a0,56(sp)
 114:	02b12a23          	sw	a1,52(sp)
 118:	02c12823          	sw	a2,48(sp)
 11c:	02d12623          	sw	a3,44(sp)
 120:	02e12423          	sw	a4,40(sp)
 124:	02f12223          	sw	a5,36(sp)
 128:	03012023          	sw	a6,32(sp)
 12c:	01112e23          	sw	a7,28(sp)
 130:	01c12c23          	sw	t3,24(sp)
 134:	01d12a23          	sw	t4,20(sp)
 138:	01e12823          	sw	t5,16(sp)
 13c:	01f12623          	sw	t6,12(sp)
 140:	05010413          	addi	s0,sp,80
 144:	1a8000ef          	jal	2ec <button>
 148:	04c12083          	lw	ra,76(sp)
 14c:	04812283          	lw	t0,72(sp)
 150:	04412303          	lw	t1,68(sp)
 154:	04012383          	lw	t2,64(sp)
 158:	03c12403          	lw	s0,60(sp)
 15c:	03812503          	lw	a0,56(sp)
 160:	03412583          	lw	a1,52(sp)
 164:	03012603          	lw	a2,48(sp)
 168:	02c12683          	lw	a3,44(sp)
 16c:	02812703          	lw	a4,40(sp)
 170:	02412783          	lw	a5,36(sp)
 174:	02012803          	lw	a6,32(sp)
 178:	01c12883          	lw	a7,28(sp)
 17c:	01812e03          	lw	t3,24(sp)
 180:	01412e83          	lw	t4,20(sp)
 184:	01012f03          	lw	t5,16(sp)
 188:	00c12f83          	lw	t6,12(sp)
 18c:	05010113          	addi	sp,sp,80
 190:	30200073          	mret

00000194 <counter_handler>:
 194:	fb010113          	addi	sp,sp,-80
 198:	04112623          	sw	ra,76(sp)
 19c:	04512423          	sw	t0,72(sp)
 1a0:	04612223          	sw	t1,68(sp)
 1a4:	04712023          	sw	t2,64(sp)
 1a8:	02812e23          	sw	s0,60(sp)
 1ac:	02a12c23          	sw	a0,56(sp)
 1b0:	02b12a23          	sw	a1,52(sp)
 1b4:	02c12823          	sw	a2,48(sp)
 1b8:	02d12623          	sw	a3,44(sp)
 1bc:	02e12423          	sw	a4,40(sp)
 1c0:	02f12223          	sw	a5,36(sp)
 1c4:	03012023          	sw	a6,32(sp)
 1c8:	01112e23          	sw	a7,28(sp)
 1cc:	01c12c23          	sw	t3,24(sp)
 1d0:	01d12a23          	sw	t4,20(sp)
 1d4:	01e12823          	sw	t5,16(sp)
 1d8:	01f12623          	sw	t6,12(sp)
 1dc:	05010413          	addi	s0,sp,80
 1e0:	14c000ef          	jal	32c <counter>
 1e4:	04c12083          	lw	ra,76(sp)
 1e8:	04812283          	lw	t0,72(sp)
 1ec:	04412303          	lw	t1,68(sp)
 1f0:	04012383          	lw	t2,64(sp)
 1f4:	03c12403          	lw	s0,60(sp)
 1f8:	03812503          	lw	a0,56(sp)
 1fc:	03412583          	lw	a1,52(sp)
 200:	03012603          	lw	a2,48(sp)
 204:	02c12683          	lw	a3,44(sp)
 208:	02812703          	lw	a4,40(sp)
 20c:	02412783          	lw	a5,36(sp)
 210:	02012803          	lw	a6,32(sp)
 214:	01c12883          	lw	a7,28(sp)
 218:	01812e03          	lw	t3,24(sp)
 21c:	01412e83          	lw	t4,20(sp)
 220:	01012f03          	lw	t5,16(sp)
 224:	00c12f83          	lw	t6,12(sp)
 228:	05010113          	addi	sp,sp,80
 22c:	30200073          	mret

00000230 <wait>:
 230:	fe010113          	addi	sp,sp,-32
 234:	00112e23          	sw	ra,28(sp)
 238:	00812c23          	sw	s0,24(sp)
 23c:	02010413          	addi	s0,sp,32
 240:	fea42623          	sw	a0,-20(s0)
 244:	fec42783          	lw	a5,-20(s0)
 248:	fff78793          	addi	a5,a5,-1
 24c:	fe079ee3          	bnez	a5,248 <wait+0x18>
 250:	fef42623          	sw	a5,-20(s0)
 254:	00000013          	nop
 258:	01c12083          	lw	ra,28(sp)
 25c:	01812403          	lw	s0,24(sp)
 260:	02010113          	addi	sp,sp,32
 264:	00008067          	ret

00000268 <read>:
 268:	fd010113          	addi	sp,sp,-48
 26c:	02112623          	sw	ra,44(sp)
 270:	02812423          	sw	s0,40(sp)
 274:	03010413          	addi	s0,sp,48
 278:	fca42e23          	sw	a0,-36(s0)
 27c:	fcb42c23          	sw	a1,-40(s0)
 280:	fdc42783          	lw	a5,-36(s0)
 284:	fef42623          	sw	a5,-20(s0)
 288:	fec42783          	lw	a5,-20(s0)
 28c:	0007a703          	lw	a4,0(a5)
 290:	fd842783          	lw	a5,-40(s0)
 294:	00e7a023          	sw	a4,0(a5)
 298:	00000013          	nop
 29c:	02c12083          	lw	ra,44(sp)
 2a0:	02812403          	lw	s0,40(sp)
 2a4:	03010113          	addi	sp,sp,48
 2a8:	00008067          	ret

000002ac <write>:
 2ac:	fd010113          	addi	sp,sp,-48
 2b0:	02112623          	sw	ra,44(sp)
 2b4:	02812423          	sw	s0,40(sp)
 2b8:	03010413          	addi	s0,sp,48
 2bc:	fca42e23          	sw	a0,-36(s0)
 2c0:	fcb42c23          	sw	a1,-40(s0)
 2c4:	fdc42783          	lw	a5,-36(s0)
 2c8:	fef42623          	sw	a5,-20(s0)
 2cc:	fec42783          	lw	a5,-20(s0)
 2d0:	fd842703          	lw	a4,-40(s0)
 2d4:	00e7a023          	sw	a4,0(a5)
 2d8:	00000013          	nop
 2dc:	02c12083          	lw	ra,44(sp)
 2e0:	02812403          	lw	s0,40(sp)
 2e4:	03010113          	addi	sp,sp,48
 2e8:	00008067          	ret

000002ec <button>:
 2ec:	ff010113          	addi	sp,sp,-16
 2f0:	00112623          	sw	ra,12(sp)
 2f4:	00812423          	sw	s0,8(sp)
 2f8:	01010413          	addi	s0,sp,16
 2fc:	000027b7          	lui	a5,0x2
 300:	00100713          	li	a4,1
 304:	dee7aa23          	sw	a4,-524(a5) # 1df4 <__DATA_BEGIN__>
 308:	192617b7          	lui	a5,0x19261
 30c:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e223>
 310:	e0000537          	lui	a0,0xe0000
 314:	f99ff0ef          	jal	2ac <write>
 318:	00000013          	nop
 31c:	00c12083          	lw	ra,12(sp)
 320:	00812403          	lw	s0,8(sp)
 324:	01010113          	addi	sp,sp,16
 328:	00008067          	ret

0000032c <counter>:
 32c:	fe010113          	addi	sp,sp,-32
 330:	00112e23          	sw	ra,28(sp)
 334:	00812c23          	sw	s0,24(sp)
 338:	02010413          	addi	s0,sp,32
 33c:	fec40793          	addi	a5,s0,-20
 340:	00078593          	mv	a1,a5
 344:	f8000537          	lui	a0,0xf8000
 348:	f21ff0ef          	jal	268 <read>
 34c:	fec42783          	lw	a5,-20(s0)
 350:	00279793          	slli	a5,a5,0x2
 354:	00078593          	mv	a1,a5
 358:	ec000537          	lui	a0,0xec000
 35c:	f51ff0ef          	jal	2ac <write>
 360:	00000013          	nop
 364:	01c12083          	lw	ra,28(sp)
 368:	01812403          	lw	s0,24(sp)
 36c:	02010113          	addi	sp,sp,32
 370:	00008067          	ret

00000374 <transform>:
 374:	fd010113          	addi	sp,sp,-48
 378:	02112623          	sw	ra,44(sp)
 37c:	02812423          	sw	s0,40(sp)
 380:	03010413          	addi	s0,sp,48
 384:	fca42e23          	sw	a0,-36(s0)
 388:	fe042623          	sw	zero,-20(s0)
 38c:	fdc42703          	lw	a4,-36(s0)
 390:	03f00793          	li	a5,63
 394:	00e7d663          	bge	a5,a4,3a0 <transform+0x2c>
 398:	00000793          	li	a5,0
 39c:	0240006f          	j	3c0 <transform+0x4c>
 3a0:	fdc42783          	lw	a5,-36(s0)
 3a4:	00279793          	slli	a5,a5,0x2
 3a8:	20078793          	addi	a5,a5,512
 3ac:	fec40713          	addi	a4,s0,-20
 3b0:	00070593          	mv	a1,a4
 3b4:	00078513          	mv	a0,a5
 3b8:	eb1ff0ef          	jal	268 <read>
 3bc:	fec42783          	lw	a5,-20(s0)
 3c0:	00078513          	mv	a0,a5
 3c4:	02c12083          	lw	ra,44(sp)
 3c8:	02812403          	lw	s0,40(sp)
 3cc:	03010113          	addi	sp,sp,48
 3d0:	00008067          	ret

000003d4 <displayAC>:
 3d4:	fe010113          	addi	sp,sp,-32
 3d8:	00112e23          	sw	ra,28(sp)
 3dc:	00812c23          	sw	s0,24(sp)
 3e0:	02010413          	addi	s0,sp,32
 3e4:	fe040793          	addi	a5,s0,-32
 3e8:	00078593          	mv	a1,a5
 3ec:	06000513          	li	a0,96
 3f0:	e79ff0ef          	jal	268 <read>
 3f4:	fe042783          	lw	a5,-32(s0)
 3f8:	00279793          	slli	a5,a5,0x2
 3fc:	10078793          	addi	a5,a5,256
 400:	00078713          	mv	a4,a5
 404:	fe440793          	addi	a5,s0,-28
 408:	00078593          	mv	a1,a5
 40c:	00070513          	mv	a0,a4
 410:	e59ff0ef          	jal	268 <read>
 414:	fe442783          	lw	a5,-28(s0)
 418:	00078593          	mv	a1,a5
 41c:	e0000537          	lui	a0,0xe0000
 420:	e8dff0ef          	jal	2ac <write>
 424:	fe442783          	lw	a5,-28(s0)
 428:	0ff7f793          	zext.b	a5,a5
 42c:	fef42623          	sw	a5,-20(s0)
 430:	fe442783          	lw	a5,-28(s0)
 434:	0087d793          	srli	a5,a5,0x8
 438:	fef42423          	sw	a5,-24(s0)
 43c:	fec42783          	lw	a5,-20(s0)
 440:	01879713          	slli	a4,a5,0x18
 444:	fe842783          	lw	a5,-24(s0)
 448:	00f767b3          	or	a5,a4,a5
 44c:	fef42223          	sw	a5,-28(s0)
 450:	fe042783          	lw	a5,-32(s0)
 454:	00279793          	slli	a5,a5,0x2
 458:	10078793          	addi	a5,a5,256
 45c:	00078713          	mv	a4,a5
 460:	fe442783          	lw	a5,-28(s0)
 464:	00078593          	mv	a1,a5
 468:	00070513          	mv	a0,a4
 46c:	e41ff0ef          	jal	2ac <write>
 470:	fe042783          	lw	a5,-32(s0)
 474:	00178793          	addi	a5,a5,1
 478:	00f7f793          	andi	a5,a5,15
 47c:	00078593          	mv	a1,a5
 480:	06000513          	li	a0,96
 484:	e29ff0ef          	jal	2ac <write>
 488:	000f47b7          	lui	a5,0xf4
 48c:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1c4c>
 490:	da1ff0ef          	jal	230 <wait>
 494:	00000013          	nop
 498:	01c12083          	lw	ra,28(sp)
 49c:	01812403          	lw	s0,24(sp)
 4a0:	02010113          	addi	sp,sp,32
 4a4:	00008067          	ret

000004a8 <sd_push>:
 4a8:	fd010113          	addi	sp,sp,-48
 4ac:	02112623          	sw	ra,44(sp)
 4b0:	02812423          	sw	s0,40(sp)
 4b4:	03010413          	addi	s0,sp,48
 4b8:	fca42e23          	sw	a0,-36(s0)
 4bc:	00000593          	li	a1,0
 4c0:	e90007b7          	lui	a5,0xe9000
 4c4:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffda10>
 4c8:	de5ff0ef          	jal	2ac <write>
 4cc:	00300593          	li	a1,3
 4d0:	e9000537          	lui	a0,0xe9000
 4d4:	dd9ff0ef          	jal	2ac <write>
 4d8:	02faf7b7          	lui	a5,0x2faf
 4dc:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2faca8c>
 4e0:	fef42623          	sw	a5,-20(s0)
 4e4:	fe840793          	addi	a5,s0,-24
 4e8:	00078593          	mv	a1,a5
 4ec:	e9000537          	lui	a0,0xe9000
 4f0:	d79ff0ef          	jal	268 <read>
 4f4:	fec42783          	lw	a5,-20(s0)
 4f8:	fff78793          	addi	a5,a5,-1
 4fc:	fef42623          	sw	a5,-20(s0)
 500:	fe842783          	lw	a5,-24(s0)
 504:	0017f793          	andi	a5,a5,1
 508:	00078663          	beqz	a5,514 <sd_push+0x6c>
 50c:	fec42783          	lw	a5,-20(s0)
 510:	fcf04ae3          	bgtz	a5,4e4 <sd_push+0x3c>
 514:	fe842783          	lw	a5,-24(s0)
 518:	0027f793          	andi	a5,a5,2
 51c:	00078663          	beqz	a5,528 <sd_push+0x80>
 520:	00200793          	li	a5,2
 524:	0100006f          	j	534 <sd_push+0x8c>
 528:	fec42783          	lw	a5,-20(s0)
 52c:	0017b793          	seqz	a5,a5
 530:	0ff7f793          	zext.b	a5,a5
 534:	00078513          	mv	a0,a5
 538:	02c12083          	lw	ra,44(sp)
 53c:	02812403          	lw	s0,40(sp)
 540:	03010113          	addi	sp,sp,48
 544:	00008067          	ret

00000548 <sd_pull>:
 548:	fd010113          	addi	sp,sp,-48
 54c:	02112623          	sw	ra,44(sp)
 550:	02812423          	sw	s0,40(sp)
 554:	03010413          	addi	s0,sp,48
 558:	fca42e23          	sw	a0,-36(s0)
 55c:	00000593          	li	a1,0
 560:	e90007b7          	lui	a5,0xe9000
 564:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffda10>
 568:	d45ff0ef          	jal	2ac <write>
 56c:	00100593          	li	a1,1
 570:	e9000537          	lui	a0,0xe9000
 574:	d39ff0ef          	jal	2ac <write>
 578:	02faf7b7          	lui	a5,0x2faf
 57c:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2faca8c>
 580:	fef42623          	sw	a5,-20(s0)
 584:	fe840793          	addi	a5,s0,-24
 588:	00078593          	mv	a1,a5
 58c:	e9000537          	lui	a0,0xe9000
 590:	cd9ff0ef          	jal	268 <read>
 594:	fec42783          	lw	a5,-20(s0)
 598:	fff78793          	addi	a5,a5,-1
 59c:	fef42623          	sw	a5,-20(s0)
 5a0:	fe842783          	lw	a5,-24(s0)
 5a4:	0017f793          	andi	a5,a5,1
 5a8:	00078663          	beqz	a5,5b4 <sd_pull+0x6c>
 5ac:	fec42783          	lw	a5,-20(s0)
 5b0:	fcf04ae3          	bgtz	a5,584 <sd_pull+0x3c>
 5b4:	fe842783          	lw	a5,-24(s0)
 5b8:	0027f793          	andi	a5,a5,2
 5bc:	00078663          	beqz	a5,5c8 <sd_pull+0x80>
 5c0:	00200793          	li	a5,2
 5c4:	0100006f          	j	5d4 <sd_pull+0x8c>
 5c8:	fec42783          	lw	a5,-20(s0)
 5cc:	0017b793          	seqz	a5,a5
 5d0:	0ff7f793          	zext.b	a5,a5
 5d4:	00078513          	mv	a0,a5
 5d8:	02c12083          	lw	ra,44(sp)
 5dc:	02812403          	lw	s0,40(sp)
 5e0:	03010113          	addi	sp,sp,48
 5e4:	00008067          	ret

000005e8 <sd_clear>:
 5e8:	fe010113          	addi	sp,sp,-32
 5ec:	00112e23          	sw	ra,28(sp)
 5f0:	00812c23          	sw	s0,24(sp)
 5f4:	02010413          	addi	s0,sp,32
 5f8:	fe042623          	sw	zero,-20(s0)
 5fc:	0300006f          	j	62c <sd_clear+0x44>
 600:	fec42583          	lw	a1,-20(s0)
 604:	e90007b7          	lui	a5,0xe9000
 608:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffda18>
 60c:	ca1ff0ef          	jal	2ac <write>
 610:	00000593          	li	a1,0
 614:	e90007b7          	lui	a5,0xe9000
 618:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffda14>
 61c:	c91ff0ef          	jal	2ac <write>
 620:	fec42783          	lw	a5,-20(s0)
 624:	00178793          	addi	a5,a5,1
 628:	fef42623          	sw	a5,-20(s0)
 62c:	fec42703          	lw	a4,-20(s0)
 630:	07f00793          	li	a5,127
 634:	fce7d6e3          	bge	a5,a4,600 <sd_clear+0x18>
 638:	00000513          	li	a0,0
 63c:	e6dff0ef          	jal	4a8 <sd_push>
 640:	00050793          	mv	a5,a0
 644:	00078c63          	beqz	a5,65c <sd_clear+0x74>
 648:	0d00e7b7          	lui	a5,0xd00e
 64c:	40378593          	addi	a1,a5,1027 # d00e403 <__global_pointer$+0xd00be0f>
 650:	e0000537          	lui	a0,0xe0000
 654:	c59ff0ef          	jal	2ac <write>
 658:	0140006f          	j	66c <sd_clear+0x84>
 65c:	072107b7          	lui	a5,0x7210
 660:	72178593          	addi	a1,a5,1825 # 7210721 <__global_pointer$+0x720e12d>
 664:	e0000537          	lui	a0,0xe0000
 668:	c45ff0ef          	jal	2ac <write>
 66c:	00000013          	nop
 670:	01c12083          	lw	ra,28(sp)
 674:	01812403          	lw	s0,24(sp)
 678:	02010113          	addi	sp,sp,32
 67c:	00008067          	ret

00000680 <sd_test>:
 680:	fd010113          	addi	sp,sp,-48
 684:	02112623          	sw	ra,44(sp)
 688:	02812423          	sw	s0,40(sp)
 68c:	03010413          	addi	s0,sp,48
 690:	008b57b7          	lui	a5,0x8b5
 694:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2b85>
 698:	e0000537          	lui	a0,0xe0000
 69c:	c11ff0ef          	jal	2ac <write>
 6a0:	fe042623          	sw	zero,-20(s0)
 6a4:	0600006f          	j	704 <sd_test+0x84>
 6a8:	fec42783          	lw	a5,-20(s0)
 6ac:	0017f793          	andi	a5,a5,1
 6b0:	00078663          	beqz	a5,6bc <sd_test+0x3c>
 6b4:	072107b7          	lui	a5,0x7210
 6b8:	0080006f          	j	6c0 <sd_test+0x40>
 6bc:	dead07b7          	lui	a5,0xdead0
 6c0:	fec42703          	lw	a4,-20(s0)
 6c4:	00e7e7b3          	or	a5,a5,a4
 6c8:	fef42223          	sw	a5,-28(s0)
 6cc:	fec42583          	lw	a1,-20(s0)
 6d0:	e90007b7          	lui	a5,0xe9000
 6d4:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffda18>
 6d8:	bd5ff0ef          	jal	2ac <write>
 6dc:	fe442583          	lw	a1,-28(s0)
 6e0:	60000513          	li	a0,1536
 6e4:	bc9ff0ef          	jal	2ac <write>
 6e8:	fe442583          	lw	a1,-28(s0)
 6ec:	e90007b7          	lui	a5,0xe9000
 6f0:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffda14>
 6f4:	bb9ff0ef          	jal	2ac <write>
 6f8:	fec42783          	lw	a5,-20(s0)
 6fc:	00178793          	addi	a5,a5,1
 700:	fef42623          	sw	a5,-20(s0)
 704:	fec42703          	lw	a4,-20(s0)
 708:	07f00793          	li	a5,127
 70c:	f8e7dee3          	bge	a5,a4,6a8 <sd_test+0x28>
 710:	00000513          	li	a0,0
 714:	d95ff0ef          	jal	4a8 <sd_push>
 718:	00050793          	mv	a5,a0
 71c:	00078c63          	beqz	a5,734 <sd_test+0xb4>
 720:	0d00e7b7          	lui	a5,0xd00e
 724:	40178593          	addi	a1,a5,1025 # d00e401 <__global_pointer$+0xd00be0d>
 728:	e0000537          	lui	a0,0xe0000
 72c:	b81ff0ef          	jal	2ac <write>
 730:	1100006f          	j	840 <sd_test+0x1c0>
 734:	000187b7          	lui	a5,0x18
 738:	6a078513          	addi	a0,a5,1696 # 186a0 <__global_pointer$+0x160ac>
 73c:	af5ff0ef          	jal	230 <wait>
 740:	00000513          	li	a0,0
 744:	e05ff0ef          	jal	548 <sd_pull>
 748:	00050793          	mv	a5,a0
 74c:	00078c63          	beqz	a5,764 <sd_test+0xe4>
 750:	0d00e7b7          	lui	a5,0xd00e
 754:	40278593          	addi	a1,a5,1026 # d00e402 <__global_pointer$+0xd00be0e>
 758:	e0000537          	lui	a0,0xe0000
 75c:	b51ff0ef          	jal	2ac <write>
 760:	0e00006f          	j	840 <sd_test+0x1c0>
 764:	000187b7          	lui	a5,0x18
 768:	6a078513          	addi	a0,a5,1696 # 186a0 <__global_pointer$+0x160ac>
 76c:	ac5ff0ef          	jal	230 <wait>
 770:	fe042423          	sw	zero,-24(s0)
 774:	fe042623          	sw	zero,-20(s0)
 778:	0a00006f          	j	818 <sd_test+0x198>
 77c:	fec42583          	lw	a1,-20(s0)
 780:	e90007b7          	lui	a5,0xe9000
 784:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffda18>
 788:	b25ff0ef          	jal	2ac <write>
 78c:	fe040793          	addi	a5,s0,-32
 790:	00078593          	mv	a1,a5
 794:	e90007b7          	lui	a5,0xe9000
 798:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffda14>
 79c:	acdff0ef          	jal	268 <read>
 7a0:	fdc40793          	addi	a5,s0,-36
 7a4:	00078593          	mv	a1,a5
 7a8:	60000513          	li	a0,1536
 7ac:	abdff0ef          	jal	268 <read>
 7b0:	fe042703          	lw	a4,-32(s0)
 7b4:	fdc42783          	lw	a5,-36(s0)
 7b8:	02f70863          	beq	a4,a5,7e8 <sd_test+0x168>
 7bc:	fe842783          	lw	a5,-24(s0)
 7c0:	00178793          	addi	a5,a5,1
 7c4:	fef42423          	sw	a5,-24(s0)
 7c8:	fe042783          	lw	a5,-32(s0)
 7cc:	00078593          	mv	a1,a5
 7d0:	e0000537          	lui	a0,0xe0000
 7d4:	ad9ff0ef          	jal	2ac <write>
 7d8:	000f47b7          	lui	a5,0xf4
 7dc:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1c4c>
 7e0:	a51ff0ef          	jal	230 <wait>
 7e4:	0280006f          	j	80c <sd_test+0x18c>
 7e8:	fec42703          	lw	a4,-20(s0)
 7ec:	9a5507b7          	lui	a5,0x9a550
 7f0:	00f767b3          	or	a5,a4,a5
 7f4:	00078593          	mv	a1,a5
 7f8:	e0000537          	lui	a0,0xe0000
 7fc:	ab1ff0ef          	jal	2ac <write>
 800:	000f47b7          	lui	a5,0xf4
 804:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1c4c>
 808:	a29ff0ef          	jal	230 <wait>
 80c:	fec42783          	lw	a5,-20(s0)
 810:	00178793          	addi	a5,a5,1
 814:	fef42623          	sw	a5,-20(s0)
 818:	fec42703          	lw	a4,-20(s0)
 81c:	07f00793          	li	a5,127
 820:	f4e7dee3          	bge	a5,a4,77c <sd_test+0xfc>
 824:	fe842703          	lw	a4,-24(s0)
 828:	0000b7b7          	lui	a5,0xb
 82c:	00b78793          	addi	a5,a5,11 # b00b <__global_pointer$+0x8a17>
 830:	00f767b3          	or	a5,a4,a5
 834:	00078593          	mv	a1,a5
 838:	e0000537          	lui	a0,0xe0000
 83c:	a71ff0ef          	jal	2ac <write>
 840:	02c12083          	lw	ra,44(sp)
 844:	02812403          	lw	s0,40(sp)
 848:	03010113          	addi	sp,sp,48
 84c:	00008067          	ret

00000850 <keyboard>:
 850:	fe010113          	addi	sp,sp,-32
 854:	00112e23          	sw	ra,28(sp)
 858:	00812c23          	sw	s0,24(sp)
 85c:	02010413          	addi	s0,sp,32
 860:	fe042223          	sw	zero,-28(s0)
 864:	fec40793          	addi	a5,s0,-20
 868:	00078593          	mv	a1,a5
 86c:	f4000537          	lui	a0,0xf4000
 870:	9f9ff0ef          	jal	268 <read>
 874:	fe840793          	addi	a5,s0,-24
 878:	00078593          	mv	a1,a5
 87c:	07000513          	li	a0,112
 880:	9e9ff0ef          	jal	268 <read>
 884:	fe440793          	addi	a5,s0,-28
 888:	00078593          	mv	a1,a5
 88c:	08000513          	li	a0,128
 890:	9d9ff0ef          	jal	268 <read>
 894:	fec42783          	lw	a5,-20(s0)
 898:	0ff7f793          	zext.b	a5,a5
 89c:	fef42623          	sw	a5,-20(s0)
 8a0:	fec42703          	lw	a4,-20(s0)
 8a4:	0f000793          	li	a5,240
 8a8:	00f71a63          	bne	a4,a5,8bc <keyboard+0x6c>
 8ac:	00100593          	li	a1,1
 8b0:	08000513          	li	a0,128
 8b4:	9f9ff0ef          	jal	2ac <write>
 8b8:	1940006f          	j	a4c <keyboard+0x1fc>
 8bc:	fe442703          	lw	a4,-28(s0)
 8c0:	00100793          	li	a5,1
 8c4:	00f71a63          	bne	a4,a5,8d8 <keyboard+0x88>
 8c8:	00000593          	li	a1,0
 8cc:	08000513          	li	a0,128
 8d0:	9ddff0ef          	jal	2ac <write>
 8d4:	1780006f          	j	a4c <keyboard+0x1fc>
 8d8:	fec42703          	lw	a4,-20(s0)
 8dc:	05a00793          	li	a5,90
 8e0:	02f71263          	bne	a4,a5,904 <keyboard+0xb4>
 8e4:	000027b7          	lui	a5,0x2
 8e8:	00100713          	li	a4,1
 8ec:	dee7aa23          	sw	a4,-524(a5) # 1df4 <__DATA_BEGIN__>
 8f0:	008b57b7          	lui	a5,0x8b5
 8f4:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2b85>
 8f8:	e0000537          	lui	a0,0xe0000
 8fc:	9b1ff0ef          	jal	2ac <write>
 900:	14c0006f          	j	a4c <keyboard+0x1fc>
 904:	fec42703          	lw	a4,-20(s0)
 908:	07600793          	li	a5,118
 90c:	00f71c63          	bne	a4,a5,924 <keyboard+0xd4>
 910:	cd9ff0ef          	jal	5e8 <sd_clear>
 914:	00000593          	li	a1,0
 918:	e0000537          	lui	a0,0xe0000
 91c:	991ff0ef          	jal	2ac <write>
 920:	12c0006f          	j	a4c <keyboard+0x1fc>
 924:	fec42703          	lw	a4,-20(s0)
 928:	00d00793          	li	a5,13
 92c:	00f71c63          	bne	a4,a5,944 <keyboard+0xf4>
 930:	fe842783          	lw	a5,-24(s0)
 934:	00078593          	mv	a1,a5
 938:	e0000537          	lui	a0,0xe0000
 93c:	971ff0ef          	jal	2ac <write>
 940:	10c0006f          	j	a4c <keyboard+0x1fc>
 944:	fec42703          	lw	a4,-20(s0)
 948:	04e00793          	li	a5,78
 94c:	04f71a63          	bne	a4,a5,9a0 <keyboard+0x150>
 950:	fe842703          	lw	a4,-24(s0)
 954:	00100793          	li	a5,1
 958:	00e7fa63          	bgeu	a5,a4,96c <keyboard+0x11c>
 95c:	fe842783          	lw	a5,-24(s0)
 960:	fff78793          	addi	a5,a5,-1
 964:	01f7f793          	andi	a5,a5,31
 968:	fef42423          	sw	a5,-24(s0)
 96c:	fe842783          	lw	a5,-24(s0)
 970:	00078593          	mv	a1,a5
 974:	07000513          	li	a0,112
 978:	935ff0ef          	jal	2ac <write>
 97c:	fe842783          	lw	a5,-24(s0)
 980:	00078593          	mv	a1,a5
 984:	e5000537          	lui	a0,0xe5000
 988:	925ff0ef          	jal	2ac <write>
 98c:	fe842783          	lw	a5,-24(s0)
 990:	00078593          	mv	a1,a5
 994:	e0000537          	lui	a0,0xe0000
 998:	915ff0ef          	jal	2ac <write>
 99c:	0b00006f          	j	a4c <keyboard+0x1fc>
 9a0:	fec42703          	lw	a4,-20(s0)
 9a4:	05500793          	li	a5,85
 9a8:	04f71a63          	bne	a4,a5,9fc <keyboard+0x1ac>
 9ac:	fe842703          	lw	a4,-24(s0)
 9b0:	00f00793          	li	a5,15
 9b4:	00e7ea63          	bltu	a5,a4,9c8 <keyboard+0x178>
 9b8:	fe842783          	lw	a5,-24(s0)
 9bc:	00178793          	addi	a5,a5,1
 9c0:	01f7f793          	andi	a5,a5,31
 9c4:	fef42423          	sw	a5,-24(s0)
 9c8:	fe842783          	lw	a5,-24(s0)
 9cc:	00078593          	mv	a1,a5
 9d0:	07000513          	li	a0,112
 9d4:	8d9ff0ef          	jal	2ac <write>
 9d8:	fe842783          	lw	a5,-24(s0)
 9dc:	00078593          	mv	a1,a5
 9e0:	e5000537          	lui	a0,0xe5000
 9e4:	8c9ff0ef          	jal	2ac <write>
 9e8:	fe842783          	lw	a5,-24(s0)
 9ec:	00078593          	mv	a1,a5
 9f0:	e0000537          	lui	a0,0xe0000
 9f4:	8b9ff0ef          	jal	2ac <write>
 9f8:	0540006f          	j	a4c <keyboard+0x1fc>
 9fc:	fe042423          	sw	zero,-24(s0)
 a00:	fec42703          	lw	a4,-20(s0)
 a04:	03f00793          	li	a5,63
 a08:	02e7e463          	bltu	a5,a4,a30 <keyboard+0x1e0>
 a0c:	fec42783          	lw	a5,-20(s0)
 a10:	00078513          	mv	a0,a5
 a14:	961ff0ef          	jal	374 <transform>
 a18:	00050793          	mv	a5,a0
 a1c:	fef42423          	sw	a5,-24(s0)
 a20:	fe842783          	lw	a5,-24(s0)
 a24:	00078593          	mv	a1,a5
 a28:	e4000537          	lui	a0,0xe4000
 a2c:	881ff0ef          	jal	2ac <write>
 a30:	fe842783          	lw	a5,-24(s0)
 a34:	00c79713          	slli	a4,a5,0xc
 a38:	fec42783          	lw	a5,-20(s0)
 a3c:	00f767b3          	or	a5,a4,a5
 a40:	00078593          	mv	a1,a5
 a44:	e0000537          	lui	a0,0xe0000
 a48:	865ff0ef          	jal	2ac <write>
 a4c:	01c12083          	lw	ra,28(sp)
 a50:	01812403          	lw	s0,24(sp)
 a54:	02010113          	addi	sp,sp,32
 a58:	00008067          	ret

00000a5c <initialize>:
 a5c:	fa010113          	addi	sp,sp,-96
 a60:	04112e23          	sw	ra,92(sp)
 a64:	04812c23          	sw	s0,88(sp)
 a68:	06010413          	addi	s0,sp,96
 a6c:	fff00793          	li	a5,-1
 a70:	faf42423          	sw	a5,-88(s0)
 a74:	fffff7b7          	lui	a5,0xfffff
 a78:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffca0b>
 a7c:	faf42623          	sw	a5,-84(s0)
 a80:	ffffd7b7          	lui	a5,0xffffd
 a84:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffaa0b>
 a88:	faf42823          	sw	a5,-80(s0)
 a8c:	ffffd7b7          	lui	a5,0xffffd
 a90:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffa90b>
 a94:	faf42a23          	sw	a5,-76(s0)
 a98:	ffffd7b7          	lui	a5,0xffffd
 a9c:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffa70b>
 aa0:	faf42c23          	sw	a5,-72(s0)
 aa4:	ffff97b7          	lui	a5,0xffff9
 aa8:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff670b>
 aac:	faf42e23          	sw	a5,-68(s0)
 ab0:	ffff97b7          	lui	a5,0xffff9
 ab4:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff630b>
 ab8:	fcf42023          	sw	a5,-64(s0)
 abc:	ffff97b7          	lui	a5,0xffff9
 ac0:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff630a>
 ac4:	fcf42223          	sw	a5,-60(s0)
 ac8:	ffff97b7          	lui	a5,0xffff9
 acc:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff62ea>
 ad0:	fcf42423          	sw	a5,-56(s0)
 ad4:	ffff97b7          	lui	a5,0xffff9
 ad8:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff62da>
 adc:	fcf42623          	sw	a5,-52(s0)
 ae0:	ffff97b7          	lui	a5,0xffff9
 ae4:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff62d2>
 ae8:	fcf42823          	sw	a5,-48(s0)
 aec:	fff00793          	li	a5,-1
 af0:	fcf42a23          	sw	a5,-44(s0)
 af4:	ffff97b7          	lui	a5,0xffff9
 af8:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff62d2>
 afc:	fcf42c23          	sw	a5,-40(s0)
 b00:	fff00793          	li	a5,-1
 b04:	fcf42e23          	sw	a5,-36(s0)
 b08:	ffff97b7          	lui	a5,0xffff9
 b0c:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff62d2>
 b10:	fef42023          	sw	a5,-32(s0)
 b14:	7f7f87b7          	lui	a5,0x7f7f8
 b18:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f598b>
 b1c:	fef42223          	sw	a5,-28(s0)
 b20:	fe042623          	sw	zero,-20(s0)
 b24:	03c0006f          	j	b60 <initialize+0x104>
 b28:	fec42783          	lw	a5,-20(s0)
 b2c:	00279793          	slli	a5,a5,0x2
 b30:	10078693          	addi	a3,a5,256
 b34:	fec42703          	lw	a4,-20(s0)
 b38:	fa840793          	addi	a5,s0,-88
 b3c:	00271713          	slli	a4,a4,0x2
 b40:	00f707b3          	add	a5,a4,a5
 b44:	0007a783          	lw	a5,0(a5)
 b48:	00078593          	mv	a1,a5
 b4c:	00068513          	mv	a0,a3
 b50:	f5cff0ef          	jal	2ac <write>
 b54:	fec42783          	lw	a5,-20(s0)
 b58:	00178793          	addi	a5,a5,1
 b5c:	fef42623          	sw	a5,-20(s0)
 b60:	fec42703          	lw	a4,-20(s0)
 b64:	00f00793          	li	a5,15
 b68:	fce7d0e3          	bge	a5,a4,b28 <initialize+0xcc>
 b6c:	fe042423          	sw	zero,-24(s0)
 b70:	0280006f          	j	b98 <initialize+0x13c>
 b74:	fe842783          	lw	a5,-24(s0)
 b78:	00279793          	slli	a5,a5,0x2
 b7c:	20078793          	addi	a5,a5,512
 b80:	00000593          	li	a1,0
 b84:	00078513          	mv	a0,a5
 b88:	f24ff0ef          	jal	2ac <write>
 b8c:	fe842783          	lw	a5,-24(s0)
 b90:	00178793          	addi	a5,a5,1
 b94:	fef42423          	sw	a5,-24(s0)
 b98:	fe842703          	lw	a4,-24(s0)
 b9c:	03f00793          	li	a5,63
 ba0:	fce7dae3          	bge	a5,a4,b74 <initialize+0x118>
 ba4:	000bb7b7          	lui	a5,0xbb
 ba8:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb8410>
 bac:	26800513          	li	a0,616
 bb0:	efcff0ef          	jal	2ac <write>
 bb4:	000a67b7          	lui	a5,0xa6
 bb8:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa3e54>
 bbc:	28800513          	li	a0,648
 bc0:	eecff0ef          	jal	2ac <write>
 bc4:	000947b7          	lui	a5,0x94
 bc8:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x91c22>
 bcc:	28400513          	li	a0,644
 bd0:	edcff0ef          	jal	2ac <write>
 bd4:	0008c7b7          	lui	a5,0x8c
 bd8:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x89724>
 bdc:	2a800513          	li	a0,680
 be0:	eccff0ef          	jal	2ac <write>
 be4:	0007d7b7          	lui	a5,0x7d
 be8:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7a30e>
 bec:	2c800513          	li	a0,712
 bf0:	ebcff0ef          	jal	2ac <write>
 bf4:	0006f7b7          	lui	a5,0x6f
 bf8:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6c99d>
 bfc:	2c400513          	li	a0,708
 c00:	eacff0ef          	jal	2ac <write>
 c04:	000637b7          	lui	a5,0x63
 c08:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x607e6>
 c0c:	2e800513          	li	a0,744
 c10:	e9cff0ef          	jal	2ac <write>
 c14:	0005d7b7          	lui	a5,0x5d
 c18:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5af0e>
 c1c:	27000513          	li	a0,624
 c20:	e8cff0ef          	jal	2ac <write>
 c24:	000537b7          	lui	a5,0x53
 c28:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x50c30>
 c2c:	26c00513          	li	a0,620
 c30:	e7cff0ef          	jal	2ac <write>
 c34:	0004a7b7          	lui	a5,0x4a
 c38:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x47b17>
 c3c:	28c00513          	li	a0,652
 c40:	e6cff0ef          	jal	2ac <write>
 c44:	000467b7          	lui	a5,0x46
 c48:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x43898>
 c4c:	2ac00513          	li	a0,684
 c50:	e5cff0ef          	jal	2ac <write>
 c54:	0003e7b7          	lui	a5,0x3e
 c58:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3be8d>
 c5c:	2d000513          	li	a0,720
 c60:	e4cff0ef          	jal	2ac <write>
 c64:	000377b7          	lui	a5,0x37
 c68:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x351d5>
 c6c:	2cc00513          	li	a0,716
 c70:	e3cff0ef          	jal	2ac <write>
 c74:	000317b7          	lui	a5,0x31
 c78:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f0f9>
 c7c:	2ec00513          	li	a0,748
 c80:	e2cff0ef          	jal	2ac <write>
 c84:	0002f7b7          	lui	a5,0x2f
 c88:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2c495>
 c8c:	25400513          	li	a0,596
 c90:	e1cff0ef          	jal	2ac <write>
 c94:	0002a7b7          	lui	a5,0x2a
 c98:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x2731e>
 c9c:	27400513          	li	a0,628
 ca0:	e0cff0ef          	jal	2ac <write>
 ca4:	000257b7          	lui	a5,0x25
 ca8:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x22a92>
 cac:	29000513          	li	a0,656
 cb0:	dfcff0ef          	jal	2ac <write>
 cb4:	000237b7          	lui	a5,0x23
 cb8:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x20952>
 cbc:	2b400513          	li	a0,692
 cc0:	decff0ef          	jal	2ac <write>
 cc4:	0001f7b7          	lui	a5,0x1f
 cc8:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1cc4d>
 ccc:	2b000513          	li	a0,688
 cd0:	ddcff0ef          	jal	2ac <write>
 cd4:	0001c7b7          	lui	a5,0x1c
 cd8:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x195f0>
 cdc:	2d400513          	li	a0,724
 ce0:	dccff0ef          	jal	2ac <write>
 ce4:	000197b7          	lui	a5,0x19
 ce8:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x16583>
 cec:	2f000513          	li	a0,752
 cf0:	dbcff0ef          	jal	2ac <write>
 cf4:	00000593          	li	a1,0
 cf8:	06000513          	li	a0,96
 cfc:	db0ff0ef          	jal	2ac <write>
 d00:	192617b7          	lui	a5,0x19261
 d04:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e223>
 d08:	e0000537          	lui	a0,0xe0000
 d0c:	da0ff0ef          	jal	2ac <write>
 d10:	01000593          	li	a1,16
 d14:	07000513          	li	a0,112
 d18:	d94ff0ef          	jal	2ac <write>
 d1c:	01000593          	li	a1,16
 d20:	e5000537          	lui	a0,0xe5000
 d24:	d88ff0ef          	jal	2ac <write>
 d28:	00000593          	li	a1,0
 d2c:	08000513          	li	a0,128
 d30:	d7cff0ef          	jal	2ac <write>
 d34:	000027b7          	lui	a5,0x2
 d38:	de07aa23          	sw	zero,-524(a5) # 1df4 <__DATA_BEGIN__>
 d3c:	00000013          	nop
 d40:	05c12083          	lw	ra,92(sp)
 d44:	05812403          	lw	s0,88(sp)
 d48:	06010113          	addi	sp,sp,96
 d4c:	00008067          	ret

00000d50 <main>:
 d50:	fe010113          	addi	sp,sp,-32
 d54:	00112e23          	sw	ra,28(sp)
 d58:	00812c23          	sw	s0,24(sp)
 d5c:	02010413          	addi	s0,sp,32
 d60:	fe042623          	sw	zero,-20(s0)
 d64:	cf9ff0ef          	jal	a5c <initialize>
 d68:	000027b7          	lui	a5,0x2
 d6c:	df47a703          	lw	a4,-524(a5) # 1df4 <__DATA_BEGIN__>
 d70:	00100793          	li	a5,1
 d74:	00f71863          	bne	a4,a5,d84 <main+0x34>
 d78:	909ff0ef          	jal	680 <sd_test>
 d7c:	000027b7          	lui	a5,0x2
 d80:	de07aa23          	sw	zero,-524(a5) # 1df4 <__DATA_BEGIN__>
 d84:	fec40793          	addi	a5,s0,-20
 d88:	00078593          	mv	a1,a5
 d8c:	f0000537          	lui	a0,0xf0000
 d90:	cd8ff0ef          	jal	268 <read>
 d94:	fec42783          	lw	a5,-20(s0)
 d98:	00279793          	slli	a5,a5,0x2
 d9c:	00078593          	mv	a1,a5
 da0:	ec000537          	lui	a0,0xec000
 da4:	d08ff0ef          	jal	2ac <write>
 da8:	02c0006f          	j	dd4 <main+0x84>
 dac:	e28ff0ef          	jal	3d4 <displayAC>
 db0:	fec40793          	addi	a5,s0,-20
 db4:	00078593          	mv	a1,a5
 db8:	f0000537          	lui	a0,0xf0000
 dbc:	cacff0ef          	jal	268 <read>
 dc0:	fec42783          	lw	a5,-20(s0)
 dc4:	00279793          	slli	a5,a5,0x2
 dc8:	00078593          	mv	a1,a5
 dcc:	ec000537          	lui	a0,0xec000
 dd0:	cdcff0ef          	jal	2ac <write>
 dd4:	fec42703          	lw	a4,-20(s0)
 dd8:	000107b7          	lui	a5,0x10
 ddc:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xd90c>
 de0:	00f77733          	and	a4,a4,a5
 de4:	000107b7          	lui	a5,0x10
 de8:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xd90c>
 dec:	fcf700e3          	beq	a4,a5,dac <main+0x5c>
 df0:	f79ff06f          	j	d68 <main+0x18>
