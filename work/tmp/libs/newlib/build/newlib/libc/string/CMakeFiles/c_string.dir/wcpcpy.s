	.text
	.file	"wcpcpy.c"
	.globl	wcpcpy                  //  -- Begin function wcpcpy
	.type	wcpcpy,@function
wcpcpy:                                 //  @wcpcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x10 ,  x10 ,  -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x11 )
	addi x11 ,  x11 ,  4
	sw x15 ,  4 ( x10 )
	addi x10 ,  x10 ,  4
	bltu x0, x15, .LBB0_1
.LBB0_2:                                //  %while.end
	ret
.Lfunc_end0:
	.size	wcpcpy, .Lfunc_end0-wcpcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
