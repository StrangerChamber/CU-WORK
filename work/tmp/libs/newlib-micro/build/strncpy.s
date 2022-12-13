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
	add x15 ,  x0 ,  x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x12, x15, .LBB0_6
.LBB0_2:                                //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	add x13 ,  x15 ,  x11
	add x14 ,  x15 ,  x10
	addi x15 ,  x15 ,  1
	lbu x13 ,  0 ( x13 )
	sb x13 ,  0 ( x14 )
	bltu x0, x13, .LBB0_1
.LBB0_3:                                //  %while.end
	beq x12, x15, .LBB0_6
.LBB0_4:                                //  %while.body8.preheader
	sub x14 ,  x12 ,  x15
	add x13 ,  x0 ,  x0
.LBB0_5:                                //  %while.body8
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x13 ,  x10
	addi x13 ,  x13 ,  1
	add x12 ,  x15 ,  x12
	sb x0 ,  0 ( x12 )
	bne x14, x13, .LBB0_5
.LBB0_6:                                //  %while.end10
	ret
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
