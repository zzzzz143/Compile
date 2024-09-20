
testtest2:     file format elf64-littleriscv


Disassembly of section .plt:

0000000000010620 <_PROCEDURE_LINKAGE_TABLE_>:
   10620:	97 23 00 00 33 03 c3 41 03 be 03 9e 13 03 43 fd     .#..3..A......C.
   10630:	93 82 03 9e 13 53 13 00 83 b2 82 00 67 00 0e 00     .....S......g...

0000000000010640 <__libc_start_main@plt>:
   10640:	00002e17          	auipc	t3,0x2
   10644:	9d0e3e03          	ld	t3,-1584(t3) # 12010 <__libc_start_main@GLIBC_2.34>
   10648:	000e0367          	jalr	t1,t3
   1064c:	00000013          	nop

0000000000010650 <__isoc99_scanf@plt>:
   10650:	00002e17          	auipc	t3,0x2
   10654:	9c8e3e03          	ld	t3,-1592(t3) # 12018 <__isoc99_scanf@GLIBC_2.27>
   10658:	000e0367          	jalr	t1,t3
   1065c:	00000013          	nop

0000000000010660 <_ZNSt8ios_base4InitC1Ev@plt>:
   10660:	00002e17          	auipc	t3,0x2
   10664:	9c0e3e03          	ld	t3,-1600(t3) # 12020 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
   10668:	000e0367          	jalr	t1,t3
   1066c:	00000013          	nop

0000000000010670 <__cxa_atexit@plt>:
   10670:	00002e17          	auipc	t3,0x2
   10674:	9b8e3e03          	ld	t3,-1608(t3) # 12028 <__cxa_atexit@GLIBC_2.27>
   10678:	000e0367          	jalr	t1,t3
   1067c:	00000013          	nop

0000000000010680 <printf@plt>:
   10680:	00002e17          	auipc	t3,0x2
   10684:	9b0e3e03          	ld	t3,-1616(t3) # 12030 <printf@GLIBC_2.27>
   10688:	000e0367          	jalr	t1,t3
   1068c:	00000013          	nop

0000000000010690 <_ZNSt8ios_base4InitD1Ev@plt>:
   10690:	00002e17          	auipc	t3,0x2
   10694:	9a8e3e03          	ld	t3,-1624(t3) # 12038 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
   10698:	000e0367          	jalr	t1,t3
   1069c:	00000013          	nop

Disassembly of section .text:

00000000000106a0 <_start>:
   106a0:	022000ef          	jal	106c2 <load_gp>
   106a4:	87aa                	mv	a5,a0
   106a6:	00000517          	auipc	a0,0x0
   106aa:	08e50513          	add	a0,a0,142 # 10734 <main>
   106ae:	6582                	ld	a1,0(sp)
   106b0:	0030                	add	a2,sp,8
   106b2:	ff017113          	and	sp,sp,-16
   106b6:	4681                	li	a3,0
   106b8:	4701                	li	a4,0
   106ba:	880a                	mv	a6,sp
   106bc:	f85ff0ef          	jal	10640 <__libc_start_main@plt>
   106c0:	9002                	ebreak

00000000000106c2 <load_gp>:
   106c2:	00002197          	auipc	gp,0x2
   106c6:	13e18193          	add	gp,gp,318 # 12800 <__global_pointer$>
   106ca:	8082                	ret
	...

00000000000106ce <deregister_tm_clones>:
   106ce:	6549                	lui	a0,0x12
   106d0:	6749                	lui	a4,0x12
   106d2:	00050793          	mv	a5,a0
   106d6:	00070713          	mv	a4,a4
   106da:	00f70863          	beq	a4,a5,106ea <deregister_tm_clones+0x1c>
   106de:	00000793          	li	a5,0
   106e2:	c781                	beqz	a5,106ea <deregister_tm_clones+0x1c>
   106e4:	00050513          	mv	a0,a0
   106e8:	8782                	jr	a5
   106ea:	8082                	ret

00000000000106ec <register_tm_clones>:
   106ec:	6549                	lui	a0,0x12
   106ee:	00050793          	mv	a5,a0
   106f2:	6749                	lui	a4,0x12
   106f4:	00070593          	mv	a1,a4
   106f8:	8d9d                	sub	a1,a1,a5
   106fa:	4035d793          	sra	a5,a1,0x3
   106fe:	91fd                	srl	a1,a1,0x3f
   10700:	95be                	add	a1,a1,a5
   10702:	8585                	sra	a1,a1,0x1
   10704:	c599                	beqz	a1,10712 <register_tm_clones+0x26>
   10706:	00000793          	li	a5,0
   1070a:	c781                	beqz	a5,10712 <register_tm_clones+0x26>
   1070c:	00050513          	mv	a0,a0
   10710:	8782                	jr	a5
   10712:	8082                	ret

0000000000010714 <__do_global_dtors_aux>:
   10714:	1141                	add	sp,sp,-16
   10716:	e022                	sd	s0,0(sp)
   10718:	8501c783          	lbu	a5,-1968(gp) # 12050 <completed.0>
   1071c:	e406                	sd	ra,8(sp)
   1071e:	e791                	bnez	a5,1072a <__do_global_dtors_aux+0x16>
   10720:	fafff0ef          	jal	106ce <deregister_tm_clones>
   10724:	4785                	li	a5,1
   10726:	84f18823          	sb	a5,-1968(gp) # 12050 <completed.0>
   1072a:	60a2                	ld	ra,8(sp)
   1072c:	6402                	ld	s0,0(sp)
   1072e:	0141                	add	sp,sp,16
   10730:	8082                	ret

0000000000010732 <frame_dummy>:
   10732:	bf6d                	j	106ec <register_tm_clones>

0000000000010734 <main>:
   10734:	715d                	add	sp,sp,-80
   10736:	e486                	sd	ra,72(sp)
   10738:	e0a2                	sd	s0,64(sp)
   1073a:	0880                	add	s0,sp,80
   1073c:	fe042623          	sw	zero,-20(s0)
   10740:	a815                	j	10774 <main+0x40>
###############输入部分
   10742:	fec42783          	lw	a5,-20(s0)  #-20（s0）存放i
   10746:	85be                	mv	a1,a5
   10748:	67c5                	lui	a5,0x11
   1074a:	8f878513          	add	a0,a5,-1800 # 108f8 <_IO_stdin_used+0x8>
   1074e:	f33ff0ef          	jal	10680 <printf@plt>

   10752:	fb040713          	add	a4,s0,-80  #a4存放数组arr基址
   10756:	fec42783          	lw	a5,-20(s0)
   1075a:	078a                	sll	a5,a5,0x2
   1075c:	97ba                	add	a5,a5,a4
   1075e:	85be                	mv	a1,a5
   10760:	67c5                	lui	a5,0x11
   10762:	91078513          	add	a0,a5,-1776 # 10910 <_IO_stdin_used+0x20>
   10766:	eebff0ef          	jal	10650 <__isoc99_scanf@plt>

   1076a:	fec42783          	lw	a5,-20(s0)
   1076e:	2785                	addw	a5,a5,1
   10770:	fef42623          	sw	a5,-20(s0)

   10774:	fec42783          	lw	a5,-20(s0)
   10778:	0007871b          	sext.w	a4,a5
   1077c:	47a5                	li	a5,9
   1077e:	fce7d2e3          	bge	a5,a4,10742 <main+0xe>
################冒泡排序部分
   10782:	fe042423          	sw	zero,-24(s0)
   10786:	a879                	j	10824 <main+0xf0>
   10788:	fe042223          	sw	zero,-28(s0)
   1078c:	a8a5                	j	10804 <main+0xd0>
   1078e:	fe442783          	lw	a5,-28(s0)
   10792:	078a                	sll	a5,a5,0x2
   10794:	17c1                	add	a5,a5,-16
   10796:	97a2                	add	a5,a5,s0
   10798:	fc07a783          	lw	a5,-64(a5)
   1079c:	fcf42e23          	sw	a5,-36(s0)
   107a0:	fe442783          	lw	a5,-28(s0)
   107a4:	078a                	sll	a5,a5,0x2
   107a6:	17c1                	add	a5,a5,-16
   107a8:	97a2                	add	a5,a5,s0
   107aa:	fc07a703          	lw	a4,-64(a5)
   107ae:	fe442783          	lw	a5,-28(s0)
   107b2:	2785                	addw	a5,a5,1
   107b4:	2781                	sext.w	a5,a5
   107b6:	078a                	sll	a5,a5,0x2
   107b8:	17c1                	add	a5,a5,-16
   107ba:	97a2                	add	a5,a5,s0
   107bc:	fc07a783          	lw	a5,-64(a5)
   107c0:	02e7dd63          	bge	a5,a4,107fa <main+0xc6>
   107c4:	fe442783          	lw	a5,-28(s0)
   107c8:	2785                	addw	a5,a5,1
   107ca:	2781                	sext.w	a5,a5
   107cc:	078a                	sll	a5,a5,0x2
   107ce:	17c1                	add	a5,a5,-16
   107d0:	97a2                	add	a5,a5,s0
   107d2:	fc07a703          	lw	a4,-64(a5)
   107d6:	fe442783          	lw	a5,-28(s0)
   107da:	078a                	sll	a5,a5,0x2
   107dc:	17c1                	add	a5,a5,-16
   107de:	97a2                	add	a5,a5,s0
   107e0:	fce7a023          	sw	a4,-64(a5)
   107e4:	fe442783          	lw	a5,-28(s0)
   107e8:	2785                	addw	a5,a5,1
   107ea:	2781                	sext.w	a5,a5
   107ec:	078a                	sll	a5,a5,0x2
   107ee:	17c1                	add	a5,a5,-16
   107f0:	97a2                	add	a5,a5,s0
   107f2:	fdc42703          	lw	a4,-36(s0)
   107f6:	fce7a023          	sw	a4,-64(a5)
   107fa:	fe442783          	lw	a5,-28(s0)
   107fe:	2785                	addw	a5,a5,1
   10800:	fef42223          	sw	a5,-28(s0)
   10804:	47a5                	li	a5,9
   10806:	fe842703          	lw	a4,-24(s0)
   1080a:	9f99                	subw	a5,a5,a4
   1080c:	0007871b          	sext.w	a4,a5
   10810:	fe442783          	lw	a5,-28(s0)
   10814:	2781                	sext.w	a5,a5
   10816:	f6e7cce3          	blt	a5,a4,1078e <main+0x5a>
   1081a:	fe842783          	lw	a5,-24(s0)
   1081e:	2785                	addw	a5,a5,1
   10820:	fef42423          	sw	a5,-24(s0)
   10824:	fe842783          	lw	a5,-24(s0)
   10828:	0007871b          	sext.w	a4,a5
   1082c:	47a1                	li	a5,8
   1082e:	f4e7dde3          	bge	a5,a4,10788 <main+0x54>

   ####输出部分
   10832:	fe042023          	sw	zero,-32(s0)
   10836:	a035                	j	10862 <main+0x12e>
   
   10838:	fe042783          	lw	a5,-32(s0)  
   1083c:	078a                	sll	a5,a5,0x2
   1083e:	17c1                	add	a5,a5,-16
   10840:	97a2                	add	a5,a5,s0
   10842:	fc07a703          	lw	a4,-64(a5)  #a4存放arr[i]
   10846:	fe042783          	lw	a5,-32(s0)   #a5存放i
   1084a:	863a                	mv	a2,a4
   1084c:	85be                	mv	a1,a5
   1084e:	67c5                	lui	a5,0x11
   10850:	91878513          	add	a0,a5,-1768 # 10918 <_IO_stdin_used+0x28>
   10854:	e2dff0ef          	jal	10680 <printf@plt>
   10858:	fe042783          	lw	a5,-32(s0)
   1085c:	2785                	addw	a5,a5,1
   1085e:	fef42023          	sw	a5,-32(s0)
   10862:	fe042783          	lw	a5,-32(s0)
   10866:	0007871b          	sext.w	a4,a5
   1086a:	47a5                	li	a5,9
   1086c:	fce7d6e3          	bge	a5,a4,10838 <main+0x104>

   10870:	4781                	li	a5,0
   10872:	853e                	mv	a0,a5
   10874:	60a6                	ld	ra,72(sp)
   10876:	6406                	ld	s0,64(sp)
   10878:	6161                	add	sp,sp,80
   1087a:	8082                	ret

000000000001087c <_Z41__static_initialization_and_destruction_0ii>:
   1087c:	1101                	add	sp,sp,-32
   1087e:	ec06                	sd	ra,24(sp)
   10880:	e822                	sd	s0,16(sp)
   10882:	1000                	add	s0,sp,32
   10884:	87aa                	mv	a5,a0
   10886:	872e                	mv	a4,a1
   10888:	fef42623          	sw	a5,-20(s0)
   1088c:	87ba                	mv	a5,a4
   1088e:	fef42423          	sw	a5,-24(s0)
   10892:	fec42783          	lw	a5,-20(s0)
   10896:	0007871b          	sext.w	a4,a5
   1089a:	4785                	li	a5,1
   1089c:	02f71763          	bne	a4,a5,108ca <_Z41__static_initialization_and_destruction_0ii+0x4e>
   108a0:	fe842783          	lw	a5,-24(s0)
   108a4:	0007871b          	sext.w	a4,a5
   108a8:	67c1                	lui	a5,0x10
   108aa:	17fd                	add	a5,a5,-1 # ffff <__abi_tag-0x295>
   108ac:	00f71f63          	bne	a4,a5,108ca <_Z41__static_initialization_and_destruction_0ii+0x4e>
   108b0:	85818513          	add	a0,gp,-1960 # 12058 <_ZStL8__ioinit>
   108b4:	dadff0ef          	jal	10660 <_ZNSt8ios_base4InitC1Ev@plt>
   108b8:	84818613          	add	a2,gp,-1976 # 12048 <__dso_handle>
   108bc:	85818593          	add	a1,gp,-1960 # 12058 <_ZStL8__ioinit>
   108c0:	67c1                	lui	a5,0x10
   108c2:	69078513          	add	a0,a5,1680 # 10690 <_ZNSt8ios_base4InitD1Ev@plt>
   108c6:	dabff0ef          	jal	10670 <__cxa_atexit@plt>
   108ca:	0001                	nop
   108cc:	60e2                	ld	ra,24(sp)
   108ce:	6442                	ld	s0,16(sp)
   108d0:	6105                	add	sp,sp,32
   108d2:	8082                	ret

00000000000108d4 <_GLOBAL__sub_I_main>:
   108d4:	1141                	add	sp,sp,-16
   108d6:	e406                	sd	ra,8(sp)
   108d8:	e022                	sd	s0,0(sp)
   108da:	0800                	add	s0,sp,16
   108dc:	67c1                	lui	a5,0x10
   108de:	fff78593          	add	a1,a5,-1 # ffff <__abi_tag-0x295>
   108e2:	4505                	li	a0,1
   108e4:	f99ff0ef          	jal	1087c <_Z41__static_initialization_and_destruction_0ii>
   108e8:	60a2                	ld	ra,8(sp)
   108ea:	6402                	ld	s0,0(sp)
   108ec:	0141                	add	sp,sp,16
   108ee:	8082                	ret
