	.text
	.file	"localeconv.c"
	.globl	__localeconv_l          //  -- Begin function __localeconv_l
	.type	__localeconv_l,@function
__localeconv_l:                         //  @__localeconv_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x10 ,  x10 ,  240
	ret
.Lfunc_end0:
	.size	__localeconv_l, .Lfunc_end0-__localeconv_l
	.cfi_endproc
                                        //  -- End function
	.globl	_localeconv_r           //  -- Begin function _localeconv_r
	.type	_localeconv_r,@function
_localeconv_r:                          //  @_localeconv_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x10 ,  x15 ,  240
	ret
.Lfunc_end1:
	.size	_localeconv_r, .Lfunc_end1-_localeconv_r
	.cfi_endproc
                                        //  -- End function
	.globl	localeconv              //  -- Begin function localeconv
	.type	localeconv,@function
localeconv:                             //  @localeconv
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x10 ,  x15 ,  240
	ret
.Lfunc_end2:
	.size	localeconv, .Lfunc_end2-localeconv
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
