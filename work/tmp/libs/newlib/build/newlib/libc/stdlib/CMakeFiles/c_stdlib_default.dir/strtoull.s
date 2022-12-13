	.text
	.file	"strtoull.c"
	.globl	_strtoull_r             //  -- Begin function _strtoull_r
	.type	_strtoull_r,@function
_strtoull_r:                            //  @_strtoull_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, _strtoull_l
.Lfunc_end0:
	.size	_strtoull_r, .Lfunc_end0-_strtoull_r
	.cfi_endproc
                                        //  -- End function
	.type	_strtoull_l,@function   //  -- Begin function _strtoull_l
_strtoull_l:                            //  @_strtoull_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	lui x14 ,  (_ctype_>>12)&1048575
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x15 ,  x0 ,  x9
.LBB1_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x25 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	addi x15 ,  x15 ,  1
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x11 ,  x25 ,  x11
	lbu x11 ,  1 ( x11 )
	andi x11 ,  x11 ,  8
	bltu x0, x11, .LBB1_1
.LBB1_2:                                //  %do.end
	xori x14 ,  x25 ,  43
	beq x0, x14, .LBB1_6
.LBB1_3:                                //  %do.end
	xori x14 ,  x25 ,  45
	bltu x0, x14, .LBB1_5
.LBB1_4:
	slti x11 ,  x0 ,  1
	jal x0, .LBB1_7
.LBB1_6:                                //  %if.then7
	add x11 ,  x0 ,  x0
.LBB1_7:                                //  %if.end10.sink.split
	lbu x25 ,  0 ( x15 )
	addi x18 ,  x15 ,  1
	jal x0, .LBB1_8
.LBB1_5:                                //  %do.end.if.end10_crit_edge
	add x11 ,  x0 ,  x0
	add x18 ,  x0 ,  x15
.LBB1_8:                                //  %if.end10
	andi x15 ,  x13 ,  -17
	xori x14 ,  x25 ,  48
	sw x12 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x11 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_14
.LBB1_9:                                //  %if.end10
	bltu x0, x14, .LBB1_14
.LBB1_10:                               //  %land.lhs.true17
	lbu x15 ,  0 ( x18 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_11
.LBB1_13:                               //  %if.end29.thread
	addi x15 ,  x18 ,  2
	addi x19 ,  x0 ,  16
	lbu x25 ,  1 ( x18 )
	add x18 ,  x0 ,  x15
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
	addi x25 ,  x0 ,  48
	bltu x0, x15, .LBB1_18
.LBB1_17:
	add x19 ,  x0 ,  x13
.LBB1_18:
	addi x20 ,  x0 ,  -1
	srai x21 ,  x19 ,  31&31
	add x12 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __muldi3
	add x15 ,  x0 ,  x0
	addi x12 ,  x18 ,  -1
	xori x27 ,  x10 ,  -1
	slti x18 ,  x0 ,  1
	addi x24 ,  x0 ,  25
	add x13 ,  x0 ,  x15
	add x14 ,  x0 ,  x15
	jal x0, .LBB1_19
.LBB1_29:                               //    in Loop: Header=BB1_19 Depth=1
	add x15 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x14 ,  x0 ,  x20
.LBB1_34:                               //  %for.inc
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x12 ,  x26 ,  1
	lbu x25 ,  1 ( x26 )
.LBB1_19:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x8 ,  x25 ,  -48
	add x11 ,  x0 ,  x13
	add x10 ,  x0 ,  x15
	add x26 ,  x0 ,  x12
	sltiu x15 ,  x8 ,  10
	bltu x0, x15, .LBB1_24
.LBB1_20:                               //  %if.else45
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x15 ,  x25 ,  -65
	bltu x24, x15, .LBB1_22
.LBB1_21:                               //  %if.then51
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x8 ,  x25 ,  -55
.LBB1_24:                               //  %if.end64
                                        //    in Loop: Header=BB1_19 Depth=1
	bge x8, x19, .LBB1_35
.LBB1_25:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	beq x11, x23, .LBB1_26
.LBB1_27:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	sltu x15 ,  x23 ,  x11
	bltu x0, x15, .LBB1_29
.LBB1_30:                               //  %if.end68
                                        //    in Loop: Header=BB1_19 Depth=1
	blt x14, x0, .LBB1_29
.LBB1_31:                               //  %lor.lhs.false74
                                        //    in Loop: Header=BB1_19 Depth=1
	xor x15 ,  x22 ,  x10
	xor x14 ,  x23 ,  x11
	or x15 ,  x14 ,  x15
	bltu x0, x15, .LBB1_33
.LBB1_32:                               //  %lor.lhs.false74
                                        //    in Loop: Header=BB1_19 Depth=1
	add x15 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x20
	blt x27, x8, .LBB1_34
.LBB1_33:                               //  %if.else81
                                        //    in Loop: Header=BB1_19 Depth=1
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __muldi3
	srai x15 ,  x8 ,  31&31
	add x14 ,  x15 ,  x11
	add x15 ,  x8 ,  x10
	sltu x13 ,  x15 ,  x10
	add x13 ,  x13 ,  x14
	add x14 ,  x0 ,  x18
	jal x0, .LBB1_34
.LBB1_26:                               //    in Loop: Header=BB1_19 Depth=1
	sltu x15 ,  x22 ,  x10
	beq x0, x15, .LBB1_30
	jal x0, .LBB1_29
.LBB1_22:                               //  %if.else53
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x15 ,  x25 ,  -97
	bltu x24, x15, .LBB1_35
.LBB1_23:                               //  %if.then59
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x8 ,  x25 ,  -87
	blt x8, x19, .LBB1_25
.LBB1_35:                               //  %for.end
	blt x14, x0, .LBB1_36
.LBB1_37:                               //  %if.else90
	lw x13 ,  12 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	beq x13, x15, .LBB1_38
.LBB1_39:                               //  %if.else90
	sltu x13 ,  x0 ,  x10
	sub x15 ,  x0 ,  x10
	add x13 ,  x13 ,  x11
	sub x11 ,  x0 ,  x13
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x12, .LBB1_44
.LBB1_41:                               //  %if.then98
	add x13 ,  x0 ,  x0
	beq x14, x13, .LBB1_43
.LBB1_42:                               //  %if.then98
	add x9 ,  x0 ,  x26
.LBB1_43:                               //  %if.then98
	sw x9 ,  0 ( x12 )
.LBB1_44:                               //  %if.end102
	add x10 ,  x0 ,  x15
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.LBB1_36:                               //  %if.then89
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x13 )
	addi x15 ,  x0 ,  -1
	add x11 ,  x0 ,  x15
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x12, .LBB1_41
	jal x0, .LBB1_44
.LBB1_38:
	add x15 ,  x0 ,  x10
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x12, .LBB1_41
	jal x0, .LBB1_44
.Lfunc_end1:
	.size	_strtoull_l, .Lfunc_end1-_strtoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoull_l              //  -- Begin function strtoull_l
	.type	strtoull_l,@function
strtoull_l:                             //  @strtoull_l
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
	jal x0, _strtoull_l
.Lfunc_end2:
	.size	strtoull_l, .Lfunc_end2-strtoull_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtoull                //  -- Begin function strtoull
	.type	strtoull,@function
strtoull:                               //  @strtoull
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
	jal x0, _strtoull_l
.Lfunc_end3:
	.size	strtoull, .Lfunc_end3-strtoull
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
