	.text
	.file	"memmem.c"
	.globl	memmem                  //  -- Begin function memmem
	.type	memmem,@function
memmem:                                 //  @memmem
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -312
	.cfi_adjust_cfa_offset 312
	sw x9 ,  304 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  292 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  260 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	add x20 ,  x0 ,  x13
	add x12 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  308 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  300 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  296 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  288 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  284 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  280 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  276 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  272 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  268 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  264 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x20, .LBB0_27
.LBB0_1:                                //  %entry
	xori x15 ,  x20 ,  1
	bltu x0, x15, .LBB0_4
.LBB0_2:                                //  %if.then2
	lbu x11 ,  0 ( x8 )
	add x10 ,  x0 ,  x9
	call memchr
.LBB0_3:                                //  %cleanup133
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_27
.LBB0_4:                                //  %if.end3
	bltu x12, x20, .LBB0_5
.LBB0_6:                                //  %if.end7
	sub x13 ,  x12 ,  x20
	xori x15 ,  x20 ,  2
	add x22 ,  x13 ,  x9
	bltu x0, x15, .LBB0_15
.LBB0_7:                                //  %if.then11
	lbu x14 ,  0 ( x9 )
	lbu x15 ,  1 ( x9 )
	lbu x12 ,  0 ( x8 )
	slli x14 ,  x14 ,  16&31
	or x15 ,  x15 ,  x14
	lbu x14 ,  1 ( x8 )
	slli x12 ,  x12 ,  16&31
	or x14 ,  x14 ,  x12
	beq x15, x14, .LBB0_13
.LBB0_8:                                //  %if.then11
	bge x0, x13, .LBB0_13
.LBB0_9:                                //  %for.body.preheader
	addi x13 ,  x9 ,  2
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x0 ,  x13
	slli x15 ,  x15 ,  16&31
	lbu x13 ,  0 ( x12 )
	or x15 ,  x13 ,  x15
	addi x13 ,  x12 ,  1
	beq x15, x14, .LBB0_12
.LBB0_11:                               //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=1
	bgeu x22, x12, .LBB0_10
.LBB0_12:                               //  %for.end.loopexit
	addi x9 ,  x13 ,  -2
.LBB0_13:                               //  %for.end
	beq x15, x14, .LBB0_27
.LBB0_5:
	add x9 ,  x0 ,  x0
.LBB0_27:                               //  %cleanup133
	add x10 ,  x0 ,  x9
	lw x8 ,  260 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  264 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  268 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  272 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  276 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  280 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  284 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  288 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  292 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  296 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  300 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  304 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  308 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  312
	.cfi_def_cfa 2, 0
	ret
.LBB0_15:                               //  %if.end33
	sltiu x15 ,  x20 ,  257
	beq x0, x15, .LBB0_40
.LBB0_16:                               //  %for.body43.preheader
	addi x18 ,  x2 ,  4
	add x21 ,  x0 ,  x0
	addi x12 ,  x0 ,  256
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call memset
	addi x15 ,  x20 ,  -2
	addi x19 ,  x20 ,  -1
.LBB0_17:                               //  %for.body43
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x21 ,  x8
	addi x21 ,  x21 ,  1
	lb x13 ,  1 ( x14 )
	lb x14 ,  0 ( x14 )
	slli x14 ,  x14 ,  3&31
	sub x14 ,  x13 ,  x14
	andi x14 ,  x14 ,  255
	add x14 ,  x14 ,  x18
	sb x21 ,  0 ( x14 )
	bne x15, x21, .LBB0_17
.LBB0_18:                               //  %for.end54
	add x15 ,  x19 ,  x8
	lb x14 ,  0 ( x15 )
	lb x15 ,  -1 ( x15 )
	slli x15 ,  x15 ,  3&31
	sub x15 ,  x14 ,  x15
	andi x15 ,  x15 ,  255
	add x14 ,  x15 ,  x18
	lbu x15 ,  0 ( x14 )
	sb x19 ,  0 ( x14 )
	sltiu x14 ,  x19 ,  16
	beq x0, x14, .LBB0_28
.LBB0_19:                               //  %for.cond78.us.preheader
	addi x23 ,  x20 ,  -1
	sub x21 ,  x19 ,  x15
	add x20 ,  x0 ,  x0
.LBB0_20:                               //  %for.cond78.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_21 Depth 2
	add x24 ,  x0 ,  x9
	bltu x22, x9, .LBB0_26
.LBB0_21:                               //  %do.body.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x23 ,  x24
	add x24 ,  x19 ,  x24
	lb x14 ,  -1 ( x15 )
	lb x13 ,  0 ( x15 )
	slli x14 ,  x14 ,  3&31
	sub x14 ,  x13 ,  x14
	andi x14 ,  x14 ,  255
	add x14 ,  x14 ,  x18
	lbu x25 ,  0 ( x14 )
	bltu x22, x15, .LBB0_23
.LBB0_22:                               //  %do.body.us
                                        //    in Loop: Header=BB0_21 Depth=2
	beq x0, x25, .LBB0_21
.LBB0_23:                               //  %do.end.us
                                        //    in Loop: Header=BB0_21 Depth=2
	sub x9 ,  x24 ,  x25
	bltu x25, x19, .LBB0_20
.LBB0_24:                               //  %if.then111.us
                                        //    in Loop: Header=BB0_21 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call memcmp
	beq x0, x10, .LBB0_27
.LBB0_25:                               //  %if.end116.us
                                        //    in Loop: Header=BB0_21 Depth=2
	sub x15 ,  x0 ,  x25
	add x14 ,  x21 ,  x24
	add x9 ,  x15 ,  x14
	add x24 ,  x0 ,  x9
	bgeu x22, x9, .LBB0_21
.LBB0_26:
	add x9 ,  x0 ,  x20
	jal x0, .LBB0_27
.LBB0_28:                               //  %for.cond78.outer.preheader
	add x10 ,  x0 ,  x0
	sub x24 ,  x20 ,  x15
	addi x25 ,  x20 ,  -1
	addi x12 ,  x0 ,  4
	add x27 ,  x0 ,  x10
	bgeu x22, x9, .LBB0_31
	jal x0, .LBB0_3
.LBB0_29:                               //  %do.end
                                        //    in Loop: Header=BB0_31 Depth=1
	sub x23 ,  x26 ,  x21
	addi x9 ,  x23 ,  1
	bgeu x21, x19, .LBB0_34
.LBB0_30:                               //  %for.cond78
                                        //    in Loop: Header=BB0_31 Depth=1
	bltu x22, x9, .LBB0_3
.LBB0_31:                               //  %do.body.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_32 Depth 2
	addi x26 ,  x9 ,  -1
.LBB0_32:                               //  %do.body
                                        //    Parent Loop BB0_31 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x20 ,  x26
	add x26 ,  x25 ,  x26
	lb x14 ,  -1 ( x15 )
	lb x13 ,  0 ( x15 )
	slli x14 ,  x14 ,  3&31
	sub x14 ,  x13 ,  x14
	andi x14 ,  x14 ,  255
	add x14 ,  x14 ,  x18
	lbu x21 ,  0 ( x14 )
	bltu x22, x15, .LBB0_29
.LBB0_33:                               //  %do.body
                                        //    in Loop: Header=BB0_32 Depth=2
	beq x0, x21, .LBB0_32
	jal x0, .LBB0_29
.LBB0_34:                               //  %lor.lhs.false
                                        //    in Loop: Header=BB0_31 Depth=1
	sub x15 ,  x27 ,  x21
	add x11 ,  x27 ,  x8
	add x15 ,  x15 ,  x26
	addi x10 ,  x15 ,  1
	call memcmp
	bltu x0, x10, .LBB0_39
.LBB0_35:                               //  %if.then111
                                        //    in Loop: Header=BB0_31 Depth=1
	addi x9 ,  x23 ,  1
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x10 ,  x0 ,  x9
	call memcmp
	beq x0, x10, .LBB0_27
.LBB0_36:                               //  %if.end116
                                        //    in Loop: Header=BB0_31 Depth=1
	addi x15 ,  x0 ,  3
	bltu x15, x27, .LBB0_38
.LBB0_37:                               //  %if.end116
                                        //    in Loop: Header=BB0_31 Depth=1
	add x27 ,  x0 ,  x19
.LBB0_38:                               //  %if.end116
                                        //    in Loop: Header=BB0_31 Depth=1
	addi x27 ,  x27 ,  -4
.LBB0_39:                               //  %if.end124
                                        //    in Loop: Header=BB0_31 Depth=1
	add x12 ,  x0 ,  x0
	add x15 ,  x24 ,  x26
	add x10 ,  x0 ,  x12
	addi x12 ,  x0 ,  4
	sub x9 ,  x15 ,  x21
	bgeu x22, x9, .LBB0_31
	jal x0, .LBB0_3
.LBB0_40:                               //  %if.then36
	add x11 ,  x0 ,  x12
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	call two_way_long_needle
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	memmem, .Lfunc_end0-memmem
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1064
	.cfi_adjust_cfa_offset 1064
	sw x19 ,  1048 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x13
	sw x9 ,  1056 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  1044 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  1032 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  1060 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1052 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  1040 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  1036 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sltiu x15 ,  x19 ,  2
	bltu x0, x15, .LBB1_1
.LBB1_2:                                //  %while.body.i.preheader
	slti x14 ,  x0 ,  1
	addi x15 ,  x0 ,  -1
	add x13 ,  x0 ,  x0
	add x12 ,  x0 ,  x14
	add x21 ,  x0 ,  x14
	add x11 ,  x0 ,  x14
	jal x0, .LBB1_3
.LBB1_4:                                //  %if.then.i
                                        //    in Loop: Header=BB1_3 Depth=1
	sub x21 ,  x11 ,  x15
	add x13 ,  x0 ,  x11
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bgeu x11, x19, .LBB1_12
.LBB1_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x12 ,  x15
	add x5 ,  x11 ,  x9
	add x10 ,  x10 ,  x9
	lbu x5 ,  0 ( x5 )
	lbu x10 ,  0 ( x10 )
	bltu x5, x10, .LBB1_4
.LBB1_5:                                //  %if.else.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x5, x10, .LBB1_9
.LBB1_6:                                //  %if.then12.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x12, x21, .LBB1_7
.LBB1_8:                                //  %if.else16.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13 ,  x21 ,  x13
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bltu x11, x19, .LBB1_3
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.else18.i
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x12 ,  x13 ,  1
	add x21 ,  x0 ,  x14
	add x15 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bltu x11, x19, .LBB1_3
	jal x0, .LBB1_12
.LBB1_7:                                //  %if.then15.i
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x12 ,  x12 ,  1
	add x11 ,  x13 ,  x12
	bltu x11, x19, .LBB1_3
.LBB1_12:                               //  %while.body26.i.preheader
	slti x12 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x12
	add x13 ,  x0 ,  x12
	add x5 ,  x0 ,  x12
	jal x0, .LBB1_13
.LBB1_14:                               //  %if.then35.i
                                        //    in Loop: Header=BB1_13 Depth=1
	sub x13 ,  x5 ,  x14
	add x11 ,  x0 ,  x5
	add x10 ,  x0 ,  x12
	add x5 ,  x11 ,  x10
	bgeu x5, x19, .LBB1_22
.LBB1_13:                               //  %while.body26.i
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x10 ,  x14
	add x7 ,  x5 ,  x9
	add x6 ,  x6 ,  x9
	lbu x7 ,  0 ( x7 )
	lbu x6 ,  0 ( x6 )
	bltu x6, x7, .LBB1_14
.LBB1_15:                               //  %if.else38.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x7, x6, .LBB1_19
.LBB1_16:                               //  %if.then43.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x10, x13, .LBB1_17
.LBB1_18:                               //  %if.else48.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x11 ,  x13 ,  x11
	add x10 ,  x0 ,  x12
	add x5 ,  x11 ,  x10
	bltu x5, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_19:                               //  %if.else51.i
                                        //    in Loop: Header=BB1_13 Depth=1
	addi x10 ,  x11 ,  1
	add x13 ,  x0 ,  x12
	add x14 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x12
	add x5 ,  x11 ,  x10
	bltu x5, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_17:                               //  %if.then46.i
                                        //    in Loop: Header=BB1_13 Depth=1
	addi x10 ,  x10 ,  1
	add x5 ,  x11 ,  x10
	bltu x5, x19, .LBB1_13
	jal x0, .LBB1_22
.LBB1_1:
	addi x15 ,  x0 ,  -1
	slti x21 ,  x0 ,  1
	add x14 ,  x0 ,  x15
	add x13 ,  x0 ,  x21
.LBB1_22:                               //  %while.end55.i
	addi x18 ,  x15 ,  1
	addi x15 ,  x14 ,  1
	bltu x15, x18, .LBB1_24
.LBB1_23:                               //  %while.end55.i
	add x21 ,  x0 ,  x13
.LBB1_24:                               //  %while.end55.i
	add x14 ,  x0 ,  x0
	addi x22 ,  x2 ,  8
.LBB1_25:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x14 ,  x22
	addi x14 ,  x14 ,  4
	sw x19 ,  0 ( x13 )
	xori x13 ,  x14 ,  1024
	bltu x0, x13, .LBB1_25
.LBB1_26:                               //  %for.cond1.preheader
	bltu x15, x18, .LBB1_28
.LBB1_27:                               //  %for.cond1.preheader
	add x18 ,  x0 ,  x15
.LBB1_28:                               //  %for.cond1.preheader
	beq x0, x19, .LBB1_31
.LBB1_29:                               //  %for.body3.preheader
	addi x15 ,  x19 ,  -1
	add x14 ,  x0 ,  x9
.LBB1_30:                               //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  1
	slli x13 ,  x13 ,  2&31
	add x13 ,  x13 ,  x22
	sw x15 ,  0 ( x13 )
	addi x15 ,  x15 ,  -1
	xori x13 ,  x15 ,  -1
	bltu x0, x13, .LBB1_30
.LBB1_31:                               //  %for.end9
	add x11 ,  x21 ,  x9
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call memcmp
	beq x0, x10, .LBB1_32
.LBB1_51:                               //  %if.else72
	sub x15 ,  x19 ,  x18
	bltu x18, x15, .LBB1_53
.LBB1_52:                               //  %if.else72
	add x15 ,  x0 ,  x18
.LBB1_53:                               //  %if.else72
	sub x14 ,  x20 ,  x19
	add x10 ,  x0 ,  x0
	addi x13 ,  x19 ,  -1
	bgeu x18, x13, .LBB1_54
.LBB1_60:                               //  %while.body87.us.preheader
	add x11 ,  x18 ,  x9
	addi x5 ,  x9 ,  -1
	addi x6 ,  x8 ,  -1
	add x12 ,  x0 ,  x10
	jal x0, .LBB1_61
.LBB1_70:                               //  %if.then95.us
                                        //    in Loop: Header=BB1_61 Depth=1
	add x12 ,  x12 ,  x7
	bltu x14, x12, .LBB1_75
.LBB1_61:                               //  %while.body87.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_63 Depth 2
                                        //      Child Loop BB1_66 Depth 2
	add x7 ,  x12 ,  x13
	add x7 ,  x7 ,  x8
	lbu x7 ,  0 ( x7 )
	slli x7 ,  x7 ,  2&31
	add x7 ,  x7 ,  x22
	lw x7 ,  0 ( x7 )
	bltu x0, x7, .LBB1_70
.LBB1_62:                               //  %land.rhs102.us.preheader
                                        //    in Loop: Header=BB1_61 Depth=1
	add x7 ,  x12 ,  x8
	add x16 ,  x18 ,  x7
	add x7 ,  x0 ,  x10
.LBB1_63:                               //  %land.rhs102.us
                                        //    Parent Loop BB1_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x17 ,  x7 ,  x11
	add x29 ,  x7 ,  x16
	lbu x29 ,  0 ( x29 )
	lbu x17 ,  0 ( x17 )
	bne x17, x29, .LBB1_69
.LBB1_64:                               //  %while.body111.us
                                        //    in Loop: Header=BB1_63 Depth=2
	addi x7 ,  x7 ,  1
	add x17 ,  x7 ,  x18
	bltu x17, x13, .LBB1_63
.LBB1_65:                               //  %while.cond119.us.preheader
                                        //    in Loop: Header=BB1_61 Depth=1
	add x7 ,  x12 ,  x6
	add x16 ,  x0 ,  x18
.LBB1_66:                               //  %while.cond119.us
                                        //    Parent Loop BB1_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x16, .LBB1_74
.LBB1_67:                               //  %land.rhs122.us
                                        //    in Loop: Header=BB1_66 Depth=2
	add x29 ,  x16 ,  x5
	addi x17 ,  x16 ,  -1
	add x16 ,  x16 ,  x7
	lbu x9 ,  0 ( x16 )
	add x16 ,  x0 ,  x17
	lbu x29 ,  0 ( x29 )
	beq x29, x9, .LBB1_66
.LBB1_68:                               //    in Loop: Header=BB1_61 Depth=1
	add x7 ,  x0 ,  x15
.LBB1_69:                               //  %if.end144.us
                                        //    in Loop: Header=BB1_61 Depth=1
	add x12 ,  x7 ,  x12
	addi x12 ,  x12 ,  1
	bgeu x14, x12, .LBB1_61
	jal x0, .LBB1_75
.LBB1_32:                               //  %while.cond.preheader
	slti x15 ,  x0 ,  1
	add x10 ,  x0 ,  x0
	addi x13 ,  x9 ,  -1
	addi x12 ,  x8 ,  -1
	sub x11 ,  x20 ,  x19
	addi x5 ,  x19 ,  -1
	sub x6 ,  x19 ,  x21
	sub x15 ,  x15 ,  x18
	add x14 ,  x0 ,  x10
	add x7 ,  x0 ,  x10
	jal x0, .LBB1_33
.LBB1_76:                               //  %if.else
                                        //    in Loop: Header=BB1_33 Depth=1
	add x16 ,  x16 ,  x15
.LBB1_38:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	add x7 ,  x0 ,  x10
.LBB1_39:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_33 Depth=1
	add x14 ,  x14 ,  x16
	bltu x11, x14, .LBB1_75
.LBB1_33:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_44 Depth 2
                                        //      Child Loop BB1_47 Depth 2
	add x16 ,  x14 ,  x5
	add x16 ,  x16 ,  x8
	lbu x16 ,  0 ( x16 )
	slli x16 ,  x16 ,  2&31
	add x16 ,  x16 ,  x22
	lw x16 ,  0 ( x16 )
	beq x0, x16, .LBB1_40
.LBB1_34:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	add x17 ,  x0 ,  x6
	bltu x16, x21, .LBB1_36
.LBB1_35:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	add x17 ,  x0 ,  x16
.LBB1_36:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	beq x7, x10, .LBB1_38
.LBB1_37:                               //  %if.then19
                                        //    in Loop: Header=BB1_33 Depth=1
	add x16 ,  x0 ,  x17
	jal x0, .LBB1_38
.LBB1_40:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	add x16 ,  x0 ,  x7
	bltu x18, x7, .LBB1_42
.LBB1_41:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	add x16 ,  x0 ,  x18
.LBB1_42:                               //  %if.end24
                                        //    in Loop: Header=BB1_33 Depth=1
	bgeu x16, x5, .LBB1_46
.LBB1_43:                               //  %land.rhs.preheader
                                        //    in Loop: Header=BB1_33 Depth=1
	add x17 ,  x14 ,  x8
.LBB1_44:                               //  %land.rhs
                                        //    Parent Loop BB1_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x29 ,  x16 ,  x9
	add x1 ,  x16 ,  x17
	lbu x1 ,  0 ( x1 )
	lbu x29 ,  0 ( x29 )
	bne x29, x1, .LBB1_76
.LBB1_45:                               //  %while.body35
                                        //    in Loop: Header=BB1_44 Depth=2
	addi x16 ,  x16 ,  1
	bltu x16, x5, .LBB1_44
.LBB1_46:                               //  %while.cond42.preheader
                                        //    in Loop: Header=BB1_33 Depth=1
	add x16 ,  x14 ,  x12
	add x29 ,  x0 ,  x18
.LBB1_47:                               //  %while.cond42
                                        //    Parent Loop BB1_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x17 ,  x0 ,  x29
	bgeu x7, x17, .LBB1_49
.LBB1_48:                               //  %land.rhs46
                                        //    in Loop: Header=BB1_47 Depth=2
	add x1 ,  x17 ,  x13
	add x19 ,  x17 ,  x16
	addi x29 ,  x17 ,  -1
	lbu x19 ,  0 ( x19 )
	lbu x1 ,  0 ( x1 )
	beq x1, x19, .LBB1_47
.LBB1_49:                               //  %while.end56
                                        //    in Loop: Header=BB1_33 Depth=1
	addi x29 ,  x7 ,  1
	add x16 ,  x0 ,  x21
	add x7 ,  x0 ,  x6
	bgeu x17, x29, .LBB1_39
.LBB1_50:                               //  %cleanup
	add x10 ,  x14 ,  x8
	jal x0, .LBB1_75
.LBB1_54:                               //  %while.body87.preheader
	addi x11 ,  x9 ,  -1
	addi x5 ,  x8 ,  -1
	add x12 ,  x0 ,  x10
	jal x0, .LBB1_55
.LBB1_72:                               //  %if.then95
                                        //    in Loop: Header=BB1_55 Depth=1
	add x12 ,  x12 ,  x6
	bltu x14, x12, .LBB1_75
.LBB1_55:                               //  %while.body87
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_57 Depth 2
	add x6 ,  x12 ,  x13
	add x6 ,  x6 ,  x8
	lbu x6 ,  0 ( x6 )
	slli x6 ,  x6 ,  2&31
	add x6 ,  x6 ,  x22
	lw x6 ,  0 ( x6 )
	bltu x0, x6, .LBB1_72
.LBB1_56:                               //  %while.cond119.preheader
                                        //    in Loop: Header=BB1_55 Depth=1
	add x6 ,  x12 ,  x5
	add x7 ,  x0 ,  x18
.LBB1_57:                               //  %while.cond119
                                        //    Parent Loop BB1_55 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x7, .LBB1_74
.LBB1_58:                               //  %land.rhs122
                                        //    in Loop: Header=BB1_57 Depth=2
	add x17 ,  x7 ,  x11
	addi x16 ,  x7 ,  -1
	add x7 ,  x7 ,  x6
	lbu x29 ,  0 ( x7 )
	add x7 ,  x0 ,  x16
	lbu x17 ,  0 ( x17 )
	beq x17, x29, .LBB1_57
.LBB1_59:                               //  %if.end144
                                        //    in Loop: Header=BB1_55 Depth=1
	add x12 ,  x15 ,  x12
	addi x12 ,  x12 ,  1
	bgeu x14, x12, .LBB1_55
	jal x0, .LBB1_75
.LBB1_74:                               //  %cleanup146
	add x10 ,  x12 ,  x8
.LBB1_75:                               //  %cleanup150
	lw x8 ,  1032 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  1036 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1040 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1044 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1048 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1052 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1056 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1060 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1064
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
