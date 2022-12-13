	.text
	.file	"wcsxfrm_l.c"
	.globl	wcsxfrm_l               //  -- Begin function wcsxfrm_l
	.type	wcsxfrm_l,@function
wcsxfrm_l:                              //  @wcsxfrm_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, wcslcpy
.Lfunc_end0:
	.size	wcsxfrm_l, .Lfunc_end0-wcsxfrm_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
