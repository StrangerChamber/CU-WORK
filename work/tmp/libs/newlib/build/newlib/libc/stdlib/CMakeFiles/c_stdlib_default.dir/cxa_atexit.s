	.text
	.file	"cxa_atexit.c"
	.globl	__cxa_atexit            //  -- Begin function __cxa_atexit
	.type	__cxa_atexit,@function
__cxa_atexit:                           //  @__cxa_atexit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	addi x10 ,  x0 ,  2
	jal x0, __register_exitproc
.Lfunc_end0:
	.size	__cxa_atexit, .Lfunc_end0-__cxa_atexit
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
