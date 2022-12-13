	.text
	.file	"iswdigit.c"
	.globl	iswdigit                //  -- Begin function iswdigit
	.type	iswdigit,@function
iswdigit:                               //  @iswdigit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x15 ,  x10 ,  -48
	sltiu x10 ,  x15 ,  10
	ret
.Lfunc_end0:
	.size	iswdigit, .Lfunc_end0-iswdigit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
