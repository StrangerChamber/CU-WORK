	.text
	.file	"strcasestr.c"
	.globl	strcasestr              //  -- Begin function strcasestr
	.type	strcasestr,@function
strcasestr:                             //  @strcasestr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x11
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	lbu x6 ,  0 ( x21 )
	lbu x10 ,  0 ( x8 )
	xori x15 ,  x6 ,  0
	sltiu x5 ,  x15 ,  1
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %land.rhs.preheader
	slti x13 ,  x0 ,  1
	addi x11 ,  x8 ,  1
	lui x12 ,  (_ctype_>>12)&1048575
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x13
	andi x5 ,  x5 ,  1
	beq x0, x5, .LBB0_4
	jal x0, .LBB0_11
.LBB0_8:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x6 ,  1 ( x15 )
	xor x10 ,  x5 ,  x10
	addi x7 ,  x11 ,  1
	addi x15 ,  x15 ,  1
	sltiu x10 ,  x10 ,  1
	and x14 ,  x10 ,  x14
	xori x10 ,  x6 ,  0
	sltiu x5 ,  x10 ,  1
	lbu x10 ,  0 ( x11 )
	add x11 ,  x0 ,  x7
	beq x0, x10, .LBB0_9
.LBB0_3:                                //  %land.rhs
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x5 ,  x5 ,  1
	bltu x0, x5, .LBB0_11
.LBB0_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  _ctype_&4095
	andi x5 ,  x6 ,  255
	srli x30 ,  x30 ,  12&31
	or x6 ,  x12 ,  x30
	addi x6 ,  x6 ,  1
	add x7 ,  x5 ,  x6
	lbu x7 ,  0 ( x7 )
	andi x7 ,  x7 ,  3
	bne x7, x13, .LBB0_6
.LBB0_5:                                //    in Loop: Header=BB0_4 Depth=1
	addi x5 ,  x5 ,  32
.LBB0_6:                                //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x10 ,  x10 ,  255
	add x6 ,  x10 ,  x6
	lbu x6 ,  0 ( x6 )
	andi x6 ,  x6 ,  3
	bne x6, x13, .LBB0_8
.LBB0_7:                                //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x10 ,  32
	jal x0, .LBB0_8
.LBB0_1:
	slti x14 ,  x0 ,  1
	add x15 ,  x0 ,  x21
.LBB0_9:                                //  %while.end
	beq x0, x5, .LBB0_10
.LBB0_11:                               //  %if.end
	beq x0, x14, .LBB0_13
.LBB0_12:
	add x19 ,  x0 ,  x8
	jal x0, .LBB0_75
.LBB0_10:
	add x19 ,  x0 ,  x0
	jal x0, .LBB0_75
.LBB0_13:                               //  %if.end31
	sub x18 ,  x15 ,  x21
	addi x9 ,  x8 ,  1
	addi x15 ,  x0 ,  31
	bltu x15, x18, .LBB0_74
.LBB0_14:                               //  %if.then35
	addi x12 ,  x2 ,  16
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call critical_factorization
	lw x23 ,  16 ( x2 )
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	add x11 ,  x23 ,  x21
	call strncasecmp
	beq x0, x10, .LBB0_15
.LBB0_40:                               //  %if.else106.i
	sub x24 ,  x18 ,  x20
	add x15 ,  x0 ,  x24
	bltu x20, x24, .LBB0_42
.LBB0_41:                               //  %if.else106.i
	add x15 ,  x0 ,  x20
.LBB0_42:                               //  %if.else106.i
	add x19 ,  x0 ,  x0
	slti x23 ,  x0 ,  1
	addi x22 ,  x15 ,  1
	add x10 ,  x18 ,  x8
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	sw x22 ,  16 ( x2 )
	call memchr
	beq x0, x18, .LBB0_75
.LBB0_43:                               //  %if.else106.i
	bltu x0, x10, .LBB0_75
.LBB0_44:                               //  %while.cond127.preheader.lr.ph.i
	bgeu x20, x18, .LBB0_45
.LBB0_55:                               //  %while.cond127.preheader.us.i.preheader
	add x15 ,  x8 ,  x20
	add x19 ,  x0 ,  x0
	add x25 ,  x20 ,  x21
	addi x26 ,  x21 ,  -1
	lui x27 ,  (_ctype_>>12)&1048575
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	addi x15 ,  x15 ,  1
	add x21 ,  x0 ,  x19
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	add x15 ,  x0 ,  x18
.LBB0_56:                               //  %while.cond127.preheader.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_57 Depth 2
                                        //      Child Loop BB0_65 Depth 2
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  12 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x21 ,  x14
	add x14 ,  x0 ,  x19
.LBB0_57:                               //  %land.rhs130.us.i
                                        //    Parent Loop BB0_56 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	addi x11 ,  x11 ,  1
	add x10 ,  x12 ,  x11
	lbu x10 ,  0 ( x10 )
	andi x10 ,  x10 ,  3
	bne x10, x23, .LBB0_59
.LBB0_58:                               //    in Loop: Header=BB0_57 Depth=2
	addi x12 ,  x12 ,  32
.LBB0_59:                               //  %land.rhs130.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	add x10 ,  x14 ,  x25
	lbu x10 ,  0 ( x10 )
	add x11 ,  x10 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x23, .LBB0_61
.LBB0_60:                               //    in Loop: Header=BB0_57 Depth=2
	addi x10 ,  x10 ,  32
.LBB0_61:                               //  %land.rhs130.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	addi x14 ,  x14 ,  1
	bne x10, x12, .LBB0_71
.LBB0_62:                               //  %while.body169.us.i
                                        //    in Loop: Header=BB0_57 Depth=2
	bne x24, x14, .LBB0_57
.LBB0_63:                               //  %while.cond176.us.i.preheader
                                        //    in Loop: Header=BB0_56 Depth=1
	add x14 ,  x21 ,  x8
	add x13 ,  x0 ,  x20
	bltu x0, x13, .LBB0_65
	jal x0, .LBB0_73
.LBB0_69:                               //  %land.rhs179.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	addi x13 ,  x13 ,  -1
	bne x10, x12, .LBB0_70
.LBB0_64:                               //  %while.cond176.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	beq x0, x13, .LBB0_73
.LBB0_65:                               //  %land.rhs179.us.i
                                        //    Parent Loop BB0_56 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x13 ,  x14
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	addi x11 ,  x11 ,  1
	add x10 ,  x12 ,  x11
	lbu x10 ,  0 ( x10 )
	andi x10 ,  x10 ,  3
	bne x10, x23, .LBB0_67
.LBB0_66:                               //    in Loop: Header=BB0_65 Depth=2
	addi x12 ,  x12 ,  32
.LBB0_67:                               //  %land.rhs179.us.i
                                        //    in Loop: Header=BB0_65 Depth=2
	add x10 ,  x13 ,  x26
	lbu x10 ,  0 ( x10 )
	add x11 ,  x10 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x23, .LBB0_69
.LBB0_68:                               //    in Loop: Header=BB0_65 Depth=2
	addi x10 ,  x10 ,  32
	jal x0, .LBB0_69
.LBB0_70:                               //    in Loop: Header=BB0_56 Depth=1
	add x14 ,  x0 ,  x22
.LBB0_71:                               //  %if.end231.us.i
                                        //    in Loop: Header=BB0_56 Depth=1
	add x21 ,  x21 ,  x14
	add x10 ,  x15 ,  x9
	add x11 ,  x0 ,  x19
	add x9 ,  x18 ,  x21
	sub x12 ,  x9 ,  x15
	call memchr
	bltu x0, x10, .LBB0_75
.LBB0_72:                               //  %if.end231.us.i
                                        //    in Loop: Header=BB0_56 Depth=1
	add x15 ,  x0 ,  x9
	bltu x0, x9, .LBB0_56
	jal x0, .LBB0_75
.LBB0_74:                               //  %if.end36
	addi x11 ,  x18 ,  -1
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x18
	call two_way_long_needle
	add x19 ,  x0 ,  x10
	jal x0, .LBB0_75
.LBB0_15:                               //  %while.cond.preheader.i
	add x19 ,  x0 ,  x0
	slti x22 ,  x0 ,  1
	add x10 ,  x18 ,  x8
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	call memchr
	beq x0, x18, .LBB0_75
.LBB0_16:                               //  %while.cond.preheader.i
	bltu x0, x10, .LBB0_75
.LBB0_17:                               //  %while.body.lr.ph.i
	add x19 ,  x0 ,  x0
	sub x15 ,  x22 ,  x20
	sub x14 ,  x18 ,  x23
	addi x25 ,  x21 ,  -1
	lui x26 ,  (_ctype_>>12)&1048575
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x19
	add x15 ,  x0 ,  x18
	add x27 ,  x0 ,  x19
	sw x14 ,  8 ( x2 )              //  4-byte Folded Spill
.LBB0_18:                               //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_22 Depth 2
                                        //      Child Loop BB0_30 Depth 2
	add x14 ,  x0 ,  x24
	bltu x20, x24, .LBB0_20
.LBB0_19:                               //  %while.body.i
                                        //    in Loop: Header=BB0_18 Depth=1
	add x14 ,  x0 ,  x20
.LBB0_20:                               //  %while.body.i
                                        //    in Loop: Header=BB0_18 Depth=1
	lw x5 ,  12 ( x2 )              //  4-byte Folded Reload
	bgeu x14, x18, .LBB0_28
.LBB0_21:                               //  %land.rhs9.i.preheader
                                        //    in Loop: Header=BB0_18 Depth=1
	add x13 ,  x27 ,  x5
.LBB0_22:                               //  %land.rhs9.i
                                        //    Parent Loop BB0_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x26 ,  x30
	addi x11 ,  x11 ,  1
	add x10 ,  x12 ,  x11
	lbu x10 ,  0 ( x10 )
	andi x10 ,  x10 ,  3
	bne x10, x22, .LBB0_24
.LBB0_23:                               //    in Loop: Header=BB0_22 Depth=2
	addi x12 ,  x12 ,  32
.LBB0_24:                               //  %land.rhs9.i
                                        //    in Loop: Header=BB0_22 Depth=2
	add x10 ,  x14 ,  x21
	lbu x10 ,  0 ( x10 )
	add x11 ,  x10 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x22, .LBB0_26
.LBB0_25:                               //    in Loop: Header=BB0_22 Depth=2
	addi x10 ,  x10 ,  32
.LBB0_26:                               //  %land.rhs9.i
                                        //    in Loop: Header=BB0_22 Depth=2
	bne x10, x12, .LBB0_37
.LBB0_27:                               //  %while.body43.i
                                        //    in Loop: Header=BB0_22 Depth=2
	addi x14 ,  x14 ,  1
	bltu x14, x18, .LBB0_22
.LBB0_28:                               //  %while.cond48.i.preheader
                                        //    in Loop: Header=BB0_18 Depth=1
	add x13 ,  x27 ,  x8
	add x11 ,  x0 ,  x20
	add x14 ,  x0 ,  x11
	bltu x24, x14, .LBB0_30
	jal x0, .LBB0_35
.LBB0_34:                               //  %land.rhs52.i
                                        //    in Loop: Header=BB0_30 Depth=2
	addi x11 ,  x14 ,  -1
	bne x10, x12, .LBB0_35
.LBB0_29:                               //  %while.cond48.i
                                        //    in Loop: Header=BB0_30 Depth=2
	add x14 ,  x0 ,  x11
	bgeu x24, x14, .LBB0_35
.LBB0_30:                               //  %land.rhs52.i
                                        //    Parent Loop BB0_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x26 ,  x30
	addi x11 ,  x11 ,  1
	add x10 ,  x12 ,  x11
	lbu x10 ,  0 ( x10 )
	andi x10 ,  x10 ,  3
	bne x10, x22, .LBB0_32
.LBB0_31:                               //    in Loop: Header=BB0_30 Depth=2
	addi x12 ,  x12 ,  32
.LBB0_32:                               //  %land.rhs52.i
                                        //    in Loop: Header=BB0_30 Depth=2
	add x10 ,  x14 ,  x25
	lbu x10 ,  0 ( x10 )
	add x11 ,  x10 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x22, .LBB0_34
.LBB0_33:                               //    in Loop: Header=BB0_30 Depth=2
	addi x10 ,  x10 ,  32
	jal x0, .LBB0_34
.LBB0_35:                               //  %while.end92.i
                                        //    in Loop: Header=BB0_18 Depth=1
	addi x12 ,  x24 ,  1
	lw x24 ,  8 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x0 ,  x23
	bgeu x14, x12, .LBB0_38
	jal x0, .LBB0_36
.LBB0_37:                               //  %if.else.i
                                        //    in Loop: Header=BB0_18 Depth=1
	lw x13 ,  4 ( x2 )              //  4-byte Folded Reload
	add x24 ,  x0 ,  x19
	add x13 ,  x14 ,  x13
.LBB0_38:                               //  %if.end104.i
                                        //    in Loop: Header=BB0_18 Depth=1
	add x27 ,  x27 ,  x13
	add x10 ,  x15 ,  x5
	add x11 ,  x0 ,  x19
	add x9 ,  x18 ,  x27
	sub x12 ,  x9 ,  x15
	call memchr
	bltu x0, x10, .LBB0_75
.LBB0_39:                               //  %if.end104.i
                                        //    in Loop: Header=BB0_18 Depth=1
	add x15 ,  x0 ,  x9
	bltu x0, x9, .LBB0_18
	jal x0, .LBB0_75
.LBB0_45:                               //  %while.cond127.preheader.i.preheader
	add x19 ,  x0 ,  x0
	addi x24 ,  x21 ,  -1
	lui x25 ,  (_ctype_>>12)&1048575
	add x26 ,  x0 ,  x18
	add x21 ,  x0 ,  x19
.LBB0_46:                               //  %while.cond127.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_48 Depth 2
	add x15 ,  x0 ,  x20
	bltu x0, x15, .LBB0_48
	jal x0, .LBB0_73
.LBB0_52:                               //  %land.rhs179.i
                                        //    in Loop: Header=BB0_48 Depth=2
	addi x15 ,  x15 ,  -1
	bne x12, x14, .LBB0_53
.LBB0_47:                               //  %while.cond176.i
                                        //    in Loop: Header=BB0_48 Depth=2
	beq x0, x15, .LBB0_73
.LBB0_48:                               //  %land.rhs179.i
                                        //    Parent Loop BB0_46 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x14 ,  x15 ,  x8
	lui x30 ,  _ctype_&4095
	lbu x14 ,  0 ( x14 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x25 ,  x30
	addi x13 ,  x13 ,  1
	add x12 ,  x14 ,  x13
	lbu x12 ,  0 ( x12 )
	andi x12 ,  x12 ,  3
	bne x12, x23, .LBB0_50
.LBB0_49:                               //    in Loop: Header=BB0_48 Depth=2
	addi x14 ,  x14 ,  32
.LBB0_50:                               //  %land.rhs179.i
                                        //    in Loop: Header=BB0_48 Depth=2
	add x12 ,  x15 ,  x24
	lbu x12 ,  0 ( x12 )
	add x13 ,  x12 ,  x13
	lbu x13 ,  0 ( x13 )
	andi x13 ,  x13 ,  3
	bne x13, x23, .LBB0_52
.LBB0_51:                               //    in Loop: Header=BB0_48 Depth=2
	addi x12 ,  x12 ,  32
	jal x0, .LBB0_52
.LBB0_53:                               //  %if.end231.i
                                        //    in Loop: Header=BB0_46 Depth=1
	add x10 ,  x26 ,  x9
	add x21 ,  x22 ,  x21
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	add x26 ,  x18 ,  x21
	call memchr
	beq x0, x26, .LBB0_75
.LBB0_54:                               //  %if.end231.i
                                        //    in Loop: Header=BB0_46 Depth=1
	add x8 ,  x22 ,  x8
	beq x0, x10, .LBB0_46
	jal x0, .LBB0_75
.LBB0_73:                               //  %if.then223.i
	add x19 ,  x21 ,  x9
	jal x0, .LBB0_75
.LBB0_36:                               //  %cleanup.i
	add x19 ,  x27 ,  x5
.LBB0_75:                               //  %cleanup
	add x10 ,  x0 ,  x19
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
.Lfunc_end0:
	.size	strcasestr, .Lfunc_end0-strcasestr
	.cfi_endproc
                                        //  -- End function
	.type	two_way_long_needle,@function //  -- Begin function two_way_long_needle
two_way_long_needle:                    //  @two_way_long_needle
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1104
	.cfi_adjust_cfa_offset 1104
	sw x9 ,  1096 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  1084 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x12
	add x9 ,  x0 ,  x13
	sw x19 ,  1088 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x11
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	addi x12 ,  x2 ,  1048
	sw x1 ,  1100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1092 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  1080 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  1076 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  1072 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  1068 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  1064 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  1060 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  1056 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  1052 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x9
	call critical_factorization
	add x26 ,  x0 ,  x10
	add x15 ,  x0 ,  x0
	addi x21 ,  x2 ,  24
.LBB1_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x15 ,  x21
	addi x15 ,  x15 ,  4
	sw x9 ,  0 ( x14 )
	xori x14 ,  x15 ,  1024
	bltu x0, x14, .LBB1_1
.LBB1_2:                                //  %for.cond1.preheader
	beq x0, x9, .LBB1_7
.LBB1_3:                                //  %for.body3.preheader
	addi x15 ,  x9 ,  -1
	lui x14 ,  (_ctype_>>12)&1048575
	slti x13 ,  x0 ,  1
	add x12 ,  x0 ,  x20
	jal x0, .LBB1_4
.LBB1_6:                                //  %for.body3
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x11 ,  x11 ,  2&31
	addi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x21
	sw x15 ,  0 ( x11 )
	addi x15 ,  x15 ,  -1
	xori x11 ,  x15 ,  -1
	beq x0, x11, .LBB1_7
.LBB1_4:                                //  %for.body3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x11 ,  0 ( x12 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	add x10 ,  x11 ,  x10
	lbu x10 ,  1 ( x10 )
	andi x10 ,  x10 ,  3
	bne x10, x13, .LBB1_6
.LBB1_5:                                //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x11 ,  32
	jal x0, .LBB1_6
.LBB1_7:                                //  %for.end16
	lw x22 ,  1048 ( x2 )
	add x10 ,  x0 ,  x20
	add x12 ,  x0 ,  x26
	add x11 ,  x22 ,  x20
	call strncasecmp
	beq x0, x10, .LBB1_8
.LBB1_40:                               //  %if.else172
	sub x15 ,  x9 ,  x26
	bltu x26, x15, .LBB1_42
.LBB1_41:                               //  %if.else172
	add x15 ,  x0 ,  x26
.LBB1_42:                               //  %if.else172
	addi x22 ,  x15 ,  1
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	sub x12 ,  x9 ,  x19
	add x11 ,  x0 ,  x18
	sw x22 ,  1048 ( x2 )
	add x10 ,  x19 ,  x15
	call memchr
	beq x0, x9, .LBB1_81
.LBB1_43:                               //  %if.else172
	bltu x0, x10, .LBB1_81
.LBB1_44:                               //  %while.body193.lr.ph
	addi x15 ,  x9 ,  -1
	bgeu x26, x15, .LBB1_45
.LBB1_59:                               //  %while.body193.us.preheader
	xori x14 ,  x26 ,  -1
	add x18 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
	addi x19 ,  x20 ,  -1
	add x23 ,  x26 ,  x20
	sw x26 ,  16 ( x2 )             //  4-byte Folded Spill
	slti x27 ,  x0 ,  1
	add x8 ,  x9 ,  x14
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x18
	add x24 ,  x26 ,  x14
	addi x14 ,  x14 ,  -1
	lui x26 ,  (_ctype_>>12)&1048575
	sw x14 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_60:                               //  %while.body193.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_64 Depth 2
                                        //      Child Loop BB1_72 Depth 2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x26 ,  x30
	add x10 ,  x14 ,  x15
	lbu x14 ,  -1 ( x10 )
	add x13 ,  x14 ,  x13
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  3
	bne x13, x27, .LBB1_62
.LBB1_61:                               //    in Loop: Header=BB1_60 Depth=1
	addi x14 ,  x14 ,  32
.LBB1_62:                               //  %while.body193.us
                                        //    in Loop: Header=BB1_60 Depth=1
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x21
	lw x14 ,  0 ( x14 )
	bltu x0, x14, .LBB1_78
.LBB1_63:                               //  %land.rhs223.us.preheader
                                        //    in Loop: Header=BB1_60 Depth=1
	add x13 ,  x20 ,  x24
	add x14 ,  x0 ,  x18
.LBB1_64:                               //  %land.rhs223.us
                                        //    Parent Loop BB1_60 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x26 ,  x30
	addi x11 ,  x11 ,  1
	add x5 ,  x12 ,  x11
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x27, .LBB1_66
.LBB1_65:                               //    in Loop: Header=BB1_64 Depth=2
	addi x12 ,  x12 ,  32
.LBB1_66:                               //  %land.rhs223.us
                                        //    in Loop: Header=BB1_64 Depth=2
	add x5 ,  x14 ,  x23
	lbu x5 ,  0 ( x5 )
	add x11 ,  x5 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x27, .LBB1_68
.LBB1_67:                               //    in Loop: Header=BB1_64 Depth=2
	addi x5 ,  x5 ,  32
.LBB1_68:                               //  %land.rhs223.us
                                        //    in Loop: Header=BB1_64 Depth=2
	addi x14 ,  x14 ,  1
	bne x5, x12, .LBB1_78
.LBB1_69:                               //  %while.body262.us
                                        //    in Loop: Header=BB1_64 Depth=2
	bne x8, x14, .LBB1_64
.LBB1_70:                               //  %while.cond270.us.preheader
                                        //    in Loop: Header=BB1_60 Depth=1
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x20 ,  x14
	bltu x0, x13, .LBB1_72
	jal x0, .LBB1_80
.LBB1_76:                               //  %land.rhs273.us
                                        //    in Loop: Header=BB1_72 Depth=2
	addi x13 ,  x13 ,  -1
	bne x5, x12, .LBB1_77
.LBB1_71:                               //  %while.cond270.us
                                        //    in Loop: Header=BB1_72 Depth=2
	beq x0, x13, .LBB1_80
.LBB1_72:                               //  %land.rhs273.us
                                        //    Parent Loop BB1_60 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x13 ,  x14
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x26 ,  x30
	addi x11 ,  x11 ,  1
	add x5 ,  x12 ,  x11
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x27, .LBB1_74
.LBB1_73:                               //    in Loop: Header=BB1_72 Depth=2
	addi x12 ,  x12 ,  32
.LBB1_74:                               //  %land.rhs273.us
                                        //    in Loop: Header=BB1_72 Depth=2
	add x5 ,  x13 ,  x19
	lbu x5 ,  0 ( x5 )
	add x11 ,  x5 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x27, .LBB1_76
.LBB1_75:                               //    in Loop: Header=BB1_72 Depth=2
	addi x5 ,  x5 ,  32
	jal x0, .LBB1_76
.LBB1_77:                               //    in Loop: Header=BB1_60 Depth=1
	add x14 ,  x0 ,  x22
.LBB1_78:                               //  %while.cond183.backedge.us
                                        //    in Loop: Header=BB1_60 Depth=1
	add x20 ,  x20 ,  x14
	add x11 ,  x0 ,  x18
	add x25 ,  x9 ,  x20
	sub x12 ,  x25 ,  x15
	call memchr
	beq x0, x25, .LBB1_81
.LBB1_79:                               //  %while.cond183.backedge.us
                                        //    in Loop: Header=BB1_60 Depth=1
	add x15 ,  x0 ,  x25
	beq x0, x10, .LBB1_60
	jal x0, .LBB1_81
.LBB1_8:                                //  %while.cond.preheader
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	sub x12 ,  x9 ,  x19
	add x11 ,  x0 ,  x18
	add x10 ,  x19 ,  x15
	call memchr
	beq x0, x9, .LBB1_81
.LBB1_9:                                //  %while.cond.preheader
	bltu x0, x10, .LBB1_81
.LBB1_10:                               //  %while.body.lr.ph
	slti x23 ,  x0 ,  1
	add x18 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
	sw x26 ,  16 ( x2 )             //  4-byte Folded Spill
	addi x25 ,  x20 ,  -1
	addi x27 ,  x9 ,  -1
	lui x24 ,  (_ctype_>>12)&1048575
	sub x14 ,  x23 ,  x26
	add x26 ,  x0 ,  x18
	add x19 ,  x0 ,  x18
	sw x14 ,  4 ( x2 )              //  4-byte Folded Spill
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1
	sw x14 ,  8 ( x2 )              //  4-byte Folded Spill
	sub x14 ,  x9 ,  x22
	sw x14 ,  12 ( x2 )             //  4-byte Folded Spill
.LBB1_11:                               //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_25 Depth 2
                                        //      Child Loop BB1_33 Depth 2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x24 ,  x30
	add x10 ,  x14 ,  x15
	lbu x14 ,  -1 ( x10 )
	add x13 ,  x14 ,  x13
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  3
	bne x13, x23, .LBB1_13
.LBB1_12:                               //    in Loop: Header=BB1_11 Depth=1
	addi x14 ,  x14 ,  32
.LBB1_13:                               //  %while.body
                                        //    in Loop: Header=BB1_11 Depth=1
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x21
	lw x13 ,  0 ( x14 )
	beq x0, x13, .LBB1_21
.LBB1_14:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	bltu x13, x22, .LBB1_16
.LBB1_15:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	add x14 ,  x0 ,  x13
.LBB1_16:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	beq x26, x18, .LBB1_18
.LBB1_17:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	add x13 ,  x0 ,  x14
	jal x0, .LBB1_18
.LBB1_21:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x26
	bltu x13, x26, .LBB1_23
.LBB1_22:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
.LBB1_23:                               //  %if.end55
                                        //    in Loop: Header=BB1_11 Depth=1
	bgeu x14, x27, .LBB1_31
.LBB1_24:                               //  %land.rhs66.preheader
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x19 ,  x13
.LBB1_25:                               //  %land.rhs66
                                        //    Parent Loop BB1_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x24 ,  x30
	addi x11 ,  x11 ,  1
	add x5 ,  x12 ,  x11
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x23, .LBB1_27
.LBB1_26:                               //    in Loop: Header=BB1_25 Depth=2
	addi x12 ,  x12 ,  32
.LBB1_27:                               //  %land.rhs66
                                        //    in Loop: Header=BB1_25 Depth=2
	add x5 ,  x14 ,  x20
	lbu x5 ,  0 ( x5 )
	add x11 ,  x5 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x23, .LBB1_29
.LBB1_28:                               //    in Loop: Header=BB1_25 Depth=2
	addi x5 ,  x5 ,  32
.LBB1_29:                               //  %land.rhs66
                                        //    in Loop: Header=BB1_25 Depth=2
	bne x5, x12, .LBB1_82
.LBB1_30:                               //  %while.body105
                                        //    in Loop: Header=BB1_25 Depth=2
	addi x14 ,  x14 ,  1
	bltu x14, x27, .LBB1_25
.LBB1_31:                               //  %while.cond112.preheader
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  16 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x19 ,  x14
	add x14 ,  x0 ,  x11
	bltu x26, x14, .LBB1_33
	jal x0, .LBB1_38
.LBB1_37:                               //  %land.rhs116
                                        //    in Loop: Header=BB1_33 Depth=2
	addi x11 ,  x14 ,  -1
	bne x5, x12, .LBB1_38
.LBB1_32:                               //  %while.cond112
                                        //    in Loop: Header=BB1_33 Depth=2
	add x14 ,  x0 ,  x11
	bgeu x26, x14, .LBB1_38
.LBB1_33:                               //  %land.rhs116
                                        //    Parent Loop BB1_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x13
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x24 ,  x30
	addi x11 ,  x11 ,  1
	add x5 ,  x12 ,  x11
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x23, .LBB1_35
.LBB1_34:                               //    in Loop: Header=BB1_33 Depth=2
	addi x12 ,  x12 ,  32
.LBB1_35:                               //  %land.rhs116
                                        //    in Loop: Header=BB1_33 Depth=2
	add x5 ,  x14 ,  x25
	lbu x5 ,  0 ( x5 )
	add x11 ,  x5 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x23, .LBB1_37
.LBB1_36:                               //    in Loop: Header=BB1_33 Depth=2
	addi x5 ,  x5 ,  32
	jal x0, .LBB1_37
.LBB1_38:                               //  %while.end156
                                        //    in Loop: Header=BB1_11 Depth=1
	addi x12 ,  x26 ,  1
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x22
	bgeu x14, x12, .LBB1_19
	jal x0, .LBB1_39
.LBB1_82:                               //  %if.else
                                        //    in Loop: Header=BB1_11 Depth=1
	lw x13 ,  4 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x14 ,  x13
.LBB1_18:                               //  %if.then48
                                        //    in Loop: Header=BB1_11 Depth=1
	add x26 ,  x0 ,  x18
.LBB1_19:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_11 Depth=1
	add x19 ,  x19 ,  x13
	add x11 ,  x0 ,  x18
	add x8 ,  x9 ,  x19
	sub x12 ,  x8 ,  x15
	call memchr
	beq x0, x8, .LBB1_81
.LBB1_20:                               //  %while.cond.backedge
                                        //    in Loop: Header=BB1_11 Depth=1
	add x15 ,  x0 ,  x8
	beq x0, x10, .LBB1_11
	jal x0, .LBB1_81
.LBB1_45:                               //  %while.body193.preheader
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	addi x8 ,  x20 ,  -1
	lui x23 ,  (_ctype_>>12)&1048575
	slti x24 ,  x0 ,  1
	add x20 ,  x0 ,  x18
	addi x19 ,  x15 ,  -1
	add x15 ,  x0 ,  x9
.LBB1_46:                               //  %while.body193
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_51 Depth 2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x23 ,  x30
	add x10 ,  x14 ,  x15
	lbu x14 ,  -1 ( x10 )
	add x13 ,  x14 ,  x13
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  3
	bne x13, x24, .LBB1_48
.LBB1_47:                               //    in Loop: Header=BB1_46 Depth=1
	addi x14 ,  x14 ,  32
.LBB1_48:                               //  %while.body193
                                        //    in Loop: Header=BB1_46 Depth=1
	slli x14 ,  x14 ,  2&31
	add x14 ,  x14 ,  x21
	lw x14 ,  0 ( x14 )
	bltu x0, x14, .LBB1_57
.LBB1_49:                               //  %while.cond270.preheader
                                        //    in Loop: Header=BB1_46 Depth=1
	add x14 ,  x20 ,  x19
	add x13 ,  x0 ,  x26
	bltu x0, x13, .LBB1_51
	jal x0, .LBB1_80
.LBB1_55:                               //  %land.rhs273
                                        //    in Loop: Header=BB1_51 Depth=2
	addi x13 ,  x13 ,  -1
	bne x5, x12, .LBB1_56
.LBB1_50:                               //  %while.cond270
                                        //    in Loop: Header=BB1_51 Depth=2
	beq x0, x13, .LBB1_80
.LBB1_51:                               //  %land.rhs273
                                        //    Parent Loop BB1_46 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x13 ,  x14
	lui x30 ,  _ctype_&4095
	lbu x12 ,  0 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x11 ,  x23 ,  x30
	addi x11 ,  x11 ,  1
	add x5 ,  x12 ,  x11
	lbu x5 ,  0 ( x5 )
	andi x5 ,  x5 ,  3
	bne x5, x24, .LBB1_53
.LBB1_52:                               //    in Loop: Header=BB1_51 Depth=2
	addi x12 ,  x12 ,  32
.LBB1_53:                               //  %land.rhs273
                                        //    in Loop: Header=BB1_51 Depth=2
	add x5 ,  x13 ,  x8
	lbu x5 ,  0 ( x5 )
	add x11 ,  x5 ,  x11
	lbu x11 ,  0 ( x11 )
	andi x11 ,  x11 ,  3
	bne x11, x24, .LBB1_55
.LBB1_54:                               //    in Loop: Header=BB1_51 Depth=2
	addi x5 ,  x5 ,  32
	jal x0, .LBB1_55
.LBB1_56:                               //    in Loop: Header=BB1_46 Depth=1
	add x14 ,  x0 ,  x22
.LBB1_57:                               //  %while.cond183.backedge
                                        //    in Loop: Header=BB1_46 Depth=1
	add x20 ,  x20 ,  x14
	add x11 ,  x0 ,  x18
	add x25 ,  x9 ,  x20
	sub x12 ,  x25 ,  x15
	call memchr
	beq x0, x25, .LBB1_81
.LBB1_58:                               //  %while.cond183.backedge
                                        //    in Loop: Header=BB1_46 Depth=1
	add x15 ,  x0 ,  x25
	beq x0, x10, .LBB1_46
	jal x0, .LBB1_81
.LBB1_80:                               //  %cleanup327
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x20 ,  x15
.LBB1_81:                               //  %cleanup331
	add x10 ,  x0 ,  x18
	lw x8 ,  1052 ( x2 )            //  4-byte Folded Reload
	lw x27 ,  1056 ( x2 )           //  4-byte Folded Reload
	lw x26 ,  1060 ( x2 )           //  4-byte Folded Reload
	lw x25 ,  1064 ( x2 )           //  4-byte Folded Reload
	lw x24 ,  1068 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1072 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1076 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1080 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1084 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1088 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1092 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1096 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1100 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1104
	.cfi_def_cfa 2, 0
	ret
.LBB1_39:                               //  %cleanup
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x19 ,  x15
	jal x0, .LBB1_81
.Lfunc_end1:
	.size	two_way_long_needle, .Lfunc_end1-two_way_long_needle
	.cfi_endproc
                                        //  -- End function
	.type	critical_factorization,@function //  -- Begin function critical_factorization
critical_factorization:                 //  @critical_factorization
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sltiu x13 ,  x11 ,  2
	sw x9 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	bltu x0, x13, .LBB2_32
.LBB2_1:                                //  %while.body.preheader
	slti x5 ,  x0 ,  1
	add x29 ,  x0 ,  x0
	addi x15 ,  x0 ,  -1
	lui x14 ,  (_ctype_>>12)&1048575
	add x6 ,  x0 ,  x5
	add x7 ,  x0 ,  x5
	add x16 ,  x0 ,  x5
	jal x0, .LBB2_2
.LBB2_7:                                //  %if.then
                                        //    in Loop: Header=BB2_2 Depth=1
	sub x6 ,  x16 ,  x15
	add x7 ,  x0 ,  x5
	add x29 ,  x0 ,  x16
	add x16 ,  x7 ,  x29
	bgeu x16, x11, .LBB2_14
.LBB2_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x17 ,  x0 ,  x29
	add x29 ,  x16 ,  x10
	lui x30 ,  _ctype_&4095
	lbu x29 ,  0 ( x29 )
	srli x30 ,  x30 ,  12&31
	or x8 ,  x14 ,  x30
	addi x8 ,  x8 ,  1
	add x9 ,  x29 ,  x8
	lbu x9 ,  0 ( x9 )
	andi x9 ,  x9 ,  3
	bne x9, x5, .LBB2_4
.LBB2_3:                                //    in Loop: Header=BB2_2 Depth=1
	addi x29 ,  x29 ,  32
.LBB2_4:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	add x9 ,  x7 ,  x15
	add x9 ,  x9 ,  x10
	lbu x9 ,  0 ( x9 )
	add x8 ,  x9 ,  x8
	lbu x8 ,  0 ( x8 )
	andi x8 ,  x8 ,  3
	bne x8, x5, .LBB2_6
.LBB2_5:                                //    in Loop: Header=BB2_2 Depth=1
	addi x9 ,  x9 ,  32
.LBB2_6:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=1
	andi x8 ,  x9 ,  255
	andi x29 ,  x29 ,  255
	bltu x29, x8, .LBB2_7
.LBB2_8:                                //  %if.else
                                        //    in Loop: Header=BB2_2 Depth=1
	bne x29, x8, .LBB2_12
.LBB2_9:                                //  %if.then39
                                        //    in Loop: Header=BB2_2 Depth=1
	bne x7, x6, .LBB2_10
.LBB2_11:                               //  %if.else43
                                        //    in Loop: Header=BB2_2 Depth=1
	add x29 ,  x7 ,  x17
	add x6 ,  x0 ,  x7
	add x7 ,  x0 ,  x5
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_2
	jal x0, .LBB2_14
.LBB2_12:                               //  %if.else45
                                        //    in Loop: Header=BB2_2 Depth=1
	addi x29 ,  x17 ,  1
	add x7 ,  x0 ,  x5
	add x6 ,  x0 ,  x5
	add x15 ,  x0 ,  x17
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_2
	jal x0, .LBB2_14
.LBB2_10:                               //  %if.then42
                                        //    in Loop: Header=BB2_2 Depth=1
	addi x7 ,  x7 ,  1
	add x29 ,  x0 ,  x17
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_2
.LBB2_14:                               //  %while.end
	sw x6 ,  0 ( x12 )
	bltu x0, x13, .LBB2_15
.LBB2_16:                               //  %while.body53.preheader
	slti x6 ,  x0 ,  1
	add x29 ,  x0 ,  x0
	addi x5 ,  x0 ,  -1
	add x13 ,  x0 ,  x6
	add x7 ,  x0 ,  x6
	add x16 ,  x0 ,  x6
	jal x0, .LBB2_17
.LBB2_22:                               //  %if.then96
                                        //    in Loop: Header=BB2_17 Depth=1
	sub x13 ,  x16 ,  x5
	add x7 ,  x0 ,  x6
	add x29 ,  x0 ,  x16
	add x16 ,  x7 ,  x29
	bgeu x16, x11, .LBB2_29
.LBB2_17:                               //  %while.body53
                                        //  =>This Inner Loop Header: Depth=1
	add x17 ,  x0 ,  x29
	add x29 ,  x7 ,  x5
	lui x30 ,  _ctype_&4095
	add x29 ,  x29 ,  x10
	srli x30 ,  x30 ,  12&31
	lbu x29 ,  0 ( x29 )
	or x8 ,  x14 ,  x30
	addi x8 ,  x8 ,  1
	add x9 ,  x29 ,  x8
	lbu x9 ,  0 ( x9 )
	andi x9 ,  x9 ,  3
	bne x9, x6, .LBB2_19
.LBB2_18:                               //    in Loop: Header=BB2_17 Depth=1
	addi x29 ,  x29 ,  32
.LBB2_19:                               //  %while.body53
                                        //    in Loop: Header=BB2_17 Depth=1
	add x9 ,  x16 ,  x10
	lbu x9 ,  0 ( x9 )
	add x8 ,  x9 ,  x8
	lbu x8 ,  0 ( x8 )
	andi x8 ,  x8 ,  3
	bne x8, x6, .LBB2_21
.LBB2_20:                               //    in Loop: Header=BB2_17 Depth=1
	addi x9 ,  x9 ,  32
.LBB2_21:                               //  %while.body53
                                        //    in Loop: Header=BB2_17 Depth=1
	andi x8 ,  x9 ,  255
	andi x29 ,  x29 ,  255
	bltu x29, x8, .LBB2_22
.LBB2_23:                               //  %if.else99
                                        //    in Loop: Header=BB2_17 Depth=1
	bne x8, x29, .LBB2_27
.LBB2_24:                               //  %if.then104
                                        //    in Loop: Header=BB2_17 Depth=1
	bne x7, x13, .LBB2_25
.LBB2_26:                               //  %if.else109
                                        //    in Loop: Header=BB2_17 Depth=1
	add x29 ,  x7 ,  x17
	add x13 ,  x0 ,  x7
	add x7 ,  x0 ,  x6
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_27:                               //  %if.else112
                                        //    in Loop: Header=BB2_17 Depth=1
	addi x29 ,  x17 ,  1
	add x7 ,  x0 ,  x6
	add x13 ,  x0 ,  x6
	add x5 ,  x0 ,  x17
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_25:                               //  %if.then107
                                        //    in Loop: Header=BB2_17 Depth=1
	addi x7 ,  x7 ,  1
	add x29 ,  x0 ,  x17
	add x16 ,  x7 ,  x29
	bltu x16, x11, .LBB2_17
	jal x0, .LBB2_29
.LBB2_32:                               //  %while.end.thread
	slti x13 ,  x0 ,  1
	addi x15 ,  x0 ,  -1
	sw x13 ,  0 ( x12 )
	add x5 ,  x0 ,  x15
.LBB2_29:                               //  %while.end116
	addi x10 ,  x15 ,  1
	addi x15 ,  x5 ,  1
	bltu x15, x10, .LBB2_31
.LBB2_30:                               //  %if.end123
	add x10 ,  x0 ,  x15
	sw x13 ,  0 ( x12 )
.LBB2_31:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB2_15:
	addi x5 ,  x0 ,  -1
	slti x13 ,  x0 ,  1
	addi x10 ,  x15 ,  1
	addi x15 ,  x5 ,  1
	bgeu x15, x10, .LBB2_30
	jal x0, .LBB2_31
.Lfunc_end2:
	.size	critical_factorization, .Lfunc_end2-critical_factorization
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
