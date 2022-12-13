	.text
	.file	"wcsrtombs.c"
	.globl	_wcsrtombs_r            //  -- Begin function _wcsrtombs_r
	.type	_wcsrtombs_r,@function
_wcsrtombs_r:                           //  @_wcsrtombs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x14
	add x14 ,  x0 ,  x13
	addi x13 ,  x0 ,  -1
	jal x0, _wcsnrtombs_r
.Lfunc_end0:
	.size	_wcsrtombs_r, .Lfunc_end0-_wcsrtombs_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcsrtombs               //  -- Begin function wcsrtombs
	.type	wcsrtombs,@function
wcsrtombs:                              //  @wcsrtombs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	add x15 ,  x0 ,  x13
	lui x13 ,  (_impure_ptr>>12)&1048575
	add x14 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lw x10 ,  0 ( x13 )
	addi x13 ,  x0 ,  -1
	jal x0, _wcsnrtombs_r
.Lfunc_end1:
	.size	wcsrtombs, .Lfunc_end1-wcsrtombs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
