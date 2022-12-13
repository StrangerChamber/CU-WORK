	.text
	.file	"erand48.c"
	.globl	_erand48_r              //  -- Begin function _erand48_r
	.type	_erand48_r,@function
_erand48_r:                             //  @_erand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x11
	call __dorand48
	lhu x10 ,  0 ( x8 )
	call __floatunsidf
	addi x12 ,  x0 ,  -48
	call ldexp
	add x9 ,  x0 ,  x10
	lhu x10 ,  2 ( x8 )
	add x18 ,  x0 ,  x11
	call __floatunsidf
	addi x12 ,  x0 ,  -32
	call ldexp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	lhu x10 ,  4 ( x8 )
	add x18 ,  x0 ,  x11
	call __floatunsidf
	addi x12 ,  x0 ,  -16
	call ldexp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_erand48_r, .Lfunc_end0-_erand48_r
	.cfi_endproc
                                        //  -- End function
	.globl	erand48                 //  -- Begin function erand48
	.type	erand48,@function
erand48:                                //  @erand48
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call __dorand48
	lhu x10 ,  0 ( x8 )
	call __floatunsidf
	addi x12 ,  x0 ,  -48
	call ldexp
	add x9 ,  x0 ,  x10
	lhu x10 ,  2 ( x8 )
	add x18 ,  x0 ,  x11
	call __floatunsidf
	addi x12 ,  x0 ,  -32
	call ldexp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	lhu x10 ,  4 ( x8 )
	add x18 ,  x0 ,  x11
	call __floatunsidf
	addi x12 ,  x0 ,  -16
	call ldexp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	erand48, .Lfunc_end1-erand48
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
