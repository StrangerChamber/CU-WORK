	.text
	.file	"lcong48.c"
	.globl	_lcong48_r              //  -- Begin function _lcong48_r
	.type	_lcong48_r,@function
_lcong48_r:                             //  @_lcong48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x15 ,  0 ( x11 )
	sh x15 ,  172 ( x10 )
	lh x15 ,  2 ( x11 )
	sh x15 ,  174 ( x10 )
	lh x15 ,  4 ( x11 )
	sh x15 ,  176 ( x10 )
	lh x15 ,  6 ( x11 )
	sh x15 ,  178 ( x10 )
	lh x15 ,  8 ( x11 )
	sh x15 ,  180 ( x10 )
	lh x15 ,  10 ( x11 )
	sh x15 ,  182 ( x10 )
	lh x15 ,  12 ( x11 )
	sh x15 ,  184 ( x10 )
	ret
.Lfunc_end0:
	.size	_lcong48_r, .Lfunc_end0-_lcong48_r
	.cfi_endproc
                                        //  -- End function
	.globl	lcong48                 //  -- Begin function lcong48
	.type	lcong48,@function
lcong48:                                //  @lcong48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	lh x14 ,  0 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	sh x14 ,  172 ( x15 )
	lh x14 ,  2 ( x10 )
	sh x14 ,  174 ( x15 )
	lh x14 ,  4 ( x10 )
	sh x14 ,  176 ( x15 )
	lh x14 ,  6 ( x10 )
	sh x14 ,  178 ( x15 )
	lh x14 ,  8 ( x10 )
	sh x14 ,  180 ( x15 )
	lh x14 ,  10 ( x10 )
	sh x14 ,  182 ( x15 )
	lh x14 ,  12 ( x10 )
	sh x14 ,  184 ( x15 )
	ret
.Lfunc_end1:
	.size	lcong48, .Lfunc_end1-lcong48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
