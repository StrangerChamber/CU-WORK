	.text
	.file	"strtold.c"
	.globl	_strtold_r              //  -- Begin function _strtold_r
	.type	_strtold_r,@function
_strtold_r:                             //  @_strtold_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call _strtod_l
	call __extenddftf2
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_strtold_r, .Lfunc_end0-_strtold_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtold_l               //  -- Begin function strtold_l
	.type	strtold_l,@function
strtold_l:                              //  @strtold_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _strtod_l
	call __extenddftf2
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	strtold_l, .Lfunc_end1-strtold_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtold                 //  -- Begin function strtold
	.type	strtold,@function
strtold:                                //  @strtold
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call _strtod_l
	call __extenddftf2
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	strtold, .Lfunc_end2-strtold
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
