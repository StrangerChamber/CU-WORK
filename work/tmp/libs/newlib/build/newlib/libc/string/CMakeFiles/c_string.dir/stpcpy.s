	.text
	.file	"stpcpy.c"
	.globl	stpcpy                  //  -- Begin function stpcpy
	.type	stpcpy,@function
stpcpy:                                 //  @stpcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	or x15 ,  x10 ,  x11
	andi x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	lw x14 ,  0 ( x11 )
	lui x30 ,  -16843009&4095
	lui x15 ,  (-16843009>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x13 ,  x13 ,  x14
	xori x12 ,  x14 ,  -1
	and x12 ,  x13 ,  x12
	lui x13 ,  (-2139062144>>12)&1048575
	or x5 ,  x13 ,  x30
	and x12 ,  x5 ,  x12
	bltu x0, x12, .LBB0_3
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x14 ,  0 ( x10 )
	lw x14 ,  4 ( x11 )
	lui x30 ,  -16843009&4095
	addi x10 ,  x10 ,  4
	addi x11 ,  x11 ,  4
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -2139062144&4095
	srli x30 ,  x30 ,  12&31
	add x12 ,  x12 ,  x14
	xori x5 ,  x14 ,  -1
	and x12 ,  x12 ,  x5
	or x5 ,  x13 ,  x30
	and x12 ,  x5 ,  x12
	beq x0, x12, .LBB0_2
.LBB0_3:                                //  %while.cond6.preheader
	addi x10 ,  x10 ,  -1
.LBB0_4:                                //  %while.cond6
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x11 )
	addi x11 ,  x11 ,  1
	sb x15 ,  1 ( x10 )
	addi x10 ,  x10 ,  1
	bltu x0, x15, .LBB0_4
.LBB0_5:                                //  %while.end11
	ret
.Lfunc_end0:
	.size	stpcpy, .Lfunc_end0-stpcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
