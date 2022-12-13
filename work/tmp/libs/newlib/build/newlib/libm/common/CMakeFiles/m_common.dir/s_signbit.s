	.text
	.file	"s_signbit.c"
	.globl	__signbitf              //  -- Begin function __signbitf
	.type	__signbitf,@function
__signbitf:                             //  @__signbitf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slt x10 ,  x10 ,  x0
	ret
.Lfunc_end0:
	.size	__signbitf, .Lfunc_end0-__signbitf
	.cfi_endproc
                                        //  -- End function
	.globl	__signbitd              //  -- Begin function __signbitd
	.type	__signbitd,@function
__signbitd:                             //  @__signbitd
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	slt x10 ,  x11 ,  x0
	ret
.Lfunc_end1:
	.size	__signbitd, .Lfunc_end1-__signbitd
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
