	.text
	.file	"a64l.c"
	.globl	a64l                    //  -- Begin function a64l
	.type	a64l,@function
a64l:                                   //  @a64l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %for.body.preheader
	lbu x13 ,  0 ( x10 )
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x10
	bne x13, x15, .LBB0_3
.LBB0_4:                                //  %for.body.preheader
	sltu x13 ,  x0 ,  x13
	add x13 ,  x13 ,  x10
	lbu x13 ,  0 ( x13 )
	bne x13, x15, .LBB0_5
.LBB0_6:                                //  %for.body.preheader
	lbu x13 ,  0 ( x14 )
	bne x13, x15, .LBB0_7
.LBB0_8:                                //  %for.body.preheader
	lbu x13 ,  0 ( x14 )
	bne x13, x15, .LBB0_9
.LBB0_10:                               //  %for.body.preheader
	lbu x13 ,  0 ( x14 )
	bne x13, x15, .LBB0_11
.LBB0_12:                               //  %for.body.preheader
	lbu x13 ,  0 ( x14 )
	bne x13, x15, .LBB0_13
.LBB0_14:                               //  %for.body.preheader
	bltu x10, x14, .LBB0_15
	jal x0, .LBB0_23
.LBB0_1:
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x15
	ret
.LBB0_3:                                //  %for.body.preheader
	addi x14 ,  x10 ,  1
	sltu x13 ,  x0 ,  x13
	add x13 ,  x13 ,  x10
	lbu x13 ,  0 ( x13 )
	beq x13, x15, .LBB0_6
.LBB0_5:                                //  %for.body.preheader
	addi x14 ,  x14 ,  1
	lbu x13 ,  0 ( x14 )
	beq x13, x15, .LBB0_8
.LBB0_7:                                //  %for.body.preheader
	addi x14 ,  x14 ,  1
	lbu x13 ,  0 ( x14 )
	beq x13, x15, .LBB0_10
.LBB0_9:                                //  %for.body.preheader
	addi x14 ,  x14 ,  1
	lbu x13 ,  0 ( x14 )
	beq x13, x15, .LBB0_12
.LBB0_11:                               //  %for.body.preheader
	addi x14 ,  x14 ,  1
	lbu x13 ,  0 ( x14 )
	beq x13, x15, .LBB0_14
.LBB0_13:                               //  %for.body.preheader
	addi x14 ,  x14 ,  1
	bgeu x10, x14, .LBB0_23
.LBB0_15:                               //  %while.body.preheader
	add x13 ,  x0 ,  x0
	slti x12 ,  x0 ,  1
	addi x11 ,  x0 ,  75
	lui x5 ,  (JTI0_0>>12)&1048575
	add x15 ,  x0 ,  x13
	lb x6 ,  -1 ( x14 )
	addi x14 ,  x14 ,  -1
	addi x7 ,  x6 ,  -47
	bgeu x11, x7, .LBB0_17
	jal x0, .LBB0_21
.LBB0_20:                               //  %sw.bb12
	addi x7 ,  x6 ,  -59
.LBB0_22:                               //  %sw.epilog
	slli x15 ,  x15 ,  6&31
	add x15 ,  x15 ,  x7
	bgeu x10, x14, .LBB0_23
.LBB0_16:                               //  %while.body
	lb x6 ,  -1 ( x14 )
	addi x14 ,  x14 ,  -1
	addi x7 ,  x6 ,  -47
	bltu x11, x7, .LBB0_21
.LBB0_17:                               //  %while.body
	lui x30 ,  JTI0_0&4095
	slli x7 ,  x7 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x16 ,  x5 ,  x30
	add x7 ,  x16 ,  x7
	lw x16 ,  0 ( x7 )
	add x7 ,  x0 ,  x12
	jalr x0 ,  0 ( x16 )
.LBB0_19:                               //  %sw.bb8
	addi x7 ,  x6 ,  -53
	slli x15 ,  x15 ,  6&31
	add x15 ,  x15 ,  x7
	bltu x10, x14, .LBB0_16
	jal x0, .LBB0_23
.LBB0_18:                               //  %sw.bb6
	addi x7 ,  x6 ,  -46
	slli x15 ,  x15 ,  6&31
	add x15 ,  x15 ,  x7
	bltu x10, x14, .LBB0_16
	jal x0, .LBB0_23
.LBB0_21:                               //  %sw.default
	add x7 ,  x0 ,  x13
	slli x15 ,  x15 ,  6&31
	add x15 ,  x15 ,  x7
	bltu x10, x14, .LBB0_16
.LBB0_23:                               //  %cleanup
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	a64l, .Lfunc_end0-a64l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_22
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_18
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_19
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_21
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
	.long	.LBB0_20
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
