	.text
	.file	"getline.c"
	.globl	__getline               //  -- Begin function __getline
	.type	__getline,@function
__getline:                              //  @__getline
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13 ,  x0 ,  x12
	addi x12 ,  x0 ,  10
	jal x0, __getdelim
.Lfunc_end0:
	.size	__getline, .Lfunc_end0-__getline
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
