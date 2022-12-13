	.text
	.file	"gets.c"
	.globl	_gets_r                 //  -- Begin function _gets_r
	.type	_gets_r,@function
_gets_r:                                //  @_gets_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x9 )
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
.LBB0_3:                                //  %if.end
	add x19 ,  x0 ,  x0
	lw x15 ,  4 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x18 )
	bge x0, x15, .LBB0_5
.LBB0_6:                                //  %cond.false9
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x18 )
	lbu x10 ,  0 ( x15 )
	xori x15 ,  x10 ,  10
	beq x0, x15, .LBB0_12
.LBB0_8:                                //  %cond.end11
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_9
.LBB0_11:                               //  %if.else32
	add x15 ,  x19 ,  x8
	addi x19 ,  x19 ,  1
	sb x10 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x15, .LBB0_6
.LBB0_5:                                //  %cond.true8
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __srget_r
	xori x15 ,  x10 ,  10
	bltu x0, x15, .LBB0_8
	jal x0, .LBB0_12
.LBB0_9:                                //  %if.then16
	beq x0, x19, .LBB0_10
.LBB0_12:                               //  %while.end
	add x15 ,  x19 ,  x8
	sb x0 ,  0 ( x15 )
	jal x0, .LBB0_13
.LBB0_10:
	add x8 ,  x0 ,  x0
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_gets_r, .Lfunc_end0-_gets_r
	.cfi_endproc
                                        //  -- End function
	.globl	gets                    //  -- Begin function gets
	.type	gets,@function
gets:                                   //  @gets
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	lw x18 ,  4 ( x9 )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x9 )
	bltu x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	call __sinit
.LBB1_3:                                //  %if.end.i
	add x19 ,  x0 ,  x0
	lw x15 ,  4 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x18 )
	bge x0, x15, .LBB1_5
.LBB1_6:                                //  %cond.false9.i
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x18 )
	lbu x10 ,  0 ( x15 )
	xori x15 ,  x10 ,  10
	beq x0, x15, .LBB1_12
.LBB1_8:                                //  %cond.end11.i
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_9
.LBB1_11:                               //  %if.else32.i
	add x15 ,  x19 ,  x8
	addi x19 ,  x19 ,  1
	sb x10 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x15, .LBB1_6
.LBB1_5:                                //  %cond.true8.i
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __srget_r
	xori x15 ,  x10 ,  10
	bltu x0, x15, .LBB1_8
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.then16.i
	beq x0, x19, .LBB1_10
.LBB1_12:                               //  %while.end.i
	add x15 ,  x19 ,  x8
	sb x0 ,  0 ( x15 )
	jal x0, .LBB1_13
.LBB1_10:
	add x8 ,  x0 ,  x0
.LBB1_13:                               //  %_gets_r.exit
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	gets, .Lfunc_end1-gets
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
