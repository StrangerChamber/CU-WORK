	.text
	.file	"cxa_finalize.c"
	.globl	__cxa_finalize          //  -- Begin function __cxa_finalize
	.type	__cxa_finalize,@function
__cxa_finalize:                         //  @__cxa_finalize
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	jal x0, __call_exitprocs
.Lfunc_end0:
	.size	__cxa_finalize, .Lfunc_end0-__cxa_finalize
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
