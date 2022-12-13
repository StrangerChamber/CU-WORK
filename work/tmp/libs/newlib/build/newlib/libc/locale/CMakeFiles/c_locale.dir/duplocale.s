	.text
	.file	"duplocale.c"
	.globl	_duplocale_r            //  -- Begin function _duplocale_r
	.type	_duplocale_r,@function
_duplocale_r:                           //  @_duplocale_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	ret
.Lfunc_end0:
	.size	_duplocale_r, .Lfunc_end0-_duplocale_r
	.cfi_endproc
                                        //  -- End function
	.globl	duplocale               //  -- Begin function duplocale
	.type	duplocale,@function
duplocale:                              //  @duplocale
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	ret
.Lfunc_end1:
	.size	duplocale, .Lfunc_end1-duplocale
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
