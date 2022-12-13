	.text
	.file	"fwide.c"
	.globl	_fwide_r                //  -- Begin function _fwide_r
	.type	_fwide_r,@function
_fwide_r:                               //  @_fwide_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x10 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	call __sinit
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	beq x0, x9, .LBB0_9
.LBB0_4:                                //  %if.end
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_9
.LBB0_5:                                //  %if.then14
	lw x13 ,  100 ( x8 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	add x11 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	blt x11, x9, .LBB0_6
.LBB0_7:                                //  %if.then14
	and x13 ,  x12 ,  x13
	jal x0, .LBB0_8
.LBB0_6:
	or x13 ,  x14 ,  x13
.LBB0_8:                                //  %if.then14
	or x15 ,  x14 ,  x15
	sw x13 ,  100 ( x8 )
	sh x15 ,  12 ( x8 )
.LBB0_9:                                //  %if.end29
	and x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_11
.LBB0_10:
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else35
	lbu x15 ,  101 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  32
	beq x15, x14, .LBB0_12
.LBB0_13:                               //  %if.else35
	slti x10 ,  x0 ,  1
	jal x0, .LBB0_14
.LBB0_12:
	addi x10 ,  x0 ,  -1
.LBB0_14:                               //  %if.end39
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fwide_r, .Lfunc_end0-_fwide_r
	.cfi_endproc
                                        //  -- End function
	.globl	fwide                   //  -- Begin function fwide
	.type	fwide,@function
fwide:                                  //  @fwide
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x10 )
	bltu x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then.i
	call __sinit
.LBB1_3:                                //  %if.end.i
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	beq x0, x9, .LBB1_9
.LBB1_4:                                //  %if.end.i
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_9
.LBB1_5:                                //  %if.then14.i
	lw x13 ,  100 ( x8 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	add x11 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	blt x11, x9, .LBB1_6
.LBB1_7:                                //  %if.then14.i
	and x13 ,  x12 ,  x13
	jal x0, .LBB1_8
.LBB1_6:
	or x13 ,  x14 ,  x13
.LBB1_8:                                //  %if.then14.i
	or x15 ,  x14 ,  x15
	sw x13 ,  100 ( x8 )
	sh x15 ,  12 ( x8 )
.LBB1_9:                                //  %if.end29.i
	and x15 ,  x14 ,  x15
	bltu x0, x15, .LBB1_11
.LBB1_10:
	add x10 ,  x0 ,  x0
	jal x0, .LBB1_14
.LBB1_11:                               //  %if.else35.i
	lbu x15 ,  101 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  32
	beq x15, x14, .LBB1_12
.LBB1_13:                               //  %if.else35.i
	slti x10 ,  x0 ,  1
	jal x0, .LBB1_14
.LBB1_12:
	addi x10 ,  x0 ,  -1
.LBB1_14:                               //  %_fwide_r.exit
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fwide, .Lfunc_end1-fwide
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
