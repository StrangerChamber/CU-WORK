	.text
	.file	"strncat.c"
	.globl	strncat                 //  -- Begin function strncat
	.type	strncat,@function
strncat:                                //  @strncat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	andi x14 ,  x10 ,  3
	add x15 ,  x0 ,  x10
	bltu x0, x14, .LBB0_3
.LBB0_1:                                //  %if.then
	addi x15 ,  x10 ,  -4
	lui x14 ,  (-16843009>>12)&1048575
	lui x13 ,  (-2139062144>>12)&1048575
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x5 ,  4 ( x15 )
	lui x30 ,  -16843009&4095
	addi x15 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x6 ,  x14 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x6 ,  x6 ,  x5
	xori x5 ,  x5 ,  -1
	and x5 ,  x6 ,  x5
	or x6 ,  x13 ,  x30
	and x5 ,  x6 ,  x5
	beq x0, x5, .LBB0_2
.LBB0_3:                                //  %while.cond3.preheader
	addi x15 ,  x15 ,  -1
.LBB0_4:                                //  %while.cond3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_4
.LBB0_5:                                //  %while.cond8.preheader
	beq x0, x12, .LBB0_10
.LBB0_6:                                //  %land.rhs.preheader
	add x14 ,  x0 ,  x0
.LBB0_7:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x5 ,  x14 ,  x11
	add x13 ,  x14 ,  x15
	lbu x5 ,  0 ( x5 )
	sb x5 ,  0 ( x13 )
	beq x0, x5, .LBB0_10
.LBB0_8:                                //  %while.body13
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x14 ,  x14 ,  1
	bne x12, x14, .LBB0_7
.LBB0_9:                                //  %if.end17.thread
	add x15 ,  x14 ,  x15
	sb x0 ,  0 ( x15 )
.LBB0_10:                               //  %while.end18
	ret
.Lfunc_end0:
	.size	strncat, .Lfunc_end0-strncat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
