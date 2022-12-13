	.text
	.file	"vfprintf.c"
	.globl	__ssputs_r              //  -- Begin function __ssputs_r
	.type	__ssputs_r,@function
__ssputs_r:                             //  @__ssputs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x13
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x15 ,  8 ( x8 )
	bltu x9, x15, .LBB0_2
.LBB0_1:                                //  %entry
	add x9 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	lw x10 ,  0 ( x8 )
	add x11 ,  x0 ,  x12
	add x12 ,  x0 ,  x9
	call memmove
	lw x15 ,  8 ( x8 )
	add x10 ,  x0 ,  x0
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	sub x15 ,  x15 ,  x9
	sw x15 ,  8 ( x8 )
	lw x15 ,  0 ( x8 )
	add x15 ,  x9 ,  x15
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	sw x15 ,  0 ( x8 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ssputs_r, .Lfunc_end0-__ssputs_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssprint_r             //  -- Begin function __ssprint_r
	.type	__ssprint_r,@function
__ssprint_r:                            //  @__ssprint_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x12
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x15 ,  8 ( x8 )
	beq x0, x15, .LBB1_8
.LBB1_1:                                //  %do.body.preheader
	lw x15 ,  0 ( x8 )
	addi x19 ,  x15 ,  4
	lw x20 ,  0 ( x19 )
	bltu x0, x20, .LBB1_4
	jal x0, .LBB1_3
.LBB1_6:                                //  %while.end
	lw x11 ,  -4 ( x19 )
	add x12 ,  x0 ,  x18
	lw x10 ,  0 ( x9 )
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x18
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x18 ,  x15
	sw x15 ,  0 ( x9 )
	lw x15 ,  8 ( x8 )
	sub x15 ,  x15 ,  x20
	sw x15 ,  8 ( x8 )
	beq x0, x15, .LBB1_7
.LBB1_3:                                //  %while.body.backedge
                                        //  =>This Inner Loop Header: Depth=1
	addi x19 ,  x19 ,  8
	lw x20 ,  0 ( x19 )
	beq x0, x20, .LBB1_3
.LBB1_4:                                //  %while.end
	lw x15 ,  8 ( x9 )
	add x18 ,  x0 ,  x20
	bltu x20, x15, .LBB1_6
.LBB1_5:                                //  %while.end
	add x18 ,  x0 ,  x15
	jal x0, .LBB1_6
.LBB1_7:                                //  %do.end
	sw x0 ,  8 ( x8 )
.LBB1_8:                                //  %cleanup
	sw x0 ,  4 ( x8 )
	add x10 ,  x0 ,  x0
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__ssprint_r, .Lfunc_end1-__ssprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	_svfiprintf_r           //  -- Begin function _svfiprintf_r
	.type	_svfiprintf_r,@function
_svfiprintf_r:                          //  @_svfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	addi x15 ,  x2 ,  31
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x0
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x8 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x25 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x22 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	addi x19 ,  x0 ,  10
	addi x24 ,  x0 ,  120
	addi x8 ,  x0 ,  16
	lui x26 ,  (JTI2_0>>12)&1048575
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x27 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x13 ,  72 ( x2 )
	add x25 ,  x0 ,  x18
	addi x15 ,  x15 ,  40
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
	add x21 ,  x0 ,  x22
	lbu x15 ,  0 ( x21 )
	beq x0, x15, .LBB2_4
.LBB2_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB2_4
.LBB2_3:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	addi x21 ,  x21 ,  1
	lbu x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_2
.LBB2_4:                                //  %while.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_10 Depth 2
                                        //        Child Loop BB2_11 Depth 3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
                                        //      Child Loop BB2_101 Depth 2
                                        //      Child Loop BB2_116 Depth 2
                                        //      Child Loop BB2_108 Depth 2
                                        //      Child Loop BB2_172 Depth 2
                                        //      Child Loop BB2_166 Depth 2
                                        //      Child Loop BB2_163 Depth 2
                                        //      Child Loop BB2_169 Depth 2
	sub x23 ,  x21 ,  x22
	beq x0, x23, .LBB2_8
.LBB2_5:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  8 ( x9 )
	add x20 ,  x0 ,  x23
	bltu x23, x15, .LBB2_7
.LBB2_6:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	add x20 ,  x0 ,  x15
.LBB2_7:                                //  %if.then
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x20
	call memmove
	lw x15 ,  8 ( x9 )
	add x25 ,  x25 ,  x23
	sub x15 ,  x15 ,  x20
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x20 ,  x15
	sw x15 ,  0 ( x9 )
	lbu x15 ,  0 ( x21 )
.LBB2_8:                                //  %if.end10
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x15, .LBB2_177
.LBB2_9:                                //  %if.end15
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x14 ,  x0 ,  -1
	add x27 ,  x0 ,  x18
	addi x15 ,  x21 ,  1
	add x20 ,  x0 ,  x18
	add x23 ,  x0 ,  x18
	sb x0 ,  71 ( x2 )
	sw x14 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB2_10:                               //  %rflag
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_11 Depth 3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	lb x21 ,  0 ( x15 )
	addi x22 ,  x15 ,  1
.LBB2_11:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_14 Depth 4
                                        //            Child Loop BB2_18 Depth 5
                                        //          Child Loop BB2_13 Depth 4
	addi x15 ,  x21 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB2_14
.LBB2_12:                               //  %do.body.preheader
                                        //    in Loop: Header=BB2_11 Depth=3
	add x23 ,  x0 ,  x18
.LBB2_13:                               //  %do.body
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x15 ,  x10 ,  x21
	lb x21 ,  0 ( x22 )
	addi x22 ,  x22 ,  1
	addi x23 ,  x15 ,  -48
	addi x15 ,  x21 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB2_13
	jal x0, .LBB2_11
.LBB2_21:                               //    in Loop: Header=BB2_14 Depth=4
	addi x24 ,  x0 ,  120
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x21 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB2_12
.LBB2_14:                               //  %reswitch
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_18 Depth 5
	bltu x24, x21, .LBB2_77
.LBB2_15:                               //  %reswitch
                                        //    in Loop: Header=BB2_14 Depth=4
	lui x30 ,  JTI2_0&4095
	slli x15 ,  x21 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x26 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB2_16:                               //  %sw.bb29
                                        //    in Loop: Header=BB2_14 Depth=4
	lb x21 ,  0 ( x22 )
	addi x15 ,  x22 ,  1
	xori x14 ,  x21 ,  42
	beq x0, x14, .LBB2_36
.LBB2_17:                               //  %while.cond41.preheader
                                        //    in Loop: Header=BB2_14 Depth=4
	addi x24 ,  x21 ,  -48
	add x22 ,  x0 ,  x15
	add x10 ,  x0 ,  x18
	addi x14 ,  x0 ,  9
	bltu x14, x24, .LBB2_21
.LBB2_18:                               //  %while.body45
                                        //    Parent Loop BB2_4 Depth=1
                                        //      Parent Loop BB2_10 Depth=2
                                        //        Parent Loop BB2_11 Depth=3
                                        //          Parent Loop BB2_14 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x11 ,  x0 ,  x19
	call __mulsi3
	lb x21 ,  0 ( x22 )
	add x10 ,  x10 ,  x24
	addi x22 ,  x22 ,  1
	addi x24 ,  x21 ,  -48
	sltiu x15 ,  x24 ,  10
	bltu x0, x15, .LBB2_18
.LBB2_19:                               //  %while.end50
                                        //    in Loop: Header=BB2_14 Depth=4
	addi x15 ,  x0 ,  -1
	addi x24 ,  x0 ,  120
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB2_11
.LBB2_20:                               //  %while.end50.thread
                                        //    in Loop: Header=BB2_14 Depth=4
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x21 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB2_12
	jal x0, .LBB2_14
.LBB2_22:                               //  %sw.bb
                                        //    in Loop: Header=BB2_10 Depth=2
	andi x14 ,  x20 ,  255
	add x15 ,  x0 ,  x22
	bltu x0, x14, .LBB2_10
.LBB2_23:                               //  %if.then18
                                        //    in Loop: Header=BB2_10 Depth=2
	addi x20 ,  x0 ,  32
	jal x0, .LBB2_29
.LBB2_24:                               //  %sw.bb20
                                        //    in Loop: Header=BB2_10 Depth=2
	ori x27 ,  x27 ,  1
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_25:                               //  %sw.bb21
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x22
	bge x23, x0, .LBB2_10
.LBB2_26:                               //  %if.end25
                                        //    in Loop: Header=BB2_10 Depth=2
	sub x23 ,  x0 ,  x23
.LBB2_27:                               //  %sw.bb26.loopexit
                                        //    in Loop: Header=BB2_10 Depth=2
	ori x27 ,  x27 ,  4
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_28:                               //  %sw.bb28
                                        //    in Loop: Header=BB2_10 Depth=2
	addi x20 ,  x0 ,  43
.LBB2_29:                               //  %rflag
                                        //    in Loop: Header=BB2_10 Depth=2
	sb x20 ,  71 ( x2 )
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_30:                               //  %sw.bb53
                                        //    in Loop: Header=BB2_10 Depth=2
	ori x27 ,  x27 ,  128
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_31:                               //  %sw.bb64
                                        //    in Loop: Header=BB2_10 Depth=2
	ori x27 ,  x27 ,  64
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_32:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	lbu x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB2_35
.LBB2_33:                               //  %sw.bb66
                                        //    in Loop: Header=BB2_10 Depth=2
	add x14 ,  x0 ,  x8
	add x15 ,  x0 ,  x22
	or x27 ,  x27 ,  x14
	jal x0, .LBB2_10
.LBB2_34:                               //  %sw.bb75
                                        //    in Loop: Header=BB2_10 Depth=2
	ori x27 ,  x27 ,  32
	add x15 ,  x0 ,  x22
	jal x0, .LBB2_10
.LBB2_35:                               //    in Loop: Header=BB2_10 Depth=2
	addi x14 ,  x0 ,  32
	addi x15 ,  x22 ,  1
	or x27 ,  x27 ,  x14
	jal x0, .LBB2_10
.LBB2_36:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	lw x14 ,  72 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  72 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	blt x14, x13, .LBB2_38
.LBB2_37:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	addi x14 ,  x0 ,  -1
	add x13 ,  x0 ,  x14
.LBB2_38:                               //  %if.then34
                                        //    in Loop: Header=BB2_10 Depth=2
	sw x13 ,  20 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB2_10
.LBB2_39:                               //  %sw.bb80
                                        //    in Loop: Header=BB2_4 Depth=1
	ori x27 ,  x27 ,  16
.LBB2_40:                               //  %sw.bb82
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  32
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB2_44
.LBB2_41:                               //  %cond.false86
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x27 ,  16
	bltu x0, x15, .LBB2_79
.LBB2_42:                               //  %cond.false91
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	andi x15 ,  x27 ,  64
	beq x0, x15, .LBB2_80
.LBB2_43:                               //  %cond.true94
                                        //    in Loop: Header=BB2_4 Depth=1
	slli x15 ,  x26 ,  16&31
	srai x26 ,  x15 ,  16&31
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	bge x27, x0, .LBB2_45
	jal x0, .LBB2_81
.LBB2_44:                               //  %cond.true84
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	blt x27, x0, .LBB2_81
.LBB2_45:                               //    in Loop: Header=BB2_4 Depth=1
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_46:                               //  %sw.bb143
                                        //    in Loop: Header=BB2_4 Depth=1
	ori x27 ,  x27 ,  16
.LBB2_47:                               //  %sw.bb145
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x27 ,  32
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB2_75
.LBB2_48:                               //  %cond.false150
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  16
	bltu x0, x15, .LBB2_84
.LBB2_49:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	andi x14 ,  x27 ,  64
	lw x26 ,  0 ( x15 )
	lui x15 ,  (65535>>12)&1048575
	or x15 ,  x15 ,  x30
	beq x14, x18, .LBB2_85
.LBB2_50:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	and x26 ,  x15 ,  x26
	jal x0, .LBB2_85
.LBB2_51:                               //  %sw.bb213
                                        //    in Loop: Header=BB2_4 Depth=1
	ori x27 ,  x27 ,  16
.LBB2_52:                               //  %sw.bb215
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x27 ,  32
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB2_76
.LBB2_53:                               //  %cond.false220
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  16
	bltu x0, x15, .LBB2_86
.LBB2_54:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	andi x14 ,  x27 ,  64
	lw x26 ,  0 ( x15 )
	lui x15 ,  (65535>>12)&1048575
	or x15 ,  x15 ,  x30
	beq x14, x18, .LBB2_87
.LBB2_55:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	and x26 ,  x15 ,  x26
	jal x0, .LBB2_87
.LBB2_56:                               //  %hex.loopexit
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x24 ,  x15 ,  x30
	addi x15 ,  x0 ,  88
	andi x14 ,  x27 ,  32
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB2_72
.LBB2_57:                               //  %cond.true254
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x14 ,  72 ( x2 )
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x13 ,  x14 ,  4
	sw x13 ,  72 ( x2 )
	addi x13 ,  x14 ,  8
	lw x26 ,  0 ( x14 )
	sw x13 ,  72 ( x2 )
	lw x27 ,  4 ( x14 )
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  1
	beq x0, x14, .LBB2_91
.LBB2_58:                               //  %cond.end284
                                        //    in Loop: Header=BB2_4 Depth=1
	or x14 ,  x27 ,  x26
	beq x0, x14, .LBB2_91
.LBB2_59:                               //  %if.then290
                                        //    in Loop: Header=BB2_4 Depth=1
	sb x15 ,  30 ( x2 )
	addi x15 ,  x0 ,  48
	sb x15 ,  29 ( x2 )
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  2
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x0 ,  2
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_60:                               //  %sw.bb77
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x15 ,  31 ( x2 )
	jal x0, .LBB2_78
.LBB2_61:                               //  %sw.bb121
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  32
	bltu x0, x15, .LBB2_88
.LBB2_62:                               //  %if.else127
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  16
	bltu x0, x15, .LBB2_64
.LBB2_63:                               //  %if.else132
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x15 ,  x27 ,  64
	bltu x0, x15, .LBB2_176
.LBB2_64:                               //  %if.then130
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x25 ,  0 ( x15 )
	add x21 ,  x0 ,  x22
	lbu x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_2
	jal x0, .LBB2_4
.LBB2_65:                               //  %sw.bb180
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lui x30 ,  .str&4095
	ori x27 ,  x27 ,  2
	srli x30 ,  x30 ,  12&31
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
	addi x15 ,  x0 ,  48
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	sb x24 ,  30 ( x2 )
	add x27 ,  x0 ,  x18
	sb x15 ,  29 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	or x24 ,  x15 ,  x30
	addi x15 ,  x0 ,  2
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_66:                               //  %sw.bb185
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x25 ,  0 ( x15 )
	sb x0 ,  71 ( x2 )
	beq x0, x25, .LBB2_121
.LBB2_67:                               //  %if.else196
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	blt x26, x0, .LBB2_175
.LBB2_68:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x26
	call memchr
	beq x10, x18, .LBB2_70
.LBB2_69:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x26 ,  x10 ,  x25
.LBB2_70:                               //  %if.then199
                                        //    in Loop: Header=BB2_4 Depth=1
	add x20 ,  x0 ,  x18
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	bge x26, x20, .LBB2_127
	jal x0, .LBB2_128
.LBB2_71:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x24
	add x24 ,  x0 ,  x14
	andi x14 ,  x27 ,  32
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x14, .LBB2_57
.LBB2_72:                               //  %cond.false256
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x14 ,  x27 ,  16
	bltu x0, x14, .LBB2_89
.LBB2_73:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x14 ,  72 ( x2 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	addi x13 ,  x14 ,  4
	sw x13 ,  72 ( x2 )
	andi x13 ,  x27 ,  64
	lw x26 ,  0 ( x14 )
	lui x14 ,  (65535>>12)&1048575
	or x14 ,  x14 ,  x30
	beq x13, x18, .LBB2_90
.LBB2_74:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	and x26 ,  x14 ,  x26
	jal x0, .LBB2_90
.LBB2_75:                               //  %cond.true148
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	add x15 ,  x0 ,  x18
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_76:                               //  %cond.true218
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	addi x14 ,  x15 ,  8
	lw x26 ,  0 ( x15 )
	sw x14 ,  72 ( x2 )
	lw x27 ,  4 ( x15 )
	slti x15 ,  x0 ,  1
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_77:                               //  %if.end371
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	sb x21 ,  31 ( x2 )
.LBB2_78:                               //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	slti x26 ,  x0 ,  1
	add x20 ,  x0 ,  x18
	addi x25 ,  x2 ,  31
	sb x0 ,  71 ( x2 )
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	bge x26, x20, .LBB2_127
	jal x0, .LBB2_128
.LBB2_79:                               //  %cond.true89
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB2_80:                               //  %cond.end111
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	srai x27 ,  x26 ,  31&31
	bge x27, x0, .LBB2_45
.LBB2_81:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x0 ,  -1
	bge x15, x20, .LBB2_83
.LBB2_82:                               //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -129
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
.LBB2_83:                               //  %if.then307.thread
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x0 ,  45
	sb x15 ,  71 ( x2 )
	sltu x15 ,  x0 ,  x26
	sub x26 ,  x0 ,  x26
	add x15 ,  x15 ,  x27
	sub x27 ,  x0 ,  x15
	jal x0, .LBB2_103
.LBB2_84:                               //  %cond.true153
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB2_85:                               //  %cond.false155
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x18
	add x15 ,  x0 ,  x18
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_86:                               //  %cond.true223
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x26 ,  0 ( x15 )
.LBB2_87:                               //  %cond.false225
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	add x27 ,  x0 ,  x18
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x20, .LBB2_92
	jal x0, .LBB2_93
.LBB2_88:                               //  %if.then124
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	srai x14 ,  x25 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x25 ,  0 ( x15 )
	add x21 ,  x0 ,  x22
	lbu x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_2
	jal x0, .LBB2_4
.LBB2_89:                               //  %cond.true259
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x14 ,  72 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  72 ( x2 )
	lw x26 ,  0 ( x14 )
.LBB2_90:                               //  %cond.false261
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x18
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  1
	bltu x0, x14, .LBB2_58
.LBB2_91:                               //  %nosign
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x0 ,  2
	sb x0 ,  71 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x20, .LBB2_93
.LBB2_92:                               //    in Loop: Header=BB2_4 Depth=1
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  -129
	sw x14 ,  24 ( x2 )             //  4-byte Folded Spill
.LBB2_93:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x0, x20, .LBB2_98
.LBB2_94:                               //  %number
                                        //    in Loop: Header=BB2_4 Depth=1
	or x14 ,  x27 ,  x26
	bltu x0, x14, .LBB2_98
.LBB2_95:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB2_113
.LBB2_96:                               //  %if.else352
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x27 ,  1
	beq x0, x15, .LBB2_114
.LBB2_97:                               //  %if.then358
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x0 ,  48
	addi x25 ,  x2 ,  70
	sb x15 ,  70 ( x2 )
	jal x0, .LBB2_126
.LBB2_98:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x15, .LBB2_115
.LBB2_99:                               //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB2_103
.LBB2_100:                              //  %if.then307
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB2_120
.LBB2_101:                              //  %do.body343
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x15 ,  x26 ,  15
	slli x14 ,  x27 ,  28&31
	srli x27 ,  x27 ,  4&31
	add x15 ,  x15 ,  x24
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x25 )
	srli x15 ,  x26 ,  4&31
	addi x25 ,  x25 ,  -1
	or x26 ,  x14 ,  x15
	or x15 ,  x27 ,  x26
	bltu x0, x15, .LBB2_101
.LBB2_102:                              //    in Loop: Header=BB2_4 Depth=1
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_126
.LBB2_103:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x27, x18, .LBB2_110
.LBB2_104:                              //  %sw.bb326
                                        //    in Loop: Header=BB2_4 Depth=1
	add x15 ,  x0 ,  x18
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB2_111
.LBB2_105:                              //    in Loop: Header=BB2_4 Depth=1
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB2_108
.LBB2_106:                              //  %do.body334
                                        //    in Loop: Header=BB2_108 Depth=2
	sltu x15 ,  x0 ,  x27
.LBB2_107:                              //  %do.body334
                                        //    in Loop: Header=BB2_108 Depth=2
	sub x14 ,  x26 ,  x10
	add x26 ,  x0 ,  x20
	add x27 ,  x0 ,  x21
	ori x14 ,  x14 ,  48
	sb x14 ,  -1 ( x25 )
	addi x25 ,  x25 ,  -1
	beq x0, x15, .LBB2_112
.LBB2_108:                              //  %do.body334
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	call __muldi3
	bne x27, x18, .LBB2_106
.LBB2_109:                              //    in Loop: Header=BB2_108 Depth=2
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x26
	jal x0, .LBB2_107
.LBB2_110:                              //    in Loop: Header=BB2_4 Depth=1
	sltiu x15 ,  x26 ,  10
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB2_105
.LBB2_111:                              //  %if.then329
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x26 ,  48
	addi x25 ,  x2 ,  70
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  70 ( x2 )
	jal x0, .LBB2_126
.LBB2_112:                              //    in Loop: Header=BB2_4 Depth=1
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_126
.LBB2_113:                              //    in Loop: Header=BB2_4 Depth=1
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_126
.LBB2_114:                              //    in Loop: Header=BB2_4 Depth=1
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB2_126
.LBB2_115:                              //  %do.body309.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	addi x25 ,  x2 ,  70
.LBB2_116:                              //  %do.body309
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	slli x14 ,  x27 ,  29&31
	srli x15 ,  x26 ,  3&31
	srli x27 ,  x27 ,  3&31
	or x14 ,  x14 ,  x15
	andi x15 ,  x26 ,  7
	ori x15 ,  x15 ,  48
	or x13 ,  x27 ,  x14
	add x26 ,  x0 ,  x14
	sb x15 ,  0 ( x25 )
	addi x25 ,  x25 ,  -1
	bltu x0, x13, .LBB2_116
.LBB2_117:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x25 ,  1
	andi x13 ,  x27 ,  1
	beq x0, x13, .LBB2_125
.LBB2_118:                              //  %do.end316
                                        //    in Loop: Header=BB2_4 Depth=1
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB2_125
.LBB2_119:                              //  %if.then323
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x25 )
	jal x0, .LBB2_126
.LBB2_120:                              //  %sw.default
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x10 ,  x0 ,  x25
	call strlen
	add x26 ,  x0 ,  x10
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	bge x26, x20, .LBB2_127
	jal x0, .LBB2_128
.LBB2_125:                              //    in Loop: Header=BB2_4 Depth=1
	add x25 ,  x0 ,  x14
.LBB2_126:                              //  %if.end361
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	sub x26 ,  x15 ,  x25
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	blt x26, x20, .LBB2_128
.LBB2_127:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	add x14 ,  x0 ,  x26
.LBB2_128:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	lbu x15 ,  71 ( x2 )
	andi x21 ,  x27 ,  2
	sw x24 ,  8 ( x2 )              //  4-byte Folded Spill
	sltu x13 ,  x0 ,  x15
	add x13 ,  x13 ,  x14
	srli x14 ,  x21 ,  1&31
	beq x0, x14, .LBB2_130
.LBB2_129:                              //    in Loop: Header=BB2_4 Depth=1
	addi x13 ,  x13 ,  2
.LBB2_130:                              //  %sw.epilog374
                                        //    in Loop: Header=BB2_4 Depth=1
	andi x24 ,  x27 ,  132
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x13 ,  16 ( x2 )             //  4-byte Folded Spill
	bltu x0, x24, .LBB2_136
.LBB2_131:                              //  %if.then392
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x20 ,  x23 ,  x13
	bge x0, x20, .LBB2_136
.LBB2_132:                              //  %while.cond397.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	slti x15 ,  x20 ,  17
	lw x27 ,  8 ( x9 )
	beq x0, x15, .LBB2_172
.LBB2_133:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x20, x27, .LBB2_135
.LBB2_134:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	add x20 ,  x0 ,  x27
.LBB2_135:                              //  %while.end407
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x20
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x20 ,  x15
	sw x15 ,  0 ( x9 )
	lbu x15 ,  71 ( x2 )
.LBB2_136:                              //  %if.end414
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x15, .LBB2_138
.LBB2_137:                              //  %if.then416
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  8 ( x9 )
	addi x11 ,  x2 ,  71
	lw x10 ,  0 ( x9 )
	sltu x20 ,  x0 ,  x15
	add x12 ,  x0 ,  x20
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x20
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x20 ,  x15
	sw x15 ,  0 ( x9 )
.LBB2_138:                              //  %if.end422
                                        //    in Loop: Header=BB2_4 Depth=1
	beq x0, x21, .LBB2_142
.LBB2_139:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  8 ( x9 )
	addi x15 ,  x0 ,  2
	bltu x20, x15, .LBB2_141
.LBB2_140:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x20 ,  x0 ,  2
.LBB2_141:                              //  %if.then425
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	addi x11 ,  x2 ,  29
	add x12 ,  x0 ,  x20
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x20
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x20 ,  x15
	sw x15 ,  0 ( x9 )
.LBB2_142:                              //  %if.end432
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x24 ,  128
	lui x21 ,  (_svfiprintf_r.zeroes>>12)&1048575
	bltu x0, x15, .LBB2_148
.LBB2_143:                              //  %if.then436
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x27 ,  x23 ,  x20
	bge x0, x27, .LBB2_148
.LBB2_144:                              //  %while.cond441.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	slti x15 ,  x27 ,  17
	lw x20 ,  8 ( x9 )
	beq x0, x15, .LBB2_166
.LBB2_145:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x27, x20, .LBB2_147
.LBB2_146:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	add x27 ,  x0 ,  x20
.LBB2_147:                              //  %while.end451
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  _svfiprintf_r.zeroes&4095
	add x12 ,  x0 ,  x27
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	call memmove
	lw x15 ,  8 ( x9 )
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x15 ,  x27
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x27 ,  x15
	sw x15 ,  0 ( x9 )
.LBB2_148:                              //  %if.end458
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	sub x24 ,  x15 ,  x26
	bge x0, x24, .LBB2_174
.LBB2_149:                              //  %while.cond463.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	slti x15 ,  x24 ,  17
	lw x20 ,  8 ( x9 )
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB2_163
.LBB2_150:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x24, x20, .LBB2_152
.LBB2_151:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	add x24 ,  x0 ,  x20
.LBB2_152:                              //  %while.end473
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  _svfiprintf_r.zeroes&4095
	add x12 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	call memmove
	lw x15 ,  0 ( x9 )
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x24 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x15 ,  x15 ,  x24
	sw x15 ,  8 ( x9 )
	bltu x26, x15, .LBB2_154
.LBB2_153:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	add x26 ,  x0 ,  x15
.LBB2_154:                              //  %if.end479
                                        //    in Loop: Header=BB2_4 Depth=1
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	call memmove
	lw x15 ,  0 ( x9 )
	add x10 ,  x26 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x25 ,  x15 ,  x26
	andi x15 ,  x27 ,  4
	lui x26 ,  (JTI2_0>>12)&1048575
	sw x25 ,  8 ( x9 )
	beq x0, x15, .LBB2_160
.LBB2_155:                              //  %if.then487
                                        //    in Loop: Header=BB2_4 Depth=1
	sub x24 ,  x23 ,  x20
	bge x0, x24, .LBB2_160
.LBB2_156:                              //  %while.cond492.preheader
                                        //    in Loop: Header=BB2_4 Depth=1
	slti x15 ,  x24 ,  17
	beq x0, x15, .LBB2_169
.LBB2_157:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	bltu x24, x25, .LBB2_159
.LBB2_158:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	add x24 ,  x0 ,  x25
.LBB2_159:                              //  %while.end502
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	add x12 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x24
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x24 ,  x15
	sw x15 ,  0 ( x9 )
.LBB2_160:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	blt x20, x23, .LBB2_1
.LBB2_161:                              //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	add x23 ,  x0 ,  x20
.LBB2_1:                                //  %if.end520
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x25 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x24 ,  x0 ,  120
	add x25 ,  x25 ,  x23
	add x21 ,  x0 ,  x22
	lbu x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_2
	jal x0, .LBB2_4
.LBB2_162:                              //  %while.body466
                                        //    in Loop: Header=BB2_163 Depth=2
	lui x30 ,  _svfiprintf_r.zeroes&4095
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	call memmove
	lw x15 ,  0 ( x9 )
	addi x24 ,  x24 ,  -16
	add x10 ,  x20 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x20 ,  x15 ,  x20
	sw x20 ,  8 ( x9 )
	bge x8, x24, .LBB2_150
.LBB2_163:                              //  %while.body466
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x20, x8, .LBB2_162
.LBB2_164:                              //  %while.body466
                                        //    in Loop: Header=BB2_163 Depth=2
	add x20 ,  x0 ,  x8
	jal x0, .LBB2_162
.LBB2_165:                              //  %while.body444
                                        //    in Loop: Header=BB2_166 Depth=2
	lui x30 ,  _svfiprintf_r.zeroes&4095
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	call memmove
	lw x15 ,  0 ( x9 )
	addi x27 ,  x27 ,  -16
	add x10 ,  x20 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x20 ,  x15 ,  x20
	sw x20 ,  8 ( x9 )
	bge x8, x27, .LBB2_145
.LBB2_166:                              //  %while.body444
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x20, x8, .LBB2_165
.LBB2_167:                              //  %while.body444
                                        //    in Loop: Header=BB2_166 Depth=2
	add x20 ,  x0 ,  x8
	jal x0, .LBB2_165
.LBB2_168:                              //  %while.body495
                                        //    in Loop: Header=BB2_169 Depth=2
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	add x12 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call memmove
	lw x15 ,  0 ( x9 )
	addi x24 ,  x24 ,  -16
	add x10 ,  x25 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x25 ,  x15 ,  x25
	sw x25 ,  8 ( x9 )
	bge x8, x24, .LBB2_157
.LBB2_169:                              //  %while.body495
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x25, x8, .LBB2_168
.LBB2_170:                              //  %while.body495
                                        //    in Loop: Header=BB2_169 Depth=2
	add x25 ,  x0 ,  x8
	jal x0, .LBB2_168
.LBB2_171:                              //  %while.body400
                                        //    in Loop: Header=BB2_172 Depth=2
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	add x12 ,  x0 ,  x27
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call memmove
	lw x15 ,  0 ( x9 )
	addi x20 ,  x20 ,  -16
	add x10 ,  x27 ,  x15
	lw x15 ,  8 ( x9 )
	sw x10 ,  0 ( x9 )
	sub x27 ,  x15 ,  x27
	sw x27 ,  8 ( x9 )
	bge x8, x20, .LBB2_133
.LBB2_172:                              //  %while.body400
                                        //    Parent Loop BB2_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x27, x8, .LBB2_171
.LBB2_173:                              //  %while.body400
                                        //    in Loop: Header=BB2_172 Depth=2
	add x27 ,  x0 ,  x8
	jal x0, .LBB2_171
.LBB2_174:                              //  %if.end458.if.end479_crit_edge
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x10 ,  0 ( x9 )
	lw x15 ,  8 ( x9 )
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	bgeu x26, x15, .LBB2_153
	jal x0, .LBB2_154
.LBB2_121:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	bltu x26, x15, .LBB2_123
.LBB2_122:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	addi x26 ,  x0 ,  6
.LBB2_123:                              //  %if.then189
                                        //    in Loop: Header=BB2_4 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x20 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	bge x26, x20, .LBB2_127
	jal x0, .LBB2_128
.LBB2_175:                              //  %if.else209
                                        //    in Loop: Header=BB2_4 Depth=1
	add x10 ,  x0 ,  x25
	call strlen
	add x26 ,  x0 ,  x10
	add x20 ,  x0 ,  x18
	add x14 ,  x0 ,  x20
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	bge x26, x20, .LBB2_127
	jal x0, .LBB2_128
.LBB2_176:                              //  %if.then135
                                        //    in Loop: Header=BB2_4 Depth=1
	lw x15 ,  72 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  72 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x25 ,  0 ( x15 )
	add x21 ,  x0 ,  x22
	lbu x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_2
	jal x0, .LBB2_4
.LBB2_177:                              //  %error
	lhu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB2_179
.LBB2_178:                              //  %error
	addi x25 ,  x0 ,  -1
.LBB2_179:                              //  %error
	add x10 ,  x0 ,  x25
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_svfiprintf_r, .Lfunc_end2-_svfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_177
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_22
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_24
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_25
	.long	.LBB2_28
	.long	.LBB2_77
	.long	.LBB2_27
	.long	.LBB2_16
	.long	.LBB2_77
	.long	.LBB2_30
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_39
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_46
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_51
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_56
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_60
	.long	.LBB2_40
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_31
	.long	.LBB2_40
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_32
	.long	.LBB2_77
	.long	.LBB2_61
	.long	.LBB2_47
	.long	.LBB2_65
	.long	.LBB2_34
	.long	.LBB2_77
	.long	.LBB2_66
	.long	.LBB2_77
	.long	.LBB2_52
	.long	.LBB2_77
	.long	.LBB2_77
	.long	.LBB2_71
                                        //  -- End function
	.address_space	0
	.type	_svfiprintf_r.blanks,@object //  @_svfiprintf_r.blanks
_svfiprintf_r.blanks:
	.zero	16,32
	.size	_svfiprintf_r.blanks, 16

	.address_space	0
	.type	_svfiprintf_r.zeroes,@object //  @_svfiprintf_r.zeroes
_svfiprintf_r.zeroes:
	.zero	16,48
	.size	_svfiprintf_r.zeroes, 16

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"0123456789abcdef"
	.size	.str, 17

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"(null)"
	.size	.str.1, 7

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"0123456789ABCDEF"
	.size	.str.2, 17

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	.str.3, 26


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
