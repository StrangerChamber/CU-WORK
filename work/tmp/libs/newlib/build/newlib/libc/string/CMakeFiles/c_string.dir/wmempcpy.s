	.text
	.file	"wmempcpy.c"
	.globl	wmempcpy                //  -- Begin function wmempcpy
	.type	wmempcpy,@function
wmempcpy:                               //  @wmempcpy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slli x12 ,  x12 ,  2&31
	jal x0, mempcpy
.Lfunc_end0:
	.size	wmempcpy, .Lfunc_end0-wmempcpy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
