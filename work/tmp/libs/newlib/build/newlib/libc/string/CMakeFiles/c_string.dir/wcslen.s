	.text
	.file	"wcslen.c"
	.globl	wcslen                  //  -- Begin function wcslen
	.type	wcslen,@function
wcslen:                                 //  @wcslen
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x10 ,  -4
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  4 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_1
.LBB0_2:                                //  %while.end
	sub x15 ,  x15 ,  x10
	srai x10 ,  x15 ,  2&31
	ret
.Lfunc_end0:
	.size	wcslen, .Lfunc_end0-wcslen
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
