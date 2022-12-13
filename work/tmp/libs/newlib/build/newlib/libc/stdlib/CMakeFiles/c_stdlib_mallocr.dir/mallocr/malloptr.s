	.text
	.file	"malloptr.c"
	.globl	_mallopt_r              //  -- Begin function _mallopt_r
	.type	_mallopt_r,@function
_mallopt_r:                             //  @_mallopt_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end0:
	.size	_mallopt_r, .Lfunc_end0-_mallopt_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
