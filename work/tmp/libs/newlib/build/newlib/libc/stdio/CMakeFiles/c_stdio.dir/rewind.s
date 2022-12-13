	.text
	.file	"rewind.c"
	.globl	_rewind_r               //  -- Begin function _rewind_r
	.type	_rewind_r,@function
_rewind_r:                              //  @_rewind_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x12 ,  x0 ,  x0
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x11
	add x13 ,  x0 ,  x12
	call _fseek_r
	lhu x15 ,  12 ( x8 )
	lui x30 ,  65439&4095
	lui x14 ,  (65439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_rewind_r, .Lfunc_end0-_rewind_r
	.cfi_endproc
                                        //  -- End function
	.globl	rewind                  //  -- Begin function rewind
	.type	rewind,@function
rewind:                                 //  @rewind
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x12
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _fseek_r
	lhu x15 ,  12 ( x8 )
	lui x30 ,  65439&4095
	lui x14 ,  (65439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	rewind, .Lfunc_end1-rewind
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
