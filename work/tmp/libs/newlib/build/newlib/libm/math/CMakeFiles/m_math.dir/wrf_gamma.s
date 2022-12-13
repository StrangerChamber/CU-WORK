	.text
	.file	"wrf_gamma.c"
	.globl	gammaf_r                //  -- Begin function gammaf_r
	.type	gammaf_r,@function
gammaf_r:                               //  @gammaf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, lgammaf_r
.Lfunc_end0:
	.size	gammaf_r, .Lfunc_end0-gammaf_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
