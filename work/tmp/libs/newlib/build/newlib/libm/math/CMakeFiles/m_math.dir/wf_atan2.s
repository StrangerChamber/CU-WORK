	.text
	.file	"wf_atan2.c"
	.globl	atan2f                  //  -- Begin function atan2f
	.type	atan2f,@function
atan2f:                                 //  @atan2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __ieee754_atan2f
.Lfunc_end0:
	.size	atan2f, .Lfunc_end0-atan2f
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
