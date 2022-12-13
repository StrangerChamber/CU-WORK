	.text
	.file	"strtoll.c"
	.globl	_strtoll_r              //  -- Begin function _strtoll_r
	.type	_strtoll_r,@function
_strtoll_r:                             //  @_strtoll_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, _strtoll_l
.Lfunc_end0:
	.size	_strtoll_r, .Lfunc_end0-_strtoll_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoll_l,@function    //  -- Begin function _strtoll_l
_strtoll_l:                             //  @_strtoll_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	lui x14 ,  (_ctype_>>12)&1048575
	add x15 ,  x0 ,  x11
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x11 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x26 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	addi x15 ,  x15 ,  1
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x11 ,  x26 ,  x11
	lbu x11 ,  1 ( x11 )
	andi x11 ,  x11 ,  8
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %do.end
	xori x14 ,  x26 ,  43
	beq x0, x14, .LBB1_6
.LBB1_3:                                //  %do.end
	xori x14 ,  x26 ,  45
	bltu x0, x14, .LBB1_5
.LBB1_4:
	slti x5 ,  x0 ,  1
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	add x5 ,  x0 ,  x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x26 ,  0 ( x15 )
	addi x9 ,  x15 ,  1
	jal x0, .LBB1_8
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	add x5 ,  x0 ,  x0
	add x9 ,  x0 ,  x15
.LBB1_8:                                //  %if.end10
	andi x15 ,  x13 ,  -17
	xori x14 ,  x26 ,  48
	sw x12 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x14, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x15 ,  0 ( x9 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	addi x15 ,  x9 ,  2
	addi x19 ,  x0 ,  16
	lbu x26 ,  1 ( x9 )
	add x9 ,  x0 ,  x15
	jal x0, .LBB1_18
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
	addi x26 ,  x0 ,  48
	bltu x0, x15, .LBB1_18
.LBB1_17:
	add x19 ,  x0 ,  x13
.LBB1_18:
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x23 ,  x0 ,  x0
	lui x14 ,  (-2147483648>>12)&1048575
	addi x27 ,  x0 ,  -1
	sw x5 ,  16 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	add x8 ,  x0 ,  x23
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	bne x5, x23, .LBB1_20
.LBB1_19:
	add x8 ,  x0 ,  x27
	add x11 ,  x0 ,  x15
.LBB1_20:
	srai x22 ,  x19 ,  31&31
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	add x13 ,  x0 ,  x22
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	add x20 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __muldi3
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	sub x8 ,  x8 ,  x10
	addi x13 ,  x9 ,  -1
	slti x18 ,  x0 ,  1
	addi x25 ,  x0 ,  25
	add x14 ,  x0 ,  x23
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_21
.LBB1_31:                               //    in Loop: Header=BB1_21 Depth=1
	add x23 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	add x15 ,  x0 ,  x27
.LBB1_36:                               //  %for.inc
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x13 ,  x9 ,  1
	lbu x26 ,  1 ( x9 )
.LBB1_21:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x21 ,  x26 ,  -48
	add x11 ,  x0 ,  x14
	add x10 ,  x0 ,  x23
	add x9 ,  x0 ,  x13
	sltiu x14 ,  x21 ,  10
	bltu x0, x14, .LBB1_26
.LBB1_22:                               //  %if.else47
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x14 ,  x26 ,  -65
	bltu x25, x14, .LBB1_24
.LBB1_23:                               //  %if.then53
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x21 ,  x26 ,  -55
.LBB1_26:                               //  %if.end66
                                        //    in Loop: Header=BB1_21 Depth=1
	bge x21, x19, .LBB1_37
.LBB1_27:                               //  %if.end70
                                        //    in Loop: Header=BB1_21 Depth=1
	beq x11, x24, .LBB1_28
.LBB1_29:                               //  %if.end70
                                        //    in Loop: Header=BB1_21 Depth=1
	sltu x14 ,  x24 ,  x11
	bltu x0, x14, .LBB1_31
.LBB1_32:                               //  %if.end70
                                        //    in Loop: Header=BB1_21 Depth=1
	blt x15, x0, .LBB1_31
.LBB1_33:                               //  %lor.lhs.false76
                                        //    in Loop: Header=BB1_21 Depth=1
	xor x15 ,  x20 ,  x10
	xor x14 ,  x24 ,  x11
	or x15 ,  x14 ,  x15
	bltu x0, x15, .LBB1_35
.LBB1_34:                               //  %lor.lhs.false76
                                        //    in Loop: Header=BB1_21 Depth=1
	add x23 ,  x0 ,  x20
	add x14 ,  x0 ,  x24
	add x15 ,  x0 ,  x27
	blt x8, x21, .LBB1_36
.LBB1_35:                               //  %if.else83
                                        //    in Loop: Header=BB1_21 Depth=1
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __muldi3
	srai x15 ,  x21 ,  31&31
	add x23 ,  x21 ,  x10
	add x15 ,  x15 ,  x11
	sltu x14 ,  x23 ,  x10
	add x14 ,  x14 ,  x15
	add x15 ,  x0 ,  x18
	jal x0, .LBB1_36
.LBB1_28:                               //    in Loop: Header=BB1_21 Depth=1
	sltu x14 ,  x20 ,  x10
	beq x0, x14, .LBB1_32
	jal x0, .LBB1_31
.LBB1_24:                               //  %if.else55
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x14 ,  x26 ,  -97
	bltu x25, x14, .LBB1_37
.LBB1_25:                               //  %if.then61
                                        //    in Loop: Header=BB1_21 Depth=1
	addi x21 ,  x26 ,  -87
	blt x21, x19, .LBB1_27
.LBB1_37:                               //  %for.end
	blt x15, x0, .LBB1_38
.LBB1_39:                               //  %if.else94
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	bne x13, x14, .LBB1_40
.LBB1_41:                               //  %if.else94
	add x12 ,  x0 ,  x10
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_44
	jal x0, .LBB1_47
.LBB1_38:                               //  %if.then91
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  34
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x12 ,  4 ( x2 )              //  4-byte Folded Reload
	sw x14 ,  0 ( x13 )
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	beq x0, x13, .LBB1_47
.LBB1_44:                               //  %if.then102
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB1_46
.LBB1_45:                               //  %if.then102
	sw x9 ,  20 ( x2 )              //  4-byte Folded Spill
.LBB1_46:                               //  %if.then102
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x13 )
	jal x0, .LBB1_47
.LBB1_40:
	sltu x14 ,  x0 ,  x10
	sub x12 ,  x0 ,  x10
	add x14 ,  x14 ,  x11
	sub x11 ,  x0 ,  x14
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB1_44
.LBB1_47:                               //  %if.end106
	add x10 ,  x0 ,  x12
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_strtoll_l, .Lfunc_end1-_strtoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoll_l               //  -- Begin function strtoll_l
	.type	strtoll_l,@function
strtoll_l:                              //  @strtoll_l
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
	jal x0, _strtoll_l
.Lfunc_end2:
	.size	strtoll_l, .Lfunc_end2-strtoll_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoll                 //  -- Begin function strtoll
	.type	strtoll,@function
strtoll:                                //  @strtoll
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
	jal x0, _strtoll_l
.Lfunc_end3:
	.size	strtoll, .Lfunc_end3-strtoll
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
