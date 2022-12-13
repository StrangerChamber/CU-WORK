	.text
	.file	"sf_finite.c"
	.globl	finitef                 //  -- Begin function finitef
	.type	finitef,@function
finitef:                                //  @finitef
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x15 ,  (2139095040>>12)&1048575
	and x14 ,  x15 ,  x10
	xor x15 ,  x15 ,  x14
	sltu x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	finitef, .Lfunc_end0-finitef
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
