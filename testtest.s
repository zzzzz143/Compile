
testtest:     file format elf64-littleriscv


Disassembly of section .plt:

0000000000010510 <_PROCEDURE_LINKAGE_TABLE_>:
   10510:	97 23 00 00 33 03 c3 41 03 be 03 af 13 03 43 fd     .#..3..A......C.
   10520:	93 82 03 af 13 53 13 00 83 b2 82 00 67 00 0e 00     .....S......g...

0000000000010530 <__libc_start_main@plt>:
   10530:	00002e17          	auipc	t3,0x2
   10534:	ae0e3e03          	ld	t3,-1312(t3) # 12010 <__libc_start_main@GLIBC_2.34>
   10538:	000e0367          	jalr	t1,t3
   1053c:	00000013          	nop

0000000000010540 <__isoc99_scanf@plt>:
   10540:	00002e17          	auipc	t3,0x2
   10544:	ad8e3e03          	ld	t3,-1320(t3) # 12018 <__isoc99_scanf@GLIBC_2.27>
   10548:	000e0367          	jalr	t1,t3
   1054c:	00000013          	nop

0000000000010550 <printf@plt>:
   10550:	00002e17          	auipc	t3,0x2
   10554:	ad0e3e03          	ld	t3,-1328(t3) # 12020 <printf@GLIBC_2.27>
   10558:	000e0367          	jalr	t1,t3
   1055c:	00000013          	nop

Disassembly of section .text:

0000000000010560 <_start>:
   10560:	022000ef          	jal	10582 <load_gp>
   10564:	87aa                	mv	a5,a0
   10566:	00000517          	auipc	a0,0x0
   1056a:	08e50513          	add	a0,a0,142 # 105f4 <main>
   1056e:	6582                	ld	a1,0(sp)
   10570:	0030                	add	a2,sp,8
   10572:	ff017113          	and	sp,sp,-16
   10576:	4681                	li	a3,0
   10578:	4701                	li	a4,0
   1057a:	880a                	mv	a6,sp
   1057c:	fb5ff0ef          	jal	10530 <__libc_start_main@plt>
   10580:	9002                	ebreak

0000000000010582 <load_gp>:
   10582:	00002197          	auipc	gp,0x2
   10586:	27e18193          	add	gp,gp,638 # 12800 <__global_pointer$>
   1058a:	8082                	ret
	...

000000000001058e <deregister_tm_clones>:
   1058e:	6549                	lui	a0,0x12
   10590:	6749                	lui	a4,0x12
   10592:	00050793          	mv	a5,a0
   10596:	00070713          	mv	a4,a4
   1059a:	00f70863          	beq	a4,a5,105aa <deregister_tm_clones+0x1c>
   1059e:	00000793          	li	a5,0
   105a2:	c781                	beqz	a5,105aa <deregister_tm_clones+0x1c>
   105a4:	00050513          	mv	a0,a0
   105a8:	8782                	jr	a5
   105aa:	8082                	ret

00000000000105ac <register_tm_clones>:
   105ac:	6549                	lui	a0,0x12
   105ae:	00050793          	mv	a5,a0
   105b2:	6749                	lui	a4,0x12
   105b4:	00070593          	mv	a1,a4
   105b8:	8d9d                	sub	a1,a1,a5
   105ba:	4035d793          	sra	a5,a1,0x3
   105be:	91fd                	srl	a1,a1,0x3f
   105c0:	95be                	add	a1,a1,a5
   105c2:	8585                	sra	a1,a1,0x1
   105c4:	c599                	beqz	a1,105d2 <register_tm_clones+0x26>
   105c6:	00000793          	li	a5,0
   105ca:	c781                	beqz	a5,105d2 <register_tm_clones+0x26>
   105cc:	00050513          	mv	a0,a0
   105d0:	8782                	jr	a5
   105d2:	8082                	ret

00000000000105d4 <__do_global_dtors_aux>:
   105d4:	1141                	add	sp,sp,-16
   105d6:	e022                	sd	s0,0(sp)
   105d8:	8381c783          	lbu	a5,-1992(gp) # 12038 <completed.0>
   105dc:	e406                	sd	ra,8(sp)
   105de:	e791                	bnez	a5,105ea <__do_global_dtors_aux+0x16>
   105e0:	fafff0ef          	jal	1058e <deregister_tm_clones>
   105e4:	4785                	li	a5,1
   105e6:	82f18c23          	sb	a5,-1992(gp) # 12038 <completed.0>
   105ea:	60a2                	ld	ra,8(sp)
   105ec:	6402                	ld	s0,0(sp)
   105ee:	0141                	add	sp,sp,16
   105f0:	8082                	ret

00000000000105f2 <frame_dummy>:
   105f2:	bf6d                	j	105ac <register_tm_clones>

00000000000105f4 <main>:
   105f4:	1101                	add	sp,sp,-32
   105f6:	ec06                	sd	ra,24(sp)
   105f8:	e822                	sd	s0,16(sp)
   105fa:	1000                	add	s0,sp,32
   105fc:	fe042623          	sw	zero,-20(s0)
   10600:	fe042423          	sw	zero,-24(s0)
   10604:	a835                	j	10640 <main+0x4c>
   10606:	fe842783          	lw	a5,-24(s0)
   1060a:	85be                	mv	a1,a5
   1060c:	67c1                	lui	a5,0x10
   1060e:	67878513          	add	a0,a5,1656 # 10678 <_IO_stdin_used+0x8>
   10612:	f3fff0ef          	jal	10550 <printf@plt>
   10616:	fe440793          	add	a5,s0,-28
   1061a:	85be                	mv	a1,a5
   1061c:	67c1                	lui	a5,0x10
   1061e:	69878513          	add	a0,a5,1688 # 10698 <_IO_stdin_used+0x28>
   10622:	f1fff0ef          	jal	10540 <__isoc99_scanf@plt>
   10626:	fe442787          	flw	fa5,-28(s0)
   1062a:	fec42707          	flw	fa4,-20(s0)
   1062e:	00f777d3          	fadd.s	fa5,fa4,fa5
   10632:	fef42627          	fsw	fa5,-20(s0)
   10636:	fe842783          	lw	a5,-24(s0)
   1063a:	2785                	addw	a5,a5,1
   1063c:	fef42423          	sw	a5,-24(s0)
   10640:	fe842783          	lw	a5,-24(s0)
   10644:	0007871b          	sext.w	a4,a5
   10648:	47a5                	li	a5,9
   1064a:	fae7dee3          	bge	a5,a4,10606 <main+0x12>
   1064e:	fec42787          	flw	fa5,-20(s0)
   10652:	420787d3          	fcvt.d.s	fa5,fa5
   10656:	e20785d3          	fmv.x.d	a1,fa5
   1065a:	67c1                	lui	a5,0x10
   1065c:	6a078513          	add	a0,a5,1696 # 106a0 <_IO_stdin_used+0x30>
   10660:	ef1ff0ef          	jal	10550 <printf@plt>
   10664:	4781                	li	a5,0
   10666:	853e                	mv	a0,a5
   10668:	60e2                	ld	ra,24(sp)
   1066a:	6442                	ld	s0,16(sp)
   1066c:	6105                	add	sp,sp,32
   1066e:	8082                	ret
