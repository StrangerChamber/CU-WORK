	.text
	.file	"lrand48.c"
	.globl	_lrand48_r              //  -- Begin function _lrand48_r
	.type	_lrand48_r,@function
_lrand48_r:                             //  @_lrand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x11 ,  x8 ,  172
	call __dorand48
	lhu x15 ,  174 ( x8 )
	lhu x14 ,  176 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	srli x15 ,  x15 ,  1&31
	slli x14 ,  x14 ,  15&31
	or x10 ,  x15 ,  x14
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_lrand48_r, .Lfunc_end0-_lrand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	lrand48                 //  -- Begin function lrand48
	.type	lrand48,@function
lrand48:                                //  @lrand48
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
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
	addi x11 ,  x8 ,  172
	add x10 ,  x0 ,  x8
	call __dorand48
	lhu x15 ,  174 ( x8 )
	lhu x14 ,  176 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	srli x15 ,  x15 ,  1&31
	slli x14 ,  x14 ,  15&31
	or x10 ,  x15 ,  x14
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	lrand48, .Lfunc_end1-lrand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
