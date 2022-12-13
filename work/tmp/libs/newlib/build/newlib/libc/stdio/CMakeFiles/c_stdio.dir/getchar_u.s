	.text
	.file	"getchar_u.c"
	.globl	_getchar_unlocked_r     //  -- Begin function _getchar_unlocked_r
	.type	_getchar_unlocked_r,@function
_getchar_unlocked_r:                    //  @_getchar_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lw x11 ,  4 ( x10 )
	jal x0, _getc_unlocked_r
.Lfunc_end0:
	.size	_getchar_unlocked_r, .Lfunc_end0-_getchar_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	getchar_unlocked        //  -- Begin function getchar_unlocked
	.type	getchar_unlocked,@function
getchar_unlocked:                       //  @getchar_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lw x11 ,  4 ( x10 )
	jal x0, _getc_unlocked_r
.Lfunc_end1:
	.size	getchar_unlocked, .Lfunc_end1-getchar_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
