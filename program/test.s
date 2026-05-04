
./program/test:     file format elf32-littleriscv


Disassembly of section .text:

00000020 <Entry>:
  20:	ff010113          	addi	sp,sp,-16
  24:	00112623          	sw	ra,12(sp)
  28:	00812423          	sw	s0,8(sp)
  2c:	01010413          	addi	s0,sp,16
  30:	64000113          	li	sp,1600
  34:	2ad000ef          	jal	ae0 <main>
  38:	0000006f          	j	38 <Entry+0x18>

0000003c <keyboard_handler>:
  3c:	fb010113          	addi	sp,sp,-80
  40:	04112623          	sw	ra,76(sp)
  44:	04512423          	sw	t0,72(sp)
  48:	04612223          	sw	t1,68(sp)
  4c:	04712023          	sw	t2,64(sp)
  50:	02812e23          	sw	s0,60(sp)
  54:	02a12c23          	sw	a0,56(sp)
  58:	02b12a23          	sw	a1,52(sp)
  5c:	02c12823          	sw	a2,48(sp)
  60:	02d12623          	sw	a3,44(sp)
  64:	02e12423          	sw	a4,40(sp)
  68:	02f12223          	sw	a5,36(sp)
  6c:	03012023          	sw	a6,32(sp)
  70:	01112e23          	sw	a7,28(sp)
  74:	01c12c23          	sw	t3,24(sp)
  78:	01d12a23          	sw	t4,20(sp)
  7c:	01e12823          	sw	t5,16(sp)
  80:	01f12623          	sw	t6,12(sp)
  84:	05010413          	addi	s0,sp,80
  88:	384000ef          	jal	40c <keyboard>
  8c:	04c12083          	lw	ra,76(sp)
  90:	04812283          	lw	t0,72(sp)
  94:	04412303          	lw	t1,68(sp)
  98:	04012383          	lw	t2,64(sp)
  9c:	03c12403          	lw	s0,60(sp)
  a0:	03812503          	lw	a0,56(sp)
  a4:	03412583          	lw	a1,52(sp)
  a8:	03012603          	lw	a2,48(sp)
  ac:	02c12683          	lw	a3,44(sp)
  b0:	02812703          	lw	a4,40(sp)
  b4:	02412783          	lw	a5,36(sp)
  b8:	02012803          	lw	a6,32(sp)
  bc:	01c12883          	lw	a7,28(sp)
  c0:	01812e03          	lw	t3,24(sp)
  c4:	01412e83          	lw	t4,20(sp)
  c8:	01012f03          	lw	t5,16(sp)
  cc:	00c12f83          	lw	t6,12(sp)
  d0:	05010113          	addi	sp,sp,80
  d4:	30200073          	mret

000000d8 <button_handler>:
  d8:	fb010113          	addi	sp,sp,-80
  dc:	04112623          	sw	ra,76(sp)
  e0:	04512423          	sw	t0,72(sp)
  e4:	04612223          	sw	t1,68(sp)
  e8:	04712023          	sw	t2,64(sp)
  ec:	02812e23          	sw	s0,60(sp)
  f0:	02a12c23          	sw	a0,56(sp)
  f4:	02b12a23          	sw	a1,52(sp)
  f8:	02c12823          	sw	a2,48(sp)
  fc:	02d12623          	sw	a3,44(sp)
 100:	02e12423          	sw	a4,40(sp)
 104:	02f12223          	sw	a5,36(sp)
 108:	03012023          	sw	a6,32(sp)
 10c:	01112e23          	sw	a7,28(sp)
 110:	01c12c23          	sw	t3,24(sp)
 114:	01d12a23          	sw	t4,20(sp)
 118:	01e12823          	sw	t5,16(sp)
 11c:	01f12623          	sw	t6,12(sp)
 120:	05010413          	addi	s0,sp,80
 124:	520000ef          	jal	644 <button>
 128:	04c12083          	lw	ra,76(sp)
 12c:	04812283          	lw	t0,72(sp)
 130:	04412303          	lw	t1,68(sp)
 134:	04012383          	lw	t2,64(sp)
 138:	03c12403          	lw	s0,60(sp)
 13c:	03812503          	lw	a0,56(sp)
 140:	03412583          	lw	a1,52(sp)
 144:	03012603          	lw	a2,48(sp)
 148:	02c12683          	lw	a3,44(sp)
 14c:	02812703          	lw	a4,40(sp)
 150:	02412783          	lw	a5,36(sp)
 154:	02012803          	lw	a6,32(sp)
 158:	01c12883          	lw	a7,28(sp)
 15c:	01812e03          	lw	t3,24(sp)
 160:	01412e83          	lw	t4,20(sp)
 164:	01012f03          	lw	t5,16(sp)
 168:	00c12f83          	lw	t6,12(sp)
 16c:	05010113          	addi	sp,sp,80
 170:	30200073          	mret

00000174 <counter_handler>:
 174:	fb010113          	addi	sp,sp,-80
 178:	04112623          	sw	ra,76(sp)
 17c:	04512423          	sw	t0,72(sp)
 180:	04612223          	sw	t1,68(sp)
 184:	04712023          	sw	t2,64(sp)
 188:	02812e23          	sw	s0,60(sp)
 18c:	02a12c23          	sw	a0,56(sp)
 190:	02b12a23          	sw	a1,52(sp)
 194:	02c12823          	sw	a2,48(sp)
 198:	02d12623          	sw	a3,44(sp)
 19c:	02e12423          	sw	a4,40(sp)
 1a0:	02f12223          	sw	a5,36(sp)
 1a4:	03012023          	sw	a6,32(sp)
 1a8:	01112e23          	sw	a7,28(sp)
 1ac:	01c12c23          	sw	t3,24(sp)
 1b0:	01d12a23          	sw	t4,20(sp)
 1b4:	01e12823          	sw	t5,16(sp)
 1b8:	01f12623          	sw	t6,12(sp)
 1bc:	05010413          	addi	s0,sp,80
 1c0:	4b8000ef          	jal	678 <counter>
 1c4:	04c12083          	lw	ra,76(sp)
 1c8:	04812283          	lw	t0,72(sp)
 1cc:	04412303          	lw	t1,68(sp)
 1d0:	04012383          	lw	t2,64(sp)
 1d4:	03c12403          	lw	s0,60(sp)
 1d8:	03812503          	lw	a0,56(sp)
 1dc:	03412583          	lw	a1,52(sp)
 1e0:	03012603          	lw	a2,48(sp)
 1e4:	02c12683          	lw	a3,44(sp)
 1e8:	02812703          	lw	a4,40(sp)
 1ec:	02412783          	lw	a5,36(sp)
 1f0:	02012803          	lw	a6,32(sp)
 1f4:	01c12883          	lw	a7,28(sp)
 1f8:	01812e03          	lw	t3,24(sp)
 1fc:	01412e83          	lw	t4,20(sp)
 200:	01012f03          	lw	t5,16(sp)
 204:	00c12f83          	lw	t6,12(sp)
 208:	05010113          	addi	sp,sp,80
 20c:	30200073          	mret

00000210 <wait>:
 210:	fe010113          	addi	sp,sp,-32
 214:	00112e23          	sw	ra,28(sp)
 218:	00812c23          	sw	s0,24(sp)
 21c:	02010413          	addi	s0,sp,32
 220:	fea42623          	sw	a0,-20(s0)
 224:	00000013          	nop
 228:	fec42783          	lw	a5,-20(s0)
 22c:	fff78713          	addi	a4,a5,-1
 230:	fee42623          	sw	a4,-20(s0)
 234:	fe079ae3          	bnez	a5,228 <wait+0x18>
 238:	00000013          	nop
 23c:	00000013          	nop
 240:	01c12083          	lw	ra,28(sp)
 244:	01812403          	lw	s0,24(sp)
 248:	02010113          	addi	sp,sp,32
 24c:	00008067          	ret

00000250 <sd_test>:
 250:	fe010113          	addi	sp,sp,-32
 254:	00112e23          	sw	ra,28(sp)
 258:	00812c23          	sw	s0,24(sp)
 25c:	02010413          	addi	s0,sp,32
 260:	008b57b7          	lui	a5,0x8b5
 264:	17978593          	addi	a1,a5,377 # 8b5179 <__global_pointer$+0x8b2e11>
 268:	e0000537          	lui	a0,0xe0000
 26c:	398000ef          	jal	604 <write>
 270:	00000593          	li	a1,0
 274:	e90007b7          	lui	a5,0xe9000
 278:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffdca4>
 27c:	388000ef          	jal	604 <write>
 280:	fe042623          	sw	zero,-20(s0)
 284:	02c0006f          	j	2b0 <sd_test+0x60>
 288:	fec42703          	lw	a4,-20(s0)
 28c:	c0de07b7          	lui	a5,0xc0de0
 290:	00f707b3          	add	a5,a4,a5
 294:	00078593          	mv	a1,a5
 298:	e90007b7          	lui	a5,0xe9000
 29c:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffdca0>
 2a0:	364000ef          	jal	604 <write>
 2a4:	fec42783          	lw	a5,-20(s0)
 2a8:	00178793          	addi	a5,a5,1
 2ac:	fef42623          	sw	a5,-20(s0)
 2b0:	fec42703          	lw	a4,-20(s0)
 2b4:	07f00793          	li	a5,127
 2b8:	fce7d8e3          	bge	a5,a4,288 <sd_test+0x38>
 2bc:	00000593          	li	a1,0
 2c0:	e90007b7          	lui	a5,0xe9000
 2c4:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffdc9c>
 2c8:	33c000ef          	jal	604 <write>
 2cc:	00200593          	li	a1,2
 2d0:	e9000537          	lui	a0,0xe9000
 2d4:	330000ef          	jal	604 <write>
 2d8:	fe440793          	addi	a5,s0,-28
 2dc:	00078593          	mv	a1,a5
 2e0:	e9000537          	lui	a0,0xe9000
 2e4:	2dc000ef          	jal	5c0 <read>
 2e8:	0140006f          	j	2fc <sd_test+0xac>
 2ec:	fe440793          	addi	a5,s0,-28
 2f0:	00078593          	mv	a1,a5
 2f4:	e9000537          	lui	a0,0xe9000
 2f8:	2c8000ef          	jal	5c0 <read>
 2fc:	fe442783          	lw	a5,-28(s0)
 300:	0017f793          	andi	a5,a5,1
 304:	fe0794e3          	bnez	a5,2ec <sd_test+0x9c>
 308:	00000593          	li	a1,0
 30c:	e90007b7          	lui	a5,0xe9000
 310:	00478513          	addi	a0,a5,4 # e9000004 <__global_pointer$+0xe8ffdc9c>
 314:	2f0000ef          	jal	604 <write>
 318:	00100593          	li	a1,1
 31c:	e9000537          	lui	a0,0xe9000
 320:	2e4000ef          	jal	604 <write>
 324:	fe440793          	addi	a5,s0,-28
 328:	00078593          	mv	a1,a5
 32c:	e9000537          	lui	a0,0xe9000
 330:	290000ef          	jal	5c0 <read>
 334:	0140006f          	j	348 <sd_test+0xf8>
 338:	fe440793          	addi	a5,s0,-28
 33c:	00078593          	mv	a1,a5
 340:	e9000537          	lui	a0,0xe9000
 344:	27c000ef          	jal	5c0 <read>
 348:	fe442783          	lw	a5,-28(s0)
 34c:	0017f793          	andi	a5,a5,1
 350:	fe0794e3          	bnez	a5,338 <sd_test+0xe8>
 354:	fe042423          	sw	zero,-24(s0)
 358:	fe042623          	sw	zero,-20(s0)
 35c:	0540006f          	j	3b0 <sd_test+0x160>
 360:	fec42583          	lw	a1,-20(s0)
 364:	e90007b7          	lui	a5,0xe9000
 368:	00c78513          	addi	a0,a5,12 # e900000c <__global_pointer$+0xe8ffdca4>
 36c:	298000ef          	jal	604 <write>
 370:	fe440793          	addi	a5,s0,-28
 374:	00078593          	mv	a1,a5
 378:	e90007b7          	lui	a5,0xe9000
 37c:	00878513          	addi	a0,a5,8 # e9000008 <__global_pointer$+0xe8ffdca0>
 380:	240000ef          	jal	5c0 <read>
 384:	fec42703          	lw	a4,-20(s0)
 388:	c0de07b7          	lui	a5,0xc0de0
 38c:	00f707b3          	add	a5,a4,a5
 390:	fe442703          	lw	a4,-28(s0)
 394:	00e78863          	beq	a5,a4,3a4 <sd_test+0x154>
 398:	fe842783          	lw	a5,-24(s0)
 39c:	00178793          	addi	a5,a5,1 # c0de0001 <__global_pointer$+0xc0dddc99>
 3a0:	fef42423          	sw	a5,-24(s0)
 3a4:	fec42783          	lw	a5,-20(s0)
 3a8:	00178793          	addi	a5,a5,1
 3ac:	fef42623          	sw	a5,-20(s0)
 3b0:	fec42703          	lw	a4,-20(s0)
 3b4:	07f00793          	li	a5,127
 3b8:	fae7d4e3          	bge	a5,a4,360 <sd_test+0x110>
 3bc:	fe842783          	lw	a5,-24(s0)
 3c0:	00079c63          	bnez	a5,3d8 <sd_test+0x188>
 3c4:	0000a7b7          	lui	a5,0xa
 3c8:	a5578593          	addi	a1,a5,-1451 # 9a55 <__global_pointer$+0x76ed>
 3cc:	e0000537          	lui	a0,0xe0000
 3d0:	234000ef          	jal	604 <write>
 3d4:	0240006f          	j	3f8 <sd_test+0x1a8>
 3d8:	fe842783          	lw	a5,-24(s0)
 3dc:	01079713          	slli	a4,a5,0x10
 3e0:	000107b7          	lui	a5,0x10
 3e4:	a1178793          	addi	a5,a5,-1519 # fa11 <__global_pointer$+0xd6a9>
 3e8:	00f767b3          	or	a5,a4,a5
 3ec:	00078593          	mv	a1,a5
 3f0:	e0000537          	lui	a0,0xe0000
 3f4:	210000ef          	jal	604 <write>
 3f8:	00000013          	nop
 3fc:	01c12083          	lw	ra,28(sp)
 400:	01812403          	lw	s0,24(sp)
 404:	02010113          	addi	sp,sp,32
 408:	00008067          	ret

0000040c <keyboard>:
 40c:	fe010113          	addi	sp,sp,-32
 410:	00112e23          	sw	ra,28(sp)
 414:	00812c23          	sw	s0,24(sp)
 418:	02010413          	addi	s0,sp,32
 41c:	fe042223          	sw	zero,-28(s0)
 420:	fec40793          	addi	a5,s0,-20
 424:	00078593          	mv	a1,a5
 428:	f4000537          	lui	a0,0xf4000
 42c:	194000ef          	jal	5c0 <read>
 430:	fe840793          	addi	a5,s0,-24
 434:	00078593          	mv	a1,a5
 438:	07000513          	li	a0,112
 43c:	184000ef          	jal	5c0 <read>
 440:	fe440793          	addi	a5,s0,-28
 444:	00078593          	mv	a1,a5
 448:	08000513          	li	a0,128
 44c:	174000ef          	jal	5c0 <read>
 450:	fec42783          	lw	a5,-20(s0)
 454:	0ff7f793          	zext.b	a5,a5
 458:	fef42623          	sw	a5,-20(s0)
 45c:	fec42703          	lw	a4,-20(s0)
 460:	0f000793          	li	a5,240
 464:	00f71a63          	bne	a4,a5,478 <keyboard+0x6c>
 468:	00100593          	li	a1,1
 46c:	08000513          	li	a0,128
 470:	194000ef          	jal	604 <write>
 474:	13c0006f          	j	5b0 <keyboard+0x1a4>
 478:	fe442703          	lw	a4,-28(s0)
 47c:	00100793          	li	a5,1
 480:	00f71a63          	bne	a4,a5,494 <keyboard+0x88>
 484:	00000593          	li	a1,0
 488:	08000513          	li	a0,128
 48c:	178000ef          	jal	604 <write>
 490:	1200006f          	j	5b0 <keyboard+0x1a4>
 494:	fec42703          	lw	a4,-20(s0)
 498:	00d00793          	li	a5,13
 49c:	00f71663          	bne	a4,a5,4a8 <keyboard+0x9c>
 4a0:	db1ff0ef          	jal	250 <sd_test>
 4a4:	10c0006f          	j	5b0 <keyboard+0x1a4>
 4a8:	fec42703          	lw	a4,-20(s0)
 4ac:	04e00793          	li	a5,78
 4b0:	04f71a63          	bne	a4,a5,504 <keyboard+0xf8>
 4b4:	fe842703          	lw	a4,-24(s0)
 4b8:	00100793          	li	a5,1
 4bc:	00e7fa63          	bgeu	a5,a4,4d0 <keyboard+0xc4>
 4c0:	fe842783          	lw	a5,-24(s0)
 4c4:	fff78793          	addi	a5,a5,-1
 4c8:	01f7f793          	andi	a5,a5,31
 4cc:	fef42423          	sw	a5,-24(s0)
 4d0:	fe842783          	lw	a5,-24(s0)
 4d4:	00078593          	mv	a1,a5
 4d8:	07000513          	li	a0,112
 4dc:	128000ef          	jal	604 <write>
 4e0:	fe842783          	lw	a5,-24(s0)
 4e4:	00078593          	mv	a1,a5
 4e8:	e5000537          	lui	a0,0xe5000
 4ec:	118000ef          	jal	604 <write>
 4f0:	fe842783          	lw	a5,-24(s0)
 4f4:	00078593          	mv	a1,a5
 4f8:	e0000537          	lui	a0,0xe0000
 4fc:	108000ef          	jal	604 <write>
 500:	0b00006f          	j	5b0 <keyboard+0x1a4>
 504:	fec42703          	lw	a4,-20(s0)
 508:	05500793          	li	a5,85
 50c:	04f71a63          	bne	a4,a5,560 <keyboard+0x154>
 510:	fe842703          	lw	a4,-24(s0)
 514:	00f00793          	li	a5,15
 518:	00e7ea63          	bltu	a5,a4,52c <keyboard+0x120>
 51c:	fe842783          	lw	a5,-24(s0)
 520:	00178793          	addi	a5,a5,1
 524:	01f7f793          	andi	a5,a5,31
 528:	fef42423          	sw	a5,-24(s0)
 52c:	fe842783          	lw	a5,-24(s0)
 530:	00078593          	mv	a1,a5
 534:	07000513          	li	a0,112
 538:	0cc000ef          	jal	604 <write>
 53c:	fe842783          	lw	a5,-24(s0)
 540:	00078593          	mv	a1,a5
 544:	e5000537          	lui	a0,0xe5000
 548:	0bc000ef          	jal	604 <write>
 54c:	fe842783          	lw	a5,-24(s0)
 550:	00078593          	mv	a1,a5
 554:	e0000537          	lui	a0,0xe0000
 558:	0ac000ef          	jal	604 <write>
 55c:	0540006f          	j	5b0 <keyboard+0x1a4>
 560:	fe042423          	sw	zero,-24(s0)
 564:	fec42703          	lw	a4,-20(s0)
 568:	03f00793          	li	a5,63
 56c:	02e7e463          	bltu	a5,a4,594 <keyboard+0x188>
 570:	fec42783          	lw	a5,-20(s0)
 574:	00078513          	mv	a0,a5
 578:	148000ef          	jal	6c0 <transform>
 57c:	00050793          	mv	a5,a0
 580:	fef42423          	sw	a5,-24(s0)
 584:	fe842783          	lw	a5,-24(s0)
 588:	00078593          	mv	a1,a5
 58c:	e4000537          	lui	a0,0xe4000
 590:	074000ef          	jal	604 <write>
 594:	fe842783          	lw	a5,-24(s0)
 598:	00c79713          	slli	a4,a5,0xc
 59c:	fec42783          	lw	a5,-20(s0)
 5a0:	00f767b3          	or	a5,a4,a5
 5a4:	00078593          	mv	a1,a5
 5a8:	e0000537          	lui	a0,0xe0000
 5ac:	058000ef          	jal	604 <write>
 5b0:	01c12083          	lw	ra,28(sp)
 5b4:	01812403          	lw	s0,24(sp)
 5b8:	02010113          	addi	sp,sp,32
 5bc:	00008067          	ret

000005c0 <read>:
 5c0:	fd010113          	addi	sp,sp,-48
 5c4:	02112623          	sw	ra,44(sp)
 5c8:	02812423          	sw	s0,40(sp)
 5cc:	03010413          	addi	s0,sp,48
 5d0:	fca42e23          	sw	a0,-36(s0)
 5d4:	fcb42c23          	sw	a1,-40(s0)
 5d8:	fdc42783          	lw	a5,-36(s0)
 5dc:	fef42623          	sw	a5,-20(s0)
 5e0:	fec42783          	lw	a5,-20(s0)
 5e4:	0007a703          	lw	a4,0(a5)
 5e8:	fd842783          	lw	a5,-40(s0)
 5ec:	00e7a023          	sw	a4,0(a5)
 5f0:	00000013          	nop
 5f4:	02c12083          	lw	ra,44(sp)
 5f8:	02812403          	lw	s0,40(sp)
 5fc:	03010113          	addi	sp,sp,48
 600:	00008067          	ret

00000604 <write>:
 604:	fd010113          	addi	sp,sp,-48
 608:	02112623          	sw	ra,44(sp)
 60c:	02812423          	sw	s0,40(sp)
 610:	03010413          	addi	s0,sp,48
 614:	fca42e23          	sw	a0,-36(s0)
 618:	fcb42c23          	sw	a1,-40(s0)
 61c:	fdc42783          	lw	a5,-36(s0)
 620:	fef42623          	sw	a5,-20(s0)
 624:	fec42783          	lw	a5,-20(s0)
 628:	fd842703          	lw	a4,-40(s0)
 62c:	00e7a023          	sw	a4,0(a5)
 630:	00000013          	nop
 634:	02c12083          	lw	ra,44(sp)
 638:	02812403          	lw	s0,40(sp)
 63c:	03010113          	addi	sp,sp,48
 640:	00008067          	ret

00000644 <button>:
 644:	ff010113          	addi	sp,sp,-16
 648:	00112623          	sw	ra,12(sp)
 64c:	00812423          	sw	s0,8(sp)
 650:	01010413          	addi	s0,sp,16
 654:	192617b7          	lui	a5,0x19261
 658:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e4af>
 65c:	e0000537          	lui	a0,0xe0000
 660:	fa5ff0ef          	jal	604 <write>
 664:	00000013          	nop
 668:	00c12083          	lw	ra,12(sp)
 66c:	00812403          	lw	s0,8(sp)
 670:	01010113          	addi	sp,sp,16
 674:	00008067          	ret

00000678 <counter>:
 678:	fe010113          	addi	sp,sp,-32
 67c:	00112e23          	sw	ra,28(sp)
 680:	00812c23          	sw	s0,24(sp)
 684:	02010413          	addi	s0,sp,32
 688:	fec40793          	addi	a5,s0,-20
 68c:	00078593          	mv	a1,a5
 690:	f8000537          	lui	a0,0xf8000
 694:	f2dff0ef          	jal	5c0 <read>
 698:	fec42783          	lw	a5,-20(s0)
 69c:	00279793          	slli	a5,a5,0x2
 6a0:	00078593          	mv	a1,a5
 6a4:	ec000537          	lui	a0,0xec000
 6a8:	f5dff0ef          	jal	604 <write>
 6ac:	00000013          	nop
 6b0:	01c12083          	lw	ra,28(sp)
 6b4:	01812403          	lw	s0,24(sp)
 6b8:	02010113          	addi	sp,sp,32
 6bc:	00008067          	ret

000006c0 <transform>:
 6c0:	fd010113          	addi	sp,sp,-48
 6c4:	02112623          	sw	ra,44(sp)
 6c8:	02812423          	sw	s0,40(sp)
 6cc:	03010413          	addi	s0,sp,48
 6d0:	fca42e23          	sw	a0,-36(s0)
 6d4:	fe042623          	sw	zero,-20(s0)
 6d8:	fdc42703          	lw	a4,-36(s0)
 6dc:	03f00793          	li	a5,63
 6e0:	00e7d663          	bge	a5,a4,6ec <transform+0x2c>
 6e4:	00000793          	li	a5,0
 6e8:	0240006f          	j	70c <transform+0x4c>
 6ec:	fdc42783          	lw	a5,-36(s0)
 6f0:	00279793          	slli	a5,a5,0x2
 6f4:	20078793          	addi	a5,a5,512
 6f8:	fec40713          	addi	a4,s0,-20
 6fc:	00070593          	mv	a1,a4
 700:	00078513          	mv	a0,a5
 704:	ebdff0ef          	jal	5c0 <read>
 708:	fec42783          	lw	a5,-20(s0)
 70c:	00078513          	mv	a0,a5
 710:	02c12083          	lw	ra,44(sp)
 714:	02812403          	lw	s0,40(sp)
 718:	03010113          	addi	sp,sp,48
 71c:	00008067          	ret

00000720 <displayAC>:
 720:	fe010113          	addi	sp,sp,-32
 724:	00112e23          	sw	ra,28(sp)
 728:	00812c23          	sw	s0,24(sp)
 72c:	02010413          	addi	s0,sp,32
 730:	fe040793          	addi	a5,s0,-32
 734:	00078593          	mv	a1,a5
 738:	06000513          	li	a0,96
 73c:	e85ff0ef          	jal	5c0 <read>
 740:	fe042783          	lw	a5,-32(s0)
 744:	00279793          	slli	a5,a5,0x2
 748:	10078793          	addi	a5,a5,256
 74c:	00078713          	mv	a4,a5
 750:	fe440793          	addi	a5,s0,-28
 754:	00078593          	mv	a1,a5
 758:	00070513          	mv	a0,a4
 75c:	e65ff0ef          	jal	5c0 <read>
 760:	fe442783          	lw	a5,-28(s0)
 764:	00078593          	mv	a1,a5
 768:	e0000537          	lui	a0,0xe0000
 76c:	e99ff0ef          	jal	604 <write>
 770:	fe442783          	lw	a5,-28(s0)
 774:	0ff7f793          	zext.b	a5,a5
 778:	fef42623          	sw	a5,-20(s0)
 77c:	fe442783          	lw	a5,-28(s0)
 780:	0087d793          	srli	a5,a5,0x8
 784:	fef42423          	sw	a5,-24(s0)
 788:	fec42783          	lw	a5,-20(s0)
 78c:	01879713          	slli	a4,a5,0x18
 790:	fe842783          	lw	a5,-24(s0)
 794:	00f767b3          	or	a5,a4,a5
 798:	fef42223          	sw	a5,-28(s0)
 79c:	fe042783          	lw	a5,-32(s0)
 7a0:	00279793          	slli	a5,a5,0x2
 7a4:	10078793          	addi	a5,a5,256
 7a8:	00078713          	mv	a4,a5
 7ac:	fe442783          	lw	a5,-28(s0)
 7b0:	00078593          	mv	a1,a5
 7b4:	00070513          	mv	a0,a4
 7b8:	e4dff0ef          	jal	604 <write>
 7bc:	fe042783          	lw	a5,-32(s0)
 7c0:	00178793          	addi	a5,a5,1
 7c4:	00f7f793          	andi	a5,a5,15
 7c8:	00078593          	mv	a1,a5
 7cc:	06000513          	li	a0,96
 7d0:	e35ff0ef          	jal	604 <write>
 7d4:	0007a7b7          	lui	a5,0x7a
 7d8:	12078513          	addi	a0,a5,288 # 7a120 <__global_pointer$+0x77db8>
 7dc:	a35ff0ef          	jal	210 <wait>
 7e0:	00000013          	nop
 7e4:	01c12083          	lw	ra,28(sp)
 7e8:	01812403          	lw	s0,24(sp)
 7ec:	02010113          	addi	sp,sp,32
 7f0:	00008067          	ret

000007f4 <initialize>:
 7f4:	fa010113          	addi	sp,sp,-96
 7f8:	04112e23          	sw	ra,92(sp)
 7fc:	04812c23          	sw	s0,88(sp)
 800:	06010413          	addi	s0,sp,96
 804:	fff00793          	li	a5,-1
 808:	faf42423          	sw	a5,-88(s0)
 80c:	fffff7b7          	lui	a5,0xfffff
 810:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xffffcc97>
 814:	faf42623          	sw	a5,-84(s0)
 818:	ffffd7b7          	lui	a5,0xffffd
 81c:	fff78793          	addi	a5,a5,-1 # ffffcfff <__global_pointer$+0xffffac97>
 820:	faf42823          	sw	a5,-80(s0)
 824:	ffffd7b7          	lui	a5,0xffffd
 828:	eff78793          	addi	a5,a5,-257 # ffffceff <__global_pointer$+0xffffab97>
 82c:	faf42a23          	sw	a5,-76(s0)
 830:	ffffd7b7          	lui	a5,0xffffd
 834:	cff78793          	addi	a5,a5,-769 # ffffccff <__global_pointer$+0xffffa997>
 838:	faf42c23          	sw	a5,-72(s0)
 83c:	ffff97b7          	lui	a5,0xffff9
 840:	cff78793          	addi	a5,a5,-769 # ffff8cff <__global_pointer$+0xffff6997>
 844:	faf42e23          	sw	a5,-68(s0)
 848:	ffff97b7          	lui	a5,0xffff9
 84c:	8ff78793          	addi	a5,a5,-1793 # ffff88ff <__global_pointer$+0xffff6597>
 850:	fcf42023          	sw	a5,-64(s0)
 854:	ffff97b7          	lui	a5,0xffff9
 858:	8fe78793          	addi	a5,a5,-1794 # ffff88fe <__global_pointer$+0xffff6596>
 85c:	fcf42223          	sw	a5,-60(s0)
 860:	ffff97b7          	lui	a5,0xffff9
 864:	8de78793          	addi	a5,a5,-1826 # ffff88de <__global_pointer$+0xffff6576>
 868:	fcf42423          	sw	a5,-56(s0)
 86c:	ffff97b7          	lui	a5,0xffff9
 870:	8ce78793          	addi	a5,a5,-1842 # ffff88ce <__global_pointer$+0xffff6566>
 874:	fcf42623          	sw	a5,-52(s0)
 878:	ffff97b7          	lui	a5,0xffff9
 87c:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff655e>
 880:	fcf42823          	sw	a5,-48(s0)
 884:	fff00793          	li	a5,-1
 888:	fcf42a23          	sw	a5,-44(s0)
 88c:	ffff97b7          	lui	a5,0xffff9
 890:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff655e>
 894:	fcf42c23          	sw	a5,-40(s0)
 898:	fff00793          	li	a5,-1
 89c:	fcf42e23          	sw	a5,-36(s0)
 8a0:	ffff97b7          	lui	a5,0xffff9
 8a4:	8c678793          	addi	a5,a5,-1850 # ffff88c6 <__global_pointer$+0xffff655e>
 8a8:	fef42023          	sw	a5,-32(s0)
 8ac:	7f7f87b7          	lui	a5,0x7f7f8
 8b0:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__global_pointer$+0x7f7f5c17>
 8b4:	fef42223          	sw	a5,-28(s0)
 8b8:	fe042623          	sw	zero,-20(s0)
 8bc:	03c0006f          	j	8f8 <initialize+0x104>
 8c0:	fec42783          	lw	a5,-20(s0)
 8c4:	00279793          	slli	a5,a5,0x2
 8c8:	10078693          	addi	a3,a5,256
 8cc:	fec42703          	lw	a4,-20(s0)
 8d0:	fa840793          	addi	a5,s0,-88
 8d4:	00271713          	slli	a4,a4,0x2
 8d8:	00f707b3          	add	a5,a4,a5
 8dc:	0007a783          	lw	a5,0(a5)
 8e0:	00078593          	mv	a1,a5
 8e4:	00068513          	mv	a0,a3
 8e8:	d1dff0ef          	jal	604 <write>
 8ec:	fec42783          	lw	a5,-20(s0)
 8f0:	00178793          	addi	a5,a5,1
 8f4:	fef42623          	sw	a5,-20(s0)
 8f8:	fec42703          	lw	a4,-20(s0)
 8fc:	00f00793          	li	a5,15
 900:	fce7d0e3          	bge	a5,a4,8c0 <initialize+0xcc>
 904:	fe042423          	sw	zero,-24(s0)
 908:	0280006f          	j	930 <initialize+0x13c>
 90c:	fe842783          	lw	a5,-24(s0)
 910:	00279793          	slli	a5,a5,0x2
 914:	20078793          	addi	a5,a5,512
 918:	00000593          	li	a1,0
 91c:	00078513          	mv	a0,a5
 920:	ce5ff0ef          	jal	604 <write>
 924:	fe842783          	lw	a5,-24(s0)
 928:	00178793          	addi	a5,a5,1
 92c:	fef42423          	sw	a5,-24(s0)
 930:	fe842703          	lw	a4,-24(s0)
 934:	03f00793          	li	a5,63
 938:	fce7dae3          	bge	a5,a4,90c <initialize+0x118>
 93c:	000bb7b7          	lui	a5,0xbb
 940:	a0478593          	addi	a1,a5,-1532 # baa04 <__global_pointer$+0xb869c>
 944:	26800513          	li	a0,616
 948:	cbdff0ef          	jal	604 <write>
 94c:	000a67b7          	lui	a5,0xa6
 950:	44878593          	addi	a1,a5,1096 # a6448 <__global_pointer$+0xa40e0>
 954:	28800513          	li	a0,648
 958:	cadff0ef          	jal	604 <write>
 95c:	000947b7          	lui	a5,0x94
 960:	21678593          	addi	a1,a5,534 # 94216 <__global_pointer$+0x91eae>
 964:	28400513          	li	a0,644
 968:	c9dff0ef          	jal	604 <write>
 96c:	0008c7b7          	lui	a5,0x8c
 970:	d1878593          	addi	a1,a5,-744 # 8bd18 <__global_pointer$+0x899b0>
 974:	2a800513          	li	a0,680
 978:	c8dff0ef          	jal	604 <write>
 97c:	0007d7b7          	lui	a5,0x7d
 980:	90278593          	addi	a1,a5,-1790 # 7c902 <__global_pointer$+0x7a59a>
 984:	2c800513          	li	a0,712
 988:	c7dff0ef          	jal	604 <write>
 98c:	0006f7b7          	lui	a5,0x6f
 990:	f9178593          	addi	a1,a5,-111 # 6ef91 <__global_pointer$+0x6cc29>
 994:	2c400513          	li	a0,708
 998:	c6dff0ef          	jal	604 <write>
 99c:	000637b7          	lui	a5,0x63
 9a0:	dda78593          	addi	a1,a5,-550 # 62dda <__global_pointer$+0x60a72>
 9a4:	2e800513          	li	a0,744
 9a8:	c5dff0ef          	jal	604 <write>
 9ac:	0005d7b7          	lui	a5,0x5d
 9b0:	50278593          	addi	a1,a5,1282 # 5d502 <__global_pointer$+0x5b19a>
 9b4:	27000513          	li	a0,624
 9b8:	c4dff0ef          	jal	604 <write>
 9bc:	000537b7          	lui	a5,0x53
 9c0:	22478593          	addi	a1,a5,548 # 53224 <__global_pointer$+0x50ebc>
 9c4:	26c00513          	li	a0,620
 9c8:	c3dff0ef          	jal	604 <write>
 9cc:	0004a7b7          	lui	a5,0x4a
 9d0:	10b78593          	addi	a1,a5,267 # 4a10b <__global_pointer$+0x47da3>
 9d4:	28c00513          	li	a0,652
 9d8:	c2dff0ef          	jal	604 <write>
 9dc:	000467b7          	lui	a5,0x46
 9e0:	e8c78593          	addi	a1,a5,-372 # 45e8c <__global_pointer$+0x43b24>
 9e4:	2ac00513          	li	a0,684
 9e8:	c1dff0ef          	jal	604 <write>
 9ec:	0003e7b7          	lui	a5,0x3e
 9f0:	48178593          	addi	a1,a5,1153 # 3e481 <__global_pointer$+0x3c119>
 9f4:	2d000513          	li	a0,720
 9f8:	c0dff0ef          	jal	604 <write>
 9fc:	000377b7          	lui	a5,0x37
 a00:	7c978593          	addi	a1,a5,1993 # 377c9 <__global_pointer$+0x35461>
 a04:	2cc00513          	li	a0,716
 a08:	bfdff0ef          	jal	604 <write>
 a0c:	000317b7          	lui	a5,0x31
 a10:	6ed78593          	addi	a1,a5,1773 # 316ed <__global_pointer$+0x2f385>
 a14:	2ec00513          	li	a0,748
 a18:	bedff0ef          	jal	604 <write>
 a1c:	0002f7b7          	lui	a5,0x2f
 a20:	a8978593          	addi	a1,a5,-1399 # 2ea89 <__global_pointer$+0x2c721>
 a24:	25400513          	li	a0,596
 a28:	bddff0ef          	jal	604 <write>
 a2c:	0002a7b7          	lui	a5,0x2a
 a30:	91278593          	addi	a1,a5,-1774 # 29912 <__global_pointer$+0x275aa>
 a34:	27400513          	li	a0,628
 a38:	bcdff0ef          	jal	604 <write>
 a3c:	000257b7          	lui	a5,0x25
 a40:	08678593          	addi	a1,a5,134 # 25086 <__global_pointer$+0x22d1e>
 a44:	29000513          	li	a0,656
 a48:	bbdff0ef          	jal	604 <write>
 a4c:	000237b7          	lui	a5,0x23
 a50:	f4678593          	addi	a1,a5,-186 # 22f46 <__global_pointer$+0x20bde>
 a54:	2b400513          	li	a0,692
 a58:	badff0ef          	jal	604 <write>
 a5c:	0001f7b7          	lui	a5,0x1f
 a60:	24178593          	addi	a1,a5,577 # 1f241 <__global_pointer$+0x1ced9>
 a64:	2b000513          	li	a0,688
 a68:	b9dff0ef          	jal	604 <write>
 a6c:	0001c7b7          	lui	a5,0x1c
 a70:	be478593          	addi	a1,a5,-1052 # 1bbe4 <__global_pointer$+0x1987c>
 a74:	2d400513          	li	a0,724
 a78:	b8dff0ef          	jal	604 <write>
 a7c:	000197b7          	lui	a5,0x19
 a80:	b7778593          	addi	a1,a5,-1161 # 18b77 <__global_pointer$+0x1680f>
 a84:	2f000513          	li	a0,752
 a88:	b7dff0ef          	jal	604 <write>
 a8c:	00000593          	li	a1,0
 a90:	06000513          	li	a0,96
 a94:	b71ff0ef          	jal	604 <write>
 a98:	192617b7          	lui	a5,0x19261
 a9c:	81778593          	addi	a1,a5,-2025 # 19260817 <__global_pointer$+0x1925e4af>
 aa0:	e0000537          	lui	a0,0xe0000
 aa4:	b61ff0ef          	jal	604 <write>
 aa8:	01000593          	li	a1,16
 aac:	07000513          	li	a0,112
 ab0:	b55ff0ef          	jal	604 <write>
 ab4:	01000593          	li	a1,16
 ab8:	e5000537          	lui	a0,0xe5000
 abc:	b49ff0ef          	jal	604 <write>
 ac0:	00000593          	li	a1,0
 ac4:	08000513          	li	a0,128
 ac8:	b3dff0ef          	jal	604 <write>
 acc:	00000013          	nop
 ad0:	05c12083          	lw	ra,92(sp)
 ad4:	05812403          	lw	s0,88(sp)
 ad8:	06010113          	addi	sp,sp,96
 adc:	00008067          	ret

00000ae0 <main>:
 ae0:	fe010113          	addi	sp,sp,-32
 ae4:	00112e23          	sw	ra,28(sp)
 ae8:	00812c23          	sw	s0,24(sp)
 aec:	02010413          	addi	s0,sp,32
 af0:	fe042623          	sw	zero,-20(s0)
 af4:	d01ff0ef          	jal	7f4 <initialize>
 af8:	fec40793          	addi	a5,s0,-20
 afc:	00078593          	mv	a1,a5
 b00:	f0000537          	lui	a0,0xf0000
 b04:	abdff0ef          	jal	5c0 <read>
 b08:	fec42783          	lw	a5,-20(s0)
 b0c:	00279793          	slli	a5,a5,0x2
 b10:	00078593          	mv	a1,a5
 b14:	ec000537          	lui	a0,0xec000
 b18:	aedff0ef          	jal	604 <write>
 b1c:	02c0006f          	j	b48 <main+0x68>
 b20:	c01ff0ef          	jal	720 <displayAC>
 b24:	fec40793          	addi	a5,s0,-20
 b28:	00078593          	mv	a1,a5
 b2c:	f0000537          	lui	a0,0xf0000
 b30:	a91ff0ef          	jal	5c0 <read>
 b34:	fec42783          	lw	a5,-20(s0)
 b38:	00279793          	slli	a5,a5,0x2
 b3c:	00078593          	mv	a1,a5
 b40:	ec000537          	lui	a0,0xec000
 b44:	ac1ff0ef          	jal	604 <write>
 b48:	fec42703          	lw	a4,-20(s0)
 b4c:	000107b7          	lui	a5,0x10
 b50:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xdb98>
 b54:	00f77733          	and	a4,a4,a5
 b58:	000107b7          	lui	a5,0x10
 b5c:	f0078793          	addi	a5,a5,-256 # ff00 <__global_pointer$+0xdb98>
 b60:	fcf700e3          	beq	a4,a5,b20 <main+0x40>
 b64:	f95ff06f          	j	af8 <main+0x18>
