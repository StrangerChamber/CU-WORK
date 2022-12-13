	.text
	.file	"remove.c"
	.globl	_remove_r               //  -- Begin function _remove_r
	.type	_remove_r,@function
_remove_r:                              //  @_remove_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call _unlink_r
	add x15 ,  x0 ,  x10
	addi x10 ,  x0 ,  -1
	beq x15, x10, .LBB0_2
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x0
.LBB0_2:                                //  %entry
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_remove_r, .Lfunc_end0-_remove_r
	.cfi_endproc
                                        //  -- End function
	.globl	remove                  //  -- Begin function remove
	.type	remove,@function
remove:                                 //  @remove
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _unlink_r
	add x15 ,  x0 ,  x10
	addi x10 ,  x0 ,  -1
	beq x15, x10, .LBB1_2
.LBB1_1:                                //  %entry
	add x10 ,  x0 ,  x0
.LBB1_2:                                //  %entry
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	remove, .Lfunc_end1-remove
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
