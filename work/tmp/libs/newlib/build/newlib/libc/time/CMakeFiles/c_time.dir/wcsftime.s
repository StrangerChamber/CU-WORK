	.text
	.file	"wcsftime.c"
	.globl	__ctloc                 //  -- Begin function __ctloc
	.type	__ctloc,@function
__ctloc:                                //  @__ctloc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	addi x12 ,  x0 ,  255
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x0 ,  1020 ( x9 )
	call mbstowcs
	addi x15 ,  x0 ,  -1
	bne x10, x15, .LBB0_2
.LBB0_1:
	add x10 ,  x0 ,  x0
.LBB0_2:                                //  %entry
	sw x10 ,  0 ( x8 )
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ctloc, .Lfunc_end0-__ctloc
	.cfi_endproc
                                        //  -- End function
	.globl	wcsftime                //  -- Begin function wcsftime
	.type	wcsftime,@function
wcsftime:                               //  @wcsftime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __strftime
.Lfunc_end1:
	.size	wcsftime, .Lfunc_end1-wcsftime
	.cfi_endproc
                                        //  -- End function
	.type	__strftime,@function    //  -- Begin function __strftime
__strftime:                             //  @__strftime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1264
	.cfi_adjust_cfa_offset 1264
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	sw x9 ,  1256 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  1252 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x0
	sw x20 ,  1244 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  1232 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  1212 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x23 ,  x0 ,  x13
	add x8 ,  x0 ,  x10
	sw x19 ,  1248 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x27 ,  1216 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 27, -48
	addi x13 ,  x0 ,  8
	addi x11 ,  x2 ,  60
	addi x5 ,  x0 ,  10
	addi x20 ,  x0 ,  85
	lui x10 ,  (JTI2_0>>12)&1048575
	sw x1 ,  1260 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  1240 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  1236 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  1228 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  1224 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  1220 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 26, -44
	srli x30 ,  x30 ,  12&31
	add x27 ,  x0 ,  x18
	addi x19 ,  x9 ,  -1
	add x29 ,  x0 ,  x18
	or x15 ,  x15 ,  x30
	lw x6 ,  160 ( x15 )
	lw x7 ,  228 ( x15 )
	lw x16 ,  156 ( x15 )
	lw x17 ,  152 ( x15 )
.LBB2_1:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_2 Depth 2
                                        //      Child Loop BB2_33 Depth 2
                                        //      Child Loop BB2_140 Depth 2
                                        //      Child Loop BB2_84 Depth 2
                                        //      Child Loop BB2_129 Depth 2
                                        //      Child Loop BB2_46 Depth 2
                                        //      Child Loop BB2_42 Depth 2
	slli x15 ,  x27 ,  2&31
	addi x21 ,  x12 ,  8
	add x22 ,  x15 ,  x8
	lw x15 ,  -8 ( x21 )
	bltu x0, x15, .LBB2_2
.LBB2_225:                              //  %for.cond
	jal x0, .LBB2_218
.LBB2_2:                                //  %while.cond
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB2_5
.LBB2_3:                                //  %while.body
                                        //    in Loop: Header=BB2_2 Depth=2
	bltu x27, x19, .LBB2_4
.LBB2_226:                              //  %while.body
	jal x0, .LBB2_22
.LBB2_4:                                //  %if.then
                                        //    in Loop: Header=BB2_2 Depth=2
	sw x15 ,  0 ( x22 )
	addi x21 ,  x21 ,  4
	addi x22 ,  x22 ,  4
	addi x27 ,  x27 ,  1
	lw x15 ,  -8 ( x21 )
	bltu x0, x15, .LBB2_2
	jal x0, .LBB2_218
.LBB2_5:                                //  %if.end4
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x26 ,  -4 ( x21 )
	xori x15 ,  x26 ,  43
	beq x0, x15, .LBB2_7
.LBB2_6:                                //  %if.end4
                                        //    in Loop: Header=BB2_1 Depth=1
	xori x15 ,  x26 ,  48
	bltu x0, x15, .LBB2_8
.LBB2_7:                                //  %if.then8
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  0 ( x21 )
	jal x0, .LBB2_9
.LBB2_8:                                //  %if.end4.if.end10_crit_edge
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x26
	addi x21 ,  x21 ,  -4
	add x26 ,  x0 ,  x18
.LBB2_9:                                //  %if.end10
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x15 ,  -49
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x7 ,  52 ( x2 )              //  4-byte Folded Spill
	sw x29 ,  56 ( x2 )             //  4-byte Folded Spill
	bltu x13, x14, .LBB2_12
.LBB2_10:                               //  %if.then13
                                        //    in Loop: Header=BB2_1 Depth=1
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x5
	add x21 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	call wcstoul
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x21
	lw x21 ,  60 ( x2 )
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	lw x15 ,  0 ( x21 )
	xori x14 ,  x15 ,  79
	beq x0, x14, .LBB2_13
.LBB2_11:                               //  %if.end15
                                        //    in Loop: Header=BB2_1 Depth=1
	xori x15 ,  x15 ,  69
	beq x0, x15, .LBB2_13
	jal x0, .LBB2_14
.LBB2_12:                               //    in Loop: Header=BB2_1 Depth=1
	add x24 ,  x0 ,  x18
	xori x14 ,  x15 ,  79
	bltu x0, x14, .LBB2_11
.LBB2_13:                               //  %if.then21
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x21 ,  x21 ,  4
.LBB2_14:                               //  %if.end24
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x25 ,  0 ( x21 )
	addi x15 ,  x25 ,  -37
	bgeu x20, x15, .LBB2_15
.LBB2_227:                              //  %if.end24
	jal x0, .LBB2_22
.LBB2_15:                               //  %if.end24
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  JTI2_0&4095
	slli x15 ,  x15 ,  2&31
	add x11 ,  x0 ,  x6
	add x20 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x14 ,  x10 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB2_16:                               //  %sw.bb402
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	lui x14 ,  (.str.6>>12)&1048575
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	addi x13 ,  x0 ,  107
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.6&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x25, x13, .LBB2_18
.LBB2_17:                               //  %sw.bb402
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_18:                               //  %sw.bb402
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  8 ( x23 )
	jal x0, .LBB2_19
.LBB2_23:                               //  %sw.bb422
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  8 ( x23 )
	add x20 ,  x0 ,  x18
	addi x10 ,  x0 ,  12
	beq x0, x15, .LBB2_26
.LBB2_24:                               //  %sw.bb422
                                        //    in Loop: Header=BB2_1 Depth=1
	xori x14 ,  x15 ,  12
	beq x0, x14, .LBB2_26
.LBB2_25:                               //  %cond.false431
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x15
	add x18 ,  x0 ,  x6
	call __modsi3
	add x6 ,  x0 ,  x18
.LBB2_26:                               //  %cond.end434
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.5>>12)&1048575
	add x18 ,  x0 ,  x6
	addi x13 ,  x0 ,  73
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.5&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x25, x13, .LBB2_28
.LBB2_27:                               //  %cond.end434
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_28:                               //  %cond.end434
                                        //    in Loop: Header=BB2_1 Depth=1
	sub x15 ,  x9 ,  x27
	sw x14 ,  8 ( x2 )
	sw x10 ,  12 ( x2 )
	sw x22 ,  0 ( x2 )
	sw x15 ,  4 ( x2 )
	call swprintf
	bge x10, x0, .LBB2_21
	jal x0, .LBB2_221
.LBB2_29:                               //  %sw.bb501
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  8 ( x23 )
	lui x30 ,  _C_time_locale&4095
	addi x14 ,  x0 ,  11
	addi x24 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x24
	slt x15 ,  x14 ,  x15
	lui x14 ,  (_C_time_locale>>12)&1048575
	slli x15 ,  x15 ,  2&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x11 ,  164 ( x15 )
	call mbstowcs
	add x25 ,  x0 ,  x10
	addi x15 ,  x25 ,  1
	sltiu x15 ,  x15 ,  2
	beq x0, x15, .LBB2_126
.LBB2_30:                               //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x0
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_31:                               //  %sw.bb57
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  16 ( x23 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	addi x24 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x25 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x24
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x11 ,  0 ( x15 )
	call mbstowcs
	addi x15 ,  x10 ,  1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB2_89
.LBB2_32:                               //  %for.body63.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x25
	add x15 ,  x0 ,  x20
	add x14 ,  x0 ,  x20
.LBB2_33:                               //  %for.body63
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x27
	bgeu x13, x19, .LBB2_221
.LBB2_34:                               //  %if.then66
                                        //    in Loop: Header=BB2_33 Depth=2
	add x12 ,  x14 ,  x24
	add x13 ,  x14 ,  x22
	addi x14 ,  x14 ,  4
	addi x15 ,  x15 ,  1
	lw x12 ,  0 ( x12 )
	sw x12 ,  0 ( x13 )
	bne x10, x15, .LBB2_33
	jal x0, .LBB2_142
.LBB2_35:                               //  %sw.bb158
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.5>>12)&1048575
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	addi x13 ,  x0 ,  100
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.5&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x25, x13, .LBB2_37
.LBB2_36:                               //  %sw.bb158
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_37:                               //  %sw.bb158
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  12 ( x23 )
.LBB2_19:                               //  %sw.bb402
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x14 ,  8 ( x2 )
	sw x22 ,  0 ( x2 )
	jal x0, .LBB2_20
.LBB2_38:                               //  %sw.bb959
                                        //    in Loop: Header=BB2_1 Depth=1
	bgeu x27, x19, .LBB2_22
.LBB2_39:                               //  %if.then963
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  37
	jal x0, .LBB2_113
.LBB2_40:                               //  %sw.bb38
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	addi x24 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x25 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x24
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x11 ,  124 ( x15 )
	call mbstowcs
	addi x15 ,  x10 ,  1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB2_89
.LBB2_41:                               //  %for.body45.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x25
	add x15 ,  x0 ,  x20
	add x14 ,  x0 ,  x20
.LBB2_42:                               //  %for.body45
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x27
	bgeu x13, x19, .LBB2_221
.LBB2_43:                               //  %if.then48
                                        //    in Loop: Header=BB2_42 Depth=2
	add x12 ,  x14 ,  x24
	add x13 ,  x14 ,  x22
	addi x14 ,  x14 ,  4
	addi x15 ,  x15 ,  1
	lw x12 ,  0 ( x12 )
	sw x12 ,  0 ( x13 )
	bne x10, x15, .LBB2_42
	jal x0, .LBB2_142
.LBB2_44:                               //  %sw.bb75
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  16 ( x23 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	addi x24 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x25 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x24
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x11 ,  48 ( x15 )
	call mbstowcs
	addi x15 ,  x10 ,  1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB2_89
.LBB2_45:                               //  %for.body82.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x25
	add x15 ,  x0 ,  x20
	add x14 ,  x0 ,  x20
.LBB2_46:                               //  %for.body82
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x27
	bgeu x13, x19, .LBB2_221
.LBB2_47:                               //  %if.then85
                                        //    in Loop: Header=BB2_46 Depth=2
	add x12 ,  x14 ,  x24
	add x13 ,  x14 ,  x22
	addi x14 ,  x14 ,  4
	addi x15 ,  x15 ,  1
	lw x12 ,  0 ( x12 )
	sw x12 ,  0 ( x13 )
	bne x10, x15, .LBB2_46
	jal x0, .LBB2_142
.LBB2_48:                               //  %sw.bb116
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x23
	lw x23 ,  20 ( x23 )
	add x25 ,  x0 ,  x6
	blt x23, x0, .LBB2_143
.LBB2_49:                               //  %cond.true
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x23
	call __udivsi3
	addi x10 ,  x10 ,  19
	jal x0, .LBB2_144
.LBB2_50:                               //  %sw.bb173
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x23
	add x26 ,  x0 ,  x18
	sub x23 ,  x9 ,  x27
	lw x15 ,  16 ( x14 )
	add x25 ,  x0 ,  x14
	lw x24 ,  12 ( x14 )
	lw x10 ,  20 ( x14 )
	addi x20 ,  x15 ,  1
	blt x10, x0, .LBB2_156
.LBB2_51:                               //    in Loop: Header=BB2_1 Depth=1
	add x18 ,  x0 ,  x6
	jal x0, .LBB2_157
.LBB2_52:                               //  %sw.bb200
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	bne x26, x20, .LBB2_54
.LBB2_53:                               //  %sw.bb200
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x26 ,  x0 ,  43
	addi x24 ,  x0 ,  10
.LBB2_54:                               //  %sw.bb200
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  37
	addi x25 ,  x2 ,  68
	sw x26 ,  64 ( x2 )
	sw x15 ,  60 ( x2 )
	addi x15 ,  x0 ,  6
	bltu x15, x24, .LBB2_56
.LBB2_55:                               //  %sw.bb200
                                        //    in Loop: Header=BB2_1 Depth=1
	add x24 ,  x0 ,  x15
.LBB2_56:                               //  %sw.bb200
                                        //    in Loop: Header=BB2_1 Depth=1
	add x18 ,  x0 ,  x6
	addi x15 ,  x24 ,  -6
	add x10 ,  x0 ,  x25
	beq x0, x15, .LBB2_190
.LBB2_57:                               //  %if.then219
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.8&4095
	lui x14 ,  (.str.8>>12)&1048575
	sw x15 ,  12 ( x2 )
	addi x15 ,  x0 ,  30
	sw x25 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x2 )
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	call swprintf
	blt x20, x10, .LBB2_189
.LBB2_58:                               //  %if.then219
                                        //    in Loop: Header=BB2_1 Depth=1
	add x10 ,  x0 ,  x25
	jal x0, .LBB2_190
.LBB2_59:                               //  %sw.bb291
                                        //    in Loop: Header=BB2_1 Depth=1
	add x10 ,  x0 ,  x23
	sw x6 ,  36 ( x2 )              //  4-byte Folded Spill
	lw x25 ,  20 ( x23 )
	call iso_year_adjust
	add x20 ,  x0 ,  x23
	add x23 ,  x0 ,  x10
	sw x20 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x25, x0, .LBB2_159
.LBB2_60:                               //  %cond.end310.thread
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x25
	call __udivsi3
	addi x15 ,  x10 ,  19
	add x10 ,  x0 ,  x25
	sw x15 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x11 ,  x0 ,  100
	call __modsi3
	bge x23, x0, .LBB2_61
	jal x0, .LBB2_162
.LBB2_63:                               //  %sw.bb480
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  4 ( x23 )
	jal x0, .LBB2_64
.LBB2_65:                               //  %sw.bb533
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  4 ( x23 )
	lui x30 ,  .str.12&4095
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	lw x14 ,  8 ( x23 )
	srli x30 ,  x30 ,  12&31
	sw x22 ,  0 ( x2 )
	sw x15 ,  16 ( x2 )
	lui x15 ,  (.str.12>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x14 ,  12 ( x2 )
	jal x0, .LBB2_180
.LBB2_66:                               //  %sw.bb611
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  0 ( x23 )
.LBB2_64:                               //  %sw.bb480
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x14 ,  (.str.5>>12)&1048575
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	jal x0, .LBB2_20
.LBB2_67:                               //  %sw.bb633
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  8 ( x23 )
	lui x30 ,  .str.14&4095
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	lw x14 ,  0 ( x23 )
	srli x30 ,  x30 ,  12&31
	lw x13 ,  4 ( x23 )
	sw x22 ,  0 ( x2 )
	sw x15 ,  12 ( x2 )
	lui x15 ,  (.str.14>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x14 ,  20 ( x2 )
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x13 ,  16 ( x2 )
	sw x15 ,  4 ( x2 )
	call swprintf
	bge x10, x0, .LBB2_21
	jal x0, .LBB2_221
.LBB2_68:                               //  %sw.bb667
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
	addi x11 ,  x0 ,  7
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	lw x14 ,  28 ( x23 )
	sub x15 ,  x14 ,  x15
	addi x10 ,  x15 ,  7
	call __divsi3
	jal x0, .LBB2_179
.LBB2_69:                               //  %sw.bb684
                                        //    in Loop: Header=BB2_1 Depth=1
	add x10 ,  x0 ,  x23
	sw x6 ,  36 ( x2 )              //  4-byte Folded Spill
	call iso_year_adjust
	lw x15 ,  24 ( x23 )
	add x24 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	beq x15, x20, .LBB2_131
.LBB2_70:                               //  %sw.bb684
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x25 ,  x15 ,  -1
	bge x0, x24, .LBB2_71
.LBB2_132:                              //    in Loop: Header=BB2_1 Depth=1
	slti x10 ,  x0 ,  1
	jal x0, .LBB2_212
.LBB2_74:                               //  %sw.bb773
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
	add x24 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	add x20 ,  x0 ,  x0
	beq x15, x20, .LBB2_133
.LBB2_75:                               //  %sw.bb773
                                        //    in Loop: Header=BB2_1 Depth=1
	slti x14 ,  x0 ,  1
	sub x15 ,  x14 ,  x15
	jal x0, .LBB2_134
.LBB2_76:                               //  %sw.bb103
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x11 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_115
.LBB2_77:                               //  %sw.bb827
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  20 ( x23 )
	addi x14 ,  x0 ,  -1901
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x14, x15, .LBB2_136
.LBB2_78:                               //  %if.then839
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x0 ,  45
	sw x14 ,  60 ( x2 )
	addi x14 ,  x0 ,  -1900
	sub x23 ,  x14 ,  x15
	slti x15 ,  x0 ,  1
	addi x14 ,  x2 ,  64
	jal x0, .LBB2_199
.LBB2_79:                               //  %sw.bb921
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  32 ( x23 )
	blt x15, x0, .LBB2_216
.LBB2_80:                               //  %if.then925
                                        //    in Loop: Header=BB2_1 Depth=1
	add x24 ,  x0 ,  x6
	call __tz_lock
	lw x25 ,  56 ( x2 )             //  4-byte Folded Reload
	bltu x0, x25, .LBB2_82
.LBB2_81:                               //  %if.then927
                                        //    in Loop: Header=BB2_1 Depth=1
	call _tzset_unlocked
	slti x25 ,  x0 ,  1
.LBB2_82:                               //  %if.then930
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  32 ( x23 )
	lui x30 ,  _tzname&4095
	lui x14 ,  (_tzname>>12)&1048575
	add x20 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x23 ,  0 ( x15 )
	add x10 ,  x0 ,  x23
	call strlen
	beq x0, x10, .LBB2_87
.LBB2_83:                               //  %for.body940.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x15
.LBB2_84:                               //  %for.body940
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x14 ,  x27
	bgeu x13, x19, .LBB2_222
.LBB2_85:                               //  %if.then944
                                        //    in Loop: Header=BB2_84 Depth=2
	add x12 ,  x14 ,  x23
	add x13 ,  x15 ,  x22
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  1
	lb x12 ,  0 ( x12 )
	sw x12 ,  0 ( x13 )
	bne x10, x14, .LBB2_84
.LBB2_86:                               //  %for.end953.loopexit
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x14 ,  x27
.LBB2_87:                               //    in Loop: Header=BB2_1 Depth=1
	sw x25 ,  56 ( x2 )             //  4-byte Folded Spill
	call __tz_unlock
	add x23 ,  x0 ,  x20
	add x6 ,  x0 ,  x24
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_88:                               //  %sw.bb
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	addi x24 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x25 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x24
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x11 ,  96 ( x15 )
	call mbstowcs
	addi x15 ,  x10 ,  1
	sltiu x15 ,  x15 ,  2
	beq x0, x15, .LBB2_139
.LBB2_89:                               //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x25
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_90:                               //  %sw.bb240
                                        //    in Loop: Header=BB2_1 Depth=1
	add x10 ,  x0 ,  x23
	add x24 ,  x0 ,  x6
	call iso_year_adjust
	add x15 ,  x0 ,  x23
	add x23 ,  x0 ,  x10
	lw x10 ,  20 ( x15 )
	add x20 ,  x0 ,  x15
	bge x10, x0, .LBB2_92
.LBB2_91:                               //  %cond.false248
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x10 ,  1900
	call abs
.LBB2_92:                               //  %cond.end253
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	blt x23, x0, .LBB2_173
.LBB2_93:                               //  %if.else262
                                        //    in Loop: Header=BB2_1 Depth=1
	beq x0, x23, .LBB2_194
.LBB2_94:                               //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  -1
	addi x14 ,  x0 ,  -1900
	lw x13 ,  20 ( x20 )
	bge x13, x14, .LBB2_174
	jal x0, .LBB2_195
.LBB2_95:                               //  %sw.bb453
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  28 ( x23 )
	lui x30 ,  .str.11&4095
	lui x14 ,  (.str.11>>12)&1048575
	jal x0, .LBB2_96
.LBB2_97:                               //  %sw.bb466
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  16 ( x23 )
	lui x30 ,  .str.5&4095
	lui x14 ,  (.str.5>>12)&1048575
.LBB2_96:                               //  %sw.bb453
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	addi x15 ,  x15 ,  1
.LBB2_20:                               //  %sw.bb402
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  12 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_221
.LBB2_21:                               //  %lor.lhs.false411
                                        //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x27 ,  x27 ,  x10
	add x18 ,  x0 ,  x20
	bgeu x27, x9, .LBB2_22
.LBB2_215:                              //  %sw.epilog
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  0 ( x21 )
	beq x0, x15, .LBB2_218
.LBB2_216:                              //  %if.then969
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x12 ,  x21 ,  4
	addi x13 ,  x0 ,  8
	addi x11 ,  x2 ,  60
	addi x5 ,  x0 ,  10
	addi x20 ,  x0 ,  85
	lui x10 ,  (JTI2_0>>12)&1048575
	lw x7 ,  52 ( x2 )              //  4-byte Folded Reload
	lw x16 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x29 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_1
.LBB2_98:                               //  %sw.bb492
                                        //    in Loop: Header=BB2_1 Depth=1
	bgeu x27, x19, .LBB2_22
.LBB2_99:                               //  %if.then496
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  10
	jal x0, .LBB2_113
.LBB2_100:                              //  %sw.bb97
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x11 ,  52 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_115
.LBB2_101:                              //  %sw.bb547
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  32 ( x23 )
	add x20 ,  x0 ,  x0
	sw x6 ,  36 ( x2 )              //  4-byte Folded Spill
	blt x15, x0, .LBB2_175
.LBB2_102:                              //  %if.then550
                                        //    in Loop: Header=BB2_1 Depth=1
	call __tz_lock
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB2_104
.LBB2_103:                              //  %if.then552
                                        //    in Loop: Header=BB2_1 Depth=1
	call _tzset_unlocked
	slti x15 ,  x0 ,  1
.LBB2_104:                              //  %if.end553
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
	call __gettzinfo
	lw x15 ,  32 ( x23 )
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  5&31
	add x15 ,  x15 ,  x10
	lw x15 ,  36 ( x15 )
	sub x15 ,  x0 ,  x15
	sw x15 ,  32 ( x2 )             //  4-byte Folded Spill
	call __tz_unlock
	jal x0, .LBB2_176
.LBB2_105:                              //  %sw.bb624
                                        //    in Loop: Header=BB2_1 Depth=1
	bgeu x27, x19, .LBB2_22
.LBB2_106:                              //  %if.then628
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  9
	jal x0, .LBB2_113
.LBB2_107:                              //  %sw.bb648
                                        //    in Loop: Header=BB2_1 Depth=1
	bgeu x27, x19, .LBB2_22
.LBB2_108:                              //  %if.then652
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
	bltu x0, x15, .LBB2_112
.LBB2_109:                              //  %if.then656
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  55
	jal x0, .LBB2_113
.LBB2_110:                              //  %sw.bb762
                                        //    in Loop: Header=BB2_1 Depth=1
	bgeu x27, x19, .LBB2_22
.LBB2_111:                              //  %if.then766
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  24 ( x23 )
.LBB2_112:                              //  %if.else659
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x15 ,  48
.LBB2_113:                              //  %sw.epilog
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  0 ( x22 )
	addi x27 ,  x27 ,  1
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_114:                              //  %sw.bb100
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
.LBB2_115:                              //  %recurse
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x2 ,  188
	addi x12 ,  x0 ,  255
	add x20 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x0 ,  1208 ( x2 )
	call mbstowcs
	lw x15 ,  188 ( x2 )
	beq x0, x15, .LBB2_118
.LBB2_116:                              //  %if.then107
                                        //    in Loop: Header=BB2_1 Depth=1
	sub x11 ,  x9 ,  x27
	addi x12 ,  x2 ,  188
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __strftime
	bge x0, x10, .LBB2_221
.LBB2_117:                              //  %if.then112
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x27 ,  x10
.LBB2_118:                              //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x20
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_119:                              //  %sw.bb801
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x10 ,  20 ( x23 )
	add x20 ,  x0 ,  x18
	blt x10, x0, .LBB2_177
.LBB2_120:                              //    in Loop: Header=BB2_1 Depth=1
	add x18 ,  x0 ,  x6
	jal x0, .LBB2_178
.LBB2_121:                              //  %sw.bb883
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  32 ( x23 )
	blt x15, x0, .LBB2_216
.LBB2_122:                              //  %if.then887
                                        //    in Loop: Header=BB2_1 Depth=1
	add x26 ,  x0 ,  x6
	call __tz_lock
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB2_124
.LBB2_123:                              //  %if.then890
                                        //    in Loop: Header=BB2_1 Depth=1
	call _tzset_unlocked
	slti x15 ,  x0 ,  1
.LBB2_124:                              //  %if.end891
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
	call __gettzinfo
	lw x15 ,  32 ( x23 )
	add x25 ,  x0 ,  x23
	lui x30 ,  -3600&4095
	sub x20 ,  x9 ,  x27
	srli x30 ,  x30 ,  12&31
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  5&31
	add x15 ,  x15 ,  x10
	lw x23 ,  36 ( x15 )
	lui x15 ,  (-3600>>12)&1048575
	or x11 ,  x15 ,  x30
	add x10 ,  x0 ,  x23
	call __divsi3
	add x24 ,  x0 ,  x10
	call __tz_unlock
	addi x11 ,  x0 ,  -60
	add x10 ,  x0 ,  x23
	call __divsi3
	call labs
	addi x11 ,  x0 ,  60
	call __modsi3
	lui x30 ,  .str.15&4095
	lui x15 ,  (.str.15>>12)&1048575
	sw x24 ,  12 ( x2 )
	sw x10 ,  16 ( x2 )
	sw x20 ,  4 ( x2 )
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_22
.LBB2_125:                              //  %cleanup916
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x27 ,  x10
	add x23 ,  x0 ,  x25
	add x6 ,  x0 ,  x26
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_126:                              //  %for.body512.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	add x6 ,  x0 ,  x18
	add x26 ,  x0 ,  x20
	add x23 ,  x0 ,  x20
	add x15 ,  x26 ,  x27
	bltu x15, x19, .LBB2_129
	jal x0, .LBB2_221
.LBB2_127:                              //  %cond.end524
                                        //    in Loop: Header=BB2_129 Depth=2
	add x15 ,  x23 ,  x22
	addi x23 ,  x23 ,  4
	addi x26 ,  x26 ,  1
	sw x10 ,  0 ( x15 )
	beq x25, x26, .LBB2_217
.LBB2_128:                              //  %for.body512
                                        //    in Loop: Header=BB2_129 Depth=2
	add x15 ,  x26 ,  x27
	bgeu x15, x19, .LBB2_221
.LBB2_129:                              //  %if.then516
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x23 ,  x24
	lw x10 ,  0 ( x15 )
	lw x15 ,  0 ( x21 )
	xori x15 ,  x15 ,  80
	bltu x0, x15, .LBB2_127
.LBB2_130:                              //  %cond.true519
                                        //    in Loop: Header=BB2_129 Depth=2
	call towlower
	add x6 ,  x0 ,  x18
	jal x0, .LBB2_127
.LBB2_131:                              //    in Loop: Header=BB2_1 Depth=1
	addi x25 ,  x0 ,  6
	blt x0, x24, .LBB2_132
.LBB2_71:                               //  %if.else703
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x26 ,  28 ( x23 )
	addi x11 ,  x0 ,  7
	sub x15 ,  x26 ,  x25
	addi x10 ,  x15 ,  10
	call __divsi3
	bge x24, x0, .LBB2_212
.LBB2_72:                               //  %if.then706
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  20 ( x23 )
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x15, x20, .LBB2_204
.LBB2_73:                               //  %if.then706
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x0 ,  -101
	jal x0, .LBB2_205
.LBB2_133:                              //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  -6
.LBB2_134:                              //  %sw.bb773
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x14 ,  28 ( x23 )
	addi x11 ,  x0 ,  7
	add x15 ,  x15 ,  x14
	addi x10 ,  x15 ,  7
	call __divsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_221
.LBB2_135:                              //  %cleanup798
                                        //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x27 ,  x27 ,  x10
	add x18 ,  x0 ,  x24
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_221
.LBB2_136:                              //  %if.else843
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x23 ,  x15 ,  1900
	add x15 ,  x0 ,  x0
	xori x14 ,  x26 ,  43
	addi x13 ,  x2 ,  64
	bltu x0, x14, .LBB2_197
.LBB2_137:                              //  %if.else843
                                        //    in Loop: Header=BB2_1 Depth=1
	srli x14 ,  x23 ,  4&31
	addi x12 ,  x2 ,  60
	sltiu x14 ,  x14 ,  625
	bltu x0, x14, .LBB2_198
.LBB2_138:                              //  %if.then849
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  43
	add x14 ,  x0 ,  x13
	sw x15 ,  60 ( x2 )
	slti x15 ,  x0 ,  1
	jal x0, .LBB2_199
.LBB2_139:                              //  %for.body.preheader
                                        //    in Loop: Header=BB2_1 Depth=1
	add x20 ,  x0 ,  x0
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x25
	add x15 ,  x0 ,  x20
	add x14 ,  x0 ,  x20
.LBB2_140:                              //  %for.body
                                        //    Parent Loop BB2_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x27
	bgeu x13, x19, .LBB2_221
.LBB2_141:                              //  %if.then31
                                        //    in Loop: Header=BB2_140 Depth=2
	add x12 ,  x14 ,  x24
	add x13 ,  x14 ,  x22
	addi x14 ,  x14 ,  4
	addi x15 ,  x15 ,  1
	lw x12 ,  0 ( x12 )
	sw x12 ,  0 ( x13 )
	bne x10, x15, .LBB2_140
.LBB2_142:                              //  %sw.epilog.loopexit2
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x15 ,  x27
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_217:                              //  %sw.epilog.loopexit8
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x26 ,  x27
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_143:                              //  %cond.false
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x23 ,  1900
	call abs
	addi x11 ,  x0 ,  100
	call __divsi3
.LBB2_144:                              //  %cond.end
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	lui x13 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	beq x0, x26, .LBB2_150
.LBB2_145:                              //  %if.then128
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.1&4095
	lui x14 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x13 ,  x30
	lui x30 ,  .str.3&4095
	addi x13 ,  x0 ,  99
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x13, x10, .LBB2_147
.LBB2_146:                              //  %if.then128
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_147:                              //  %if.then128
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x13 ,  x0 ,  43
	beq x26, x13, .LBB2_149
.LBB2_148:                              //  %if.then128
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_149:                              //  %if.then128
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
.LBB2_150:                              //  %if.end136
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.4&4095
	lui x13 ,  (.str.4>>12)&1048575
	addi x12 ,  x0 ,  -1900
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x23, x12, .LBB2_152
.LBB2_151:                              //  %if.end136
                                        //    in Loop: Header=BB2_1 Depth=1
	add x13 ,  x0 ,  x14
.LBB2_152:                              //  %if.end136
                                        //    in Loop: Header=BB2_1 Depth=1
	slti x14 ,  x23 ,  -1900
	addi x12 ,  x0 ,  2
	bltu x12, x24, .LBB2_154
.LBB2_153:                              //  %if.end136
                                        //    in Loop: Header=BB2_1 Depth=1
	add x24 ,  x0 ,  x12
.LBB2_154:                              //  %if.end136
                                        //    in Loop: Header=BB2_1 Depth=1
	sub x14 ,  x24 ,  x14
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x10 ,  20 ( x2 )
	sw x13 ,  12 ( x2 )
	sw x22 ,  0 ( x2 )
	sw x14 ,  16 ( x2 )
	sw x15 ,  4 ( x2 )
	call swprintf
	add x23 ,  x0 ,  x20
	blt x10, x0, .LBB2_22
.LBB2_155:                              //  %lor.lhs.false152
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x27 ,  x10
	add x6 ,  x0 ,  x25
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_156:                              //  %cond.false184
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x10 ,  1900
	add x18 ,  x0 ,  x6
	call abs
.LBB2_157:                              //  %cond.end189
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	sw x24 ,  16 ( x2 )
	sw x10 ,  20 ( x2 )
	sw x20 ,  12 ( x2 )
	sw x23 ,  4 ( x2 )
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_223
.LBB2_158:                              //  %lor.lhs.false194
                                        //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x27 ,  x27 ,  x10
	add x23 ,  x0 ,  x25
	add x18 ,  x0 ,  x26
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_159:                              //  %cond.end310
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x25 ,  1900
	call abs
	addi x11 ,  x0 ,  100
	call __divsi3
	sw x10 ,  32 ( x2 )             //  4-byte Folded Spill
	lw x10 ,  20 ( x20 )
	bge x10, x0, .LBB2_161
.LBB2_160:                              //  %cond.false319
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x10 ,  1900
	call abs
.LBB2_161:                              //  %cond.end324
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	bge x23, x0, .LBB2_61
.LBB2_162:                              //  %land.lhs.true328
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  20 ( x15 )
	slti x15 ,  x15 ,  -1899
	beq x0, x15, .LBB2_61
.LBB2_163:                              //    in Loop: Header=BB2_1 Depth=1
	slti x25 ,  x0 ,  1
	add x15 ,  x0 ,  x25
	add x20 ,  x10 ,  x15
	xori x15 ,  x20 ,  100
	bltu x0, x15, .LBB2_171
.LBB2_164:                              //  %if.then348
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	addi x10 ,  x10 ,  1
	addi x11 ,  x0 ,  100
	call __mulsi3
	add x23 ,  x20 ,  x10
	bltu x0, x25, .LBB2_182
.LBB2_165:                              //  %if.else359
                                        //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x0
	addi x15 ,  x2 ,  60
	xori x13 ,  x26 ,  43
	addi x12 ,  x2 ,  64
	bltu x0, x13, .LBB2_184
.LBB2_166:                              //  %if.else359
                                        //    in Loop: Header=BB2_1 Depth=1
	srli x13 ,  x23 ,  4&31
	sltiu x13 ,  x13 ,  625
	bltu x0, x13, .LBB2_184
.LBB2_167:                              //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  43
	jal x0, .LBB2_183
.LBB2_61:                               //  %if.else333
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x0
	blt x15, x23, .LBB2_168
.LBB2_62:                               //  %if.else333
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x23
	addi x14 ,  x0 ,  -1900
	blt x25, x14, .LBB2_170
.LBB2_169:                              //  %if.else333
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x23
.LBB2_170:                              //  %if.else333
                                        //    in Loop: Header=BB2_1 Depth=1
	slti x25 ,  x25 ,  -1900
	add x20 ,  x10 ,  x15
	xori x15 ,  x20 ,  100
	beq x0, x15, .LBB2_164
.LBB2_171:                              //  %if.end340
                                        //    in Loop: Header=BB2_1 Depth=1
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB2_181
.LBB2_172:                              //  %if.then344
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x20 ,  x0 ,  99
	addi x10 ,  x10 ,  -1
	addi x11 ,  x0 ,  100
	call __mulsi3
	add x23 ,  x20 ,  x10
	beq x0, x25, .LBB2_165
.LBB2_182:                              //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  45
	addi x12 ,  x2 ,  64
.LBB2_183:                              //  %if.end368.sink.split
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  60 ( x2 )
	slti x14 ,  x0 ,  1
	add x15 ,  x0 ,  x12
.LBB2_184:                              //  %if.end368
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x13 ,  x0 ,  37
	sw x13 ,  0 ( x15 )
	sltu x13 ,  x0 ,  x24
	and x14 ,  x14 ,  x13
	sub x20 ,  x24 ,  x14
	beq x0, x26, .LBB2_186
.LBB2_185:                              //  %if.then377
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x0 ,  48
	addi x10 ,  x15 ,  8
	sw x14 ,  4 ( x15 )
	jal x0, .LBB2_187
.LBB2_168:                              //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  -1
	addi x14 ,  x0 ,  -1900
	blt x25, x14, .LBB2_170
	jal x0, .LBB2_169
.LBB2_173:                              //    in Loop: Header=BB2_1 Depth=1
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1899
	lw x13 ,  20 ( x20 )
	blt x13, x14, .LBB2_195
.LBB2_174:                              //  %if.end271.sink.split
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_195
.LBB2_175:                              //    in Loop: Header=BB2_1 Depth=1
	sw x20 ,  32 ( x2 )             //  4-byte Folded Spill
.LBB2_176:                              //  %if.end561
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x24 ,  20 ( x23 )
	add x25 ,  x0 ,  x23
	addi x11 ,  x0 ,  -100
	addi x23 ,  x24 ,  -69
	addi x10 ,  x24 ,  -1
	srai x14 ,  x24 ,  31&31
	sltu x15 ,  x23 ,  x24
	add x26 ,  x15 ,  x14
	call __divsi3
	lw x14 ,  28 ( x25 )
	srai x15 ,  x10 ,  31&31
	srai x13 ,  x14 ,  31&31
	add x14 ,  x14 ,  x10
	add x15 ,  x13 ,  x15
	sltu x13 ,  x14 ,  x10
	addi x10 ,  x24 ,  299
	add x15 ,  x13 ,  x15
	addi x13 ,  x26 ,  -1
	srai x12 ,  x13 ,  31&31
	srli x12 ,  x12 ,  30&31
	add x12 ,  x12 ,  x23
	sltu x11 ,  x12 ,  x23
	srli x12 ,  x12 ,  2&31
	add x13 ,  x11 ,  x13
	srai x11 ,  x13 ,  2&31
	slli x13 ,  x13 ,  30&31
	or x13 ,  x13 ,  x12
	add x15 ,  x11 ,  x15
	addi x11 ,  x0 ,  400
	add x23 ,  x13 ,  x14
	sltu x14 ,  x23 ,  x14
	add x26 ,  x14 ,  x15
	call __divsi3
	srai x15 ,  x10 ,  31&31
	addi x11 ,  x0 ,  365
	add x15 ,  x15 ,  x26
	add x26 ,  x10 ,  x23
	add x10 ,  x0 ,  x24
	sltu x14 ,  x26 ,  x23
	add x23 ,  x14 ,  x15
	call __mulsi3
	lui x30 ,  -25550&4095
	lui x15 ,  (-25550>>12)&1048575
	addi x12 ,  x0 ,  24
	add x13 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x10
	srai x14 ,  x15 ,  31&31
	add x10 ,  x15 ,  x26
	add x14 ,  x14 ,  x23
	sltu x15 ,  x10 ,  x26
	add x23 ,  x0 ,  x25
	add x11 ,  x15 ,  x14
	call __muldi3
	lw x15 ,  8 ( x23 )
	addi x24 ,  x0 ,  60
	add x12 ,  x0 ,  x24
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	sltu x13 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	add x10 ,  x0 ,  x15
	add x11 ,  x13 ,  x14
	add x13 ,  x0 ,  x20
	call __muldi3
	lw x15 ,  4 ( x23 )
	add x12 ,  x0 ,  x24
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	sltu x13 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	add x10 ,  x0 ,  x15
	add x11 ,  x13 ,  x14
	add x13 ,  x0 ,  x20
	call __muldi3
	lw x15 ,  0 ( x23 )
	lui x30 ,  .str.13&4095
	lw x12 ,  32 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	srai x13 ,  x15 ,  31&31
	srai x14 ,  x12 ,  31&31
	sub x14 ,  x13 ,  x14
	sltu x13 ,  x15 ,  x12
	sub x15 ,  x15 ,  x12
	sub x14 ,  x14 ,  x13
	add x13 ,  x10 ,  x15
	add x14 ,  x11 ,  x14
	sltu x15 ,  x13 ,  x15
	sw x13 ,  12 ( x2 )
	add x15 ,  x15 ,  x14
	sw x15 ,  16 ( x2 )
	lui x15 ,  (.str.13>>12)&1048575
	jal x0, .LBB2_213
.LBB2_177:                              //  %cond.false809
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x10 ,  1900
	add x18 ,  x0 ,  x6
	call abs
.LBB2_178:                              //  %cond.end814
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
.LBB2_179:                              //  %cond.end814
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
.LBB2_180:                              //  %cond.end814
                                        //    in Loop: Header=BB2_1 Depth=1
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	bge x10, x0, .LBB2_21
	jal x0, .LBB2_221
.LBB2_186:                              //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x15 ,  4
.LBB2_187:                              //  %if.end379
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.10&4095
	lui x15 ,  (.str.10>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call wcscpy
	addi x15 ,  x2 ,  60
	sw x20 ,  12 ( x2 )
	sw x23 ,  16 ( x2 )
	sw x22 ,  0 ( x2 )
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_22
.LBB2_188:                              //  %cleanup393
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x27 ,  x10
	lw x6 ,  36 ( x2 )              //  4-byte Folded Reload
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_181:                              //    in Loop: Header=BB2_1 Depth=1
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x0 ,  100
	call __mulsi3
	add x23 ,  x20 ,  x10
	bltu x0, x25, .LBB2_182
	jal x0, .LBB2_165
.LBB2_189:                              //    in Loop: Header=BB2_1 Depth=1
	slli x15 ,  x10 ,  2&31
	add x10 ,  x15 ,  x25
.LBB2_190:                              //  %if.end227
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.9&4095
	lui x15 ,  (.str.9>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call wcscpy
	sub x11 ,  x9 ,  x27
	addi x12 ,  x2 ,  60
	add x10 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __strftime
	add x15 ,  x0 ,  x10
	blt x20, x10, .LBB2_192
.LBB2_191:                              //  %if.end227
                                        //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x20
.LBB2_192:                              //  %if.end227
                                        //    in Loop: Header=BB2_1 Depth=1
	add x6 ,  x0 ,  x18
	add x18 ,  x0 ,  x0
	bge x0, x10, .LBB2_221
.LBB2_193:                              //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x27 ,  x15
	lw x15 ,  0 ( x21 )
	bltu x0, x15, .LBB2_216
	jal x0, .LBB2_218
.LBB2_194:                              //    in Loop: Header=BB2_1 Depth=1
	add x15 ,  x0 ,  x0
.LBB2_195:                              //  %if.end271
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x23 ,  x0 ,  100
	add x10 ,  x10 ,  x15
	add x11 ,  x0 ,  x23
	call __modsi3
	addi x10 ,  x10 ,  100
	add x11 ,  x0 ,  x23
	call __modsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	sw x22 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_22
.LBB2_196:                              //  %cleanup287
                                        //    in Loop: Header=BB2_1 Depth=1
	add x27 ,  x27 ,  x10
	add x23 ,  x0 ,  x20
	add x6 ,  x0 ,  x24
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_197:                              //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x2 ,  60
	jal x0, .LBB2_199
.LBB2_198:                              //    in Loop: Header=BB2_1 Depth=1
	add x14 ,  x0 ,  x12
.LBB2_199:                              //  %if.end852
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x13 ,  x0 ,  37
	add x25 ,  x0 ,  x18
	add x18 ,  x0 ,  x6
	sw x13 ,  0 ( x14 )
	sltu x13 ,  x0 ,  x24
	and x15 ,  x15 ,  x13
	sub x20 ,  x24 ,  x15
	beq x0, x26, .LBB2_201
.LBB2_200:                              //  %if.then861
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x15 ,  x0 ,  48
	addi x10 ,  x14 ,  8
	sw x15 ,  4 ( x14 )
	jal x0, .LBB2_202
.LBB2_201:                              //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x14 ,  4
.LBB2_202:                              //  %if.end863
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.10&4095
	lui x15 ,  (.str.10>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call wcscpy
	addi x15 ,  x2 ,  60
	sw x20 ,  12 ( x2 )
	sw x23 ,  16 ( x2 )
	sw x22 ,  0 ( x2 )
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_224
.LBB2_203:                              //  %cleanup877
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	add x6 ,  x0 ,  x18
	add x27 ,  x27 ,  x10
	add x18 ,  x0 ,  x25
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_22
.LBB2_204:                              //    in Loop: Header=BB2_1 Depth=1
	addi x14 ,  x0 ,  1899
.LBB2_205:                              //  %if.then706
                                        //    in Loop: Header=BB2_1 Depth=1
	add x24 ,  x15 ,  x14
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x24
	call __modsi3
	sub x23 ,  x25 ,  x26
	andi x15 ,  x24 ,  3
	bltu x0, x15, .LBB2_209
.LBB2_206:                              //  %if.then706
                                        //    in Loop: Header=BB2_1 Depth=1
	beq x0, x10, .LBB2_209
.LBB2_207:                              //    in Loop: Header=BB2_1 Depth=1
	slti x15 ,  x0 ,  1
	sub x15 ,  x23 ,  x15
	addi x14 ,  x0 ,  5
	blt x15, x14, .LBB2_208
.LBB2_210:                              //  %lor.end
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x0 ,  52
	jal x0, .LBB2_211
.LBB2_209:                              //  %lor.rhs
                                        //    in Loop: Header=BB2_1 Depth=1
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x24
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
	sub x15 ,  x23 ,  x15
	addi x14 ,  x0 ,  5
	bge x15, x14, .LBB2_210
.LBB2_208:                              //    in Loop: Header=BB2_1 Depth=1
	addi x10 ,  x0 ,  53
.LBB2_211:                              //  %lor.end
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB2_212:                              //  %if.end745
                                        //    in Loop: Header=BB2_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
.LBB2_213:                              //  %if.end561
                                        //    in Loop: Header=BB2_1 Depth=1
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x27
	sw x22 ,  0 ( x2 )
	sw x15 ,  4 ( x2 )
	call swprintf
	blt x10, x0, .LBB2_221
.LBB2_214:                              //  %cleanup608
                                        //    in Loop: Header=BB2_1 Depth=1
	lw x6 ,  36 ( x2 )              //  4-byte Folded Reload
	add x27 ,  x27 ,  x10
	bltu x27, x9, .LBB2_215
	jal x0, .LBB2_221
.LBB2_22:
	add x20 ,  x0 ,  x18
	jal x0, .LBB2_221
.LBB2_218:                              //  %for.end973
	beq x0, x9, .LBB2_220
.LBB2_219:                              //  %if.then975
	slli x15 ,  x27 ,  2&31
	add x15 ,  x15 ,  x8
	sw x0 ,  0 ( x15 )
.LBB2_220:                              //  %cleanup978
	add x20 ,  x0 ,  x27
.LBB2_221:                              //  %cleanup978
	add x10 ,  x0 ,  x20
	lw x8 ,  1212 ( x2 )            //  4-byte Folded Reload
	lw x27 ,  1216 ( x2 )           //  4-byte Folded Reload
	lw x26 ,  1220 ( x2 )           //  4-byte Folded Reload
	lw x25 ,  1224 ( x2 )           //  4-byte Folded Reload
	lw x24 ,  1228 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1232 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1236 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1240 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1244 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1248 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1252 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1256 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1260 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1264
	.cfi_def_cfa 2, 0
	ret
.LBB2_222:                              //  %if.else949
	call __tz_unlock
	add x20 ,  x0 ,  x0
	jal x0, .LBB2_221
.LBB2_223:
	add x20 ,  x0 ,  x26
	jal x0, .LBB2_221
.LBB2_224:                              //  %cleanup877.thread
	add x20 ,  x0 ,  x25
	jal x0, .LBB2_221
.Lfunc_end2:
	.size	__strftime, .Lfunc_end2-__strftime
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_38
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_40
	.long	.LBB2_44
	.long	.LBB2_48
	.long	.LBB2_50
	.long	.LBB2_221
	.long	.LBB2_52
	.long	.LBB2_59
	.long	.LBB2_16
	.long	.LBB2_23
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_63
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_29
	.long	.LBB2_221
	.long	.LBB2_65
	.long	.LBB2_66
	.long	.LBB2_67
	.long	.LBB2_68
	.long	.LBB2_69
	.long	.LBB2_74
	.long	.LBB2_76
	.long	.LBB2_77
	.long	.LBB2_79
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_221
	.long	.LBB2_88
	.long	.LBB2_31
	.long	.LBB2_115
	.long	.LBB2_35
	.long	.LBB2_35
	.long	.LBB2_221
	.long	.LBB2_90
	.long	.LBB2_31
	.long	.LBB2_221
	.long	.LBB2_95
	.long	.LBB2_16
	.long	.LBB2_23
	.long	.LBB2_97
	.long	.LBB2_98
	.long	.LBB2_221
	.long	.LBB2_29
	.long	.LBB2_221
	.long	.LBB2_100
	.long	.LBB2_101
	.long	.LBB2_105
	.long	.LBB2_107
	.long	.LBB2_221
	.long	.LBB2_110
	.long	.LBB2_114
	.long	.LBB2_119
	.long	.LBB2_121
                                        //  -- End function
	.text
	.globl	wcsftime_l              //  -- Begin function wcsftime_l
	.type	wcsftime_l,@function
wcsftime_l:                             //  @wcsftime_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __strftime
.Lfunc_end3:
	.size	wcsftime_l, .Lfunc_end3-wcsftime_l
	.cfi_endproc
                                        //  -- End function
	.type	iso_year_adjust,@function //  -- Begin function iso_year_adjust
iso_year_adjust:                        //  @iso_year_adjust
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x15 ,  20 ( x8 )
	blt x15, x18, .LBB4_1
.LBB4_2:                                //  %entry
	addi x14 ,  x0 ,  -100
	jal x0, .LBB4_3
.LBB4_1:
	addi x14 ,  x0 ,  1900
.LBB4_3:                                //  %entry
	add x9 ,  x15 ,  x14
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	andi x15 ,  x9 ,  3
	bltu x0, x15, .LBB4_6
.LBB4_4:                                //  %entry
	beq x0, x10, .LBB4_6
.LBB4_5:
	slti x15 ,  x0 ,  1
	jal x0, .LBB4_7
.LBB4_6:                                //  %lor.rhs
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x9
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
.LBB4_7:                                //  %lor.end
	lw x14 ,  28 ( x8 )
	lw x13 ,  24 ( x8 )
	slli x14 ,  x14 ,  4&31
	slli x13 ,  x13 ,  1&31
	add x14 ,  x14 ,  x13
	or x15 ,  x15 ,  x14
	addi x14 ,  x0 ,  33
	bltu x14, x15, .LBB4_8
.LBB4_13:                               //  %lor.end
	lui x30 ,  JTI4_0&4095
	lui x14 ,  (JTI4_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB4_8:                                //  %lor.end
	lui x30 ,  -5794&4095
	lui x14 ,  (-5794>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  53
	bltu x14, x15, .LBB4_11
.LBB4_9:                                //  %lor.end
	lui x30 ,  JTI4_1&4095
	lui x14 ,  (JTI4_1>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB4_10:                               //  %sw.bb22
	slti x10 ,  x0 ,  1
.LBB4_12:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB4_11:                               //  %sw.epilog
	add x10 ,  x0 ,  x18
	jal x0, .LBB4_12
.Lfunc_end4:
	.size	iso_year_adjust, .Lfunc_end4-iso_year_adjust
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI4_0:
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_12
	.long	.LBB4_12
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_12
	.long	.LBB4_12
JTI4_1:
	.long	.LBB4_10
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_10
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_11
	.long	.LBB4_10
	.long	.LBB4_11
	.long	.LBB4_10
	.long	.LBB4_11
	.long	.LBB4_10
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	37                      //  0x25
	.long	115                     //  0x73
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	42                      //  0x2a
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str, 28

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str.2:
	.long	37                      //  0x25
	.long	115                     //  0x73
	.long	37                      //  0x25
	.long	48                      //  0x30
	.long	46                      //  0x2e
	.long	42                      //  0x2a
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.2, 32

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.3:
	.asciz	"+"
	.size	.str.3, 2

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"-"
	.size	.str.4, 2

	.address_space	0
	.type	.str.5,@object          //  @.str.5
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str.5:
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.5, 20

	.address_space	0
	.type	.str.6,@object          //  @.str.6
	.p2align	2
.str.6:
	.long	37                      //  0x25
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.6, 16

	.address_space	0
	.type	.str.7,@object          //  @.str.7
	.p2align	2
.str.7:
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	47                      //  0x2f
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	47                      //  0x2f
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.7, 60

	.address_space	0
	.type	.str.8,@object          //  @.str.8
	.p2align	2
.str.8:
	.long	37                      //  0x25
	.long	108                     //  0x6c
	.long	117                     //  0x75
	.long	0                       //  0x0
	.size	.str.8, 16

	.address_space	0
	.type	.str.9,@object          //  @.str.9
	.p2align	2
.str.9:
	.long	89                      //  0x59
	.long	45                      //  0x2d
	.long	37                      //  0x25
	.long	109                     //  0x6d
	.long	45                      //  0x2d
	.long	37                      //  0x25
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.9, 32

	.address_space	0
	.type	.str.10,@object         //  @.str.10
	.p2align	2
.str.10:
	.long	46                      //  0x2e
	.long	42                      //  0x2a
	.long	117                     //  0x75
	.long	0                       //  0x0
	.size	.str.10, 16

	.address_space	0
	.type	.str.11,@object         //  @.str.11
	.p2align	2
.str.11:
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	51                      //  0x33
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.11, 20

	.address_space	0
	.type	.str.12,@object         //  @.str.12
	.p2align	2
.str.12:
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	58                      //  0x3a
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.12, 40

	.address_space	0
	.type	.str.13,@object         //  @.str.13
	.p2align	2
.str.13:
	.long	37                      //  0x25
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.13, 20

	.address_space	0
	.type	.str.14,@object         //  @.str.14
	.p2align	2
.str.14:
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	58                      //  0x3a
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	58                      //  0x3a
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.14, 60

	.address_space	0
	.type	.str.15,@object         //  @.str.15
	.p2align	2
.str.15:
	.long	37                      //  0x25
	.long	43                      //  0x2b
	.long	48                      //  0x30
	.long	51                      //  0x33
	.long	108                     //  0x6c
	.long	100                     //  0x64
	.long	37                      //  0x25
	.long	46                      //  0x2e
	.long	50                      //  0x32
	.long	108                     //  0x6c
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str.15, 48

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
