	.text
	.file	"sf_infinity.c"
	.globl	infinityf               //  -- Begin function infinityf
	.type	infinityf,@function
infinityf:                              //  @infinityf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x10 ,  (2139095040>>12)&1048575
	ret
.Lfunc_end0:
	.size	infinityf, .Lfunc_end0-infinityf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
