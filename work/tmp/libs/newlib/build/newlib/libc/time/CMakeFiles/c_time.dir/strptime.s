	.text
	.file	"strptime.c"
	.globl	strptime_l              //  -- Begin function strptime_l
	.type	strptime_l,@function
strptime_l:                             //  @strptime_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	lbu x15 ,  0 ( x11 )
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x9 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x22 ,  x0 ,  x10
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	beq x0, x15, .LBB0_184
.LBB0_1:                                //  %for.body.lr.ph
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	add x27 ,  x0 ,  x0
	lui x19 ,  (_ctype_>>12)&1048575
	addi x20 ,  x0 ,  121
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x13 ,  124 ( x14 )
	lw x25 ,  96 ( x14 )
	lw x26 ,  48 ( x14 )
	sw x13 ,  32 ( x2 )             //  4-byte Folded Spill
	lw x13 ,  0 ( x14 )
	sw x13 ,  36 ( x2 )             //  4-byte Folded Spill
	lw x13 ,  160 ( x14 )
	sw x13 ,  24 ( x2 )             //  4-byte Folded Spill
	lw x13 ,  164 ( x14 )
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	lw x13 ,  228 ( x14 )
	sw x13 ,  20 ( x2 )             //  4-byte Folded Spill
	lw x13 ,  156 ( x14 )
	lw x14 ,  152 ( x14 )
	sw x13 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  12 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_2
.LBB0_144:                              //  %while.cond.for.inc.loopexit_crit_edge
                                        //    in Loop: Header=BB0_2 Depth=1
	add x18 ,  x0 ,  x11
.LBB0_145:                              //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	beq x0, x15, .LBB0_146
.LBB0_2:                                //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
                                        //      Child Loop BB0_58 Depth 2
                                        //      Child Loop BB0_29 Depth 2
                                        //      Child Loop BB0_20 Depth 2
                                        //      Child Loop BB0_114 Depth 2
                                        //      Child Loop BB0_97 Depth 2
                                        //      Child Loop BB0_84 Depth 2
                                        //      Child Loop BB0_25 Depth 2
                                        //      Child Loop BB0_16 Depth 2
	lui x30 ,  _ctype_&4095
	andi x14 ,  x15 ,  255
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB0_3
.LBB0_6:                                //  %if.else
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x15 ,  x14 ,  37
	bltu x0, x15, .LBB0_142
.LBB0_7:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  1 ( x11 )
	beq x0, x15, .LBB0_142
.LBB0_8:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x14 ,  x15 ,  79
	beq x0, x14, .LBB0_11
.LBB0_9:                                //  %land.lhs.true
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x14 ,  x15 ,  69
	bltu x0, x14, .LBB0_10
.LBB0_11:                               //  %if.then27
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  2 ( x11 )
	addi x18 ,  x11 ,  2
	slli x14 ,  x15 ,  24&31
	srai x14 ,  x14 ,  24&31
	bgeu x20, x14, .LBB0_13
	jal x0, .LBB0_138
.LBB0_3:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  0 ( x22 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x19 ,  x30
	add x15 ,  x15 ,  x14
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_144
.LBB0_5:                                //  %while.body
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x15 ,  1 ( x22 )
	lui x30 ,  _ctype_&4095
	addi x22 ,  x22 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x19 ,  x30
	add x15 ,  x15 ,  x14
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB0_5
	jal x0, .LBB0_144
.LBB0_142:                              //  %if.else321
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  0 ( x22 )
	bne x15, x14, .LBB0_127
.LBB0_143:                              //  %if.then326
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
	jal x0, .LBB0_144
.LBB0_10:                               //    in Loop: Header=BB0_2 Depth=1
	addi x18 ,  x11 ,  1
	slli x14 ,  x15 ,  24&31
	srai x14 ,  x14 ,  24&31
	bltu x20, x14, .LBB0_138
.LBB0_13:                               //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  JTI0_0&4095
	lui x13 ,  (JTI0_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_43:                               //  %sw.bb99
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	bne x15, x22, .LBB0_44
	jal x0, .LBB0_127
.LBB0_45:                               //  %sw.bb105
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_46:                               //  %if.end110
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x0 ,  12
	bne x10, x14, .LBB0_44
.LBB0_47:                               //    in Loop: Header=BB0_2 Depth=1
	add x10 ,  x0 ,  x0
.LBB0_44:                               //  %if.end104
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  8 ( x8 )
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_27:                               //  %sw.bb52
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_127
.LBB0_28:                               //  %for.body.i639.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  _C_time_locale&4095
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (_C_time_locale>>12)&1048575
	add x21 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  4
.LBB0_29:                               //  %for.body.i639
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call strlen
	lw x11 ,  -4 ( x24 )
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x23
	call strncasecmp_l
	beq x0, x10, .LBB0_31
.LBB0_30:                               //  %for.inc.i645
                                        //    in Loop: Header=BB0_29 Depth=2
	lw x10 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	addi x21 ,  x21 ,  1
	add x24 ,  x0 ,  x15
	bltu x0, x10, .LBB0_29
	jal x0, .LBB0_127
.LBB0_38:                               //  %sw.bb82
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_39:                               //  %if.end87
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  12 ( x8 )
	ori x27 ,  x27 ,  1
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_135:                              //  %sw.bb298
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x18 ,  x18 ,  -1
.LBB0_136:                              //  %sw.bb300
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  0 ( x22 )
	xori x15 ,  x15 ,  37
	bltu x0, x15, .LBB0_127
.LBB0_137:                              //  %if.then304
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_138:                              //  %sw.default
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x14 ,  0 ( x22 )
	xori x14 ,  x14 ,  37
	beq x0, x14, .LBB0_141
.LBB0_139:                              //  %lor.lhs.false311
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x14 ,  1 ( x22 )
	bne x14, x15, .LBB0_127
.LBB0_140:                              //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
.LBB0_141:                              //  %if.then317
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_14:                               //  %sw.bb
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_127
.LBB0_15:                               //  %for.body.i.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  _C_time_locale&4095
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (_C_time_locale>>12)&1048575
	add x21 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  128
.LBB0_16:                               //  %for.body.i
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call strlen
	lw x11 ,  -4 ( x24 )
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x23
	call strncasecmp_l
	beq x0, x10, .LBB0_22
.LBB0_17:                               //  %for.inc.i
                                        //    in Loop: Header=BB0_16 Depth=2
	lw x10 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	addi x21 ,  x21 ,  1
	add x24 ,  x0 ,  x15
	bltu x0, x10, .LBB0_16
	jal x0, .LBB0_127
.LBB0_23:                               //  %sw.bb44
                                        //    in Loop: Header=BB0_2 Depth=1
	beq x0, x26, .LBB0_127
.LBB0_24:                               //  %for.body.i624.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	add x21 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  52
.LBB0_25:                               //  %for.body.i624
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call strlen
	lw x11 ,  -4 ( x24 )
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x23
	call strncasecmp_l
	beq x0, x10, .LBB0_31
.LBB0_26:                               //  %for.inc.i630
                                        //    in Loop: Header=BB0_25 Depth=2
	lw x10 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	addi x21 ,  x21 ,  1
	add x24 ,  x0 ,  x15
	bltu x0, x10, .LBB0_25
	jal x0, .LBB0_127
.LBB0_31:                               //  %if.end50
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x21 ,  16 ( x8 )
	add x22 ,  x23 ,  x22
	ori x27 ,  x27 ,  2
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_32:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x21 ,  48 ( x2 )
	beq x21, x22, .LBB0_127
.LBB0_33:                               //  %if.end66
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x0 ,  100
	call __mulsi3
	addi x15 ,  x10 ,  -1900
	ori x27 ,  x27 ,  4
	add x22 ,  x0 ,  x21
	sw x15 ,  20 ( x8 )
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_36:                               //  %sw.bb75
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strptime_l
	add x22 ,  x0 ,  x10
	sw x22 ,  48 ( x2 )
	beq x0, x22, .LBB0_127
.LBB0_37:                               //  %if.end80
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  7
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_40:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strptime_l
	sw x10 ,  48 ( x2 )
	beq x0, x10, .LBB0_127
.LBB0_41:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_2 Depth=1
	beq x10, x22, .LBB0_127
.LBB0_42:                               //  %if.end97
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  7
	add x22 ,  x0 ,  x10
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_52:                               //  %sw.bb135
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_53:                               //  %if.end140
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  4 ( x8 )
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_65:                               //  %sw.bb174
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x15 ,  (.str.2>>12)&1048575
	lui x30 ,  .str.2&4095
	jal x0, .LBB0_66
.LBB0_72:                               //  %sw.bb203
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_73:                               //  %if.end208
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  0 ( x8 )
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_76:                               //  %sw.bb217
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x15 ,  (.str.3>>12)&1048575
	lui x30 ,  .str.3&4095
.LBB0_66:                               //  %sw.bb174
                                        //    in Loop: Header=BB0_2 Depth=1
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x22
	or x11 ,  x15 ,  x30
	jal x0, .LBB0_126
.LBB0_82:                               //  %sw.bb240
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x21 ,  48 ( x2 )
	add x23 ,  x0 ,  x10
	beq x21, x22, .LBB0_127
.LBB0_83:                               //  %if.end245
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  20 ( x8 )
	addi x24 ,  x0 ,  4
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	addi x22 ,  x15 ,  1899
	slti x15 ,  x22 ,  1970
	beq x0, x15, .LBB0_84
	jal x0, .LBB0_90
.LBB0_85:                               //    in Loop: Header=BB0_84 Depth=2
	add x14 ,  x0 ,  x0
.LBB0_89:                               //  %is_leap_year.exit.i.i740
                                        //    in Loop: Header=BB0_84 Depth=2
	add x10 ,  x14 ,  x15
	addi x11 ,  x0 ,  7
	call __modsi3
	add x24 ,  x0 ,  x10
	addi x22 ,  x22 ,  -1
	addi x15 ,  x0 ,  1969
	bge x15, x22, .LBB0_90
.LBB0_84:                               //  %while.body.i.i728
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x25 ,  x0 ,  400
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call __udivsi3
	add x11 ,  x0 ,  x25
	call __mulsi3
	addi x26 ,  x0 ,  100
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x26
	call __udivsi3
	add x11 ,  x0 ,  x26
	call __mulsi3
	addi x15 ,  x24 ,  365
	andi x14 ,  x22 ,  3
	bltu x0, x14, .LBB0_85
.LBB0_86:                               //  %land.rhs.i.i.i731
                                        //    in Loop: Header=BB0_84 Depth=2
	sub x14 ,  x22 ,  x10
	beq x0, x14, .LBB0_88
.LBB0_87:                               //    in Loop: Header=BB0_84 Depth=2
	slti x14 ,  x0 ,  1
	jal x0, .LBB0_89
.LBB0_88:                               //  %lor.rhs.i.i.i735
                                        //    in Loop: Header=BB0_84 Depth=2
	sub x14 ,  x22 ,  x25
	xori x14 ,  x14 ,  0
	sltiu x14 ,  x14 ,  1
	jal x0, .LBB0_89
.LBB0_93:                               //  %sw.bb247
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x21 ,  48 ( x2 )
	add x23 ,  x0 ,  x10
	beq x21, x22, .LBB0_127
.LBB0_94:                               //  %if.end252
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  20 ( x8 )
	addi x22 ,  x15 ,  1899
	slti x15 ,  x22 ,  1970
	bltu x0, x15, .LBB0_95
.LBB0_96:                               //  %while.body.i.i699.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x24 ,  x0 ,  4
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_97
.LBB0_98:                               //    in Loop: Header=BB0_97 Depth=2
	add x14 ,  x0 ,  x0
.LBB0_102:                              //  %is_leap_year.exit.i.i711
                                        //    in Loop: Header=BB0_97 Depth=2
	add x10 ,  x14 ,  x15
	addi x11 ,  x0 ,  7
	call __modsi3
	add x24 ,  x0 ,  x10
	addi x22 ,  x22 ,  -1
	addi x15 ,  x0 ,  1969
	bge x15, x22, .LBB0_103
.LBB0_97:                               //  %while.body.i.i699
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x25 ,  x0 ,  400
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call __udivsi3
	add x11 ,  x0 ,  x25
	call __mulsi3
	addi x26 ,  x0 ,  100
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x26
	call __udivsi3
	add x11 ,  x0 ,  x26
	call __mulsi3
	addi x15 ,  x24 ,  365
	andi x14 ,  x22 ,  3
	bltu x0, x14, .LBB0_98
.LBB0_99:                               //  %land.rhs.i.i.i702
                                        //    in Loop: Header=BB0_97 Depth=2
	sub x14 ,  x22 ,  x10
	beq x0, x14, .LBB0_101
.LBB0_100:                              //    in Loop: Header=BB0_97 Depth=2
	slti x14 ,  x0 ,  1
	jal x0, .LBB0_102
.LBB0_101:                              //  %lor.rhs.i.i.i706
                                        //    in Loop: Header=BB0_97 Depth=2
	sub x14 ,  x22 ,  x25
	xori x14 ,  x14 ,  0
	sltiu x14 ,  x14 ,  1
	jal x0, .LBB0_102
.LBB0_110:                              //  %sw.bb254
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x21 ,  48 ( x2 )
	add x23 ,  x0 ,  x10
	beq x21, x22, .LBB0_127
.LBB0_111:                              //  %if.end259
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  20 ( x8 )
	addi x22 ,  x15 ,  1899
	slti x15 ,  x22 ,  1970
	bltu x0, x15, .LBB0_112
.LBB0_113:                              //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x24 ,  x0 ,  4
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_114
.LBB0_115:                              //    in Loop: Header=BB0_114 Depth=2
	add x14 ,  x0 ,  x0
.LBB0_119:                              //  %is_leap_year.exit.i.i
                                        //    in Loop: Header=BB0_114 Depth=2
	add x10 ,  x14 ,  x15
	addi x11 ,  x0 ,  7
	call __modsi3
	add x24 ,  x0 ,  x10
	addi x22 ,  x22 ,  -1
	addi x15 ,  x0 ,  1969
	bge x15, x22, .LBB0_120
.LBB0_114:                              //  %while.body.i.i
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x25 ,  x0 ,  400
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	call __udivsi3
	add x11 ,  x0 ,  x25
	call __mulsi3
	addi x26 ,  x0 ,  100
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x26
	call __udivsi3
	add x11 ,  x0 ,  x26
	call __mulsi3
	addi x15 ,  x24 ,  365
	andi x14 ,  x22 ,  3
	bltu x0, x14, .LBB0_115
.LBB0_116:                              //  %land.rhs.i.i.i
                                        //    in Loop: Header=BB0_114 Depth=2
	sub x14 ,  x22 ,  x10
	beq x0, x14, .LBB0_118
.LBB0_117:                              //    in Loop: Header=BB0_114 Depth=2
	slti x14 ,  x0 ,  1
	jal x0, .LBB0_119
.LBB0_118:                              //  %lor.rhs.i.i.i
                                        //    in Loop: Header=BB0_114 Depth=2
	sub x14 ,  x22 ,  x25
	xori x14 ,  x14 ,  0
	sltiu x14 ,  x14 ,  1
	jal x0, .LBB0_119
.LBB0_125:                              //  %sw.bb268
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x22
	jal x0, .LBB0_126
.LBB0_133:                              //  %sw.bb289
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_134:                              //  %if.end294
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x10 ,  -1900
	sw x14 ,  20 ( x8 )
	jal x0, .LBB0_132
.LBB0_18:                               //  %sw.bb35
                                        //    in Loop: Header=BB0_2 Depth=1
	beq x0, x25, .LBB0_127
.LBB0_19:                               //  %for.body.i609.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	add x21 ,  x0 ,  x0
	add x10 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  100
.LBB0_20:                               //  %for.body.i609
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call strlen
	lw x11 ,  -4 ( x24 )
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x23
	call strncasecmp_l
	beq x0, x10, .LBB0_22
.LBB0_21:                               //  %for.inc.i615
                                        //    in Loop: Header=BB0_20 Depth=2
	lw x10 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	addi x21 ,  x21 ,  1
	add x24 ,  x0 ,  x15
	bltu x0, x10, .LBB0_20
	jal x0, .LBB0_127
.LBB0_34:                               //  %sw.bb68
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11 ,  24 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call strptime_l
	add x22 ,  x0 ,  x10
	sw x22 ,  48 ( x2 )
	beq x0, x22, .LBB0_127
.LBB0_35:                               //  %if.end73
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_48:                               //  %sw.bb118
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_49:                               //  %if.end123
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x10 ,  -1
	ori x27 ,  x27 ,  16
	add x22 ,  x0 ,  x15
	sw x14 ,  28 ( x8 )
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_50:                               //  %sw.bb126
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_51:                               //  %if.end131
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x10 ,  -1
	ori x27 ,  x27 ,  2
	add x22 ,  x0 ,  x15
	sw x14 ,  16 ( x8 )
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_54:                               //  %sw.bb141
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  0 ( x22 )
	xori x15 ,  x15 ,  10
	bltu x0, x15, .LBB0_127
.LBB0_55:                               //  %if.then145
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_56:                               //  %sw.bb149
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_127
.LBB0_57:                               //  %for.body.i667.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	lui x30 ,  _C_time_locale&4095
	lw x10 ,  28 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (_C_time_locale>>12)&1048575
	slti x21 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  168
.LBB0_58:                               //  %for.body.i667
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call strlen
	lw x11 ,  -4 ( x24 )
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x23
	call strncasecmp_l
	beq x0, x10, .LBB0_60
.LBB0_59:                               //  %for.inc.i673
                                        //    in Loop: Header=BB0_58 Depth=2
	lw x10 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	addi x21 ,  x21 ,  -1
	add x24 ,  x0 ,  x15
	bltu x0, x10, .LBB0_58
	jal x0, .LBB0_127
.LBB0_64:                               //  %sw.bb168
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10 ,  x0 ,  x22
	lw x11 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_126:                              //  %sw.bb268
                                        //    in Loop: Header=BB0_2 Depth=1
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call strptime_l
	add x22 ,  x0 ,  x10
	sw x22 ,  48 ( x2 )
	bltu x0, x22, .LBB0_145
	jal x0, .LBB0_127
.LBB0_67:                               //  %sw.bb180
                                        //    in Loop: Header=BB0_2 Depth=1
	add x20 ,  x0 ,  x26
	add x26 ,  x0 ,  x25
	call __errno
	lw x21 ,  0 ( x10 )
	call __errno
	sw x0 ,  0 ( x10 )
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtoll_l
	addi x15 ,  x2 ,  40
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	ori x25 ,  x15 ,  4
	lw x15 ,  48 ( x2 )
	sw x23 ,  40 ( x2 )
	sw x24 ,  0 ( x25 )
	beq x15, x22, .LBB0_127
.LBB0_68:                               //  %lor.lhs.false186
                                        //    in Loop: Header=BB0_2 Depth=1
	call __errno
	lw x15 ,  0 ( x10 )
	bltu x0, x15, .LBB0_127
.LBB0_69:                               //  %lor.lhs.false186
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  0 ( x25 )
	lw x14 ,  40 ( x2 )
	xor x15 ,  x24 ,  x15
	xor x14 ,  x23 ,  x14
	or x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_127
.LBB0_70:                               //  %lor.lhs.false193
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x2 ,  40
	add x11 ,  x0 ,  x8
	call localtime_r
	bne x10, x8, .LBB0_127
.LBB0_71:                               //  %cleanup
                                        //    in Loop: Header=BB0_2 Depth=1
	call __errno
	add x25 ,  x0 ,  x26
	add x26 ,  x0 ,  x20
	sw x21 ,  0 ( x10 )
	addi x27 ,  x0 ,  31
	lw x22 ,  48 ( x2 )
	addi x20 ,  x0 ,  121
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_74:                               //  %sw.bb209
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x15 ,  0 ( x22 )
	xori x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_127
.LBB0_75:                               //  %if.then213
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x22 ,  1
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_77:                               //  %sw.bb223
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_78:                               //  %if.end228
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x10 ,  -1
	sw x14 ,  24 ( x8 )
	jal x0, .LBB0_81
.LBB0_79:                               //  %sw.bb232
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_80:                               //  %if.end237
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  24 ( x8 )
.LBB0_81:                               //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  8
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_123:                              //  %sw.bb261
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x11 ,  16 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call strptime_l
	add x22 ,  x0 ,  x10
	sw x22 ,  48 ( x2 )
	beq x0, x22, .LBB0_127
.LBB0_124:                              //  %if.end266
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  7
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_128:                              //  %sw.bb274
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x2 ,  48
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call strtol_l
	lw x15 ,  48 ( x2 )
	beq x15, x22, .LBB0_127
.LBB0_129:                              //  %if.end279
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x0 ,  70
	bge x10, x14, .LBB0_131
.LBB0_130:                              //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x10 ,  100
.LBB0_131:                              //  %if.end279
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x10 ,  20 ( x8 )
.LBB0_132:                              //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  4
	add x22 ,  x0 ,  x15
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_22:                               //  %if.end34
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x21 ,  24 ( x8 )
	add x22 ,  x23 ,  x22
	ori x27 ,  x27 ,  8
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_90:                               //  %first_day.exit.i748
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x0 ,  7
	add x10 ,  x0 ,  x23
	call __mulsi3
	lw x14 ,  24 ( x8 )
	sub x15 ,  x10 ,  x24
	add x15 ,  x14 ,  x15
	sw x15 ,  28 ( x8 )
	bge x15, x0, .LBB0_92
.LBB0_91:                               //  %if.then.i749
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x24 ,  24 ( x8 )
	sw x0 ,  28 ( x8 )
.LBB0_92:                               //  %set_week_number_sun.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  16
	add x22 ,  x0 ,  x21
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_60:                               //  %match_string.exit675
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  8 ( x8 )
	add x22 ,  x23 ,  x22
	beq x0, x15, .LBB0_61
.LBB0_63:                               //  %if.else165
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x15 ,  x15 ,  12
	sw x15 ,  8 ( x8 )
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_95:                               //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x0 ,  3
	jal x0, .LBB0_105
.LBB0_103:                              //  %first_day.exit.i714
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x24 ,  6
	addi x11 ,  x0 ,  7
	call __modsi3
	add x22 ,  x0 ,  x10
	addi x15 ,  x0 ,  3
	blt x15, x22, .LBB0_202
.LBB0_104:                              //    in Loop: Header=BB0_2 Depth=1
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_105:                              //  %first_day.exit.thread.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x24 ,  x0 ,  7
	jal x0, .LBB0_106
.LBB0_112:                              //    in Loop: Header=BB0_2 Depth=1
	addi x22 ,  x0 ,  3
	jal x0, .LBB0_121
.LBB0_120:                              //  %first_day.exit.loopexit.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x24 ,  6
	addi x11 ,  x0 ,  7
	call __modsi3
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	add x22 ,  x0 ,  x10
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_121:                              //  %first_day.exit.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x24 ,  x0 ,  7
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __mulsi3
	lw x15 ,  24 ( x8 )
	add x23 ,  x0 ,  x10
	add x11 ,  x0 ,  x24
	addi x10 ,  x15 ,  6
	call __modsi3
	sub x15 ,  x23 ,  x22
	add x15 ,  x15 ,  x10
	sw x15 ,  28 ( x8 )
	bge x15, x0, .LBB0_109
.LBB0_122:                              //  %if.then.i
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10 ,  x22 ,  1
	addi x11 ,  x0 ,  7
	call __modsi3
	sw x10 ,  24 ( x8 )
	jal x0, .LBB0_108
.LBB0_202:                              //    in Loop: Header=BB0_2 Depth=1
	add x24 ,  x0 ,  x0
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_106:                              //    in Loop: Header=BB0_2 Depth=1
	addi x11 ,  x0 ,  7
	add x10 ,  x0 ,  x23
	call __mulsi3
	lw x14 ,  24 ( x8 )
	sub x15 ,  x10 ,  x22
	add x15 ,  x24 ,  x15
	add x15 ,  x14 ,  x15
	addi x15 ,  x15 ,  -7
	sw x15 ,  28 ( x8 )
	bge x15, x0, .LBB0_109
.LBB0_107:                              //  %if.then8.i
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x22 ,  24 ( x8 )
.LBB0_108:                              //  %set_week_number_mon4.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	sw x0 ,  28 ( x8 )
.LBB0_109:                              //  %set_week_number_mon4.exit
                                        //    in Loop: Header=BB0_2 Depth=1
	ori x27 ,  x27 ,  16
	add x22 ,  x0 ,  x21
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_146
.LBB0_61:                               //  %if.then159
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x21, .LBB0_145
.LBB0_62:                               //  %if.then162
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x15 ,  x0 ,  12
	sw x15 ,  8 ( x8 )
	lbu x15 ,  1 ( x18 )
	addi x11 ,  x18 ,  1
	bltu x0, x15, .LBB0_2
.LBB0_146:                              //  %for.end
	andi x15 ,  x27 ,  7
	xori x15 ,  x15 ,  7
	bltu x0, x15, .LBB0_155
.LBB0_147:                              //  %if.then339
	andi x15 ,  x27 ,  16
	bltu x0, x15, .LBB0_176
.LBB0_148:                              //  %if.then342
	lw x19 ,  16 ( x8 )
	lui x30 ,  _DAYS_BEFORE_MONTH&4095
	lui x14 ,  (_DAYS_BEFORE_MONTH>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x19 ,  2&31
	add x15 ,  x15 ,  x14
	lw x14 ,  12 ( x8 )
	lw x15 ,  0 ( x15 )
	add x18 ,  x15 ,  x14
	lw x15 ,  20 ( x8 )
	sw x18 ,  28 ( x8 )
	addi x9 ,  x15 ,  1900
	andi x15 ,  x9 ,  3
	beq x0, x15, .LBB0_149
.LBB0_153:                              //  %if.then356
	addi x15 ,  x18 ,  -1
	sw x15 ,  28 ( x8 )
.LBB0_154:                              //  %if.end358
	ori x27 ,  x27 ,  16
	andi x15 ,  x27 ,  28
	xori x15 ,  x15 ,  20
	beq x0, x15, .LBB0_177
	jal x0, .LBB0_184
.LBB0_127:                              //  %cleanup332.thread
	add x22 ,  x0 ,  x0
	jal x0, .LBB0_184
.LBB0_155:                              //  %if.else361
	andi x15 ,  x27 ,  20
	xori x15 ,  x15 ,  20
	bltu x0, x15, .LBB0_176
.LBB0_156:                              //  %if.then365
	andi x15 ,  x27 ,  2
	bltu x0, x15, .LBB0_169
.LBB0_157:                              //  %if.then368
	lw x18 ,  28 ( x8 )
	slti x15 ,  x18 ,  31
	beq x0, x15, .LBB0_159
.LBB0_158:
	add x15 ,  x0 ,  x0
	jal x0, .LBB0_168
.LBB0_149:                              //  %land.rhs.i680
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	beq x0, x10, .LBB0_150
.LBB0_152:                              //  %lor.lhs.false352
	slti x15 ,  x0 ,  1
	bge x15, x19, .LBB0_153
	jal x0, .LBB0_154
.LBB0_159:                              //  %if.else374
	lw x15 ,  20 ( x8 )
	addi x9 ,  x15 ,  1900
	andi x15 ,  x9 ,  3
	beq x0, x15, .LBB0_161
.LBB0_160:
	add x15 ,  x0 ,  x0
	addi x14 ,  x15 ,  59
	blt x18, x14, .LBB0_165
	jal x0, .LBB0_166
.LBB0_150:                              //  %is_leap_year.exit685
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x9
	call __modsi3
	slti x15 ,  x19 ,  2
	bltu x0, x15, .LBB0_153
.LBB0_151:                              //  %is_leap_year.exit685
	beq x0, x10, .LBB0_154
	jal x0, .LBB0_153
.LBB0_161:                              //  %land.rhs.i655
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	beq x0, x10, .LBB0_163
.LBB0_162:
	slti x15 ,  x0 ,  1
	addi x14 ,  x15 ,  59
	blt x18, x14, .LBB0_165
	jal x0, .LBB0_166
.LBB0_163:                              //  %lor.rhs.i659
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x9
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
	addi x14 ,  x15 ,  59
	bge x18, x14, .LBB0_166
.LBB0_165:
	slti x15 ,  x0 ,  1
	jal x0, .LBB0_168
.LBB0_166:                              //  %for.inc389
	ori x14 ,  x15 ,  90
	bge x18, x14, .LBB0_185
.LBB0_167:
	addi x15 ,  x0 ,  2
	jal x0, .LBB0_168
.LBB0_185:                              //  %for.inc389.1
	ori x14 ,  x15 ,  120
	bge x18, x14, .LBB0_187
.LBB0_186:
	addi x15 ,  x0 ,  3
	jal x0, .LBB0_168
.LBB0_187:                              //  %for.inc389.2
	addi x14 ,  x15 ,  151
	bge x18, x14, .LBB0_189
.LBB0_188:
	addi x15 ,  x0 ,  4
	jal x0, .LBB0_168
.LBB0_189:                              //  %for.inc389.3
	addi x14 ,  x15 ,  181
	bge x18, x14, .LBB0_191
.LBB0_190:
	addi x15 ,  x0 ,  5
	jal x0, .LBB0_168
.LBB0_191:                              //  %for.inc389.4
	ori x14 ,  x15 ,  212
	bge x18, x14, .LBB0_193
.LBB0_192:
	addi x15 ,  x0 ,  6
	jal x0, .LBB0_168
.LBB0_193:                              //  %for.inc389.5
	addi x14 ,  x15 ,  243
	bge x18, x14, .LBB0_195
.LBB0_194:
	addi x15 ,  x0 ,  7
	jal x0, .LBB0_168
.LBB0_195:                              //  %for.inc389.6
	addi x14 ,  x15 ,  273
	bge x18, x14, .LBB0_197
.LBB0_196:
	addi x15 ,  x0 ,  8
	jal x0, .LBB0_168
.LBB0_197:                              //  %for.inc389.7
	ori x14 ,  x15 ,  304
	bge x18, x14, .LBB0_199
.LBB0_198:
	addi x15 ,  x0 ,  9
	jal x0, .LBB0_168
.LBB0_199:                              //  %for.inc389.8
	ori x15 ,  x15 ,  334
	blt x18, x15, .LBB0_200
.LBB0_201:                              //  %for.inc389.8
	addi x15 ,  x0 ,  11
	jal x0, .LBB0_168
.LBB0_200:
	addi x15 ,  x0 ,  10
.LBB0_168:                              //  %if.end394.sink.split
	sw x15 ,  16 ( x8 )
.LBB0_169:                              //  %if.end394
	andi x15 ,  x27 ,  1
	bltu x0, x15, .LBB0_176
.LBB0_170:                              //  %if.then397
	lw x18 ,  16 ( x8 )
	lui x30 ,  _DAYS_BEFORE_MONTH&4095
	lui x14 ,  (_DAYS_BEFORE_MONTH>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x18 ,  2&31
	add x15 ,  x15 ,  x14
	lw x14 ,  28 ( x8 )
	lw x15 ,  0 ( x15 )
	sub x19 ,  x14 ,  x15
	lw x15 ,  20 ( x8 )
	sw x19 ,  12 ( x8 )
	addi x9 ,  x15 ,  1900
	andi x15 ,  x9 ,  3
	beq x0, x15, .LBB0_171
.LBB0_175:                              //  %if.then411
	addi x15 ,  x19 ,  1
	sw x15 ,  12 ( x8 )
.LBB0_176:                              //  %if.end417
	andi x15 ,  x27 ,  28
	xori x15 ,  x15 ,  20
	bltu x0, x15, .LBB0_184
.LBB0_177:                              //  %if.then421
	lw x15 ,  20 ( x8 )
	addi x21 ,  x0 ,  4
	addi x9 ,  x15 ,  1899
	slti x15 ,  x9 ,  1970
	bltu x0, x15, .LBB0_183
.LBB0_178:                              //  %while.body.i.preheader
	addi x18 ,  x0 ,  400
	addi x19 ,  x0 ,  100
	add x24 ,  x0 ,  x0
	slti x25 ,  x0 ,  1
	addi x20 ,  x0 ,  7
	addi x26 ,  x0 ,  1969
	jal x0, .LBB0_179
.LBB0_182:                              //  %is_leap_year.exit.i
                                        //    in Loop: Header=BB0_179 Depth=1
	add x10 ,  x14 ,  x15
	add x11 ,  x0 ,  x20
	call __modsi3
	add x21 ,  x0 ,  x10
	addi x9 ,  x9 ,  -1
	bge x26, x9, .LBB0_183
.LBB0_179:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __udivsi3
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x11 ,  x0 ,  x19
	call __mulsi3
	addi x15 ,  x21 ,  365
	andi x13 ,  x9 ,  3
	add x14 ,  x0 ,  x24
	bltu x0, x13, .LBB0_182
.LBB0_180:                              //  %land.rhs.i.i
                                        //    in Loop: Header=BB0_179 Depth=1
	sub x13 ,  x9 ,  x10
	add x14 ,  x0 ,  x25
	bltu x0, x13, .LBB0_182
.LBB0_181:                              //  %lor.rhs.i.i
                                        //    in Loop: Header=BB0_179 Depth=1
	sub x14 ,  x9 ,  x23
	xori x14 ,  x14 ,  0
	sltiu x14 ,  x14 ,  1
	jal x0, .LBB0_182
.LBB0_183:                              //  %first_day.exit
	lw x15 ,  28 ( x8 )
	addi x11 ,  x0 ,  7
	add x10 ,  x21 ,  x15
	call __modsi3
	sw x10 ,  24 ( x8 )
.LBB0_184:                              //  %cleanup429
	add x10 ,  x0 ,  x22
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  68 ( x2 )             //  4-byte Folded Reload
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
.LBB0_171:                              //  %land.rhs.i
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	beq x0, x10, .LBB0_172
.LBB0_174:                              //  %lor.lhs.false407
	slti x15 ,  x0 ,  1
	bge x15, x18, .LBB0_175
	jal x0, .LBB0_176
.LBB0_172:                              //  %is_leap_year.exit
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x9
	call __modsi3
	slti x15 ,  x18 ,  2
	bltu x0, x15, .LBB0_175
.LBB0_173:                              //  %is_leap_year.exit
	beq x0, x10, .LBB0_176
	jal x0, .LBB0_175
.Lfunc_end0:
	.size	strptime_l, .Lfunc_end0-strptime_l
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_135
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_136
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_14
	.long	.LBB0_23
	.long	.LBB0_32
	.long	.LBB0_36
	.long	.LBB0_138
	.long	.LBB0_40
	.long	.LBB0_138
	.long	.LBB0_43
	.long	.LBB0_45
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_52
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_65
	.long	.LBB0_72
	.long	.LBB0_76
	.long	.LBB0_82
	.long	.LBB0_93
	.long	.LBB0_110
	.long	.LBB0_125
	.long	.LBB0_133
	.long	.LBB0_145
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_18
	.long	.LBB0_27
	.long	.LBB0_34
	.long	.LBB0_38
	.long	.LBB0_38
	.long	.LBB0_138
	.long	.LBB0_138
	.long	.LBB0_27
	.long	.LBB0_138
	.long	.LBB0_48
	.long	.LBB0_43
	.long	.LBB0_45
	.long	.LBB0_50
	.long	.LBB0_54
	.long	.LBB0_138
	.long	.LBB0_56
	.long	.LBB0_138
	.long	.LBB0_64
	.long	.LBB0_67
	.long	.LBB0_74
	.long	.LBB0_77
	.long	.LBB0_138
	.long	.LBB0_79
	.long	.LBB0_123
	.long	.LBB0_128
                                        //  -- End function
	.text
	.globl	strptime                //  -- Begin function strptime
	.type	strptime,@function
strptime:                               //  @strptime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, strptime_l
.Lfunc_end1:
	.size	strptime, .Lfunc_end1-strptime
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	tm_year_base,@object    //  @tm_year_base
	.section	.rodata,"a",@progbits
	.globl	tm_year_base
	.p2align	2
tm_year_base:
	.long	1900                    //  0x76c
	.size	tm_year_base, 4

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%m/%d/%y"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"%Y-%m-%d"
	.size	.str.1, 9

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%H:%M"
	.size	.str.2, 6

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"%H:%M:%S"
	.size	.str.3, 9

	.address_space	0
	.type	_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	_DAYS_BEFORE_MONTH, 48

	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
