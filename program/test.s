
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000040 <Entry>:
  40:	ff010113          	addi	sp,sp,-16
  44:	00112623          	sw	ra,12(sp)
  48:	00812423          	sw	s0,8(sp)
  4c:	01010413          	addi	s0,sp,16
  50:	64000113          	li	sp,1600
  54:	38d000ef          	jal	be0 <main>
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
  a8:	1c0000ef          	jal	268 <keyboard>
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
 144:	3b0000ef          	jal	4f4 <button>
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
 1e0:	348000ef          	jal	528 <counter>
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

00000268 <keyboard>:
 268:	fe010113          	addi	sp,sp,-32
 26c:	00112e23          	sw	ra,28(sp)
 270:	00812c23          	sw	s0,24(sp)
 274:	02010413          	addi	s0,sp,32
 278:	fe042223          	sw	zero,-28(s0)
 27c:	fec40793          	addi	a5,s0,-20
 280:	00078593          	mv	a1,a5
 284:	f4000537          	lui	a0,0xf4000
 288:	1e8000ef          	jal	470 <read>
 28c:	fe840793          	addi	a5,s0,-24
 290:	00078593          	mv	a1,a5
 294:	07000513          	li	a0,112
 298:	1d8000ef          	jal	470 <read>
 29c:	fe440793          	addi	a5,s0,-28
 2a0:	00078593          	mv	a1,a5
 2a4:	08000513          	li	a0,128
 2a8:	1c8000ef          	jal	470 <read>
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	0ff7f793          	zext.b	a5,a5
 2b4:	fef42623          	sw	a5,-20(s0)
 2b8:	fec42703          	lw	a4,-20(s0)
 2bc:	0f000793          	li	a5,240
 2c0:	00f71a63          	bne	a4,a5,2d4 <keyboard+0x6c>
 2c4:	00100593          	li	a1,1
 2c8:	08000513          	li	a0,128
 2cc:	1e8000ef          	jal	4b4 <write>
 2d0:	1900006f          	j	460 <keyboard+0x1f8>
 2d4:	fe442703          	lw	a4,-28(s0)
 2d8:	00100793          	li	a5,1
 2dc:	00f71a63          	bne	a4,a5,2f0 <keyboard+0x88>
 2e0:	00000593          	li	a1,0
 2e4:	08000513          	li	a0,128
 2e8:	1cc000ef          	jal	4b4 <write>
 2ec:	1740006f          	j	460 <keyboard+0x1f8>
 2f0:	fec42703          	lw	a4,-20(s0)
 2f4:	05a00793          	li	a5,90
 2f8:	02f71263          	bne	a4,a5,31c <keyboard+0xb4>
 2fc:	000027b7          	lui	a5,0x2
 300:	00100713          	li	a4,1
 304:	cae7a023          	sw	a4,-864(a5) # 1ca0 <__DATA_BEGIN__>
 308:	008b57b7          	lui	a5,0x8b5
 30c:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2cd9>
 310:	e0000537          	lui	a0,0xe0000
 314:	1a0000ef          	jal	4b4 <write>
 318:	1480006f          	j	460 <keyboard+0x1f8>
 31c:	fec42703          	lw	a4,-20(s0)
 320:	07600793          	li	a5,118
 324:	00f71a63          	bne	a4,a5,338 <keyboard+0xd0>
 328:	00000593          	li	a1,0
 32c:	e0000537          	lui	a0,0xe0000
 330:	184000ef          	jal	4b4 <write>
 334:	12c0006f          	j	460 <keyboard+0x1f8>
 338:	fec42703          	lw	a4,-20(s0)
 33c:	00d00793          	li	a5,13
 340:	00f71c63          	bne	a4,a5,358 <keyboard+0xf0>
 344:	fe842783          	lw	a5,-24(s0)
 348:	00078593          	mv	a1,a5
 34c:	e0000537          	lui	a0,0xe0000
 350:	164000ef          	jal	4b4 <write>
 354:	10c0006f          	j	460 <keyboard+0x1f8>
 358:	fec42703          	lw	a4,-20(s0)
 35c:	04e00793          	li	a5,78
 360:	04f71a63          	bne	a4,a5,3b4 <keyboard+0x14c>
 364:	fe842703          	lw	a4,-24(s0)
 368:	00100793          	li	a5,1
 36c:	00e7fa63          	bgeu	a5,a4,380 <keyboard+0x118>
 370:	fe842783          	lw	a5,-24(s0)
 374:	fff78793          	addi	a5,a5,-1
 378:	01f7f793          	andi	a5,a5,31
 37c:	fef42423          	sw	a5,-24(s0)
 380:	fe842783          	lw	a5,-24(s0)
 384:	00078593          	mv	a1,a5
 388:	07000513          	li	a0,112
 38c:	128000ef          	jal	4b4 <write>
 390:	fe842783          	lw	a5,-24(s0)
 394:	00078593          	mv	a1,a5
 398:	e5000537          	lui	a0,0xe5000
 39c:	118000ef          	jal	4b4 <write>
 3a0:	fe842783          	lw	a5,-24(s0)
 3a4:	00078593          	mv	a1,a5
 3a8:	e0000537          	lui	a0,0xe0000
 3ac:	108000ef          	jal	4b4 <write>
 3b0:	0b00006f          	j	460 <keyboard+0x1f8>
 3b4:	fec42703          	lw	a4,-20(s0)
 3b8:	05500793          	li	a5,85
 3bc:	04f71a63          	bne	a4,a5,410 <keyboard+0x1a8>
 3c0:	fe842703          	lw	a4,-24(s0)
 3c4:	00f00793          	li	a5,15
 3c8:	00e7ea63          	bltu	a5,a4,3dc <keyboard+0x174>
 3cc:	fe842783          	lw	a5,-24(s0)
 3d0:	00178793          	addi	a5,a5,1
 3d4:	01f7f793          	andi	a5,a5,31
 3d8:	fef42423          	sw	a5,-24(s0)
 3dc:	fe842783          	lw	a5,-24(s0)
 3e0:	00078593          	mv	a1,a5
 3e4:	07000513          	li	a0,112
 3e8:	0cc000ef          	jal	4b4 <write>
 3ec:	fe842783          	lw	a5,-24(s0)
 3f0:	00078593          	mv	a1,a5
 3f4:	e5000537          	lui	a0,0xe5000
 3f8:	0bc000ef          	jal	4b4 <write>
 3fc:	fe842783          	lw	a5,-24(s0)
 400:	00078593          	mv	a1,a5
 404:	e0000537          	lui	a0,0xe0000
 408:	0ac000ef          	jal	4b4 <write>
 40c:	0540006f          	j	460 <keyboard+0x1f8>
 410:	fe042423          	sw	zero,-24(s0)
 414:	fec42703          	lw	a4,-20(s0)
 418:	03f00793          	li	a5,63
 41c:	02e7e463          	bltu	a5,a4,444 <keyboard+0x1dc>
 420:	fec42783          	lw	a5,-20(s0)
 424:	00078513          	mv	a0,a5
 428:	148000ef          	jal	570 <transform>
 42c:	00050793          	mv	a5,a0
 430:	fef42423          	sw	a5,-24(s0)
 434:	fe842783          	lw	a5,-24(s0)
 438:	00078593          	mv	a1,a5
 43c:	e4000537          	lui	a0,0xe4000
 440:	074000ef          	jal	4b4 <write>
 444:	fe842783          	lw	a5,-24(s0)
 448:	00c79713          	slli	a4,a5,0xc
 44c:	fec42783          	lw	a5,-20(s0)
 450:	00f767b3          	or	a5,a4,a5
 454:	00078593          	mv	a1,a5
 458:	e0000537          	lui	a0,0xe0000
 45c:	058000ef          	jal	4b4 <write>
 460:	01c12083          	lw	ra,28(sp)
 464:	01812403          	lw	s0,24(sp)
 468:	02010113          	addi	sp,sp,32
 46c:	00008067          	ret

00000470 <read>:
 470:	fd010113          	addi	sp,sp,-48
 474:	02112623          	sw	ra,44(sp)
 478:	02812423          	sw	s0,40(sp)
 47c:	03010413          	addi	s0,sp,48
 480:	fca42e23          	sw	a0,-36(s0)
 484:	fcb42c23          	sw	a1,-40(s0)
 488:	fdc42783          	lw	a5,-36(s0)
 48c:	fef42623          	sw	a5,-20(s0)
 490:	fec42783          	lw	a5,-20(s0)
 494:	0007a703          	lw	a4,0(a5)
 498:	fd842783          	lw	a5,-40(s0)
 49c:	00e7a023          	sw	a4,0(a5)
 4a0:	00000013          	nop
 4a4:	02c12083          	lw	ra,44(sp)
 4a8:	02812403          	lw	s0,40(sp)
 4ac:	03010113          	addi	sp,sp,48
 4b0:	00008067          	ret

000004b4 <write>:
 4b4:	fd010113          	addi	sp,sp,-48
 4b8:	02112623          	sw	ra,44(sp)
 4bc:	02812423          	sw	s0,40(sp)
 4c0:	03010413          	addi	s0,sp,48
 4c4:	fca42e23          	sw	a0,-36(s0)
 4c8:	fcb42c23          	sw	a1,-40(s0)
 4cc:	fdc42783          	lw	a5,-36(s0)
 4d0:	fef42623          	sw	a5,-20(s0)
 4d4:	fec42783          	lw	a5,-20(s0)
 4d8:	fd842703          	lw	a4,-40(s0)
 4dc:	00e7a023          	sw	a4,0(a5)
 4e0:	00000013          	nop
 4e4:	02c12083          	lw	ra,44(sp)
 4e8:	02812403          	lw	s0,40(sp)
 4ec:	03010113          	addi	sp,sp,48
 4f0:	00008067          	ret

000004f4 <button>:
 4f4:	ff010113          	addi	sp,sp,-16
 4f8:	00112623          	sw	ra,12(sp)
 4fc:	00812423          	sw	s0,8(sp)
 500:	01010413          	addi	s0,sp,16
 504:	192617b7          	lui	a5,0x19261
 508:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e377>
 50c:	e0000537          	lui	a0,0xe0000
 510:	fa5ff0ef          	jal	4b4 <write>
 514:	00000013          	nop
 518:	00c12083          	lw	ra,12(sp)
 51c:	00812403          	lw	s0,8(sp)
 520:	01010113          	addi	sp,sp,16
 524:	00008067          	ret

00000528 <counter>:
 528:	fe010113          	addi	sp,sp,-32
 52c:	00112e23          	sw	ra,28(sp)
 530:	00812c23          	sw	s0,24(sp)
 534:	02010413          	addi	s0,sp,32
 538:	fec40793          	addi	a5,s0,-20
 53c:	00078593          	mv	a1,a5
 540:	f8000537          	lui	a0,0xf8000
 544:	f2dff0ef          	jal	470 <read>
 548:	fec42783          	lw	a5,-20(s0)
 54c:	00279793          	slli	a5,a5,0x2
 550:	00078593          	mv	a1,a5
 554:	ec000537          	lui	a0,0xec000
 558:	f5dff0ef          	jal	4b4 <write>
 55c:	00000013          	nop
 560:	01c12083          	lw	ra,28(sp)
 564:	01812403          	lw	s0,24(sp)
 568:	02010113          	addi	sp,sp,32
 56c:	00008067          	ret

00000570 <transform>:
 570:	fd010113          	addi	sp,sp,-48
 574:	02112623          	sw	ra,44(sp)
 578:	02812423          	sw	s0,40(sp)
 57c:	03010413          	addi	s0,sp,48
 580:	fca42e23          	sw	a0,-36(s0)
 584:	fe042623          	sw	zero,-20(s0)
 588:	fdc42703          	lw	a4,-36(s0)
 58c:	03f00793          	li	a5,63
 590:	00e7d663          	bge	a5,a4,59c <transform+0x2c>
 594:	00000793          	li	a5,0
 598:	0240006f          	j	5bc <transform+0x4c>
 59c:	fdc42783          	lw	a5,-36(s0)
 5a0:	00279793          	slli	a5,a5,0x2
 5a4:	20078793          	addi	a5,a5,512
 5a8:	fec40713          	addi	a4,s0,-20
 5ac:	00070593          	mv	a1,a4
 5b0:	00078513          	mv	a0,a5
 5b4:	ebdff0ef          	jal	470 <read>
 5b8:	fec42783          	lw	a5,-20(s0)
 5bc:	00078513          	mv	a0,a5
 5c0:	02c12083          	lw	ra,44(sp)
 5c4:	02812403          	lw	s0,40(sp)
 5c8:	03010113          	addi	sp,sp,48
 5cc:	00008067          	ret

000005d0 <displayAC>:
 5d0:	fe010113          	addi	sp,sp,-32
 5d4:	00112e23          	sw	ra,28(sp)
 5d8:	00812c23          	sw	s0,24(sp)
 5dc:	02010413          	addi	s0,sp,32
 5e0:	fe040793          	addi	a5,s0,-32
 5e4:	00078593          	mv	a1,a5
 5e8:	06000513          	li	a0,96
 5ec:	e85ff0ef          	jal	470 <read>
 5f0:	fe042783          	lw	a5,-32(s0)
 5f4:	00279793          	slli	a5,a5,0x2
 5f8:	10078793          	addi	a5,a5,256
 5fc:	00078713          	mv	a4,a5
 600:	fe440793          	addi	a5,s0,-28
 604:	00078593          	mv	a1,a5
 608:	00070513          	mv	a0,a4
 60c:	e65ff0ef          	jal	470 <read>
 610:	fe442783          	lw	a5,-28(s0)
 614:	00078593          	mv	a1,a5
 618:	e0000537          	lui	a0,0xe0000
 61c:	e99ff0ef          	jal	4b4 <write>
 620:	fe442783          	lw	a5,-28(s0)
 624:	0ff7f793          	zext.b	a5,a5
 628:	fef42623          	sw	a5,-20(s0)
 62c:	fe442783          	lw	a5,-28(s0)
 630:	0087d793          	srli	a5,a5,0x8
 634:	fef42423          	sw	a5,-24(s0)
 638:	fec42783          	lw	a5,-20(s0)
 63c:	01879713          	slli	a4,a5,0x18
 640:	fe842783          	lw	a5,-24(s0)
 644:	00f767b3          	or	a5,a4,a5
 648:	fef42223          	sw	a5,-28(s0)
 64c:	fe042783          	lw	a5,-32(s0)
 650:	00279793          	slli	a5,a5,0x2
 654:	10078793          	addi	a5,a5,256
 658:	00078713          	mv	a4,a5
 65c:	fe442783          	lw	a5,-28(s0)
 660:	00078593          	mv	a1,a5
 664:	00070513          	mv	a0,a4
 668:	e4dff0ef          	jal	4b4 <write>
 66c:	fe042783          	lw	a5,-32(s0)
 670:	00178793          	addi	a5,a5,1
 674:	00f7f793          	andi	a5,a5,15
 678:	00078593          	mv	a1,a5
 67c:	06000513          	li	a0,96
 680:	e35ff0ef          	jal	4b4 <write>
 684:	000f47b7          	lui	a5,0xf4
 688:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1da0>
 68c:	ba5ff0ef          	jal	230 <wait>
 690:	00000013          	nop
 694:	01c12083          	lw	ra,28(sp)
 698:	01812403          	lw	s0,24(sp)
 69c:	02010113          	addi	sp,sp,32
 6a0:	00008067          	ret

000006a4 <sd_test>:
 6a4:	fe010113          	addi	sp,sp,-32
 6a8:	00112e23          	sw	ra,28(sp)
 6ac:	00812c23          	sw	s0,24(sp)
 6b0:	02010413          	addi	s0,sp,32
 6b4:	008b57b7          	lui	a5,0x8b5
 6b8:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2cd9>
 6bc:	e0000537          	lui	a0,0xe0000
 6c0:	df5ff0ef          	jal	4b4 <write>
 6c4:	fe042623          	sw	zero,-20(s0)
 6c8:	03c0006f          	j	704 <sd_test+0x60>
 6cc:	fec42583          	lw	a1,-20(s0)
 6d0:	e90007b7          	lui	a5,0xe9000
 6d4:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffdb6c>
 6d8:	dddff0ef          	jal	4b4 <write>
 6dc:	fec42703          	lw	a4,-20(s0)
 6e0:	dead07b7          	lui	a5,0xdead0
 6e4:	00f707b3          	add	a5,a4,a5
 6e8:	00078593          	mv	a1,a5
 6ec:	e90007b7          	lui	a5,0xe9000
 6f0:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffdb68>
 6f4:	dc1ff0ef          	jal	4b4 <write>
 6f8:	fec42783          	lw	a5,-20(s0)
 6fc:	00178793          	addi	a5,a5,1
 700:	fef42623          	sw	a5,-20(s0)
 704:	fec42703          	lw	a4,-20(s0)
 708:	07f00793          	li	a5,127
 70c:	fce7d0e3          	bge	a5,a4,6cc <sd_test+0x28>
 710:	00000593          	li	a1,0
 714:	e90007b7          	lui	a5,0xe9000
 718:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffdb64>
 71c:	d99ff0ef          	jal	4b4 <write>
 720:	00300593          	li	a1,3
 724:	e9000537          	lui	a0,0xe9000
 728:	d8dff0ef          	jal	4b4 <write>
 72c:	02faf7b7          	lui	a5,0x2faf
 730:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2facbe0>
 734:	fef42223          	sw	a5,-28(s0)
 738:	fe040793          	addi	a5,s0,-32
 73c:	00078593          	mv	a1,a5
 740:	e9000537          	lui	a0,0xe9000
 744:	d2dff0ef          	jal	470 <read>
 748:	fe442783          	lw	a5,-28(s0)
 74c:	fff78793          	addi	a5,a5,-1
 750:	fef42223          	sw	a5,-28(s0)
 754:	fe042783          	lw	a5,-32(s0)
 758:	0017f793          	andi	a5,a5,1
 75c:	00078663          	beqz	a5,768 <sd_test+0xc4>
 760:	fe442783          	lw	a5,-28(s0)
 764:	fcf04ae3          	bgtz	a5,738 <sd_test+0x94>
 768:	fe442783          	lw	a5,-28(s0)
 76c:	00079c63          	bnez	a5,784 <sd_test+0xe0>
 770:	0d00e7b7          	lui	a5,0xd00e
 774:	40178593          	addi	a1,a5,1025 # d00e401 <__global_pointer$+0xd00bf61>
 778:	e0000537          	lui	a0,0xe0000
 77c:	d39ff0ef          	jal	4b4 <write>
 780:	15c0006f          	j	8dc <sd_test+0x238>
 784:	000187b7          	lui	a5,0x18
 788:	6a078513          	addi	a0,a5,1696 # 186a0 <__global_pointer$+0x16200>
 78c:	aa5ff0ef          	jal	230 <wait>
 790:	00000593          	li	a1,0
 794:	e90007b7          	lui	a5,0xe9000
 798:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffdb64>
 79c:	d19ff0ef          	jal	4b4 <write>
 7a0:	00100593          	li	a1,1
 7a4:	e9000537          	lui	a0,0xe9000
 7a8:	d0dff0ef          	jal	4b4 <write>
 7ac:	02faf7b7          	lui	a5,0x2faf
 7b0:	08078793          	addi	a5,a5,128 # 2faf080 <__global_pointer$+0x2facbe0>
 7b4:	fef42223          	sw	a5,-28(s0)
 7b8:	fe040793          	addi	a5,s0,-32
 7bc:	00078593          	mv	a1,a5
 7c0:	e9000537          	lui	a0,0xe9000
 7c4:	cadff0ef          	jal	470 <read>
 7c8:	fe442783          	lw	a5,-28(s0)
 7cc:	fff78793          	addi	a5,a5,-1
 7d0:	fef42223          	sw	a5,-28(s0)
 7d4:	fe042783          	lw	a5,-32(s0)
 7d8:	0017f793          	andi	a5,a5,1
 7dc:	00078663          	beqz	a5,7e8 <sd_test+0x144>
 7e0:	fe442783          	lw	a5,-28(s0)
 7e4:	fcf04ae3          	bgtz	a5,7b8 <sd_test+0x114>
 7e8:	fe442783          	lw	a5,-28(s0)
 7ec:	00079c63          	bnez	a5,804 <sd_test+0x160>
 7f0:	0d00e7b7          	lui	a5,0xd00e
 7f4:	40278593          	addi	a1,a5,1026 # d00e402 <__global_pointer$+0xd00bf62>
 7f8:	e0000537          	lui	a0,0xe0000
 7fc:	cb9ff0ef          	jal	4b4 <write>
 800:	0dc0006f          	j	8dc <sd_test+0x238>
 804:	004c57b7          	lui	a5,0x4c5
 808:	b4078513          	addi	a0,a5,-1216 # 4c4b40 <__global_pointer$+0x4c26a0>
 80c:	a25ff0ef          	jal	230 <wait>
 810:	fe042423          	sw	zero,-24(s0)
 814:	fe042623          	sw	zero,-20(s0)
 818:	0700006f          	j	888 <sd_test+0x1e4>
 81c:	fec42583          	lw	a1,-20(s0)
 820:	e90007b7          	lui	a5,0xe9000
 824:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffdb6c>
 828:	c8dff0ef          	jal	4b4 <write>
 82c:	fe040793          	addi	a5,s0,-32
 830:	00078593          	mv	a1,a5
 834:	e90007b7          	lui	a5,0xe9000
 838:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffdb68>
 83c:	c35ff0ef          	jal	470 <read>
 840:	fec42703          	lw	a4,-20(s0)
 844:	dead07b7          	lui	a5,0xdead0
 848:	00f707b3          	add	a5,a4,a5
 84c:	fe042703          	lw	a4,-32(s0)
 850:	02e78663          	beq	a5,a4,87c <sd_test+0x1d8>
 854:	fe842783          	lw	a5,-24(s0)
 858:	00178793          	addi	a5,a5,1 # dead0001 <__global_pointer$+0xdeacdb61>
 85c:	fef42423          	sw	a5,-24(s0)
 860:	fe042783          	lw	a5,-32(s0)
 864:	00078593          	mv	a1,a5
 868:	e0000537          	lui	a0,0xe0000
 86c:	c49ff0ef          	jal	4b4 <write>
 870:	000f47b7          	lui	a5,0xf4
 874:	24078513          	addi	a0,a5,576 # f4240 <__global_pointer$+0xf1da0>
 878:	9b9ff0ef          	jal	230 <wait>
 87c:	fec42783          	lw	a5,-20(s0)
 880:	00178793          	addi	a5,a5,1
 884:	fef42623          	sw	a5,-20(s0)
 888:	fec42703          	lw	a4,-20(s0)
 88c:	07f00793          	li	a5,127
 890:	f8e7d6e3          	bge	a5,a4,81c <sd_test+0x178>
 894:	fe842783          	lw	a5,-24(s0)
 898:	02079263          	bnez	a5,8bc <sd_test+0x218>
 89c:	0000a7b7          	lui	a5,0xa
 8a0:	a5578593          	addi	a1,a5,-1451 # 9a55 <__global_pointer$+0x75b5>
 8a4:	e0000537          	lui	a0,0xe0000
 8a8:	c0dff0ef          	jal	4b4 <write>
 8ac:	002dc7b7          	lui	a5,0x2dc
 8b0:	6c078513          	addi	a0,a5,1728 # 2dc6c0 <__global_pointer$+0x2da220>
 8b4:	97dff0ef          	jal	230 <wait>
 8b8:	0240006f          	j	8dc <sd_test+0x238>
 8bc:	fe842783          	lw	a5,-24(s0)
 8c0:	01079713          	slli	a4,a5,0x10
 8c4:	000107b7          	lui	a5,0x10
 8c8:	a1178793          	addi	a5,a5,-1519 # fa11 <__global_pointer$+0xd571>
 8cc:	00f767b3          	or	a5,a4,a5
 8d0:	00078593          	mv	a1,a5
 8d4:	e0000537          	lui	a0,0xe0000
 8d8:	bddff0ef          	jal	4b4 <write>
 8dc:	01c12083          	lw	ra,28(sp)
 8e0:	01812403          	lw	s0,24(sp)
 8e4:	02010113          	addi	sp,sp,32
 8e8:	00008067          	ret

000008ec <initialize>:
 8ec:	fa010113          	addi	sp,sp,-96
 8f0:	04112e23          	sw	ra,92(sp)
 8f4:	04812c23          	sw	s0,88(sp)
 8f8:	06010413          	addi	s0,sp,96
 8fc:	fff00793          	li	a5,-1
 900:	faf42423          	sw	a5,-88(s0)
 904:	fffff7b7          	lui	a5,0xfffff
 908:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffcb5f>
 90c:	faf42623          	sw	a5,-84(s0)
 910:	ffffd7b7          	lui	a5,0xffffd
 914:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffab5f>
 918:	faf42823          	sw	a5,-80(s0)
 91c:	ffffd7b7          	lui	a5,0xffffd
 920:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffaa5f>
 924:	faf42a23          	sw	a5,-76(s0)
 928:	ffffd7b7          	lui	a5,0xffffd
 92c:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffa85f>
 930:	faf42c23          	sw	a5,-72(s0)
 934:	ffff97b7          	lui	a5,0xffff9
 938:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff685f>
 93c:	faf42e23          	sw	a5,-68(s0)
 940:	ffff97b7          	lui	a5,0xffff9
 944:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff645f>
 948:	fcf42023          	sw	a5,-64(s0)
 94c:	ffff97b7          	lui	a5,0xffff9
 950:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff645e>
 954:	fcf42223          	sw	a5,-60(s0)
 958:	ffff97b7          	lui	a5,0xffff9
 95c:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff643e>
 960:	fcf42423          	sw	a5,-56(s0)
 964:	ffff97b7          	lui	a5,0xffff9
 968:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff642e>
 96c:	fcf42623          	sw	a5,-52(s0)
 970:	ffff97b7          	lui	a5,0xffff9
 974:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6426>
 978:	fcf42823          	sw	a5,-48(s0)
 97c:	fff00793          	li	a5,-1
 980:	fcf42a23          	sw	a5,-44(s0)
 984:	ffff97b7          	lui	a5,0xffff9
 988:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6426>
 98c:	fcf42c23          	sw	a5,-40(s0)
 990:	fff00793          	li	a5,-1
 994:	fcf42e23          	sw	a5,-36(s0)
 998:	ffff97b7          	lui	a5,0xffff9
 99c:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff6426>
 9a0:	fef42023          	sw	a5,-32(s0)
 9a4:	7f7f87b7          	lui	a5,0x7f7f8
 9a8:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5adf>
 9ac:	fef42223          	sw	a5,-28(s0)
 9b0:	fe042623          	sw	zero,-20(s0)
 9b4:	03c0006f          	j	9f0 <initialize+0x104>
 9b8:	fec42783          	lw	a5,-20(s0)
 9bc:	00279793          	slli	a5,a5,0x2
 9c0:	10078693          	addi	a3,a5,256
 9c4:	fec42703          	lw	a4,-20(s0)
 9c8:	fa840793          	addi	a5,s0,-88
 9cc:	00271713          	slli	a4,a4,0x2
 9d0:	00f707b3          	add	a5,a4,a5
 9d4:	0007a783          	lw	a5,0(a5)
 9d8:	00078593          	mv	a1,a5
 9dc:	00068513          	mv	a0,a3
 9e0:	ad5ff0ef          	jal	4b4 <write>
 9e4:	fec42783          	lw	a5,-20(s0)
 9e8:	00178793          	addi	a5,a5,1
 9ec:	fef42623          	sw	a5,-20(s0)
 9f0:	fec42703          	lw	a4,-20(s0)
 9f4:	00f00793          	li	a5,15
 9f8:	fce7d0e3          	bge	a5,a4,9b8 <initialize+0xcc>
 9fc:	fe042423          	sw	zero,-24(s0)
 a00:	0280006f          	j	a28 <initialize+0x13c>
 a04:	fe842783          	lw	a5,-24(s0)
 a08:	00279793          	slli	a5,a5,0x2
 a0c:	20078793          	addi	a5,a5,512
 a10:	00000593          	li	a1,0
 a14:	00078513          	mv	a0,a5
 a18:	a9dff0ef          	jal	4b4 <write>
 a1c:	fe842783          	lw	a5,-24(s0)
 a20:	00178793          	addi	a5,a5,1
 a24:	fef42423          	sw	a5,-24(s0)
 a28:	fe842703          	lw	a4,-24(s0)
 a2c:	03f00793          	li	a5,63
 a30:	fce7dae3          	bge	a5,a4,a04 <initialize+0x118>
 a34:	000bb7b7          	lui	a5,0xbb
 a38:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb8564>
 a3c:	26800513          	li	a0,616
 a40:	a75ff0ef          	jal	4b4 <write>
 a44:	000a67b7          	lui	a5,0xa6
 a48:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa3fa8>
 a4c:	28800513          	li	a0,648
 a50:	a65ff0ef          	jal	4b4 <write>
 a54:	000947b7          	lui	a5,0x94
 a58:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x91d76>
 a5c:	28400513          	li	a0,644
 a60:	a55ff0ef          	jal	4b4 <write>
 a64:	0008c7b7          	lui	a5,0x8c
 a68:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x89878>
 a6c:	2a800513          	li	a0,680
 a70:	a45ff0ef          	jal	4b4 <write>
 a74:	0007d7b7          	lui	a5,0x7d
 a78:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7a462>
 a7c:	2c800513          	li	a0,712
 a80:	a35ff0ef          	jal	4b4 <write>
 a84:	0006f7b7          	lui	a5,0x6f
 a88:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6caf1>
 a8c:	2c400513          	li	a0,708
 a90:	a25ff0ef          	jal	4b4 <write>
 a94:	000637b7          	lui	a5,0x63
 a98:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x6093a>
 a9c:	2e800513          	li	a0,744
 aa0:	a15ff0ef          	jal	4b4 <write>
 aa4:	0005d7b7          	lui	a5,0x5d
 aa8:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5b062>
 aac:	27000513          	li	a0,624
 ab0:	a05ff0ef          	jal	4b4 <write>
 ab4:	000537b7          	lui	a5,0x53
 ab8:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x50d84>
 abc:	26c00513          	li	a0,620
 ac0:	9f5ff0ef          	jal	4b4 <write>
 ac4:	0004a7b7          	lui	a5,0x4a
 ac8:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x47c6b>
 acc:	28c00513          	li	a0,652
 ad0:	9e5ff0ef          	jal	4b4 <write>
 ad4:	000467b7          	lui	a5,0x46
 ad8:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x439ec>
 adc:	2ac00513          	li	a0,684
 ae0:	9d5ff0ef          	jal	4b4 <write>
 ae4:	0003e7b7          	lui	a5,0x3e
 ae8:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3bfe1>
 aec:	2d000513          	li	a0,720
 af0:	9c5ff0ef          	jal	4b4 <write>
 af4:	000377b7          	lui	a5,0x37
 af8:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x35329>
 afc:	2cc00513          	li	a0,716
 b00:	9b5ff0ef          	jal	4b4 <write>
 b04:	000317b7          	lui	a5,0x31
 b08:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f24d>
 b0c:	2ec00513          	li	a0,748
 b10:	9a5ff0ef          	jal	4b4 <write>
 b14:	0002f7b7          	lui	a5,0x2f
 b18:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2c5e9>
 b1c:	25400513          	li	a0,596
 b20:	995ff0ef          	jal	4b4 <write>
 b24:	0002a7b7          	lui	a5,0x2a
 b28:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x27472>
 b2c:	27400513          	li	a0,628
 b30:	985ff0ef          	jal	4b4 <write>
 b34:	000257b7          	lui	a5,0x25
 b38:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x22be6>
 b3c:	29000513          	li	a0,656
 b40:	975ff0ef          	jal	4b4 <write>
 b44:	000237b7          	lui	a5,0x23
 b48:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x20aa6>
 b4c:	2b400513          	li	a0,692
 b50:	965ff0ef          	jal	4b4 <write>
 b54:	0001f7b7          	lui	a5,0x1f
 b58:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1cda1>
 b5c:	2b000513          	li	a0,688
 b60:	955ff0ef          	jal	4b4 <write>
 b64:	0001c7b7          	lui	a5,0x1c
 b68:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x19744>
 b6c:	2d400513          	li	a0,724
 b70:	945ff0ef          	jal	4b4 <write>
 b74:	000197b7          	lui	a5,0x19
 b78:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x166d7>
 b7c:	2f000513          	li	a0,752
 b80:	935ff0ef          	jal	4b4 <write>
 b84:	00000593          	li	a1,0
 b88:	06000513          	li	a0,96
 b8c:	929ff0ef          	jal	4b4 <write>
 b90:	192617b7          	lui	a5,0x19261
 b94:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e377>
 b98:	e0000537          	lui	a0,0xe0000
 b9c:	919ff0ef          	jal	4b4 <write>
 ba0:	01000593          	li	a1,16
 ba4:	07000513          	li	a0,112
 ba8:	90dff0ef          	jal	4b4 <write>
 bac:	01000593          	li	a1,16
 bb0:	e5000537          	lui	a0,0xe5000
 bb4:	901ff0ef          	jal	4b4 <write>
 bb8:	00000593          	li	a1,0
 bbc:	08000513          	li	a0,128
 bc0:	8f5ff0ef          	jal	4b4 <write>
 bc4:	000027b7          	lui	a5,0x2
 bc8:	ca07a023          	sw	zero,-864(a5) # 1ca0 <__DATA_BEGIN__>
 bcc:	00000013          	nop
 bd0:	05c12083          	lw	ra,92(sp)
 bd4:	05812403          	lw	s0,88(sp)
 bd8:	06010113          	addi	sp,sp,96
 bdc:	00008067          	ret

00000be0 <main>:
 be0:	fe010113          	addi	sp,sp,-32
 be4:	00112e23          	sw	ra,28(sp)
 be8:	00812c23          	sw	s0,24(sp)
 bec:	02010413          	addi	s0,sp,32
 bf0:	fe042623          	sw	zero,-20(s0)
 bf4:	cf9ff0ef          	jal	8ec <initialize>
 bf8:	000027b7          	lui	a5,0x2
 bfc:	ca07a703          	lw	a4,-864(a5) # 1ca0 <__DATA_BEGIN__>
 c00:	00100793          	li	a5,1
 c04:	00f71863          	bne	a4,a5,c14 <main+0x34>
 c08:	a9dff0ef          	jal	6a4 <sd_test>
 c0c:	000027b7          	lui	a5,0x2
 c10:	ca07a023          	sw	zero,-864(a5) # 1ca0 <__DATA_BEGIN__>
 c14:	fec40793          	addi	a5,s0,-20
 c18:	00078593          	mv	a1,a5
 c1c:	f0000537          	lui	a0,0xf0000
 c20:	851ff0ef          	jal	470 <read>
 c24:	fec42783          	lw	a5,-20(s0)
 c28:	00279793          	slli	a5,a5,0x2
 c2c:	00078593          	mv	a1,a5
 c30:	ec000537          	lui	a0,0xec000
 c34:	881ff0ef          	jal	4b4 <write>
 c38:	0480006f          	j	c80 <main+0xa0>
 c3c:	000027b7          	lui	a5,0x2
 c40:	ca07a703          	lw	a4,-864(a5) # 1ca0 <__DATA_BEGIN__>
 c44:	00100793          	li	a5,1
 c48:	00f71863          	bne	a4,a5,c58 <main+0x78>
 c4c:	a59ff0ef          	jal	6a4 <sd_test>
 c50:	000027b7          	lui	a5,0x2
 c54:	ca07a023          	sw	zero,-864(a5) # 1ca0 <__DATA_BEGIN__>
 c58:	979ff0ef          	jal	5d0 <displayAC>
 c5c:	fec40793          	addi	a5,s0,-20
 c60:	00078593          	mv	a1,a5
 c64:	f0000537          	lui	a0,0xf0000
 c68:	809ff0ef          	jal	470 <read>
 c6c:	fec42783          	lw	a5,-20(s0)
 c70:	00279793          	slli	a5,a5,0x2
 c74:	00078593          	mv	a1,a5
 c78:	ec000537          	lui	a0,0xec000
 c7c:	839ff0ef          	jal	4b4 <write>
 c80:	fec42703          	lw	a4,-20(s0)
 c84:	000107b7          	lui	a5,0x10
 c88:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xda60>
 c8c:	00f77733          	and	a4,a4,a5
 c90:	000107b7          	lui	a5,0x10
 c94:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xda60>
 c98:	faf702e3          	beq	a4,a5,c3c <main+0x5c>
 c9c:	f5dff06f          	j	bf8 <main+0x18>
