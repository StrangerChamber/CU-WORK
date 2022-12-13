	.text
	.file	"wcslcpy.c"
	.globl	wcslcpy                 //  -- Begin function wcslcpy
	.type	wcslcpy,@function
wcslcpy:                                //  @wcslcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x11
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %land.lhs.true
	add x15 ,  x0 ,  x11
	addi x14 ,  x12 ,  -1
	beq x0, x14, .LBB0_4
.LBB0_2:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	sw x13 ,  0 ( x10 )
	beq x0, x13, .LBB0_6
.LBB0_3:                                //  %do.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x10 ,  4
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	bltu x0, x14, .LBB0_2
.LBB0_4:                                //  %if.then11
	sw x0 ,  0 ( x10 )
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_5
.LBB0_7:                                //  %if.end14
	sub x15 ,  x15 ,  x11
	srai x15 ,  x15 ,  2&31
	addi x10 ,  x15 ,  -1
	ret
.LBB0_6:                                //  %if.end14.loopexit1
	addi x15 ,  x15 ,  4
	sub x15 ,  x15 ,  x11
	srai x15 ,  x15 ,  2&31
	addi x10 ,  x15 ,  -1
	ret
.Lfunc_end0:
	.size	wcslcpy, .Lfunc_end0-wcslcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
