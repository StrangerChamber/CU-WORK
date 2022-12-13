	.text
	.file	"labs.c"
	.globl	labs                    //  -- Begin function labs
	.type	labs,@function
labs:                                   //  @labs
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	srai x15 ,  x10 ,  31&31
	add x14 ,  x15 ,  x10
	xor x10 ,  x15 ,  x14
	ret
.Lfunc_end0:
	.size	labs, .Lfunc_end0-labs
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
