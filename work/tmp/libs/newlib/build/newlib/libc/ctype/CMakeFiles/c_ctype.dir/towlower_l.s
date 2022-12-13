	.text
	.file	"towlower_l.c"
	.globl	towlower_l              //  -- Begin function towlower_l
	.type	towlower_l,@function
towlower_l:                             //  @towlower_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, towlower
.Lfunc_end0:
	.size	towlower_l, .Lfunc_end0-towlower_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
