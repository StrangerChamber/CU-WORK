	.text
	.file	"strlen.c"
	.globl	strlen                  //  -- Begin function strlen
	.type	strlen,@function
strlen:                                 //  @strlen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x10 ,  -1
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x15 )
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_1
.LBB0_2:                                //  %while.end
	sub x10 ,  x15 ,  x10
	ret
.Lfunc_end0:
	.size	strlen, .Lfunc_end0-strlen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
