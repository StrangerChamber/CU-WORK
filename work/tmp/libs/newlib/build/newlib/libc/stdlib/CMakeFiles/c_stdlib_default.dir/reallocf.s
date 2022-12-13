	.text
	.file	"reallocf.c"
	.globl	_reallocf_r             //  -- Begin function _reallocf_r
	.type	_reallocf_r,@function
_reallocf_r:                            //  @_reallocf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call _realloc_r
	add x18 ,  x0 ,  x10
	beq x0, x8, .LBB0_3
.LBB0_1:                                //  %entry
	bltu x0, x18, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _free_r
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_reallocf_r, .Lfunc_end0-_reallocf_r
	.cfi_endproc
                                        //  -- End function
	.globl	reallocf                //  -- Begin function reallocf
	.type	reallocf,@function
reallocf:                               //  @reallocf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	add x10 ,  x0 ,  x9
	call _realloc_r
	add x18 ,  x0 ,  x10
	beq x0, x8, .LBB1_3
.LBB1_1:                                //  %entry
	bltu x0, x18, .LBB1_3
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _free_r
.LBB1_3:                                //  %_reallocf_r.exit
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	reallocf, .Lfunc_end1-reallocf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
