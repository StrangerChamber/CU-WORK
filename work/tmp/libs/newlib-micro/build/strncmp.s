	.text
	.file	"strncmp.c"
	.globl	strncmp                 //  -- Begin function strncmp
	.type	strncmp,@function
strncmp:                                //  @strncmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %land.rhs.preheader
	.cfi_def_cfa 2, 0
	lbu x15 ,  0 ( x11 )
	lbu x14 ,  0 ( x10 )
	beq x0, x14, .LBB0_9
.LBB0_3:                                //  %land.rhs.preheader
	addi x13 ,  x12 ,  -1
	beq x0, x13, .LBB0_9
.LBB0_4:                                //  %land.rhs.preheader
	bne x14, x15, .LBB0_9
.LBB0_5:                                //  %if.end11.preheader
	addi x13 ,  x10 ,  1
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -2
.LBB0_6:                                //  %if.end11
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x11 )
	lbu x14 ,  0 ( x13 )
	beq x0, x14, .LBB0_9
.LBB0_7:                                //  %if.end11
                                        //    in Loop: Header=BB0_6 Depth=1
	beq x0, x12, .LBB0_9
.LBB0_8:                                //  %if.end11
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x13 ,  x13 ,  1
	addi x11 ,  x11 ,  1
	addi x12 ,  x12 ,  -1
	beq x14, x15, .LBB0_6
.LBB0_9:                                //  %while.end
	sub x10 ,  x14 ,  x15
	ret
.LBB0_1:
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	strncmp, .Lfunc_end0-strncmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
