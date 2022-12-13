	.text
	.file	"bcopy.c"
	.globl	bcopy                   //  -- Begin function bcopy
	.type	bcopy,@function
bcopy:                                  //  @bcopy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	add x11 ,  x0 ,  x15
	jal x0, memmove
.Lfunc_end0:
	.size	bcopy, .Lfunc_end0-bcopy
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
