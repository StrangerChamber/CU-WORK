	.text
	.file	"putwchar.c"
	.globl	_putwchar_r             //  -- Begin function _putwchar_r
	.type	_putwchar_r,@function
_putwchar_r:                            //  @_putwchar_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	lw x12 ,  8 ( x15 )
	jal x0, _fputwc_r
.Lfunc_end0:
	.size	_putwchar_r, .Lfunc_end0-_putwchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	putwchar                //  -- Begin function putwchar
	.type	putwchar,@function
putwchar:                               //  @putwchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	lw x11 ,  8 ( x15 )
	jal x0, fputwc
.Lfunc_end1:
	.size	putwchar, .Lfunc_end1-putwchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
