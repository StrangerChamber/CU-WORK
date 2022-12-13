	.text
	.file	"flags.c"
	.globl	__sflags                //  -- Begin function __sflags
	.type	__sflags,@function
__sflags:                               //  @__sflags
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lb x15 ,  0 ( x11 )
	xori x14 ,  x15 ,  97
	beq x0, x14, .LBB0_6
.LBB0_1:                                //  %entry
	xori x14 ,  x15 ,  114
	beq x0, x14, .LBB0_2
.LBB0_3:                                //  %entry
	xori x15 ,  x15 ,  119
	bltu x0, x15, .LBB0_5
.LBB0_4:                                //  %sw.bb1
	addi x14 ,  x0 ,  1536
	slti x15 ,  x0 ,  1
	addi x10 ,  x0 ,  8
	lbu x6 ,  1 ( x11 )
	bltu x0, x6, .LBB0_8
	jal x0, .LBB0_16
.LBB0_6:                                //  %sw.bb2
	addi x14 ,  x0 ,  520
	slti x15 ,  x0 ,  1
	addi x10 ,  x0 ,  264
	lbu x6 ,  1 ( x11 )
	bltu x0, x6, .LBB0_8
	jal x0, .LBB0_16
.LBB0_2:
	add x15 ,  x0 ,  x0
	addi x10 ,  x0 ,  4
	add x14 ,  x0 ,  x15
	lbu x6 ,  1 ( x11 )
	beq x0, x6, .LBB0_16
.LBB0_8:                                //  %while.body.preheader
	addi x7 ,  x11 ,  2
	lui x13 ,  (2048>>12)&1048575
	lui x11 ,  (65536>>12)&1048575
	add x5 ,  x0 ,  x7
	andi x7 ,  x6 ,  255
	xori x7 ,  x7 ,  120
	bltu x0, x7, .LBB0_10
.LBB0_14:                               //  %sw.bb9
	lui x30 ,  2048&4095
	srli x30 ,  x30 ,  12&31
	or x6 ,  x13 ,  x30
	or x15 ,  x6 ,  x15
.LBB0_15:                               //  %sw.epilog12
	lbu x6 ,  0 ( x5 )
	addi x7 ,  x5 ,  1
	beq x0, x6, .LBB0_16
.LBB0_9:                                //  %while.body
	add x5 ,  x0 ,  x7
	andi x7 ,  x6 ,  255
	xori x7 ,  x7 ,  120
	beq x0, x7, .LBB0_14
.LBB0_10:                               //  %while.body
	slli x6 ,  x6 ,  24&31
	srai x6 ,  x6 ,  24&31
	xori x7 ,  x6 ,  98
	beq x0, x7, .LBB0_13
.LBB0_11:                               //  %while.body
	xori x6 ,  x6 ,  43
	bltu x0, x6, .LBB0_15
.LBB0_12:                               //  %sw.bb4
	andi x15 ,  x15 ,  -4
	andi x10 ,  x10 ,  -29
	ori x15 ,  x15 ,  2
	ori x10 ,  x10 ,  16
	lbu x6 ,  0 ( x5 )
	addi x7 ,  x5 ,  1
	bltu x0, x6, .LBB0_9
	jal x0, .LBB0_16
.LBB0_13:                               //  %sw.bb7
	or x15 ,  x11 ,  x15
	lbu x6 ,  0 ( x5 )
	addi x7 ,  x5 ,  1
	bltu x0, x6, .LBB0_9
.LBB0_16:                               //  %while.end
	or x15 ,  x14 ,  x15
	sw x15 ,  0 ( x12 )
	ret
.LBB0_5:                                //  %sw.default
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	__sflags, .Lfunc_end0-__sflags
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
