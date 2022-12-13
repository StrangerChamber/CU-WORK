	.text
	.file	"strcpy.c"
	.globl	strcpy                  //  -- Begin function strcpy
	.type	strcpy,@function
strcpy:                                 //  @strcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x15 ,  x11
	add x14 ,  x15 ,  x10
	addi x15 ,  x15 ,  1
	lbu x13 ,  0 ( x13 )
	sb x13 ,  0 ( x14 )
	bltu x0, x13, .LBB0_1
.LBB0_2:                                //  %while.end
	ret
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
