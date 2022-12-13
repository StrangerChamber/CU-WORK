	.text
	.file	"getwchar.c"
	.globl	_getwchar_r             //  -- Begin function _getwchar_r
	.type	_getwchar_r,@function
_getwchar_r:                            //  @_getwchar_r
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
	lw x11 ,  4 ( x15 )
	jal x0, _fgetwc_r
.Lfunc_end0:
	.size	_getwchar_r, .Lfunc_end0-_getwchar_r
	.cfi_endproc
                                        //  -- End function
	.globl	getwchar                //  -- Begin function getwchar
	.type	getwchar,@function
getwchar:                               //  @getwchar
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	lw x10 ,  4 ( x15 )
	jal x0, fgetwc
.Lfunc_end1:
	.size	getwchar, .Lfunc_end1-getwchar
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
