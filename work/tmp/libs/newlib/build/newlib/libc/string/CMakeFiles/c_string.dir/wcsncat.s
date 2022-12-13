	.text
	.file	"wcsncat.c"
	.globl	wcsncat                 //  -- Begin function wcsncat
	.type	wcsncat,@function
wcsncat:                                //  @wcsncat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x0 ,  x15
	lw x13 ,  0 ( x14 )
	addi x15 ,  x14 ,  4
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %while.cond1.preheader
	beq x0, x12, .LBB0_8
.LBB0_3:                                //  %while.cond1.preheader
	lw x13 ,  0 ( x11 )
	beq x0, x13, .LBB0_8
.LBB0_4:                                //  %while.body4.preheader
	addi x5 ,  x0 ,  -4
	addi x12 ,  x12 ,  -1
	addi x14 ,  x11 ,  4
.LBB0_5:                                //  %while.body4
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x5 ,  x15
	addi x6 ,  x12 ,  -1
	sw x13 ,  0 ( x11 )
	addi x11 ,  x5 ,  4
	bgeu x6, x12, .LBB0_7
.LBB0_6:                                //  %while.body4
                                        //    in Loop: Header=BB0_5 Depth=1
	add x13 ,  x5 ,  x14
	add x12 ,  x0 ,  x6
	add x5 ,  x0 ,  x11
	lw x13 ,  4 ( x13 )
	bltu x0, x13, .LBB0_5
.LBB0_7:                                //  %while.end7.loopexit
	add x14 ,  x11 ,  x15
.LBB0_8:                                //  %while.end7
	sw x0 ,  0 ( x14 )
	ret
.Lfunc_end0:
	.size	wcsncat, .Lfunc_end0-wcsncat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
