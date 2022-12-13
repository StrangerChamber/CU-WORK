	.text
	.file	"strlcpy.c"
	.globl	strlcpy                 //  -- Begin function strlcpy
	.type	strlcpy,@function
strlcpy:                                //  @strlcpy
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
	lbu x13 ,  0 ( x15 )
	sb x13 ,  0 ( x10 )
	beq x0, x13, .LBB0_6
.LBB0_3:                                //  %do.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x10 ,  1
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	bltu x0, x14, .LBB0_2
.LBB0_4:                                //  %if.then15
	sb x0 ,  0 ( x10 )
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_5
.LBB0_7:                                //  %if.end18
	xori x14 ,  x11 ,  -1
	add x10 ,  x14 ,  x15
	ret
.LBB0_6:                                //  %if.end18.loopexit1
	addi x15 ,  x15 ,  1
	xori x14 ,  x11 ,  -1
	add x10 ,  x14 ,  x15
	ret
.Lfunc_end0:
	.size	strlcpy, .Lfunc_end0-strlcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
