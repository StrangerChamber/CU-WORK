	.text
	.file	"wctype_l.c"
	.globl	wctype_l                //  -- Begin function wctype_l
	.type	wctype_l,@function
wctype_l:                               //  @wctype_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, wctype
.Lfunc_end0:
	.size	wctype_l, .Lfunc_end0-wctype_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
