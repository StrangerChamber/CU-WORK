	.text
	.file	"atol.c"
	.globl	atol                    //  -- Begin function atol
	.type	atol,@function
atol:                                   //  @atol
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  10
	jal x0, strtol
.Lfunc_end0:
	.size	atol, .Lfunc_end0-atol
	.cfi_endproc
                                        //  -- End function
	.globl	_atol_r                 //  -- Begin function _atol_r
	.type	_atol_r,@function
_atol_r:                                //  @_atol_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  10
	jal x0, _strtol_r
.Lfunc_end1:
	.size	_atol_r, .Lfunc_end1-_atol_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
