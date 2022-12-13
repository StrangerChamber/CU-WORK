	.text
	.file	"llabs.c"
	.globl	llabs                   //  -- Begin function llabs
	.type	llabs,@function
llabs:                                  //  @llabs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	blt x11, x14, .LBB0_1
.LBB0_2:                                //  %entry
	add x10 ,  x0 ,  x15
	ret
.LBB0_1:
	sub x10 ,  x0 ,  x15
	sltu x15 ,  x0 ,  x15
	add x15 ,  x15 ,  x11
	sub x11 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	llabs, .Lfunc_end0-llabs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
