	.text
	.file	"vprintf.c"
	.globl	vprintf                 //  -- Begin function vprintf
	.type	vprintf,@function
vprintf:                                //  @vprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	lw x11 ,  8 ( x10 )
	jal x0, _vfprintf_r
.Lfunc_end0:
	.size	vprintf, .Lfunc_end0-vprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vprintf_r              //  -- Begin function _vprintf_r
	.type	_vprintf_r,@function
_vprintf_r:                             //  @_vprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	lw x11 ,  8 ( x10 )
	jal x0, _vfprintf_r
.Lfunc_end1:
	.size	_vprintf_r, .Lfunc_end1-_vprintf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
