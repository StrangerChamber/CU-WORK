	.text
	.file	"strsep.c"
	.globl	strsep                  //  -- Begin function strsep
	.type	strsep,@function
strsep:                                 //  @strsep
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x0
	lw x10 ,  0 ( x12 )
	jal x0, __strtok_r
.Lfunc_end0:
	.size	strsep, .Lfunc_end0-strsep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
