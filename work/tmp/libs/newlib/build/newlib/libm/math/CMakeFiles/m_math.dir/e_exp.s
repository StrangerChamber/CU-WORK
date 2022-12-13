	.text
	.file	"e_exp.c"
	.globl	__ieee754_exp           //  -- Begin function __ieee754_exp
	.type	__ieee754_exp,@function
__ieee754_exp:                          //  @__ieee754_exp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	add x8 ,  x0 ,  x11
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x9 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	srli x30 ,  x30 ,  12&31
	slt x21 ,  x8 ,  x0
	or x15 ,  x15 ,  x30
	lui x30 ,  1082535490&4095
	and x19 ,  x15 ,  x8
	lui x15 ,  (1082535490>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	bltu x19, x14, .LBB0_5
.LBB0_1:                                //  %if.then
	srli x14 ,  x19 ,  20&31
	sltiu x14 ,  x14 ,  2047
	bltu x0, x14, .LBB0_8
.LBB0_2:                                //  %if.then3
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	add x22 ,  x0 ,  x0
	add x20 ,  x0 ,  x8
	add x19 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	or x18 ,  x9 ,  x15
	beq x21, x22, .LBB0_4
.LBB0_3:                                //  %if.then3
	add x20 ,  x0 ,  x22
	add x19 ,  x0 ,  x22
.LBB0_4:                                //  %if.then3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	bne x18, x22, .LBB0_23
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.end20
	lui x30 ,  1071001155&4095
	lui x15 ,  (1071001155>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_10
.LBB0_6:                                //  %if.then22
	lui x30 ,  1072734897&4095
	lui x15 ,  (1072734897>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x19, .LBB0_16
.LBB0_7:                                //  %if.then24
	lui x30 ,  ln2HI&4095
	lui x14 ,  (ln2HI>>12)&1048575
	xori x15 ,  x21 ,  1
	lui x13 ,  (ln2LO>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sub x18 ,  x15 ,  x21
	slli x15 ,  x21 ,  3&31
	or x14 ,  x14 ,  x30
	lui x30 ,  ln2LO&4095
	srli x30 ,  x30 ,  12&31
	add x14 ,  x15 ,  x14
	or x13 ,  x13 ,  x30
	lw x21 ,  4 ( x14 )
	add x15 ,  x15 ,  x13
	lw x22 ,  0 ( x14 )
	lw x20 ,  4 ( x15 )
	lw x19 ,  0 ( x15 )
	jal x0, .LBB0_17
.LBB0_8:                                //  %if.end
	lui x30 ,  -17155601&4095
	lui x14 ,  (-17155601>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	lui x30 ,  1082535490&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __gtdf2
	bge x0, x10, .LBB0_14
.LBB0_9:                                //  %if.then14
	add x10 ,  x0 ,  x0
	call __math_oflow
	jal x0, .LBB0_23
.LBB0_10:                               //  %if.else37
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x18 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	call __gtdf2
	bge x0, x10, .LBB0_13
.LBB0_11:                               //  %if.else37
	srli x15 ,  x19 ,  20&31
	addi x14 ,  x0 ,  990
	bltu x14, x15, .LBB0_13
.LBB0_12:                               //  %if.then44
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_22
.LBB0_13:
                                        //  implicit-def: $rf_xpr_19
                                        //  implicit-def: $rf_xpr_20
                                        //  implicit-def: $rf_xpr_21
                                        //  implicit-def: $rf_xpr_22
	jal x0, .LBB0_18
.LBB0_14:                               //  %if.end15
	lui x30 ,  -718458799&4095
	lui x15 ,  (-718458799>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1064875760&4095
	lui x15 ,  (-1064875760>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	bge x10, x0, .LBB0_16
.LBB0_15:                               //  %if.then17
	add x10 ,  x0 ,  x0
	call __math_uflow
	jal x0, .LBB0_23
.LBB0_16:                               //  %if.else28
	lui x30 ,  1697350398&4095
	lui x15 ,  (1697350398>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073157447&4095
	lui x15 ,  (1073157447>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  halF&4095
	lui x14 ,  (halF>>12)&1048575
	slli x15 ,  x21 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __adddf3
	call __fixdfsi
	add x18 ,  x0 ,  x10
	call __floatsidf
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
.LBB0_17:                               //  %if.end35
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_18:                               //  %if.end48
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  1925096656&4095
	lui x15 ,  (1925096656>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1046886249&4095
	lui x15 ,  (1046886249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -976065551&4095
	lui x15 ,  (-976065551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1094992575&4095
	lui x15 ,  (-1094992575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1356472788&4095
	lui x15 ,  (-1356472788>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058100842&4095
	lui x15 ,  (1058100842>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  381599123&4095
	lui x15 ,  (381599123>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1083784852&4095
	lui x15 ,  (-1083784852>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  1431655742&4095
	lui x15 ,  (1431655742>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069897045&4095
	lui x15 ,  (1069897045>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	add x26 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __muldf3
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	beq x0, x18, .LBB0_21
.LBB0_19:                               //  %if.else67
	add x8 ,  x0 ,  x0
	lui x11 ,  (1073741824>>12)&1048575
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	add x10 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __subdf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x8
	call __adddf3
	slli x15 ,  x18 ,  20&31
	add x19 ,  x0 ,  x10
	add x20 ,  x11 ,  x15
	slti x15 ,  x18 ,  -1021
	beq x0, x15, .LBB0_24
.LBB0_20:                               //  %if.else94
	lui x15 ,  (1048576000>>12)&1048575
	add x12 ,  x0 ,  x0
	lui x13 ,  (24117248>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x15 ,  x20
	call __muldf3
	jal x0, .LBB0_23
.LBB0_21:                               //  %if.then62
	lui x30 ,  -1073741824&4095
	add x18 ,  x0 ,  x0
	lui x15 ,  (-1073741824>>12)&1048575
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x18
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
.LBB0_22:                               //  %cleanup116
	call __adddf3
.LBB0_23:                               //  %cleanup116
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
.LBB0_24:                               //  %cleanup116
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_exp, .Lfunc_end0-__ieee754_exp
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	ln2HI,@object           //  @ln2HI
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
ln2HI:
	.quad	4604418534311723008     //  double 0.69314718036912382
	.quad	-4618953502543052800    //  double -0.69314718036912382
	.size	ln2HI, 16

	.address_space	0
	.type	ln2LO,@object           //  @ln2LO
	.p2align	3
ln2LO:
	.quad	4461442080421002358     //  double 1.9082149292705877E-10
	.quad	-4761929956433773450    //  double -1.9082149292705877E-10
	.size	ln2LO, 16

	.address_space	0
	.type	halF,@object            //  @halF
	.p2align	3
halF:
	.quad	4602678819172646912     //  double 0.5
	.quad	-4620693217682128896    //  double -0.5
	.size	halF, 16

	.hidden	__math_oflow
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
