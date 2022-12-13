	.text
	.file	"svfwscanf.c"
	.globl	__ssvfwscanf_r          //  -- Begin function __ssvfwscanf_r
	.type	__ssvfwscanf_r,@function
__ssvfwscanf_r:                         //  @__ssvfwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1552
	.cfi_adjust_cfa_offset 1552
	sw x8 ,  1544 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  1544
	.cfi_def_cfa 8, 8
	sw x18 ,  -12 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 18, -20
	sw x19 ,  -16 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 19, -24
	sw x27 ,  -48 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 27, -56
	sw x1 ,  -4 ( x8 )              //  4-byte Folded Spill
	.cfi_offset 1, -12
	sw x9 ,  -8 ( x8 )              //  4-byte Folded Spill
	.cfi_offset 9, -16
	sw x20 ,  -20 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 20, -28
	sw x21 ,  -24 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 21, -32
	sw x22 ,  -28 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 22, -36
	sw x23 ,  -32 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 23, -40
	sw x24 ,  -36 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 24, -44
	sw x25 ,  -40 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 25, -48
	sw x26 ,  -44 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 26, -52
	add x27 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x13 ,  -56 ( x8 )
	call _localeconv_r
	lw x12 ,  0 ( x10 )
	lui x15 ,  (8192>>12)&1048575
	lhu x14 ,  12 ( x18 )
	lb x12 ,  0 ( x12 )
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x18 )
	lw x14 ,  100 ( x18 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x18 )
.LBB0_2:                                //  %do.end
	lw x24 ,  0 ( x27 )
	bltu x0, x24, .LBB0_3
.LBB0_790:                              //  %do.end
	jal x0, .LBB0_697
.LBB0_3:                                //  %if.end9.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	addi x14 ,  x8 ,  -1464
	add x15 ,  x0 ,  x0
	addi x23 ,  x18 ,  63
	addi x21 ,  x18 ,  64
	addi x9 ,  x18 ,  4
	sw x12 ,  -1492 ( x8 )          //  4-byte Folded Spill
	addi x13 ,  x14 ,  4
	add x20 ,  x0 ,  x15
	add x22 ,  x0 ,  x15
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1480 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1500 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1496 ( x8 )          //  4-byte Folded Spill
	sw x13 ,  -1504 ( x8 )          //  4-byte Folded Spill
	addi x13 ,  x14 ,  1356
	addi x14 ,  x14 ,  1352
	sw x13 ,  -1508 ( x8 )          //  4-byte Folded Spill
	sw x14 ,  -1512 ( x8 )          //  4-byte Folded Spill
.LBB0_4:                                //  %if.end9.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_25 Depth 2
                                        //        Child Loop BB0_26 Depth 3
                                        //          Child Loop BB0_27 Depth 4
                                        //      Child Loop BB0_105 Depth 2
                                        //      Child Loop BB0_71 Depth 2
                                        //      Child Loop BB0_205 Depth 2
                                        //      Child Loop BB0_438 Depth 2
                                        //      Child Loop BB0_157 Depth 2
                                        //      Child Loop BB0_143 Depth 2
                                        //      Child Loop BB0_403 Depth 2
                                        //      Child Loop BB0_268 Depth 2
                                        //      Child Loop BB0_534 Depth 2
                                        //      Child Loop BB0_196 Depth 2
                                        //      Child Loop BB0_132 Depth 2
                                        //      Child Loop BB0_276 Depth 2
                                        //      Child Loop BB0_384 Depth 2
                                        //        Child Loop BB0_385 Depth 3
                                        //      Child Loop BB0_557 Depth 2
                                        //        Child Loop BB0_558 Depth 3
                                        //      Child Loop BB0_482 Depth 2
                                        //      Child Loop BB0_499 Depth 2
                                        //      Child Loop BB0_372 Depth 2
                                        //      Child Loop BB0_179 Depth 2
                                        //      Child Loop BB0_348 Depth 2
                                        //      Child Loop BB0_121 Depth 2
                                        //      Child Loop BB0_9 Depth 2
	lui x25 ,  (65503>>12)&1048575
	addi x26 ,  x0 ,  3
	add x10 ,  x0 ,  x24
	addi x27 ,  x27 ,  4
	call iswspace
	bltu x0, x10, .LBB0_9
	jal x0, .LBB0_23
.LBB0_5:                                //  %if.end13.if.end32_crit_edge.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_6:                                //  %if.end32.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  2
	sw x26 ,  52 ( x18 )
	sw x21 ,  48 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
.LBB0_7:                                //  %if.end22
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  0 ( x27 )
	bltu x0, x24, .LBB0_8
.LBB0_791:                              //  %if.end22
	jal x0, .LBB0_702
.LBB0_8:                                //  %if.end9
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x24
	addi x27 ,  x27 ,  4
	call iswspace
	beq x0, x10, .LBB0_23
.LBB0_9:                                //  %while.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_12
.LBB0_10:                               //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_9 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_7
.LBB0_11:                               //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_9 Depth=2
	lw x15 ,  0 ( x9 )
.LBB0_12:                               //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_9 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_7
.LBB0_13:                               //  %land.rhs
                                        //    in Loop: Header=BB0_9 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	bltu x0, x10, .LBB0_9
.LBB0_14:                               //  %if.end.i2559
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_19
.LBB0_15:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_17
.LBB0_16:                               //  %land.lhs.true.i2563
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_7
.LBB0_17:                               //  %if.end9.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_18:                               //  %if.end22
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x24 ,  0 ( x27 )
	bltu x0, x24, .LBB0_8
	jal x0, .LBB0_702
.LBB0_19:                               //  %if.end13.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_5
.LBB0_20:                               //  %land.lhs.true17.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_6
.LBB0_21:                               //  %land.lhs.true23.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_6
.LBB0_22:                               //  %if.then27.i
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_18
.LBB0_23:                               //  %if.end23
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x15 ,  x24 ,  37
	bltu x0, x15, .LBB0_51
.LBB0_24:                               //  %again.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	add x25 ,  x0 ,  x26
.LBB0_25:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_26 Depth 3
                                        //          Child Loop BB0_27 Depth 4
	add x15 ,  x0 ,  x27
.LBB0_26:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_25 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_27 Depth 4
	lw x24 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x24 ,  -37
	bgeu x13, x14, .LBB0_27
.LBB0_792:                              //  %again
	jal x0, .LBB0_702
.LBB0_27:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_25 Depth=2
                                        //        Parent Loop BB0_26 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lui x30 ,  JTI0_0&4095
	lui x13 ,  (JTI0_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	addi x27 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_28:                               //  %sw.bb88
                                        //    in Loop: Header=BB0_26 Depth=3
	andi x14 ,  x26 ,  15
	add x15 ,  x0 ,  x27
	beq x0, x14, .LBB0_26
	jal x0, .LBB0_702
.LBB0_29:                               //  %sw.bb64
                                        //    in Loop: Header=BB0_27 Depth=4
	andi x14 ,  x26 ,  15
	beq x0, x14, .LBB0_30
.LBB0_793:                              //  %sw.bb64
	jal x0, .LBB0_702
.LBB0_30:                               //  %if.end68
                                        //    in Loop: Header=BB0_27 Depth=4
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  104
	beq x14, x13, .LBB0_36
.LBB0_31:                               //  %if.end68
                                        //    in Loop: Header=BB0_27 Depth=4
	addi x14 ,  x0 ,  4
	jal x0, .LBB0_35
.LBB0_32:                               //  %sw.bb46
                                        //    in Loop: Header=BB0_27 Depth=4
	andi x14 ,  x26 ,  15
	beq x0, x14, .LBB0_33
.LBB0_794:                              //  %sw.bb46
	jal x0, .LBB0_702
.LBB0_33:                               //  %if.end50
                                        //    in Loop: Header=BB0_27 Depth=4
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  108
	beq x14, x13, .LBB0_37
.LBB0_34:                               //  %if.end50
                                        //    in Loop: Header=BB0_27 Depth=4
	slti x14 ,  x0 ,  1
.LBB0_35:                               //  %if.end50
                                        //    in Loop: Header=BB0_27 Depth=4
	add x15 ,  x0 ,  x27
	jal x0, .LBB0_39
.LBB0_36:                               //    in Loop: Header=BB0_27 Depth=4
	addi x14 ,  x0 ,  8
	jal x0, .LBB0_38
.LBB0_37:                               //    in Loop: Header=BB0_27 Depth=4
	addi x14 ,  x0 ,  2
.LBB0_38:                               //    in Loop: Header=BB0_27 Depth=4
	addi x15 ,  x15 ,  8
.LBB0_39:                               //    in Loop: Header=BB0_27 Depth=4
	or x26 ,  x26 ,  x14
	lw x24 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x24 ,  -37
	bgeu x13, x14, .LBB0_27
	jal x0, .LBB0_702
.LBB0_40:                               //  %sw.bb105
                                        //    in Loop: Header=BB0_25 Depth=2
	andi x15 ,  x26 ,  143
	beq x0, x15, .LBB0_41
.LBB0_795:                              //  %sw.bb105
	jal x0, .LBB0_702
.LBB0_41:                               //  %if.end109
                                        //    in Loop: Header=BB0_25 Depth=2
	add x10 ,  x0 ,  x25
	addi x11 ,  x0 ,  10
	call __mulsi3
	add x15 ,  x24 ,  x10
	addi x25 ,  x15 ,  -48
	jal x0, .LBB0_25
.LBB0_42:                               //  %sw.bb58
                                        //    in Loop: Header=BB0_25 Depth=2
	andi x15 ,  x26 ,  15
	beq x0, x15, .LBB0_43
.LBB0_796:                              //  %sw.bb58
	jal x0, .LBB0_702
.LBB0_43:                               //  %if.end62
                                        //    in Loop: Header=BB0_25 Depth=2
	ori x26 ,  x26 ,  2
	jal x0, .LBB0_25
.LBB0_44:                               //  %sw.bb39
                                        //    in Loop: Header=BB0_25 Depth=2
	andi x15 ,  x26 ,  159
	or x15 ,  x25 ,  x15
	beq x0, x15, .LBB0_45
.LBB0_797:                              //  %sw.bb39
	jal x0, .LBB0_702
.LBB0_45:                               //  %if.end44
                                        //    in Loop: Header=BB0_25 Depth=2
	ori x26 ,  x26 ,  16
	add x25 ,  x0 ,  x0
	jal x0, .LBB0_25
.LBB0_46:                               //  %sw.bb93
                                        //    in Loop: Header=BB0_25 Depth=2
	andi x15 ,  x26 ,  143
	beq x0, x15, .LBB0_47
.LBB0_798:                              //  %sw.bb93
	jal x0, .LBB0_702
.LBB0_47:                               //  %do.body98
                                        //    in Loop: Header=BB0_25 Depth=2
	bltu x0, x20, .LBB0_49
.LBB0_48:                               //  %if.then100
                                        //    in Loop: Header=BB0_25 Depth=2
	add x15 ,  x0 ,  x2
	addi x20 ,  x15 ,  -8
	add x2 ,  x0 ,  x20
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB0_49:                               //  %do.end103
                                        //    in Loop: Header=BB0_25 Depth=2
	ori x26 ,  x26 ,  128
	jal x0, .LBB0_25
.LBB0_50:                               //  %literal.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x25 ,  (65503>>12)&1048575
	addi x26 ,  x0 ,  3
.LBB0_51:                               //  %literal
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  0 ( x9 )
	blt x0, x14, .LBB0_54
.LBB0_52:                               //  %land.lhs.true.i2571
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_53
.LBB0_799:                              //  %land.lhs.true.i2571
	jal x0, .LBB0_699
.LBB0_53:                               //  %land.lhs.true.if.end_crit_edge.i2573
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  0 ( x9 )
.LBB0_54:                               //  %_sfgetwc_r.exit2579
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  0 ( x18 )
	add x5 ,  x0 ,  x21
	addi x12 ,  x14 ,  -4
	addi x15 ,  x13 ,  4
	sw x15 ,  0 ( x18 )
	lw x21 ,  0 ( x13 )
	sw x12 ,  4 ( x18 )
	xori x11 ,  x21 ,  -1
	bltu x0, x11, .LBB0_55
.LBB0_800:                              //  %_sfgetwc_r.exit2579
	jal x0, .LBB0_699
.LBB0_55:                               //  %if.end33
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x21, x24, .LBB0_56
.LBB0_801:                              //  %if.end33
	jal x0, .LBB0_710
.LBB0_56:                               //  %if.end38
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x0 ,  x5
	lw x24 ,  0 ( x27 )
	addi x15 ,  x15 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	bltu x0, x24, .LBB0_8
	jal x0, .LBB0_702
.LBB0_57:                               //  %sw.bb150
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB0_66
.LBB0_58:                               //  %if.end154
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  8
	bltu x0, x15, .LBB0_63
.LBB0_59:                               //  %if.else159
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  4
	bltu x0, x15, .LBB0_64
.LBB0_60:                               //  %if.else165
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB0_62
.LBB0_61:                               //  %if.else170
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  2
	bltu x0, x15, .LBB0_65
.LBB0_62:                               //  %if.then168
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	jal x0, .LBB0_66
.LBB0_63:                               //  %if.then157
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sb x14 ,  0 ( x15 )
	jal x0, .LBB0_66
.LBB0_64:                               //  %if.then162
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sh x14 ,  0 ( x15 )
	jal x0, .LBB0_66
.LBB0_65:                               //  %if.then173
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	lw x13 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	srai x14 ,  x13 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x13 ,  0 ( x15 )
.LBB0_66:                               //  %for.cond.outer3717.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  0 ( x27 )
	lui x25 ,  (65503>>12)&1048575
	addi x26 ,  x0 ,  3
	bltu x0, x24, .LBB0_8
	jal x0, .LBB0_702
.LBB0_67:                               //  %sw.epilog.loopexit6487
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  4
	andi x15 ,  x26 ,  64
	bltu x0, x15, .LBB0_108
.LBB0_68:                               //  %while.cond186
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_71
.LBB0_69:                               //  %land.lhs.true.i2625
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_70
.LBB0_802:                              //  %land.lhs.true.i2625
	jal x0, .LBB0_699
.LBB0_70:                               //  %land.lhs.true.if.end_crit_edge.i2627
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_71:                               //  %_sfgetwc_r.exit2633
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	bltu x0, x15, .LBB0_72
.LBB0_803:                              //  %_sfgetwc_r.exit2633
	jal x0, .LBB0_699
.LBB0_72:                               //  %land.rhs190
                                        //    in Loop: Header=BB0_71 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	beq x0, x10, .LBB0_74
.LBB0_73:                               //  %while.body194
                                        //    in Loop: Header=BB0_71 Depth=2
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_71
	jal x0, .LBB0_69
.LBB0_74:                               //  %if.end.i2638
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_80
.LBB0_75:                               //  %if.then4.i2642
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_77
.LBB0_76:                               //  %land.lhs.true.i2645
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_108
.LBB0_77:                               //  %if.end9.i2650
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_78:                               //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	addi x15 ,  x0 ,  4
	bgeu x15, x21, .LBB0_109
	jal x0, .LBB0_693
.LBB0_79:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	ori x26 ,  x26 ,  512
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_93
.LBB0_80:                               //  %if.end13.i2653
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_99
.LBB0_81:                               //  %land.lhs.true17.i2659
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_100
.LBB0_82:                               //  %land.lhs.true23.i2662
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_100
.LBB0_83:                               //  %if.then27.i2665
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_78
.LBB0_84:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	ori x26 ,  x26 ,  1
	ori x26 ,  x26 ,  64
	add x21 ,  x0 ,  x0
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_85:                               //  %sw.bb117
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	ori x26 ,  x26 ,  1
	addi x21 ,  x0 ,  2
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_86:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  94
	beq x14, x13, .LBB0_101
.LBB0_87:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x13 ,  x0 ,  4
	sw x27 ,  -1480 ( x8 )          //  4-byte Folded Spill
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	beq x15, x13, .LBB0_103
.LBB0_102:                              //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27 ,  -1480 ( x8 )          //  4-byte Folded Reload
	jal x0, .LBB0_104
.LBB0_88:                               //  %sw.bb146.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	ori x26 ,  x26 ,  64
	add x21 ,  x0 ,  x0
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_89:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_97
.LBB0_90:                               //  %sw.epilog.loopexit4477
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_91:                               //  %sw.epilog.loopexit5237
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  8
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_92:                               //  %sw.bb148
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	ori x26 ,  x26 ,  544
.LBB0_93:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  16
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_95:                               //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  2
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_96:                               //  %sw.epilog.loopexit5870
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	lui x15 ,  (_wcstoul_r>>12)&1048575
.LBB0_97:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  10
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
	jal x0, .LBB0_108
.LBB0_99:                               //  %if.end13.if.end32_crit_edge.i2656
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_100:                              //  %if.end32.i2673
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	addi x15 ,  x0 ,  4
	bgeu x15, x21, .LBB0_109
	jal x0, .LBB0_693
.LBB0_101:                              //    in Loop: Header=BB0_4 Depth=1
	addi x13 ,  x15 ,  8
	sw x13 ,  -1480 ( x8 )          //  4-byte Folded Spill
	addi x13 ,  x0 ,  8
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	bne x15, x13, .LBB0_102
.LBB0_103:                              //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	addi x27 ,  x15 ,  4
.LBB0_104:                              //  %sw.bb120
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x15 ,  x14 ,  94
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sltiu x15 ,  x15 ,  1
	sw x15 ,  -1496 ( x8 )          //  4-byte Folded Spill
.LBB0_105:                              //  %while.cond132
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	xori x14 ,  x15 ,  93
	beq x0, x14, .LBB0_107
.LBB0_106:                              //  %while.cond132
                                        //    in Loop: Header=BB0_105 Depth=2
	bltu x0, x15, .LBB0_105
.LBB0_107:                              //  %while.end141
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x27 ,  -4
	ori x26 ,  x26 ,  64
	slti x21 ,  x0 ,  1
	sw x15 ,  -1500 ( x8 )          //  4-byte Folded Spill
	andi x15 ,  x26 ,  64
	beq x0, x15, .LBB0_68
.LBB0_108:                              //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x0 ,  4
	bgeu x15, x21, .LBB0_109
.LBB0_804:                              //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_693
.LBB0_109:                              //  %if.end202
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x21 ,  2&31
	sw x22 ,  -1520 ( x8 )          //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_110:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x15 ,  x0 ,  1
	add x24 ,  x0 ,  x15
	add x15 ,  x0 ,  x0
	beq x25, x15, .LBB0_112
.LBB0_111:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x25
.LBB0_112:                              //  %sw.bb203
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x22 ,  x26 ,  16
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB0_177
.LBB0_113:                              //  %if.else336
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	beq x0, x22, .LBB0_258
.LBB0_114:                              //  %land.rhs408.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x0
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x21
	call memset
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_121
	jal x0, .LBB0_119
.LBB0_115:                              //  %while.body413.us
                                        //    in Loop: Header=BB0_121 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_116
.LBB0_805:                              //  %while.body413.us
	jal x0, .LBB0_698
.LBB0_116:                              //  %if.then424.us
                                        //    in Loop: Header=BB0_121 Depth=2
	addi x24 ,  x24 ,  -1
.LBB0_117:                              //  %if.end460.us
                                        //    in Loop: Header=BB0_121 Depth=2
	addi x21 ,  x21 ,  1
	beq x0, x24, .LBB0_327
.LBB0_118:                              //  %land.rhs408.us
                                        //    in Loop: Header=BB0_121 Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_121
.LBB0_119:                              //  %land.lhs.true.i2692.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_315
.LBB0_120:                              //  %land.lhs.true.if.end_crit_edge.i2694.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_121:                              //  %_sfgetwc_r.exit2700.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x12 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB0_315
.LBB0_122:                              //  %while.body413.us
                                        //    in Loop: Header=BB0_121 Depth=2
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1465
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	bltu x0, x10, .LBB0_115
.LBB0_123:                              //  %lor.lhs.false421.us
                                        //    in Loop: Header=BB0_121 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB0_116
	jal x0, .LBB0_117
.LBB0_124:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23 ,  -1524 ( x8 )          //  4-byte Folded Spill
	addi x23 ,  x0 ,  -1
	add x15 ,  x0 ,  x0
	beq x25, x15, .LBB0_126
.LBB0_125:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x25
.LBB0_126:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x24 ,  x26 ,  16
	andi x15 ,  x26 ,  1
	beq x0, x15, .LBB0_185
.LBB0_127:                              //  %sw.bb495
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x24, .LBB0_185
.LBB0_128:                              //  %while.cond506.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1500 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x25 ,  x15 ,  2&31
	lw x15 ,  -1496 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_273
.LBB0_129:                              //  %while.cond506.preheader26
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x0
	lui x26 ,  (65503>>12)&1048575
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_132
.LBB0_130:                              //  %land.lhs.true.i2705
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_285
.LBB0_131:                              //  %land.lhs.true.if.end_crit_edge.i2707
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_132:                              //  %_sfgetwc_r.exit2713
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_285
.LBB0_133:                              //  %land.lhs.true510
                                        //    in Loop: Header=BB0_132 Depth=2
	beq x23, x22, .LBB0_280
.LBB0_134:                              //  %land.rhs514
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	call wmemchr
	bltu x0, x10, .LBB0_280
.LBB0_135:                              //  %while.body532
                                        //    in Loop: Header=BB0_132 Depth=2
	addi x22 ,  x22 ,  1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_132
	jal x0, .LBB0_130
.LBB0_136:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x22 ,  x0 ,  -1
	add x15 ,  x0 ,  x0
	sw x23 ,  -1524 ( x8 )          //  4-byte Folded Spill
	beq x25, x15, .LBB0_138
.LBB0_137:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x25
.LBB0_138:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x23 ,  x26 ,  16
	andi x15 ,  x26 ,  1
	beq x0, x15, .LBB0_188
.LBB0_139:                              //  %sw.bb890
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x23, .LBB0_188
.LBB0_140:                              //  %while.cond901.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	lui x25 ,  (65503>>12)&1048575
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_143
.LBB0_141:                              //  %land.lhs.true.i2867
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_142
.LBB0_806:                              //  %land.lhs.true.i2867
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_678
.LBB0_142:                              //  %land.lhs.true.if.end_crit_edge.i2869
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_143:                              //  %_sfgetwc_r.exit2875
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	bltu x0, x15, .LBB0_144
.LBB0_807:                              //  %_sfgetwc_r.exit2875
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_678
.LBB0_144:                              //  %land.lhs.true905
                                        //    in Loop: Header=BB0_143 Depth=2
	beq x0, x22, .LBB0_253
.LBB0_145:                              //  %land.rhs909
                                        //    in Loop: Header=BB0_143 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	bltu x0, x10, .LBB0_253
.LBB0_146:                              //  %while.body913
                                        //    in Loop: Header=BB0_143 Depth=2
	addi x22 ,  x22 ,  -1
	addi x26 ,  x26 ,  1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_143
	jal x0, .LBB0_141
.LBB0_147:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x25 ,  -1
	addi x24 ,  x0 ,  349
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB0_149
.LBB0_148:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x25
.LBB0_149:                              //  %sw.bb1229
                                        //    in Loop: Header=BB0_4 Depth=1
	ori x21 ,  x26 ,  1408
	beq x0, x24, .LBB0_201
.LBB0_150:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	addi x25 ,  x8 ,  -1464
	add x22 ,  x0 ,  x0
	lui x26 ,  (65503>>12)&1048575
	blt x0, x15, .LBB0_157
	jal x0, .LBB0_155
.LBB0_151:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_157 Depth=2
	lw x14 ,  -1476 ( x8 )          //  4-byte Folded Reload
	lui x30 ,  __ssvfwscanf_r.basefix&4095
	lui x13 ,  (__ssvfwscanf_r.basefix>>12)&1048575
	andi x21 ,  x21 ,  -897
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	slli x14 ,  x14 ,  1&31
	add x14 ,  x14 ,  x13
	lh x14 ,  0 ( x14 )
.LBB0_152:                              //  %ok
                                        //    in Loop: Header=BB0_157 Depth=2
	sw x14 ,  -1476 ( x8 )          //  4-byte Folded Spill
.LBB0_153:                              //  %ok
                                        //    in Loop: Header=BB0_157 Depth=2
	sw x23 ,  0 ( x25 )
	add x23 ,  x0 ,  x26
	addi x25 ,  x25 ,  4
	addi x22 ,  x22 ,  1
	lui x26 ,  (65503>>12)&1048575
	beq x24, x22, .LBB0_272
.LBB0_154:                              //  %for.body
                                        //    in Loop: Header=BB0_157 Depth=2
	blt x0, x15, .LBB0_157
.LBB0_155:                              //  %land.lhs.true.i3029
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_156
.LBB0_808:                              //  %land.lhs.true.i3029
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_634
.LBB0_156:                              //  %land.lhs.true.if.end_crit_edge.i3031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_157:                              //  %_sfgetwc_r.exit3037
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x18 )
	add x26 ,  x0 ,  x23
	add x13 ,  x0 ,  x15
	addi x10 ,  x0 ,  121
	addi x15 ,  x13 ,  -4
	addi x14 ,  x12 ,  4
	sw x14 ,  0 ( x18 )
	lw x23 ,  0 ( x12 )
	sw x15 ,  4 ( x18 )
	addi x11 ,  x23 ,  1
	bgeu x10, x11, .LBB0_158
.LBB0_809:                              //  %_sfgetwc_r.exit3037
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_621
.LBB0_158:                              //  %_sfgetwc_r.exit3037
                                        //    in Loop: Header=BB0_157 Depth=2
	lui x30 ,  JTI0_3&4095
	lui x10 ,  (JTI0_3>>12)&1048575
	slli x11 ,  x11 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	add x11 ,  x10 ,  x11
	lw x11 ,  0 ( x11 )
	jalr x0 ,  0 ( x11 )
.LBB0_159:                              //  %sw.bb1267
                                        //    in Loop: Header=BB0_157 Depth=2
	lw x11 ,  -1476 ( x8 )          //  4-byte Folded Reload
	slti x11 ,  x11 ,  11
	beq x0, x11, .LBB0_160
.LBB0_810:                              //  %sw.bb1267
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_621
.LBB0_160:                              //  %if.else1252
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x21 ,  x21 ,  -897
	jal x0, .LBB0_153
.LBB0_161:                              //  %sw.bb1273
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x11 ,  x21 ,  128
	bltu x0, x11, .LBB0_162
.LBB0_811:                              //  %sw.bb1273
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_621
.LBB0_162:                              //  %if.then1276
                                        //    in Loop: Header=BB0_157 Depth=2
	lui x30 ,  -65665&4095
	lui x14 ,  (-65665>>12)&1048575
	lui x13 ,  (65536>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x21
	or x21 ,  x13 ,  x14
	jal x0, .LBB0_153
.LBB0_163:                              //  %sw.bb1259
                                        //    in Loop: Header=BB0_157 Depth=2
	lw x5 ,  -1476 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __ssvfwscanf_r.basefix&4095
	lui x10 ,  (__ssvfwscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	slli x11 ,  x5 ,  1&31
	add x11 ,  x11 ,  x10
	addi x10 ,  x5 ,  -1
	lh x11 ,  0 ( x11 )
	sltiu x10 ,  x10 ,  8
	beq x0, x10, .LBB0_164
.LBB0_812:                              //  %sw.bb1259
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_620
.LBB0_164:                              //  %if.end1265
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x21 ,  x21 ,  -897
	sw x11 ,  -1476 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_153
.LBB0_165:                              //  %sw.bb1280
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x11 ,  x21 ,  512
	bltu x0, x11, .LBB0_166
.LBB0_813:                              //  %sw.bb1280
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_621
.LBB0_166:                              //  %land.lhs.true1283
                                        //    in Loop: Header=BB0_157 Depth=2
	lw x10 ,  -1504 ( x8 )          //  4-byte Folded Reload
	srli x11 ,  x21 ,  14&31
	andi x11 ,  x11 ,  4
	add x11 ,  x11 ,  x10
	beq x25, x11, .LBB0_167
.LBB0_814:                              //  %land.lhs.true1283
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_621
.LBB0_167:                              //  %if.then1293
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x21 ,  x21 ,  -513
	addi x14 ,  x0 ,  16
	jal x0, .LBB0_152
.LBB0_168:                              //  %sw.bb1242
                                        //    in Loop: Header=BB0_157 Depth=2
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	bne x13, x14, .LBB0_170
.LBB0_169:                              //    in Loop: Header=BB0_157 Depth=2
	ori x21 ,  x21 ,  512
	addi x14 ,  x0 ,  8
	sw x14 ,  -1476 ( x8 )          //  4-byte Folded Spill
.LBB0_170:                              //  %sw.bb1242
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x14 ,  x21 ,  1024
	beq x0, x14, .LBB0_160
.LBB0_171:                              //  %if.then1250
                                        //    in Loop: Header=BB0_157 Depth=2
	andi x21 ,  x21 ,  -1409
	jal x0, .LBB0_153
.LBB0_172:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x25 ,  -1
	addi x21 ,  x0 ,  349
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB0_174
.LBB0_173:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x25
.LBB0_174:                              //  %sw.bb1381
                                        //    in Loop: Header=BB0_4 Depth=1
	ori x26 ,  x26 ,  1920
	sw x23 ,  -1524 ( x8 )          //  4-byte Folded Spill
	beq x0, x21, .LBB0_202
.LBB0_175:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB0_203
.LBB0_176:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	sw x15 ,  -1544 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_204
.LBB0_177:                              //  %if.then210
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x23 ,  -1524 ( x8 )          //  4-byte Folded Spill
	sw x22 ,  -1544 ( x8 )          //  4-byte Folded Spill
	beq x0, x22, .LBB0_260
.LBB0_178:                              //  %land.rhs275.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	add x23 ,  x0 ,  x0
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB0_179:                              //  %land.rhs275.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	blt x0, x15, .LBB0_182
.LBB0_180:                              //  %land.lhs.true.i2679.us
                                        //    in Loop: Header=BB0_179 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_286
.LBB0_181:                              //  %land.lhs.true.if.end_crit_edge.i2681.us
                                        //    in Loop: Header=BB0_179 Depth=2
	lw x15 ,  0 ( x9 )
.LBB0_182:                              //  %_sfgetwc_r.exit2687.us
                                        //    in Loop: Header=BB0_179 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x14 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x14 ,  -1
	beq x0, x14, .LBB0_286
.LBB0_183:                              //  %if.end302.us
                                        //    in Loop: Header=BB0_179 Depth=2
	addi x23 ,  x23 ,  1
	bne x24, x23, .LBB0_179
.LBB0_184:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x24 ,  x0 ,  x15
	add x25 ,  x0 ,  x15
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_815
.LBB0_816:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_467
.LBB0_815:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_470
.LBB0_185:                              //  %if.else544
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x15, .LBB0_262
.LBB0_186:                              //  %if.else702
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24 ,  -1528 ( x8 )          //  4-byte Folded Spill
	beq x0, x24, .LBB0_287
.LBB0_187:                              //    in Loop: Header=BB0_4 Depth=1
	add x11 ,  x0 ,  x0
	addi x25 ,  x8 ,  -1465
	sw x11 ,  -1532 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  -1536 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  -1540 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_476
.LBB0_188:                              //  %if.else921
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_264
.LBB0_189:                              //  %if.else1059
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x23, .LBB0_289
.LBB0_190:                              //  %while.cond1132.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
	lw x25 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_196
.LBB0_194:                              //  %land.lhs.true.i2975.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_195
.LBB0_817:                              //  %land.lhs.true.i2975.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_680
.LBB0_195:                              //  %land.lhs.true.if.end_crit_edge.i2977.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_196
.LBB0_191:                              //  %while.body1144.us
                                        //    in Loop: Header=BB0_196 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_192
.LBB0_818:                              //  %while.body1144.us
	jal x0, .LBB0_698
.LBB0_192:                              //  %if.then1156.us
                                        //    in Loop: Header=BB0_196 Depth=2
	addi x22 ,  x22 ,  -1
.LBB0_193:                              //  %if.end1192.us
                                        //    in Loop: Header=BB0_196 Depth=2
	addi x25 ,  x25 ,  1
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_194
.LBB0_196:                              //  %_sfgetwc_r.exit2983.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x24 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x22, .LBB0_423
.LBB0_197:                              //  %_sfgetwc_r.exit2983.us
                                        //    in Loop: Header=BB0_196 Depth=2
	beq x0, x14, .LBB0_423
.LBB0_198:                              //  %land.rhs1139.us
                                        //    in Loop: Header=BB0_196 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	beq x0, x10, .LBB0_199
.LBB0_819:                              //  %land.rhs1139.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_464
.LBB0_199:                              //  %while.body1144.us
                                        //    in Loop: Header=BB0_196 Depth=2
	addi x10 ,  x8 ,  -1465
	add x11 ,  x0 ,  x24
	addi x12 ,  x8 ,  -64
	call wcrtomb
	bltu x0, x10, .LBB0_191
.LBB0_200:                              //  %lor.lhs.false1152.us
                                        //    in Loop: Header=BB0_196 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB0_192
	jal x0, .LBB0_193
.LBB0_201:                              //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x0
	addi x25 ,  x8 ,  -1464
	jal x0, .LBB0_633
.LBB0_202:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	addi x24 ,  x8 ,  -1464
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
	add x23 ,  x0 ,  x15
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1540 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1536 ( x8 )          //  4-byte Folded Spill
	add x22 ,  x0 ,  x15
	jal x0, .LBB0_429
.LBB0_203:                              //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x25 ,  -349
	sw x15 ,  -1544 ( x8 )          //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
.LBB0_204:                              //  %for.body1392.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x15
	addi x24 ,  x8 ,  -1464
	add x23 ,  x0 ,  x15
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1536 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1540 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
.LBB0_205:                              //  %for.body1392
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_210
.LBB0_206:                              //  %_sfgetwc_r.exit3173
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x25 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	addi x14 ,  x0 ,  78
	addi x15 ,  x25 ,  -43
	bltu x14, x15, .LBB0_211
.LBB0_207:                              //  %_sfgetwc_r.exit3173
                                        //    in Loop: Header=BB0_205 Depth=2
	lui x30 ,  JTI0_2&4095
	lui x14 ,  (JTI0_2>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_208:                              //  %sw.bb1406
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	slli x15 ,  x23 ,  24&31
	srai x15 ,  x15 ,  24&31
	sub x15 ,  x0 ,  x15
	slli x14 ,  x14 ,  24&31
	srai x14 ,  x14 ,  24&31
	bne x14, x15, .LBB0_317
.LBB0_209:                              //  %if.then1412
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x26 ,  x26 ,  -385
	jal x0, .LBB0_214
.LBB0_210:                              //  %land.lhs.true.i3165
                                        //    in Loop: Header=BB0_205 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	addi x25 ,  x0 ,  -1
	beq x0, x10, .LBB0_216
.LBB0_211:                              //  %sw.default1517
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x14 ,  -1492 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x26 ,  512
	beq x0, x15, .LBB0_316
.LBB0_212:                              //  %sw.default1517
                                        //    in Loop: Header=BB0_205 Depth=2
	bne x25, x14, .LBB0_316
.LBB0_213:                              //  %if.then1523
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	andi x26 ,  x26 ,  -641
	add x25 ,  x0 ,  x14
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
.LBB0_214:                              //  %fok
                                        //    in Loop: Header=BB0_205 Depth=2
	addi x22 ,  x22 ,  1
	sw x25 ,  0 ( x24 )
.LBB0_215:                              //  %fskip
                                        //    in Loop: Header=BB0_205 Depth=2
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	addi x21 ,  x21 ,  -1
	add x24 ,  x15 ,  x14
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	bltu x0, x21, .LBB0_205
	jal x0, .LBB0_426
.LBB0_216:                              //  %land.lhs.true.if.end_crit_edge.i3167
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_206
.LBB0_217:                              //  %sw.bb1415
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  128
	beq x0, x15, .LBB0_317
.LBB0_218:                              //  %if.then1418
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x26 ,  x26 ,  -129
	jal x0, .LBB0_214
.LBB0_219:                              //  %sw.bb1450
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  -1484 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_317
.LBB0_220:                              //    in Loop: Header=BB0_205 Depth=2
	addi x15 ,  x0 ,  2
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_214
.LBB0_221:                              //  %sw.bb1498
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  1280
	xori x15 ,  x15 ,  1024
	beq x0, x15, .LBB0_224
.LBB0_222:                              //  %lor.lhs.false1502
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  1024
	beq x0, x15, .LBB0_317
.LBB0_223:                              //  %lor.lhs.false1502
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_317
.LBB0_224:                              //  %if.then1507
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  512
	add x14 ,  x0 ,  x0
	bne x15, x14, .LBB0_226
.LBB0_225:                              //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	sw x24 ,  -1540 ( x8 )          //  4-byte Folded Spill
	lw x14 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	sw x15 ,  -1536 ( x8 )          //  4-byte Folded Spill
.LBB0_226:                              //  %if.then1507
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  -1921
	ori x26 ,  x15 ,  384
	add x15 ,  x0 ,  x0
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_214
.LBB0_227:                              //  %sw.bb1480
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x23 ,  255
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_317
.LBB0_228:                              //    in Loop: Header=BB0_205 Depth=2
	addi x23 ,  x0 ,  3
	jal x0, .LBB0_214
.LBB0_229:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  1792
	xori x14 ,  x15 ,  1792
	lw x15 ,  -1484 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x15 ,  255
	bltu x0, x14, .LBB0_244
.LBB0_230:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x14 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x14, .LBB0_244
.LBB0_231:                              //  %sw.bb1421
                                        //    in Loop: Header=BB0_205 Depth=2
	bltu x0, x15, .LBB0_244
.LBB0_232:                              //  %if.then1432
                                        //    in Loop: Header=BB0_205 Depth=2
	add x15 ,  x0 ,  x0
	andi x26 ,  x26 ,  -1921
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	slti x15 ,  x0 ,  1
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_214
.LBB0_233:                              //  %sw.bb1486
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x23 ,  255
	xori x15 ,  x15 ,  6
	bltu x0, x15, .LBB0_317
.LBB0_234:                              //    in Loop: Header=BB0_205 Depth=2
	addi x23 ,  x0 ,  7
	jal x0, .LBB0_214
.LBB0_235:                              //  %sw.bb1492
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x23 ,  255
	xori x15 ,  x15 ,  7
	bltu x0, x15, .LBB0_317
.LBB0_236:                              //    in Loop: Header=BB0_205 Depth=2
	addi x23 ,  x0 ,  8
	jal x0, .LBB0_214
.LBB0_237:                              //  %sw.bb1394
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  256
	beq x0, x15, .LBB0_208
.LBB0_238:                              //  %if.then1397
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	andi x26 ,  x26 ,  -129
	addi x15 ,  x15 ,  1
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1544 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_252
.LBB0_239:                              //  %if.then1401
                                        //    in Loop: Header=BB0_205 Depth=2
	addi x15 ,  x15 ,  -1
	addi x21 ,  x21 ,  1
	sw x15 ,  -1544 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_215
.LBB0_240:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x26 ,  1792
	xori x14 ,  x15 ,  1792
	andi x15 ,  x23 ,  255
	bltu x0, x14, .LBB0_246
.LBB0_241:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_205 Depth=2
	lw x14 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x14, .LBB0_246
.LBB0_242:                              //  %sw.bb1456
                                        //    in Loop: Header=BB0_205 Depth=2
	bltu x0, x15, .LBB0_246
.LBB0_243:                              //  %if.then1467
                                        //    in Loop: Header=BB0_205 Depth=2
	add x15 ,  x0 ,  x0
	andi x26 ,  x26 ,  -1921
	addi x25 ,  x0 ,  105
	slti x23 ,  x0 ,  1
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_214
.LBB0_244:                              //  %if.end1434
                                        //    in Loop: Header=BB0_205 Depth=2
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_249
.LBB0_245:                              //    in Loop: Header=BB0_205 Depth=2
	addi x15 ,  x0 ,  3
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_214
.LBB0_246:                              //  %if.end1469
                                        //    in Loop: Header=BB0_205 Depth=2
	xori x14 ,  x15 ,  5
	beq x0, x14, .LBB0_248
.LBB0_247:                              //  %if.end1469
                                        //    in Loop: Header=BB0_205 Depth=2
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB0_248
.LBB0_820:                              //  %if.end1469
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_696
.LBB0_248:                              //  %if.then1477
                                        //    in Loop: Header=BB0_205 Depth=2
	addi x23 ,  x23 ,  1
	addi x25 ,  x0 ,  105
	jal x0, .LBB0_214
.LBB0_249:                              //  %if.end1439
                                        //    in Loop: Header=BB0_205 Depth=2
	andi x15 ,  x23 ,  255
	xori x14 ,  x15 ,  4
	beq x0, x14, .LBB0_251
.LBB0_250:                              //  %if.end1439
                                        //    in Loop: Header=BB0_205 Depth=2
	xori x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_317
.LBB0_251:                              //  %if.then1447
                                        //    in Loop: Header=BB0_205 Depth=2
	addi x23 ,  x23 ,  1
	jal x0, .LBB0_214
.LBB0_252:                              //    in Loop: Header=BB0_205 Depth=2
	add x15 ,  x0 ,  x0
	sw x15 ,  -1544 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_215
.LBB0_253:                              //  %if.end.i2880
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_307
.LBB0_254:                              //  %if.then4.i2884
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	blt x14, x15, .LBB0_256
.LBB0_255:                              //  %land.lhs.true.i2887
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	beq x0, x10, .LBB0_256
.LBB0_821:                              //  %land.lhs.true.i2887
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_679
.LBB0_256:                              //  %if.end9.i2892
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_257:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x24 ,  0 ( x27 )
	bltu x0, x24, .LBB0_4
	jal x0, .LBB0_702
.LBB0_258:                              //  %if.else340
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	sw x22 ,  -1544 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_291
.LBB0_259:                              //  %if.else400
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x14 ,  x0 ,  x0
	add x11 ,  x0 ,  x14
	sw x11 ,  -1528 ( x8 )          //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x26 ,  0 ( x15 )
	sw x11 ,  -1540 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  -1532 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_340
.LBB0_260:                              //  %if.else215
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	sw x24 ,  -1536 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_295
.LBB0_261:                              //  %if.else268
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x14 ,  x0 ,  x0
	add x25 ,  x0 ,  x14
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x23 ,  x0 ,  x25
	add x24 ,  x0 ,  x25
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  0 ( x15 )
	sw x25 ,  -1528 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	add x22 ,  x0 ,  x14
	blt x0, x15, .LBB0_372
	jal x0, .LBB0_370
.LBB0_262:                              //  %if.then547
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_299
.LBB0_263:                              //  %if.else609
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x21 ,  x0 ,  x0
	sw x21 ,  -1528 ( x8 )          //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x25 ,  0 ( x15 )
	jal x0, .LBB0_383
.LBB0_264:                              //  %if.then924
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB0_303
.LBB0_265:                              //  %while.cond989.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	lw x23 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x26 ,  0 ( x15 )
	add x25 ,  x0 ,  x26
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_268
.LBB0_266:                              //  %land.lhs.true.i2921.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_413
.LBB0_267:                              //  %land.lhs.true.if.end_crit_edge.i2923.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_268:                              //  %_sfgetwc_r.exit2929.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_413
.LBB0_269:                              //  %land.lhs.true993.us
                                        //    in Loop: Header=BB0_268 Depth=2
	beq x0, x22, .LBB0_326
.LBB0_270:                              //  %land.end1001.us
                                        //    in Loop: Header=BB0_268 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	bltu x0, x10, .LBB0_326
.LBB0_271:                              //  %while.body1002.us
                                        //    in Loop: Header=BB0_268 Depth=2
	sw x24 ,  0 ( x25 )
	addi x22 ,  x22 ,  -1
	addi x23 ,  x23 ,  1
	addi x25 ,  x25 ,  4
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_268
	jal x0, .LBB0_266
.LBB0_272:                              //    in Loop: Header=BB0_4 Depth=1
	slti x22 ,  x0 ,  1
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_822
.LBB0_823:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_635
.LBB0_822:
	jal x0, .LBB0_730
.LBB0_273:                              //  %while.cond506.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x0
	lui x26 ,  (65503>>12)&1048575
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_276
.LBB0_274:                              //  %land.lhs.true.i2705.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_285
.LBB0_275:                              //  %land.lhs.true.if.end_crit_edge.i2707.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_276:                              //  %_sfgetwc_r.exit2713.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_285
.LBB0_277:                              //  %land.lhs.true510.us
                                        //    in Loop: Header=BB0_276 Depth=2
	beq x23, x22, .LBB0_280
.LBB0_278:                              //  %land.rhs514.us
                                        //    in Loop: Header=BB0_276 Depth=2
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	call wmemchr
	beq x0, x10, .LBB0_280
.LBB0_279:                              //  %while.body532.us
                                        //    in Loop: Header=BB0_276 Depth=2
	addi x22 ,  x22 ,  1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_276
	jal x0, .LBB0_274
.LBB0_280:                              //  %if.end.i2718
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_311
.LBB0_281:                              //  %if.then4.i2722
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	blt x14, x15, .LBB0_283
.LBB0_282:                              //  %land.lhs.true.i2725
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_422
.LBB0_283:                              //  %if.end9.i2730
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_284:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x25 ,  -1484 ( x8 )          //  4-byte Folded Reload
	beq x0, x22, .LBB0_824
.LBB0_825:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_677
.LBB0_824:                              //  %if.end539
	jal x0, .LBB0_785
.LBB0_285:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x25 ,  -1484 ( x8 )          //  4-byte Folded Reload
	beq x0, x22, .LBB0_826
.LBB0_827:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_677
.LBB0_826:
	jal x0, .LBB0_785
.LBB0_286:                              //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	add x25 ,  x0 ,  x24
	sw x24 ,  -1528 ( x8 )          //  4-byte Folded Spill
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x23, .LBB0_466
	jal x0, .LBB0_699
.LBB0_287:                              //  %if.else710
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB0_328
.LBB0_288:                              //  %if.else770
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x14 ,  x0 ,  x0
	add x11 ,  x0 ,  x14
	sw x11 ,  -1540 ( x8 )          //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x11 ,  -1532 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  -1536 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_476
.LBB0_289:                              //  %if.else1067
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  128
	sw x23 ,  -1528 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_332
.LBB0_290:                              //  %if.else1127
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x11 ,  x0 ,  x0
	add x26 ,  x0 ,  x11
	add x21 ,  x0 ,  x11
	add x23 ,  x0 ,  x11
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x25 ,  0 ( x15 )
	jal x0, .LBB0_528
.LBB0_291:                              //  %if.then343
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_292
.LBB0_828:                              //  %if.then343
	jal x0, .LBB0_785
.LBB0_292:                              //  %if.end347
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB0_293
.LBB0_829:                              //  %if.end347
	jal x0, .LBB0_701
.LBB0_293:                              //  %if.end351
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x26 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_336
.LBB0_294:                              //  %if.end351.if.end391_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_339
.LBB0_295:                              //  %if.then218
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_296
.LBB0_830:                              //  %if.then218
	jal x0, .LBB0_785
.LBB0_296:                              //  %if.end222
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	bltu x0, x10, .LBB0_297
.LBB0_831:                              //  %if.end222
	jal x0, .LBB0_701
.LBB0_297:                              //  %if.end226
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	add x22 ,  x0 ,  x10
	sw x10 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_363
.LBB0_298:                              //  %if.end226.if.end262_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_366
.LBB0_299:                              //  %if.then552
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_300
.LBB0_832:                              //  %if.then552
	jal x0, .LBB0_702
.LBB0_300:                              //  %if.end556
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB0_301
.LBB0_833:                              //  %if.end556
	jal x0, .LBB0_701
.LBB0_301:                              //  %if.end560
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_379
.LBB0_302:                              //  %if.end560.if.end600_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_382
.LBB0_303:                              //  %if.then929
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_304
.LBB0_834:                              //  %if.then929
	jal x0, .LBB0_785
.LBB0_304:                              //  %if.end933
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB0_305
.LBB0_835:                              //  %if.end933
	jal x0, .LBB0_701
.LBB0_305:                              //  %if.end937
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_395
.LBB0_306:                              //  %if.end937.if.end977_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_398
.LBB0_307:                              //  %if.end13.i2895
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	beq x0, x14, .LBB0_418
.LBB0_308:                              //  %land.lhs.true17.i2901
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x13 ,  x0 ,  3
	bgeu x14, x15, .LBB0_419
.LBB0_309:                              //  %land.lhs.true23.i2904
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_419
.LBB0_310:                              //  %if.then27.i2907
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_257
.LBB0_311:                              //  %if.end13.i2733
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	addi x13 ,  x0 ,  3
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	beq x0, x14, .LBB0_420
.LBB0_312:                              //  %land.lhs.true17.i2739
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_421
.LBB0_313:                              //  %land.lhs.true23.i2742
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_421
.LBB0_314:                              //  %if.then27.i2745
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_284
.LBB0_315:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	add x24 ,  x0 ,  x22
	addi x26 ,  x8 ,  -1465
	add x14 ,  x0 ,  x15
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x21, .LBB0_358
	jal x0, .LBB0_699
.LBB0_316:                              //  %sw.epilog1526
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB0_426
.LBB0_317:                              //  %if.end.i3178
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_322
.LBB0_318:                              //  %if.then4.i3182
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_320
.LBB0_319:                              //  %land.lhs.true.i3185
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_426
.LBB0_320:                              //  %if.end9.i3190
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x25 ,  -4 ( x15 )
.LBB0_321:                              //  %for.end1535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_427
.LBB0_428:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
.LBB0_429:                              //  %for.end1535.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_430
.LBB0_322:                              //  %if.end13.i3193
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_424
.LBB0_323:                              //  %land.lhs.true17.i3199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lw x13 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bgeu x14, x15, .LBB0_425
.LBB0_324:                              //  %land.lhs.true23.i3202
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x25, .LBB0_425
.LBB0_325:                              //  %if.then27.i3205
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x13 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_321
.LBB0_326:                              //    in Loop: Header=BB0_4 Depth=1
	sw x23 ,  -1472 ( x8 )          //  4-byte Folded Spill
	add x23 ,  x0 ,  x0
	add x21 ,  x0 ,  x23
	jal x0, .LBB0_408
.LBB0_327:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	add x24 ,  x0 ,  x22
	addi x26 ,  x8 ,  -1465
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x0 ,  x15
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_359
	jal x0, .LBB0_362
.LBB0_328:                              //  %if.then713
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1532 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_329
.LBB0_836:                              //  %if.then713
	jal x0, .LBB0_702
.LBB0_329:                              //  %if.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB0_330
.LBB0_837:                              //  %if.end717
	jal x0, .LBB0_701
.LBB0_330:                              //  %if.end721
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_472
.LBB0_331:                              //  %if.end721.if.end761_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_475
.LBB0_332:                              //  %if.then1070
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_333
.LBB0_838:                              //  %if.then1070
	jal x0, .LBB0_785
.LBB0_333:                              //  %if.end1074
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB0_334
.LBB0_839:                              //  %if.end1074
	jal x0, .LBB0_701
.LBB0_334:                              //  %if.end1078
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_524
.LBB0_335:                              //  %if.end1078.if.end1118_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_527
.LBB0_336:                              //  %if.then359
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_337
.LBB0_840:                              //  %if.then359
	jal x0, .LBB0_704
.LBB0_337:                              //  %if.end379
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_338
.LBB0_841:                              //  %if.end379
	jal x0, .LBB0_704
.LBB0_338:                              //  %cleanup388
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_339:                              //  %if.end391
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1528 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x26 ,  -1532 ( x8 )          //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1540 ( x8 )          //  4-byte Folded Spill
.LBB0_340:                              //  %land.rhs408.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	add x21 ,  x0 ,  x11
	call memset
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_348
	jal x0, .LBB0_346
.LBB0_341:                              //  %if.then444
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x10 ,  -1532 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1540 ( x8 )          //  4-byte Folded Spill
	call realloc
	bltu x0, x10, .LBB0_342
.LBB0_842:                              //  %if.then444
	jal x0, .LBB0_701
.LBB0_342:                              //  %if.end450
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x24 ,  x10
	sw x10 ,  -1532 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
.LBB0_343:                              //  %cleanup.cont458
                                        //    in Loop: Header=BB0_348 Depth=2
	add x24 ,  x0 ,  x22
.LBB0_344:                              //  %cleanup.cont458
                                        //    in Loop: Header=BB0_348 Depth=2
	add x26 ,  x23 ,  x26
	addi x21 ,  x21 ,  1
	add x23 ,  x0 ,  x25
	beq x0, x24, .LBB0_357
.LBB0_345:                              //  %land.rhs408
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_348
.LBB0_346:                              //  %land.lhs.true.i2692
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_356
.LBB0_347:                              //  %land.lhs.true.if.end_crit_edge.i2694
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_348:                              //  %_sfgetwc_r.exit2700
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x12 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB0_356
.LBB0_349:                              //  %while.body413
                                        //    in Loop: Header=BB0_348 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	addi x13 ,  x8 ,  -64
	add x25 ,  x0 ,  x23
	call _wcrtomb_r
	add x23 ,  x0 ,  x10
	beq x0, x23, .LBB0_351
.LBB0_350:                              //  %while.body413
                                        //    in Loop: Header=BB0_348 Depth=2
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB0_352
	jal x0, .LBB0_698
.LBB0_351:                              //  %lor.lhs.false421
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_353
.LBB0_352:                              //  %if.then424
                                        //    in Loop: Header=BB0_348 Depth=2
	addi x24 ,  x24 ,  -1
.LBB0_353:                              //  %if.then429
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_344
.LBB0_354:                              //  %land.lhs.true436
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	add x22 ,  x0 ,  x24
	sub x24 ,  x26 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -1540 ( x8 )          //  4-byte Folded Reload
	bgeu x24, x11, .LBB0_341
.LBB0_355:                              //  %land.lhs.true436
                                        //    in Loop: Header=BB0_348 Depth=2
	sub x15 ,  x11 ,  x10
	bltu x24, x15, .LBB0_343
	jal x0, .LBB0_341
.LBB0_356:                              //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1544 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1540 ( x8 )          //  4-byte Folded Reload
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x21, .LBB0_358
	jal x0, .LBB0_699
.LBB0_357:                              //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1544 ( x8 )          //  4-byte Folded Reload
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1540 ( x8 )          //  4-byte Folded Reload
.LBB0_358:                              //  %if.end466
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_362
.LBB0_359:                              //  %if.end466
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	sub x11 ,  x26 ,  x15
	bgeu x11, x14, .LBB0_362
.LBB0_360:                              //  %if.then476
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_362
.LBB0_361:                              //  %if.then481
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_362:                              //  %cleanup489
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x15 ,  x21
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	xori x15 ,  x24 ,  0
	sltiu x15 ,  x15 ,  1
	add x22 ,  x15 ,  x22
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_843
.LBB0_844:                              //  %cleanup489
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_843:                              //  %cleanup489
	jal x0, .LBB0_702
.LBB0_363:                              //  %if.then234
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_364
.LBB0_845:                              //  %if.then234
	jal x0, .LBB0_704
.LBB0_364:                              //  %if.end253
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_365
.LBB0_846:                              //  %if.end253
	jal x0, .LBB0_704
.LBB0_365:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_366:                              //  %if.end262
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1528 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x23 ,  x0 ,  x0
	addi x25 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	add x14 ,  x0 ,  x22
	sh x15 ,  6 ( x20 )
	add x24 ,  x0 ,  x14
	lw x15 ,  0 ( x9 )
	add x22 ,  x0 ,  x14
	blt x0, x15, .LBB0_372
	jal x0, .LBB0_370
.LBB0_367:                              //  %cleanup.cont300
                                        //    in Loop: Header=BB0_372 Depth=2
	add x21 ,  x0 ,  x22
.LBB0_368:                              //  %cleanup.cont300
                                        //    in Loop: Header=BB0_372 Depth=2
	sw x26 ,  0 ( x14 )
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x14 ,  x14 ,  4
	addi x23 ,  x23 ,  1
	lw x15 ,  -1536 ( x8 )          //  4-byte Folded Reload
	beq x15, x23, .LBB0_378
.LBB0_369:                              //  %land.rhs275
                                        //    in Loop: Header=BB0_372 Depth=2
	lw x15 ,  0 ( x9 )
	add x22 ,  x0 ,  x14
	blt x0, x15, .LBB0_372
.LBB0_370:                              //  %land.lhs.true.i2679
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_465
.LBB0_371:                              //  %land.lhs.true.if.end_crit_edge.i2681
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_372:                              //  %_sfgetwc_r.exit2687
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x26 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB0_377
.LBB0_373:                              //  %if.then283
                                        //    in Loop: Header=BB0_372 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	add x14 ,  x0 ,  x22
	beq x0, x15, .LBB0_368
.LBB0_374:                              //  %if.then283
                                        //    in Loop: Header=BB0_372 Depth=2
	sub x15 ,  x14 ,  x24
	add x22 ,  x0 ,  x21
	srai x21 ,  x15 ,  2&31
	bltu x21, x25, .LBB0_367
.LBB0_375:                              //  %if.then288
                                        //    in Loop: Header=BB0_372 Depth=2
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x24
	call realloc
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB0_376
.LBB0_847:                              //  %if.then288
	jal x0, .LBB0_701
.LBB0_376:                              //  %if.end293
                                        //    in Loop: Header=BB0_372 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	slli x25 ,  x25 ,  1&31
	sw x24 ,  0 ( x15 )
	slli x15 ,  x21 ,  2&31
	add x14 ,  x15 ,  x24
	jal x0, .LBB0_367
.LBB0_377:                              //    in Loop: Header=BB0_4 Depth=1
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x14 ,  x0 ,  x22
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x23, .LBB0_466
	jal x0, .LBB0_699
.LBB0_378:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  -1484 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_467
	jal x0, .LBB0_470
.LBB0_379:                              //  %if.then568
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_380
.LBB0_848:                              //  %if.then568
	jal x0, .LBB0_704
.LBB0_380:                              //  %if.end588
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_381
.LBB0_849:                              //  %if.end588
	jal x0, .LBB0_704
.LBB0_381:                              //  %cleanup597
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_382:                              //  %if.end600
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
.LBB0_383:                              //  %if.end611
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	lw x14 ,  -1500 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	add x14 ,  x0 ,  x25
	srai x24 ,  x15 ,  2&31
	lw x15 ,  -1496 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_557
.LBB0_384:                              //  %while.cond612.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_385 Depth 3
	sub x22 ,  x0 ,  x23
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
.LBB0_385:                              //  %while.cond612
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_384 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x9 )
	add x25 ,  x0 ,  x14
	blt x0, x15, .LBB0_388
.LBB0_386:                              //  %land.lhs.true.i2759
                                        //    in Loop: Header=BB0_385 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	bltu x0, x10, .LBB0_612
.LBB0_387:                              //  %land.lhs.true.if.end_crit_edge.i2761
                                        //    in Loop: Header=BB0_385 Depth=3
	lw x15 ,  0 ( x9 )
.LBB0_388:                              //  %_sfgetwc_r.exit2767
                                        //    in Loop: Header=BB0_385 Depth=3
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x26 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB0_611
.LBB0_389:                              //  %land.lhs.true616
                                        //    in Loop: Header=BB0_385 Depth=3
	addi x22 ,  x22 ,  1
	xori x15 ,  x22 ,  1
	beq x0, x15, .LBB0_567
.LBB0_390:                              //  %land.end641
                                        //    in Loop: Header=BB0_385 Depth=3
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x24
	call wmemchr
	bltu x0, x10, .LBB0_567
.LBB0_391:                              //  %while.body642
                                        //    in Loop: Header=BB0_385 Depth=3
	addi x15 ,  x25 ,  4
	sw x26 ,  0 ( x25 )
	add x14 ,  x0 ,  x15
	beq x0, x21, .LBB0_385
.LBB0_392:                              //  %while.body642
                                        //    in Loop: Header=BB0_385 Depth=3
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	sub x14 ,  x15 ,  x14
	srai x26 ,  x14 ,  2&31
	add x14 ,  x0 ,  x15
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x26, x15, .LBB0_385
.LBB0_393:                              //  %if.then654
                                        //    in Loop: Header=BB0_384 Depth=2
	lw x25 ,  -1528 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  -1484 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x25 ,  3&31
	call realloc
	bltu x0, x10, .LBB0_394
.LBB0_850:                              //  %if.then654
	jal x0, .LBB0_701
.LBB0_394:                              //  %if.end660
                                        //    in Loop: Header=BB0_384 Depth=2
	slli x15 ,  x26 ,  2&31
	slli x25 ,  x25 ,  1&31
	sub x23 ,  x0 ,  x22
	sw x10 ,  0 ( x21 )
	sw x10 ,  -1484 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x15 ,  x10
	sw x25 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_384
.LBB0_395:                              //  %if.then945
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_396
.LBB0_851:                              //  %if.then945
	jal x0, .LBB0_704
.LBB0_396:                              //  %if.end965
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_397
.LBB0_852:                              //  %if.end965
	jal x0, .LBB0_704
.LBB0_397:                              //  %cleanup974
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_398:                              //  %while.cond989.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x23 ,  x0 ,  32
	add x25 ,  x0 ,  x26
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_403
.LBB0_401:                              //  %land.lhs.true.i2921
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_402
.LBB0_853:                              //  %land.lhs.true.i2921
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_686
.LBB0_402:                              //  %land.lhs.true.if.end_crit_edge.i2923
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_403
.LBB0_399:                              //  %if.end1020
                                        //    in Loop: Header=BB0_403 Depth=2
	slli x15 ,  x24 ,  2&31
	slli x23 ,  x23 ,  1&31
	sw x26 ,  0 ( x21 )
	add x25 ,  x15 ,  x26
.LBB0_400:                              //  %cleanup.cont1028
                                        //    in Loop: Header=BB0_403 Depth=2
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x22 ,  x22 ,  -1
	addi x15 ,  x15 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_401
.LBB0_403:                              //  %_sfgetwc_r.exit2929
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_471
.LBB0_404:                              //  %land.lhs.true993
                                        //    in Loop: Header=BB0_403 Depth=2
	beq x0, x22, .LBB0_408
.LBB0_405:                              //  %land.end1001
                                        //    in Loop: Header=BB0_403 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	bltu x0, x10, .LBB0_408
.LBB0_406:                              //  %while.body1002
                                        //    in Loop: Header=BB0_403 Depth=2
	sw x24 ,  0 ( x25 )
	addi x25 ,  x25 ,  4
	sub x15 ,  x25 ,  x26
	srai x24 ,  x15 ,  2&31
	bltu x24, x23, .LBB0_400
.LBB0_407:                              //  %if.then1014
                                        //    in Loop: Header=BB0_403 Depth=2
	slli x11 ,  x23 ,  3&31
	add x10 ,  x0 ,  x26
	call realloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB0_399
	jal x0, .LBB0_701
.LBB0_408:                              //  %if.end.i2934
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_414
.LBB0_409:                              //  %if.then4.i2938
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_411
.LBB0_410:                              //  %land.lhs.true.i2941
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	beq x0, x10, .LBB0_411
.LBB0_854:                              //  %land.lhs.true.i2941
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_687
.LBB0_411:                              //  %if.end9.i2946
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_412:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	sw x0 ,  0 ( x25 )
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x21, .LBB0_855
.LBB0_856:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_688
.LBB0_855:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_691
.LBB0_413:                              //    in Loop: Header=BB0_4 Depth=1
	sw x23 ,  -1472 ( x8 )          //  4-byte Folded Spill
	add x23 ,  x0 ,  x0
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x0 ,  x23
	sw x0 ,  0 ( x25 )
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x21, .LBB0_857
.LBB0_858:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_688
.LBB0_857:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_691
.LBB0_414:                              //  %if.end13.i2949
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_618
.LBB0_415:                              //  %land.lhs.true17.i2955
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_619
.LBB0_416:                              //  %land.lhs.true23.i2958
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_619
.LBB0_417:                              //  %if.then27.i2961
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_412
.LBB0_418:                              //  %if.end13.if.end32_crit_edge.i2898
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x13 ,  x0 ,  3
.LBB0_419:                              //  %if.end32.i2915
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  2
	sw x13 ,  52 ( x18 )
	sw x21 ,  48 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_859
.LBB0_860:                              //  %if.end32.i2915
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_859:                              //  %if.end32.i2915
	jal x0, .LBB0_702
.LBB0_420:                              //  %if.end13.if.end32_crit_edge.i2736
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_421:                              //  %if.end32.i2753
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  2
	sw x13 ,  52 ( x18 )
	sw x21 ,  48 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
.LBB0_422:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -1484 ( x8 )          //  4-byte Folded Reload
	beq x0, x22, .LBB0_861
.LBB0_862:                              //  %if.end539
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_677
.LBB0_861:                              //  %if.end539
	jal x0, .LBB0_785
.LBB0_423:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	sw x25 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x23 ,  -1528 ( x8 )          //  4-byte Folded Spill
	addi x25 ,  x8 ,  -1465
	add x21 ,  x0 ,  x26
	add x23 ,  x0 ,  x26
	jal x0, .LBB0_544
.LBB0_424:                              //  %if.end13.if.end32_crit_edge.i3196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lw x13 ,  -1516 ( x8 )          //  4-byte Folded Reload
.LBB0_425:                              //  %if.end32.i3213
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x13 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x13 ,  48 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x25 ,  63 ( x18 )
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_426:                              //  %for.end1535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_428
.LBB0_427:                              //    in Loop: Header=BB0_4 Depth=1
	andi x26 ,  x26 ,  -257
.LBB0_430:                              //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1484 ( x8 )          //  4-byte Folded Reload
	slti x14 ,  x0 ,  1
	slli x15 ,  x15 ,  24&31
	srai x15 ,  x15 ,  24&31
	addi x15 ,  x15 ,  -1
	bltu x14, x15, .LBB0_431
.LBB0_863:
	jal x0, .LBB0_715
.LBB0_431:                              //  %if.end1554
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x15 ,  x23 ,  24&31
	addi x13 ,  x0 ,  6
	srai x15 ,  x15 ,  24&31
	addi x14 ,  x15 ,  -1
	bltu x13, x14, .LBB0_449
.LBB0_432:                              //  %if.then1559
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x15 ,  x15 ,  3
	beq x0, x15, .LBB0_433
.LBB0_864:                              //  %if.then1559
	jal x0, .LBB0_738
.LBB0_433:                              //  %while.cond1564.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  255
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB0_449
.LBB0_434:                              //  %while.body1569.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1468
	add x21 ,  x15 ,  x14
	addi x15 ,  x23 ,  -4
	andi x24 ,  x15 ,  255
	jal x0, .LBB0_438
.LBB0_435:                              //  %if.end13.if.end32_crit_edge.i3278
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x15 ,  0 ( x18 )
.LBB0_436:                              //  %if.end32.i3295
                                        //    in Loop: Header=BB0_438 Depth=2
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x25 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_437:                              //  %_sungetwc_r.exit3296
                                        //    in Loop: Header=BB0_438 Depth=2
	addi x22 ,  x22 ,  -1
	addi x21 ,  x21 ,  -4
	addi x15 ,  x0 ,  3
	bge x15, x23, .LBB0_448
.LBB0_438:                              //  %while.body1569
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  -16777216&4095
	lw x25 ,  0 ( x21 )
	lui x14 ,  (-16777216>>12)&1048575
	slli x15 ,  x23 ,  24&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	srai x23 ,  x15 ,  24&31
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB0_437
.LBB0_439:                              //  %if.end.i3260
                                        //    in Loop: Header=BB0_438 Depth=2
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_444
.LBB0_440:                              //  %if.then4.i3264
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_442
.LBB0_441:                              //  %land.lhs.true.i3267
                                        //    in Loop: Header=BB0_438 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_437
.LBB0_442:                              //  %if.end9.i3272
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x25 ,  -4 ( x15 )
.LBB0_443:                              //  %_sungetwc_r.exit3296
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	addi x22 ,  x22 ,  -1
	addi x21 ,  x21 ,  -4
	addi x15 ,  x0 ,  3
	blt x15, x23, .LBB0_438
	jal x0, .LBB0_448
.LBB0_444:                              //  %if.end13.i3275
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_435
.LBB0_445:                              //  %land.lhs.true17.i3281
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_436
.LBB0_446:                              //  %land.lhs.true23.i3284
                                        //    in Loop: Header=BB0_438 Depth=2
	lw x14 ,  -4 ( x15 )
	bne x14, x25, .LBB0_436
.LBB0_447:                              //  %if.then27.i3287
                                        //    in Loop: Header=BB0_438 Depth=2
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_443
.LBB0_448:                              //  %if.end1585.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x24 ,  -1
	add x14 ,  x15 ,  x14
	sw x14 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB0_449:                              //  %if.end1585
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	add x23 ,  x15 ,  x14
	andi x14 ,  x26 ,  256
	bltu x0, x14, .LBB0_451
.LBB0_450:                              //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x23
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x26 ,  16
	sw x24 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_592
	jal x0, .LBB0_693
.LBB0_451:                              //  %if.then1588
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x14 ,  x26 ,  1024
	beq x0, x14, .LBB0_452
.LBB0_865:                              //  %if.then1588
	jal x0, .LBB0_753
.LBB0_452:                              //  %if.end1601
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -4 ( x23 )
	ori x15 ,  x21 ,  32
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB0_454
.LBB0_453:                              //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x24 ,  x23 ,  -4
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  -1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x21 ,  -1
	bltu x0, x15, .LBB0_580
	jal x0, .LBB0_591
.LBB0_454:                              //  %if.then1609
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x21 ,  -1
	beq x0, x15, .LBB0_579
.LBB0_455:                              //  %if.end.i3383
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_460
.LBB0_456:                              //  %if.then4.i3387
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_458
.LBB0_457:                              //  %land.lhs.true.i3390
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_579
.LBB0_458:                              //  %if.end9.i3395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x21 ,  -4 ( x15 )
.LBB0_459:                              //  %_sungetwc_r.exit3419
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	jal x0, .LBB0_578
.LBB0_460:                              //  %if.end13.i3398
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_576
.LBB0_461:                              //  %land.lhs.true17.i3404
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_577
.LBB0_462:                              //  %land.lhs.true23.i3407
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x21, .LBB0_577
.LBB0_463:                              //  %if.then27.i3410
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_459
.LBB0_464:                              //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x0
	sw x25 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x23 ,  -1528 ( x8 )          //  4-byte Folded Spill
	addi x25 ,  x8 ,  -1465
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x0 ,  x21
	add x23 ,  x0 ,  x21
	jal x0, .LBB0_546
.LBB0_465:                              //    in Loop: Header=BB0_4 Depth=1
	add x14 ,  x0 ,  x22
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	beq x0, x23, .LBB0_699
.LBB0_466:                              //  %if.end308
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_470
.LBB0_467:                              //  %if.end308
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x11 ,  x14 ,  x24
	srai x15 ,  x11 ,  2&31
	bgeu x15, x25, .LBB0_470
.LBB0_468:                              //  %if.then319
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_470
.LBB0_469:                              //  %if.then323
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_470:                              //  %cleanup331.thread3490
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1544 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x26 ,  x23
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x22 ,  x15 ,  x22
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_866
.LBB0_867:                              //  %cleanup331.thread3490
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_866:                              //  %cleanup331.thread3490
	jal x0, .LBB0_702
.LBB0_471:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x0 ,  0 ( x25 )
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	bltu x0, x21, .LBB0_688
	jal x0, .LBB0_691
.LBB0_472:                              //  %if.then729
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_704
.LBB0_473:                              //  %if.end749
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_704
.LBB0_474:                              //  %cleanup758
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_475:                              //  %if.end761
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1532 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x25 ,  -1536 ( x8 )          //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1540 ( x8 )          //  4-byte Folded Spill
.LBB0_476:                              //  %if.end773
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	add x22 ,  x0 ,  x11
	call memset
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1500 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x24 ,  x15 ,  2&31
	lw x15 ,  -1496 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_499
.LBB0_477:                              //  %while.cond775.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24 ,  -1544 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_482
.LBB0_480:                              //  %land.lhs.true.i2813
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_555
.LBB0_481:                              //  %land.lhs.true.if.end_crit_edge.i2815
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_482
.LBB0_478:                              //  %if.end852
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x24 ,  -1544 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x0 ,  x26
.LBB0_479:                              //  %if.end852
                                        //    in Loop: Header=BB0_482 Depth=2
	addi x22 ,  x22 ,  1
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_480
.LBB0_482:                              //  %_sfgetwc_r.exit2821
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x26 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x26 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB0_513
.LBB0_483:                              //  %_sfgetwc_r.exit2821
                                        //    in Loop: Header=BB0_482 Depth=2
	beq x0, x14, .LBB0_513
.LBB0_484:                              //  %land.rhs782
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x24
	call wmemchr
	bltu x0, x10, .LBB0_514
.LBB0_485:                              //  %while.body804
                                        //    in Loop: Header=BB0_482 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB0_487
.LBB0_486:                              //  %while.body804
                                        //    in Loop: Header=BB0_482 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_488
	jal x0, .LBB0_698
.LBB0_487:                              //  %lor.lhs.false812
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_489
.LBB0_488:                              //  %if.then816
                                        //    in Loop: Header=BB0_482 Depth=2
	addi x23 ,  x23 ,  -1
.LBB0_489:                              //  %if.end818
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_479
.LBB0_490:                              //  %if.then821
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	add x25 ,  x10 ,  x25
	beq x0, x15, .LBB0_479
.LBB0_491:                              //  %land.lhs.true829
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  -1536 ( x8 )          //  4-byte Folded Reload
	add x14 ,  x0 ,  x25
	add x26 ,  x0 ,  x21
	sub x21 ,  x14 ,  x15
	call __locale_mb_cur_max
	lw x24 ,  -1540 ( x8 )          //  4-byte Folded Reload
	bgeu x21, x24, .LBB0_493
.LBB0_492:                              //  %land.lhs.true829
                                        //    in Loop: Header=BB0_482 Depth=2
	sub x15 ,  x24 ,  x10
	bltu x21, x15, .LBB0_478
.LBB0_493:                              //  %if.then837
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x10 ,  -1536 ( x8 )          //  4-byte Folded Reload
	slli x24 ,  x24 ,  1&31
	add x11 ,  x0 ,  x24
	call realloc
	beq x0, x10, .LBB0_701
.LBB0_494:                              //  %if.end843
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	add x25 ,  x21 ,  x10
	sw x24 ,  -1540 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  -1536 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_478
.LBB0_495:                              //  %if.then837.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x10 ,  -1536 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1540 ( x8 )          //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB0_701
.LBB0_496:                              //  %if.end843.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	add x25 ,  x21 ,  x10
	sw x10 ,  -1536 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
.LBB0_497:                              //  %if.end852.us
                                        //    in Loop: Header=BB0_499 Depth=2
	add x21 ,  x0 ,  x26
.LBB0_498:                              //  %if.end852.us
                                        //    in Loop: Header=BB0_499 Depth=2
	addi x22 ,  x22 ,  1
.LBB0_499:                              //  %while.cond775.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_502
.LBB0_500:                              //  %land.lhs.true.i2813.us
                                        //    in Loop: Header=BB0_499 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_555
.LBB0_501:                              //  %land.lhs.true.if.end_crit_edge.i2815.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  0 ( x9 )
.LBB0_502:                              //  %_sfgetwc_r.exit2821.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x26 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x26 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB0_513
.LBB0_503:                              //  %_sfgetwc_r.exit2821.us
                                        //    in Loop: Header=BB0_499 Depth=2
	beq x0, x14, .LBB0_513
.LBB0_504:                              //  %land.rhs782.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x24
	call wmemchr
	beq x0, x10, .LBB0_514
.LBB0_505:                              //  %while.body804.us
                                        //    in Loop: Header=BB0_499 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB0_507
.LBB0_506:                              //  %while.body804.us
                                        //    in Loop: Header=BB0_499 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_508
	jal x0, .LBB0_698
.LBB0_507:                              //  %lor.lhs.false812.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_509
.LBB0_508:                              //  %if.then816.us
                                        //    in Loop: Header=BB0_499 Depth=2
	addi x23 ,  x23 ,  -1
.LBB0_509:                              //  %if.end818.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_498
.LBB0_510:                              //  %if.then821.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	add x25 ,  x10 ,  x25
	beq x0, x15, .LBB0_498
.LBB0_511:                              //  %land.lhs.true829.us
                                        //    in Loop: Header=BB0_499 Depth=2
	lw x15 ,  -1536 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x0 ,  x21
	sub x21 ,  x25 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -1540 ( x8 )          //  4-byte Folded Reload
	bgeu x21, x11, .LBB0_495
.LBB0_512:                              //  %land.lhs.true829.us
                                        //    in Loop: Header=BB0_499 Depth=2
	sub x15 ,  x11 ,  x10
	bltu x21, x15, .LBB0_497
	jal x0, .LBB0_495
.LBB0_513:                              //  %while.end854
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	lw x24 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_515
	jal x0, .LBB0_669
.LBB0_514:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	lw x24 ,  -1528 ( x8 )          //  4-byte Folded Reload
.LBB0_515:                              //  %if.end.i2826
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_520
.LBB0_516:                              //  %if.then4.i2830
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_518
.LBB0_517:                              //  %land.lhs.true.i2833
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_669
.LBB0_518:                              //  %if.end9.i2838
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x26 ,  -4 ( x15 )
.LBB0_519:                              //  %if.end859
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x24, .LBB0_670
.LBB0_671:                              //  %if.then862
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sb x0 ,  0 ( x25 )
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_675
.LBB0_672:                              //  %if.then862
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1536 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -1540 ( x8 )          //  4-byte Folded Reload
	bgeu x11, x15, .LBB0_675
.LBB0_673:                              //  %if.then872
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_675
.LBB0_674:                              //  %if.then877
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_675:                              //  %if.end879
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_676
.LBB0_520:                              //  %if.end13.i2841
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_667
.LBB0_521:                              //  %land.lhs.true17.i2847
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_668
.LBB0_522:                              //  %land.lhs.true23.i2850
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x26, .LBB0_668
.LBB0_523:                              //  %if.then27.i2853
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_519
.LBB0_524:                              //  %if.then1086
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_704
.LBB0_525:                              //  %if.end1106
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_704
.LBB0_526:                              //  %cleanup1115
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_527:                              //  %if.end1118
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x26 ,  x0 ,  32
	add x23 ,  x0 ,  x25
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB0_528:                              //  %while.cond1132.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	call memset
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_534
.LBB0_532:                              //  %land.lhs.true.i2975
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_681
.LBB0_533:                              //  %land.lhs.true.if.end_crit_edge.i2977
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_534
.LBB0_529:                              //  %if.then1177
                                        //    in Loop: Header=BB0_534 Depth=2
	slli x26 ,  x26 ,  1&31
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x26
	call realloc
	beq x0, x10, .LBB0_701
.LBB0_530:                              //  %if.end1183
                                        //    in Loop: Header=BB0_534 Depth=2
	add x23 ,  x0 ,  x10
	add x25 ,  x24 ,  x10
	sw x10 ,  0 ( x21 )
.LBB0_531:                              //  %if.end1192
                                        //    in Loop: Header=BB0_534 Depth=2
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_532
.LBB0_534:                              //  %_sfgetwc_r.exit2983
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x24 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x24 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x22, .LBB0_544
.LBB0_535:                              //  %_sfgetwc_r.exit2983
                                        //    in Loop: Header=BB0_534 Depth=2
	beq x0, x14, .LBB0_544
.LBB0_536:                              //  %land.rhs1139
                                        //    in Loop: Header=BB0_534 Depth=2
	add x10 ,  x0 ,  x24
	call iswspace
	bltu x0, x10, .LBB0_545
.LBB0_537:                              //  %while.body1144
                                        //    in Loop: Header=BB0_534 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	addi x12 ,  x8 ,  -64
	call wcrtomb
	beq x0, x10, .LBB0_539
.LBB0_538:                              //  %while.body1144
                                        //    in Loop: Header=BB0_534 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_540
	jal x0, .LBB0_698
.LBB0_539:                              //  %lor.lhs.false1152
                                        //    in Loop: Header=BB0_534 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_541
.LBB0_540:                              //  %if.then1156
                                        //    in Loop: Header=BB0_534 Depth=2
	addi x22 ,  x22 ,  -1
.LBB0_541:                              //  %if.then1161
                                        //    in Loop: Header=BB0_534 Depth=2
	add x25 ,  x10 ,  x25
	beq x0, x21, .LBB0_531
.LBB0_542:                              //  %land.lhs.true1169
                                        //    in Loop: Header=BB0_534 Depth=2
	sub x24 ,  x25 ,  x23
	call __locale_mb_cur_max
	bgeu x24, x26, .LBB0_529
.LBB0_543:                              //  %land.lhs.true1169
                                        //    in Loop: Header=BB0_534 Depth=2
	sub x15 ,  x26 ,  x10
	bltu x24, x15, .LBB0_531
	jal x0, .LBB0_529
.LBB0_544:                              //  %while.end1194
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_546
	jal x0, .LBB0_682
.LBB0_545:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
.LBB0_546:                              //  %if.end.i2988
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_551
.LBB0_547:                              //  %if.then4.i2992
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_549
.LBB0_548:                              //  %land.lhs.true.i2995
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_682
.LBB0_549:                              //  %if.end9.i3000
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_550:                              //  %if.end1199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_683
	jal x0, .LBB0_692
.LBB0_551:                              //  %if.end13.i3003
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_665
.LBB0_552:                              //  %land.lhs.true17.i3009
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_666
.LBB0_553:                              //  %land.lhs.true23.i3012
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_666
.LBB0_554:                              //  %if.then27.i3015
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_550
.LBB0_555:                              //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	lw x24 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x24, .LBB0_670
	jal x0, .LBB0_671
.LBB0_556:                              //  %if.end660.us
                                        //    in Loop: Header=BB0_557 Depth=2
	slli x15 ,  x26 ,  2&31
	slli x25 ,  x25 ,  1&31
	sub x23 ,  x0 ,  x22
	sw x10 ,  0 ( x21 )
	sw x10 ,  -1484 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x15 ,  x10
	sw x25 ,  -1528 ( x8 )          //  4-byte Folded Spill
.LBB0_557:                              //  %while.cond612.us.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_558 Depth 3
	sub x22 ,  x0 ,  x23
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
.LBB0_558:                              //  %while.cond612.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_557 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x9 )
	add x25 ,  x0 ,  x14
	blt x0, x15, .LBB0_561
.LBB0_559:                              //  %land.lhs.true.i2759.us
                                        //    in Loop: Header=BB0_558 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	bltu x0, x10, .LBB0_612
.LBB0_560:                              //  %land.lhs.true.if.end_crit_edge.i2761.us
                                        //    in Loop: Header=BB0_558 Depth=3
	lw x15 ,  0 ( x9 )
.LBB0_561:                              //  %_sfgetwc_r.exit2767.us
                                        //    in Loop: Header=BB0_558 Depth=3
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x26 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB0_611
.LBB0_562:                              //  %land.lhs.true616.us
                                        //    in Loop: Header=BB0_558 Depth=3
	addi x22 ,  x22 ,  1
	xori x15 ,  x22 ,  1
	beq x0, x15, .LBB0_567
.LBB0_563:                              //  %land.end641.us
                                        //    in Loop: Header=BB0_558 Depth=3
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x24
	call wmemchr
	beq x0, x10, .LBB0_567
.LBB0_564:                              //  %while.body642.us
                                        //    in Loop: Header=BB0_558 Depth=3
	addi x15 ,  x25 ,  4
	sw x26 ,  0 ( x25 )
	add x14 ,  x0 ,  x15
	beq x0, x21, .LBB0_558
.LBB0_565:                              //  %while.body642.us
                                        //    in Loop: Header=BB0_558 Depth=3
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	sub x14 ,  x15 ,  x14
	srai x26 ,  x14 ,  2&31
	add x14 ,  x0 ,  x15
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x26, x15, .LBB0_558
.LBB0_566:                              //  %if.then654.us
                                        //    in Loop: Header=BB0_557 Depth=2
	lw x25 ,  -1528 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  -1484 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x25 ,  3&31
	call realloc
	bltu x0, x10, .LBB0_556
	jal x0, .LBB0_701
.LBB0_567:                              //  %if.end.i2772
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_572
.LBB0_568:                              //  %if.then4.i2776
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_570
.LBB0_569:                              //  %land.lhs.true.i2779
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_611
.LBB0_570:                              //  %if.end9.i2784
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x26 ,  -4 ( x15 )
.LBB0_571:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	jal x0, .LBB0_610
.LBB0_572:                              //  %if.end13.i2787
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_608
.LBB0_573:                              //  %land.lhs.true17.i2793
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_609
.LBB0_574:                              //  %land.lhs.true23.i2796
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x26, .LBB0_609
.LBB0_575:                              //  %if.then27.i2799
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_571
.LBB0_576:                              //  %if.end13.if.end32_crit_edge.i3401
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_577:                              //  %if.end32.i3418
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x21 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
.LBB0_578:                              //  %_sungetwc_r.exit3419
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  4 ( x18 )
.LBB0_579:                              //  %_sungetwc_r.exit3419
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x24 ,  x23 ,  -8
	lw x21 ,  -8 ( x23 )
	addi x15 ,  x15 ,  -2
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x21 ,  -1
	beq x0, x15, .LBB0_591
.LBB0_580:                              //  %if.end.i3424
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_585
.LBB0_581:                              //  %if.then4.i3428
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_583
.LBB0_582:                              //  %land.lhs.true.i3431
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_591
.LBB0_583:                              //  %if.end9.i3436
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x21 ,  -4 ( x15 )
.LBB0_584:                              //  %if.end1615
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	andi x15 ,  x26 ,  16
	sw x24 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_592
	jal x0, .LBB0_693
.LBB0_585:                              //  %if.end13.i3439
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_589
.LBB0_586:                              //  %land.lhs.true17.i3445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_590
.LBB0_587:                              //  %land.lhs.true23.i3448
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x21, .LBB0_590
.LBB0_588:                              //  %if.then27.i3451
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_584
.LBB0_589:                              //  %if.end13.if.end32_crit_edge.i3442
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_590:                              //  %if.end32.i3459
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x21 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_591:                              //  %if.end1615
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  16
	sw x24 ,  -1484 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_693
.LBB0_592:                              //  %if.then1619
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x26 ,  1536
	sw x0 ,  0 ( x24 )
	xori x15 ,  x15 ,  1024
	bltu x0, x15, .LBB0_595
.LBB0_593:                              //  %if.end1634
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1532 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1528 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	beq x0, x15, .LBB0_599
.LBB0_594:                              //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1484 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	lw x14 ,  -1508 ( x8 )          //  4-byte Folded Reload
	bltu x24, x14, .LBB0_598
.LBB0_597:                              //  %if.then1636
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1512 ( x8 )          //  4-byte Folded Reload
.LBB0_598:                              //  %if.then1636
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x2 ,  x2 ,  -16
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	sw x15 ,  12 ( x2 )
	addi x15 ,  x0 ,  11
	sw x24 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x2 )
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	call swprintf
	addi x2 ,  x2 ,  16
	jal x0, .LBB0_599
.LBB0_595:                              //  %if.else1627
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1536 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_599
.LBB0_596:                              //  %if.end1634.thread3682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1540 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  10
	add x25 ,  x0 ,  x15
	addi x11 ,  x24 ,  4
	call _wcstol_r
	sub x15 ,  x10 ,  x25
	lw x14 ,  -1508 ( x8 )          //  4-byte Folded Reload
	bltu x24, x14, .LBB0_598
	jal x0, .LBB0_597
.LBB0_599:                              //  %if.end1649
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	add x25 ,  x0 ,  x23
	call _wcstod_r
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB0_603
.LBB0_600:                              //  %if.else1656
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  2
	sw x21 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_604
.LBB0_601:                              //  %if.else1662
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -56 ( x8 )
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	addi x15 ,  x21 ,  4
	sw x15 ,  -56 ( x8 )
	call __unorddf2
	lw x21 ,  0 ( x21 )
	bltu x0, x10, .LBB0_605
.LBB0_602:                              //  %if.else1667
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __truncdfsf2
	jal x0, .LBB0_606
.LBB0_603:                              //  %if.then1654
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x22 ,  x22 ,  1
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x23 ,  0 ( x15 )
	sw x24 ,  4 ( x15 )
	add x23 ,  x0 ,  x25
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_868
.LBB0_869:                              //  %if.then1654
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_868:                              //  %if.then1654
	jal x0, .LBB0_702
.LBB0_604:                              //  %if.then1659
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -56 ( x8 )
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	addi x15 ,  x21 ,  4
	sw x15 ,  -56 ( x8 )
	call __extenddftf2
	lw x15 ,  0 ( x21 )
	sw x13 ,  12 ( x15 )
	sw x12 ,  8 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_607
.LBB0_605:                              //  %if.then1665
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
.LBB0_606:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
.LBB0_607:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x25
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	addi x22 ,  x22 ,  1
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_870
.LBB0_871:                              //  %if.end1671
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_870:                              //  %if.end1671
	jal x0, .LBB0_702
.LBB0_608:                              //  %if.end13.if.end32_crit_edge.i2790
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_609:                              //  %if.end32.i2807
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x26 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
.LBB0_610:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  4 ( x18 )
.LBB0_611:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB0_612:                              //  %if.end674
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1484 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	beq x0, x15, .LBB0_785
.LBB0_613:                              //  %if.end682
                                        //    in Loop: Header=BB0_4 Depth=1
	srai x22 ,  x15 ,  2&31
	sw x0 ,  0 ( x25 )
	beq x0, x21, .LBB0_617
.LBB0_614:                              //  %if.end682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -1528 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x22 ,  1
	bgeu x15, x14, .LBB0_617
.LBB0_615:                              //  %if.then689
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_617
.LBB0_616:                              //  %if.then694
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
.LBB0_617:                              //  %cleanup698
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB0_677
.LBB0_618:                              //  %if.end13.if.end32_crit_edge.i2952
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_619:                              //  %if.end32.i2969
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x0 ,  0 ( x25 )
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	bltu x0, x21, .LBB0_688
	jal x0, .LBB0_691
.LBB0_620:                              //    in Loop: Header=BB0_4 Depth=1
	sw x11 ,  -1476 ( x8 )          //  4-byte Folded Spill
.LBB0_621:                              //  %if.end.i3042
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x11 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x10 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	and x11 ,  x10 ,  x11
	sh x11 ,  12 ( x18 )
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB0_626
.LBB0_622:                              //  %if.then4.i3046
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  52 ( x18 )
	blt x15, x13, .LBB0_625
.LBB0_623:                              //  %land.lhs.true.i3049
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_632
.LBB0_624:                              //  %land.lhs.true.i3049.if.end9.i3054_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  0 ( x18 )
.LBB0_625:                              //  %if.end9.i3054
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x14 ,  -4
	sw x15 ,  0 ( x18 )
	sb x23 ,  -4 ( x14 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	jal x0, .LBB0_631
.LBB0_626:                              //  %if.end13.i3057
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11 ,  16 ( x18 )
	beq x0, x11, .LBB0_630
.LBB0_627:                              //  %if.end13.i3057
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x11, x14, .LBB0_630
.LBB0_628:                              //  %land.lhs.true23.i3066
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11 ,  0 ( x12 )
	bne x11, x23, .LBB0_630
.LBB0_629:                              //  %if.then27.i3069
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x13 ,  4 ( x18 )
	sw x12 ,  0 ( x18 )
	jal x0, .LBB0_632
.LBB0_630:                              //  %if.end32.i3077
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  60 ( x18 )
	addi x15 ,  x0 ,  3
	sw x14 ,  56 ( x18 )
	sw x26 ,  0 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
.LBB0_631:                              //  %_sfgetwc_r.exit3037.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  4 ( x18 )
.LBB0_632:                              //  %_sfgetwc_r.exit3037.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x26
.LBB0_633:                              //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x26 ,  (65503>>12)&1048575
.LBB0_634:                              //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_730
.LBB0_635:                              //  %if.end1314
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -4 ( x25 )
	ori x15 ,  x22 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_643
.LBB0_636:                              //  %if.then1321
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x25 ,  -4
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_643
.LBB0_637:                              //  %if.end.i3124
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_644
.LBB0_638:                              //  %if.then4.i3128
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	lw x24 ,  -1472 ( x8 )          //  4-byte Folded Reload
	blt x14, x15, .LBB0_640
.LBB0_639:                              //  %land.lhs.true.i3131
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_650
.LBB0_640:                              //  %if.end9.i3136
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
.LBB0_641:                              //  %if.end1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x21 ,  16
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_651
	jal x0, .LBB0_657
.LBB0_643:                              //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  -1472 ( x8 )          //  4-byte Folded Reload
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x21 ,  16
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB0_651
.LBB0_657:                              //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	jal x0, .LBB0_662
.LBB0_644:                              //  %if.end13.i3139
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	addi x13 ,  x0 ,  3
	lw x24 ,  -1472 ( x8 )          //  4-byte Folded Reload
	beq x0, x14, .LBB0_648
.LBB0_645:                              //  %land.lhs.true17.i3145
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_649
.LBB0_646:                              //  %land.lhs.true23.i3148
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_649
.LBB0_647:                              //  %if.then27.i3151
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_641
.LBB0_648:                              //  %if.end13.if.end32_crit_edge.i3142
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_649:                              //  %if.end32.i3159
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x13 ,  52 ( x18 )
	sw x23 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
	sw x14 ,  60 ( x18 )
	sw x15 ,  4 ( x18 )
	sw x22 ,  63 ( x18 )
.LBB0_650:                              //  %if.end1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x21 ,  16
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB0_657
.LBB0_651:                              //  %if.then1328
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	sw x0 ,  0 ( x25 )
	lw x15 ,  -1488 ( x8 )          //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x21 ,  32
	bltu x0, x15, .LBB0_656
.LBB0_652:                              //  %if.else1335
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  8
	bltu x0, x15, .LBB0_658
.LBB0_653:                              //  %if.else1341
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  4
	bltu x0, x15, .LBB0_659
.LBB0_654:                              //  %if.else1347
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  1
	bltu x0, x15, .LBB0_656
.LBB0_655:                              //  %if.else1352
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  2
	bltu x0, x15, .LBB0_663
.LBB0_656:                              //  %if.else1366
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_660
.LBB0_658:                              //  %if.then1338
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB0_660
.LBB0_659:                              //  %if.then1344
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB0_660:                              //  %if.end1372
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
.LBB0_661:                              //  %if.end1372
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -1484 ( x8 )          //  4-byte Folded Reload
	addi x22 ,  x22 ,  1
.LBB0_662:                              //  %if.end1374
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x8 ,  -1464
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	add x24 ,  x24 ,  x15
	sw x24 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_872
.LBB0_873:                              //  %if.end1374
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_872:                              //  %if.end1374
	jal x0, .LBB0_702
.LBB0_663:                              //  %if.then1355
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	lw x14 ,  -1488 ( x8 )          //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB0_694
.LBB0_664:                              //  %if.else1361
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	call _wcstoll_r
	jal x0, .LBB0_695
.LBB0_665:                              //  %if.end13.if.end32_crit_edge.i3006
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_666:                              //  %if.end32.i3023
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_683
	jal x0, .LBB0_692
.LBB0_667:                              //  %if.end13.if.end32_crit_edge.i2844
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_668:                              //  %if.end32.i2861
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x21 ,  48 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x26 ,  63 ( x18 )
.LBB0_669:                              //  %if.end859
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x24, .LBB0_671
.LBB0_670:                              //    in Loop: Header=BB0_4 Depth=1
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB0_676:                              //  %if.end888
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -1484 ( x8 )          //  4-byte Folded Reload
.LBB0_677:                              //  %if.end888
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	add x26 ,  x26 ,  x22
.LBB0_678:                              //    in Loop: Header=BB0_4 Depth=1
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
.LBB0_679:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_874
.LBB0_875:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_874:                              //  %if.end1228
	jal x0, .LBB0_702
.LBB0_680:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	sw x25 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x23 ,  -1528 ( x8 )          //  4-byte Folded Spill
	addi x25 ,  x8 ,  -1465
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x0 ,  x26
	add x23 ,  x0 ,  x26
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB0_683
	jal x0, .LBB0_692
.LBB0_681:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
.LBB0_682:                              //  %if.end1199
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB0_692
.LBB0_683:                              //  %if.then1202
                                        //    in Loop: Header=BB0_4 Depth=1
	sb x0 ,  0 ( x25 )
	beq x0, x21, .LBB0_691
.LBB0_684:                              //  %if.then1202
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x25 ,  x23
	addi x11 ,  x15 ,  1
	bgeu x11, x26, .LBB0_691
.LBB0_685:                              //  %if.then1212
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	call realloc
	bltu x0, x10, .LBB0_690
	jal x0, .LBB0_691
.LBB0_686:                              //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
.LBB0_687:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0 ,  0 ( x25 )
	sw x25 ,  -1484 ( x8 )          //  4-byte Folded Spill
	beq x0, x21, .LBB0_691
.LBB0_688:                              //  %if.end1035
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x25 ,  x26
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x23, .LBB0_691
.LBB0_689:                              //  %if.then1046
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_691
.LBB0_690:                              //  %if.then1217
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
.LBB0_691:                              //  %if.end1219
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x22 ,  x22 ,  1
.LBB0_692:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -1524 ( x8 )          //  4-byte Folded Reload
.LBB0_693:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x24 ,  0 ( x27 )
	beq x0, x24, .LBB0_876
.LBB0_877:                              //  %if.end1228
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_876:                              //  %if.end1228
	jal x0, .LBB0_702
.LBB0_694:                              //  %if.then1358
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	call _wcstoull_r
.LBB0_695:                              //  %if.end1364
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_661
.LBB0_696:                              //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x0 ,  105
	jal x0, .LBB0_317
.LBB0_697:
	add x22 ,  x0 ,  x0
	jal x0, .LBB0_709
.LBB0_698:                              //  %input_failure.loopexit33
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
.LBB0_699:                              //  %input_failure
	beq x0, x22, .LBB0_701
.LBB0_700:                              //  %land.lhs.true1684
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_702
.LBB0_701:                              //  %land.lhs.true1684
	addi x22 ,  x0 ,  -1
.LBB0_702:                              //  %do.body1693
	beq x0, x20, .LBB0_709
.LBB0_703:                              //  %if.then1695
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB0_707
.LBB0_704:                              //  %for.cond1699.preheader
	lhu x15 ,  6 ( x20 )
	addi x22 ,  x0 ,  -1
	beq x0, x15, .LBB0_707
.LBB0_705:                              //  %for.body1704.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB0_706:                              //  %for.body1704
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x20 )
	add x15 ,  x9 ,  x15
	lw x15 ,  0 ( x15 )
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  0 ( x20 )
	addi x18 ,  x18 ,  1
	add x15 ,  x9 ,  x15
	addi x9 ,  x9 ,  4
	lw x15 ,  0 ( x15 )
	sw x0 ,  0 ( x15 )
	lhu x15 ,  6 ( x20 )
	bltu x18, x15, .LBB0_706
.LBB0_707:                              //  %if.end1712
	lw x10 ,  0 ( x20 )
	beq x0, x10, .LBB0_709
.LBB0_708:                              //  %if.then1715
	call free
.LBB0_709:                              //  %cleanup1721
	add x10 ,  x0 ,  x22
	lw x27 ,  -48 ( x8 )            //  4-byte Folded Reload
	lw x26 ,  -44 ( x8 )            //  4-byte Folded Reload
	lw x25 ,  -40 ( x8 )            //  4-byte Folded Reload
	lw x24 ,  -36 ( x8 )            //  4-byte Folded Reload
	lw x23 ,  -32 ( x8 )            //  4-byte Folded Reload
	lw x22 ,  -28 ( x8 )            //  4-byte Folded Reload
	lw x21 ,  -24 ( x8 )            //  4-byte Folded Reload
	lw x20 ,  -20 ( x8 )            //  4-byte Folded Reload
	lw x19 ,  -16 ( x8 )            //  4-byte Folded Reload
	lw x18 ,  -12 ( x8 )            //  4-byte Folded Reload
	lw x9 ,  -8 ( x8 )              //  4-byte Folded Reload
	lw x1 ,  -4 ( x8 )              //  4-byte Folded Reload
	add x2 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_710:                              //  %if.end.i2584
	lhu x11 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x25 ,  x30
	and x11 ,  x10 ,  x11
	sh x11 ,  12 ( x18 )
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB0_768
.LBB0_711:                              //  %if.then4.i2588
	lw x14 ,  52 ( x18 )
	blt x12, x14, .LBB0_714
.LBB0_712:                              //  %land.lhs.true.i2591
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_699
.LBB0_713:                              //  %land.lhs.true.i2591.if.end9.i2596_crit_edge
	lw x15 ,  0 ( x18 )
.LBB0_714:                              //  %if.end9.i2596
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x21 ,  -4 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x22, .LBB0_700
	jal x0, .LBB0_701
.LBB0_715:                              //  %while.cond1545.preheader
	addi x9 ,  x8 ,  -1464
	bgeu x9, x24, .LBB0_785
.LBB0_716:                              //  %while.body1549.preheader
	addi x21 ,  x0 ,  3
	addi x22 ,  x0 ,  2
	lui x25 ,  (65503>>12)&1048575
	lw x23 ,  -4 ( x24 )
	addi x24 ,  x24 ,  -4
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB0_721
	jal x0, .LBB0_719
.LBB0_717:                              //  %if.end13.if.end32_crit_edge.i3237
	lw x15 ,  0 ( x18 )
.LBB0_718:                              //  %if.end32.i3254
	sw x15 ,  56 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x21 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	sw x22 ,  4 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  0 ( x18 )
.LBB0_719:                              //  %_sungetwc_r.exit3255
	bgeu x9, x24, .LBB0_785
.LBB0_720:                              //  %while.body1549
	lw x23 ,  -4 ( x24 )
	addi x24 ,  x24 ,  -4
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB0_719
.LBB0_721:                              //  %if.end.i3219
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_725
.LBB0_722:                              //  %if.then4.i3223
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_724
.LBB0_723:                              //  %land.lhs.true.i3226
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_719
.LBB0_724:                              //  %if.end9.i3231
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x23 ,  -4 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x9, x24, .LBB0_720
	jal x0, .LBB0_785
.LBB0_725:                              //  %if.end13.i3234
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_717
.LBB0_726:                              //  %land.lhs.true17.i3240
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_718
.LBB0_727:                              //  %land.lhs.true23.i3243
	lw x14 ,  -4 ( x15 )
	bne x14, x23, .LBB0_718
.LBB0_728:                              //  %if.then27.i3246
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x9, x24, .LBB0_720
	jal x0, .LBB0_785
.LBB0_730:                              //  %if.then1306
	beq x0, x22, .LBB0_785
.LBB0_731:                              //  %if.then1310
	lw x9 ,  -4 ( x25 )
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB0_785
.LBB0_732:                              //  %if.end.i3083
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_780
.LBB0_733:                              //  %if.then4.i3087
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_735
.LBB0_734:                              //  %land.lhs.true.i3090
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_702
.LBB0_735:                              //  %if.end9.i3095
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x9 ,  -4 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x20, .LBB0_703
	jal x0, .LBB0_709
.LBB0_738:                              //  %while.cond1575.preheader
	bge x0, x22, .LBB0_785
.LBB0_739:                              //  %while.body1579.preheader
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	addi x21 ,  x0 ,  3
	addi x23 ,  x0 ,  2
	lui x25 ,  (65503>>12)&1048575
	add x15 ,  x15 ,  x14
	addi x9 ,  x15 ,  -4
	lw x24 ,  0 ( x9 )
	addi x22 ,  x22 ,  -1
	xori x15 ,  x24 ,  -1
	bltu x0, x15, .LBB0_744
	jal x0, .LBB0_742
.LBB0_740:                              //  %if.end13.if.end32_crit_edge.i3319
	lw x15 ,  0 ( x18 )
.LBB0_741:                              //  %if.end32.i3336
	sw x15 ,  56 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x21 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	sw x23 ,  4 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	sw x15 ,  0 ( x18 )
.LBB0_742:                              //  %_sungetwc_r.exit3337
	addi x9 ,  x9 ,  -4
	bge x0, x22, .LBB0_785
.LBB0_743:                              //  %while.body1579
	lw x24 ,  0 ( x9 )
	addi x22 ,  x22 ,  -1
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_742
.LBB0_744:                              //  %if.end.i3301
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_749
.LBB0_745:                              //  %if.then4.i3305
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_747
.LBB0_746:                              //  %land.lhs.true.i3308
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_742
.LBB0_747:                              //  %if.end9.i3313
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_748:                              //  %_sungetwc_r.exit3337
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	addi x9 ,  x9 ,  -4
	blt x0, x22, .LBB0_743
	jal x0, .LBB0_785
.LBB0_749:                              //  %if.end13.i3316
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_740
.LBB0_750:                              //  %land.lhs.true17.i3322
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_741
.LBB0_751:                              //  %land.lhs.true23.i3325
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_741
.LBB0_752:                              //  %if.then27.i3328
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_748
.LBB0_753:                              //  %while.cond1592.preheader
	bge x0, x22, .LBB0_785
.LBB0_754:                              //  %while.body1596.preheader
	addi x14 ,  x8 ,  -1464
	addi x21 ,  x0 ,  3
	addi x23 ,  x0 ,  2
	lui x25 ,  (65503>>12)&1048575
	add x15 ,  x15 ,  x14
	addi x9 ,  x15 ,  -4
	lw x24 ,  0 ( x9 )
	addi x22 ,  x22 ,  -1
	xori x15 ,  x24 ,  -1
	bltu x0, x15, .LBB0_759
	jal x0, .LBB0_757
.LBB0_755:                              //  %if.end13.if.end32_crit_edge.i3360
	lw x15 ,  0 ( x18 )
.LBB0_756:                              //  %if.end32.i3377
	sw x15 ,  56 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x21 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	sw x23 ,  4 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x24 ,  63 ( x18 )
	sw x15 ,  0 ( x18 )
.LBB0_757:                              //  %_sungetwc_r.exit3378
	addi x9 ,  x9 ,  -4
	bge x0, x22, .LBB0_785
.LBB0_758:                              //  %while.body1596
	lw x24 ,  0 ( x9 )
	addi x22 ,  x22 ,  -1
	xori x15 ,  x24 ,  -1
	beq x0, x15, .LBB0_757
.LBB0_759:                              //  %if.end.i3342
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_764
.LBB0_760:                              //  %if.then4.i3346
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_762
.LBB0_761:                              //  %land.lhs.true.i3349
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_757
.LBB0_762:                              //  %if.end9.i3354
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x24 ,  -4 ( x15 )
.LBB0_763:                              //  %_sungetwc_r.exit3378
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	addi x9 ,  x9 ,  -4
	blt x0, x22, .LBB0_758
	jal x0, .LBB0_785
.LBB0_764:                              //  %if.end13.i3357
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_755
.LBB0_765:                              //  %land.lhs.true17.i3363
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_756
.LBB0_766:                              //  %land.lhs.true23.i3366
	lw x14 ,  -4 ( x15 )
	bne x14, x24, .LBB0_756
.LBB0_767:                              //  %if.then27.i3369
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_763
.LBB0_785:
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x0, x20, .LBB0_703
	jal x0, .LBB0_709
.LBB0_768:                              //  %if.end13.i2599
	lw x11 ,  16 ( x18 )
	beq x0, x11, .LBB0_775
.LBB0_769:                              //  %if.end13.i2599
	bgeu x11, x15, .LBB0_775
.LBB0_770:                              //  %land.lhs.true23.i2608
	lw x11 ,  0 ( x13 )
	bne x11, x21, .LBB0_775
.LBB0_771:                              //  %if.then27.i2611
	sw x14 ,  4 ( x18 )
	sw x13 ,  0 ( x18 )
	bltu x0, x22, .LBB0_700
	jal x0, .LBB0_701
.LBB0_775:                              //  %if.end32.i2619
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x12 ,  60 ( x18 )
	sw x5 ,  48 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x21 ,  63 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	bltu x0, x22, .LBB0_700
	jal x0, .LBB0_701
.LBB0_780:                              //  %if.end13.i3098
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_788
.LBB0_781:                              //  %land.lhs.true17.i3104
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_789
.LBB0_782:                              //  %land.lhs.true23.i3107
	lw x14 ,  -4 ( x15 )
	bne x14, x9, .LBB0_789
.LBB0_783:                              //  %if.then27.i3110
	addi x15 ,  x15 ,  -4
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x20, .LBB0_703
	jal x0, .LBB0_709
.LBB0_788:                              //  %if.end13.if.end32_crit_edge.i3101
	lw x15 ,  0 ( x18 )
.LBB0_789:                              //  %if.end32.i3118
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x23 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x22 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x9 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	bltu x0, x20, .LBB0_703
	jal x0, .LBB0_709
.Lfunc_end0:
	.size	__ssvfwscanf_r, .Lfunc_end0-__ssvfwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_50
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_44
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_40
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_67
	.long	.LBB0_702
	.long	.LBB0_84
	.long	.LBB0_702
	.long	.LBB0_67
	.long	.LBB0_67
	.long	.LBB0_67
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_42
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_85
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_79
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_86
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_67
	.long	.LBB0_702
	.long	.LBB0_88
	.long	.LBB0_89
	.long	.LBB0_67
	.long	.LBB0_67
	.long	.LBB0_67
	.long	.LBB0_29
	.long	.LBB0_90
	.long	.LBB0_42
	.long	.LBB0_702
	.long	.LBB0_32
	.long	.LBB0_46
	.long	.LBB0_57
	.long	.LBB0_91
	.long	.LBB0_92
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_95
	.long	.LBB0_28
	.long	.LBB0_96
	.long	.LBB0_702
	.long	.LBB0_702
	.long	.LBB0_79
	.long	.LBB0_702
	.long	.LBB0_28
JTI0_1:
	.long	.LBB0_110
	.long	.LBB0_124
	.long	.LBB0_136
	.long	.LBB0_147
	.long	.LBB0_172
JTI0_2:
	.long	.LBB0_217
	.long	.LBB0_211
	.long	.LBB0_217
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_237
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_208
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_219
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_221
	.long	.LBB0_227
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_229
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_233
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_235
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_219
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_221
	.long	.LBB0_227
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_240
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_229
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_233
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_211
	.long	.LBB0_235
JTI0_3:
	.long	.LBB0_632
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_161
	.long	.LBB0_621
	.long	.LBB0_161
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_168
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_151
	.long	.LBB0_163
	.long	.LBB0_163
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_165
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_159
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_621
	.long	.LBB0_165
                                        //  -- End function
	.address_space	0
	.type	__ssvfwscanf_r.basefix,@object //  @__ssvfwscanf_r.basefix
	.p2align	1
__ssvfwscanf_r.basefix:
	.short	10                      //  0xa
	.short	1                       //  0x1
	.short	2                       //  0x2
	.short	3                       //  0x3
	.short	4                       //  0x4
	.short	5                       //  0x5
	.short	6                       //  0x6
	.short	7                       //  0x7
	.short	8                       //  0x8
	.short	9                       //  0x9
	.short	10                      //  0xa
	.short	11                      //  0xb
	.short	12                      //  0xc
	.short	13                      //  0xd
	.short	14                      //  0xe
	.short	15                      //  0xf
	.short	16                      //  0x10
	.size	__ssvfwscanf_r.basefix, 34

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	101                     //  0x65
	.long	37                      //  0x25
	.long	108                     //  0x6c
	.long	100                     //  0x64
	.long	0                       //  0x0
	.size	.str, 20

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.1:
	.zero	1
	.size	.str.1, 1


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
