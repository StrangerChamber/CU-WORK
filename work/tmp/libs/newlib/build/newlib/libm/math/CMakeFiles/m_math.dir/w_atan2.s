	.text
	.file	"w_atan2.c"
	.globl	atan2                   //  -- Begin function atan2
	.type	atan2,@function
atan2:                                  //  @atan2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __ieee754_atan2
.Lfunc_end0:
	.size	atan2, .Lfunc_end0-atan2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
