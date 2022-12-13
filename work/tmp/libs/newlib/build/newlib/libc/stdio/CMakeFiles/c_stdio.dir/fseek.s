	.text
	.file	"fseek.c"
	.globl	_fseek_r                //  -- Begin function _fseek_r
	.type	_fseek_r,@function
_fseek_r:                               //  @_fseek_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, _fseeko_r
.Lfunc_end0:
	.size	_fseek_r, .Lfunc_end0-_fseek_r
	.cfi_endproc
                                        //  -- End function
	.globl	fseek                   //  -- Begin function fseek
	.type	fseek,@function
fseek:                                  //  @fseek
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _fseeko_r
.Lfunc_end1:
	.size	fseek, .Lfunc_end1-fseek
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
