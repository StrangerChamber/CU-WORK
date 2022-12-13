	.text
	.file	"gdtoa-hexnan.c"
	.globl	__match                 //  -- Begin function __match
	.type	__match,@function
__match:                                //  @__match
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	addi x13 ,  x0 ,  26
	add x10 ,  x0 ,  x0
	lw x14 ,  0 ( x15 )
	addi x14 ,  x14 ,  1
	lb x12 ,  0 ( x11 )
	bltu x0, x12, .LBB0_2
	jal x0, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x14 ,  1
	addi x11 ,  x11 ,  1
	bne x5, x12, .LBB0_6
.LBB0_1:                                //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	lb x12 ,  0 ( x11 )
	beq x0, x12, .LBB0_5
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x5 ,  0 ( x14 )
	addi x6 ,  x5 ,  -65
	andi x6 ,  x6 ,  255
	bgeu x6, x13, .LBB0_4
.LBB0_3:                                //    in Loop: Header=BB0_2 Depth=1
	addi x5 ,  x5 ,  32
	jal x0, .LBB0_4
.LBB0_5:                                //  %while.end
	slti x10 ,  x0 ,  1
	sw x14 ,  0 ( x15 )
.LBB0_6:                                //  %cleanup
	ret
.Lfunc_end0:
	.size	__match, .Lfunc_end0-__match
	.cfi_endproc
                                        //  -- End function
	.globl	__hexnan                //  -- Begin function __hexnan
	.type	__hexnan,@function
__hexnan:                               //  @__hexnan
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lw x15 ,  0 ( x11 )
	add x7 ,  x0 ,  x0
	sw x9 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw x19 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x22 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -24
	sw x23 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -28
	sw x24 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -32
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -36
	sw x26 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -40
	sw x27 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -44
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	srai x14 ,  x15 ,  5&31
	andi x13 ,  x15 ,  31
	slli x14 ,  x14 ,  2&31
	add x11 ,  x14 ,  x12
	beq x13, x7, .LBB1_2
.LBB1_1:
	addi x11 ,  x11 ,  4
.LBB1_2:                                //  %entry
	lw x23 ,  0 ( x10 )
	addi x15 ,  x11 ,  -4
	addi x14 ,  x0 ,  -1
	add x29 ,  x0 ,  x0
	lui x8 ,  (__hexdig>>12)&1048575
	addi x5 ,  x0 ,  32
	addi x16 ,  x0 ,  7
	slti x18 ,  x0 ,  1
	addi x9 ,  x0 ,  8
	sw x0 ,  -4 ( x11 )
	add x6 ,  x0 ,  x15
.LBB1_3:                                //  %while.cond.outer.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
                                        //        Child Loop BB1_9 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
                                        //      Child Loop BB1_39 Depth 2
	add x21 ,  x0 ,  x7
	add x20 ,  x0 ,  x29
.LBB1_4:                                //  %while.cond.outer
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_9 Depth 3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
	add x22 ,  x0 ,  x23
	slli x19 ,  x14 ,  2&31
	add x17 ,  x19 ,  x11
	bltu x12, x17, .LBB1_5
.LBB1_9:                                //  %while.cond.outer168
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_24 Depth 4
                                        //          Child Loop BB1_14 Depth 4
                                        //            Child Loop BB1_18 Depth 5
	bge x21, x7, .LBB1_19
.LBB1_10:                               //  %while.cond.outer168.split.us
                                        //    in Loop: Header=BB1_9 Depth=3
	bgeu x17, x6, .LBB1_23
.LBB1_11:                               //  %while.cond.us.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	lbu x24 ,  1 ( x22 )
	beq x0, x24, .LBB1_43
.LBB1_12:                               //  %while.body.us.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	addi x25 ,  x22 ,  1
	jal x0, .LBB1_14
.LBB1_13:                               //  %if.end18.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	lbu x24 ,  1 ( x23 )
	addi x25 ,  x23 ,  1
	add x20 ,  x0 ,  x9
	add x22 ,  x0 ,  x23
	beq x0, x24, .LBB1_64
.LBB1_14:                               //  %while.body.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_18 Depth 5
	lui x30 ,  __hexdig&4095
	add x23 ,  x0 ,  x25
	andi x26 ,  x24 ,  255
	srli x30 ,  x30 ,  12&31
	or x25 ,  x8 ,  x30
	add x25 ,  x26 ,  x25
	lbu x25 ,  0 ( x25 )
	bltu x0, x25, .LBB1_21
.LBB1_15:                               //  %if.then7.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	bltu x5, x26, .LBB1_59
.LBB1_16:                               //  %if.then12.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	blt x16, x20, .LBB1_13
.LBB1_17:                               //  %if.then17.us.us
                                        //    in Loop: Header=BB1_14 Depth=4
	lw x25 ,  0 ( x17 )
	slli x20 ,  x20 ,  2&31
	add x22 ,  x0 ,  x17
	sub x24 ,  x5 ,  x20
.LBB1_18:                               //  %do.body.i.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //          Parent Loop BB1_14 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	lw x26 ,  4 ( x22 )
	sll x27 ,  x26 ,  x20
	or x25 ,  x25 ,  x27
	sw x25 ,  0 ( x22 )
	srl x25 ,  x26 ,  x24
	sw x25 ,  4 ( x22 )
	addi x22 ,  x22 ,  4
	bltu x22, x6, .LBB1_18
	jal x0, .LBB1_13
.LBB1_19:                               //  %while.cond
                                        //    in Loop: Header=BB1_9 Depth=3
	lbu x24 ,  1 ( x22 )
	beq x0, x24, .LBB1_43
.LBB1_20:                               //  %while.body
                                        //    in Loop: Header=BB1_9 Depth=3
	lui x30 ,  __hexdig&4095
	addi x23 ,  x22 ,  1
	srli x30 ,  x30 ,  12&31
	or x25 ,  x8 ,  x30
	add x25 ,  x24 ,  x25
	lbu x25 ,  0 ( x25 )
	beq x0, x25, .LBB1_35
.LBB1_21:                               //    in Loop: Header=BB1_9 Depth=3
	add x26 ,  x0 ,  x20
	add x22 ,  x0 ,  x23
.LBB1_22:                               //  %if.end31
                                        //    in Loop: Header=BB1_9 Depth=3
	addi x20 ,  x26 ,  1
	addi x7 ,  x7 ,  1
	blt x16, x26, .LBB1_9
	jal x0, .LBB1_34
.LBB1_23:                               //  %while.cond.us.preheader
                                        //    in Loop: Header=BB1_9 Depth=3
	addi x22 ,  x22 ,  1
.LBB1_24:                               //  %while.cond.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //        Parent Loop BB1_9 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lbu x24 ,  0 ( x22 )
	add x26 ,  x0 ,  x20
	beq x0, x24, .LBB1_42
.LBB1_25:                               //  %while.body.us
                                        //    in Loop: Header=BB1_24 Depth=4
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x8 ,  x30
	add x20 ,  x24 ,  x20
	lbu x25 ,  0 ( x20 )
	bltu x0, x25, .LBB1_22
.LBB1_26:                               //  %if.then7.us
                                        //    in Loop: Header=BB1_24 Depth=4
	addi x22 ,  x22 ,  1
	sltiu x23 ,  x24 ,  33
	add x20 ,  x0 ,  x9
	bltu x0, x23, .LBB1_24
	jal x0, .LBB1_58
.LBB1_5:                                //  %while.cond.outer168.us
                                        //    in Loop: Header=BB1_4 Depth=2
	lbu x24 ,  1 ( x22 )
	addi x23 ,  x22 ,  1
	bge x21, x7, .LBB1_27
.LBB1_6:                                //  %while.cond.outer168.split.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	bgeu x17, x6, .LBB1_29
.LBB1_7:                                //  %while.cond.outer168.split.us.split.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x24, .LBB1_43
.LBB1_8:                                //  %while.body.us.us.us
                                        //    in Loop: Header=BB1_4 Depth=2
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x25 ,  x8 ,  x30
	add x25 ,  x24 ,  x25
	lbu x25 ,  0 ( x25 )
	bltu x0, x25, .LBB1_31
	jal x0, .LBB1_36
.LBB1_27:                               //  %while.cond.outer168.while.cond.outer168.split_crit_edge.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x24, .LBB1_43
.LBB1_28:                               //  %while.body.us224
                                        //    in Loop: Header=BB1_4 Depth=2
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x25 ,  x8 ,  x30
	add x25 ,  x24 ,  x25
	lbu x25 ,  0 ( x25 )
	bltu x0, x25, .LBB1_31
	jal x0, .LBB1_35
.LBB1_29:                               //  %while.cond.outer168.split.us.while.cond.outer168.split.us.split_crit_edge.us
                                        //    in Loop: Header=BB1_4 Depth=2
	beq x0, x24, .LBB1_43
.LBB1_30:                               //  %while.body.us.us261
                                        //    in Loop: Header=BB1_4 Depth=2
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x25 ,  x8 ,  x30
	add x25 ,  x24 ,  x25
	lbu x25 ,  0 ( x25 )
	beq x0, x25, .LBB1_40
.LBB1_31:                               //  %if.end31.us
                                        //    in Loop: Header=BB1_4 Depth=2
	addi x7 ,  x7 ,  1
	blt x16, x20, .LBB1_33
.LBB1_32:                               //  %if.end41.loopexit
                                        //    in Loop: Header=BB1_4 Depth=2
	addi x20 ,  x20 ,  1
	add x22 ,  x0 ,  x23
	jal x0, .LBB1_34
.LBB1_33:                               //  %if.end39
                                        //    in Loop: Header=BB1_4 Depth=2
	addi x14 ,  x14 ,  -1
	add x22 ,  x0 ,  x23
	add x20 ,  x0 ,  x18
	slli x17 ,  x14 ,  2&31
	add x17 ,  x17 ,  x11
	sw x0 ,  0 ( x17 )
.LBB1_34:                               //  %if.end41
                                        //    in Loop: Header=BB1_4 Depth=2
	slli x17 ,  x14 ,  2&31
	andi x23 ,  x25 ,  15
	add x17 ,  x17 ,  x11
	lw x19 ,  0 ( x17 )
	slli x19 ,  x19 ,  4&31
	or x19 ,  x23 ,  x19
	sw x19 ,  0 ( x17 )
	slli x19 ,  x14 ,  2&31
	add x17 ,  x19 ,  x11
	bgeu x12, x17, .LBB1_9
	jal x0, .LBB1_5
.LBB1_35:                               //  %if.then7.us228
                                        //    in Loop: Header=BB1_4 Depth=2
	sltiu x25 ,  x24 ,  33
	bltu x0, x25, .LBB1_4
	jal x0, .LBB1_59
.LBB1_36:                               //  %if.then7.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	bltu x5, x24, .LBB1_59
.LBB1_37:                               //  %if.then12.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	blt x16, x20, .LBB1_41
.LBB1_38:                               //  %if.then17.us.us.us
                                        //    in Loop: Header=BB1_3 Depth=1
	lw x21 ,  0 ( x17 )
	slli x19 ,  x20 ,  2&31
	sub x20 ,  x5 ,  x19
.LBB1_39:                               //  %do.body.i.us.us.us
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x22 ,  4 ( x17 )
	sll x24 ,  x22 ,  x19
	or x21 ,  x21 ,  x24
	sw x21 ,  0 ( x17 )
	srl x21 ,  x22 ,  x20
	sw x21 ,  4 ( x17 )
	addi x17 ,  x17 ,  4
	bltu x17, x6, .LBB1_39
	jal x0, .LBB1_41
.LBB1_40:                               //  %if.then7.us.us265
                                        //    in Loop: Header=BB1_3 Depth=1
	sltiu x21 ,  x24 ,  33
	beq x0, x21, .LBB1_59
.LBB1_41:                               //  %if.end22
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x14 ,  x14 ,  -1
	slli x6 ,  x14 ,  2&31
	add x6 ,  x6 ,  x11
	sw x0 ,  0 ( x6 )
	jal x0, .LBB1_3
.LBB1_42:
	add x20 ,  x0 ,  x26
.LBB1_43:                               //  %while.end
	beq x0, x7, .LBB1_62
.LBB1_44:                               //  %if.end45
	bgeu x17, x6, .LBB1_48
.LBB1_45:                               //  %if.end45
	blt x16, x20, .LBB1_48
.LBB1_46:                               //  %if.then51
	lw x29 ,  0 ( x17 )
	slli x10 ,  x20 ,  2&31
	add x7 ,  x0 ,  x17
	sub x16 ,  x5 ,  x10
.LBB1_47:                               //  %do.body.i160
                                        //  =>This Inner Loop Header: Depth=1
	lw x8 ,  4 ( x7 )
	sll x9 ,  x8 ,  x10
	or x29 ,  x29 ,  x9
	sw x29 ,  0 ( x7 )
	srl x29 ,  x8 ,  x16
	sw x29 ,  4 ( x7 )
	addi x7 ,  x7 ,  4
	bltu x7, x6, .LBB1_47
.LBB1_48:                               //  %if.end52
	bgeu x12, x17, .LBB1_52
.LBB1_49:                               //  %do.body.preheader
	add x11 ,  x19 ,  x11
	add x13 ,  x0 ,  x12
.LBB1_50:                               //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x11 )
	addi x11 ,  x11 ,  4
	addi x14 ,  x14 ,  1
	sw x10 ,  0 ( x13 )
	addi x13 ,  x13 ,  4
	blt x14, x0, .LBB1_50
.LBB1_51:                               //  %do.body60
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x13 )
	addi x13 ,  x13 ,  4
	bgeu x15, x13, .LBB1_51
	jal x0, .LBB1_54
.LBB1_52:                               //  %if.else
	beq x0, x13, .LBB1_54
.LBB1_53:                               //  %if.then69
	sub x14 ,  x5 ,  x13
	addi x13 ,  x0 ,  -1
	srl x14 ,  x13 ,  x14
	lw x13 ,  0 ( x15 )
	and x14 ,  x14 ,  x13
	sw x14 ,  0 ( x15 )
	addi x10 ,  x0 ,  5
	bltu x0, x14, .LBB1_63
	jal x0, .LBB1_56
.LBB1_54:                               //  %if.end73thread-pre-split
	lw x14 ,  0 ( x15 )
	addi x10 ,  x0 ,  5
	bltu x0, x14, .LBB1_63
	jal x0, .LBB1_56
.LBB1_55:                               //  %for.inc
                                        //    in Loop: Header=BB1_56 Depth=1
	lw x13 ,  -4 ( x15 )
	addi x14 ,  x15 ,  -4
	add x15 ,  x0 ,  x14
	bltu x0, x13, .LBB1_63
.LBB1_56:                               //  %if.end77
                                        //  =>This Inner Loop Header: Depth=1
	bne x12, x15, .LBB1_55
.LBB1_57:                               //  %if.then80
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x12 )
	jal x0, .LBB1_63
.LBB1_58:                               //  %if.end25.loopexit3
	addi x22 ,  x22 ,  -2
	add x20 ,  x0 ,  x26
.LBB1_59:                               //  %if.end25
	andi x29 ,  x24 ,  255
	xori x29 ,  x29 ,  41
	bltu x0, x29, .LBB1_62
.LBB1_60:                               //  %if.then28
	addi x29 ,  x22 ,  2
	sw x29 ,  0 ( x10 )
	bltu x0, x7, .LBB1_44
	jal x0, .LBB1_62
.LBB1_64:
	add x20 ,  x0 ,  x9
	bltu x0, x7, .LBB1_44
.LBB1_62:
	addi x10 ,  x0 ,  4
.LBB1_63:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__hexnan, .Lfunc_end1-__hexnan
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
