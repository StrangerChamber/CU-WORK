	.text
	.file	"wr_gamma.c"
	.globl	gamma_r                 //  -- Begin function gamma_r
	.type	gamma_r,@function
gamma_r:                                //  @gamma_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, lgamma_r
.Lfunc_end0:
	.size	gamma_r, .Lfunc_end0-gamma_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
