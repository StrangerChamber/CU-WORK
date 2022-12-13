	.text
	.file	"fpurge.c"
	.globl	_fpurge_r               //  -- Begin function _fpurge_r
	.type	_fpurge_r,@function
_fpurge_r:                              //  @_fpurge_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lh x15 ,  12 ( x8 )
	beq x0, x15, .LBB0_4
.LBB0_5:                                //  %if.end23
	lw x14 ,  16 ( x8 )
	add x9 ,  x0 ,  x0
	sw x14 ,  0 ( x8 )
	andi x14 ,  x15 ,  8
	bltu x0, x14, .LBB0_10
.LBB0_6:                                //  %if.then26
	lw x11 ,  48 ( x8 )
	sw x0 ,  4 ( x8 )
	beq x0, x11, .LBB0_13
.LBB0_7:                                //  %if.then30
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_9
.LBB0_8:                                //  %if.then35
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_9:                                //  %if.end38
	sw x0 ,  48 ( x8 )
	jal x0, .LBB0_13
.LBB0_10:                               //  %if.else
	andi x14 ,  x15 ,  3
	add x15 ,  x0 ,  x9
	bltu x0, x14, .LBB0_12
.LBB0_11:                               //  %cond.false45
	lw x15 ,  20 ( x8 )
.LBB0_12:                               //  %cond.end47
	sw x15 ,  8 ( x8 )
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
	lh x15 ,  12 ( x8 )
	bltu x0, x15, .LBB0_5
.LBB0_4:                                //  %if.then10
	addi x15 ,  x0 ,  9
	addi x9 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fpurge_r, .Lfunc_end0-_fpurge_r
	.cfi_endproc
                                        //  -- End function
	.globl	fpurge                  //  -- Begin function fpurge
	.type	fpurge,@function
fpurge:                                 //  @fpurge
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lh x15 ,  12 ( x8 )
	beq x0, x15, .LBB1_4
.LBB1_5:                                //  %if.end23.i
	lw x14 ,  16 ( x8 )
	add x9 ,  x0 ,  x0
	sw x14 ,  0 ( x8 )
	andi x14 ,  x15 ,  8
	bltu x0, x14, .LBB1_10
.LBB1_6:                                //  %if.then26.i
	lw x11 ,  48 ( x8 )
	sw x0 ,  4 ( x8 )
	beq x0, x11, .LBB1_13
.LBB1_7:                                //  %if.then30.i
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB1_9
.LBB1_8:                                //  %if.then35.i
	add x10 ,  x0 ,  x18
	call _free_r
.LBB1_9:                                //  %if.end38.i
	sw x0 ,  48 ( x8 )
	jal x0, .LBB1_13
.LBB1_10:                               //  %if.else.i
	andi x14 ,  x15 ,  3
	add x15 ,  x0 ,  x9
	bltu x0, x14, .LBB1_12
.LBB1_11:                               //  %cond.false45.i
	lw x15 ,  20 ( x8 )
.LBB1_12:                               //  %cond.end47.i
	sw x15 ,  8 ( x8 )
	jal x0, .LBB1_13
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x18
	call __sinit
	lh x15 ,  12 ( x8 )
	bltu x0, x15, .LBB1_5
.LBB1_4:                                //  %if.then10.i
	addi x15 ,  x0 ,  9
	addi x9 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
.LBB1_13:                               //  %_fpurge_r.exit
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fpurge, .Lfunc_end1-fpurge
	.cfi_endproc
                                        //  -- End function
	.globl	__fpurge                //  -- Begin function __fpurge
	.type	__fpurge,@function
__fpurge:                               //  @__fpurge
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
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB2_3
.LBB2_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB2_2
.LBB2_3:                                //  %if.end.i
	lh x15 ,  12 ( x8 )
	beq x0, x15, .LBB2_4
.LBB2_5:                                //  %if.end23.i
	lw x14 ,  16 ( x8 )
	sw x14 ,  0 ( x8 )
	andi x14 ,  x15 ,  8
	bltu x0, x14, .LBB2_10
.LBB2_6:                                //  %if.then26.i
	lw x11 ,  48 ( x8 )
	sw x0 ,  4 ( x8 )
	beq x0, x11, .LBB2_14
.LBB2_7:                                //  %if.then30.i
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB2_9
.LBB2_8:                                //  %if.then35.i
	add x10 ,  x0 ,  x9
	call _free_r
.LBB2_9:                                //  %if.end38.i
	sw x0 ,  48 ( x8 )
	jal x0, .LBB2_14
.LBB2_10:                               //  %if.else.i
	andi x15 ,  x15 ,  3
	beq x0, x15, .LBB2_12
.LBB2_11:
	add x15 ,  x0 ,  x0
	jal x0, .LBB2_13
.LBB2_2:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	call __sinit
	lh x15 ,  12 ( x8 )
	bltu x0, x15, .LBB2_5
.LBB2_4:                                //  %if.then10.i
	addi x15 ,  x0 ,  9
	sw x15 ,  0 ( x9 )
	jal x0, .LBB2_14
.LBB2_12:                               //  %cond.false45.i
	lw x15 ,  20 ( x8 )
.LBB2_13:                               //  %cond.end47.i
	sw x15 ,  8 ( x8 )
.LBB2_14:                               //  %_fpurge_r.exit
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	__fpurge, .Lfunc_end2-__fpurge
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
