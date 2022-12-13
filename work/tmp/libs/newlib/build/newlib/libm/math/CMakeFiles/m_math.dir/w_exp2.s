	.text
	.file	"w_exp2.c"
	.globl	exp2                    //  -- Begin function exp2
	.type	exp2,@function
exp2:                                   //  @exp2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13 ,  x0 ,  x11
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	lui x11 ,  (1073741824>>12)&1048575
	jal x0, pow
.Lfunc_end0:
	.size	exp2, .Lfunc_end0-exp2
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
