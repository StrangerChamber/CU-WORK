	.text
	.file	"strstr.c"
	.globl	strstr                  //  -- Begin function strstr
	.type	strstr,@function
strstr:                                 //  @strstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x8 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	lbu x11 ,  0 ( x18 )
	beq x0, x11, .LBB0_7
.LBB0_1:                                //  %if.end
	lbu x15 ,  1 ( x18 )
	beq x0, x15, .LBB0_8
.LBB0_2:                                //  %if.end9
	lbu x14 ,  2 ( x18 )
	beq x0, x14, .LBB0_10
.LBB0_3:                                //  %if.end16
	lbu x13 ,  3 ( x18 )
	beq x0, x13, .LBB0_15
.LBB0_4:                                //  %if.end23
	lbu x12 ,  4 ( x18 )
	beq x0, x12, .LBB0_23
.LBB0_5:                                //  %if.end30
	add x10 ,  x0 ,  x18
	call strlen
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	ori x11 ,  x19 ,  512
	call strnlen
	add x9 ,  x0 ,  x10
	bltu x9, x19, .LBB0_45
.LBB0_28:                               //  %if.end36
	addi x15 ,  x0 ,  254
	bltu x15, x19, .LBB0_48
.LBB0_29:                               //  %if.then39
	addi x20 ,  x2 ,  4
	addi x11 ,  x19 ,  1
	addi x12 ,  x0 ,  64
	add x10 ,  x0 ,  x20
	call memset
	add x15 ,  x9 ,  x8
	beq x0, x19, .LBB0_32
.LBB0_30:                               //  %for.body.preheader
	add x14 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
.LBB0_31:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x12 ,  0 ( x14 )
	addi x14 ,  x14 ,  1
	andi x12 ,  x12 ,  63
	add x12 ,  x12 ,  x20
	sb x13 ,  0 ( x12 )
	addi x13 ,  x13 ,  -1
	bltu x0, x13, .LBB0_31
.LBB0_32:                               //  %do.body.preheader
	sub x21 ,  x15 ,  x19
	add x9 ,  x0 ,  x0
	lui x22 ,  (2048>>12)&1048575
.LBB0_33:                               //  %do.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_34 Depth 2
	addi x15 ,  x8 ,  -1
	add x14 ,  x19 ,  x15
	lbu x14 ,  0 ( x14 )
	andi x14 ,  x14 ,  63
	add x14 ,  x14 ,  x20
	lbu x14 ,  0 ( x14 )
	add x8 ,  x14 ,  x15
	bltu x21, x8, .LBB0_36
.LBB0_34:                               //  %for.body57
                                        //    Parent Loop BB0_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x19 ,  x8
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	lbu x15 ,  0 ( x15 )
	andi x15 ,  x15 ,  63
	add x15 ,  x15 ,  x20
	lbu x23 ,  0 ( x15 )
	call memcmp
	beq x0, x10, .LBB0_7
.LBB0_35:                               //  %for.inc68
                                        //    in Loop: Header=BB0_34 Depth=2
	add x8 ,  x23 ,  x8
	bgeu x21, x8, .LBB0_34
.LBB0_36:                               //  %for.end70
                                        //    in Loop: Header=BB0_33 Depth=1
	add x10 ,  x19 ,  x21
	lbu x15 ,  0 ( x10 )
	beq x0, x15, .LBB0_47
.LBB0_37:                               //  %do.cond
                                        //    in Loop: Header=BB0_33 Depth=1
	lui x30 ,  2048&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	call strnlen
	add x21 ,  x10 ,  x21
	bgeu x21, x8, .LBB0_33
	jal x0, .LBB0_47
.LBB0_7:
	add x9 ,  x0 ,  x8
	jal x0, .LBB0_47
.LBB0_8:                                //  %if.then6
	add x10 ,  x0 ,  x8
	call strchr
.LBB0_9:                                //  %cleanup88
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_47
.LBB0_10:                               //  %if.then14
	lbu x12 ,  0 ( x8 )
	slli x14 ,  x11 ,  16&31
	add x9 ,  x0 ,  x0
	or x15 ,  x15 ,  x14
	beq x0, x12, .LBB0_20
.LBB0_11:                               //  %if.then14
	beq x0, x15, .LBB0_20
.LBB0_12:                               //  %for.body.i.preheader
	add x14 ,  x0 ,  x0
.LBB0_13:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	andi x13 ,  x12 ,  255
	slli x14 ,  x14 ,  16&31
	or x14 ,  x13 ,  x14
	addi x13 ,  x8 ,  1
	beq x15, x14, .LBB0_21
.LBB0_14:                               //  %for.body.i
                                        //    in Loop: Header=BB0_13 Depth=1
	lbu x12 ,  1 ( x8 )
	add x8 ,  x0 ,  x13
	bltu x0, x12, .LBB0_13
	jal x0, .LBB0_21
.LBB0_15:                               //  %if.then21
	lbu x12 ,  0 ( x8 )
	slli x13 ,  x11 ,  24&31
	slli x15 ,  x15 ,  16&31
	slli x14 ,  x14 ,  8&31
	add x9 ,  x0 ,  x0
	or x15 ,  x13 ,  x15
	or x15 ,  x14 ,  x15
	beq x0, x12, .LBB0_38
.LBB0_16:                               //  %if.then21
	beq x0, x15, .LBB0_38
.LBB0_17:                               //  %for.body.i165.preheader
	add x14 ,  x0 ,  x0
.LBB0_18:                               //  %for.body.i165
                                        //  =>This Inner Loop Header: Depth=1
	andi x13 ,  x12 ,  255
	or x14 ,  x13 ,  x14
	addi x13 ,  x8 ,  1
	slli x14 ,  x14 ,  8&31
	beq x15, x14, .LBB0_39
.LBB0_19:                               //  %for.body.i165
                                        //    in Loop: Header=BB0_18 Depth=1
	lbu x12 ,  1 ( x8 )
	add x8 ,  x0 ,  x13
	bltu x0, x12, .LBB0_18
	jal x0, .LBB0_39
.LBB0_20:
	add x13 ,  x0 ,  x8
	add x14 ,  x0 ,  x9
.LBB0_21:                               //  %strstr2.exit
	bne x15, x14, .LBB0_47
.LBB0_22:
	addi x9 ,  x13 ,  -2
	jal x0, .LBB0_47
.LBB0_23:                               //  %if.then28
	slli x12 ,  x11 ,  24&31
	slli x15 ,  x15 ,  16&31
	slli x14 ,  x14 ,  8&31
	or x15 ,  x12 ,  x15
	or x15 ,  x14 ,  x15
	or x15 ,  x13 ,  x15
	xori x14 ,  x15 ,  0
	sltiu x14 ,  x14 ,  1
	beq x0, x15, .LBB0_42
.LBB0_24:                               //  %if.then28
	lbu x11 ,  0 ( x8 )
	beq x0, x11, .LBB0_43
.LBB0_25:                               //  %for.body.i182.preheader
	add x12 ,  x0 ,  x0
.LBB0_26:                               //  %for.body.i182
                                        //  =>This Inner Loop Header: Depth=1
	andi x14 ,  x11 ,  255
	slli x13 ,  x12 ,  8&31
	or x12 ,  x14 ,  x13
	addi x13 ,  x8 ,  1
	xor x14 ,  x12 ,  x15
	sltiu x14 ,  x14 ,  1
	beq x15, x12, .LBB0_44
.LBB0_27:                               //  %for.body.i182
                                        //    in Loop: Header=BB0_26 Depth=1
	lbu x11 ,  1 ( x8 )
	add x8 ,  x0 ,  x13
	bltu x0, x11, .LBB0_26
	jal x0, .LBB0_44
.LBB0_38:
	add x13 ,  x0 ,  x8
	add x14 ,  x0 ,  x9
.LBB0_39:                               //  %strstr3.exit
	bne x15, x14, .LBB0_47
.LBB0_40:
	addi x9 ,  x13 ,  -3
	jal x0, .LBB0_47
.LBB0_42:
	add x13 ,  x0 ,  x8
	beq x0, x14, .LBB0_45
.LBB0_46:
	addi x9 ,  x13 ,  -4
	jal x0, .LBB0_47
.LBB0_43:
	add x13 ,  x0 ,  x8
.LBB0_44:                               //  %strstr4.exit
	bltu x0, x14, .LBB0_46
.LBB0_45:                               //  %strstr4.exit
	add x9 ,  x0 ,  x0
.LBB0_47:                               //  %cleanup88
	add x10 ,  x0 ,  x9
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.LBB0_48:                               //  %if.end84
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call two_way_long_needle
	jal x0, .LBB0_9
.Lfunc_end0:
	.size	strstr, .Lfunc_end0-strstr
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1096
	.cfi_adjust_cfa_offset 1096
	sw x9 ,  1088 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x13
	sw x18 ,  1084 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  1080 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	sw x1 ,  1092 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  1076 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  1072 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  1068 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  1064 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  1060 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  1056 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  1052 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  1048 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  1044 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -52
	sltiu x15 ,  x9 ,  2
	bltu x0, x15, .LBB1_1
.LBB1_2:                                //  %while.body.i.preheader
	slti x14 ,  x0 ,  1
	addi x15 ,  x0 ,  -1
	add x13 ,  x0 ,  x0
	add x12 ,  x0 ,  x14
	add x24 ,  x0 ,  x14
	add x11 ,  x0 ,  x14
	jal x0, .LBB1_3
.LBB1_4:                                //  %if.then.i
                                        //    in Loop: Header=BB1_3 Depth=1
	sub x24 ,  x11 ,  x15
	add x13 ,  x0 ,  x11
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bgeu x11, x9, .LBB1_12
.LBB1_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x12 ,  x15
	add x5 ,  x11 ,  x19
	add x6 ,  x6 ,  x19
	lbu x5 ,  0 ( x5 )
	lbu x6 ,  0 ( x6 )
	bltu x5, x6, .LBB1_4
.LBB1_5:                                //  %if.else.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x5, x6, .LBB1_9
.LBB1_6:                                //  %if.then12.i
                                        //    in Loop: Header=BB1_3 Depth=1
	bne x12, x24, .LBB1_7
.LBB1_8:                                //  %if.else16.i
                                        //    in Loop: Header=BB1_3 Depth=1
	add x13 ,  x24 ,  x13
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bltu x11, x9, .LBB1_3
	jal x0, .LBB1_12
.LBB1_9:                                //  %if.else18.i
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x12 ,  x13 ,  1
	add x24 ,  x0 ,  x14
	add x15 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x14
	add x11 ,  x13 ,  x12
	bltu x11, x9, .LBB1_3
	jal x0, .LBB1_12
.LBB1_7:                                //  %if.then15.i
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x12 ,  x12 ,  1
	add x11 ,  x13 ,  x12
	bltu x11, x9, .LBB1_3
.LBB1_12:                               //  %while.body26.i.preheader
	slti x12 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	add x11 ,  x0 ,  x0
	add x16 ,  x0 ,  x12
	add x13 ,  x0 ,  x12
	add x5 ,  x0 ,  x12
	jal x0, .LBB1_13
.LBB1_14:                               //  %if.then35.i
                                        //    in Loop: Header=BB1_13 Depth=1
	sub x13 ,  x5 ,  x14
	add x11 ,  x0 ,  x5
	add x16 ,  x0 ,  x12
	add x5 ,  x11 ,  x16
	bgeu x5, x9, .LBB1_23
.LBB1_13:                               //  %while.body26.i
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x16 ,  x14
	add x7 ,  x5 ,  x19
	add x6 ,  x6 ,  x19
	lbu x7 ,  0 ( x7 )
	lbu x6 ,  0 ( x6 )
	bltu x6, x7, .LBB1_14
.LBB1_15:                               //  %if.else38.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x7, x6, .LBB1_19
.LBB1_16:                               //  %if.then43.i
                                        //    in Loop: Header=BB1_13 Depth=1
	bne x16, x13, .LBB1_17
.LBB1_18:                               //  %if.else48.i
                                        //    in Loop: Header=BB1_13 Depth=1
	add x11 ,  x13 ,  x11
	add x16 ,  x0 ,  x12
	add x5 ,  x11 ,  x16
	bltu x5, x9, .LBB1_13
	jal x0, .LBB1_23
.LBB1_19:                               //  %if.else51.i
                                        //    in Loop: Header=BB1_13 Depth=1
	addi x5 ,  x11 ,  1
	add x13 ,  x0 ,  x12
	add x14 ,  x0 ,  x11
	add x11 ,  x0 ,  x5
	add x16 ,  x0 ,  x12
	add x5 ,  x11 ,  x16
	bltu x5, x9, .LBB1_13
	jal x0, .LBB1_23
.LBB1_17:                               //  %if.then46.i
                                        //    in Loop: Header=BB1_13 Depth=1
	addi x16 ,  x16 ,  1
	add x5 ,  x11 ,  x16
	bltu x5, x9, .LBB1_13
	jal x0, .LBB1_23
.LBB1_1:
	addi x15 ,  x0 ,  -1
	slti x24 ,  x0 ,  1
	add x14 ,  x0 ,  x15
	add x13 ,  x0 ,  x24
.LBB1_23:                               //  %while.end55.i
	addi x20 ,  x15 ,  1
	addi x15 ,  x14 ,  1
	bltu x15, x20, .LBB1_25
.LBB1_24:                               //  %while.end55.i
	add x24 ,  x0 ,  x13
.LBB1_25:                               //  %while.end55.i
	add x14 ,  x0 ,  x0
	addi x23 ,  x2 ,  20
.LBB1_26:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x14 ,  x23
	addi x14 ,  x14 ,  4
	sw x9 ,  0 ( x13 )
	xori x13 ,  x14 ,  1024
	bltu x0, x13, .LBB1_26
.LBB1_27:                               //  %for.cond1.preheader
	bltu x15, x20, .LBB1_29
.LBB1_28:                               //  %for.cond1.preheader
	add x20 ,  x0 ,  x15
.LBB1_29:                               //  %for.cond1.preheader
	sw x10 ,  16 ( x2 )             //  4-byte Folded Spill
	beq x0, x9, .LBB1_32
.LBB1_30:                               //  %for.body3.preheader
	addi x15 ,  x9 ,  -1
	add x14 ,  x0 ,  x19
.LBB1_31:                               //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  1
	slli x13 ,  x13 ,  2&31
	add x13 ,  x13 ,  x23
	sw x15 ,  0 ( x13 )
	addi x15 ,  x15 ,  -1
	xori x13 ,  x15 ,  -1
	bltu x0, x13, .LBB1_31
.LBB1_32:                               //  %for.end9
	add x11 ,  x24 ,  x19
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	call memcmp
	beq x0, x10, .LBB1_33
.LBB1_54:                               //  %if.else77
	lui x30 ,  2048&4095
	lui x15 ,  (2048>>12)&1048575
	sub x24 ,  x9 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x20, x24, .LBB1_56
.LBB1_55:                               //  %if.else77
	add x24 ,  x0 ,  x20
.LBB1_56:                               //  %if.else77
	lw x5 ,  16 ( x2 )              //  4-byte Folded Reload
	or x22 ,  x15 ,  x9
	addi x25 ,  x9 ,  -1
	add x27 ,  x0 ,  x0
	bgeu x20, x25, .LBB1_57
.LBB1_65:                               //  %while.cond88.us.preheader
	add x8 ,  x20 ,  x19
	addi x21 ,  x19 ,  -1
	addi x26 ,  x5 ,  -1
	add x19 ,  x0 ,  x27
	sub x15 ,  x18 ,  x9
	bltu x15, x19, .LBB1_67
.LBB1_68:                               //  %while.body101.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_70 Depth 2
                                        //      Child Loop BB1_73 Depth 2
	add x15 ,  x19 ,  x25
	add x15 ,  x15 ,  x5
	lbu x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x23
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_69
.LBB1_81:                               //  %if.then109.us
                                        //    in Loop: Header=BB1_68 Depth=1
	add x19 ,  x19 ,  x15
	sub x15 ,  x18 ,  x9
	bltu x15, x19, .LBB1_67
	jal x0, .LBB1_68
.LBB1_69:                               //  %land.rhs116.us.preheader
                                        //    in Loop: Header=BB1_68 Depth=1
	add x15 ,  x19 ,  x5
	add x14 ,  x20 ,  x15
	add x15 ,  x0 ,  x27
.LBB1_70:                               //  %land.rhs116.us
                                        //    Parent Loop BB1_68 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x8
	add x12 ,  x15 ,  x14
	lbu x12 ,  0 ( x12 )
	lbu x13 ,  0 ( x13 )
	bne x13, x12, .LBB1_76
.LBB1_71:                               //  %while.body125.us
                                        //    in Loop: Header=BB1_70 Depth=2
	addi x15 ,  x15 ,  1
	add x13 ,  x15 ,  x20
	bltu x13, x25, .LBB1_70
.LBB1_72:                               //  %while.cond133.us.preheader
                                        //    in Loop: Header=BB1_68 Depth=1
	add x15 ,  x19 ,  x26
	add x14 ,  x0 ,  x20
.LBB1_73:                               //  %while.cond133.us
                                        //    Parent Loop BB1_68 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x14, .LBB1_77
.LBB1_74:                               //  %land.rhs136.us
                                        //    in Loop: Header=BB1_73 Depth=2
	add x12 ,  x14 ,  x21
	addi x13 ,  x14 ,  -1
	add x14 ,  x14 ,  x15
	lbu x11 ,  0 ( x14 )
	add x14 ,  x0 ,  x13
	lbu x12 ,  0 ( x12 )
	beq x12, x11, .LBB1_73
.LBB1_75:                               //    in Loop: Header=BB1_68 Depth=1
	add x15 ,  x0 ,  x24
.LBB1_76:                               //  %if.end158.us
                                        //    in Loop: Header=BB1_68 Depth=1
	add x15 ,  x15 ,  x19
	addi x19 ,  x15 ,  1
	sub x15 ,  x18 ,  x9
	bgeu x15, x19, .LBB1_68
.LBB1_67:                               //  %lor.rhs92.us
	add x10 ,  x18 ,  x5
	add x11 ,  x0 ,  x22
	call strnlen
	lw x5 ,  16 ( x2 )              //  4-byte Folded Reload
	add x18 ,  x18 ,  x10
	sub x15 ,  x18 ,  x9
	bgeu x15, x19, .LBB1_68
	jal x0, .LBB1_78
.LBB1_33:                               //  %while.cond.preheader
	lw x5 ,  16 ( x2 )              //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	lui x30 ,  2048&4095
	add x27 ,  x0 ,  x0
	addi x26 ,  x19 ,  -1
	addi x25 ,  x9 ,  -1
	sub x8 ,  x9 ,  x24
	sub x15 ,  x15 ,  x20
	srli x30 ,  x30 ,  12&31
	add x22 ,  x0 ,  x27
	add x21 ,  x0 ,  x27
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
	addi x15 ,  x5 ,  -1
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (2048>>12)&1048575
	or x15 ,  x15 ,  x30
	or x15 ,  x15 ,  x9
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	sub x15 ,  x18 ,  x9
	bgeu x15, x21, .LBB1_36
	jal x0, .LBB1_35
.LBB1_79:                               //  %if.else
                                        //    in Loop: Header=BB1_36 Depth=1
	lw x14 ,  4 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x15 ,  x14
.LBB1_41:                               //  %if.then24
                                        //    in Loop: Header=BB1_36 Depth=1
	add x22 ,  x0 ,  x27
.LBB1_42:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_36 Depth=1
	add x21 ,  x21 ,  x15
	sub x15 ,  x18 ,  x9
	bgeu x15, x21, .LBB1_36
.LBB1_35:                               //  %lor.rhs
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x18 ,  x5
	call strnlen
	lw x5 ,  16 ( x2 )              //  4-byte Folded Reload
	add x18 ,  x18 ,  x10
	sub x15 ,  x18 ,  x9
	bltu x15, x21, .LBB1_78
.LBB1_36:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_47 Depth 2
                                        //      Child Loop BB1_50 Depth 2
	add x15 ,  x21 ,  x25
	add x15 ,  x15 ,  x5
	lbu x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x23
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_43
.LBB1_37:                               //  %if.then24
                                        //    in Loop: Header=BB1_36 Depth=1
	add x14 ,  x0 ,  x8
	bltu x15, x24, .LBB1_39
.LBB1_38:                               //  %if.then24
                                        //    in Loop: Header=BB1_36 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_39:                               //  %if.then24
                                        //    in Loop: Header=BB1_36 Depth=1
	beq x22, x27, .LBB1_41
.LBB1_40:                               //  %if.then24
                                        //    in Loop: Header=BB1_36 Depth=1
	add x15 ,  x0 ,  x14
	jal x0, .LBB1_41
.LBB1_43:                               //  %if.end29
                                        //    in Loop: Header=BB1_36 Depth=1
	add x15 ,  x0 ,  x22
	bltu x20, x22, .LBB1_45
.LBB1_44:                               //  %if.end29
                                        //    in Loop: Header=BB1_36 Depth=1
	add x15 ,  x0 ,  x20
.LBB1_45:                               //  %if.end29
                                        //    in Loop: Header=BB1_36 Depth=1
	bgeu x15, x25, .LBB1_49
.LBB1_46:                               //  %land.rhs.preheader
                                        //    in Loop: Header=BB1_36 Depth=1
	add x14 ,  x21 ,  x5
.LBB1_47:                               //  %land.rhs
                                        //    Parent Loop BB1_36 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x19
	add x12 ,  x15 ,  x14
	lbu x12 ,  0 ( x12 )
	lbu x13 ,  0 ( x13 )
	bne x13, x12, .LBB1_79
.LBB1_48:                               //  %while.body40
                                        //    in Loop: Header=BB1_47 Depth=2
	addi x15 ,  x15 ,  1
	bltu x15, x25, .LBB1_47
.LBB1_49:                               //  %while.cond47.preheader
                                        //    in Loop: Header=BB1_36 Depth=1
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x0 ,  x20
	add x15 ,  x21 ,  x15
.LBB1_50:                               //  %while.cond47
                                        //    Parent Loop BB1_36 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14 ,  x0 ,  x13
	bgeu x22, x14, .LBB1_52
.LBB1_51:                               //  %land.rhs51
                                        //    in Loop: Header=BB1_50 Depth=2
	add x12 ,  x14 ,  x26
	add x11 ,  x14 ,  x15
	addi x13 ,  x14 ,  -1
	lbu x11 ,  0 ( x11 )
	lbu x12 ,  0 ( x12 )
	beq x12, x11, .LBB1_50
.LBB1_52:                               //  %while.end61
                                        //    in Loop: Header=BB1_36 Depth=1
	addi x13 ,  x22 ,  1
	add x15 ,  x0 ,  x24
	add x22 ,  x0 ,  x8
	bgeu x14, x13, .LBB1_42
.LBB1_53:                               //  %cleanup
	add x27 ,  x21 ,  x5
	jal x0, .LBB1_78
.LBB1_57:                               //  %while.cond88.preheader
	addi x8 ,  x19 ,  -1
	addi x21 ,  x5 ,  -1
	add x19 ,  x0 ,  x27
	sub x15 ,  x18 ,  x9
	bltu x15, x19, .LBB1_59
.LBB1_60:                               //  %while.body101
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_62 Depth 2
	add x15 ,  x19 ,  x25
	add x15 ,  x15 ,  x5
	lbu x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x23
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_61
.LBB1_80:                               //  %if.then109
                                        //    in Loop: Header=BB1_60 Depth=1
	add x19 ,  x19 ,  x15
	sub x15 ,  x18 ,  x9
	bltu x15, x19, .LBB1_59
	jal x0, .LBB1_60
.LBB1_61:                               //  %while.cond133.preheader
                                        //    in Loop: Header=BB1_60 Depth=1
	add x15 ,  x19 ,  x21
	add x14 ,  x0 ,  x20
.LBB1_62:                               //  %while.cond133
                                        //    Parent Loop BB1_60 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x14, .LBB1_77
.LBB1_63:                               //  %land.rhs136
                                        //    in Loop: Header=BB1_62 Depth=2
	add x12 ,  x14 ,  x8
	addi x13 ,  x14 ,  -1
	add x14 ,  x14 ,  x15
	lbu x11 ,  0 ( x14 )
	add x14 ,  x0 ,  x13
	lbu x12 ,  0 ( x12 )
	beq x12, x11, .LBB1_62
.LBB1_64:                               //  %if.end158
                                        //    in Loop: Header=BB1_60 Depth=1
	add x15 ,  x24 ,  x19
	addi x19 ,  x15 ,  1
	sub x15 ,  x18 ,  x9
	bgeu x15, x19, .LBB1_60
.LBB1_59:                               //  %lor.rhs92
	add x10 ,  x18 ,  x5
	add x11 ,  x0 ,  x22
	call strnlen
	lw x5 ,  16 ( x2 )              //  4-byte Folded Reload
	add x18 ,  x18 ,  x10
	sub x15 ,  x18 ,  x9
	bgeu x15, x19, .LBB1_60
	jal x0, .LBB1_78
.LBB1_77:                               //  %cleanup160
	add x27 ,  x19 ,  x5
.LBB1_78:                               //  %cleanup164
	add x10 ,  x0 ,  x27
	lw x8 ,  1044 ( x2 )            //  4-byte Folded Reload
	lw x27 ,  1048 ( x2 )           //  4-byte Folded Reload
	lw x26 ,  1052 ( x2 )           //  4-byte Folded Reload
	lw x25 ,  1056 ( x2 )           //  4-byte Folded Reload
	lw x24 ,  1060 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1064 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1068 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1072 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1076 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1080 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1084 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1088 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1092 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1096
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
