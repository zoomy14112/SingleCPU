
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000040 <Entry>:
  40:	ff010113          	addi	sp,sp,-16
  44:	00112623          	sw	ra,12(sp)
  48:	00812423          	sw	s0,8(sp)
  4c:	01010413          	addi	s0,sp,16
  50:	64000113          	li	sp,1600
  54:	585000ef          	jal	dd8 <main>
  58:	0000006f          	j	58 <Entry+0x18>

0000005c <counter_handler>:
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
  a8:	284000ef          	jal	32c <counter>
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

00000194 <keyboard_handler>:
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
 1e0:	6c8000ef          	jal	8a8 <keyboard>
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
 304:	e8e7ae23          	sw	a4,-356(a5) # 1e9c <__DATA_BEGIN__>
 308:	192617b7          	lui	a5,0x19261
 30c:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e17b>
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
 344:	e9000537          	lui	a0,0xe9000
 348:	f21ff0ef          	jal	268 <read>
 34c:	fec42783          	lw	a5,-20(s0)
 350:	0047f793          	andi	a5,a5,4
 354:	06078063          	beqz	a5,3b4 <counter+0x88>
 358:	00000593          	li	a1,0
 35c:	e90007b7          	lui	a5,0xe9000
 360:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffd968>
 364:	f49ff0ef          	jal	2ac <write>
 368:	000027b7          	lui	a5,0x2
 36c:	ea07a703          	lw	a4,-352(a5) # 1ea0 <sd_stage>
 370:	00100793          	li	a5,1
 374:	02f71063          	bne	a4,a5,394 <counter+0x68>
 378:	00100593          	li	a1,1
 37c:	e9000537          	lui	a0,0xe9000
 380:	f2dff0ef          	jal	2ac <write>
 384:	000027b7          	lui	a5,0x2
 388:	00200713          	li	a4,2
 38c:	eae7a023          	sw	a4,-352(a5) # 1ea0 <sd_stage>
 390:	02c0006f          	j	3bc <counter+0x90>
 394:	000027b7          	lui	a5,0x2
 398:	ea07a703          	lw	a4,-352(a5) # 1ea0 <sd_stage>
 39c:	00200793          	li	a5,2
 3a0:	00f71e63          	bne	a4,a5,3bc <counter+0x90>
 3a4:	000027b7          	lui	a5,0x2
 3a8:	00300713          	li	a4,3
 3ac:	eae7a023          	sw	a4,-352(a5) # 1ea0 <sd_stage>
 3b0:	0100006f          	j	3c0 <counter+0x94>
 3b4:	4f4000ef          	jal	8a8 <keyboard>
 3b8:	0080006f          	j	3c0 <counter+0x94>
 3bc:	00000013          	nop
 3c0:	01c12083          	lw	ra,28(sp)
 3c4:	01812403          	lw	s0,24(sp)
 3c8:	02010113          	addi	sp,sp,32
 3cc:	00008067          	ret

000003d0 <transform>:
 3d0:	fd010113          	addi	sp,sp,-48
 3d4:	02112623          	sw	ra,44(sp)
 3d8:	02812423          	sw	s0,40(sp)
 3dc:	03010413          	addi	s0,sp,48
 3e0:	fca42e23          	sw	a0,-36(s0)
 3e4:	fe042623          	sw	zero,-20(s0)
 3e8:	fdc42703          	lw	a4,-36(s0)
 3ec:	03f00793          	li	a5,63
 3f0:	00e7d663          	bge	a5,a4,3fc <transform+0x2c>
 3f4:	00000793          	li	a5,0
 3f8:	0240006f          	j	41c <transform+0x4c>
 3fc:	fdc42783          	lw	a5,-36(s0)
 400:	00279793          	slli	a5,a5,0x2
 404:	20078793          	addi	a5,a5,512
 408:	fec40713          	addi	a4,s0,-20
 40c:	00070593          	mv	a1,a4
 410:	00078513          	mv	a0,a5
 414:	e55ff0ef          	jal	268 <read>
 418:	fec42783          	lw	a5,-20(s0)
 41c:	00078513          	mv	a0,a5
 420:	02c12083          	lw	ra,44(sp)
 424:	02812403          	lw	s0,40(sp)
 428:	03010113          	addi	sp,sp,48
 42c:	00008067          	ret

00000430 <displayAC>:
 430:	fe010113          	addi	sp,sp,-32
 434:	00112e23          	sw	ra,28(sp)
 438:	00812c23          	sw	s0,24(sp)
 43c:	02010413          	addi	s0,sp,32
 440:	fe040793          	addi	a5,s0,-32
 444:	00078593          	mv	a1,a5
 448:	06000513          	li	a0,96
 44c:	e1dff0ef          	jal	268 <read>
 450:	fe042783          	lw	a5,-32(s0)
 454:	00279793          	slli	a5,a5,0x2
 458:	10078793          	addi	a5,a5,256
 45c:	00078713          	mv	a4,a5
 460:	fe440793          	addi	a5,s0,-28
 464:	00078593          	mv	a1,a5
 468:	00070513          	mv	a0,a4
 46c:	dfdff0ef          	jal	268 <read>
 470:	fe442783          	lw	a5,-28(s0)
 474:	00078593          	mv	a1,a5
 478:	e0000537          	lui	a0,0xe0000
 47c:	e31ff0ef          	jal	2ac <write>
 480:	fe442783          	lw	a5,-28(s0)
 484:	0ff7f793          	zext.b	a5,a5
 488:	fef42623          	sw	a5,-20(s0)
 48c:	fe442783          	lw	a5,-28(s0)
 490:	0087d793          	srli	a5,a5,0x8
 494:	fef42423          	sw	a5,-24(s0)
 498:	fec42783          	lw	a5,-20(s0)
 49c:	01879713          	slli	a4,a5,0x18
 4a0:	fe842783          	lw	a5,-24(s0)
 4a4:	00f767b3          	or	a5,a4,a5
 4a8:	fef42223          	sw	a5,-28(s0)
 4ac:	fe042783          	lw	a5,-32(s0)
 4b0:	00279793          	slli	a5,a5,0x2
 4b4:	10078793          	addi	a5,a5,256
 4b8:	00078713          	mv	a4,a5
 4bc:	fe442783          	lw	a5,-28(s0)
 4c0:	00078593          	mv	a1,a5
 4c4:	00070513          	mv	a0,a4
 4c8:	de5ff0ef          	jal	2ac <write>
 4cc:	fe042783          	lw	a5,-32(s0)
 4d0:	00178793          	addi	a5,a5,1
 4d4:	00f7f793          	andi	a5,a5,15
 4d8:	00078593          	mv	a1,a5
 4dc:	06000513          	li	a0,96
 4e0:	dcdff0ef          	jal	2ac <write>
 4e4:	000f47b7          	lui	a5,0xf4
 4e8:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1ba4>
 4ec:	d45ff0ef          	jal	230 <wait>
 4f0:	00000013          	nop
 4f4:	01c12083          	lw	ra,28(sp)
 4f8:	01812403          	lw	s0,24(sp)
 4fc:	02010113          	addi	sp,sp,32
 500:	00008067          	ret

00000504 <sd_push>:
 504:	fd010113          	addi	sp,sp,-48
 508:	02112623          	sw	ra,44(sp)
 50c:	02812423          	sw	s0,40(sp)
 510:	03010413          	addi	s0,sp,48
 514:	fca42e23          	sw	a0,-36(s0)
 518:	00000593          	li	a1,0
 51c:	e90007b7          	lui	a5,0xe9000
 520:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffd968>
 524:	d89ff0ef          	jal	2ac <write>
 528:	00300593          	li	a1,3
 52c:	e9000537          	lui	a0,0xe9000
 530:	d7dff0ef          	jal	2ac <write>
 534:	02faf7b7          	lui	a5,0x2faf
 538:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2fac9e4>
 53c:	fef42623          	sw	a5,-20(s0)
 540:	fe840793          	addi	a5,s0,-24
 544:	00078593          	mv	a1,a5
 548:	e9000537          	lui	a0,0xe9000
 54c:	d1dff0ef          	jal	268 <read>
 550:	fec42783          	lw	a5,-20(s0)
 554:	fff78793          	addi	a5,a5,-1
 558:	fef42623          	sw	a5,-20(s0)
 55c:	fe842783          	lw	a5,-24(s0)
 560:	0017f793          	andi	a5,a5,1
 564:	00078663          	beqz	a5,570 <sd_push+0x6c>
 568:	fec42783          	lw	a5,-20(s0)
 56c:	fcf04ae3          	bgtz	a5,540 <sd_push+0x3c>
 570:	fe842783          	lw	a5,-24(s0)
 574:	0027f793          	andi	a5,a5,2
 578:	00078663          	beqz	a5,584 <sd_push+0x80>
 57c:	00200793          	li	a5,2
 580:	0100006f          	j	590 <sd_push+0x8c>
 584:	fec42783          	lw	a5,-20(s0)
 588:	0017b793          	seqz	a5,a5
 58c:	0ff7f793          	zext.b	a5,a5
 590:	00078513          	mv	a0,a5
 594:	02c12083          	lw	ra,44(sp)
 598:	02812403          	lw	s0,40(sp)
 59c:	03010113          	addi	sp,sp,48
 5a0:	00008067          	ret

000005a4 <sd_pull>:
 5a4:	fd010113          	addi	sp,sp,-48
 5a8:	02112623          	sw	ra,44(sp)
 5ac:	02812423          	sw	s0,40(sp)
 5b0:	03010413          	addi	s0,sp,48
 5b4:	fca42e23          	sw	a0,-36(s0)
 5b8:	00000593          	li	a1,0
 5bc:	e90007b7          	lui	a5,0xe9000
 5c0:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffd968>
 5c4:	ce9ff0ef          	jal	2ac <write>
 5c8:	00100593          	li	a1,1
 5cc:	e9000537          	lui	a0,0xe9000
 5d0:	cddff0ef          	jal	2ac <write>
 5d4:	02faf7b7          	lui	a5,0x2faf
 5d8:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2fac9e4>
 5dc:	fef42623          	sw	a5,-20(s0)
 5e0:	fe840793          	addi	a5,s0,-24
 5e4:	00078593          	mv	a1,a5
 5e8:	e9000537          	lui	a0,0xe9000
 5ec:	c7dff0ef          	jal	268 <read>
 5f0:	fec42783          	lw	a5,-20(s0)
 5f4:	fff78793          	addi	a5,a5,-1
 5f8:	fef42623          	sw	a5,-20(s0)
 5fc:	fe842783          	lw	a5,-24(s0)
 600:	0017f793          	andi	a5,a5,1
 604:	00078663          	beqz	a5,610 <sd_pull+0x6c>
 608:	fec42783          	lw	a5,-20(s0)
 60c:	fcf04ae3          	bgtz	a5,5e0 <sd_pull+0x3c>
 610:	fe842783          	lw	a5,-24(s0)
 614:	0027f793          	andi	a5,a5,2
 618:	00078663          	beqz	a5,624 <sd_pull+0x80>
 61c:	00200793          	li	a5,2
 620:	0100006f          	j	630 <sd_pull+0x8c>
 624:	fec42783          	lw	a5,-20(s0)
 628:	0017b793          	seqz	a5,a5
 62c:	0ff7f793          	zext.b	a5,a5
 630:	00078513          	mv	a0,a5
 634:	02c12083          	lw	ra,44(sp)
 638:	02812403          	lw	s0,40(sp)
 63c:	03010113          	addi	sp,sp,48
 640:	00008067          	ret

00000644 <sd_clear>:
 644:	fe010113          	addi	sp,sp,-32
 648:	00112e23          	sw	ra,28(sp)
 64c:	00812c23          	sw	s0,24(sp)
 650:	02010413          	addi	s0,sp,32
 654:	fe042623          	sw	zero,-20(s0)
 658:	0300006f          	j	688 <sd_clear+0x44>
 65c:	fec42583          	lw	a1,-20(s0)
 660:	e90007b7          	lui	a5,0xe9000
 664:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffd970>
 668:	c45ff0ef          	jal	2ac <write>
 66c:	00000593          	li	a1,0
 670:	e90007b7          	lui	a5,0xe9000
 674:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffd96c>
 678:	c35ff0ef          	jal	2ac <write>
 67c:	fec42783          	lw	a5,-20(s0)
 680:	00178793          	addi	a5,a5,1
 684:	fef42623          	sw	a5,-20(s0)
 688:	fec42703          	lw	a4,-20(s0)
 68c:	07f00793          	li	a5,127
 690:	fce7d6e3          	bge	a5,a4,65c <sd_clear+0x18>
 694:	00000513          	li	a0,0
 698:	e6dff0ef          	jal	504 <sd_push>
 69c:	00050793          	mv	a5,a0
 6a0:	00078c63          	beqz	a5,6b8 <sd_clear+0x74>
 6a4:	0d00e7b7          	lui	a5,0xd00e
 6a8:	40378593          	addi	a1,a5,1027 # d00e403 <__global_pointer$+0xd00bd67>
 6ac:	e0000537          	lui	a0,0xe0000
 6b0:	bfdff0ef          	jal	2ac <write>
 6b4:	0140006f          	j	6c8 <sd_clear+0x84>
 6b8:	072107b7          	lui	a5,0x7210
 6bc:	72178593          	addi	a1,a5,1825 # 7210721 <__global_pointer$+0x720e085>
 6c0:	e0000537          	lui	a0,0xe0000
 6c4:	be9ff0ef          	jal	2ac <write>
 6c8:	00000013          	nop
 6cc:	01c12083          	lw	ra,28(sp)
 6d0:	01812403          	lw	s0,24(sp)
 6d4:	02010113          	addi	sp,sp,32
 6d8:	00008067          	ret

000006dc <sd_test_start>:
 6dc:	fe010113          	addi	sp,sp,-32
 6e0:	00112e23          	sw	ra,28(sp)
 6e4:	00812c23          	sw	s0,24(sp)
 6e8:	02010413          	addi	s0,sp,32
 6ec:	008b57b7          	lui	a5,0x8b5
 6f0:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2add>
 6f4:	e0000537          	lui	a0,0xe0000
 6f8:	bb5ff0ef          	jal	2ac <write>
 6fc:	fe042623          	sw	zero,-20(s0)
 700:	0540006f          	j	754 <sd_test_start+0x78>
 704:	fec42783          	lw	a5,-20(s0)
 708:	0017f793          	andi	a5,a5,1
 70c:	00078663          	beqz	a5,718 <sd_test_start+0x3c>
 710:	072107b7          	lui	a5,0x7210
 714:	0080006f          	j	71c <sd_test_start+0x40>
 718:	dead07b7          	lui	a5,0xdead0
 71c:	fec42703          	lw	a4,-20(s0)
 720:	00e7e7b3          	or	a5,a5,a4
 724:	fef42423          	sw	a5,-24(s0)
 728:	fec42583          	lw	a1,-20(s0)
 72c:	e90007b7          	lui	a5,0xe9000
 730:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffd970>
 734:	b79ff0ef          	jal	2ac <write>
 738:	fe842583          	lw	a1,-24(s0)
 73c:	e90007b7          	lui	a5,0xe9000
 740:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffd96c>
 744:	b69ff0ef          	jal	2ac <write>
 748:	fec42783          	lw	a5,-20(s0)
 74c:	00178793          	addi	a5,a5,1
 750:	fef42623          	sw	a5,-20(s0)
 754:	fec42703          	lw	a4,-20(s0)
 758:	07f00793          	li	a5,127
 75c:	fae7d4e3          	bge	a5,a4,704 <sd_test_start+0x28>
 760:	00000593          	li	a1,0
 764:	e90007b7          	lui	a5,0xe9000
 768:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffd968>
 76c:	b41ff0ef          	jal	2ac <write>
 770:	00300593          	li	a1,3
 774:	e9000537          	lui	a0,0xe9000
 778:	b35ff0ef          	jal	2ac <write>
 77c:	000027b7          	lui	a5,0x2
 780:	00100713          	li	a4,1
 784:	eae7a023          	sw	a4,-352(a5) # 1ea0 <sd_stage>
 788:	00000013          	nop
 78c:	01c12083          	lw	ra,28(sp)
 790:	01812403          	lw	s0,24(sp)
 794:	02010113          	addi	sp,sp,32
 798:	00008067          	ret

0000079c <sd_test_verify>:
 79c:	fe010113          	addi	sp,sp,-32
 7a0:	00112e23          	sw	ra,28(sp)
 7a4:	00812c23          	sw	s0,24(sp)
 7a8:	02010413          	addi	s0,sp,32
 7ac:	fe042423          	sw	zero,-24(s0)
 7b0:	fe042623          	sw	zero,-20(s0)
 7b4:	08c0006f          	j	840 <sd_test_verify+0xa4>
 7b8:	fec42583          	lw	a1,-20(s0)
 7bc:	e90007b7          	lui	a5,0xe9000
 7c0:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffd970>
 7c4:	ae9ff0ef          	jal	2ac <write>
 7c8:	fe040793          	addi	a5,s0,-32
 7cc:	00078593          	mv	a1,a5
 7d0:	e90007b7          	lui	a5,0xe9000
 7d4:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffd96c>
 7d8:	a91ff0ef          	jal	268 <read>
 7dc:	fec42783          	lw	a5,-20(s0)
 7e0:	0017f793          	andi	a5,a5,1
 7e4:	00078663          	beqz	a5,7f0 <sd_test_verify+0x54>
 7e8:	072107b7          	lui	a5,0x7210
 7ec:	0080006f          	j	7f4 <sd_test_verify+0x58>
 7f0:	dead07b7          	lui	a5,0xdead0
 7f4:	fec42703          	lw	a4,-20(s0)
 7f8:	00e7e7b3          	or	a5,a5,a4
 7fc:	fef42223          	sw	a5,-28(s0)
 800:	fe042783          	lw	a5,-32(s0)
 804:	fe442703          	lw	a4,-28(s0)
 808:	02f70663          	beq	a4,a5,834 <sd_test_verify+0x98>
 80c:	fe842783          	lw	a5,-24(s0)
 810:	00178793          	addi	a5,a5,1 # dead0001 <__global_pointer$+0xdeacd965>
 814:	fef42423          	sw	a5,-24(s0)
 818:	fe042783          	lw	a5,-32(s0)
 81c:	00078593          	mv	a1,a5
 820:	e0000537          	lui	a0,0xe0000
 824:	a89ff0ef          	jal	2ac <write>
 828:	0007a7b7          	lui	a5,0x7a
 82c:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x77a84>
 830:	a01ff0ef          	jal	230 <wait>
 834:	fec42783          	lw	a5,-20(s0)
 838:	00178793          	addi	a5,a5,1
 83c:	fef42623          	sw	a5,-20(s0)
 840:	fec42703          	lw	a4,-20(s0)
 844:	07f00793          	li	a5,127
 848:	f6e7d8e3          	bge	a5,a4,7b8 <sd_test_verify+0x1c>
 84c:	fe842783          	lw	a5,-24(s0)
 850:	00078e63          	beqz	a5,86c <sd_test_verify+0xd0>
 854:	fe842783          	lw	a5,-24(s0)
 858:	01079713          	slli	a4,a5,0x10
 85c:	000107b7          	lui	a5,0x10
 860:	a1178793          	addi	a5,a5,-1519 # fa11 <__global_pointer$+0xd375>
 864:	00f767b3          	or	a5,a4,a5
 868:	00c0006f          	j	874 <sd_test_verify+0xd8>
 86c:	0000a7b7          	lui	a5,0xa
 870:	a5578793          	addi	a5,a5,-1451 # 9a55 <__global_pointer$+0x73b9>
 874:	00078593          	mv	a1,a5
 878:	e0000537          	lui	a0,0xe0000
 87c:	a31ff0ef          	jal	2ac <write>
 880:	004c57b7          	lui	a5,0x4c5
 884:	b4078513          	addi	a0,a5,-1216 # 4c4b40 <__global_pointer$+0x4c24a4>
 888:	9a9ff0ef          	jal	230 <wait>
 88c:	000027b7          	lui	a5,0x2
 890:	ea07a023          	sw	zero,-352(a5) # 1ea0 <sd_stage>
 894:	00000013          	nop
 898:	01c12083          	lw	ra,28(sp)
 89c:	01812403          	lw	s0,24(sp)
 8a0:	02010113          	addi	sp,sp,32
 8a4:	00008067          	ret

000008a8 <keyboard>:
 8a8:	fe010113          	addi	sp,sp,-32
 8ac:	00112e23          	sw	ra,28(sp)
 8b0:	00812c23          	sw	s0,24(sp)
 8b4:	02010413          	addi	s0,sp,32
 8b8:	fe042223          	sw	zero,-28(s0)
 8bc:	fec40793          	addi	a5,s0,-20
 8c0:	00078593          	mv	a1,a5
 8c4:	f4000537          	lui	a0,0xf4000
 8c8:	9a1ff0ef          	jal	268 <read>
 8cc:	fe840793          	addi	a5,s0,-24
 8d0:	00078593          	mv	a1,a5
 8d4:	07000513          	li	a0,112
 8d8:	991ff0ef          	jal	268 <read>
 8dc:	fe440793          	addi	a5,s0,-28
 8e0:	00078593          	mv	a1,a5
 8e4:	08000513          	li	a0,128
 8e8:	981ff0ef          	jal	268 <read>
 8ec:	fec42783          	lw	a5,-20(s0)
 8f0:	0ff7f793          	zext.b	a5,a5
 8f4:	fef42623          	sw	a5,-20(s0)
 8f8:	fec42703          	lw	a4,-20(s0)
 8fc:	0f000793          	li	a5,240
 900:	00f71a63          	bne	a4,a5,914 <keyboard+0x6c>
 904:	00100593          	li	a1,1
 908:	08000513          	li	a0,128
 90c:	9a1ff0ef          	jal	2ac <write>
 910:	1880006f          	j	a98 <keyboard+0x1f0>
 914:	fe442703          	lw	a4,-28(s0)
 918:	00100793          	li	a5,1
 91c:	00f71a63          	bne	a4,a5,930 <keyboard+0x88>
 920:	00000593          	li	a1,0
 924:	08000513          	li	a0,128
 928:	985ff0ef          	jal	2ac <write>
 92c:	16c0006f          	j	a98 <keyboard+0x1f0>
 930:	fec42703          	lw	a4,-20(s0)
 934:	05a00793          	li	a5,90
 938:	02f71263          	bne	a4,a5,95c <keyboard+0xb4>
 93c:	000027b7          	lui	a5,0x2
 940:	00100713          	li	a4,1
 944:	e8e7ae23          	sw	a4,-356(a5) # 1e9c <__DATA_BEGIN__>
 948:	008b57b7          	lui	a5,0x8b5
 94c:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2add>
 950:	e0000537          	lui	a0,0xe0000
 954:	959ff0ef          	jal	2ac <write>
 958:	1400006f          	j	a98 <keyboard+0x1f0>
 95c:	fec42703          	lw	a4,-20(s0)
 960:	07600793          	li	a5,118
 964:	00f71663          	bne	a4,a5,970 <keyboard+0xc8>
 968:	cddff0ef          	jal	644 <sd_clear>
 96c:	12c0006f          	j	a98 <keyboard+0x1f0>
 970:	fec42703          	lw	a4,-20(s0)
 974:	00d00793          	li	a5,13
 978:	00f71c63          	bne	a4,a5,990 <keyboard+0xe8>
 97c:	fe842783          	lw	a5,-24(s0)
 980:	00078593          	mv	a1,a5
 984:	e0000537          	lui	a0,0xe0000
 988:	925ff0ef          	jal	2ac <write>
 98c:	10c0006f          	j	a98 <keyboard+0x1f0>
 990:	fec42703          	lw	a4,-20(s0)
 994:	04e00793          	li	a5,78
 998:	04f71a63          	bne	a4,a5,9ec <keyboard+0x144>
 99c:	fe842703          	lw	a4,-24(s0)
 9a0:	00100793          	li	a5,1
 9a4:	00e7fa63          	bgeu	a5,a4,9b8 <keyboard+0x110>
 9a8:	fe842783          	lw	a5,-24(s0)
 9ac:	fff78793          	addi	a5,a5,-1
 9b0:	01f7f793          	andi	a5,a5,31
 9b4:	fef42423          	sw	a5,-24(s0)
 9b8:	fe842783          	lw	a5,-24(s0)
 9bc:	00078593          	mv	a1,a5
 9c0:	07000513          	li	a0,112
 9c4:	8e9ff0ef          	jal	2ac <write>
 9c8:	fe842783          	lw	a5,-24(s0)
 9cc:	00078593          	mv	a1,a5
 9d0:	e5000537          	lui	a0,0xe5000
 9d4:	8d9ff0ef          	jal	2ac <write>
 9d8:	fe842783          	lw	a5,-24(s0)
 9dc:	00078593          	mv	a1,a5
 9e0:	e0000537          	lui	a0,0xe0000
 9e4:	8c9ff0ef          	jal	2ac <write>
 9e8:	0b00006f          	j	a98 <keyboard+0x1f0>
 9ec:	fec42703          	lw	a4,-20(s0)
 9f0:	05500793          	li	a5,85
 9f4:	04f71a63          	bne	a4,a5,a48 <keyboard+0x1a0>
 9f8:	fe842703          	lw	a4,-24(s0)
 9fc:	00f00793          	li	a5,15
 a00:	00e7ea63          	bltu	a5,a4,a14 <keyboard+0x16c>
 a04:	fe842783          	lw	a5,-24(s0)
 a08:	00178793          	addi	a5,a5,1
 a0c:	01f7f793          	andi	a5,a5,31
 a10:	fef42423          	sw	a5,-24(s0)
 a14:	fe842783          	lw	a5,-24(s0)
 a18:	00078593          	mv	a1,a5
 a1c:	07000513          	li	a0,112
 a20:	88dff0ef          	jal	2ac <write>
 a24:	fe842783          	lw	a5,-24(s0)
 a28:	00078593          	mv	a1,a5
 a2c:	e5000537          	lui	a0,0xe5000
 a30:	87dff0ef          	jal	2ac <write>
 a34:	fe842783          	lw	a5,-24(s0)
 a38:	00078593          	mv	a1,a5
 a3c:	e0000537          	lui	a0,0xe0000
 a40:	86dff0ef          	jal	2ac <write>
 a44:	0540006f          	j	a98 <keyboard+0x1f0>
 a48:	fe042423          	sw	zero,-24(s0)
 a4c:	fec42703          	lw	a4,-20(s0)
 a50:	03f00793          	li	a5,63
 a54:	02e7e463          	bltu	a5,a4,a7c <keyboard+0x1d4>
 a58:	fec42783          	lw	a5,-20(s0)
 a5c:	00078513          	mv	a0,a5
 a60:	971ff0ef          	jal	3d0 <transform>
 a64:	00050793          	mv	a5,a0
 a68:	fef42423          	sw	a5,-24(s0)
 a6c:	fe842783          	lw	a5,-24(s0)
 a70:	00078593          	mv	a1,a5
 a74:	e4000537          	lui	a0,0xe4000
 a78:	835ff0ef          	jal	2ac <write>
 a7c:	fe842783          	lw	a5,-24(s0)
 a80:	00c79713          	slli	a4,a5,0xc
 a84:	fec42783          	lw	a5,-20(s0)
 a88:	00f767b3          	or	a5,a4,a5
 a8c:	00078593          	mv	a1,a5
 a90:	e0000537          	lui	a0,0xe0000
 a94:	819ff0ef          	jal	2ac <write>
 a98:	01c12083          	lw	ra,28(sp)
 a9c:	01812403          	lw	s0,24(sp)
 aa0:	02010113          	addi	sp,sp,32
 aa4:	00008067          	ret

00000aa8 <initialize>:
 aa8:	fa010113          	addi	sp,sp,-96
 aac:	04112e23          	sw	ra,92(sp)
 ab0:	04812c23          	sw	s0,88(sp)
 ab4:	06010413          	addi	s0,sp,96
 ab8:	fff00793          	li	a5,-1
 abc:	faf42423          	sw	a5,-88(s0)
 ac0:	fffff7b7          	lui	a5,0xfffff
 ac4:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffc963>
 ac8:	faf42623          	sw	a5,-84(s0)
 acc:	ffffd7b7          	lui	a5,0xffffd
 ad0:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffa963>
 ad4:	faf42823          	sw	a5,-80(s0)
 ad8:	ffffd7b7          	lui	a5,0xffffd
 adc:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffa863>
 ae0:	faf42a23          	sw	a5,-76(s0)
 ae4:	ffffd7b7          	lui	a5,0xffffd
 ae8:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffa663>
 aec:	faf42c23          	sw	a5,-72(s0)
 af0:	ffff97b7          	lui	a5,0xffff9
 af4:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6663>
 af8:	faf42e23          	sw	a5,-68(s0)
 afc:	ffff97b7          	lui	a5,0xffff9
 b00:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff6263>
 b04:	fcf42023          	sw	a5,-64(s0)
 b08:	ffff97b7          	lui	a5,0xffff9
 b0c:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff6262>
 b10:	fcf42223          	sw	a5,-60(s0)
 b14:	ffff97b7          	lui	a5,0xffff9
 b18:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff6242>
 b1c:	fcf42423          	sw	a5,-56(s0)
 b20:	ffff97b7          	lui	a5,0xffff9
 b24:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff6232>
 b28:	fcf42623          	sw	a5,-52(s0)
 b2c:	ffff97b7          	lui	a5,0xffff9
 b30:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff622a>
 b34:	fcf42823          	sw	a5,-48(s0)
 b38:	fff00793          	li	a5,-1
 b3c:	fcf42a23          	sw	a5,-44(s0)
 b40:	ffff97b7          	lui	a5,0xffff9
 b44:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff622a>
 b48:	fcf42c23          	sw	a5,-40(s0)
 b4c:	fff00793          	li	a5,-1
 b50:	fcf42e23          	sw	a5,-36(s0)
 b54:	ffff97b7          	lui	a5,0xffff9
 b58:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff622a>
 b5c:	fef42023          	sw	a5,-32(s0)
 b60:	7f7f87b7          	lui	a5,0x7f7f8
 b64:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f58e3>
 b68:	fef42223          	sw	a5,-28(s0)
 b6c:	fe042623          	sw	zero,-20(s0)
 b70:	03c0006f          	j	bac <initialize+0x104>
 b74:	fec42783          	lw	a5,-20(s0)
 b78:	00279793          	slli	a5,a5,0x2
 b7c:	10078693          	addi	a3,a5,256
 b80:	fec42703          	lw	a4,-20(s0)
 b84:	fa840793          	addi	a5,s0,-88
 b88:	00271713          	slli	a4,a4,0x2
 b8c:	00f707b3          	add	a5,a4,a5
 b90:	0007a783          	lw	a5,0(a5)
 b94:	00078593          	mv	a1,a5
 b98:	00068513          	mv	a0,a3
 b9c:	f10ff0ef          	jal	2ac <write>
 ba0:	fec42783          	lw	a5,-20(s0)
 ba4:	00178793          	addi	a5,a5,1
 ba8:	fef42623          	sw	a5,-20(s0)
 bac:	fec42703          	lw	a4,-20(s0)
 bb0:	00f00793          	li	a5,15
 bb4:	fce7d0e3          	bge	a5,a4,b74 <initialize+0xcc>
 bb8:	fe042423          	sw	zero,-24(s0)
 bbc:	0280006f          	j	be4 <initialize+0x13c>
 bc0:	fe842783          	lw	a5,-24(s0)
 bc4:	00279793          	slli	a5,a5,0x2
 bc8:	20078793          	addi	a5,a5,512
 bcc:	00000593          	li	a1,0
 bd0:	00078513          	mv	a0,a5
 bd4:	ed8ff0ef          	jal	2ac <write>
 bd8:	fe842783          	lw	a5,-24(s0)
 bdc:	00178793          	addi	a5,a5,1
 be0:	fef42423          	sw	a5,-24(s0)
 be4:	fe842703          	lw	a4,-24(s0)
 be8:	03f00793          	li	a5,63
 bec:	fce7dae3          	bge	a5,a4,bc0 <initialize+0x118>
 bf0:	000bb7b7          	lui	a5,0xbb
 bf4:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb8368>
 bf8:	26800513          	li	a0,616
 bfc:	eb0ff0ef          	jal	2ac <write>
 c00:	000a67b7          	lui	a5,0xa6
 c04:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa3dac>
 c08:	28800513          	li	a0,648
 c0c:	ea0ff0ef          	jal	2ac <write>
 c10:	000947b7          	lui	a5,0x94
 c14:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x91b7a>
 c18:	28400513          	li	a0,644
 c1c:	e90ff0ef          	jal	2ac <write>
 c20:	0008c7b7          	lui	a5,0x8c
 c24:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x8967c>
 c28:	2a800513          	li	a0,680
 c2c:	e80ff0ef          	jal	2ac <write>
 c30:	0007d7b7          	lui	a5,0x7d
 c34:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7a266>
 c38:	2c800513          	li	a0,712
 c3c:	e70ff0ef          	jal	2ac <write>
 c40:	0006f7b7          	lui	a5,0x6f
 c44:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6c8f5>
 c48:	2c400513          	li	a0,708
 c4c:	e60ff0ef          	jal	2ac <write>
 c50:	000637b7          	lui	a5,0x63
 c54:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x6073e>
 c58:	2e800513          	li	a0,744
 c5c:	e50ff0ef          	jal	2ac <write>
 c60:	0005d7b7          	lui	a5,0x5d
 c64:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5ae66>
 c68:	27000513          	li	a0,624
 c6c:	e40ff0ef          	jal	2ac <write>
 c70:	000537b7          	lui	a5,0x53
 c74:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x50b88>
 c78:	26c00513          	li	a0,620
 c7c:	e30ff0ef          	jal	2ac <write>
 c80:	0004a7b7          	lui	a5,0x4a
 c84:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x47a6f>
 c88:	28c00513          	li	a0,652
 c8c:	e20ff0ef          	jal	2ac <write>
 c90:	000467b7          	lui	a5,0x46
 c94:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x437f0>
 c98:	2ac00513          	li	a0,684
 c9c:	e10ff0ef          	jal	2ac <write>
 ca0:	0003e7b7          	lui	a5,0x3e
 ca4:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3bde5>
 ca8:	2d000513          	li	a0,720
 cac:	e00ff0ef          	jal	2ac <write>
 cb0:	000377b7          	lui	a5,0x37
 cb4:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x3512d>
 cb8:	2cc00513          	li	a0,716
 cbc:	df0ff0ef          	jal	2ac <write>
 cc0:	000317b7          	lui	a5,0x31
 cc4:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f051>
 cc8:	2ec00513          	li	a0,748
 ccc:	de0ff0ef          	jal	2ac <write>
 cd0:	0002f7b7          	lui	a5,0x2f
 cd4:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2c3ed>
 cd8:	25400513          	li	a0,596
 cdc:	dd0ff0ef          	jal	2ac <write>
 ce0:	0002a7b7          	lui	a5,0x2a
 ce4:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x27276>
 ce8:	27400513          	li	a0,628
 cec:	dc0ff0ef          	jal	2ac <write>
 cf0:	000257b7          	lui	a5,0x25
 cf4:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x229ea>
 cf8:	29000513          	li	a0,656
 cfc:	db0ff0ef          	jal	2ac <write>
 d00:	000237b7          	lui	a5,0x23
 d04:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x208aa>
 d08:	2b400513          	li	a0,692
 d0c:	da0ff0ef          	jal	2ac <write>
 d10:	0001f7b7          	lui	a5,0x1f
 d14:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1cba5>
 d18:	2b000513          	li	a0,688
 d1c:	d90ff0ef          	jal	2ac <write>
 d20:	0001c7b7          	lui	a5,0x1c
 d24:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x19548>
 d28:	2d400513          	li	a0,724
 d2c:	d80ff0ef          	jal	2ac <write>
 d30:	000197b7          	lui	a5,0x19
 d34:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x164db>
 d38:	2f000513          	li	a0,752
 d3c:	d70ff0ef          	jal	2ac <write>
 d40:	00000593          	li	a1,0
 d44:	06000513          	li	a0,96
 d48:	d64ff0ef          	jal	2ac <write>
 d4c:	192617b7          	lui	a5,0x19261
 d50:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e17b>
 d54:	e0000537          	lui	a0,0xe0000
 d58:	d54ff0ef          	jal	2ac <write>
 d5c:	01000593          	li	a1,16
 d60:	07000513          	li	a0,112
 d64:	d48ff0ef          	jal	2ac <write>
 d68:	01000593          	li	a1,16
 d6c:	e5000537          	lui	a0,0xe5000
 d70:	d3cff0ef          	jal	2ac <write>
 d74:	00300593          	li	a1,3
 d78:	ec000537          	lui	a0,0xec000
 d7c:	d30ff0ef          	jal	2ac <write>
 d80:	00200593          	li	a1,2
 d84:	e8000537          	lui	a0,0xe8000
 d88:	d24ff0ef          	jal	2ac <write>
 d8c:	00000593          	li	a1,0
 d90:	ec000537          	lui	a0,0xec000
 d94:	d18ff0ef          	jal	2ac <write>
 d98:	000187b7          	lui	a5,0x18
 d9c:	6a078593          	addi	a1,a5,1696 # 186a0 <__global_pointer$+0x16004>
 da0:	e8000537          	lui	a0,0xe8000
 da4:	d08ff0ef          	jal	2ac <write>
 da8:	00000593          	li	a1,0
 dac:	08000513          	li	a0,128
 db0:	cfcff0ef          	jal	2ac <write>
 db4:	000027b7          	lui	a5,0x2
 db8:	e807ae23          	sw	zero,-356(a5) # 1e9c <__DATA_BEGIN__>
 dbc:	000027b7          	lui	a5,0x2
 dc0:	ea07a023          	sw	zero,-352(a5) # 1ea0 <sd_stage>
 dc4:	00000013          	nop
 dc8:	05c12083          	lw	ra,92(sp)
 dcc:	05812403          	lw	s0,88(sp)
 dd0:	06010113          	addi	sp,sp,96
 dd4:	00008067          	ret

00000dd8 <main>:
 dd8:	fe010113          	addi	sp,sp,-32
 ddc:	00112e23          	sw	ra,28(sp)
 de0:	00812c23          	sw	s0,24(sp)
 de4:	02010413          	addi	s0,sp,32
 de8:	fe042623          	sw	zero,-20(s0)
 dec:	cbdff0ef          	jal	aa8 <initialize>
 df0:	000027b7          	lui	a5,0x2
 df4:	e9c7a703          	lw	a4,-356(a5) # 1e9c <__DATA_BEGIN__>
 df8:	00100793          	li	a5,1
 dfc:	00f71863          	bne	a4,a5,e0c <main+0x34>
 e00:	000027b7          	lui	a5,0x2
 e04:	e807ae23          	sw	zero,-356(a5) # 1e9c <__DATA_BEGIN__>
 e08:	8d5ff0ef          	jal	6dc <sd_test_start>
 e0c:	000027b7          	lui	a5,0x2
 e10:	ea07a703          	lw	a4,-352(a5) # 1ea0 <sd_stage>
 e14:	00300793          	li	a5,3
 e18:	00f71463          	bne	a4,a5,e20 <main+0x48>
 e1c:	981ff0ef          	jal	79c <sd_test_verify>
 e20:	fec40793          	addi	a5,s0,-20
 e24:	00078593          	mv	a1,a5
 e28:	f0000537          	lui	a0,0xf0000
 e2c:	c3cff0ef          	jal	268 <read>
 e30:	fec42783          	lw	a5,-20(s0)
 e34:	00279793          	slli	a5,a5,0x2
 e38:	00078593          	mv	a1,a5
 e3c:	ec000537          	lui	a0,0xec000
 e40:	c6cff0ef          	jal	2ac <write>
 e44:	0380006f          	j	e7c <main+0xa4>
 e48:	000027b7          	lui	a5,0x2
 e4c:	ea07a783          	lw	a5,-352(a5) # 1ea0 <sd_stage>
 e50:	00079463          	bnez	a5,e58 <main+0x80>
 e54:	ddcff0ef          	jal	430 <displayAC>
 e58:	fec40793          	addi	a5,s0,-20
 e5c:	00078593          	mv	a1,a5
 e60:	f0000537          	lui	a0,0xf0000
 e64:	c04ff0ef          	jal	268 <read>
 e68:	fec42783          	lw	a5,-20(s0)
 e6c:	00279793          	slli	a5,a5,0x2
 e70:	00078593          	mv	a1,a5
 e74:	ec000537          	lui	a0,0xec000
 e78:	c34ff0ef          	jal	2ac <write>
 e7c:	fec42703          	lw	a4,-20(s0)
 e80:	000107b7          	lui	a5,0x10
 e84:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xd864>
 e88:	00f77733          	and	a4,a4,a5
 e8c:	000107b7          	lui	a5,0x10
 e90:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xd864>
 e94:	faf70ae3          	beq	a4,a5,e48 <main+0x70>
 e98:	f59ff06f          	j	df0 <main+0x18>
