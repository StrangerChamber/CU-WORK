	.text
	.file	"svfiwscanf.c"
	.globl	__ssvfiwscanf_r         //  -- Begin function __ssvfiwscanf_r
	.type	__ssvfiwscanf_r,@function
__ssvfiwscanf_r:                        //  @__ssvfiwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -296
	.cfi_adjust_cfa_offset 296
	sw x8 ,  288 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  288
	.cfi_def_cfa 8, 8
	lui x15 ,  (8192>>12)&1048575
	sw x18 ,  -12 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 18, -20
	add x18 ,  x0 ,  x11
	sw x19 ,  -16 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 19, -24
	sw x26 ,  -44 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 26, -52
	add x26 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	sw x13 ,  -56 ( x8 )
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
	sw x27 ,  -48 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 27, -56
	lhu x14 ,  12 ( x18 )
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x18 )
	lw x14 ,  100 ( x18 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x18 )
.LBB0_2:                                //  %do.end
	lw x22 ,  0 ( x26 )
	bltu x0, x22, .LBB0_3
.LBB0_596:                              //  %do.end
	jal x0, .LBB0_552
.LBB0_3:                                //  %if.end7.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x14 ,  x0 ,  x0
	addi x15 ,  x18 ,  64
	addi x21 ,  x18 ,  63
	addi x9 ,  x18 ,  4
	addi x24 ,  x0 ,  -1
	add x20 ,  x0 ,  x14
	add x25 ,  x0 ,  x14
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -252 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -232 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -240 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -248 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -244 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -260 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -256 ( x8 )           //  4-byte Folded Spill
.LBB0_4:                                //  %if.end7.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
                                        //        Child Loop BB0_37 Depth 3
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
                                        //            Child Loop BB0_10 Depth 5
                                        //      Child Loop BB0_86 Depth 2
                                        //      Child Loop BB0_92 Depth 2
                                        //      Child Loop BB0_152 Depth 2
                                        //      Child Loop BB0_139 Depth 2
                                        //      Child Loop BB0_339 Depth 2
                                        //      Child Loop BB0_209 Depth 2
                                        //      Child Loop BB0_426 Depth 2
                                        //      Child Loop BB0_188 Depth 2
                                        //      Child Loop BB0_128 Depth 2
                                        //      Child Loop BB0_216 Depth 2
                                        //      Child Loop BB0_320 Depth 2
                                        //        Child Loop BB0_321 Depth 3
                                        //      Child Loop BB0_449 Depth 2
                                        //        Child Loop BB0_450 Depth 3
                                        //      Child Loop BB0_374 Depth 2
                                        //      Child Loop BB0_394 Depth 2
                                        //      Child Loop BB0_303 Depth 2
                                        //      Child Loop BB0_171 Depth 2
                                        //      Child Loop BB0_277 Depth 2
                                        //      Child Loop BB0_117 Depth 2
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
.LBB0_5:                                //  %if.end7.lr.ph
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_37 Depth 3
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
                                        //            Child Loop BB0_10 Depth 5
	lui x27 ,  (65503>>12)&1048575
	add x10 ,  x0 ,  x22
	addi x26 ,  x26 ,  4
	call iswspace
	bltu x0, x10, .LBB0_37
.LBB0_6:                                //  %if.end20
                                        //    in Loop: Header=BB0_5 Depth=2
	xori x15 ,  x22 ,  37
	bltu x0, x15, .LBB0_51
.LBB0_7:                                //  %again.preheader
                                        //    in Loop: Header=BB0_5 Depth=2
	add x23 ,  x0 ,  x0
	add x27 ,  x0 ,  x23
.LBB0_8:                                //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_9 Depth 4
                                        //            Child Loop BB0_10 Depth 5
	add x15 ,  x0 ,  x26
.LBB0_9:                                //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_10 Depth 5
	lw x22 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x22 ,  -37
	bgeu x13, x14, .LBB0_10
.LBB0_597:                              //  %again
	jal x0, .LBB0_571
.LBB0_10:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //          Parent Loop BB0_9 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	lui x30 ,  JTI0_0&4095
	lui x13 ,  (JTI0_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	addi x26 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_11:                               //  %sw.bb85
                                        //    in Loop: Header=BB0_9 Depth=4
	andi x14 ,  x23 ,  15
	add x15 ,  x0 ,  x26
	beq x0, x14, .LBB0_9
	jal x0, .LBB0_571
.LBB0_12:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_10 Depth=5
	andi x14 ,  x23 ,  15
	beq x0, x14, .LBB0_13
.LBB0_598:                              //  %sw.bb61
	jal x0, .LBB0_571
.LBB0_13:                               //  %if.end65
                                        //    in Loop: Header=BB0_10 Depth=5
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  104
	beq x14, x13, .LBB0_19
.LBB0_14:                               //  %if.end65
                                        //    in Loop: Header=BB0_10 Depth=5
	addi x14 ,  x0 ,  4
	jal x0, .LBB0_18
.LBB0_15:                               //  %sw.bb43
                                        //    in Loop: Header=BB0_10 Depth=5
	andi x14 ,  x23 ,  15
	beq x0, x14, .LBB0_16
.LBB0_599:                              //  %sw.bb43
	jal x0, .LBB0_571
.LBB0_16:                               //  %if.end47
                                        //    in Loop: Header=BB0_10 Depth=5
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  108
	beq x14, x13, .LBB0_20
.LBB0_17:                               //  %if.end47
                                        //    in Loop: Header=BB0_10 Depth=5
	slti x14 ,  x0 ,  1
.LBB0_18:                               //  %if.end47
                                        //    in Loop: Header=BB0_10 Depth=5
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_22
.LBB0_19:                               //    in Loop: Header=BB0_10 Depth=5
	addi x14 ,  x0 ,  8
	jal x0, .LBB0_21
.LBB0_20:                               //    in Loop: Header=BB0_10 Depth=5
	addi x14 ,  x0 ,  2
.LBB0_21:                               //    in Loop: Header=BB0_10 Depth=5
	addi x15 ,  x15 ,  8
.LBB0_22:                               //    in Loop: Header=BB0_10 Depth=5
	or x23 ,  x23 ,  x14
	lw x22 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x22 ,  -37
	bgeu x13, x14, .LBB0_10
	jal x0, .LBB0_571
.LBB0_23:                               //  %sw.bb102
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x15 ,  x23 ,  143
	beq x0, x15, .LBB0_24
.LBB0_600:                              //  %sw.bb102
	jal x0, .LBB0_571
.LBB0_24:                               //  %if.end106
                                        //    in Loop: Header=BB0_8 Depth=3
	add x10 ,  x0 ,  x27
	addi x11 ,  x0 ,  10
	call __mulsi3
	add x15 ,  x22 ,  x10
	addi x27 ,  x15 ,  -48
	jal x0, .LBB0_8
.LBB0_25:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x15 ,  x23 ,  15
	beq x0, x15, .LBB0_26
.LBB0_601:                              //  %sw.bb55
	jal x0, .LBB0_571
.LBB0_26:                               //  %if.end59
                                        //    in Loop: Header=BB0_8 Depth=3
	ori x23 ,  x23 ,  2
	jal x0, .LBB0_8
.LBB0_27:                               //  %sw.bb36
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x15 ,  x23 ,  159
	or x15 ,  x27 ,  x15
	beq x0, x15, .LBB0_28
.LBB0_602:                              //  %sw.bb36
	jal x0, .LBB0_571
.LBB0_28:                               //  %if.end41
                                        //    in Loop: Header=BB0_8 Depth=3
	ori x23 ,  x23 ,  16
	add x27 ,  x0 ,  x0
	jal x0, .LBB0_8
.LBB0_29:                               //  %sw.bb90
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x15 ,  x23 ,  143
	beq x0, x15, .LBB0_30
.LBB0_603:                              //  %sw.bb90
	jal x0, .LBB0_571
.LBB0_30:                               //  %do.body95
                                        //    in Loop: Header=BB0_8 Depth=3
	bltu x0, x20, .LBB0_32
.LBB0_31:                               //  %if.then97
                                        //    in Loop: Header=BB0_8 Depth=3
	add x15 ,  x0 ,  x2
	addi x20 ,  x15 ,  -8
	add x2 ,  x0 ,  x20
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB0_32:                               //  %do.end100
                                        //    in Loop: Header=BB0_8 Depth=3
	ori x23 ,  x23 ,  128
	jal x0, .LBB0_8
.LBB0_33:                               //  %if.end13.if.end32_crit_edge.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  0 ( x18 )
.LBB0_34:                               //  %if.end32.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x23 ,  48 ( x18 )
	sw x21 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x22 ,  63 ( x18 )
.LBB0_35:                               //  %if.end19
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x22 ,  0 ( x26 )
	bltu x0, x22, .LBB0_36
.LBB0_604:                              //  %if.end19
	jal x0, .LBB0_571
.LBB0_36:                               //  %if.end7
                                        //    in Loop: Header=BB0_37 Depth=3
	add x10 ,  x0 ,  x22
	addi x26 ,  x26 ,  4
	call iswspace
	beq x0, x10, .LBB0_6
.LBB0_37:                               //  %while.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_40
.LBB0_38:                               //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_37 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_35
.LBB0_39:                               //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  0 ( x9 )
.LBB0_40:                               //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x22 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_35
.LBB0_41:                               //  %land.rhs
                                        //    in Loop: Header=BB0_37 Depth=3
	add x10 ,  x0 ,  x22
	call iswspace
	bltu x0, x10, .LBB0_37
.LBB0_42:                               //  %if.end.i2113
                                        //    in Loop: Header=BB0_37 Depth=3
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x27 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_47
.LBB0_43:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_45
.LBB0_44:                               //  %land.lhs.true.i2117
                                        //    in Loop: Header=BB0_37 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_35
.LBB0_45:                               //  %if.end9.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
.LBB0_46:                               //  %if.end19
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x22 ,  0 ( x26 )
	bltu x0, x22, .LBB0_36
	jal x0, .LBB0_571
.LBB0_47:                               //  %if.end13.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_33
.LBB0_48:                               //  %land.lhs.true17.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_34
.LBB0_49:                               //  %land.lhs.true23.i
                                        //    in Loop: Header=BB0_37 Depth=3
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_34
.LBB0_50:                               //  %if.then27.i
                                        //    in Loop: Header=BB0_37 Depth=3
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_46
.LBB0_51:                               //  %literal
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x14 ,  0 ( x9 )
	blt x0, x14, .LBB0_54
.LBB0_52:                               //  %land.lhs.true.i2125
                                        //    in Loop: Header=BB0_5 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_53
.LBB0_605:                              //  %land.lhs.true.i2125
	jal x0, .LBB0_555
.LBB0_53:                               //  %land.lhs.true.if.end_crit_edge.i2127
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x14 ,  0 ( x9 )
.LBB0_54:                               //  %_sfgetwc_r.exit2133
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x13 ,  0 ( x18 )
	add x5 ,  x0 ,  x21
	addi x12 ,  x14 ,  -4
	lui x10 ,  (65503>>12)&1048575
	addi x15 ,  x13 ,  4
	sw x15 ,  0 ( x18 )
	lw x21 ,  0 ( x13 )
	sw x12 ,  4 ( x18 )
	xori x11 ,  x21 ,  -1
	bltu x0, x11, .LBB0_55
.LBB0_606:                              //  %_sfgetwc_r.exit2133
	jal x0, .LBB0_555
.LBB0_55:                               //  %if.end30
                                        //    in Loop: Header=BB0_5 Depth=2
	beq x21, x22, .LBB0_56
.LBB0_607:                              //  %if.end30
	jal x0, .LBB0_565
.LBB0_56:                               //  %if.end35
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	add x21 ,  x0 ,  x5
	lw x22 ,  0 ( x26 )
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_5
	jal x0, .LBB0_571
.LBB0_57:                               //  %sw.bb146
                                        //    in Loop: Header=BB0_5 Depth=2
	andi x15 ,  x23 ,  16
	bltu x0, x15, .LBB0_66
.LBB0_58:                               //  %if.end150
                                        //    in Loop: Header=BB0_5 Depth=2
	andi x15 ,  x23 ,  8
	bltu x0, x15, .LBB0_63
.LBB0_59:                               //  %if.else155
                                        //    in Loop: Header=BB0_5 Depth=2
	andi x15 ,  x23 ,  4
	bltu x0, x15, .LBB0_64
.LBB0_60:                               //  %if.else161
                                        //    in Loop: Header=BB0_5 Depth=2
	andi x15 ,  x23 ,  1
	bltu x0, x15, .LBB0_62
.LBB0_61:                               //  %if.else166
                                        //    in Loop: Header=BB0_5 Depth=2
	andi x15 ,  x23 ,  2
	bltu x0, x15, .LBB0_65
.LBB0_62:                               //  %if.then164
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -232 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
	lw x22 ,  0 ( x26 )
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_5
	jal x0, .LBB0_571
.LBB0_63:                               //  %if.then153
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -232 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sb x14 ,  0 ( x15 )
	lw x22 ,  0 ( x26 )
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_5
	jal x0, .LBB0_571
.LBB0_64:                               //  %if.then158
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x14 ,  -232 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  0 ( x15 )
	sh x14 ,  0 ( x15 )
	lw x22 ,  0 ( x26 )
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_5
	jal x0, .LBB0_571
.LBB0_65:                               //  %if.then169
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x15 ,  -56 ( x8 )
	lw x13 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	srai x14 ,  x13 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x13 ,  0 ( x15 )
.LBB0_66:                               //  %for.cond.outer2942.backedge
                                        //    in Loop: Header=BB0_5 Depth=2
	lw x22 ,  0 ( x26 )
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_5
	jal x0, .LBB0_571
.LBB0_67:                               //  %sw.bb111
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	ori x23 ,  x23 ,  512
	jal x0, .LBB0_68
.LBB0_69:                               //  %sw.bb140
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	ori x23 ,  x23 ,  1
	ori x23 ,  x23 ,  64
	add x21 ,  x0 ,  x0
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_70:                               //  %sw.bb113
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	ori x23 ,  x23 ,  1
	addi x21 ,  x0 ,  2
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_71:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  94
	beq x14, x13, .LBB0_82
.LBB0_72:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x13 ,  x0 ,  4
	sw x26 ,  -244 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	beq x15, x13, .LBB0_84
.LBB0_83:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x26 ,  -244 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB0_85
.LBB0_73:                               //  %sw.bb142.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	ori x23 ,  x23 ,  64
	add x21 ,  x0 ,  x0
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_74:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_80
.LBB0_75:                               //  %sw.epilog.loopexit3570
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -248 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	addi x21 ,  x0 ,  3
	sw x15 ,  -240 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_76:                               //  %sw.epilog.loopexit4244
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -248 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  8
	addi x21 ,  x0 ,  3
	sw x15 ,  -240 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_77:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	ori x23 ,  x23 ,  544
.LBB0_68:                               //  %sw.bb111
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -248 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  16
	addi x21 ,  x0 ,  3
	sw x15 ,  -240 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_78:                               //  %sw.epilog.loopexit5364
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x0 ,  2
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_79:                               //  %sw.epilog.loopexit4812
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _wcstoul_r&4095
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_wcstoul_r>>12)&1048575
.LBB0_80:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -248 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  10
	addi x21 ,  x0 ,  3
	sw x15 ,  -240 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x23 ,  64
	beq x0, x15, .LBB0_89
	jal x0, .LBB0_105
.LBB0_82:                               //    in Loop: Header=BB0_4 Depth=1
	addi x13 ,  x15 ,  8
	sw x13 ,  -244 ( x8 )           //  4-byte Folded Spill
	addi x13 ,  x0 ,  8
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	bne x15, x13, .LBB0_83
.LBB0_84:                               //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -244 ( x8 )           //  4-byte Folded Reload
	addi x26 ,  x15 ,  4
.LBB0_85:                               //  %sw.bb116
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x15 ,  x14 ,  94
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	sltiu x15 ,  x15 ,  1
	sw x15 ,  -256 ( x8 )           //  4-byte Folded Spill
.LBB0_86:                               //  %while.cond128
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	xori x14 ,  x15 ,  93
	beq x0, x14, .LBB0_88
.LBB0_87:                               //  %while.cond128
                                        //    in Loop: Header=BB0_86 Depth=2
	bltu x0, x15, .LBB0_86
.LBB0_88:                               //  %while.end137
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x26 ,  -4
	ori x23 ,  x23 ,  64
	slti x21 ,  x0 ,  1
	sw x15 ,  -260 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x23 ,  64
	bltu x0, x15, .LBB0_105
.LBB0_89:                               //  %while.cond182
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_92
.LBB0_90:                               //  %land.lhs.true.i2179
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_91
.LBB0_608:                              //  %land.lhs.true.i2179
	jal x0, .LBB0_555
.LBB0_91:                               //  %land.lhs.true.if.end_crit_edge.i2181
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_92:                               //  %_sfgetwc_r.exit2187
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x22 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB0_93
.LBB0_609:                              //  %_sfgetwc_r.exit2187
	jal x0, .LBB0_555
.LBB0_93:                               //  %land.rhs186
                                        //    in Loop: Header=BB0_92 Depth=2
	add x10 ,  x0 ,  x22
	call iswspace
	beq x0, x10, .LBB0_95
.LBB0_94:                               //  %while.body190
                                        //    in Loop: Header=BB0_92 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_92
	jal x0, .LBB0_90
.LBB0_95:                               //  %if.end.i2192
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_99
.LBB0_96:                               //  %if.then4.i2196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_98
.LBB0_97:                               //  %land.lhs.true.i2199
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_105
.LBB0_98:                               //  %if.end9.i2204
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  JTI0_1&4095
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
	lui x14 ,  (JTI0_1>>12)&1048575
	lw x15 ,  4 ( x18 )
	or x14 ,  x14 ,  x30
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	slli x15 ,  x21 ,  2&31
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_99:                               //  %if.end13.i2207
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_103
.LBB0_100:                              //  %land.lhs.true17.i2213
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_104
.LBB0_101:                              //  %land.lhs.true23.i2216
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_104
.LBB0_102:                              //  %if.then27.i2219
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	slli x15 ,  x21 ,  2&31
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_103:                              //  %if.end13.if.end32_crit_edge.i2210
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_104:                              //  %if.end32.i2227
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x22 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_105:                              //  %if.end198
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x21 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_106:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x21 ,  x0 ,  1
	add x15 ,  x0 ,  x0
	beq x27, x15, .LBB0_108
.LBB0_107:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x27
.LBB0_108:                              //  %sw.bb199
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x22 ,  x23 ,  16
	andi x15 ,  x23 ,  1
	sw x22 ,  -280 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_169
.LBB0_109:                              //  %if.else332
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_199
.LBB0_110:                              //  %land.rhs404.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x24
	call memset
	addi x22 ,  x8 ,  -225
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_117
	jal x0, .LBB0_115
.LBB0_111:                              //  %while.body409.us
                                        //    in Loop: Header=BB0_117 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_112
.LBB0_610:                              //  %while.body409.us
	jal x0, .LBB0_554
.LBB0_112:                              //  %if.then420.us
                                        //    in Loop: Header=BB0_117 Depth=2
	addi x21 ,  x21 ,  -1
.LBB0_113:                              //  %if.end456.us
                                        //    in Loop: Header=BB0_117 Depth=2
	addi x24 ,  x24 ,  1
	beq x0, x21, .LBB0_293
.LBB0_114:                              //  %land.rhs404.us
                                        //    in Loop: Header=BB0_117 Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_117
.LBB0_115:                              //  %land.lhs.true.i2246.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_256
.LBB0_116:                              //  %land.lhs.true.if.end_crit_edge.i2248.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_117:                              //  %_sfgetwc_r.exit2254.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x12 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB0_256
.LBB0_118:                              //  %while.body409.us
                                        //    in Loop: Header=BB0_117 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	bltu x0, x10, .LBB0_111
.LBB0_119:                              //  %lor.lhs.false417.us
                                        //    in Loop: Header=BB0_117 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB0_112
	jal x0, .LBB0_113
.LBB0_120:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  -272 ( x8 )           //  4-byte Folded Spill
	add x25 ,  x0 ,  x24
	add x15 ,  x0 ,  x0
	beq x27, x15, .LBB0_122
.LBB0_121:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x27
.LBB0_122:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	andi x22 ,  x23 ,  16
	andi x15 ,  x23 ,  1
	beq x0, x15, .LBB0_177
.LBB0_123:                              //  %sw.bb491
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_177
.LBB0_124:                              //  %while.cond502.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -244 ( x8 )           //  4-byte Folded Reload
	lui x27 ,  (65503>>12)&1048575
	lw x14 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x23 ,  x15 ,  2&31
	lw x15 ,  -256 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_213
.LBB0_125:                              //  %while.cond502.preheader21
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_128
.LBB0_126:                              //  %land.lhs.true.i2259
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_362
.LBB0_127:                              //  %land.lhs.true.if.end_crit_edge.i2261
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_128:                              //  %_sfgetwc_r.exit2267
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x22 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_362
.LBB0_129:                              //  %land.lhs.true506
                                        //    in Loop: Header=BB0_128 Depth=2
	beq x25, x24, .LBB0_220
.LBB0_130:                              //  %land.rhs510
                                        //    in Loop: Header=BB0_128 Depth=2
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call wmemchr
	bltu x0, x10, .LBB0_220
.LBB0_131:                              //  %while.body528
                                        //    in Loop: Header=BB0_128 Depth=2
	addi x24 ,  x24 ,  1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_128
	jal x0, .LBB0_126
.LBB0_132:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	beq x27, x15, .LBB0_134
.LBB0_133:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x27
.LBB0_134:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	andi x22 ,  x23 ,  16
	andi x15 ,  x23 ,  1
	beq x0, x15, .LBB0_180
.LBB0_135:                              //  %sw.bb886
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x27 ,  (65503>>12)&1048575
	beq x0, x22, .LBB0_180
.LBB0_136:                              //  %while.cond897.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -236 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_139
.LBB0_137:                              //  %land.lhs.true.i2421
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_349
.LBB0_138:                              //  %land.lhs.true.if.end_crit_edge.i2423
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_139:                              //  %_sfgetwc_r.exit2429
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x22 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_226
.LBB0_140:                              //  %land.lhs.true901
                                        //    in Loop: Header=BB0_139 Depth=2
	beq x0, x24, .LBB0_194
.LBB0_141:                              //  %land.rhs905
                                        //    in Loop: Header=BB0_139 Depth=2
	add x10 ,  x0 ,  x22
	call iswspace
	bltu x0, x10, .LBB0_194
.LBB0_142:                              //  %while.body909
                                        //    in Loop: Header=BB0_139 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x24 ,  x24 ,  -1
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_139
	jal x0, .LBB0_137
.LBB0_143:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x27 ,  -1
	addi x24 ,  x0 ,  39
	addi x14 ,  x0 ,  38
	bltu x14, x15, .LBB0_145
.LBB0_144:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x27
.LBB0_145:                              //  %sw.bb1225
                                        //    in Loop: Header=BB0_4 Depth=1
	ori x21 ,  x23 ,  1408
	beq x0, x24, .LBB0_193
.LBB0_146:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	addi x27 ,  x8 ,  -224
	add x22 ,  x0 ,  x0
	blt x0, x15, .LBB0_152
	jal x0, .LBB0_150
.LBB0_147:                              //  %sw.bb1251
                                        //    in Loop: Header=BB0_152 Depth=2
	lw x14 ,  -240 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __ssvfiwscanf_r.basefix&4095
	lui x13 ,  (__ssvfiwscanf_r.basefix>>12)&1048575
	andi x21 ,  x21 ,  -897
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	slli x14 ,  x14 ,  1&31
	add x14 ,  x14 ,  x13
	lh x14 ,  0 ( x14 )
.LBB0_148:                              //  %ok
                                        //    in Loop: Header=BB0_152 Depth=2
	sw x14 ,  -240 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	addi x22 ,  x22 ,  1
	beq x24, x22, .LBB0_167
.LBB0_149:                              //  %for.body
                                        //    in Loop: Header=BB0_152 Depth=2
	blt x0, x15, .LBB0_152
.LBB0_150:                              //  %land.lhs.true.i2583
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_168
.LBB0_151:                              //  %land.lhs.true.if.end_crit_edge.i2585
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_152:                              //  %_sfgetwc_r.exit2591
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x18 )
	add x13 ,  x0 ,  x15
	addi x10 ,  x0 ,  121
	addi x15 ,  x13 ,  -4
	addi x14 ,  x12 ,  4
	sw x14 ,  0 ( x18 )
	lw x23 ,  0 ( x12 )
	sw x15 ,  4 ( x18 )
	addi x11 ,  x23 ,  1
	bgeu x10, x11, .LBB0_153
.LBB0_611:                              //  %_sfgetwc_r.exit2591
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_153:                              //  %_sfgetwc_r.exit2591
                                        //    in Loop: Header=BB0_152 Depth=2
	lui x30 ,  JTI0_2&4095
	lui x10 ,  (JTI0_2>>12)&1048575
	slli x11 ,  x11 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	add x11 ,  x10 ,  x11
	lw x11 ,  0 ( x11 )
	jalr x0 ,  0 ( x11 )
.LBB0_154:                              //  %sw.bb1263
                                        //    in Loop: Header=BB0_152 Depth=2
	lw x11 ,  -240 ( x8 )           //  4-byte Folded Reload
	slti x11 ,  x11 ,  11
	beq x0, x11, .LBB0_155
.LBB0_612:                              //  %sw.bb1263
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_155:                              //  %if.else1248
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x21 ,  x21 ,  -897
	sw x23 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	addi x22 ,  x22 ,  1
	bne x24, x22, .LBB0_149
	jal x0, .LBB0_167
.LBB0_156:                              //  %sw.bb1269
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x11 ,  x21 ,  128
	bltu x0, x11, .LBB0_157
.LBB0_613:                              //  %sw.bb1269
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_157:                              //  %if.then1272
                                        //    in Loop: Header=BB0_152 Depth=2
	lui x30 ,  -65665&4095
	lui x14 ,  (-65665>>12)&1048575
	lui x13 ,  (65536>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x21
	or x21 ,  x13 ,  x14
	sw x23 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	addi x22 ,  x22 ,  1
	bne x24, x22, .LBB0_149
	jal x0, .LBB0_167
.LBB0_158:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_152 Depth=2
	lw x5 ,  -240 ( x8 )            //  4-byte Folded Reload
	lui x30 ,  __ssvfiwscanf_r.basefix&4095
	lui x10 ,  (__ssvfiwscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	slli x11 ,  x5 ,  1&31
	add x11 ,  x11 ,  x10
	addi x10 ,  x5 ,  -1
	lh x11 ,  0 ( x11 )
	sltiu x10 ,  x10 ,  8
	beq x0, x10, .LBB0_159
.LBB0_614:                              //  %sw.bb1255
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_481
.LBB0_159:                              //  %if.end1261
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x21 ,  x21 ,  -897
	sw x11 ,  -240 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	addi x22 ,  x22 ,  1
	bne x24, x22, .LBB0_149
	jal x0, .LBB0_167
.LBB0_160:                              //  %sw.bb1276
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x11 ,  x21 ,  512
	bltu x0, x11, .LBB0_161
.LBB0_615:                              //  %sw.bb1276
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_161:                              //  %land.lhs.true1279
                                        //    in Loop: Header=BB0_152 Depth=2
	srli x11 ,  x21 ,  14&31
	addi x10 ,  x8 ,  -220
	andi x11 ,  x11 ,  4
	add x11 ,  x11 ,  x10
	beq x27, x11, .LBB0_162
.LBB0_616:                              //  %land.lhs.true1279
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_482
.LBB0_162:                              //  %if.then1289
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x21 ,  x21 ,  -513
	addi x14 ,  x0 ,  16
	jal x0, .LBB0_148
.LBB0_163:                              //  %sw.bb1238
                                        //    in Loop: Header=BB0_152 Depth=2
	lw x13 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	bne x13, x14, .LBB0_165
.LBB0_164:                              //    in Loop: Header=BB0_152 Depth=2
	ori x21 ,  x21 ,  512
	addi x14 ,  x0 ,  8
	sw x14 ,  -240 ( x8 )           //  4-byte Folded Spill
.LBB0_165:                              //  %sw.bb1238
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x14 ,  x21 ,  1024
	beq x0, x14, .LBB0_155
.LBB0_166:                              //  %if.then1246
                                        //    in Loop: Header=BB0_152 Depth=2
	andi x21 ,  x21 ,  -1409
	sw x23 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	addi x22 ,  x22 ,  1
	bne x24, x22, .LBB0_149
.LBB0_167:                              //    in Loop: Header=BB0_4 Depth=1
	slti x22 ,  x0 ,  1
.LBB0_168:                              //  %_sfgetwc_r.exit2591.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_617
.LBB0_618:                              //  %_sfgetwc_r.exit2591.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_493
.LBB0_617:                              //  %_sfgetwc_r.exit2591.for.end.loopexit_crit_edge
	jal x0, .LBB0_558
.LBB0_169:                              //  %if.then206
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  -272 ( x8 )           //  4-byte Folded Spill
	beq x0, x22, .LBB0_201
.LBB0_170:                              //  %land.rhs271.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	add x24 ,  x0 ,  x0
	lw x23 ,  -252 ( x8 )           //  4-byte Folded Reload
.LBB0_171:                              //  %land.rhs271.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	blt x0, x15, .LBB0_174
.LBB0_172:                              //  %land.lhs.true.i2233.us
                                        //    in Loop: Header=BB0_171 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_227
.LBB0_173:                              //  %land.lhs.true.if.end_crit_edge.i2235.us
                                        //    in Loop: Header=BB0_171 Depth=2
	lw x15 ,  0 ( x9 )
.LBB0_174:                              //  %_sfgetwc_r.exit2241.us
                                        //    in Loop: Header=BB0_171 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x14 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x14 ,  -1
	beq x0, x14, .LBB0_227
.LBB0_175:                              //  %if.end298.us
                                        //    in Loop: Header=BB0_171 Depth=2
	addi x24 ,  x24 ,  1
	bne x21, x24, .LBB0_171
.LBB0_176:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	add x22 ,  x0 ,  x15
	add x25 ,  x0 ,  x15
	sw x15 ,  -268 ( x8 )           //  4-byte Folded Spill
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_311
	jal x0, .LBB0_314
.LBB0_177:                              //  %if.else540
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x15, .LBB0_203
.LBB0_178:                              //  %if.else698
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	beq x0, x22, .LBB0_228
.LBB0_179:                              //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x0
	addi x27 ,  x8 ,  -225
	sw x23 ,  -276 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -280 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -284 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_368
.LBB0_180:                              //  %if.else917
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x25 ,  -272 ( x8 )           //  4-byte Folded Spill
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_205
.LBB0_181:                              //  %if.else1055
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_230
.LBB0_182:                              //  %while.cond1128.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_188
.LBB0_186:                              //  %land.lhs.true.i2529.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_187
.LBB0_619:                              //  %land.lhs.true.i2529.us
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_532
.LBB0_187:                              //  %land.lhs.true.if.end_crit_edge.i2531.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_188
.LBB0_183:                              //  %while.body1140.us
                                        //    in Loop: Header=BB0_188 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_184
.LBB0_620:                              //  %while.body1140.us
	jal x0, .LBB0_554
.LBB0_184:                              //  %if.then1152.us
                                        //    in Loop: Header=BB0_188 Depth=2
	addi x24 ,  x24 ,  -1
.LBB0_185:                              //  %if.end1188.us
                                        //    in Loop: Header=BB0_188 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_186
.LBB0_188:                              //  %_sfgetwc_r.exit2537.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x23 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x24, .LBB0_360
.LBB0_189:                              //  %_sfgetwc_r.exit2537.us
                                        //    in Loop: Header=BB0_188 Depth=2
	beq x0, x14, .LBB0_360
.LBB0_190:                              //  %land.rhs1135.us
                                        //    in Loop: Header=BB0_188 Depth=2
	add x10 ,  x0 ,  x23
	call iswspace
	bltu x0, x10, .LBB0_361
.LBB0_191:                              //  %while.body1140.us
                                        //    in Loop: Header=BB0_188 Depth=2
	addi x10 ,  x8 ,  -225
	add x11 ,  x0 ,  x23
	addi x12 ,  x8 ,  -64
	call wcrtomb
	bltu x0, x10, .LBB0_183
.LBB0_192:                              //  %lor.lhs.false1148.us
                                        //    in Loop: Header=BB0_188 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB0_184
	jal x0, .LBB0_185
.LBB0_193:                              //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	addi x27 ,  x8 ,  -224
	add x22 ,  x0 ,  x24
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_621
.LBB0_622:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_493
.LBB0_621:
	jal x0, .LBB0_558
.LBB0_194:                              //  %if.end.i2434
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x27 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_248
.LBB0_195:                              //  %if.then4.i2438
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	addi x24 ,  x0 ,  -1
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_197
.LBB0_196:                              //  %land.lhs.true.i2441
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	beq x0, x10, .LBB0_197
.LBB0_623:                              //  %land.lhs.true.i2441
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_548
.LBB0_197:                              //  %if.end9.i2446
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
.LBB0_198:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x22 ,  0 ( x26 )
	bltu x0, x22, .LBB0_4
	jal x0, .LBB0_571
.LBB0_199:                              //  %if.else336
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	sw x25 ,  -272 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_232
.LBB0_200:                              //  %if.else396
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x22 ,  x0 ,  x0
	sw x22 ,  -276 ( x8 )           //  4-byte Folded Spill
	add x25 ,  x0 ,  x22
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x23 ,  0 ( x15 )
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_271
.LBB0_201:                              //  %if.else211
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	bltu x0, x15, .LBB0_236
.LBB0_202:                              //  %if.else264
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x14 ,  x0 ,  x0
	add x25 ,  x0 ,  x14
	add x24 ,  x0 ,  x25
	add x22 ,  x0 ,  x25
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x23 ,  0 ( x15 )
	sw x25 ,  -268 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_303
	jal x0, .LBB0_301
.LBB0_203:                              //  %if.then543
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	sw x21 ,  -264 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_240
.LBB0_204:                              //  %if.else605
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x21 ,  x0 ,  x0
	add x27 ,  x0 ,  x21
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	jal x0, .LBB0_319
.LBB0_205:                              //  %if.then920
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	bltu x0, x15, .LBB0_244
.LBB0_206:                              //  %while.cond985.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	add x27 ,  x0 ,  x22
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_209
.LBB0_207:                              //  %land.lhs.true.i2475.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_351
.LBB0_208:                              //  %land.lhs.true.if.end_crit_edge.i2477.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_209:                              //  %_sfgetwc_r.exit2483.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB0_351
.LBB0_210:                              //  %land.lhs.true989.us
                                        //    in Loop: Header=BB0_209 Depth=2
	beq x0, x24, .LBB0_258
.LBB0_211:                              //  %land.end997.us
                                        //    in Loop: Header=BB0_209 Depth=2
	add x10 ,  x0 ,  x23
	call iswspace
	bltu x0, x10, .LBB0_258
.LBB0_212:                              //  %while.body998.us
                                        //    in Loop: Header=BB0_209 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  0 ( x27 )
	addi x24 ,  x24 ,  -1
	addi x27 ,  x27 ,  4
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_209
	jal x0, .LBB0_207
.LBB0_213:                              //  %while.cond502.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_216
.LBB0_214:                              //  %land.lhs.true.i2259.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_362
.LBB0_215:                              //  %land.lhs.true.if.end_crit_edge.i2261.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_216:                              //  %_sfgetwc_r.exit2267.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x22 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_362
.LBB0_217:                              //  %land.lhs.true506.us
                                        //    in Loop: Header=BB0_216 Depth=2
	beq x25, x24, .LBB0_220
.LBB0_218:                              //  %land.rhs510.us
                                        //    in Loop: Header=BB0_216 Depth=2
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	call wmemchr
	beq x0, x10, .LBB0_220
.LBB0_219:                              //  %while.body528.us
                                        //    in Loop: Header=BB0_216 Depth=2
	addi x24 ,  x24 ,  1
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_216
	jal x0, .LBB0_214
.LBB0_220:                              //  %if.end.i2272
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	or x14 ,  x27 ,  x30
	lw x13 ,  -236 ( x8 )           //  4-byte Folded Reload
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_252
.LBB0_221:                              //  %if.then4.i2276
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_223
.LBB0_222:                              //  %land.lhs.true.i2279
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_225
.LBB0_223:                              //  %if.end9.i2284
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
.LBB0_224:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
.LBB0_225:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x24, .LBB0_624
.LBB0_625:                              //  %if.end535
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_519
.LBB0_624:                              //  %if.end535
	jal x0, .LBB0_571
.LBB0_362:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	beq x0, x24, .LBB0_626
.LBB0_627:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_519
.LBB0_626:
	jal x0, .LBB0_571
.LBB0_226:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
	lw x22 ,  0 ( x26 )
	bltu x0, x22, .LBB0_4
	jal x0, .LBB0_571
.LBB0_227:                              //    in Loop: Header=BB0_4 Depth=1
	add x22 ,  x0 ,  x0
	add x25 ,  x0 ,  x22
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_309
.LBB0_228:                              //  %if.else706
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	bltu x0, x15, .LBB0_259
.LBB0_229:                              //  %if.else766
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x23 ,  x0 ,  x0
	sw x23 ,  -284 ( x8 )           //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x27 ,  0 ( x15 )
	sw x23 ,  -276 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -280 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_368
.LBB0_230:                              //  %if.else1063
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x23 ,  128
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_263
.LBB0_231:                              //  %if.else1123
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	add x11 ,  x0 ,  x0
	add x27 ,  x0 ,  x11
	add x21 ,  x0 ,  x11
	add x25 ,  x0 ,  x11
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	jal x0, .LBB0_420
.LBB0_232:                              //  %if.then339
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -276 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_233
.LBB0_628:                              //  %if.then339
	jal x0, .LBB0_571
.LBB0_233:                              //  %if.end343
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x23 ,  x0 ,  x10
	bltu x0, x23, .LBB0_234
.LBB0_629:                              //  %if.end343
	jal x0, .LBB0_590
.LBB0_234:                              //  %if.end347
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_267
.LBB0_235:                              //  %if.end347.if.end387_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	add x22 ,  x0 ,  x0
	jal x0, .LBB0_270
.LBB0_236:                              //  %if.then214
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -268 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_237
.LBB0_630:                              //  %if.then214
	jal x0, .LBB0_571
.LBB0_237:                              //  %if.end218
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x23 ,  x0 ,  x10
	bltu x0, x23, .LBB0_238
.LBB0_631:                              //  %if.end218
	jal x0, .LBB0_590
.LBB0_238:                              //  %if.end222
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_294
.LBB0_239:                              //  %if.end222.if.end258_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	add x24 ,  x0 ,  x0
	jal x0, .LBB0_297
.LBB0_240:                              //  %if.then548
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_241
.LBB0_632:                              //  %if.then548
	jal x0, .LBB0_588
.LBB0_241:                              //  %if.end552
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x22 ,  x0 ,  x10
	bltu x0, x22, .LBB0_242
.LBB0_633:                              //  %if.end552
	jal x0, .LBB0_590
.LBB0_242:                              //  %if.end556
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_315
.LBB0_243:                              //  %if.end556.if.end596_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_318
.LBB0_244:                              //  %if.then925
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_245
.LBB0_634:                              //  %if.then925
	jal x0, .LBB0_571
.LBB0_245:                              //  %if.end929
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x22 ,  x0 ,  x10
	bltu x0, x22, .LBB0_246
.LBB0_635:                              //  %if.end929
	jal x0, .LBB0_557
.LBB0_246:                              //  %if.end933
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_331
.LBB0_247:                              //  %if.end933.if.end973_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_334
.LBB0_248:                              //  %if.end13.i2449
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	addi x24 ,  x0 ,  -1
	beq x0, x14, .LBB0_356
.LBB0_249:                              //  %land.lhs.true17.i2455
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_357
.LBB0_250:                              //  %land.lhs.true23.i2458
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_357
.LBB0_251:                              //  %if.then27.i2461
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_198
.LBB0_252:                              //  %if.end13.i2287
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_358
.LBB0_253:                              //  %land.lhs.true17.i2293
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_359
.LBB0_254:                              //  %land.lhs.true23.i2296
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_359
.LBB0_255:                              //  %if.then27.i2299
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_224
.LBB0_256:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
	sw x25 ,  -272 ( x8 )           //  4-byte Folded Spill
	add x23 ,  x0 ,  x22
	add x14 ,  x0 ,  x15
	add x25 ,  x0 ,  x15
	sw x15 ,  -268 ( x8 )           //  4-byte Folded Spill
	add x22 ,  x0 ,  x14
	jal x0, .LBB0_287
.LBB0_258:                              //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x0
	add x21 ,  x0 ,  x25
	jal x0, .LBB0_344
.LBB0_259:                              //  %if.then709
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -276 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_260
.LBB0_636:                              //  %if.then709
	jal x0, .LBB0_588
.LBB0_260:                              //  %if.end713
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x27 ,  x0 ,  x10
	bltu x0, x27, .LBB0_261
.LBB0_637:                              //  %if.end713
	jal x0, .LBB0_590
.LBB0_261:                              //  %if.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	sw x27 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_364
.LBB0_262:                              //  %if.end717.if.end757_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	add x23 ,  x0 ,  x0
	jal x0, .LBB0_367
.LBB0_263:                              //  %if.then1066
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x21 ,  0 ( x15 )
	bltu x0, x21, .LBB0_264
.LBB0_638:                              //  %if.then1066
	jal x0, .LBB0_571
.LBB0_264:                              //  %if.end1070
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  32
	call malloc
	add x22 ,  x0 ,  x10
	bltu x0, x22, .LBB0_265
.LBB0_639:                              //  %if.end1070
	jal x0, .LBB0_557
.LBB0_265:                              //  %if.end1074
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x22 ,  0 ( x21 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB0_416
.LBB0_266:                              //  %if.end1074.if.end1114_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	jal x0, .LBB0_419
.LBB0_267:                              //  %if.then355
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x22 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_268
.LBB0_640:                              //  %if.then355
	jal x0, .LBB0_573
.LBB0_268:                              //  %if.end375
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_269
.LBB0_641:                              //  %if.end375
	jal x0, .LBB0_573
.LBB0_269:                              //  %cleanup384
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_270:                              //  %if.end387
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -276 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x25 ,  x0 ,  32
	sw x23 ,  -268 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB0_271:                              //  %land.rhs404.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x22
	addi x12 ,  x0 ,  8
	call memset
	add x24 ,  x0 ,  x22
	lw x22 ,  -276 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_277
	jal x0, .LBB0_275
.LBB0_272:                              //    in Loop: Header=BB0_277 Depth=2
	lw x22 ,  -276 ( x8 )           //  4-byte Folded Reload
.LBB0_273:                              //  %cleanup.cont454
                                        //    in Loop: Header=BB0_277 Depth=2
	add x23 ,  x27 ,  x23
	addi x24 ,  x24 ,  1
	beq x0, x21, .LBB0_288
.LBB0_274:                              //  %land.rhs404
                                        //    in Loop: Header=BB0_277 Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_277
.LBB0_275:                              //  %land.lhs.true.i2246
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_287
.LBB0_276:                              //  %land.lhs.true.if.end_crit_edge.i2248
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_277:                              //  %_sfgetwc_r.exit2254
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x12 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB0_287
.LBB0_278:                              //  %while.body409
                                        //    in Loop: Header=BB0_277 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	add x27 ,  x0 ,  x10
	beq x0, x27, .LBB0_280
.LBB0_279:                              //  %while.body409
                                        //    in Loop: Header=BB0_277 Depth=2
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB0_281
	jal x0, .LBB0_553
.LBB0_280:                              //  %lor.lhs.false417
                                        //    in Loop: Header=BB0_277 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_282
.LBB0_281:                              //  %if.then420
                                        //    in Loop: Header=BB0_277 Depth=2
	addi x21 ,  x21 ,  -1
.LBB0_282:                              //  %if.then425
                                        //    in Loop: Header=BB0_277 Depth=2
	beq x0, x22, .LBB0_273
.LBB0_283:                              //  %land.lhs.true432
                                        //    in Loop: Header=BB0_277 Depth=2
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	sub x22 ,  x23 ,  x15
	call __locale_mb_cur_max
	bgeu x22, x25, .LBB0_285
.LBB0_284:                              //  %land.lhs.true432
                                        //    in Loop: Header=BB0_277 Depth=2
	sub x15 ,  x25 ,  x10
	bltu x22, x15, .LBB0_272
.LBB0_285:                              //  %if.then440
                                        //    in Loop: Header=BB0_277 Depth=2
	lw x10 ,  -268 ( x8 )           //  4-byte Folded Reload
	slli x25 ,  x25 ,  1&31
	add x11 ,  x0 ,  x25
	call realloc
	bltu x0, x10, .LBB0_286
.LBB0_642:                              //  %if.then440
	jal x0, .LBB0_557
.LBB0_286:                              //  %if.end446
                                        //    in Loop: Header=BB0_277 Depth=2
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x22 ,  x10
	sw x10 ,  -268 ( x8 )           //  4-byte Folded Spill
	add x22 ,  x0 ,  x15
	sw x10 ,  0 ( x15 )
	add x23 ,  x27 ,  x23
	addi x24 ,  x24 ,  1
	bltu x0, x21, .LBB0_274
	jal x0, .LBB0_288
.LBB0_287:                              //  %while.end458
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_288
.LBB0_643:                              //  %while.end458
	jal x0, .LBB0_553
.LBB0_288:                              //  %if.end462
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x22, .LBB0_292
.LBB0_289:                              //  %if.end462
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x23 ,  x15
	bgeu x11, x25, .LBB0_292
.LBB0_290:                              //  %if.then472
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	call realloc
	beq x0, x10, .LBB0_292
.LBB0_291:                              //  %if.then477
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x22 )
.LBB0_292:                              //  %cleanup485
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
.LBB0_293:                              //  %cleanup485
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -280 ( x8 )           //  4-byte Folded Reload
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x25 ,  x15 ,  x25
	jal x0, .LBB0_519
.LBB0_294:                              //  %if.then230
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x24 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_295
.LBB0_644:                              //  %if.then230
	jal x0, .LBB0_573
.LBB0_295:                              //  %if.end249
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_296
.LBB0_645:                              //  %if.end249
	jal x0, .LBB0_573
.LBB0_296:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_297:                              //  %if.end258
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -268 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x22 ,  x0 ,  x23
	addi x25 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_303
	jal x0, .LBB0_301
.LBB0_298:                              //    in Loop: Header=BB0_303 Depth=2
	add x23 ,  x0 ,  x14
.LBB0_299:                              //  %cleanup.cont296
                                        //    in Loop: Header=BB0_303 Depth=2
	sw x27 ,  0 ( x23 )
	addi x23 ,  x23 ,  4
	addi x24 ,  x24 ,  1
	beq x21, x24, .LBB0_308
.LBB0_300:                              //  %land.rhs271
                                        //    in Loop: Header=BB0_303 Depth=2
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_303
.LBB0_301:                              //  %land.lhs.true.i2233
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_309
.LBB0_302:                              //  %land.lhs.true.if.end_crit_edge.i2235
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
.LBB0_303:                              //  %_sfgetwc_r.exit2241
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x27 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x27 ,  -1
	beq x0, x15, .LBB0_309
.LBB0_304:                              //  %if.then279
                                        //    in Loop: Header=BB0_303 Depth=2
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_299
.LBB0_305:                              //  %if.then279
                                        //    in Loop: Header=BB0_303 Depth=2
	sub x15 ,  x23 ,  x22
	add x14 ,  x0 ,  x23
	srai x23 ,  x15 ,  2&31
	bltu x23, x25, .LBB0_298
.LBB0_306:                              //  %if.then284
                                        //    in Loop: Header=BB0_303 Depth=2
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x22
	call realloc
	add x22 ,  x0 ,  x10
	bltu x0, x22, .LBB0_307
.LBB0_656:                              //  %if.then284
	jal x0, .LBB0_557
.LBB0_307:                              //  %if.end289
                                        //    in Loop: Header=BB0_303 Depth=2
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	slli x25 ,  x25 ,  1&31
	sw x22 ,  0 ( x15 )
	slli x15 ,  x23 ,  2&31
	add x23 ,  x15 ,  x22
	sw x27 ,  0 ( x23 )
	addi x23 ,  x23 ,  4
	addi x24 ,  x24 ,  1
	bne x21, x24, .LBB0_300
.LBB0_308:                              //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_311
	jal x0, .LBB0_314
.LBB0_309:                              //  %while.end300
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	beq x0, x24, .LBB0_553
.LBB0_310:                              //  %if.end304
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_314
.LBB0_311:                              //  %if.end304
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x11 ,  x23 ,  x22
	srai x15 ,  x11 ,  2&31
	bgeu x15, x25, .LBB0_314
.LBB0_312:                              //  %if.then315
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_314
.LBB0_313:                              //  %if.then319
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_314:                              //  %cleanup327.thread2744
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -280 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -252 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x25 ,  x15 ,  x25
	jal x0, .LBB0_519
.LBB0_315:                              //  %if.then564
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB0_316
.LBB0_646:                              //  %if.then564
	jal x0, .LBB0_573
.LBB0_316:                              //  %if.end584
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB0_317
.LBB0_647:                              //  %if.end584
	jal x0, .LBB0_573
.LBB0_317:                              //  %cleanup593
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_318:                              //  %if.end596
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x27 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB0_319:                              //  %if.end607
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -244 ( x8 )           //  4-byte Folded Reload
	sw x27 ,  -268 ( x8 )           //  4-byte Folded Spill
	sw x22 ,  -252 ( x8 )           //  4-byte Folded Spill
	lw x14 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x24 ,  x15 ,  2&31
	lw x15 ,  -256 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_449
.LBB0_320:                              //  %while.cond608.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_321 Depth 3
	sub x25 ,  x0 ,  x25
.LBB0_321:                              //  %while.cond608
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_320 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_324
.LBB0_322:                              //  %land.lhs.true.i2313
                                        //    in Loop: Header=BB0_321 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	add x14 ,  x0 ,  x22
	bltu x0, x10, .LBB0_549
.LBB0_323:                              //  %land.lhs.true.if.end_crit_edge.i2315
                                        //    in Loop: Header=BB0_321 Depth=3
	lw x15 ,  0 ( x9 )
.LBB0_324:                              //  %_sfgetwc_r.exit2321
                                        //    in Loop: Header=BB0_321 Depth=3
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB0_464
.LBB0_325:                              //  %land.lhs.true612
                                        //    in Loop: Header=BB0_321 Depth=3
	addi x25 ,  x25 ,  1
	xori x15 ,  x25 ,  1
	beq x0, x15, .LBB0_459
.LBB0_326:                              //  %land.end637
                                        //    in Loop: Header=BB0_321 Depth=3
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	call wmemchr
	bltu x0, x10, .LBB0_459
.LBB0_327:                              //  %while.body638
                                        //    in Loop: Header=BB0_321 Depth=3
	addi x15 ,  x22 ,  4
	sw x23 ,  0 ( x22 )
	add x22 ,  x0 ,  x15
	beq x0, x21, .LBB0_321
.LBB0_328:                              //  %while.body638
                                        //    in Loop: Header=BB0_321 Depth=3
	lw x14 ,  -252 ( x8 )           //  4-byte Folded Reload
	add x22 ,  x0 ,  x15
	sub x14 ,  x15 ,  x14
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	srai x23 ,  x14 ,  2&31
	bltu x23, x15, .LBB0_321
.LBB0_329:                              //  %if.then650
                                        //    in Loop: Header=BB0_320 Depth=2
	lw x27 ,  -268 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  -252 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x27 ,  3&31
	call realloc
	beq x0, x10, .LBB0_557
.LBB0_330:                              //  %if.end656
                                        //    in Loop: Header=BB0_320 Depth=2
	slli x15 ,  x23 ,  2&31
	slli x27 ,  x27 ,  1&31
	sub x25 ,  x0 ,  x25
	sw x10 ,  0 ( x21 )
	sw x10 ,  -252 ( x8 )           //  4-byte Folded Spill
	add x22 ,  x15 ,  x10
	sw x27 ,  -268 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_320
.LBB0_331:                              //  %if.then941
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_573
.LBB0_332:                              //  %if.end961
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_573
.LBB0_333:                              //  %cleanup970
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_334:                              //  %while.cond985.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x25 ,  x0 ,  32
	add x27 ,  x0 ,  x22
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_339
.LBB0_337:                              //  %land.lhs.true.i2475
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_540
.LBB0_338:                              //  %land.lhs.true.if.end_crit_edge.i2477
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_339
.LBB0_335:                              //  %if.end1016
                                        //    in Loop: Header=BB0_339 Depth=2
	slli x15 ,  x23 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x22 ,  0 ( x21 )
	add x27 ,  x15 ,  x22
.LBB0_336:                              //  %cleanup.cont1024
                                        //    in Loop: Header=BB0_339 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x24 ,  x24 ,  -1
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_337
.LBB0_339:                              //  %_sfgetwc_r.exit2483
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB0_363
.LBB0_340:                              //  %land.lhs.true989
                                        //    in Loop: Header=BB0_339 Depth=2
	beq x0, x24, .LBB0_344
.LBB0_341:                              //  %land.end997
                                        //    in Loop: Header=BB0_339 Depth=2
	add x10 ,  x0 ,  x23
	call iswspace
	bltu x0, x10, .LBB0_344
.LBB0_342:                              //  %while.body998
                                        //    in Loop: Header=BB0_339 Depth=2
	add x15 ,  x0 ,  x27
	sw x23 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	add x27 ,  x0 ,  x15
	sub x15 ,  x15 ,  x22
	srai x23 ,  x15 ,  2&31
	bltu x23, x25, .LBB0_336
.LBB0_343:                              //  %if.then1010
                                        //    in Loop: Header=BB0_339 Depth=2
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x22
	call realloc
	add x22 ,  x0 ,  x10
	bltu x0, x22, .LBB0_335
	jal x0, .LBB0_557
.LBB0_344:                              //  %if.end.i2488
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	addi x24 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_352
.LBB0_345:                              //  %if.then4.i2492
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_347
.LBB0_346:                              //  %land.lhs.true.i2495
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_541
.LBB0_347:                              //  %if.end9.i2500
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x23 ,  -4 ( x15 )
.LBB0_348:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	sw x0 ,  0 ( x27 )
	bltu x0, x21, .LBB0_542
	jal x0, .LBB0_545
.LBB0_349:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
	lw x22 ,  0 ( x26 )
	beq x0, x22, .LBB0_648
.LBB0_649:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_648:
	jal x0, .LBB0_571
.LBB0_351:                              //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x0
	addi x24 ,  x0 ,  -1
	add x21 ,  x0 ,  x25
	sw x0 ,  0 ( x27 )
	bltu x0, x21, .LBB0_542
	jal x0, .LBB0_545
.LBB0_352:                              //  %if.end13.i2503
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_478
.LBB0_353:                              //  %land.lhs.true17.i2509
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_479
.LBB0_354:                              //  %land.lhs.true23.i2512
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x23, .LBB0_479
.LBB0_355:                              //  %if.then27.i2515
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_348
.LBB0_356:                              //  %if.end13.if.end32_crit_edge.i2452
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_357:                              //  %if.end32.i2469
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x23 ,  48 ( x18 )
	sw x21 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x22 ,  63 ( x18 )
	lw x22 ,  0 ( x26 )
	beq x0, x22, .LBB0_650
.LBB0_651:                              //  %if.end32.i2469
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_650:                              //  %if.end32.i2469
	jal x0, .LBB0_571
.LBB0_358:                              //  %if.end13.if.end32_crit_edge.i2290
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_359:                              //  %if.end32.i2307
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  4 ( x18 )
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x13 ,  48 ( x18 )
	sw x21 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x14 ,  60 ( x18 )
	sw x22 ,  63 ( x18 )
	bltu x0, x24, .LBB0_519
	jal x0, .LBB0_571
.LBB0_360:                              //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x0
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	addi x22 ,  x8 ,  -225
	add x21 ,  x0 ,  x27
	add x25 ,  x0 ,  x27
	jal x0, .LBB0_436
.LBB0_361:                              //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x0
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	addi x22 ,  x8 ,  -225
	addi x24 ,  x0 ,  -1
	add x27 ,  x0 ,  x21
	add x25 ,  x0 ,  x21
	jal x0, .LBB0_438
.LBB0_363:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
	sw x0 ,  0 ( x27 )
	bltu x0, x21, .LBB0_542
	jal x0, .LBB0_545
.LBB0_364:                              //  %if.then725
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x23 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_573
.LBB0_365:                              //  %if.end745
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_573
.LBB0_366:                              //  %cleanup754
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_367:                              //  %if.end757
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -276 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x27 ,  -280 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -284 ( x8 )           //  4-byte Folded Spill
.LBB0_368:                              //  %if.end769
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x23
	addi x12 ,  x0 ,  8
	call memset
	lw x15 ,  -244 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x22 ,  x15 ,  2&31
	lw x15 ,  -256 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_387
.LBB0_369:                              //  %while.cond771.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x23
	sw x22 ,  -288 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_374
.LBB0_372:                              //  %land.lhs.true.i2367
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_447
.LBB0_373:                              //  %land.lhs.true.if.end_crit_edge.i2369
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_374
.LBB0_370:                              //  %if.end848
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x22 ,  -288 ( x8 )           //  4-byte Folded Reload
	add x21 ,  x0 ,  x23
.LBB0_371:                              //  %if.end848
                                        //    in Loop: Header=BB0_374 Depth=2
	addi x24 ,  x24 ,  1
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_372
.LBB0_374:                              //  %_sfgetwc_r.exit2375
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x23 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x25, .LBB0_405
.LBB0_375:                              //  %_sfgetwc_r.exit2375
                                        //    in Loop: Header=BB0_374 Depth=2
	beq x0, x14, .LBB0_405
.LBB0_376:                              //  %land.rhs778
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	call wmemchr
	bltu x0, x10, .LBB0_406
.LBB0_377:                              //  %while.body800
                                        //    in Loop: Header=BB0_374 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB0_379
.LBB0_378:                              //  %while.body800
                                        //    in Loop: Header=BB0_374 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_380
	jal x0, .LBB0_553
.LBB0_379:                              //  %lor.lhs.false808
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_381
.LBB0_380:                              //  %if.then812
                                        //    in Loop: Header=BB0_374 Depth=2
	addi x25 ,  x25 ,  -1
.LBB0_381:                              //  %if.end814
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_371
.LBB0_382:                              //  %if.then817
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x10 ,  x27
	beq x0, x15, .LBB0_371
.LBB0_383:                              //  %land.lhs.true825
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x15 ,  -280 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x27
	add x23 ,  x0 ,  x21
	sub x21 ,  x14 ,  x15
	call __locale_mb_cur_max
	lw x22 ,  -284 ( x8 )           //  4-byte Folded Reload
	bgeu x21, x22, .LBB0_385
.LBB0_384:                              //  %land.lhs.true825
                                        //    in Loop: Header=BB0_374 Depth=2
	sub x15 ,  x22 ,  x10
	bltu x21, x15, .LBB0_370
.LBB0_385:                              //  %if.then833
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x10 ,  -280 ( x8 )           //  4-byte Folded Reload
	slli x22 ,  x22 ,  1&31
	add x11 ,  x0 ,  x22
	call realloc
	beq x0, x10, .LBB0_557
.LBB0_386:                              //  %if.end839
                                        //    in Loop: Header=BB0_374 Depth=2
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x21 ,  x10
	sw x22 ,  -284 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -280 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_370
.LBB0_387:                              //  %while.cond771.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x23
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_394
.LBB0_392:                              //  %land.lhs.true.i2367.us
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_447
.LBB0_393:                              //  %land.lhs.true.if.end_crit_edge.i2369.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_394
.LBB0_388:                              //  %if.then833.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x10 ,  -280 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -284 ( x8 )           //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB0_557
.LBB0_389:                              //  %if.end839.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x21 ,  x10
	sw x10 ,  -280 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
.LBB0_390:                              //  %if.end848.us
                                        //    in Loop: Header=BB0_394 Depth=2
	add x21 ,  x0 ,  x23
.LBB0_391:                              //  %if.end848.us
                                        //    in Loop: Header=BB0_394 Depth=2
	addi x24 ,  x24 ,  1
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_392
.LBB0_394:                              //  %_sfgetwc_r.exit2375.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x23 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x25, .LBB0_405
.LBB0_395:                              //  %_sfgetwc_r.exit2375.us
                                        //    in Loop: Header=BB0_394 Depth=2
	beq x0, x14, .LBB0_405
.LBB0_396:                              //  %land.rhs778.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	call wmemchr
	beq x0, x10, .LBB0_406
.LBB0_397:                              //  %while.body800.us
                                        //    in Loop: Header=BB0_394 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB0_399
.LBB0_398:                              //  %while.body800.us
                                        //    in Loop: Header=BB0_394 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_400
	jal x0, .LBB0_553
.LBB0_399:                              //  %lor.lhs.false808.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_401
.LBB0_400:                              //  %if.then812.us
                                        //    in Loop: Header=BB0_394 Depth=2
	addi x25 ,  x25 ,  -1
.LBB0_401:                              //  %if.end814.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_391
.LBB0_402:                              //  %if.then817.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x10 ,  x27
	beq x0, x15, .LBB0_391
.LBB0_403:                              //  %land.lhs.true825.us
                                        //    in Loop: Header=BB0_394 Depth=2
	lw x15 ,  -280 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x0 ,  x21
	sub x21 ,  x27 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -284 ( x8 )           //  4-byte Folded Reload
	bgeu x21, x11, .LBB0_388
.LBB0_404:                              //  %land.lhs.true825.us
                                        //    in Loop: Header=BB0_394 Depth=2
	sub x15 ,  x11 ,  x10
	bltu x21, x15, .LBB0_390
	jal x0, .LBB0_388
.LBB0_405:                              //  %while.end850
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	lw x22 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_407
	jal x0, .LBB0_526
.LBB0_406:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	lw x22 ,  -268 ( x8 )           //  4-byte Folded Reload
.LBB0_407:                              //  %if.end.i2380
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_412
.LBB0_408:                              //  %if.then4.i2384
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_410
.LBB0_409:                              //  %land.lhs.true.i2387
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_526
.LBB0_410:                              //  %if.end9.i2392
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x23 ,  -4 ( x15 )
.LBB0_411:                              //  %if.end855
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x22, .LBB0_519
	jal x0, .LBB0_527
.LBB0_412:                              //  %if.end13.i2395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_524
.LBB0_413:                              //  %land.lhs.true17.i2401
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_525
.LBB0_414:                              //  %land.lhs.true23.i2404
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x23, .LBB0_525
.LBB0_415:                              //  %if.then27.i2407
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_411
.LBB0_416:                              //  %if.then1082
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_573
.LBB0_417:                              //  %if.end1102
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_573
.LBB0_418:                              //  %cleanup1111
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB0_419:                              //  %if.end1114
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x22
	addi x27 ,  x0 ,  32
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x21 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB0_420:                              //  %while.cond1128.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	call memset
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_426
.LBB0_424:                              //  %land.lhs.true.i2529
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_533
.LBB0_425:                              //  %land.lhs.true.if.end_crit_edge.i2531
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	jal x0, .LBB0_426
.LBB0_421:                              //  %if.then1173
                                        //    in Loop: Header=BB0_426 Depth=2
	slli x27 ,  x27 ,  1&31
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x27
	call realloc
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB0_557
.LBB0_422:                              //  %if.end1179
                                        //    in Loop: Header=BB0_426 Depth=2
	add x22 ,  x23 ,  x25
	sw x25 ,  0 ( x21 )
.LBB0_423:                              //  %if.end1188
                                        //    in Loop: Header=BB0_426 Depth=2
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  0 ( x9 )
	bge x0, x15, .LBB0_424
.LBB0_426:                              //  %_sfgetwc_r.exit2537
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x14 ,  x23 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x24, .LBB0_436
.LBB0_427:                              //  %_sfgetwc_r.exit2537
                                        //    in Loop: Header=BB0_426 Depth=2
	beq x0, x14, .LBB0_436
.LBB0_428:                              //  %land.rhs1135
                                        //    in Loop: Header=BB0_426 Depth=2
	add x10 ,  x0 ,  x23
	call iswspace
	bltu x0, x10, .LBB0_437
.LBB0_429:                              //  %while.body1140
                                        //    in Loop: Header=BB0_426 Depth=2
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	addi x12 ,  x8 ,  -64
	call wcrtomb
	beq x0, x10, .LBB0_431
.LBB0_430:                              //  %while.body1140
                                        //    in Loop: Header=BB0_426 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_432
	jal x0, .LBB0_553
.LBB0_431:                              //  %lor.lhs.false1148
                                        //    in Loop: Header=BB0_426 Depth=2
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB0_433
.LBB0_432:                              //  %if.then1152
                                        //    in Loop: Header=BB0_426 Depth=2
	addi x24 ,  x24 ,  -1
.LBB0_433:                              //  %if.then1157
                                        //    in Loop: Header=BB0_426 Depth=2
	add x22 ,  x10 ,  x22
	beq x0, x21, .LBB0_423
.LBB0_434:                              //  %land.lhs.true1165
                                        //    in Loop: Header=BB0_426 Depth=2
	sub x23 ,  x22 ,  x25
	call __locale_mb_cur_max
	bgeu x23, x27, .LBB0_421
.LBB0_435:                              //  %land.lhs.true1165
                                        //    in Loop: Header=BB0_426 Depth=2
	sub x15 ,  x27 ,  x10
	bltu x23, x15, .LBB0_423
	jal x0, .LBB0_421
.LBB0_436:                              //  %while.end1190
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
	bltu x0, x15, .LBB0_438
	jal x0, .LBB0_534
.LBB0_437:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
.LBB0_438:                              //  %if.end.i2542
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_443
.LBB0_439:                              //  %if.then4.i2546
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_441
.LBB0_440:                              //  %land.lhs.true.i2549
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_534
.LBB0_441:                              //  %if.end9.i2554
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x23 ,  -4 ( x15 )
.LBB0_442:                              //  %if.end1195
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_535
.LBB0_536:                              //  %if.then1198
                                        //    in Loop: Header=BB0_4 Depth=1
	sb x0 ,  0 ( x22 )
	beq x0, x21, .LBB0_546
.LBB0_537:                              //  %if.then1198
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x22 ,  x25
	addi x11 ,  x15 ,  1
	bgeu x11, x27, .LBB0_546
.LBB0_538:                              //  %if.then1208
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	call realloc
	beq x0, x10, .LBB0_546
.LBB0_539:                              //  %if.then1213
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
	jal x0, .LBB0_546
.LBB0_443:                              //  %if.end13.i2557
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_522
.LBB0_444:                              //  %land.lhs.true17.i2563
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_523
.LBB0_445:                              //  %land.lhs.true23.i2566
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x23, .LBB0_523
.LBB0_446:                              //  %if.then27.i2569
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_442
.LBB0_447:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	lw x22 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_519
	jal x0, .LBB0_527
.LBB0_448:                              //  %if.end656.us
                                        //    in Loop: Header=BB0_449 Depth=2
	slli x15 ,  x23 ,  2&31
	slli x27 ,  x27 ,  1&31
	sub x25 ,  x0 ,  x25
	sw x10 ,  0 ( x21 )
	sw x10 ,  -252 ( x8 )           //  4-byte Folded Spill
	add x22 ,  x15 ,  x10
	sw x27 ,  -268 ( x8 )           //  4-byte Folded Spill
.LBB0_449:                              //  %while.cond608.us.outer
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_450 Depth 3
	sub x25 ,  x0 ,  x25
.LBB0_450:                              //  %while.cond608.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_449 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x9 )
	blt x0, x15, .LBB0_453
.LBB0_451:                              //  %land.lhs.true.i2313.us
                                        //    in Loop: Header=BB0_450 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	add x14 ,  x0 ,  x22
	bltu x0, x10, .LBB0_549
.LBB0_452:                              //  %land.lhs.true.if.end_crit_edge.i2315.us
                                        //    in Loop: Header=BB0_450 Depth=3
	lw x15 ,  0 ( x9 )
.LBB0_453:                              //  %_sfgetwc_r.exit2321.us
                                        //    in Loop: Header=BB0_450 Depth=3
	lw x14 ,  0 ( x18 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x14 ,  4
	sw x13 ,  0 ( x18 )
	lw x23 ,  0 ( x14 )
	sw x15 ,  4 ( x18 )
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB0_464
.LBB0_454:                              //  %land.lhs.true612.us
                                        //    in Loop: Header=BB0_450 Depth=3
	addi x25 ,  x25 ,  1
	xori x15 ,  x25 ,  1
	beq x0, x15, .LBB0_459
.LBB0_455:                              //  %land.end637.us
                                        //    in Loop: Header=BB0_450 Depth=3
	lw x10 ,  -244 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	call wmemchr
	beq x0, x10, .LBB0_459
.LBB0_456:                              //  %while.body638.us
                                        //    in Loop: Header=BB0_450 Depth=3
	addi x15 ,  x22 ,  4
	sw x23 ,  0 ( x22 )
	add x22 ,  x0 ,  x15
	beq x0, x21, .LBB0_450
.LBB0_457:                              //  %while.body638.us
                                        //    in Loop: Header=BB0_450 Depth=3
	lw x14 ,  -252 ( x8 )           //  4-byte Folded Reload
	add x22 ,  x0 ,  x15
	sub x14 ,  x15 ,  x14
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	srai x23 ,  x14 ,  2&31
	bltu x23, x15, .LBB0_450
.LBB0_458:                              //  %if.then650.us
                                        //    in Loop: Header=BB0_449 Depth=2
	lw x27 ,  -268 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  -252 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x27 ,  3&31
	call realloc
	bltu x0, x10, .LBB0_448
	jal x0, .LBB0_557
.LBB0_459:                              //  %if.end.i2326
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_465
.LBB0_460:                              //  %if.then4.i2330
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_462
.LBB0_461:                              //  %land.lhs.true.i2333
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_472
.LBB0_462:                              //  %if.end9.i2338
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x23 ,  -4 ( x15 )
.LBB0_463:                              //  %if.end670
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	add x14 ,  x0 ,  x22
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_473
	jal x0, .LBB0_571
.LBB0_464:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x22
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_473
	jal x0, .LBB0_571
.LBB0_465:                              //  %if.end13.i2341
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_470
.LBB0_466:                              //  %land.lhs.true17.i2347
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_471
.LBB0_467:                              //  %land.lhs.true23.i2350
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x23, .LBB0_471
.LBB0_468:                              //  %if.then27.i2353
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_463
.LBB0_549:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_473
	jal x0, .LBB0_571
.LBB0_470:                              //  %if.end13.if.end32_crit_edge.i2344
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_471:                              //  %if.end32.i2361
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_472:                              //  %if.end670
                                        //    in Loop: Header=BB0_4 Depth=1
	add x14 ,  x0 ,  x22
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	beq x0, x15, .LBB0_571
.LBB0_473:                              //  %if.end678
                                        //    in Loop: Header=BB0_4 Depth=1
	srai x24 ,  x15 ,  2&31
	sw x14 ,  -252 ( x8 )           //  4-byte Folded Spill
	sw x0 ,  0 ( x14 )
	beq x0, x21, .LBB0_477
.LBB0_474:                              //  %if.end678
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -268 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x24 ,  1
	bgeu x15, x14, .LBB0_477
.LBB0_475:                              //  %if.then685
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_477
.LBB0_476:                              //  %if.then690
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
.LBB0_477:                              //  %cleanup694
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x25 ,  1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB0_519
.LBB0_478:                              //  %if.end13.if.end32_crit_edge.i2506
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_479:                              //  %if.end32.i2523
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	sw x0 ,  0 ( x27 )
	bltu x0, x21, .LBB0_542
	jal x0, .LBB0_545
.LBB0_481:                              //    in Loop: Header=BB0_4 Depth=1
	sw x11 ,  -240 ( x8 )           //  4-byte Folded Spill
.LBB0_482:                              //  %if.end.i2596
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x11 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x10 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	and x11 ,  x10 ,  x11
	sh x11 ,  12 ( x18 )
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB0_487
.LBB0_483:                              //  %if.then4.i2600
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  52 ( x18 )
	add x24 ,  x0 ,  x0
	blt x15, x13, .LBB0_486
.LBB0_484:                              //  %land.lhs.true.i2603
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_492
.LBB0_485:                              //  %land.lhs.true.i2603.if.end9.i2608_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  0 ( x18 )
.LBB0_486:                              //  %if.end9.i2608
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x14 ,  -4
	sw x15 ,  0 ( x18 )
	sb x23 ,  -4 ( x14 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	andi x15 ,  x21 ,  256
	beq x0, x15, .LBB0_493
	jal x0, .LBB0_558
.LBB0_487:                              //  %if.end13.i2611
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11 ,  16 ( x18 )
	add x24 ,  x0 ,  x0
	beq x0, x11, .LBB0_491
.LBB0_488:                              //  %if.end13.i2611
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x11, x14, .LBB0_491
.LBB0_489:                              //  %land.lhs.true23.i2620
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x11 ,  0 ( x12 )
	bne x11, x23, .LBB0_491
.LBB0_490:                              //  %if.then27.i2623
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x13 ,  4 ( x18 )
	sw x12 ,  0 ( x18 )
	andi x15 ,  x21 ,  256
	beq x0, x15, .LBB0_493
	jal x0, .LBB0_558
.LBB0_491:                              //  %if.end32.i2631
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  60 ( x18 )
	addi x15 ,  x0 ,  3
	sw x14 ,  56 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_492:                              //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_558
.LBB0_493:                              //  %if.end1310
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  -4 ( x27 )
	lw x13 ,  -236 ( x8 )           //  4-byte Folded Reload
	ori x15 ,  x22 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB0_506
.LBB0_494:                              //  %if.then1317
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x27 ,  x27 ,  -4
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB0_506
.LBB0_495:                              //  %if.end.i2678
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_500
.LBB0_496:                              //  %if.then4.i2682
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_498
.LBB0_497:                              //  %land.lhs.true.i2685
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_506
.LBB0_498:                              //  %if.end9.i2690
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x22 ,  -4 ( x15 )
.LBB0_499:                              //  %if.end1320
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	andi x15 ,  x21 ,  16
	beq x0, x15, .LBB0_507
.LBB0_513:                              //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB0_518
.LBB0_500:                              //  %if.end13.i2693
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_504
.LBB0_501:                              //  %land.lhs.true17.i2699
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_505
.LBB0_502:                              //  %land.lhs.true23.i2702
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -4 ( x15 )
	bne x14, x22, .LBB0_505
.LBB0_503:                              //  %if.then27.i2705
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_499
.LBB0_504:                              //  %if.end13.if.end32_crit_edge.i2696
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_505:                              //  %if.end32.i2713
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x13 ,  48 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x22 ,  63 ( x18 )
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_506:                              //  %if.end1320
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  16
	bltu x0, x15, .LBB0_513
.LBB0_507:                              //  %if.then1324
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -224
	add x12 ,  x0 ,  x24
	sw x0 ,  0 ( x27 )
	lw x15 ,  -248 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x21 ,  32
	bltu x0, x15, .LBB0_512
.LBB0_508:                              //  %if.else1331
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  8
	bltu x0, x15, .LBB0_514
.LBB0_509:                              //  %if.else1337
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  4
	bltu x0, x15, .LBB0_515
.LBB0_510:                              //  %if.else1343
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  1
	bltu x0, x15, .LBB0_512
.LBB0_511:                              //  %if.else1348
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x21 ,  2
	bltu x0, x15, .LBB0_520
.LBB0_512:                              //  %if.else1362
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_516
.LBB0_514:                              //  %if.then1334
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB0_516
.LBB0_515:                              //  %if.then1340
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB0_516:                              //  %if.end1368
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
.LBB0_517:                              //  %if.end1368
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x25 ,  1
.LBB0_518:                              //  %if.end1370
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x8 ,  -224
	sw x27 ,  -252 ( x8 )           //  4-byte Folded Spill
	sub x15 ,  x27 ,  x15
	srai x24 ,  x15 ,  2&31
.LBB0_519:                              //  %sw.epilog1377
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	lw x22 ,  0 ( x26 )
	add x15 ,  x15 ,  x24
	addi x24 ,  x0 ,  -1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	beq x0, x22, .LBB0_652
.LBB0_653:                              //  %sw.epilog1377
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_652:                              //  %sw.epilog1377
	jal x0, .LBB0_571
.LBB0_520:                              //  %if.then1351
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	lw x14 ,  -248 ( x8 )           //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB0_550
.LBB0_521:                              //  %if.else1357
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -224
	add x12 ,  x0 ,  x24
	call _wcstoll_r
	jal x0, .LBB0_551
.LBB0_522:                              //  %if.end13.if.end32_crit_edge.i2560
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_523:                              //  %if.end32.i2577
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_535
	jal x0, .LBB0_536
.LBB0_524:                              //  %if.end13.if.end32_crit_edge.i2398
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB0_525:                              //  %if.end32.i2415
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x21 ,  0 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x23 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
.LBB0_526:                              //  %if.end855
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x22, .LBB0_519
.LBB0_527:                              //  %if.then858
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	sb x0 ,  0 ( x27 )
	beq x0, x15, .LBB0_531
.LBB0_528:                              //  %if.then858
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -280 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x27 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -284 ( x8 )           //  4-byte Folded Reload
	bgeu x11, x15, .LBB0_531
.LBB0_529:                              //  %if.then868
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_531
.LBB0_530:                              //  %if.then873
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -276 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_531:                              //  %if.end875
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x25 ,  1
	jal x0, .LBB0_519
.LBB0_532:                              //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x0
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	addi x22 ,  x8 ,  -225
	addi x24 ,  x0 ,  -1
	add x21 ,  x0 ,  x27
	add x25 ,  x0 ,  x27
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_535
	jal x0, .LBB0_536
.LBB0_533:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
.LBB0_534:                              //  %if.end1195
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_536
.LBB0_535:                              //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB0_547
.LBB0_540:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  -1
.LBB0_541:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0 ,  0 ( x27 )
	beq x0, x21, .LBB0_545
.LBB0_542:                              //  %if.end1031
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x27 ,  x22
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x25, .LBB0_545
.LBB0_543:                              //  %if.then1042
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x21 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_545
.LBB0_544:                              //  %if.then1047
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x21 )
.LBB0_545:                              //  %cleanup1051
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x27 ,  -252 ( x8 )           //  4-byte Folded Spill
.LBB0_546:                              //  %if.end1215
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	addi x25 ,  x25 ,  1
.LBB0_547:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x21 ,  -264 ( x8 )           //  4-byte Folded Reload
.LBB0_548:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  0 ( x26 )
	beq x0, x22, .LBB0_654
.LBB0_655:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_654:                              //  %if.end1224
	jal x0, .LBB0_571
.LBB0_550:                              //  %if.then1354
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -224
	add x12 ,  x0 ,  x24
	call _wcstoull_r
.LBB0_551:                              //  %if.end1360
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_517
.LBB0_552:
	add x25 ,  x0 ,  x0
	jal x0, .LBB0_578
.LBB0_553:                              //  %input_failure.loopexit28
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
.LBB0_554:                              //  %input_failure
	addi x24 ,  x0 ,  -1
.LBB0_555:                              //  %input_failure
	beq x0, x25, .LBB0_570
.LBB0_556:                              //  %land.lhs.true1379
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_571
.LBB0_557:                              //  %land.lhs.true1379
	addi x25 ,  x0 ,  -1
	bltu x0, x20, .LBB0_572
	jal x0, .LBB0_578
.LBB0_558:                              //  %if.then1302
	beq x0, x22, .LBB0_571
.LBB0_559:                              //  %if.then1306
	lw x9 ,  -4 ( x27 )
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB0_571
.LBB0_560:                              //  %if.end.i2637
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB0_584
.LBB0_561:                              //  %if.then4.i2641
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB0_563
.LBB0_562:                              //  %land.lhs.true.i2644
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_571
.LBB0_563:                              //  %if.end9.i2649
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x9 ,  -4 ( x15 )
.LBB0_564:                              //  %do.body1388
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x20, .LBB0_572
	jal x0, .LBB0_578
.LBB0_565:                              //  %if.end.i2138
	lhu x11 ,  12 ( x18 )
	lui x30 ,  65503&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	and x11 ,  x10 ,  x11
	lw x10 ,  -236 ( x8 )           //  4-byte Folded Reload
	sh x11 ,  12 ( x18 )
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB0_579
.LBB0_566:                              //  %if.then4.i2142
	lw x14 ,  52 ( x18 )
	blt x12, x14, .LBB0_569
.LBB0_567:                              //  %land.lhs.true.i2145
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB0_555
.LBB0_568:                              //  %land.lhs.true.i2145.if.end9.i2150_crit_edge
	lw x15 ,  0 ( x18 )
.LBB0_569:                              //  %if.end9.i2150
	addi x14 ,  x15 ,  -4
	sw x14 ,  0 ( x18 )
	sb x21 ,  -4 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  4
	sw x15 ,  4 ( x18 )
	bltu x0, x25, .LBB0_556
.LBB0_570:
	add x25 ,  x0 ,  x24
.LBB0_571:                              //  %do.body1388
	beq x0, x20, .LBB0_578
.LBB0_572:                              //  %if.then1390
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB0_576
.LBB0_573:                              //  %for.cond1394.preheader
	lhu x15 ,  6 ( x20 )
	addi x25 ,  x0 ,  -1
	beq x0, x15, .LBB0_576
.LBB0_574:                              //  %for.body1399.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB0_575:                              //  %for.body1399
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
	bltu x18, x15, .LBB0_575
.LBB0_576:                              //  %if.end1407
	lw x10 ,  0 ( x20 )
	beq x0, x10, .LBB0_578
.LBB0_577:                              //  %if.then1410
	call free
.LBB0_578:                              //  %cleanup1416
	add x10 ,  x0 ,  x25
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
.LBB0_590:
	add x25 ,  x0 ,  x24
	bltu x0, x20, .LBB0_572
	jal x0, .LBB0_578
.LBB0_579:                              //  %if.end13.i2153
	lw x11 ,  16 ( x18 )
	beq x0, x11, .LBB0_583
.LBB0_580:                              //  %if.end13.i2153
	bgeu x11, x15, .LBB0_583
.LBB0_581:                              //  %land.lhs.true23.i2162
	lw x11 ,  0 ( x13 )
	bne x11, x21, .LBB0_583
.LBB0_582:                              //  %if.then27.i2165
	sw x14 ,  4 ( x18 )
	sw x13 ,  0 ( x18 )
	bltu x0, x25, .LBB0_556
	jal x0, .LBB0_570
.LBB0_583:                              //  %if.end32.i2173
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x12 ,  60 ( x18 )
	sw x10 ,  48 ( x18 )
	sw x5 ,  0 ( x18 )
	sw x21 ,  63 ( x18 )
	sw x15 ,  52 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	bltu x0, x25, .LBB0_556
	jal x0, .LBB0_570
.LBB0_588:
	lw x25 ,  -272 ( x8 )           //  4-byte Folded Reload
	bltu x0, x20, .LBB0_572
	jal x0, .LBB0_578
.LBB0_584:                              //  %if.end13.i2652
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB0_594
.LBB0_585:                              //  %land.lhs.true17.i2658
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB0_595
.LBB0_586:                              //  %land.lhs.true23.i2661
	lw x14 ,  -4 ( x15 )
	bne x14, x9, .LBB0_595
.LBB0_587:                              //  %if.then27.i2664
	addi x15 ,  x15 ,  -4
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_564
.LBB0_594:                              //  %if.end13.if.end32_crit_edge.i2655
	lw x15 ,  0 ( x18 )
.LBB0_595:                              //  %if.end32.i2672
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	lw x14 ,  4 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x14 ,  60 ( x18 )
	sw x9 ,  63 ( x18 )
	sw x15 ,  48 ( x18 )
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x18 )
	bltu x0, x20, .LBB0_572
	jal x0, .LBB0_578
.Lfunc_end0:
	.size	__ssvfiwscanf_r, .Lfunc_end0-__ssvfiwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_51
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_27
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_23
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_69
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_25
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_70
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_67
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_71
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_73
	.long	.LBB0_74
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_12
	.long	.LBB0_75
	.long	.LBB0_25
	.long	.LBB0_571
	.long	.LBB0_15
	.long	.LBB0_29
	.long	.LBB0_57
	.long	.LBB0_76
	.long	.LBB0_77
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_78
	.long	.LBB0_11
	.long	.LBB0_79
	.long	.LBB0_571
	.long	.LBB0_571
	.long	.LBB0_67
	.long	.LBB0_571
	.long	.LBB0_11
JTI0_1:
	.long	.LBB0_106
	.long	.LBB0_120
	.long	.LBB0_132
	.long	.LBB0_143
JTI0_2:
	.long	.LBB0_168
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_156
	.long	.LBB0_482
	.long	.LBB0_156
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_163
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_147
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_160
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_154
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_482
	.long	.LBB0_160
                                        //  -- End function
	.address_space	0
	.type	__ssvfiwscanf_r.basefix,@object //  @__ssvfiwscanf_r.basefix
	.p2align	1
__ssvfiwscanf_r.basefix:
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
	.size	__ssvfiwscanf_r.basefix, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
