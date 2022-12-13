	.text
	.file	"gdtoa-gethex.c"
	.globl	__gethex                //  -- Begin function __gethex
	.type	__gethex,@function
__gethex:                               //  @__gethex
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	lui x30 ,  _C_numeric_locale&4095
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (_C_numeric_locale>>12)&1048575
	sw x22 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x21 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x10
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x14 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x13 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x12 ,  20 ( x2 )             //  4-byte Folded Spill
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x22 ,  0 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	add x23 ,  x0 ,  x10
	lw x14 ,  0 ( x19 )
	addi x27 ,  x0 ,  -1
	addi x26 ,  x23 ,  -1
	add x15 ,  x26 ,  x22
	lbu x9 ,  0 ( x15 )
	addi x24 ,  x14 ,  1
.LBB0_1:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x24 )
	addi x27 ,  x27 ,  1
	addi x24 ,  x24 ,  1
	xori x14 ,  x15 ,  48
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %while.end
	lui x30 ,  __hexdig&4095
	lui x8 ,  (__hexdig>>12)&1048575
	add x18 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_14
.LBB0_3:
	add x20 ,  x0 ,  x18
.LBB0_4:                                //  %if.end27
	lui x30 ,  __hexdig&4095
	add x25 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x15 ,  x15 ,  x14
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_7
.LBB0_5:                                //  %while.cond28.while.cond28_crit_edge.preheader
	add x25 ,  x0 ,  x24
.LBB0_6:                                //  %while.cond28.while.cond28_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x25 )
	lui x30 ,  __hexdig&4095
	addi x25 ,  x25 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x15 ,  x15 ,  x14
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_6
.LBB0_7:                                //  %while.end34
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call strncmp
	bltu x0, x20, .LBB0_12
.LBB0_8:                                //  %while.end34
	bltu x0, x10, .LBB0_12
.LBB0_9:                                //  %if.then39
	add x15 ,  x26 ,  x25
	add x20 ,  x23 ,  x25
.LBB0_10:                               //  %while.cond41
                                        //  =>This Inner Loop Header: Depth=1
	lbu x14 ,  1 ( x15 )
	lui x30 ,  __hexdig&4095
	addi x15 ,  x15 ,  1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x8 ,  x30
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB0_10
.LBB0_11:
	add x25 ,  x0 ,  x15
.LBB0_12:                               //  %if.end48
	beq x0, x20, .LBB0_16
.LBB0_13:                               //  %if.then50
	sub x15 ,  x25 ,  x20
	slli x15 ,  x15 ,  2&31
	sub x11 ,  x0 ,  x15
	jal x0, .LBB0_17
.LBB0_14:                               //  %if.then
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call strncmp
	beq x0, x10, .LBB0_59
.LBB0_15:
	add x11 ,  x0 ,  x0
	slti x18 ,  x0 ,  1
	add x20 ,  x0 ,  x24
	lbu x15 ,  0 ( x20 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  112
	beq x0, x15, .LBB0_18
.LBB0_81:
	add x26 ,  x0 ,  x20
	sw x26 ,  0 ( x19 )
	beq x0, x18, .LBB0_31
.LBB0_82:                               //  %if.then88
	add x22 ,  x0 ,  x0
	bne x27, x22, .LBB0_161
.LBB0_83:
	addi x22 ,  x0 ,  6
	jal x0, .LBB0_161
.LBB0_16:
	add x11 ,  x0 ,  x0
.LBB0_17:                               //  %pcheckthread-pre-split
	add x20 ,  x0 ,  x25
	lbu x15 ,  0 ( x20 )
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  112
	bltu x0, x15, .LBB0_81
.LBB0_18:                               //  %sw.bb
	lbu x15 ,  1 ( x20 )
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	add x19 ,  x0 ,  x0
	xori x14 ,  x15 ,  43
	beq x0, x14, .LBB0_21
.LBB0_19:                               //  %sw.bb
	xori x14 ,  x15 ,  45
	bltu x0, x14, .LBB0_22
.LBB0_20:                               //  %sw.bb56
	slti x19 ,  x0 ,  1
.LBB0_21:                               //  %sw.bb57
	lbu x15 ,  2 ( x20 )
	addi x14 ,  x0 ,  2
	jal x0, .LBB0_23
.LBB0_22:
	slti x14 ,  x0 ,  1
.LBB0_23:                               //  %sw.epilog
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x8 ,  x30
	add x15 ,  x15 ,  x13
	lbu x15 ,  0 ( x15 )
	addi x13 ,  x15 ,  -1
	andi x12 ,  x13 ,  255
	addi x13 ,  x0 ,  24
	bgeu x13, x12, .LBB0_25
.LBB0_24:
	add x26 ,  x0 ,  x20
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x26 ,  0 ( x19 )
	bltu x0, x18, .LBB0_82
.LBB0_31:                               //  %if.end90
	xori x15 ,  x24 ,  -1
	sw x11 ,  28 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x15 ,  x20 ,  x15
	slti x14 ,  x15 ,  8
	bltu x0, x14, .LBB0_34
.LBB0_32:                               //  %for.body.preheader
	addi x14 ,  x0 ,  15
.LBB0_33:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x0 ,  x15
	addi x11 ,  x11 ,  1
	srli x15 ,  x13 ,  1&31
	bltu x14, x13, .LBB0_33
.LBB0_34:                               //  %for.end
	add x10 ,  x0 ,  x21
	call _Balloc
	beq x0, x10, .LBB0_163
.LBB0_35:                               //  %if.end102
	addi x18 ,  x10 ,  20
	add x25 ,  x0 ,  x0
	sw x10 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	bgeu x24, x20, .LBB0_45
.LBB0_36:                               //  %while.body106.lr.ph.lr.ph
	slti x15 ,  x0 ,  1
	add x19 ,  x0 ,  x25
	sub x26 ,  x0 ,  x23
	add x21 ,  x0 ,  x18
	sub x27 ,  x15 ,  x23
	jal x0, .LBB0_38
.LBB0_37:                               //  %if.end133
                                        //    in Loop: Header=BB0_38 Depth=1
	lbu x15 ,  0 ( x20 )
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x15 ,  x15 ,  x14
	lbu x15 ,  0 ( x15 )
	andi x15 ,  x15 ,  15
	sll x15 ,  x15 ,  x19
	addi x19 ,  x19 ,  4
	or x25 ,  x25 ,  x15
	bgeu x24, x20, .LBB0_46
.LBB0_38:                               //  %while.body106.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_39 Depth 2
	add x15 ,  x0 ,  x20
.LBB0_39:                               //  %while.body106
                                        //    Parent Loop BB0_38 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x14 ,  -1 ( x15 )
	addi x20 ,  x15 ,  -1
	bne x14, x9, .LBB0_43
.LBB0_40:                               //  %land.lhs.true112
                                        //    in Loop: Header=BB0_39 Depth=2
	add x10 ,  x26 ,  x15
	bltu x10, x24, .LBB0_43
.LBB0_41:                               //  %land.lhs.true117
                                        //    in Loop: Header=BB0_39 Depth=2
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call strncmp
	bltu x0, x10, .LBB0_43
.LBB0_42:                               //  %if.then124
                                        //    in Loop: Header=BB0_39 Depth=2
	add x15 ,  x27 ,  x20
	bltu x24, x15, .LBB0_39
	jal x0, .LBB0_46
.LBB0_43:                               //  %if.end128
                                        //    in Loop: Header=BB0_38 Depth=1
	xori x15 ,  x19 ,  32
	bltu x0, x15, .LBB0_37
.LBB0_44:                               //  %if.then131
                                        //    in Loop: Header=BB0_38 Depth=1
	add x19 ,  x0 ,  x0
	sw x25 ,  0 ( x18 )
	addi x18 ,  x18 ,  4
	add x25 ,  x0 ,  x19
	jal x0, .LBB0_37
.LBB0_25:                               //  %if.end67
	add x14 ,  x14 ,  x20
	lui x30 ,  __hexdig&4095
	sw x11 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x10 ,  x15 ,  -16
	lbu x12 ,  1 ( x14 )
	srli x30 ,  x30 ,  12&31
	addi x26 ,  x14 ,  1
	or x11 ,  x8 ,  x30
	add x12 ,  x12 ,  x11
	lbu x21 ,  0 ( x12 )
	addi x14 ,  x21 ,  -1
	andi x14 ,  x14 ,  255
	bltu x13, x14, .LBB0_28
.LBB0_26:                               //  %while.body78.preheader
	addi x25 ,  x0 ,  10
.LBB0_27:                               //  %while.body78
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x0 ,  x25
	call __mulsi3
	lbu x15 ,  1 ( x26 )
	lui x30 ,  __hexdig&4095
	addi x26 ,  x26 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x14 ,  x15 ,  x14
	andi x15 ,  x21 ,  255
	lbu x21 ,  0 ( x14 )
	add x15 ,  x15 ,  x10
	addi x10 ,  x15 ,  -16
	addi x14 ,  x21 ,  -1
	andi x14 ,  x14 ,  255
	sltiu x14 ,  x14 ,  25
	bltu x0, x14, .LBB0_27
.LBB0_28:                               //  %while.end80
	add x14 ,  x0 ,  x0
	beq x19, x14, .LBB0_30
.LBB0_29:                               //  %while.end80
	addi x14 ,  x0 ,  16
	sub x10 ,  x14 ,  x15
.LBB0_30:                               //  %while.end80
	lw x11 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x11 ,  x10
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x26 ,  0 ( x19 )
	bltu x0, x18, .LBB0_82
	jal x0, .LBB0_31
.LBB0_45:
	add x21 ,  x0 ,  x18
.LBB0_46:                               //  %while.end139
	lw x26 ,  16 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x18 ,  x21
	add x10 ,  x0 ,  x25
	sw x25 ,  0 ( x18 )
	addi x15 ,  x15 ,  4
	srai x14 ,  x15 ,  2&31
	slli x8 ,  x15 ,  3&31
	sw x14 ,  16 ( x26 )
	call __hi0bits
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x8 ,  x10
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  0 ( x24 )
	bge x23, x15, .LBB0_52
.LBB0_47:                               //  %if.then154
	sub x22 ,  x15 ,  x23
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x22
	call __any_on
	beq x0, x10, .LBB0_73
.LBB0_48:                               //  %if.then158
	addi x15 ,  x22 ,  -1
	lw x7 ,  28 ( x2 )              //  4-byte Folded Reload
	slti x8 ,  x0 ,  1
	srai x14 ,  x15 ,  5&31
	andi x13 ,  x15 ,  31
	slli x14 ,  x14 ,  2&31
	sll x13 ,  x8 ,  x13
	add x14 ,  x14 ,  x26
	lw x14 ,  20 ( x14 )
	and x14 ,  x13 ,  x14
	beq x0, x14, .LBB0_74
.LBB0_49:                               //  %if.then166
	slti x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_91
.LBB0_50:                               //  %land.lhs.true169
	addi x11 ,  x22 ,  -2
	add x10 ,  x0 ,  x26
	add x9 ,  x0 ,  x7
	call __any_on
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB0_104
.LBB0_51:                               //  %land.lhs.true169
	addi x8 ,  x0 ,  3
	jal x0, .LBB0_105
.LBB0_52:                               //  %if.else
	add x8 ,  x0 ,  x0
	bge x15, x23, .LBB0_65
.LBB0_53:                               //  %if.then180
	sub x22 ,  x23 ,  x15
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x22
	call __lshift
	lw x7 ,  28 ( x2 )              //  4-byte Folded Reload
	add x26 ,  x0 ,  x10
	addi x21 ,  x26 ,  20
	sub x7 ,  x7 ,  x22
	lw x15 ,  8 ( x24 )
	blt x15, x7, .LBB0_109
.LBB0_54:                               //  %if.end191
	lw x15 ,  4 ( x24 )
	bge x7, x15, .LBB0_66
.LBB0_55:                               //  %if.then194
	sub x9 ,  x15 ,  x7
	bge x9, x23, .LBB0_84
.LBB0_56:                               //  %if.end224
	slti x18 ,  x0 ,  1
	addi x22 ,  x9 ,  -1
	add x10 ,  x0 ,  x18
	bltu x0, x8, .LBB0_130
.LBB0_57:                               //  %if.else228
	bge x0, x22, .LBB0_129
.LBB0_58:                               //  %if.then231
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x22
	call __any_on
	jal x0, .LBB0_130
.LBB0_59:                               //  %if.end
	add x20 ,  x23 ,  x24
	lui x30 ,  __hexdig&4095
	lbu x15 ,  0 ( x20 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_80
.LBB0_60:                               //  %while.cond16.preheader
	xori x13 ,  x15 ,  48
	add x24 ,  x0 ,  x20
	bltu x0, x13, .LBB0_64
.LBB0_61:                               //  %while.body20.preheader
	add x24 ,  x0 ,  x20
.LBB0_62:                               //  %while.body20
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  1 ( x24 )
	addi x24 ,  x24 ,  1
	xori x14 ,  x15 ,  48
	beq x0, x14, .LBB0_62
.LBB0_63:                               //  %while.end21.loopexit
	lui x30 ,  __hexdig&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  0 ( x14 )
.LBB0_64:                               //  %while.end21
	xori x14 ,  x14 ,  0
	slti x27 ,  x0 ,  1
	sltiu x18 ,  x14 ,  1
	jal x0, .LBB0_4
.LBB0_65:
	lw x7 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x15 ,  8 ( x24 )
	bge x15, x7, .LBB0_54
	jal x0, .LBB0_109
.LBB0_66:
	slti x22 ,  x0 ,  1
	beq x0, x8, .LBB0_147
.LBB0_67:                               //  %if.then248
	lw x15 ,  12 ( x24 )
	xori x14 ,  x15 ,  3
	beq x0, x14, .LBB0_98
.LBB0_68:                               //  %if.then248
	xori x14 ,  x15 ,  2
	beq x0, x14, .LBB0_97
.LBB0_69:                               //  %if.then248
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_72
.LBB0_70:                               //  %sw.bb250
	andi x15 ,  x8 ,  2
	beq x0, x15, .LBB0_72
.LBB0_71:                               //  %land.lhs.true253
	lw x15 ,  0 ( x21 )
	or x15 ,  x8 ,  x15
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_99
	jal x0, .LBB0_72
.LBB0_73:
	add x8 ,  x0 ,  x0
	lw x7 ,  28 ( x2 )              //  4-byte Folded Reload
.LBB0_74:                               //  %if.end176
	lw x14 ,  16 ( x26 )
	srai x15 ,  x22 ,  5&31
	add x12 ,  x0 ,  x21
	bge x15, x14, .LBB0_106
.LBB0_75:                               //  %if.then.i543
	addi x13 ,  x26 ,  20
	slli x14 ,  x14 ,  2&31
	slli x15 ,  x15 ,  2&31
	andi x12 ,  x22 ,  31
	add x14 ,  x14 ,  x13
	beq x0, x12, .LBB0_92
.LBB0_76:                               //  %if.then3.i
	add x11 ,  x15 ,  x13
	lw x13 ,  0 ( x11 )
	addi x11 ,  x11 ,  4
	srl x13 ,  x13 ,  x12
	bgeu x11, x14, .LBB0_94
.LBB0_77:                               //  %while.body.i558.preheader
	addi x11 ,  x0 ,  32
	sub x10 ,  x11 ,  x12
	addi x11 ,  x26 ,  24
.LBB0_78:                               //  %while.body.i558
                                        //  =>This Inner Loop Header: Depth=1
	add x5 ,  x15 ,  x11
	lw x6 ,  0 ( x5 )
	sll x6 ,  x6 ,  x10
	or x13 ,  x13 ,  x6
	sw x13 ,  -4 ( x11 )
	addi x11 ,  x11 ,  4
	lw x13 ,  0 ( x5 )
	add x5 ,  x15 ,  x11
	srl x13 ,  x13 ,  x12
	bltu x5, x14, .LBB0_78
.LBB0_79:                               //  %while.end.i564.loopexit
	addi x15 ,  x11 ,  -4
	add x14 ,  x0 ,  x0
	add x12 ,  x0 ,  x15
	beq x13, x14, .LBB0_96
.LBB0_95:                               //  %while.end.i564
	addi x12 ,  x15 ,  4
.LBB0_96:                               //  %while.end.i564
	sw x13 ,  0 ( x15 )
	sub x15 ,  x12 ,  x21
	srai x14 ,  x15 ,  2&31
	sw x14 ,  16 ( x26 )
	bltu x0, x15, .LBB0_108
	jal x0, .LBB0_107
.LBB0_80:
	add x11 ,  x0 ,  x0
	slti x18 ,  x0 ,  1
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  112
	beq x0, x15, .LBB0_18
	jal x0, .LBB0_81
.LBB0_84:                               //  %if.then199
	lw x14 ,  12 ( x24 )
	xori x13 ,  x14 ,  3
	beq x0, x13, .LBB0_113
.LBB0_85:                               //  %if.then199
	xori x13 ,  x14 ,  2
	beq x0, x13, .LBB0_111
.LBB0_86:                               //  %if.then199
	xori x14 ,  x14 ,  1
	bltu x0, x14, .LBB0_112
.LBB0_87:                               //  %sw.bb200
	bne x23, x9, .LBB0_112
.LBB0_88:                               //  %land.lhs.true203
	slti x14 ,  x23 ,  2
	bltu x0, x14, .LBB0_114
.LBB0_89:                               //  %lor.lhs.false206
	addi x11 ,  x23 ,  -1
	add x10 ,  x0 ,  x26
	call __any_on
	beq x0, x10, .LBB0_112
.LBB0_90:                               //  %lor.lhs.false206.one_bit_crit_edge
	lw x15 ,  4 ( x24 )
	jal x0, .LBB0_114
.LBB0_91:
	addi x8 ,  x0 ,  2
	lw x14 ,  16 ( x26 )
	srai x15 ,  x22 ,  5&31
	add x12 ,  x0 ,  x21
	blt x15, x14, .LBB0_75
	jal x0, .LBB0_106
.LBB0_92:                               //  %while.body14.i.preheader
	add x12 ,  x0 ,  x21
.LBB0_93:                               //  %while.body14.i
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x15 ,  x12
	lw x13 ,  0 ( x13 )
	sw x13 ,  0 ( x12 )
	addi x12 ,  x12 ,  4
	add x13 ,  x15 ,  x12
	bltu x13, x14, .LBB0_93
	jal x0, .LBB0_106
.LBB0_94:
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x0
	add x12 ,  x0 ,  x15
	beq x13, x14, .LBB0_96
	jal x0, .LBB0_95
.LBB0_97:                               //  %sw.bb261
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	sub x14 ,  x15 ,  x14
	add x15 ,  x0 ,  x14
	beq x0, x15, .LBB0_72
.LBB0_99:                               //  %if.then266
	lw x9 ,  16 ( x26 )
	addi x15 ,  x26 ,  20
	slli x8 ,  x9 ,  2&31
	add x14 ,  x8 ,  x15
.LBB0_100:                              //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	xori x12 ,  x13 ,  -1
	bltu x0, x12, .LBB0_110
.LBB0_101:                              //  %if.end.i
                                        //    in Loop: Header=BB0_100 Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x15, x14, .LBB0_100
.LBB0_102:                              //  %do.end.i
	lw x15 ,  8 ( x26 )
	bge x9, x15, .LBB0_115
.LBB0_103:
	add x15 ,  x0 ,  x9
	jal x0, .LBB0_117
.LBB0_98:
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	bltu x0, x15, .LBB0_99
.LBB0_72:                               //  %if.else312
	ori x22 ,  x22 ,  16
	jal x0, .LBB0_147
.LBB0_104:
	addi x8 ,  x0 ,  2
.LBB0_105:                              //  %land.lhs.true169
	add x7 ,  x0 ,  x9
	lw x14 ,  16 ( x26 )
	srai x15 ,  x22 ,  5&31
	add x12 ,  x0 ,  x21
	blt x15, x14, .LBB0_75
.LBB0_106:                              //  %if.end19.i571
	sub x15 ,  x12 ,  x21
	srai x14 ,  x15 ,  2&31
	sw x14 ,  16 ( x26 )
	bltu x0, x15, .LBB0_108
.LBB0_107:                              //  %if.then24.i572
	sw x0 ,  0 ( x21 )
.LBB0_108:                              //  %rshift.exit573
	add x7 ,  x7 ,  x22
	lw x15 ,  8 ( x24 )
	bge x15, x7, .LBB0_54
.LBB0_109:                              //  %ovfl
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call _Bfree
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  163
	sw x0 ,  0 ( x15 )
	jal x0, .LBB0_161
.LBB0_110:                              //  %if.then.i536
	addi x14 ,  x13 ,  1
	add x13 ,  x0 ,  x9
	sw x14 ,  0 ( x15 )
	xori x15 ,  x22 ,  2
	bltu x0, x15, .LBB0_121
.LBB0_118:                              //  %if.then273
	lw x15 ,  0 ( x24 )
	addi x15 ,  x15 ,  -1
	bne x23, x15, .LBB0_128
.LBB0_119:                              //  %land.lhs.true278
	srai x15 ,  x23 ,  5&31
	andi x14 ,  x23 ,  31
	slti x22 ,  x0 ,  1
	slli x15 ,  x15 ,  2&31
	sll x14 ,  x22 ,  x14
	add x15 ,  x15 ,  x26
	lw x15 ,  20 ( x15 )
	and x15 ,  x14 ,  x15
	add x14 ,  x0 ,  x0
	bne x15, x14, .LBB0_157
.LBB0_128:
	addi x22 ,  x0 ,  2
	jal x0, .LBB0_157
.LBB0_111:                              //  %sw.bb212
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	beq x0, x14, .LBB0_114
.LBB0_112:                              //  %sw.epilog223
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call _Bfree
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  80
	sw x0 ,  0 ( x15 )
	jal x0, .LBB0_161
.LBB0_113:                              //  %sw.bb216
	lw x14 ,  8 ( x2 )              //  4-byte Folded Reload
	beq x0, x14, .LBB0_112
.LBB0_114:                              //  %one_bit
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  98
	sw x15 ,  0 ( x14 )
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x21 )
	sw x15 ,  16 ( x26 )
	sw x26 ,  0 ( x14 )
	jal x0, .LBB0_161
.LBB0_115:                              //  %if.then4.i
	lw x15 ,  4 ( x26 )
	add x10 ,  x0 ,  x19
	add x18 ,  x0 ,  x7
	addi x11 ,  x15 ,  1
	call _Balloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_166
.LBB0_116:                              //  %if.end7.i
	lw x15 ,  16 ( x26 )
	addi x10 ,  x20 ,  12
	addi x11 ,  x26 ,  12
	slli x15 ,  x15 ,  2&31
	addi x12 ,  x15 ,  8
	call memcpy
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call _Bfree
	lw x15 ,  16 ( x20 )
	add x26 ,  x0 ,  x20
	add x7 ,  x0 ,  x18
.LBB0_117:                              //  %if.end12.i
	slli x14 ,  x15 ,  2&31
	slti x13 ,  x0 ,  1
	add x14 ,  x14 ,  x26
	sw x13 ,  20 ( x14 )
	addi x13 ,  x15 ,  1
	sw x13 ,  16 ( x26 )
	xori x15 ,  x22 ,  2
	beq x0, x15, .LBB0_118
.LBB0_121:                              //  %if.else287
	blt x9, x13, .LBB0_125
.LBB0_122:                              //  %lor.lhs.false291
	andi x9 ,  x23 ,  31
	beq x0, x9, .LBB0_157
.LBB0_123:                              //  %land.lhs.true295
	add x15 ,  x26 ,  x8
	add x18 ,  x0 ,  x7
	lw x10 ,  16 ( x15 )
	call __hi0bits
	addi x15 ,  x0 ,  32
	sub x15 ,  x15 ,  x9
	bge x10, x15, .LBB0_162
.LBB0_124:                              //  %land.lhs.true295.if.then302_crit_edge
	lw x13 ,  16 ( x26 )
	add x7 ,  x0 ,  x18
.LBB0_125:                              //  %if.then302
	addi x15 ,  x26 ,  20
	add x12 ,  x0 ,  x15
	bge x0, x13, .LBB0_153
.LBB0_126:                              //  %if.then.i
	lw x14 ,  20 ( x26 )
	xori x12 ,  x13 ,  1
	srli x14 ,  x14 ,  1&31
	bltu x0, x12, .LBB0_148
.LBB0_127:
	add x13 ,  x0 ,  x15
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x13
	bne x14, x11, .LBB0_151
	jal x0, .LBB0_152
.LBB0_129:
	add x10 ,  x0 ,  x0
.LBB0_130:                              //  %if.end234
	srai x14 ,  x22 ,  5&31
	andi x15 ,  x22 ,  31
	slli x14 ,  x14 ,  2&31
	sll x15 ,  x18 ,  x15
	add x14 ,  x14 ,  x21
	lw x14 ,  0 ( x14 )
	and x15 ,  x15 ,  x14
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_132
.LBB0_131:                              //  %if.end234
	ori x8 ,  x10 ,  2
	jal x0, .LBB0_133
.LBB0_132:
	add x8 ,  x0 ,  x10
.LBB0_133:                              //  %if.end234
	lw x12 ,  16 ( x26 )
	addi x15 ,  x26 ,  20
	srai x13 ,  x9 ,  5&31
	add x10 ,  x0 ,  x15
	bge x13, x12, .LBB0_144
.LBB0_134:                              //  %if.then.i582
	addi x11 ,  x26 ,  20
	slli x12 ,  x12 ,  2&31
	slli x13 ,  x13 ,  2&31
	andi x10 ,  x9 ,  31
	add x12 ,  x12 ,  x11
	beq x0, x10, .LBB0_139
.LBB0_135:                              //  %if.then3.i588
	add x5 ,  x13 ,  x11
	lw x11 ,  0 ( x5 )
	addi x5 ,  x5 ,  4
	srl x11 ,  x11 ,  x10
	bgeu x5, x12, .LBB0_141
.LBB0_136:                              //  %while.body.i599.preheader
	addi x5 ,  x0 ,  32
	sub x6 ,  x5 ,  x10
	addi x5 ,  x26 ,  24
.LBB0_137:                              //  %while.body.i599
                                        //  =>This Inner Loop Header: Depth=1
	add x7 ,  x13 ,  x5
	lw x16 ,  0 ( x7 )
	sll x16 ,  x16 ,  x6
	or x11 ,  x11 ,  x16
	sw x11 ,  -4 ( x5 )
	addi x5 ,  x5 ,  4
	lw x11 ,  0 ( x7 )
	add x7 ,  x13 ,  x5
	srl x11 ,  x11 ,  x10
	bltu x7, x12, .LBB0_137
.LBB0_138:                              //  %while.end.i605.loopexit
	addi x13 ,  x5 ,  -4
	add x10 ,  x0 ,  x13
	beq x11, x14, .LBB0_143
.LBB0_142:                              //  %while.end.i605
	addi x10 ,  x13 ,  4
.LBB0_143:                              //  %while.end.i605
	sw x11 ,  0 ( x13 )
	sub x14 ,  x10 ,  x15
	srai x13 ,  x14 ,  2&31
	sw x13 ,  16 ( x26 )
	bltu x0, x14, .LBB0_146
	jal x0, .LBB0_145
.LBB0_139:                              //  %while.body14.i611.preheader
	add x10 ,  x0 ,  x15
.LBB0_140:                              //  %while.body14.i611
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x13 ,  x10
	lw x14 ,  0 ( x14 )
	sw x14 ,  0 ( x10 )
	addi x10 ,  x10 ,  4
	add x14 ,  x13 ,  x10
	bltu x14, x12, .LBB0_140
.LBB0_144:                              //  %if.end19.i618
	sub x14 ,  x10 ,  x15
	srai x13 ,  x14 ,  2&31
	sw x13 ,  16 ( x26 )
	bltu x0, x14, .LBB0_146
.LBB0_145:                              //  %if.then24.i619
	sw x0 ,  0 ( x15 )
.LBB0_146:                              //  %rshift.exit620
	lw x7 ,  4 ( x24 )
	sub x23 ,  x23 ,  x9
	addi x22 ,  x0 ,  2
	bltu x0, x8, .LBB0_67
.LBB0_147:                              //  %if.end315
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_160
.LBB0_141:
	add x13 ,  x0 ,  x15
	add x10 ,  x0 ,  x13
	beq x11, x14, .LBB0_143
	jal x0, .LBB0_142
.LBB0_148:                              //  %while.body.i.preheader
	slli x13 ,  x13 ,  2&31
	addi x12 ,  x26 ,  20
	add x12 ,  x13 ,  x12
	add x13 ,  x0 ,  x15
.LBB0_149:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  4 ( x13 )
	slli x10 ,  x11 ,  31&31
	or x14 ,  x14 ,  x10
	sw x14 ,  0 ( x13 )
	srli x14 ,  x11 ,  1&31
	addi x11 ,  x13 ,  8
	addi x13 ,  x13 ,  4
	bltu x11, x12, .LBB0_149
.LBB0_150:                              //  %while.end.i
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x13
	beq x14, x11, .LBB0_152
.LBB0_151:                              //  %while.end.i
	addi x12 ,  x13 ,  4
.LBB0_152:                              //  %while.end.i
	sw x14 ,  0 ( x13 )
.LBB0_153:                              //  %if.end19.i
	sub x14 ,  x12 ,  x15
	srai x13 ,  x14 ,  2&31
	sw x13 ,  16 ( x26 )
	bltu x0, x14, .LBB0_155
.LBB0_154:                              //  %if.then24.i
	sw x0 ,  0 ( x15 )
.LBB0_155:                              //  %rshift.exit
	lw x15 ,  8 ( x24 )
	bge x7, x15, .LBB0_109
.LBB0_156:
	addi x7 ,  x7 ,  1
.LBB0_157:                              //  %if.end310
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
.LBB0_158:                              //  %if.end310
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	ori x22 ,  x22 ,  32
.LBB0_160:                              //  %if.end315
	sw x7 ,  0 ( x14 )
	sw x26 ,  0 ( x15 )
.LBB0_161:                              //  %cleanup
	add x10 ,  x0 ,  x22
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.LBB0_162:
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	add x7 ,  x0 ,  x18
	jal x0, .LBB0_158
.LBB0_163:                              //  %if.then101
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  222
.LBB0_164:                              //  %if.then101
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.LBB0_166:                              //  %if.then6.i
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x11 ,  x0 ,  132
	jal x0, .LBB0_164
.Lfunc_end0:
	.size	__gethex, .Lfunc_end0-__gethex
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	__hexdig,@object        //  @__hexdig
	.section	.rodata,"a",@progbits
	.globl	__hexdig
__hexdig:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\021\022\023\024\025\026\027\030\031\000\000\000\000\000\000\000\032\033\034\035\036\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\033\034\035\036\037"
	.zero	153
	.size	__hexdig, 256

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/gdtoa-gethex.c"
	.size	.str, 58

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
