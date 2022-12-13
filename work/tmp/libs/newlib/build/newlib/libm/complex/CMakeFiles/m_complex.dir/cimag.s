	.text
	.file	"cimag.c"
	.globl	cimag                   //  -- Begin function cimag
	.type	cimag,@function
cimag:                                  //  @cimag
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x15 ,  8 ( x10 )
	lw x11 ,  12 ( x10 )
	add x10 ,  x0 ,  x15
	ret
.Lfunc_end0:
	.size	cimag, .Lfunc_end0-cimag
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
