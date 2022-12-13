	.text
	.file	"getc_u.c"
	.globl	_getc_unlocked_r        //  -- Begin function _getc_unlocked_r
	.type	_getc_unlocked_r,@function
_getc_unlocked_r:                       //  @_getc_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lw x15 ,  4 ( x11 )
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x11 )
	bge x0, x15, .LBB0_1
.LBB0_2:                                //  %cond.false
	lw x15 ,  0 ( x11 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x11 )
	lbu x10 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:                                //  %cond.true
	call __srget_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_getc_unlocked_r, .Lfunc_end0-_getc_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	getc_unlocked           //  -- Begin function getc_unlocked
	.type	getc_unlocked,@function
getc_unlocked:                          //  @getc_unlocked
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x11 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  4 ( x11 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x11 )
	bge x0, x15, .LBB1_1
.LBB1_2:                                //  %cond.false
	lw x15 ,  0 ( x11 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x11 )
	lbu x10 ,  0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_1:                                //  %cond.true
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call __srget_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	getc_unlocked, .Lfunc_end1-getc_unlocked
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
