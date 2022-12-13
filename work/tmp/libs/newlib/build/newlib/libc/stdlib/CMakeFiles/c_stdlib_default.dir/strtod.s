	.text
	.file	"strtod.c"
	.globl	_strtod_l               //  -- Begin function _strtod_l
	.type	_strtod_l,@function
_strtod_l:                              //  @_strtod_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -144
	.cfi_adjust_cfa_offset 144
	lui x30 ,  _C_numeric_locale&4095
	lui x15 ,  (_C_numeric_locale>>12)&1048575
	sw x25 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x22 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22 ,  x0 ,  x10
	sw x9 ,  136 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x1 ,  140 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x20 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	sw x0 ,  80 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x25 ,  0 ( x15 )
	add x10 ,  x0 ,  x25
	call strlen
	add x24 ,  x0 ,  x10
	addi x21 ,  x9 ,  1
	addi x13 ,  x0 ,  42
	jal x0, .LBB0_2
.LBB0_1:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x21 ,  x21 ,  1
.LBB0_2:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lb x15 ,  -1 ( x21 )
	addi x14 ,  x21 ,  -1
	sw x14 ,  84 ( x2 )
	addi x12 ,  x15 ,  -9
	sltiu x12 ,  x12 ,  5
	bltu x0, x12, .LBB0_1
.LBB0_3:                                //  %for.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	blt x13, x15, .LBB0_6
.LBB0_4:                                //  %for.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x12 ,  x15 ,  32
	beq x0, x12, .LBB0_1
.LBB0_5:                                //  %for.cond
	beq x0, x15, .LBB0_83
	jal x0, .LBB0_18
.LBB0_6:                                //  %for.cond
	xori x13 ,  x15 ,  45
	beq x0, x13, .LBB0_17
.LBB0_7:                                //  %for.cond
	xori x13 ,  x15 ,  43
	bltu x0, x13, .LBB0_18
.LBB0_8:                                //  %sw.bb3.loopexit
	add x26 ,  x0 ,  x0
	lbu x15 ,  0 ( x21 )
	sw x21 ,  84 ( x2 )
	beq x0, x15, .LBB0_83
.LBB0_9:                                //  %break2
	add x19 ,  x0 ,  x0
	xori x14 ,  x15 ,  48
	bltu x0, x14, .LBB0_19
.LBB0_10:                               //  %if.then9
	lb x15 ,  1 ( x21 )
	addi x8 ,  x21 ,  1
	ori x15 ,  x15 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_14
.LBB0_11:                               //  %sw.bb11
	lui x30 ,  _strtod_l.fpi&4095
	lui x15 ,  (_strtod_l.fpi>>12)&1048575
	addi x11 ,  x2 ,  84
	addi x13 ,  x2 ,  88
	addi x14 ,  x2 ,  80
	add x10 ,  x0 ,  x22
	add x16 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	add x15 ,  x0 ,  x26
	call __gethex
	add x19 ,  x0 ,  x10
	andi x9 ,  x19 ,  7
	beq x0, x9, .LBB0_16
.LBB0_12:                               //  %sw.bb11
	xori x15 ,  x9 ,  6
	bltu x0, x15, .LBB0_66
.LBB0_13:                               //  %sw.bb13
	sw x8 ,  84 ( x2 )
	jal x0, .LBB0_84
.LBB0_14:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  0 ( x8 )
	sw x8 ,  84 ( x2 )
	addi x8 ,  x8 ,  1
	xori x14 ,  x15 ,  48
	beq x0, x14, .LBB0_14
.LBB0_15:                               //  %while.cond
	bltu x0, x15, .LBB0_75
.LBB0_16:                               //  %ret.loopexit
	add x23 ,  x0 ,  x0
	add x27 ,  x0 ,  x23
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_17:                               //  %sw.bb3.loopexit1
	slti x26 ,  x0 ,  1
	lbu x15 ,  0 ( x21 )
	sw x21 ,  84 ( x2 )
	bltu x0, x15, .LBB0_9
	jal x0, .LBB0_83
.LBB0_18:                               //  %break2.loopexit
	andi x15 ,  x15 ,  255
	add x26 ,  x0 ,  x0
	add x21 ,  x0 ,  x14
	add x19 ,  x0 ,  x0
	xori x14 ,  x15 ,  48
	beq x0, x14, .LBB0_10
.LBB0_19:
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
.LBB0_20:                               //  %if.end30
	slli x14 ,  x15 ,  24&31
	addi x15 ,  x15 ,  -48
	addi x8 ,  x0 ,  8
	sw x22 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	srai x9 ,  x14 ,  24&31
	andi x15 ,  x15 ,  255
	addi x14 ,  x0 ,  9
	bltu x14, x15, .LBB0_26
.LBB0_21:                               //  %for.body.preheader
	add x26 ,  x0 ,  x0
	addi x20 ,  x0 ,  10
	add x22 ,  x0 ,  x26
	add x23 ,  x0 ,  x26
	bgeu x8, x23, .LBB0_25
.LBB0_22:                               //  %if.else
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x15 ,  x10 ,  x9
	addi x22 ,  x15 ,  -48
.LBB0_23:                               //  %for.inc44
	add x15 ,  x23 ,  x21
	addi x23 ,  x23 ,  1
	lb x9 ,  1 ( x15 )
	addi x14 ,  x15 ,  1
	sw x14 ,  84 ( x2 )
	addi x15 ,  x9 ,  -48
	andi x15 ,  x15 ,  255
	sltiu x15 ,  x15 ,  10
	beq x0, x15, .LBB0_27
.LBB0_24:                               //  %for.body
	bltu x8, x23, .LBB0_22
.LBB0_25:                               //  %if.then39
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x15 ,  x10 ,  x9
	addi x26 ,  x15 ,  -48
	jal x0, .LBB0_23
.LBB0_26:
	add x23 ,  x0 ,  x19
	add x22 ,  x0 ,  x19
	add x26 ,  x0 ,  x19
	add x20 ,  x0 ,  x21
	jal x0, .LBB0_28
.LBB0_27:                               //  %for.end.loopexit
	add x20 ,  x23 ,  x21
.LBB0_28:                               //  %for.end
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x24
	call strncmp
	sw x19 ,  52 ( x2 )             //  4-byte Folded Spill
	beq x0, x10, .LBB0_43
.LBB0_29:
	add x24 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	add x25 ,  x0 ,  x19
	add x27 ,  x0 ,  x23
	addi x8 ,  x0 ,  9
	ori x15 ,  x9 ,  32
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB0_30
.LBB0_46:                               //  %if.then127
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	or x15 ,  x15 ,  x25
	or x15 ,  x27 ,  x15
	beq x0, x15, .LBB0_83
.LBB0_47:                               //  %if.end134
	lb x9 ,  1 ( x20 )
	sw x24 ,  60 ( x2 )             //  4-byte Folded Spill
	add x24 ,  x0 ,  x18
	addi x18 ,  x20 ,  1
	add x11 ,  x0 ,  x0
	sw x18 ,  84 ( x2 )
	xori x15 ,  x9 ,  43
	beq x0, x15, .LBB0_50
.LBB0_48:                               //  %if.end134
	xori x15 ,  x9 ,  45
	bltu x0, x15, .LBB0_51
.LBB0_49:                               //  %sw.bb137
	slti x11 ,  x0 ,  1
.LBB0_50:                               //  %sw.bb138
	lb x9 ,  2 ( x20 )
	addi x18 ,  x20 ,  2
	sw x18 ,  84 ( x2 )
.LBB0_51:                               //  %sw.epilog141
	addi x15 ,  x9 ,  -48
	bltu x8, x15, .LBB0_71
.LBB0_52:                               //  %while.cond148.preheader
	xori x15 ,  x9 ,  48
	bltu x0, x15, .LBB0_56
.LBB0_53:                               //  %while.body151.preheader
	addi x15 ,  x18 ,  1
.LBB0_54:                               //  %while.body151
                                        //  =>This Inner Loop Header: Depth=1
	lb x9 ,  0 ( x15 )
	sw x15 ,  84 ( x2 )
	addi x15 ,  x15 ,  1
	xori x14 ,  x9 ,  48
	beq x0, x14, .LBB0_54
.LBB0_55:                               //  %while.cond148.while.end154_crit_edge
	addi x18 ,  x15 ,  -1
.LBB0_56:                               //  %while.end154
	addi x15 ,  x9 ,  -49
	addi x14 ,  x0 ,  8
	bltu x14, x15, .LBB0_72
.LBB0_57:                               //  %if.then160
	addi x10 ,  x9 ,  -48
	lb x9 ,  1 ( x18 )
	addi x15 ,  x18 ,  1
	sw x15 ,  84 ( x2 )
	addi x14 ,  x9 ,  -48
	andi x14 ,  x14 ,  255
	bltu x8, x14, .LBB0_61
.LBB0_58:                               //  %while.body171.preheader
	addi x8 ,  x18 ,  2
	addi x19 ,  x0 ,  10
	sw x11 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x12 ,  52 ( x2 )             //  4-byte Folded Spill
.LBB0_59:                               //  %while.body171
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x15 ,  x10 ,  x9
	lb x9 ,  0 ( x8 )
	sw x8 ,  84 ( x2 )
	addi x8 ,  x8 ,  1
	addi x10 ,  x15 ,  -48
	addi x15 ,  x9 ,  -48
	andi x15 ,  x15 ,  255
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB0_59
.LBB0_60:                               //  %while.end175.loopexit
	lw x12 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x8 ,  -1
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
.LBB0_61:                               //  %while.end175
	lui x30 ,  19999&4095
	sub x14 ,  x15 ,  x18
	lui x15 ,  (19999>>12)&1048575
	addi x13 ,  x0 ,  8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	blt x13, x14, .LBB0_62
.LBB0_98:                               //  %while.end175
	add x15 ,  x0 ,  x10
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x24
	bge x14, x10, .LBB0_99
.LBB0_63:                               //  %while.end175
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	beq x11, x15, .LBB0_65
.LBB0_64:                               //  %while.end175
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
.LBB0_65:                               //  %while.end175
	sw x20 ,  48 ( x2 )             //  4-byte Folded Spill
	bltu x0, x27, .LBB0_31
	jal x0, .LBB0_73
.LBB0_43:                               //  %if.then49
	add x20 ,  x24 ,  x20
	lb x9 ,  0 ( x20 )
	sw x20 ,  84 ( x2 )
	beq x0, x23, .LBB0_76
.LBB0_44:
	add x24 ,  x0 ,  x0
	add x27 ,  x0 ,  x23
	addi x8 ,  x0 ,  9
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	add x25 ,  x0 ,  x24
	addi x15 ,  x9 ,  -48
	bltu x8, x15, .LBB0_45
.LBB0_304:
	jal x0, .LBB0_289
.LBB0_45:
	slti x12 ,  x0 ,  1
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x9 ,  32
	xori x15 ,  x15 ,  101
	beq x0, x15, .LBB0_46
.LBB0_30:                               //  %if.end192
	beq x0, x27, .LBB0_73
.LBB0_31:                               //  %if.end244
	add x14 ,  x0 ,  x0
	addi x15 ,  x0 ,  16
	add x25 ,  x0 ,  x27
	sw x14 ,  60 ( x2 )             //  4-byte Folded Spill
	beq x23, x14, .LBB0_33
.LBB0_32:                               //  %if.end244
	add x25 ,  x0 ,  x23
.LBB0_33:                               //  %if.end244
	add x8 ,  x0 ,  x27
	blt x27, x15, .LBB0_35
.LBB0_34:                               //  %if.end244
	add x8 ,  x0 ,  x15
.LBB0_35:                               //  %if.end244
	add x10 ,  x0 ,  x26
	call __floatunsidf
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	slti x15 ,  x8 ,  10
	bltu x0, x15, .LBB0_37
.LBB0_36:                               //  %if.then255
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x8 ,  3&31
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x10 ,  -72 ( x15 )
	lw x11 ,  -68 ( x15 )
	call __muldf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x20 ,  x0 ,  x11
	call __floatunsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_37:                               //  %if.end263
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	sub x13 ,  x15 ,  x24
	addi x15 ,  x0 ,  15
	blt x15, x27, .LBB0_108
.LBB0_38:                               //  %land.lhs.true266
	add x14 ,  x0 ,  x0
	bltu x0, x14, .LBB0_108
.LBB0_39:                               //  %if.then269
	beq x0, x13, .LBB0_92
.LBB0_40:                               //  %if.end272
	bge x0, x13, .LBB0_105
.LBB0_41:                               //  %if.then275
	addi x14 ,  x0 ,  22
	blt x14, x13, .LBB0_107
.LBB0_42:                               //  %if.then278
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x13 ,  3&31
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	jal x0, .LBB0_219
.LBB0_66:                               //  %sw.default14
	lw x12 ,  80 ( x2 )
	beq x0, x12, .LBB0_68
.LBB0_67:                               //  %if.then16
	addi x10 ,  x2 ,  72
	addi x11 ,  x0 ,  53
	call __copybits
	lw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x22
	call _Bfree
.LBB0_68:                               //  %if.end17
	addi x15 ,  x9 ,  -1
	addi x14 ,  x0 ,  4
	bltu x14, x15, .LBB0_100
.LBB0_69:                               //  %if.end17
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_70:                               //  %sw.bb7.i
	lw x15 ,  88 ( x2 )
	lui x14 ,  (1127219200>>12)&1048575
	lui x30 ,  -1048577&4095
	lui x13 ,  (-1048577>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x23 ,  72 ( x2 )
	or x13 ,  x13 ,  x30
	slli x15 ,  x15 ,  20&31
	add x15 ,  x14 ,  x15
	lw x14 ,  76 ( x2 )
	and x14 ,  x13 ,  x14
	or x27 ,  x15 ,  x14
	andi x15 ,  x19 ,  8
	beq x0, x15, .LBB0_85
	jal x0, .LBB0_104
.LBB0_71:                               //  %if.else190
	sw x20 ,  84 ( x2 )
.LBB0_72:                               //  %if.end192
	add x18 ,  x0 ,  x24
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	sw x20 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	bltu x0, x27, .LBB0_31
.LBB0_73:                               //  %if.then194
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	or x15 ,  x15 ,  x25
	beq x0, x15, .LBB0_81
.LBB0_74:
	add x27 ,  x0 ,  x23
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_75:                               //  %if.end30.loopexit
	slti x14 ,  x0 ,  1
	addi x21 ,  x8 ,  -1
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x14 ,  40 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_20
.LBB0_76:                               //  %for.cond54.preheader
	andi x15 ,  x9 ,  255
	add x27 ,  x0 ,  x0
	addi x8 ,  x0 ,  9
	xori x15 ,  x15 ,  48
	bltu x0, x15, .LBB0_90
.LBB0_77:                               //  %for.body57.preheader
	add x25 ,  x0 ,  x0
.LBB0_78:                               //  %for.body57
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x25 ,  x20
	addi x25 ,  x25 ,  1
	lb x9 ,  1 ( x15 )
	addi x14 ,  x15 ,  1
	sw x14 ,  84 ( x2 )
	xori x15 ,  x9 ,  48
	beq x0, x15, .LBB0_78
.LBB0_79:                               //  %for.cond54.for.end62_crit_edge
	add x20 ,  x25 ,  x20
	addi x15 ,  x9 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_91
.LBB0_80:
	slti x12 ,  x0 ,  1
	add x24 ,  x0 ,  x27
	ori x15 ,  x9 ,  32
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB0_30
	jal x0, .LBB0_46
.LBB0_81:                               //  %if.then198
	beq x0, x12, .LBB0_93
.LBB0_82:
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
.LBB0_83:                               //  %ret0
	sw x9 ,  84 ( x2 )
.LBB0_84:                               //  %ret
	add x23 ,  x0 ,  x0
	add x27 ,  x0 ,  x23
	add x26 ,  x0 ,  x23
.LBB0_85:                               //  %ret
	beq x0, x18, .LBB0_87
.LBB0_86:                               //  %if.then945
	lw x15 ,  84 ( x2 )
	sw x15 ,  0 ( x18 )
.LBB0_87:                               //  %cleanup955
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x26, x14, .LBB0_89
.LBB0_88:                               //  %cleanup955
	xor x27 ,  x15 ,  x27
.LBB0_89:                               //  %cleanup955
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x27
	lw x8 ,  92 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  136 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  140 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  144
	.cfi_def_cfa 2, 0
	ret
.LBB0_62:                               //  %while.end175
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x24
	blt x14, x10, .LBB0_63
.LBB0_99:                               //  %while.end175
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	bne x11, x15, .LBB0_64
	jal x0, .LBB0_65
.LBB0_90:
	add x25 ,  x0 ,  x27
	addi x15 ,  x9 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB0_80
.LBB0_91:
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	add x24 ,  x0 ,  x25
	add x18 ,  x0 ,  x20
	add x15 ,  x0 ,  x27
	add x25 ,  x0 ,  x27
	add x21 ,  x0 ,  x20
	addi x14 ,  x25 ,  1
	addi x9 ,  x9 ,  -48
	beq x0, x9, .LBB0_299
.LBB0_305:
	jal x0, .LBB0_290
.LBB0_299:
	add x27 ,  x0 ,  x15
	add x25 ,  x0 ,  x14
	jal x0, .LBB0_303
.LBB0_92:
	add x23 ,  x0 ,  x20
	add x27 ,  x0 ,  x19
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_93:                               //  %if.then201
	addi x15 ,  x9 ,  -73
	addi x14 ,  x0 ,  37
	bltu x14, x15, .LBB0_82
.LBB0_94:                               //  %if.then201
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x15 ,  2&31
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_95:                               //  %sw.bb202
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	addi x10 ,  x2 ,  84
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __match
	beq x0, x10, .LBB0_83
.LBB0_96:                               //  %if.then205
	lw x15 ,  84 ( x2 )
	lui x30 ,  .str.1&4095
	addi x10 ,  x2 ,  84
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  -1
	sw x15 ,  84 ( x2 )
	lui x15 ,  (.str.1>>12)&1048575
	or x11 ,  x15 ,  x30
	call __match
	lui x27 ,  (2146435072>>12)&1048575
	add x23 ,  x0 ,  x0
	beq x0, x10, .LBB0_252
.LBB0_97:
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_100:
	add x23 ,  x0 ,  x0
	add x27 ,  x0 ,  x23
	andi x15 ,  x19 ,  8
	beq x0, x15, .LBB0_85
	jal x0, .LBB0_104
.LBB0_101:                              //  %sw.bb2.i
	lw x27 ,  76 ( x2 )
	lw x23 ,  72 ( x2 )
	andi x15 ,  x19 ,  8
	beq x0, x15, .LBB0_85
	jal x0, .LBB0_104
.LBB0_102:                              //  %sw.bb14.i
	lui x27 ,  (2146435072>>12)&1048575
	add x23 ,  x0 ,  x0
	andi x15 ,  x19 ,  8
	beq x0, x15, .LBB0_85
	jal x0, .LBB0_104
.LBB0_103:                              //  %sw.bb17.i
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	addi x23 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	andi x15 ,  x19 ,  8
	beq x0, x15, .LBB0_85
.LBB0_104:                              //  %if.then.i
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	or x27 ,  x15 ,  x27
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_105:                              //  %if.else296
	slti x15 ,  x13 ,  -22
	bltu x0, x15, .LBB0_108
.LBB0_106:                              //  %if.then299
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x13 ,  3&31
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sub x15 ,  x14 ,  x15
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __divdf3
	add x23 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_107:                              //  %if.end282
	addi x14 ,  x0 ,  37
	sub x14 ,  x14 ,  x27
	bge x14, x13, .LBB0_218
.LBB0_108:                              //  %if.end305
	sub x15 ,  x27 ,  x8
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	add x9 ,  x15 ,  x13
	bge x0, x9, .LBB0_118
.LBB0_109:                              //  %if.then310
	andi x15 ,  x9 ,  15
	beq x0, x15, .LBB0_111
.LBB0_110:                              //  %if.then314
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x15 ,  3&31
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __muldf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_111:                              //  %if.end318
	andi x15 ,  x9 ,  -16
	beq x0, x15, .LBB0_119
.LBB0_112:                              //  %if.then321
	addi x14 ,  x0 ,  308
	blt x14, x15, .LBB0_208
.LBB0_113:                              //  %if.end332
	add x24 ,  x0 ,  x18
	sltiu x15 ,  x9 ,  32
	lui x14 ,  (__mprec_bigtens>>12)&1048575
	bltu x0, x15, .LBB0_206
.LBB0_114:                              //  %for.body336.preheader
	lui x30 ,  __mprec_bigtens&4095
	srli x15 ,  x9 ,  4&31
	add x18 ,  x0 ,  x0
	add x8 ,  x0 ,  x14
	addi x9 ,  x0 ,  3
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	add x23 ,  x0 ,  x15
	andi x15 ,  x23 ,  1
	bltu x0, x15, .LBB0_117
.LBB0_115:                              //  %for.inc344
	addi x22 ,  x22 ,  8
	srli x15 ,  x23 ,  1&31
	addi x18 ,  x18 ,  1
	bgeu x9, x23, .LBB0_207
.LBB0_116:                              //  %for.body336
	add x23 ,  x0 ,  x15
	andi x15 ,  x23 ,  1
	beq x0, x15, .LBB0_115
.LBB0_117:                              //  %if.then339
	lw x12 ,  0 ( x22 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	lw x13 ,  4 ( x22 )
	call __muldf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x22 ,  x22 ,  8
	srli x15 ,  x23 ,  1&31
	addi x18 ,  x18 ,  1
	bltu x9, x23, .LBB0_116
	jal x0, .LBB0_207
.LBB0_118:                              //  %if.else374
	blt x9, x0, .LBB0_123
.LBB0_119:                              //  %if.end457
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x27
	add x14 ,  x0 ,  x26
	call __s2b
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_208
.LBB0_120:                              //  %for.cond463.preheader
	lw x11 ,  4 ( x9 )
	add x10 ,  x0 ,  x22
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	call _Balloc
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	add x21 ,  x0 ,  x10
	add x25 ,  x0 ,  x23
	add x24 ,  x0 ,  x23
	add x20 ,  x0 ,  x23
	beq x0, x21, .LBB0_255
.LBB0_121:                              //  %if.end468.lr.ph
	lw x15 ,  16 ( x9 )
	addi x11 ,  x9 ,  12
	addi x10 ,  x21 ,  12
	sw x11 ,  12 ( x2 )             //  4-byte Folded Spill
	slli x15 ,  x15 ,  2&31
	addi x12 ,  x15 ,  8
	call memcpy
	lw x11 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x13 ,  x2 ,  72
	addi x14 ,  x2 ,  88
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	call __d2b
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	addi x15 ,  x0 ,  -1
	blt x15, x8, .LBB0_134
.LBB0_122:                              //  %if.end468.lr.ph
	sub x15 ,  x0 ,  x8
	add x8 ,  x0 ,  x24
	sw x10 ,  80 ( x2 )
	bltu x0, x10, .LBB0_135
.LBB0_211:
	add x20 ,  x0 ,  x21
	add x25 ,  x0 ,  x24
	jal x0, .LBB0_255
.LBB0_123:                              //  %if.then377
	sub x24 ,  x0 ,  x9
	andi x15 ,  x24 ,  15
	beq x0, x15, .LBB0_125
.LBB0_124:                              //  %if.then382
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x15 ,  3&31
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __divdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_125:                              //  %if.end386
	srai x22 ,  x24 ,  4&31
	beq x0, x22, .LBB0_212
.LBB0_126:                              //  %if.then389
	slti x15 ,  x9 ,  -511
	bltu x0, x15, .LBB0_272
.LBB0_127:                              //  %if.end393
	add x23 ,  x0 ,  x18
	andi x18 ,  x24 ,  256
	addi x15 ,  x0 ,  -16
	blt x15, x9, .LBB0_132
.LBB0_128:                              //  %for.body401.preheader
	lui x30 ,  tinytens&4095
	lui x15 ,  (tinytens>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	andi x15 ,  x22 ,  1
	bltu x0, x15, .LBB0_131
.LBB0_129:                              //  %for.inc409
	addi x9 ,  x9 ,  8
	srli x22 ,  x22 ,  1&31
	beq x0, x22, .LBB0_132
.LBB0_130:                              //  %for.body401
	andi x15 ,  x22 ,  1
	beq x0, x15, .LBB0_129
.LBB0_131:                              //  %if.then404
	lw x12 ,  0 ( x9 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	lw x13 ,  4 ( x9 )
	call __muldf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x9 ,  x9 ,  8
	srli x22 ,  x22 ,  1&31
	bltu x0, x22, .LBB0_130
.LBB0_132:                              //  %for.end412
	beq x0, x18, .LBB0_133
.LBB0_221:                              //  %land.lhs.true414
	srli x15 ,  x19 ,  20&31
	addi x14 ,  x0 ,  106
	andi x15 ,  x15 ,  2047
	sw x14 ,  60 ( x2 )             //  4-byte Folded Spill
	bltu x14, x15, .LBB0_133
.LBB0_222:                              //  %if.then422
	addi x14 ,  x0 ,  75
	add x18 ,  x0 ,  x23
	bltu x14, x15, .LBB0_258
.LBB0_223:                              //  %if.then425
	sltiu x13 ,  x15 ,  55
	beq x0, x13, .LBB0_269
.LBB0_224:
	lui x19 ,  (57671680>>12)&1048575
	add x20 ,  x0 ,  x0
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_119
.LBB0_134:
	add x15 ,  x0 ,  x24
	sw x10 ,  80 ( x2 )
	beq x0, x10, .LBB0_211
.LBB0_135:                              //  %if.end478.preheader
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	add x25 ,  x0 ,  x0
	lui x27 ,  (2146435072>>12)&1048575
	add x20 ,  x0 ,  x21
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	add x15 ,  x8 ,  x15
	slti x8 ,  x0 ,  1
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB0_136:                              //  %if.end478
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	call __i2b
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB0_227
.LBB0_137:                              //  %if.end483
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x14 ,  72 ( x2 )
	add x5 ,  x0 ,  x0
	addi x12 ,  x0 ,  -1
	add x15 ,  x0 ,  x5
	add x13 ,  x0 ,  x14
	blt x12, x14, .LBB0_139
.LBB0_138:                              //  %if.end483
                                        //    in Loop: Header=BB0_136 Depth=1
	sub x15 ,  x0 ,  x14
	add x13 ,  x0 ,  x5
.LBB0_139:                              //  %if.end483
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x12 ,  24 ( x2 )             //  4-byte Folded Reload
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	lw x11 ,  88 ( x2 )
	add x21 ,  x12 ,  x13
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	sub x13 ,  x14 ,  x13
	addi x14 ,  x0 ,  54
	sub x14 ,  x14 ,  x11
	add x13 ,  x11 ,  x13
	addi x11 ,  x0 ,  -1022
	blt x11, x13, .LBB0_142
.LBB0_140:                              //  %if.then503
                                        //    in Loop: Header=BB0_136 Depth=1
	addi x11 ,  x0 ,  -1021
	sub x10 ,  x11 ,  x13
	slti x11 ,  x13 ,  -1052
	sub x14 ,  x14 ,  x10
	bltu x0, x11, .LBB0_143
.LBB0_141:                              //  %if.then508
                                        //    in Loop: Header=BB0_136 Depth=1
	sll x13 ,  x8 ,  x10
	add x9 ,  x0 ,  x5
	sw x13 ,  32 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_144
.LBB0_142:                              //    in Loop: Header=BB0_136 Depth=1
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	add x9 ,  x0 ,  x5
	jal x0, .LBB0_144
.LBB0_143:                              //  %if.else510
                                        //    in Loop: Header=BB0_136 Depth=1
	addi x11 ,  x0 ,  -1053
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	sub x13 ,  x11 ,  x13
	sll x9 ,  x8 ,  x13
.LBB0_144:                              //  %if.end514
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x21 ,  x14
	add x15 ,  x15 ,  x13
	add x22 ,  x14 ,  x15
	add x14 ,  x0 ,  x25
	blt x25, x22, .LBB0_145
.LBB0_157:                              //  %if.end514
                                        //    in Loop: Header=BB0_136 Depth=1
	add x14 ,  x0 ,  x22
	add x15 ,  x0 ,  x21
	bge x21, x14, .LBB0_158
.LBB0_146:                              //  %if.end514
                                        //    in Loop: Header=BB0_136 Depth=1
	bge x0, x15, .LBB0_148
.LBB0_147:                              //  %if.then530
                                        //    in Loop: Header=BB0_136 Depth=1
	sub x21 ,  x21 ,  x15
	sub x22 ,  x22 ,  x15
	sub x25 ,  x25 ,  x15
.LBB0_148:                              //  %if.end534
                                        //    in Loop: Header=BB0_136 Depth=1
	bge x0, x12, .LBB0_152
.LBB0_149:                              //  %if.then537
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x8 ,  56 ( x2 )              //  4-byte Folded Reload
	add x11 ,  x0 ,  x24
	add x10 ,  x0 ,  x8
	call __pow5mult
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB0_247
.LBB0_150:                              //  %if.end542
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x12 ,  80 ( x2 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x24
	call __multiply
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB0_248
.LBB0_151:                              //  %if.end547
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x8
	call _Bfree
	sw x26 ,  80 ( x2 )
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB0_152:                              //  %if.end548
                                        //    in Loop: Header=BB0_136 Depth=1
	add x8 ,  x0 ,  x20
	bge x0, x25, .LBB0_154
.LBB0_153:                              //  %if.then551
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x11 ,  80 ( x2 )
	add x12 ,  x0 ,  x25
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	call __lshift
	sw x10 ,  80 ( x2 )
	beq x0, x10, .LBB0_250
.LBB0_154:                              //  %if.end557
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x12 ,  40 ( x2 )             //  4-byte Folded Reload
	bge x0, x12, .LBB0_159
.LBB0_155:                              //  %if.then560
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x8
	call __pow5mult
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x10
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	beq x0, x8, .LBB0_225
.LBB0_156:                              //  %if.end566
                                        //    in Loop: Header=BB0_136 Depth=1
	blt x0, x22, .LBB0_160
	jal x0, .LBB0_161
.LBB0_145:                              //  %if.end514
                                        //    in Loop: Header=BB0_136 Depth=1
	add x15 ,  x0 ,  x21
	blt x21, x14, .LBB0_146
.LBB0_158:                              //  %if.end514
                                        //    in Loop: Header=BB0_136 Depth=1
	add x15 ,  x0 ,  x14
	blt x0, x15, .LBB0_147
	jal x0, .LBB0_148
.LBB0_159:                              //    in Loop: Header=BB0_136 Depth=1
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	bge x0, x22, .LBB0_161
.LBB0_160:                              //  %if.then569
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x10 ,  56 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call __lshift
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB0_225
.LBB0_161:                              //  %if.end575
                                        //    in Loop: Header=BB0_136 Depth=1
	bge x0, x21, .LBB0_163
.LBB0_162:                              //  %if.then578
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x21
	add x10 ,  x0 ,  x22
	call __lshift
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB0_164
	jal x0, .LBB0_253
.LBB0_163:                              //    in Loop: Header=BB0_136 Depth=1
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
.LBB0_164:                              //  %if.end584
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	call __mdiff
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB0_228
.LBB0_165:                              //  %if.end589
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x15 ,  12 ( x25 )
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	sw x0 ,  12 ( x25 )
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	call __mcmp
	blt x10, x0, .LBB0_229
.LBB0_166:                              //  %if.end628
                                        //    in Loop: Header=BB0_136 Depth=1
	beq x0, x10, .LBB0_236
.LBB0_167:                              //  %if.end746
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	call __ratio
	add x8 ,  x0 ,  x0
	lui x13 ,  (1073741824>>12)&1048575
	add x21 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x12 ,  x0 ,  x8
	call __ledf2
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	bge x0, x10, .LBB0_170
.LBB0_168:                              //  %if.else786
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	lui x13 ,  (1071644672>>12)&1048575
	call __muldf3
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x8, .LBB0_177
.LBB0_169:                              //  %if.else786
                                        //    in Loop: Header=BB0_136 Depth=1
	add x24 ,  x0 ,  x10
	add x22 ,  x0 ,  x20
	and x15 ,  x27 ,  x19
	lui x25 ,  (2145386496>>12)&1048575
	add x9 ,  x0 ,  x15
	beq x15, x25, .LBB0_179
.LBB0_181:                              //  %if.else845
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_186
.LBB0_182:                              //  %if.else845
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lui x15 ,  (111149056>>12)&1048575
	add x21 ,  x0 ,  x24
	bltu x15, x9, .LBB0_187
.LBB0_183:                              //  %if.then850
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -4194304&4095
	lui x15 ,  (-4194304>>12)&1048575
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1105199103&4095
	lui x15 ,  (1105199103>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ledf2
	add x11 ,  x0 ,  x20
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	bge x0, x10, .LBB0_188
.LBB0_184:                              //    in Loop: Header=BB0_136 Depth=1
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_194
.LBB0_170:                              //  %if.then750
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x20 ,  (1072693248>>12)&1048575
	add x24 ,  x0 ,  x8
	add x22 ,  x0 ,  x20
	bltu x0, x15, .LBB0_178
.LBB0_171:                              //  %if.else754
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	xori x15 ,  x14 ,  1
	beq x0, x15, .LBB0_192
.LBB0_172:                              //  %if.else754
                                        //    in Loop: Header=BB0_136 Depth=1
	add x24 ,  x0 ,  x8
	lui x20 ,  (1072693248>>12)&1048575
	bltu x0, x14, .LBB0_178
.LBB0_173:                              //  %lor.lhs.false758
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	lui x14 ,  (-1074790400>>12)&1048575
	add x24 ,  x0 ,  x8
	lui x20 ,  (1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1074790400&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x19
	or x22 ,  x14 ,  x30
	bltu x0, x15, .LBB0_178
.LBB0_174:                              //  %if.else775
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	lui x13 ,  (1072693248>>12)&1048575
	call __ltdf2
	lui x20 ,  (1071644672>>12)&1048575
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	call __muldf3
	add x24 ,  x0 ,  x8
	blt x22, x8, .LBB0_176
.LBB0_175:                              //  %if.else775
                                        //    in Loop: Header=BB0_136 Depth=1
	add x24 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
.LBB0_176:                              //  %if.else775
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x22 ,  x15 ,  x20
	and x15 ,  x27 ,  x19
	lui x25 ,  (2145386496>>12)&1048575
	add x9 ,  x0 ,  x15
	beq x15, x25, .LBB0_179
	jal x0, .LBB0_181
.LBB0_177:                              //    in Loop: Header=BB0_136 Depth=1
	add x24 ,  x0 ,  x10
	xor x22 ,  x15 ,  x20
.LBB0_178:                              //  %if.end801
                                        //    in Loop: Header=BB0_136 Depth=1
	and x15 ,  x27 ,  x19
	lui x25 ,  (2145386496>>12)&1048575
	add x9 ,  x0 ,  x15
	bne x15, x25, .LBB0_181
.LBB0_179:                              //  %if.then807
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -55574528&4095
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (-55574528>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x21 ,  x15 ,  x19
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __ulp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __adddf3
	and x15 ,  x25 ,  x11
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	srli x15 ,  x15 ,  21&31
	sltiu x15 ,  x15 ,  997
	bltu x0, x15, .LBB0_185
.LBB0_180:                              //  %if.then824
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  2146435071&4095
	lui x15 ,  (2146435071>>12)&1048575
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	xori x13 ,  x20 ,  -1
	addi x20 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	or x15 ,  x15 ,  x30
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	xor x14 ,  x15 ,  x19
	add x19 ,  x0 ,  x15
	or x14 ,  x14 ,  x13
	bltu x0, x14, .LBB0_204
	jal x0, .LBB0_268
.LBB0_185:                              //  %if.else840
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x15 ,  (55574528>>12)&1048575
	add x21 ,  x0 ,  x24
	add x20 ,  x0 ,  x10
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x15 ,  x11
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_196
	jal x0, .LBB0_202
.LBB0_186:                              //    in Loop: Header=BB0_136 Depth=1
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	add x21 ,  x0 ,  x24
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_195
.LBB0_187:                              //    in Loop: Header=BB0_136 Depth=1
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_195
.LBB0_188:                              //  %if.then853
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x21
	call __fixunsdfsi
	add x15 ,  x0 ,  x10
	slti x10 ,  x0 ,  1
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_190
.LBB0_189:                              //  %if.then853
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x15
.LBB0_190:                              //  %if.then853
                                        //    in Loop: Header=BB0_136 Depth=1
	call __floatunsidf
	lw x13 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x21 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x13, x14, .LBB0_193
.LBB0_191:                              //  %if.then853
                                        //    in Loop: Header=BB0_136 Depth=1
	add x22 ,  x0 ,  x11
	jal x0, .LBB0_194
.LBB0_192:                              //  %land.lhs.true768
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x24 ,  x0 ,  x8
	lui x20 ,  (1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	bltu x0, x19, .LBB0_178
	jal x0, .LBB0_287
.LBB0_193:                              //    in Loop: Header=BB0_136 Depth=1
	xor x22 ,  x15 ,  x11
.LBB0_194:                              //  %if.end867
                                        //    in Loop: Header=BB0_136 Depth=1
	sub x15 ,  x22 ,  x9
	lui x14 ,  (112197632>>12)&1048575
	add x22 ,  x14 ,  x15
.LBB0_195:                              //  %if.end872
                                        //    in Loop: Header=BB0_136 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __ulp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __adddf3
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_202
.LBB0_196:                              //  %if.end879
                                        //    in Loop: Header=BB0_136 Depth=1
	and x15 ,  x27 ,  x19
	bne x9, x15, .LBB0_202
.LBB0_197:                              //  %if.then887
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __fixdfdi
	call __floatdidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __subdf3
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	bltu x0, x15, .LBB0_199
.LBB0_198:                              //  %lor.lhs.false893
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x19
	or x15 ,  x20 ,  x15
	beq x0, x15, .LBB0_203
.LBB0_199:                              //  %if.then902
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -1801439851&4095
	lui x15 ,  (-1801439851>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071644671&4095
	lui x15 ,  (1071644671>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	blt x10, x0, .LBB0_274
.LBB0_200:                              //  %if.then902
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  900719925&4095
	lui x15 ,  (900719925>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	lui x13 ,  (1071644672>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	call __gtdf2
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	bge x0, x10, .LBB0_204
	jal x0, .LBB0_286
.LBB0_202:                              //    in Loop: Header=BB0_136 Depth=1
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
.LBB0_204:                              //  %cont
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x22
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call _Bfree
	lw x11 ,  4 ( x9 )
	add x10 ,  x0 ,  x22
	call _Balloc
	beq x0, x10, .LBB0_245
.LBB0_205:                              //  %if.end468
                                        //    in Loop: Header=BB0_136 Depth=1
	lw x15 ,  16 ( x9 )
	add x8 ,  x0 ,  x20
	add x20 ,  x0 ,  x10
	addi x10 ,  x10 ,  12
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	addi x12 ,  x15 ,  8
	call memcpy
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	addi x13 ,  x2 ,  72
	addi x14 ,  x2 ,  88
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	call __d2b
	slti x8 ,  x0 ,  1
	sw x10 ,  80 ( x2 )
	bltu x0, x10, .LBB0_136
	jal x0, .LBB0_255
.LBB0_203:                              //  %if.else910
                                        //    in Loop: Header=BB0_136 Depth=1
	lui x30 ,  -1801439851&4095
	lui x15 ,  (-1801439851>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070596095&4095
	lui x15 ,  (1070596095>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	bge x10, x0, .LBB0_204
	jal x0, .LBB0_286
.LBB0_206:
	add x8 ,  x0 ,  x14
	add x18 ,  x0 ,  x0
.LBB0_207:                              //  %for.end347
	lui x30 ,  -55574528&4095
	lui x15 ,  (-55574528>>12)&1048575
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __mprec_bigtens&4095
	srli x30 ,  x30 ,  12&31
	add x13 ,  x15 ,  x19
	slli x15 ,  x18 ,  3&31
	or x14 ,  x8 ,  x30
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
	lw x11 ,  4 ( x15 )
	call __muldf3
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (2146435072>>12)&1048575
	add x20 ,  x0 ,  x10
	lui x14 ,  (2090860544>>12)&1048575
	add x18 ,  x0 ,  x24
	and x15 ,  x15 ,  x11
	bgeu x14, x15, .LBB0_209
.LBB0_208:                              //  %ovfl.thread1741
	addi x15 ,  x0 ,  34
	lui x27 ,  (2146435072>>12)&1048575
	add x23 ,  x0 ,  x0
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x22 )
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_209:                              //  %if.end360
	lui x30 ,  2146435071&4095
	lui x14 ,  (2146435071>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	sw x14 ,  60 ( x2 )             //  4-byte Folded Spill
	lui x14 ,  (2089811968>>12)&1048575
	bgeu x14, x15, .LBB0_213
.LBB0_210:
	addi x20 ,  x0 ,  -1
	jal x0, .LBB0_119
.LBB0_212:
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_119
.LBB0_213:                              //  %if.else368
	lui x15 ,  (55574528>>12)&1048575
	add x19 ,  x15 ,  x11
	jal x0, .LBB0_119
.LBB0_214:                              //  %sw.bb217
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	addi x10 ,  x2 ,  84
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __match
	beq x0, x10, .LBB0_83
.LBB0_215:                              //  %if.then220
	lw x15 ,  84 ( x2 )
	lbu x15 ,  0 ( x15 )
	xori x15 ,  x15 ,  40
	bltu x0, x15, .LBB0_226
.LBB0_216:                              //  %land.lhs.true224
	lui x30 ,  _strtod_l.fpinan&4095
	lui x15 ,  (_strtod_l.fpinan>>12)&1048575
	addi x10 ,  x2 ,  84
	addi x12 ,  x2 ,  64
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __hexnan
	xori x15 ,  x10 ,  5
	bltu x0, x15, .LBB0_226
.LBB0_217:                              //  %if.then229
	lw x15 ,  68 ( x2 )
	lui x14 ,  (2146435072>>12)&1048575
	lw x23 ,  64 ( x2 )
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	or x27 ,  x14 ,  x15
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_133:
	add x18 ,  x0 ,  x23
.LBB0_270:                              //  %if.end445
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x12
	call __nedf2
	beq x0, x10, .LBB0_272
.LBB0_271:
	slli x15 ,  x24 ,  23&31
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	srai x15 ,  x15 ,  31&31
	andi x15 ,  x15 ,  106
	sw x15 ,  60 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_119
.LBB0_272:                              //  %undfl
	lw x14 ,  56 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  34
	add x23 ,  x0 ,  x0
	sw x15 ,  0 ( x14 )
	add x27 ,  x0 ,  x23
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_218:                              //  %if.then287
	lui x30 ,  __mprec_tens&4095
	sub x8 ,  x15 ,  x27
	lui x14 ,  (__mprec_tens>>12)&1048575
	add x21 ,  x0 ,  x13
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x8 ,  3&31
	or x9 ,  x14 ,  x30
	add x15 ,  x15 ,  x9
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __muldf3
	sub x15 ,  x21 ,  x8
	slli x15 ,  x15 ,  3&31
	add x15 ,  x15 ,  x9
.LBB0_219:                              //  %ret
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __muldf3
	add x23 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_225:
	add x20 ,  x0 ,  x0
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_254
.LBB0_226:                              //  %if.else236
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nan
	add x23 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_227:
	add x24 ,  x0 ,  x0
	jal x0, .LBB0_255
.LBB0_228:
	add x20 ,  x0 ,  x8
	add x25 ,  x0 ,  x0
	jal x0, .LBB0_254
.LBB0_229:                              //  %if.then595
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_281
.LBB0_230:                              //  %lor.lhs.false597
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	bltu x0, x20, .LBB0_282
.LBB0_231:                              //  %lor.lhs.false601
	lui x30 ,  1048575&4095
	lui x21 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	and x15 ,  x15 ,  x19
	bltu x0, x15, .LBB0_282
.LBB0_232:                              //  %lor.lhs.false601
	lui x30 ,  112197633&4095
	lui x15 ,  (2146435072>>12)&1048575
	lui x14 ,  (112197633>>12)&1048575
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x19
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_282
.LBB0_233:                              //  %if.end613
	lw x15 ,  20 ( x25 )
	bltu x0, x15, .LBB0_235
.LBB0_234:                              //  %land.lhs.true616
	lw x15 ,  16 ( x25 )
	slti x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_282
.LBB0_235:                              //  %if.end621
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call __lshift
	add x11 ,  x0 ,  x24
	add x25 ,  x0 ,  x10
	call __mcmp
	blt x0, x10, .LBB0_276
	jal x0, .LBB0_282
.LBB0_236:                              //  %if.then631
	lui x30 ,  1048575&4095
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x21 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	and x15 ,  x15 ,  x19
	beq x0, x14, .LBB0_259
.LBB0_237:                              //  %if.then633
	lui x30 ,  1048575&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	bne x15, x14, .LBB0_260
.LBB0_238:                              //  %land.lhs.true639
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  -1
	beq x0, x14, .LBB0_241
.LBB0_239:                              //  %land.lhs.true643
	lui x14 ,  (2146435072>>12)&1048575
	lui x13 ,  (111149056>>12)&1048575
	and x14 ,  x14 ,  x19
	bltu x13, x14, .LBB0_241
.LBB0_240:                              //  %cond.true649
	srli x15 ,  x14 ,  20&31
	addi x14 ,  x0 ,  107
	sub x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  -1
	sll x15 ,  x14 ,  x15
.LBB0_241:                              //  %cond.end655
	bne x15, x20, .LBB0_260
.LBB0_242:                              //  %if.then659
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB0_280
.LBB0_243:                              //  %if.then659
	lui x30 ,  2146435071&4095
	lui x15 ,  (2146435071>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x19, x15, .LBB0_280
.LBB0_244:
	add x20 ,  x0 ,  x8
	jal x0, .LBB0_254
.LBB0_245:
	add x20 ,  x0 ,  x0
	jal x0, .LBB0_255
.LBB0_247:
	add x24 ,  x0 ,  x0
	jal x0, .LBB0_249
.LBB0_248:
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB0_249:                              //  %ovfl.thread
	add x22 ,  x0 ,  x8
	jal x0, .LBB0_251
.LBB0_250:
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
.LBB0_251:                              //  %ovfl.thread
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_255
.LBB0_252:                              //  %if.then209
	lw x15 ,  84 ( x2 )
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  84 ( x2 )
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_253:
	add x20 ,  x0 ,  x8
	add x24 ,  x0 ,  x0
.LBB0_254:                              //  %ovfl.thread
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
.LBB0_255:                              //  %ovfl.thread
	addi x15 ,  x0 ,  34
	lui x27 ,  (2146435072>>12)&1048575
	add x8 ,  x0 ,  x20
.LBB0_256:                              //  %retfree
	sw x15 ,  0 ( x22 )
.LBB0_257:                              //  %retfree
	lw x11 ,  80 ( x2 )
	add x10 ,  x0 ,  x22
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x9
	call _Bfree
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call _Bfree
	bltu x0, x18, .LBB0_86
	jal x0, .LBB0_87
.LBB0_258:                              //  %if.else439
	addi x14 ,  x0 ,  107
	sub x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  -1
	sll x15 ,  x14 ,  x15
	and x20 ,  x20 ,  x15
	jal x0, .LBB0_270
.LBB0_259:                              //  %if.else680
	or x15 ,  x20 ,  x15
	beq x0, x15, .LBB0_275
.LBB0_260:                              //  %if.end714
	beq x0, x9, .LBB0_262
.LBB0_261:                              //  %if.then716
	and x15 ,  x19 ,  x9
	bltu x0, x15, .LBB0_263
	jal x0, .LBB0_281
.LBB0_262:                              //  %if.else723
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	and x15 ,  x20 ,  x15
	beq x0, x15, .LBB0_281
.LBB0_263:                              //  %if.end730
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __ulp
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x10
	add x15 ,  x0 ,  x11
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	beq x0, x13, .LBB0_266
.LBB0_264:                              //  %lor.lhs.false.i
	srli x13 ,  x19 ,  20&31
	addi x12 ,  x0 ,  106
	andi x13 ,  x13 ,  2047
	bltu x12, x13, .LBB0_266
.LBB0_265:                              //  %if.end.i
	slli x13 ,  x13 ,  20&31
	lui x12 ,  (1184890880>>12)&1048575
	add x10 ,  x0 ,  x14
	add x11 ,  x0 ,  x15
	sub x13 ,  x12 ,  x13
	add x12 ,  x0 ,  x0
	call __muldf3
	add x14 ,  x0 ,  x10
	add x15 ,  x0 ,  x11
.LBB0_266:                              //  %sulp.exit
	lw x13 ,  36 ( x2 )             //  4-byte Folded Reload
	beq x0, x13, .LBB0_273
.LBB0_267:                              //  %if.then732
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x14
	add x13 ,  x0 ,  x15
	call __adddf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_283
	jal x0, .LBB0_286
.LBB0_268:                              //  %ovfl
	addi x15 ,  x0 ,  34
	add x23 ,  x0 ,  x0
	jal x0, .LBB0_256
.LBB0_269:                              //  %if.else433
	sub x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  -1
	add x20 ,  x0 ,  x0
	sll x15 ,  x14 ,  x15
	and x19 ,  x19 ,  x15
	jal x0, .LBB0_270
.LBB0_273:                              //  %if.else736
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x14
	add x13 ,  x0 ,  x15
	call __subdf3
	add x12 ,  x0 ,  x0
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_282
	jal x0, .LBB0_288
.LBB0_274:
	add x23 ,  x0 ,  x20
	add x27 ,  x0 ,  x19
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_257
.LBB0_275:
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
.LBB0_276:                              //  %drop_down
	lui x15 ,  (2146435072>>12)&1048575
	lui x14 ,  (112197632>>12)&1048575
	and x15 ,  x15 ,  x19
	bltu x14, x15, .LBB0_279
.LBB0_277:                              //  %drop_down
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_279
.LBB0_278:                              //  %if.then697
	lui x14 ,  (57671680>>12)&1048575
	bltu x14, x15, .LBB0_283
	jal x0, .LBB0_288
.LBB0_279:                              //  %if.end703
	lui x30 ,  -1048576&4095
	lui x14 ,  (-1048576>>12)&1048575
	addi x20 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  1048575&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x14 ,  x15
	or x14 ,  x21 ,  x30
	or x19 ,  x14 ,  x15
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_283
.LBB0_286:
	add x23 ,  x0 ,  x20
	add x27 ,  x0 ,  x19
	jal x0, .LBB0_257
.LBB0_280:                              //  %if.end670
	lui x15 ,  (2146435072>>12)&1048575
	lui x14 ,  (1048576>>12)&1048575
	add x20 ,  x0 ,  x0
	and x15 ,  x15 ,  x19
	add x19 ,  x14 ,  x15
.LBB0_281:                              //  %for.end921
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
.LBB0_282:                              //  %for.end921
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_286
.LBB0_283:                              //  %if.then923
	add x12 ,  x0 ,  x0
	lui x13 ,  (961544192>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
	add x23 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	bltu x0, x27, .LBB0_257
.LBB0_284:                              //  %if.then923
	bltu x0, x23, .LBB0_257
.LBB0_285:                              //  %if.then940
	addi x15 ,  x0 ,  34
	jal x0, .LBB0_256
.LBB0_287:
	lw x22 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
.LBB0_288:                              //  %undfl.thread
	addi x15 ,  x0 ,  34
	add x23 ,  x0 ,  x0
	sw x15 ,  0 ( x22 )
	add x27 ,  x0 ,  x23
	jal x0, .LBB0_257
.LBB0_289:
	add x18 ,  x0 ,  x20
	add x15 ,  x0 ,  x27
	addi x14 ,  x25 ,  1
	addi x9 ,  x9 ,  -48
	bltu x0, x9, .LBB0_290
.LBB0_306:
	jal x0, .LBB0_299
.LBB0_290:                              //  %if.then82
	add x24 ,  x24 ,  x14
	addi x27 ,  x15 ,  1
	bge x0, x25, .LBB0_300
.LBB0_291:                              //  %for.body87.preheader
	slti x14 ,  x15 ,  9
	add x19 ,  x25 ,  x15
	addi x20 ,  x0 ,  10
	addi x8 ,  x0 ,  17
	sw x24 ,  60 ( x2 )             //  4-byte Folded Spill
	add x24 ,  x0 ,  x27
	andi x15 ,  x14 ,  1
	bltu x0, x15, .LBB0_294
	jal x0, .LBB0_295
.LBB0_292:                              //  %if.else93
	add x22 ,  x0 ,  x10
	slti x14 ,  x24 ,  9
	addi x27 ,  x24 ,  1
	addi x25 ,  x25 ,  -1
	beq x0, x25, .LBB0_297
.LBB0_293:                              //  %for.body87
	add x24 ,  x0 ,  x27
	andi x15 ,  x14 ,  1
	beq x0, x15, .LBB0_295
.LBB0_294:                              //  %if.then91
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x26 ,  x0 ,  x10
	slti x14 ,  x24 ,  9
	addi x27 ,  x24 ,  1
	addi x25 ,  x25 ,  -1
	bltu x0, x25, .LBB0_293
	jal x0, .LBB0_297
.LBB0_295:                              //  %if.else93
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x20
	call __mulsi3
	blt x24, x8, .LBB0_292
.LBB0_296:                              //  %if.else93
	add x10 ,  x0 ,  x22
	jal x0, .LBB0_292
.LBB0_297:                              //  %for.end102.loopexit
	slti x15 ,  x24 ,  9
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x27 ,  x19 ,  1
	addi x8 ,  x0 ,  9
	beq x0, x15, .LBB0_301
.LBB0_298:                              //  %if.then106
	addi x11 ,  x0 ,  10
	add x10 ,  x0 ,  x26
	call __mulsi3
	add x26 ,  x9 ,  x10
	add x25 ,  x0 ,  x0
	jal x0, .LBB0_303
.LBB0_300:                              //  %for.end102
	addi x14 ,  x0 ,  8
	bge x14, x15, .LBB0_298
.LBB0_301:                              //  %if.else109
	add x25 ,  x0 ,  x0
	addi x15 ,  x0 ,  16
	blt x15, x27, .LBB0_303
.LBB0_302:                              //  %if.then112
	addi x11 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	call __mulsi3
	add x22 ,  x9 ,  x10
.LBB0_303:                              //  %for.inc118
	addi x20 ,  x18 ,  1
	lb x9 ,  1 ( x18 )
	sw x20 ,  84 ( x2 )
	addi x15 ,  x9 ,  -48
	bgeu x8, x15, .LBB0_289
	jal x0, .LBB0_45
.Lfunc_end0:
	.size	_strtod_l, .Lfunc_end0-_strtod_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_70
	.long	.LBB0_101
	.long	.LBB0_102
	.long	.LBB0_103
	.long	.LBB0_70
JTI0_1:
	.long	.LBB0_95
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_214
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_95
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_83
	.long	.LBB0_214
                                        //  -- End function
	.text
	.globl	_strtod_r               //  -- Begin function _strtod_r
	.type	_strtod_r,@function
_strtod_r:                              //  @_strtod_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, _strtod_l
.Lfunc_end1:
	.size	_strtod_r, .Lfunc_end1-_strtod_r
	.cfi_endproc
                                        //  -- End function
	.globl	strtod_l                //  -- Begin function strtod_l
	.type	strtod_l,@function
strtod_l:                               //  @strtod_l
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
	jal x0, _strtod_l
.Lfunc_end2:
	.size	strtod_l, .Lfunc_end2-strtod_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtod                  //  -- Begin function strtod
	.type	strtod,@function
strtod:                                 //  @strtod
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, _strtod_l
.Lfunc_end3:
	.size	strtod, .Lfunc_end3-strtod
	.cfi_endproc
                                        //  -- End function
	.globl	strtof_l                //  -- Begin function strtof_l
	.type	strtof_l,@function
strtof_l:                               //  @strtof_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x19 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x10 ,  0 ( x15 )
	call _strtod_l
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __unorddf2
	bltu x0, x10, .LBB4_1
.LBB4_3:                                //  %if.end
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __truncdfsf2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	and x11 ,  x20 ,  x9
	call __eqdf2
	beq x0, x10, .LBB4_6
.LBB4_4:                                //  %if.end
	and x10 ,  x20 ,  x8
	lui x11 ,  (2139095040>>12)&1048575
	call __nesf2
	bltu x0, x10, .LBB4_6
.LBB4_5:                                //  %if.then12
	lui x30 ,  _impure_ptr&4095
	addi x14 ,  x0 ,  34
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB4_6
.LBB4_1:                                //  %cond.true1
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x8 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x9, x14, .LBB4_6
.LBB4_2:
	xor x8 ,  x15 ,  x8
.LBB4_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	strtof_l, .Lfunc_end4-strtof_l
	.cfi_endproc
                                        //  -- End function
	.globl	strtof                  //  -- Begin function strtof
	.type	strtof,@function
strtof:                                 //  @strtof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x19 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call _strtod_l
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	call __unorddf2
	bltu x0, x10, .LBB5_1
.LBB5_3:                                //  %if.end
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __truncdfsf2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x8 ,  x0 ,  x10
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	and x11 ,  x20 ,  x9
	call __eqdf2
	beq x0, x10, .LBB5_6
.LBB5_4:                                //  %if.end
	and x10 ,  x20 ,  x8
	lui x11 ,  (2139095040>>12)&1048575
	call __nesf2
	bltu x0, x10, .LBB5_6
.LBB5_5:                                //  %if.then13
	lui x30 ,  _impure_ptr&4095
	addi x14 ,  x0 ,  34
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB5_6
.LBB5_1:                                //  %cond.true2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x8 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x9, x14, .LBB5_6
.LBB5_2:
	xor x8 ,  x15 ,  x8
.LBB5_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	strtof, .Lfunc_end5-strtof
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_strtod_l.fpi,@object   //  @_strtod_l.fpi
	.section	.rodata,"a",@progbits
	.p2align	2
_strtod_l.fpi:
	.long	53                      //  0x35
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	_strtod_l.fpi, 20

	.address_space	0
	.type	_strtod_l.fpinan,@object //  @_strtod_l.fpinan
	.p2align	2
_strtod_l.fpinan:
	.long	52                      //  0x34
	.long	4294966222              //  0xfffffbce
	.long	971                     //  0x3cb
	.long	1                       //  0x1
	.long	0                       //  0x0
	.size	_strtod_l.fpinan, 20

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"nf"
	.size	.str, 3

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"inity"
	.size	.str.1, 6

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"an"
	.size	.str.2, 3

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.zero	1
	.size	.str.3, 1

	.address_space	0
	.address_space	0
	.address_space	0
	.type	tinytens,@object        //  @tinytens
	.section	.rodata,"a",@progbits
	.p2align	3
tinytens:
	.quad	4367597403136100796     //  double 9.9999999999999997E-17
	.quad	4128101167230658355     //  double 1.0000000000000001E-32
	.quad	3649340653511681853     //  double 9.9999999999999997E-65
	.quad	2691949749288605597     //  double 1.0000000000000001E-128
	.quad	1254259266780163907     //  double 8.112963841460668E-225
	.size	tinytens, 40

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
