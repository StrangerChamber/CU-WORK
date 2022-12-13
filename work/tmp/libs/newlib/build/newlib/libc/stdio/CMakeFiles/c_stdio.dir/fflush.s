	.text
	.file	"fflush.c"
	.globl	__sflush_r              //  -- Begin function __sflush_r
	.type	__sflush_r,@function
__sflush_r:                             //  @__sflush_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lh x15 ,  12 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	andi x13 ,  x15 ,  8
	bltu x0, x13, .LBB0_10
.LBB0_1:                                //  %if.then
	lui x30 ,  2048&4095
	and x15 ,  x14 ,  x15
	lui x14 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	or x14 ,  x14 ,  x15
	sh x14 ,  12 ( x8 )
	lw x14 ,  4 ( x8 )
	blt x0, x14, .LBB0_3
.LBB0_2:                                //  %lor.lhs.false
	lw x14 ,  60 ( x8 )
	bge x0, x14, .LBB0_29
.LBB0_3:                                //  %land.lhs.true
	lw x14 ,  40 ( x8 )
	beq x0, x14, .LBB0_29
.LBB0_4:                                //  %if.then11
	lw x19 ,  0 ( x9 )
	lui x20 ,  (4096>>12)&1048575
	sw x0 ,  0 ( x9 )
	and x15 ,  x20 ,  x15
	bltu x0, x15, .LBB0_18
.LBB0_5:                                //  %if.else
	lw x11 ,  28 ( x8 )
	add x18 ,  x0 ,  x0
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call_reg, 0 ( x14 )
	add x12 ,  x0 ,  x10
	xori x15 ,  x12 ,  -1
	bltu x0, x15, .LBB0_19
.LBB0_6:                                //  %land.lhs.true20
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_36
.LBB0_7:                                //  %land.lhs.true20
	xori x14 ,  x15 ,  29
	beq x0, x14, .LBB0_9
.LBB0_8:                                //  %land.lhs.true20
	xori x15 ,  x15 ,  22
	bltu x0, x15, .LBB0_28
.LBB0_9:                                //  %if.then32
	sw x19 ,  0 ( x9 )
	jal x0, .LBB0_35
.LBB0_10:                               //  %if.end117
	lw x19 ,  16 ( x8 )
	beq x0, x19, .LBB0_29
.LBB0_11:                               //  %if.end123
	lw x14 ,  0 ( x8 )
	add x18 ,  x0 ,  x0
	sw x19 ,  0 ( x8 )
	sub x20 ,  x14 ,  x19
	andi x14 ,  x15 ,  3
	add x15 ,  x0 ,  x18
	bltu x0, x14, .LBB0_13
.LBB0_12:                               //  %cond.false
	lw x15 ,  20 ( x8 )
.LBB0_13:                               //  %cond.end
	sw x15 ,  8 ( x8 )
	bge x0, x20, .LBB0_35
.LBB0_14:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  28 ( x8 )
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	lw x15 ,  36 ( x8 )
	call_reg, 0 ( x15 )
	bge x0, x10, .LBB0_28
.LBB0_15:                               //  %if.end141
                                        //    in Loop: Header=BB0_14 Depth=1
	add x19 ,  x10 ,  x19
	sub x20 ,  x20 ,  x10
	blt x0, x20, .LBB0_14
	jal x0, .LBB0_35
.LBB0_29:
	add x18 ,  x0 ,  x0
	jal x0, .LBB0_35
.LBB0_18:                               //  %if.then16
	lw x12 ,  80 ( x8 )
.LBB0_19:                               //  %if.end40
	lbu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB0_22
.LBB0_20:                               //  %if.then45
	lw x15 ,  4 ( x8 )
	sub x12 ,  x12 ,  x15
	lw x15 ,  48 ( x8 )
	beq x0, x15, .LBB0_22
.LBB0_21:                               //  %if.then49
	lw x15 ,  60 ( x8 )
	sub x12 ,  x12 ,  x15
.LBB0_22:                               //  %if.end53
	lw x11 ,  28 ( x8 )
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	lw x15 ,  40 ( x8 )
	add x13 ,  x0 ,  x18
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_25
.LBB0_23:                               //  %lor.lhs.false59
	lw x14 ,  0 ( x9 )
	addi x13 ,  x0 ,  29
	bltu x13, x14, .LBB0_28
.LBB0_24:                               //  %lor.lhs.false59
	lui x30 ,  541065217&4095
	slti x13 ,  x0 ,  1
	sll x14 ,  x13 ,  x14
	lui x13 ,  (541065217>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x14 ,  x13 ,  x14
	beq x0, x14, .LBB0_28
.LBB0_25:                               //  %if.then71
	lhu x14 ,  12 ( x8 )
	lui x30 ,  63487&4095
	lui x13 ,  (63487>>12)&1048575
	sw x0 ,  4 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x14
	and x14 ,  x20 ,  x14
	sh x13 ,  12 ( x8 )
	lw x13 ,  16 ( x8 )
	sw x13 ,  0 ( x8 )
	bltu x0, x14, .LBB0_26
.LBB0_31:                               //  %if.end91
	lw x11 ,  48 ( x8 )
	sw x19 ,  0 ( x9 )
	beq x0, x11, .LBB0_35
.LBB0_32:                               //  %if.then97
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB0_34
.LBB0_33:                               //  %if.then102
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_34:                               //  %if.end105
	sw x0 ,  48 ( x8 )
	jal x0, .LBB0_35
.LBB0_28:                               //  %if.else34
	lh x15 ,  12 ( x8 )
	addi x18 ,  x0 ,  -1
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
.LBB0_35:                               //  %cleanup143
	add x10 ,  x0 ,  x18
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_26:                               //  %land.lhs.true82
	beq x0, x15, .LBB0_30
.LBB0_27:                               //  %if.then89
	sw x10 ,  80 ( x8 )
	lw x11 ,  48 ( x8 )
	sw x19 ,  0 ( x9 )
	bltu x0, x11, .LBB0_32
	jal x0, .LBB0_35
.LBB0_30:                               //  %lor.lhs.false85
	lw x15 ,  0 ( x9 )
	bltu x0, x15, .LBB0_31
	jal x0, .LBB0_27
.LBB0_36:
	addi x12 ,  x0 ,  -1
	lbu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB0_20
	jal x0, .LBB0_22
.Lfunc_end0:
	.size	__sflush_r, .Lfunc_end0-__sflush_r
	.cfi_endproc
                                        //  -- End function
	.globl	_fflush_r               //  -- Begin function _fflush_r
	.type	_fflush_r,@function
_fflush_r:                              //  @_fflush_r
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
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	beq x0, x15, .LBB1_4
.LBB1_5:                                //  %if.end4
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __sflush_r
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x15 ,  12 ( x8 )
	bltu x0, x15, .LBB1_5
.LBB1_4:
	add x10 ,  x0 ,  x0
.LBB1_6:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_fflush_r, .Lfunc_end1-_fflush_r
	.cfi_endproc
                                        //  -- End function
	.globl	fflush                  //  -- Begin function fflush
	.type	fflush,@function
fflush:                                 //  @fflush
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x8, .LBB2_1
.LBB2_2:                                //  %if.end
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB2_5
.LBB2_3:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB2_4
.LBB2_5:                                //  %if.end.i
	lhu x15 ,  12 ( x8 )
	beq x0, x15, .LBB2_6
.LBB2_7:                                //  %if.end4.i
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __sflush_r
	jal x0, .LBB2_8
.LBB2_1:                                //  %if.then
	lui x30 ,  _global_impure_ptr&4095
	lui x15 ,  (_global_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _fflush_r&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (_fflush_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call _fwalk_reent
	jal x0, .LBB2_8
.LBB2_4:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x15 ,  12 ( x8 )
	bltu x0, x15, .LBB2_7
.LBB2_6:
	add x10 ,  x0 ,  x0
.LBB2_8:                                //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	fflush, .Lfunc_end2-fflush
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
