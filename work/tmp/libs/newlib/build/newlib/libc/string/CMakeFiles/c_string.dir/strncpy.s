	.text
	.file	"strncpy.c"
	.globl	strncpy                 //  -- Begin function strncpy
	.type	strncpy,@function
strncpy:                                //  @strncpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	sltiu x15 ,  x12 ,  4
	bltu x0, x15, .LBB0_1
.LBB0_2:                                //  %entry
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_3
.LBB0_4:                                //  %if.then
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
	addi x5 ,  x0 ,  3
	add x15 ,  x0 ,  x10
.LBB0_5:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x6 ,  0 ( x11 )
	lui x30 ,  -16843009&4095
	srli x30 ,  x30 ,  12&31
	or x7 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x7 ,  x7 ,  x6
	xori x16 ,  x6 ,  -1
	and x7 ,  x7 ,  x16
	or x16 ,  x13 ,  x30
	and x7 ,  x16 ,  x7
	bltu x0, x7, .LBB0_7
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x6 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x11 ,  x11 ,  4
	addi x12 ,  x12 ,  -4
	bltu x5, x12, .LBB0_5
	jal x0, .LBB0_7
.LBB0_1:
	add x15 ,  x0 ,  x10
	bltu x0, x12, .LBB0_8
	jal x0, .LBB0_12
.LBB0_3:
	add x15 ,  x0 ,  x10
.LBB0_7:                                //  %while.cond8
	beq x0, x12, .LBB0_12
.LBB0_8:                                //  %while.body10
	lbu x14 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_7
.LBB0_9:                                //  %while.end17
	beq x0, x12, .LBB0_12
.LBB0_10:                               //  %while.body22.preheader
	add x14 ,  x0 ,  x0
.LBB0_11:                               //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x14 ,  x15
	addi x14 ,  x14 ,  1
	sb x0 ,  0 ( x13 )
	bne x12, x14, .LBB0_11
.LBB0_12:                               //  %while.end24
	ret
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
