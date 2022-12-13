	.text
	.file	"strtoul.c"
	.globl	_strtoul_r              //  -- Begin function _strtoul_r
	.type	_strtoul_r,@function
_strtoul_r:                             //  @_strtoul_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, _strtoul_l
.Lfunc_end0:
	.size	_strtoul_r, .Lfunc_end0-_strtoul_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoul_l,@function    //  -- Begin function _strtoul_l
_strtoul_l:                             //  @_strtoul_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	lui x14 ,  (_ctype_>>12)&1048575
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x15 ,  x0 ,  x9
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x23 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	addi x15 ,  x15 ,  1
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x12 ,  x23 ,  x12
	lbu x12 ,  1 ( x12 )
	andi x12 ,  x12 ,  8
	bltu x0, x12, .LBB1_1
.LBB1_2:                                //  %do.end
	xori x14 ,  x23 ,  43
	beq x0, x14, .LBB1_6
.LBB1_3:                                //  %do.end
	xori x14 ,  x23 ,  45
	bltu x0, x14, .LBB1_5
.LBB1_4:
	slti x22 ,  x0 ,  1
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	add x22 ,  x0 ,  x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x23 ,  0 ( x15 )
	addi x24 ,  x15 ,  1
	andi x15 ,  x13 ,  -17
	xori x14 ,  x23 ,  48
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x14, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x15 ,  0 ( x24 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	addi x15 ,  x24 ,  2
	addi x19 ,  x0 ,  16
	lbu x23 ,  1 ( x24 )
	add x24 ,  x0 ,  x15
	jal x0, .LBB1_18
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	add x22 ,  x0 ,  x0
	add x24 ,  x0 ,  x15
	andi x15 ,  x13 ,  -17
	xori x14 ,  x23 ,  48
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB1_9
.LBB1_14:                               //  %if.end29
	xori x15 ,  x13 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x14, .LBB1_12
.LBB1_15:
	addi x19 ,  x0 ,  10
	beq x0, x15, .LBB1_17
	jal x0, .LBB1_18
.LBB1_11:                               //  %if.end29.thread14
	xori x15 ,  x13 ,  0
	sltiu x15 ,  x15 ,  1
.LBB1_12:
	addi x19 ,  x0 ,  8
	addi x23 ,  x0 ,  48
	bltu x0, x15, .LBB1_18
.LBB1_17:
	add x19 ,  x0 ,  x13
.LBB1_18:
	addi x20 ,  x0 ,  -1
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call __udivsi3
	add x11 ,  x0 ,  x19
	add x21 ,  x0 ,  x10
	call __mulsi3
	add x14 ,  x0 ,  x0
	addi x13 ,  x24 ,  -1
	xori x25 ,  x10 ,  -1
	slti x26 ,  x0 ,  1
	addi x27 ,  x0 ,  25
	add x15 ,  x0 ,  x14
	jal x0, .LBB1_19
.LBB1_26:                               //    in Loop: Header=BB1_19 Depth=1
	add x14 ,  x0 ,  x10
	add x15 ,  x0 ,  x20
.LBB1_31:                               //  %for.inc
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x13 ,  x24 ,  1
	lbu x23 ,  1 ( x24 )
.LBB1_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x18 ,  x23 ,  -48
	add x10 ,  x0 ,  x14
	add x24 ,  x0 ,  x13
	sltiu x14 ,  x18 ,  10
	bltu x0, x14, .LBB1_24
.LBB1_20:                               //  %if.else42
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x14 ,  x23 ,  -65
	bltu x27, x14, .LBB1_22
.LBB1_21:                               //  %if.then48
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x18 ,  x23 ,  -55
.LBB1_24:                               //  %if.end61
                                        //    in Loop: Header=BB1_19 Depth=1
	bge x18, x19, .LBB1_32
.LBB1_25:                               //  %if.end65
                                        //    in Loop: Header=BB1_19 Depth=1
	bltu x21, x10, .LBB1_26
.LBB1_27:                               //  %if.end65
                                        //    in Loop: Header=BB1_19 Depth=1
	blt x15, x0, .LBB1_26
.LBB1_28:                               //  %lor.lhs.false71
                                        //    in Loop: Header=BB1_19 Depth=1
	bne x10, x21, .LBB1_30
.LBB1_29:                               //  %lor.lhs.false71
                                        //    in Loop: Header=BB1_19 Depth=1
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x20
	blt x25, x18, .LBB1_31
.LBB1_30:                               //  %if.else78
                                        //    in Loop: Header=BB1_19 Depth=1
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x14 ,  x10 ,  x18
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_31
.LBB1_22:                               //  %if.else50
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x14 ,  x23 ,  -97
	bltu x27, x14, .LBB1_32
.LBB1_23:                               //  %if.then56
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x18 ,  x23 ,  -87
	blt x18, x19, .LBB1_25
.LBB1_32:                               //  %for.end
	blt x15, x0, .LBB1_33
.LBB1_34:                               //  %if.else85
	add x14 ,  x0 ,  x0
	beq x22, x14, .LBB1_36
.LBB1_35:                               //  %if.else85
	sub x10 ,  x0 ,  x10
.LBB1_36:                               //  %if.end90
	beq x0, x8, .LBB1_40
.LBB1_37:                               //  %if.then93
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB1_39
.LBB1_38:                               //  %if.then93
	add x9 ,  x0 ,  x24
.LBB1_39:                               //  %if.then93
	sw x9 ,  0 ( x8 )
.LBB1_40:                               //  %if.end97
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.LBB1_33:                               //  %if.then84
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	addi x10 ,  x0 ,  -1
	sw x14 ,  0 ( x13 )
	bltu x0, x8, .LBB1_37
	jal x0, .LBB1_40
.Lfunc_end1:
	.size	_strtoul_l, .Lfunc_end1-_strtoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoul_l               //  -- Begin function strtoul_l
	.type	strtoul_l,@function
strtoul_l:                              //  @strtoul_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _strtoul_l
.Lfunc_end2:
	.size	strtoul_l, .Lfunc_end2-strtoul_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoul                 //  -- Begin function strtoul
	.type	strtoul,@function
strtoul:                                //  @strtoul
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _strtoul_l
.Lfunc_end3:
	.size	strtoul, .Lfunc_end3-strtoul
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
