	.text
	.file	"svfscanf.c"
	.globl	__ssvfscanf_r           //  -- Begin function __ssvfscanf_r
	.type	__ssvfscanf_r,@function
__ssvfscanf_r:                          //  @__ssvfscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -752
	.cfi_adjust_cfa_offset 752
	sw x8 ,  744 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  744
	.cfi_def_cfa 8, 8
	lui x14 ,  (8192>>12)&1048575
	sw x18 ,  -12 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 18, -20
	add x18 ,  x0 ,  x11
	sw x19 ,  -16 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 19, -24
	sw x21 ,  -24 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 21, -32
	add x21 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	sw x13 ,  -68 ( x8 )
	sw x1 ,  -4 ( x8 )              //  4-byte Folded Spill
	.cfi_offset 1, -12
	sw x9 ,  -8 ( x8 )              //  4-byte Folded Spill
	.cfi_offset 9, -16
	sw x20 ,  -20 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 20, -28
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
	sw x27 ,  -48 ( x8 )            //  4-byte Folded Spill
	.cfi_offset 27, -56
	lhu x15 ,  12 ( x18 )
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x18 )
	lw x15 ,  100 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x18 )
.LBB0_2:                                //  %do.end
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_3
.LBB0_552:                              //  %do.end
	jal x0, .LBB0_520
.LBB0_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x22 ,  x0 ,  x0
	addi x14 ,  x8 ,  -678
	lui x9 ,  (_ctype_>>12)&1048575
	addi x13 ,  x14 ,  339
	addi x14 ,  x14 ,  338
	add x27 ,  x0 ,  x22
	add x20 ,  x0 ,  x22
	sw x22 ,  -700 ( x8 )           //  4-byte Folded Spill
	sw x22 ,  -696 ( x8 )           //  4-byte Folded Spill
	sw x22 ,  -692 ( x8 )           //  4-byte Folded Spill
	sw x13 ,  -704 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -708 ( x8 )           //  4-byte Folded Spill
.LBB0_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
                                        //        Child Loop BB0_7 Depth 3
                                        //      Child Loop BB0_15 Depth 2
                                        //      Child Loop BB0_73 Depth 2
                                        //      Child Loop BB0_193 Depth 2
                                        //      Child Loop BB0_273 Depth 2
                                        //      Child Loop BB0_156 Depth 2
                                        //      Child Loop BB0_452 Depth 2
                                        //      Child Loop BB0_433 Depth 2
                                        //      Child Loop BB0_497 Depth 2
                                        //      Child Loop BB0_256 Depth 2
                                        //      Child Loop BB0_363 Depth 2
                                        //      Child Loop BB0_482 Depth 2
                                        //      Child Loop BB0_407 Depth 2
                                        //      Child Loop BB0_123 Depth 2
                                        //      Child Loop BB0_501 Depth 2
                                        //      Child Loop BB0_249 Depth 2
                                        //      Child Loop BB0_348 Depth 2
                                        //      Child Loop BB0_468 Depth 2
                                        //      Child Loop BB0_376 Depth 2
                                        //      Child Loop BB0_105 Depth 2
                                        //      Child Loop BB0_243 Depth 2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x21 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB0_11
.LBB0_5:                                //  %for.cond15.preheader
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_7 Depth 3
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_7
	jal x0, .LBB0_6
.LBB0_8:                                //  %if.end26
                                        //    in Loop: Header=BB0_7 Depth=3
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_7
.LBB0_6:                                //  %land.lhs.true18
                                        //    in Loop: Header=BB0_5 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_9
.LBB0_7:                                //  %lor.lhs.false
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_8
.LBB0_9:                                //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=2
	lbu x15 ,  0 ( x24 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_10
.LBB0_553:                              //  %for.end
	jal x0, .LBB0_525
.LBB0_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB0_5 Depth=2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x24 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_5
.LBB0_11:                               //  %if.end29
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  37
	bltu x0, x15, .LBB0_38
.LBB0_12:                               //  %again.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x0
	add x23 ,  x0 ,  x25
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB0_15
	jal x0, .LBB0_525
.LBB0_13:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  15
	add x24 ,  x0 ,  x21
	beq x0, x15, .LBB0_14
.LBB0_554:                              //  %sw.bb115
	jal x0, .LBB0_525
.LBB0_14:                               //  %again
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB0_15
.LBB0_555:                              //  %again
	jal x0, .LBB0_525
.LBB0_15:                               //  %again
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	addi x21 ,  x24 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_16:                               //  %sw.bb132
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB0_17
.LBB0_556:                              //  %sw.bb132
	jal x0, .LBB0_525
.LBB0_17:                               //  %if.end136
                                        //    in Loop: Header=BB0_15 Depth=2
	addi x11 ,  x0 ,  10
	add x10 ,  x0 ,  x23
	call __mulsi3
	add x15 ,  x26 ,  x10
	add x24 ,  x0 ,  x21
	addi x23 ,  x15 ,  -48
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB0_15
	jal x0, .LBB0_525
.LBB0_18:                               //  %sw.bb84
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB0_19
.LBB0_557:                              //  %sw.bb84
	jal x0, .LBB0_525
.LBB0_19:                               //  %if.end88
                                        //    in Loop: Header=BB0_15 Depth=2
	ori x25 ,  x25 ,  2
	jal x0, .LBB0_20
.LBB0_21:                               //  %sw.bb63
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  159
	or x15 ,  x23 ,  x15
	beq x0, x15, .LBB0_22
.LBB0_558:                              //  %sw.bb63
	jal x0, .LBB0_525
.LBB0_22:                               //  %if.end69
                                        //    in Loop: Header=BB0_15 Depth=2
	ori x25 ,  x25 ,  16
	add x23 ,  x0 ,  x0
	jal x0, .LBB0_20
.LBB0_23:                               //  %sw.bb90
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB0_24
.LBB0_559:                              //  %sw.bb90
	jal x0, .LBB0_525
.LBB0_24:                               //  %if.end94
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x15 ,  1 ( x24 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB0_34
.LBB0_25:                               //  %if.end94
                                        //    in Loop: Header=BB0_15 Depth=2
	addi x15 ,  x0 ,  4
	jal x0, .LBB0_29
.LBB0_26:                               //  %sw.bb71
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB0_27
.LBB0_560:                              //  %sw.bb71
	jal x0, .LBB0_525
.LBB0_27:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	lbu x15 ,  1 ( x24 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB0_35
.LBB0_28:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	slti x15 ,  x0 ,  1
.LBB0_29:                               //  %if.end75
                                        //    in Loop: Header=BB0_15 Depth=2
	add x24 ,  x0 ,  x21
	jal x0, .LBB0_37
.LBB0_30:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_15 Depth=2
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB0_31
.LBB0_561:                              //  %sw.bb120
	jal x0, .LBB0_525
.LBB0_31:                               //  %do.body125
                                        //    in Loop: Header=BB0_15 Depth=2
	bltu x0, x22, .LBB0_33
.LBB0_32:                               //  %if.then127
                                        //    in Loop: Header=BB0_15 Depth=2
	add x15 ,  x0 ,  x2
	addi x22 ,  x15 ,  -8
	add x2 ,  x0 ,  x22
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB0_33:                               //  %do.end130
                                        //    in Loop: Header=BB0_15 Depth=2
	ori x25 ,  x25 ,  128
.LBB0_20:                               //  %if.end88
                                        //    in Loop: Header=BB0_15 Depth=2
	add x24 ,  x0 ,  x21
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB0_15
	jal x0, .LBB0_525
.LBB0_34:                               //    in Loop: Header=BB0_15 Depth=2
	addi x15 ,  x0 ,  8
	jal x0, .LBB0_36
.LBB0_35:                               //    in Loop: Header=BB0_15 Depth=2
	addi x15 ,  x0 ,  2
.LBB0_36:                               //    in Loop: Header=BB0_15 Depth=2
	addi x24 ,  x24 ,  2
.LBB0_37:                               //    in Loop: Header=BB0_15 Depth=2
	or x25 ,  x25 ,  x15
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB0_15
	jal x0, .LBB0_525
.LBB0_38:                               //    in Loop: Header=BB0_4 Depth=1
	add x21 ,  x0 ,  x24
.LBB0_39:                               //  %literal
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_41
.LBB0_40:                               //  %land.lhs.true43
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_41
.LBB0_562:                              //  %land.lhs.true43
	jal x0, .LBB0_522
.LBB0_41:                               //  %if.end47
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lbu x14 ,  -1 ( x21 )
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB0_42
.LBB0_563:                              //  %if.end47
	jal x0, .LBB0_525
.LBB0_42:                               //  %if.end54
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
.LBB0_43:                               //  %for.cond.outer2899.backedge
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_4
	jal x0, .LBB0_525
.LBB0_44:                               //  %sw.epilog.loopexit5282
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  4
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_45:                               //  %sw.bb145
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  512
	jal x0, .LBB0_46
.LBB0_47:                               //  %sw.bb154
                                        //    in Loop: Header=BB0_4 Depth=1
	ori x25 ,  x25 ,  1
.LBB0_48:                               //  %sw.bb156
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_49:                               //  %sw.bb137
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x0 ,  10
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtol_r&4095
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	jal x0, .LBB0_51
.LBB0_50:                               //  %sw.bb141
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x0 ,  8
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtoul_r&4095
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
.LBB0_51:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	ori x25 ,  x25 ,  1
	or x15 ,  x15 ,  x30
	sw x15 ,  -700 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_52:                               //  %sw.bb148
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  2
	ori x25 ,  x25 ,  1
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_53:                               //  %sw.bb151
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x8 ,  -328
	add x11 ,  x0 ,  x21
	call __sccl
	add x21 ,  x0 ,  x10
	slti x24 ,  x0 ,  1
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_54:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
	jal x0, .LBB0_56
.LBB0_55:                               //  %sw.epilog.loopexit3724
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  3
	add x15 ,  x0 ,  x0
.LBB0_56:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	lui x30 ,  _strtol_r&4095
	jal x0, .LBB0_68
.LBB0_57:                               //  %sw.bb160
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_43
.LBB0_58:                               //  %if.end164
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  8
	bltu x0, x15, .LBB0_324
.LBB0_59:                               //  %if.else169
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  4
	beq x0, x15, .LBB0_60
.LBB0_564:                              //  %if.else169
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_498
.LBB0_60:                               //  %if.else175
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB0_62
.LBB0_61:                               //  %if.else180
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  2
	beq x0, x15, .LBB0_62
.LBB0_565:                              //  %if.else180
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_517
.LBB0_62:                               //  %if.then178
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_4
	jal x0, .LBB0_525
.LBB0_63:                               //  %sw.epilog.loopexit4326
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  8
	jal x0, .LBB0_67
.LBB0_64:                               //  %sw.bb158
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  544
.LBB0_46:                               //  %sw.bb145
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	jal x0, .LBB0_68
.LBB0_65:                               //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
	jal x0, .LBB0_69
.LBB0_66:                               //  %sw.epilog.loopexit4799
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
.LBB0_67:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	lui x30 ,  _strtoul_r&4095
.LBB0_68:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -700 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_70
.LBB0_69:                               //  %land.lhs.true195
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_70
.LBB0_566:                              //  %land.lhs.true195
	jal x0, .LBB0_522
.LBB0_70:                               //  %if.end199
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  64
	bltu x0, x15, .LBB0_77
.LBB0_71:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	jal x0, .LBB0_73
.LBB0_72:                               //  %if.then215
                                        //    in Loop: Header=BB0_73 Depth=2
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
.LBB0_73:                               //  %while.cond.preheader
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB0_77
.LBB0_74:                               //  %while.body
                                        //    in Loop: Header=BB0_73 Depth=2
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB0_72
.LBB0_75:                               //  %if.else218
                                        //    in Loop: Header=BB0_73 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_76
.LBB0_567:                              //  %if.else218
	jal x0, .LBB0_522
.LBB0_76:                               //  %if.else218.if.end223_crit_edge
                                        //    in Loop: Header=BB0_73 Depth=2
	lw x15 ,  0 ( x18 )
	addi x20 ,  x20 ,  1
	jal x0, .LBB0_73
.LBB0_77:                               //  %if.end224
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x0 ,  4
	bltu x15, x24, .LBB0_43
.LBB0_78:                               //  %if.end224
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x24 ,  2&31
	sw x27 ,  -712 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_79:                               //  %sw.bb225
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB0_81
.LBB0_80:                               //    in Loop: Header=BB0_4 Depth=1
	slti x23 ,  x0 ,  1
.LBB0_81:                               //  %sw.bb225
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB0_101
.LBB0_82:                               //  %if.else409
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_242
.LBB0_83:                               //  %if.else442
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_296
.LBB0_84:                               //  %if.else503
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x24 ,  0 ( x15 )
	jal x0, .LBB0_334
.LBB0_85:                               //  %sw.bb532
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB0_87
.LBB0_86:                               //    in Loop: Header=BB0_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB0_87:                               //  %sw.bb532
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB0_119
.LBB0_88:                               //  %if.else747
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_246
.LBB0_89:                               //  %if.else785
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_300
.LBB0_90:                               //  %if.else846
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	add x24 ,  x0 ,  x25
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB0_344
.LBB0_91:                               //  %sw.bb931
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x0
	bne x23, x27, .LBB0_93
.LBB0_92:                               //    in Loop: Header=BB0_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB0_93:                               //  %sw.bb931
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB0_140
.LBB0_94:                               //  %if.else1151
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_253
.LBB0_95:                               //  %if.else1183
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_304
.LBB0_96:                               //  %if.else1245
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x24 ,  -716 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_359
.LBB0_97:                               //  %sw.bb1328
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x23 ,  -1
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB0_142
.LBB0_98:                               //  %sw.bb1328
                                        //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x23
	jal x0, .LBB0_143
.LBB0_99:                               //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x26 ,  x23 ,  -1
	addi x27 ,  x0 ,  348
	bltu x27, x26, .LBB0_146
.LBB0_100:                              //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x23
	jal x0, .LBB0_147
.LBB0_101:                              //  %if.then232
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -720 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB0_260
.LBB0_102:                              //  %while.body298.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_105
	jal x0, .LBB0_521
.LBB0_113:                              //    in Loop: Header=BB0_105 Depth=2
	add x24 ,  x0 ,  x25
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB0_117
.LBB0_103:                              //  %if.end380.us
                                        //    in Loop: Header=BB0_105 Depth=2
	beq x0, x23, .LBB0_325
.LBB0_104:                              //  %while.body298.us
                                        //    in Loop: Header=BB0_105 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_105
.LBB0_568:                              //  %while.body298.us
	jal x0, .LBB0_521
.LBB0_105:                              //  %if.end303.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	addi x25 ,  x24 ,  1
	add x15 ,  x24 ,  x15
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_107
.LBB0_106:                              //  %if.end303.us
                                        //    in Loop: Header=BB0_105 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_108
.LBB0_107:                              //  %if.then316.us
                                        //    in Loop: Header=BB0_105 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_108:                              //  %if.end318.us
                                        //    in Loop: Header=BB0_105 Depth=2
	add x24 ,  x0 ,  x0
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_113
.LBB0_109:                              //  %if.end318.us
                                        //    in Loop: Header=BB0_105 Depth=2
	beq x0, x10, .LBB0_114
.LBB0_110:                              //  %if.end318.us
                                        //    in Loop: Header=BB0_105 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_111
.LBB0_569:                              //  %if.end318.us
	jal x0, .LBB0_521
.LBB0_111:                              //  %if.then334.us
                                        //    in Loop: Header=BB0_105 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x25
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_115
.LBB0_112:                              //  %if.then334.us
                                        //    in Loop: Header=BB0_105 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_116
	jal x0, .LBB0_115
.LBB0_114:                              //  %if.then334.thread.us
                                        //    in Loop: Header=BB0_105 Depth=2
	add x20 ,  x20 ,  x25
.LBB0_115:                              //  %if.then342.us
                                        //    in Loop: Header=BB0_105 Depth=2
	addi x23 ,  x23 ,  -1
.LBB0_116:                              //  %if.end368.us
                                        //    in Loop: Header=BB0_105 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_103
.LBB0_117:                              //  %land.lhs.true372.us
                                        //    in Loop: Header=BB0_105 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_103
.LBB0_118:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB0_570
.LBB0_571:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_394
.LBB0_570:
	jal x0, .LBB0_521
.LBB0_119:                              //  %if.then539
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -728 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB0_262
.LBB0_120:                              //  %while.body614.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_123
	jal x0, .LBB0_522
.LBB0_121:                              //  %if.end716
                                        //    in Loop: Header=BB0_123 Depth=2
	beq x0, x23, .LBB0_329
.LBB0_122:                              //  %while.body614
                                        //    in Loop: Header=BB0_123 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_123
.LBB0_572:                              //  %while.body614
	jal x0, .LBB0_522
.LBB0_123:                              //  %if.end619
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_125
.LBB0_124:                              //  %if.end619
                                        //    in Loop: Header=BB0_123 Depth=2
	lw x15 ,  -688 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_126
.LBB0_125:                              //  %if.then633
                                        //    in Loop: Header=BB0_123 Depth=2
	addi x10 ,  x8 ,  -688
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_126:                              //  %if.end635
                                        //    in Loop: Header=BB0_123 Depth=2
	addi x25 ,  x8 ,  -72
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -688
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_137
.LBB0_127:                              //  %if.end635
                                        //    in Loop: Header=BB0_123 Depth=2
	beq x0, x10, .LBB0_131
.LBB0_128:                              //  %if.end635
                                        //    in Loop: Header=BB0_123 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_129
.LBB0_573:                              //  %if.end635
	jal x0, .LBB0_522
.LBB0_129:                              //  %if.then648
                                        //    in Loop: Header=BB0_123 Depth=2
	lw x27 ,  -72 ( x8 )
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB0_132
.LBB0_130:                              //    in Loop: Header=BB0_123 Depth=2
	addi x26 ,  x0 ,  -1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB0_135
.LBB0_131:                              //  %if.then648.thread
                                        //    in Loop: Header=BB0_123 Depth=2
	add x27 ,  x0 ,  x0
	sw x0 ,  -72 ( x8 )
.LBB0_132:                              //  %if.end.i
                                        //    in Loop: Header=BB0_123 Depth=2
	addi x25 ,  x8 ,  -60
	add x26 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call memset
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	addi x11 ,  x8 ,  -61
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	slti x15 ,  x0 ,  1
	bne x10, x15, .LBB0_134
.LBB0_133:                              //    in Loop: Header=BB0_123 Depth=2
	lbu x26 ,  -61 ( x8 )
.LBB0_134:                              //  %if.end.i
                                        //    in Loop: Header=BB0_123 Depth=2
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x25 ,  x8 ,  -72
.LBB0_135:                              //  %if.end.i
                                        //    in Loop: Header=BB0_123 Depth=2
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_136
.LBB0_574:                              //  %if.end.i
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_495
.LBB0_136:                              //  %if.end662
                                        //    in Loop: Header=BB0_123 Depth=2
	xori x15 ,  x14 ,  3
	lw x14 ,  -688 ( x8 )
	add x20 ,  x20 ,  x24
	add x24 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
.LBB0_137:                              //  %if.end704
                                        //    in Loop: Header=BB0_123 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_121
.LBB0_138:                              //  %land.lhs.true708
                                        //    in Loop: Header=BB0_123 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_121
.LBB0_139:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB0_575
.LBB0_576:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_502
.LBB0_575:
	jal x0, .LBB0_522
.LBB0_140:                              //  %if.then938
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x26 ,  x25 ,  16
	beq x0, x26, .LBB0_264
.LBB0_141:                              //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x8 ,  -72
	jal x0, .LBB0_266
.LBB0_142:                              //    in Loop: Header=BB0_4 Depth=1
	addi x26 ,  x0 ,  349
.LBB0_143:                              //  %sw.bb1328
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  3456&4095
	lui x13 ,  (3456>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	or x24 ,  x13 ,  x25
	beq x0, x26, .LBB0_150
.LBB0_144:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x0
	bltu x14, x15, .LBB0_152
.LBB0_145:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x25
	jal x0, .LBB0_153
.LBB0_146:                              //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  349
.LBB0_147:                              //  %sw.bb1491
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	call _localeconv_r
	add x15 ,  x0 ,  x0
	ori x25 ,  x25 ,  1920
	beq x0, x24, .LBB0_151
.LBB0_148:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x10 )
	sw x15 ,  -740 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	bltu x27, x26, .LBB0_189
.LBB0_149:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_190
.LBB0_150:                              //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x0
	add x25 ,  x0 ,  x23
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	bltu x0, x15, .LBB0_178
	jal x0, .LBB0_181
.LBB0_151:                              //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
	add x26 ,  x0 ,  x15
	add x23 ,  x0 ,  x15
	sw x15 ,  -728 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x15
	jal x0, .LBB0_268
.LBB0_152:                              //    in Loop: Header=BB0_4 Depth=1
	addi x27 ,  x23 ,  -349
.LBB0_153:                              //  %for.body1339.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x25
	jal x0, .LBB0_156
.LBB0_189:                              //    in Loop: Header=BB0_4 Depth=1
	addi x14 ,  x23 ,  -349
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
.LBB0_190:                              //  %for.body1504.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x13 ,  x8 ,  -678
	add x26 ,  x0 ,  x15
	add x23 ,  x0 ,  x15
	add x27 ,  x0 ,  x15
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -728 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_193
.LBB0_191:                              //  %if.then1652
                                        //    in Loop: Header=BB0_193 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB0_192:                              //  %if.end1660
                                        //    in Loop: Header=BB0_193 Depth=2
	addi x15 ,  x8 ,  -678
	addi x24 ,  x24 ,  -1
	add x13 ,  x27 ,  x15
	beq x0, x24, .LBB0_240
.LBB0_193:                              //  %for.body1504
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x18 )
	addi x11 ,  x0 ,  78
	lbu x14 ,  0 ( x15 )
	addi x12 ,  x14 ,  -43
	bltu x11, x12, .LBB0_225
.LBB0_194:                              //  %for.body1504
                                        //    in Loop: Header=BB0_193 Depth=2
	lui x30 ,  JTI0_2&4095
	lui x11 ,  (JTI0_2>>12)&1048575
	slli x12 ,  x12 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	add x12 ,  x11 ,  x12
	lw x12 ,  0 ( x12 )
	jalr x0 ,  0 ( x12 )
.LBB0_195:                              //  %sw.bb1519
                                        //    in Loop: Header=BB0_193 Depth=2
	slli x13 ,  x26 ,  24&31
	slli x12 ,  x23 ,  24&31
	srai x13 ,  x13 ,  24&31
	srai x12 ,  x12 ,  24&31
	sub x13 ,  x0 ,  x13
	bne x12, x13, .LBB0_240
.LBB0_196:                              //  %if.then1525
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x25 ,  x25 ,  -385
.LBB0_197:                              //  %fok
                                        //    in Loop: Header=BB0_193 Depth=2
	addi x13 ,  x8 ,  -678
	add x13 ,  x27 ,  x13
	addi x27 ,  x27 ,  1
	sb x14 ,  0 ( x13 )
.LBB0_198:                              //  %fskip
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x14 ,  4 ( x18 )
	addi x20 ,  x20 ,  1
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB0_191
.LBB0_199:                              //  %if.else1655
                                        //    in Loop: Header=BB0_193 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_192
	jal x0, .LBB0_240
.LBB0_200:                              //  %sw.bb1528
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  128
	beq x0, x13, .LBB0_240
.LBB0_201:                              //  %if.then1531
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x25 ,  x25 ,  -129
	jal x0, .LBB0_197
.LBB0_202:                              //  %sw.bb1563
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x23 ,  255
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB0_240
.LBB0_203:                              //    in Loop: Header=BB0_193 Depth=2
	addi x23 ,  x0 ,  2
	jal x0, .LBB0_197
.LBB0_204:                              //  %sw.bb1611
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x12 ,  x25 ,  1280
	xori x12 ,  x12 ,  1024
	beq x0, x12, .LBB0_207
.LBB0_205:                              //  %lor.lhs.false1615
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x12 ,  x25 ,  1024
	beq x0, x12, .LBB0_240
.LBB0_206:                              //  %lor.lhs.false1615
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x12 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x12, .LBB0_240
.LBB0_207:                              //  %if.then1620
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x11 ,  x25 ,  512
	add x12 ,  x0 ,  x0
	bne x11, x12, .LBB0_209
.LBB0_208:                              //    in Loop: Header=BB0_193 Depth=2
	lw x11 ,  -720 ( x8 )           //  4-byte Folded Reload
	sw x13 ,  -728 ( x8 )           //  4-byte Folded Spill
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x10 ,  x11
	sw x11 ,  -724 ( x8 )           //  4-byte Folded Spill
.LBB0_209:                              //  %if.then1620
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  -1921
	sw x12 ,  -716 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x13 ,  384
	jal x0, .LBB0_197
.LBB0_210:                              //  %sw.bb1593
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  2
	bltu x0, x13, .LBB0_240
.LBB0_211:                              //    in Loop: Header=BB0_193 Depth=2
	addi x26 ,  x0 ,  3
	jal x0, .LBB0_197
.LBB0_212:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  1792
	xori x13 ,  x13 ,  1792
	bltu x0, x13, .LBB0_231
.LBB0_213:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x13, .LBB0_231
.LBB0_214:                              //  %sw.bb1569
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	bltu x0, x13, .LBB0_231
.LBB0_215:                              //  %if.then1580
                                        //    in Loop: Header=BB0_193 Depth=2
	slti x26 ,  x0 ,  1
	jal x0, .LBB0_220
.LBB0_216:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  1792
	xori x12 ,  x13 ,  1792
	andi x13 ,  x23 ,  255
	bltu x0, x12, .LBB0_234
.LBB0_217:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x12 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x12, .LBB0_234
.LBB0_218:                              //  %sw.bb1534
                                        //    in Loop: Header=BB0_193 Depth=2
	bltu x0, x13, .LBB0_234
.LBB0_219:                              //  %if.then1545
                                        //    in Loop: Header=BB0_193 Depth=2
	slti x23 ,  x0 ,  1
.LBB0_220:                              //  %fok
                                        //    in Loop: Header=BB0_193 Depth=2
	add x13 ,  x0 ,  x0
	andi x25 ,  x25 ,  -1921
	sw x13 ,  -716 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_197
.LBB0_221:                              //  %sw.bb1599
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  6
	bltu x0, x13, .LBB0_240
.LBB0_222:                              //    in Loop: Header=BB0_193 Depth=2
	addi x26 ,  x0 ,  7
	jal x0, .LBB0_197
.LBB0_223:                              //  %sw.bb1605
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  7
	bltu x0, x13, .LBB0_240
.LBB0_224:                              //    in Loop: Header=BB0_193 Depth=2
	addi x26 ,  x0 ,  8
	jal x0, .LBB0_197
.LBB0_225:                              //  %sw.default1630
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  512
	beq x0, x13, .LBB0_240
.LBB0_226:                              //  %sw.default1630
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x13 ,  -740 ( x8 )           //  4-byte Folded Reload
	lbu x13 ,  0 ( x13 )
	bne x14, x13, .LBB0_240
.LBB0_227:                              //  %if.then1640
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	andi x25 ,  x25 ,  -641
	sw x13 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_197
.LBB0_228:                              //  %sw.bb1507
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x25 ,  256
	beq x0, x13, .LBB0_195
.LBB0_229:                              //  %if.then1510
                                        //    in Loop: Header=BB0_193 Depth=2
	lw x14 ,  -716 ( x8 )           //  4-byte Folded Reload
	andi x25 ,  x25 ,  -129
	addi x14 ,  x14 ,  1
	sw x14 ,  -716 ( x8 )           //  4-byte Folded Spill
	lw x14 ,  -736 ( x8 )           //  4-byte Folded Reload
	beq x0, x14, .LBB0_239
.LBB0_230:                              //  %if.then1514
                                        //    in Loop: Header=BB0_193 Depth=2
	addi x14 ,  x14 ,  -1
	addi x24 ,  x24 ,  1
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_198
.LBB0_231:                              //  %if.end1582
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x12 ,  x13 ,  5
	beq x0, x12, .LBB0_238
.LBB0_232:                              //  %if.end1582
                                        //    in Loop: Header=BB0_193 Depth=2
	xori x13 ,  x13 ,  3
	beq x0, x13, .LBB0_238
	jal x0, .LBB0_240
.LBB0_234:                              //  %if.end1547
                                        //    in Loop: Header=BB0_193 Depth=2
	xori x13 ,  x13 ,  2
	bltu x0, x13, .LBB0_236
.LBB0_235:                              //    in Loop: Header=BB0_193 Depth=2
	addi x23 ,  x0 ,  3
	jal x0, .LBB0_197
.LBB0_236:                              //  %if.end1552
                                        //    in Loop: Header=BB0_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x12 ,  x13 ,  4
	beq x0, x12, .LBB0_238
.LBB0_237:                              //  %if.end1552
                                        //    in Loop: Header=BB0_193 Depth=2
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB0_240
.LBB0_238:                              //  %if.then1560
                                        //    in Loop: Header=BB0_193 Depth=2
	addi x26 ,  x26 ,  1
	jal x0, .LBB0_197
.LBB0_239:                              //    in Loop: Header=BB0_193 Depth=2
	add x14 ,  x0 ,  x0
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_198
.LBB0_240:                              //  %for.end1661
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_267
.LBB0_241:                              //    in Loop: Header=BB0_4 Depth=1
	andi x25 ,  x25 ,  -257
	jal x0, .LBB0_268
.LBB0_242:                              //  %for.cond413.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
.LBB0_243:                              //  %for.cond413
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  4 ( x18 )
	bge x15, x23, .LBB0_294
.LBB0_244:                              //  %if.then417
                                        //    in Loop: Header=BB0_243 Depth=2
	lw x14 ,  0 ( x18 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sub x23 ,  x23 ,  x15
	add x24 ,  x24 ,  x15
	add x14 ,  x15 ,  x14
	sw x14 ,  0 ( x18 )
	call __ssrefill_r
	beq x0, x10, .LBB0_243
.LBB0_245:                              //  %if.then424
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_295
	jal x0, .LBB0_522
.LBB0_246:                              //  %while.cond751.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x24 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x24
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB0_247
.LBB0_577:                              //  %while.cond751.preheader
	jal x0, .LBB0_525
.LBB0_247:                              //  %while.body756.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x14 ,  x20 ,  1
	addi x23 ,  x23 ,  -1
	jal x0, .LBB0_249
.LBB0_248:                              //  %if.end778
                                        //    in Loop: Header=BB0_249 Depth=2
	lbu x14 ,  0 ( x15 )
	addi x23 ,  x23 ,  -1
	add x13 ,  x14 ,  x24
	addi x14 ,  x20 ,  1
	lbu x13 ,  0 ( x13 )
	beq x0, x13, .LBB0_43
.LBB0_249:                              //  %while.body756
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x20 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x0, x23, .LBB0_43
.LBB0_250:                              //  %if.end766
                                        //    in Loop: Header=BB0_249 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB0_248
.LBB0_251:                              //  %land.lhs.true770
                                        //    in Loop: Header=BB0_249 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_43
.LBB0_252:                              //  %land.lhs.true770.if.end778_crit_edge
                                        //    in Loop: Header=BB0_249 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB0_248
.LBB0_253:                              //  %while.cond1155.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_308
.LBB0_254:                              //  %while.body1162.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x14 ,  x0 ,  1
	jal x0, .LBB0_256
.LBB0_255:                              //  %if.end1180
                                        //    in Loop: Header=BB0_256 Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	add x13 ,  x14 ,  x13
	addi x14 ,  x24 ,  1
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	bltu x0, x13, .LBB0_309
.LBB0_256:                              //  %while.body1162
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x24 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x23, x24, .LBB0_309
.LBB0_257:                              //  %if.end1172
                                        //    in Loop: Header=BB0_256 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB0_255
.LBB0_258:                              //  %land.lhs.true1176
                                        //    in Loop: Header=BB0_256 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_309
.LBB0_259:                              //  %land.lhs.true1176.if.end1180_crit_edge
                                        //    in Loop: Header=BB0_256 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB0_255
.LBB0_260:                              //  %if.else236
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_310
.LBB0_261:                              //  %if.else291
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	add x24 ,  x0 ,  x27
	add x26 ,  x0 ,  x27
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x27 ,  -716 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_376
	jal x0, .LBB0_521
.LBB0_262:                              //  %if.else547
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_314
.LBB0_263:                              //  %if.else607
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x26 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -720 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_407
	jal x0, .LBB0_522
.LBB0_264:                              //  %if.else946
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB0_318
.LBB0_265:                              //  %if.else1006
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
.LBB0_266:                              //  %if.end1009
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x27
	sw x27 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_429
.LBB0_267:                              //    in Loop: Header=BB0_4 Depth=1
	add x15 ,  x0 ,  x0
.LBB0_268:                              //  %for.end1661.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x15 ,  -732 ( x8 )           //  4-byte Folded Spill
	slli x15 ,  x23 ,  24&31
	slti x14 ,  x0 ,  1
	srai x15 ,  x15 ,  24&31
	addi x15 ,  x15 ,  -1
	bltu x14, x15, .LBB0_269
.LBB0_578:                              //  %for.end1661.thread
	jal x0, .LBB0_533
.LBB0_269:                              //  %if.end1681
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x15 ,  x26 ,  24&31
	addi x13 ,  x0 ,  6
	srai x15 ,  x15 ,  24&31
	addi x14 ,  x15 ,  -1
	bltu x13, x14, .LBB0_275
.LBB0_270:                              //  %if.then1686
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x15 ,  x15 ,  3
	beq x0, x15, .LBB0_271
.LBB0_579:                              //  %if.then1686
	jal x0, .LBB0_540
.LBB0_271:                              //  %while.cond1691.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x26 ,  255
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB0_275
.LBB0_272:                              //  %while.body1696.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x26 ,  -4
	addi x24 ,  x8 ,  -679
	andi x23 ,  x15 ,  255
.LBB0_273:                              //  %while.body1696
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x27 ,  x24
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _sungetc_r
	lui x30 ,  -16777216&4095
	lui x14 ,  (-16777216>>12)&1048575
	slli x15 ,  x26 ,  24&31
	addi x27 ,  x27 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	srai x26 ,  x15 ,  24&31
	addi x15 ,  x0 ,  3
	blt x15, x26, .LBB0_273
.LBB0_274:                              //  %if.end1714.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x15 ,  x23 ,  -1
	add x20 ,  x15 ,  x20
.LBB0_275:                              //  %if.end1714
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x15 ,  x8 ,  -678
	add x24 ,  x27 ,  x15
	andi x15 ,  x25 ,  256
	bltu x0, x15, .LBB0_277
.LBB0_276:                              //    in Loop: Header=BB0_4 Depth=1
	add x23 ,  x0 ,  x24
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_43
	jal x0, .LBB0_282
.LBB0_277:                              //  %if.then1717
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1024
	beq x0, x15, .LBB0_278
.LBB0_580:                              //  %if.then1717
	jal x0, .LBB0_543
.LBB0_278:                              //  %if.end1731
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x11 ,  -1 ( x24 )
	ori x15 ,  x11 ,  32
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB0_280
.LBB0_279:                              //    in Loop: Header=BB0_4 Depth=1
	addi x20 ,  x20 ,  -1
	addi x23 ,  x24 ,  -1
	jal x0, .LBB0_281
.LBB0_280:                              //  %if.then1740
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _sungetc_r
	lb x11 ,  -2 ( x24 )
	addi x20 ,  x20 ,  -2
	addi x23 ,  x24 ,  -2
.LBB0_281:                              //  %if.end1745
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	call _sungetc_r
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB0_43
.LBB0_282:                              //  %if.then1751
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  1536
	sb x0 ,  0 ( x23 )
	xori x15 ,  x15 ,  1024
	bltu x0, x15, .LBB0_285
.LBB0_283:                              //  %if.end1766
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -732 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x14
	beq x0, x15, .LBB0_289
.LBB0_284:                              //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x0 ,  x15
	lw x14 ,  -704 ( x8 )           //  4-byte Folded Reload
	bltu x23, x14, .LBB0_288
.LBB0_287:                              //  %if.then1768
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -708 ( x8 )           //  4-byte Folded Reload
.LBB0_288:                              //  %if.then1768
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x2 ,  x2 ,  -16
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	sw x15 ,  8 ( x2 )
	sw x23 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  4 ( x2 )
	call sprintf
	addi x2 ,  x2 ,  16
	jal x0, .LBB0_289
.LBB0_285:                              //  %if.else1759
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_289
.LBB0_286:                              //  %if.end1766.thread2852
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x23 ,  -728 ( x8 )           //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  10
	add x10 ,  x0 ,  x19
	add x24 ,  x0 ,  x15
	addi x11 ,  x23 ,  1
	call _strtol_r
	sub x15 ,  x10 ,  x24
	lw x14 ,  -704 ( x8 )           //  4-byte Folded Reload
	bltu x23, x14, .LBB0_288
	jal x0, .LBB0_287
.LBB0_289:                              //  %if.end1781
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtod_r
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB0_293
.LBB0_290:                              //  %if.else1788
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x25 ,  2
	bltu x0, x15, .LBB0_323
.LBB0_291:                              //  %if.else1794
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -68 ( x8 )
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	addi x15 ,  x25 ,  4
	sw x15 ,  -68 ( x8 )
	call __unorddf2
	lw x25 ,  0 ( x25 )
	beq x0, x10, .LBB0_292
.LBB0_581:                              //  %if.else1794
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_493
.LBB0_292:                              //  %if.else1799
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __truncdfsf2
	jal x0, .LBB0_494
.LBB0_293:                              //  %if.then1786
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x27 ,  x27 ,  1
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x24 ,  4 ( x15 )
	sw x23 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_4
	jal x0, .LBB0_525
.LBB0_294:                              //  %if.else430
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x15 ,  x23
	add x24 ,  x24 ,  x23
	sw x15 ,  4 ( x18 )
	lw x15 ,  0 ( x18 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x18 )
.LBB0_295:                              //  %cleanup439.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB0_4
	jal x0, .LBB0_525
.LBB0_296:                              //  %if.then445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB0_297
.LBB0_582:                              //  %if.then445
	jal x0, .LBB0_525
.LBB0_297:                              //  %if.end449
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x23
	call malloc
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB0_298
.LBB0_583:                              //  %if.end449
	jal x0, .LBB0_524
.LBB0_298:                              //  %if.end454
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x24 ,  0 ( x25 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_330
.LBB0_299:                              //  %if.end454.if.end494_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_333
.LBB0_300:                              //  %if.then789
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB0_301
.LBB0_584:                              //  %if.then789
	jal x0, .LBB0_525
.LBB0_301:                              //  %if.end793
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB0_302
.LBB0_585:                              //  %if.end793
	jal x0, .LBB0_524
.LBB0_302:                              //  %if.end797
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x26 ,  0 ( x25 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_340
.LBB0_303:                              //  %if.end797.if.end837_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_343
.LBB0_304:                              //  %if.then1188
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_305
.LBB0_586:                              //  %if.then1188
	jal x0, .LBB0_525
.LBB0_305:                              //  %if.end1192
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB0_306
.LBB0_587:                              //  %if.end1192
	jal x0, .LBB0_524
.LBB0_306:                              //  %if.end1196
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_355
.LBB0_307:                              //  %if.end1196.if.end1236_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_358
.LBB0_308:                              //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x0
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_588
.LBB0_589:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_588:
	jal x0, .LBB0_525
.LBB0_309:                              //  %while.end1181
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_590
.LBB0_591:                              //  %while.end1181
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_590:                              //  %while.end1181
	jal x0, .LBB0_525
.LBB0_310:                              //  %if.then239
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB0_311
.LBB0_592:                              //  %if.then239
	jal x0, .LBB0_525
.LBB0_311:                              //  %if.end243
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x25 ,  x0 ,  x10
	addi x27 ,  x0 ,  -1
	bltu x0, x25, .LBB0_312
.LBB0_593:                              //  %if.end243
	jal x0, .LBB0_525
.LBB0_312:                              //  %if.end247
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_370
.LBB0_313:                              //  %if.end247.if.end284_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_373
.LBB0_314:                              //  %if.then550
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x26 ,  0 ( x15 )
	bltu x0, x26, .LBB0_315
.LBB0_594:                              //  %if.then550
	jal x0, .LBB0_550
.LBB0_315:                              //  %if.end554
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x13 ,  x0 ,  x10
	addi x25 ,  x0 ,  -1
	bltu x0, x13, .LBB0_316
.LBB0_595:                              //  %if.end554
	jal x0, .LBB0_538
.LBB0_316:                              //  %if.end558
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x13 ,  0 ( x26 )
	sw x13 ,  -716 ( x8 )           //  4-byte Folded Spill
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_399
.LBB0_317:                              //  %if.end558.if.end598_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_402
.LBB0_318:                              //  %if.then949
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x27 ,  0 ( x15 )
	bltu x0, x27, .LBB0_319
.LBB0_596:                              //  %if.then949
	jal x0, .LBB0_551
.LBB0_319:                              //  %if.end953
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	addi x25 ,  x0 ,  -1
	bltu x0, x10, .LBB0_320
.LBB0_597:                              //  %if.end953
	jal x0, .LBB0_538
.LBB0_320:                              //  %if.end957
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x27 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB0_425
.LBB0_321:                              //  %if.end957.if.end997_crit_edge
                                        //    in Loop: Header=BB0_4 Depth=1
	add x24 ,  x0 ,  x10
	lw x10 ,  0 ( x22 )
	jal x0, .LBB0_428
.LBB0_323:                              //  %if.then1791
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x25 ,  -68 ( x8 )
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	addi x15 ,  x25 ,  4
	sw x15 ,  -68 ( x8 )
	call __extenddftf2
	lw x15 ,  0 ( x25 )
	addi x27 ,  x27 ,  1
	sw x13 ,  12 ( x15 )
	sw x12 ,  8 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_598
.LBB0_599:                              //  %if.then1791
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_598:                              //  %if.then1791
	jal x0, .LBB0_525
.LBB0_324:                              //  %if.then167
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_600
.LBB0_601:                              //  %if.then167
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_600:                              //  %if.then167
	jal x0, .LBB0_525
.LBB0_325:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB0_395
	jal x0, .LBB0_398
.LBB0_173:                              //  %if.end1356
                                        //    in Loop: Header=BB0_156 Depth=2
	sltu x14 ,  x0 ,  x27
	addi x23 ,  x23 ,  1
	andi x24 ,  x24 ,  -897
	add x27 ,  x0 ,  x13
	add x26 ,  x14 ,  x26
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	bge x0, x14, .LBB0_176
.LBB0_154:                              //  %if.then1403
                                        //    in Loop: Header=BB0_156 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB0_155:                              //  %for.inc1412
                                        //    in Loop: Header=BB0_156 Depth=2
	addi x26 ,  x26 ,  -1
	beq x0, x26, .LBB0_177
.LBB0_156:                              //  %for.body1339
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x18 )
	addi x12 ,  x0 ,  77
	lbu x14 ,  0 ( x15 )
	addi x13 ,  x14 ,  -43
	bltu x12, x13, .LBB0_177
.LBB0_157:                              //  %for.body1339
                                        //    in Loop: Header=BB0_156 Depth=2
	lui x30 ,  JTI0_3&4095
	lui x12 ,  (JTI0_3>>12)&1048575
	slli x13 ,  x13 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	add x13 ,  x12 ,  x13
	lw x13 ,  0 ( x13 )
	jalr x0 ,  0 ( x13 )
.LBB0_158:                              //  %sw.bb1376
                                        //    in Loop: Header=BB0_156 Depth=2
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	slti x13 ,  x13 ,  11
	bltu x0, x13, .LBB0_177
.LBB0_159:                              //  %if.end1380
                                        //    in Loop: Header=BB0_156 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x24 ,  x13 ,  x24
	jal x0, .LBB0_175
.LBB0_160:                              //  %sw.bb1364
                                        //    in Loop: Header=BB0_156 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	lui x12 ,  (__ssvfscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  __ssvfscanf_r.basefix&4095
	and x24 ,  x13 ,  x24
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x13 ,  1&31
	add x13 ,  x13 ,  x12
	lh x13 ,  0 ( x13 )
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB0_175
.LBB0_161:                              //  %sw.bb1382
                                        //    in Loop: Header=BB0_156 Depth=2
	andi x13 ,  x24 ,  128
	beq x0, x13, .LBB0_177
.LBB0_162:                              //  %if.then1385
                                        //    in Loop: Header=BB0_156 Depth=2
	andi x24 ,  x24 ,  -129
	jal x0, .LBB0_175
.LBB0_163:                              //  %sw.bb1368
                                        //    in Loop: Header=BB0_156 Depth=2
	lw x11 ,  -696 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __ssvfscanf_r.basefix&4095
	lui x12 ,  (__ssvfscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x11 ,  1&31
	add x13 ,  x13 ,  x12
	addi x12 ,  x11 ,  -1
	lh x13 ,  0 ( x13 )
	sltiu x12 ,  x12 ,  8
	bltu x0, x12, .LBB0_514
.LBB0_164:                              //  %if.end1374
                                        //    in Loop: Header=BB0_156 Depth=2
	lui x30 ,  -2945&4095
	lui x12 ,  (-2945>>12)&1048575
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x24 ,  x12 ,  x24
	jal x0, .LBB0_175
.LBB0_165:                              //  %sw.bb1388
                                        //    in Loop: Header=BB0_156 Depth=2
	andi x13 ,  x24 ,  1536
	xori x13 ,  x13 ,  512
	bltu x0, x13, .LBB0_177
.LBB0_166:                              //  %if.then1392
                                        //    in Loop: Header=BB0_156 Depth=2
	addi x13 ,  x0 ,  16
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	andi x13 ,  x24 ,  -1793
	ori x24 ,  x13 ,  1280
	jal x0, .LBB0_175
.LBB0_167:                              //  %sw.bb1342
                                        //    in Loop: Header=BB0_156 Depth=2
	lui x30 ,  2048&4095
	lui x13 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x24
	beq x0, x13, .LBB0_175
.LBB0_168:                              //  %if.end1346
                                        //    in Loop: Header=BB0_156 Depth=2
	lw x12 ,  -696 ( x8 )           //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	bne x12, x13, .LBB0_170
.LBB0_169:                              //    in Loop: Header=BB0_156 Depth=2
	ori x24 ,  x24 ,  512
	addi x12 ,  x0 ,  8
	sw x12 ,  -696 ( x8 )           //  4-byte Folded Spill
.LBB0_170:                              //  %if.end1346
                                        //    in Loop: Header=BB0_156 Depth=2
	andi x12 ,  x24 ,  1024
	bltu x0, x12, .LBB0_174
.LBB0_171:                              //  %if.end1356
                                        //    in Loop: Header=BB0_156 Depth=2
	beq x27, x13, .LBB0_173
.LBB0_172:                              //  %if.end1356
                                        //    in Loop: Header=BB0_156 Depth=2
	addi x13 ,  x27 ,  -1
	jal x0, .LBB0_173
.LBB0_174:                              //  %if.then1354
                                        //    in Loop: Header=BB0_156 Depth=2
	andi x24 ,  x24 ,  -1409
.LBB0_175:                              //  %ok
                                        //    in Loop: Header=BB0_156 Depth=2
	addi x13 ,  x8 ,  -678
	add x13 ,  x25 ,  x13
	addi x25 ,  x25 ,  1
	sb x14 ,  0 ( x13 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB0_154
.LBB0_176:                              //  %if.else1406
                                        //    in Loop: Header=BB0_156 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_155
.LBB0_177:                              //  %for.end1414
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	beq x0, x15, .LBB0_181
.LBB0_178:                              //  %if.then1417
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x0, x25, .LBB0_180
.LBB0_179:                              //  %if.then1421
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x11 ,  -1 ( x26 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _sungetc_r
	addi x26 ,  x26 ,  -1
.LBB0_180:                              //  %if.end1425
                                        //    in Loop: Header=BB0_4 Depth=1
	bne x26, x27, .LBB0_181
.LBB0_602:                              //  %if.end1425
	jal x0, .LBB0_539
.LBB0_181:                              //  %if.end1431
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x24 ,  16
	bltu x0, x15, .LBB0_328
.LBB0_182:                              //  %if.then1435
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	sb x0 ,  0 ( x26 )
	lw x15 ,  -700 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x24 ,  32
	bltu x0, x15, .LBB0_187
.LBB0_183:                              //  %if.else1442
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x24 ,  8
	bltu x0, x15, .LBB0_322
.LBB0_184:                              //  %if.else1448
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x24 ,  4
	bltu x0, x15, .LBB0_326
.LBB0_185:                              //  %if.else1454
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x24 ,  1
	bltu x0, x15, .LBB0_187
.LBB0_186:                              //  %if.else1459
                                        //    in Loop: Header=BB0_4 Depth=1
	andi x15 ,  x24 ,  2
	bltu x0, x15, .LBB0_515
.LBB0_187:                              //  %if.else1473
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB0_188:                              //  %if.end1479
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x15 )
	jal x0, .LBB0_327
.LBB0_322:                              //  %if.then1445
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB0_327
.LBB0_326:                              //  %if.then1451
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB0_327:                              //  %if.end1479
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -712 ( x8 )           //  4-byte Folded Spill
.LBB0_328:                              //  %cleanup1488.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x15 ,  x20 ,  x27
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x23 ,  x15
	add x20 ,  x26 ,  x15
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_603
.LBB0_604:                              //  %cleanup1488.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_603:                              //  %cleanup1488.thread
	jal x0, .LBB0_525
.LBB0_329:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -728 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_605
.LBB0_606:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_43
.LBB0_605:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_503
.LBB0_330:                              //  %if.then462
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_527
.LBB0_331:                              //  %if.end482
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_527
.LBB0_332:                              //  %cleanup491
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_333:                              //  %if.end494
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB0_334:                              //  %if.end505
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x18
	call _sfread_r
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB0_522
.LBB0_335:                              //  %if.end510
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x25, .LBB0_339
.LBB0_336:                              //  %if.end510
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x24, x23, .LBB0_339
.LBB0_337:                              //  %if.then516
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x25 )
	add x11 ,  x0 ,  x24
	call realloc
	beq x0, x10, .LBB0_339
.LBB0_338:                              //  %if.then521
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB0_339:                              //  %cleanup526.thread2735
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20 ,  x20 ,  x24
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_607
.LBB0_608:                              //  %cleanup526.thread2735
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_607:                              //  %cleanup526.thread2735
	jal x0, .LBB0_525
.LBB0_340:                              //  %if.then805
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_527
.LBB0_341:                              //  %if.end825
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_527
.LBB0_342:                              //  %cleanup834
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_343:                              //  %if.end837
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB0_344:                              //  %if.end848
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	sw x25 ,  -716 ( x8 )           //  4-byte Folded Spill
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_354
.LBB0_345:                              //  %while.body854.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x25, .LBB0_466
.LBB0_346:                              //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x26
	jal x0, .LBB0_348
.LBB0_347:                              //  %if.end900
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_474
.LBB0_348:                              //  %while.body854
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x25 )
	addi x25 ,  x25 ,  1
	sub x27 ,  x25 ,  x26
	bltu x27, x24, .LBB0_351
.LBB0_349:                              //  %if.then869
                                        //    in Loop: Header=BB0_348 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x24
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB0_524
.LBB0_350:                              //  %if.end875
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x25 ,  x27 ,  x26
	sw x26 ,  0 ( x15 )
.LBB0_351:                              //  %cleanup.cont883
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB0_474
.LBB0_352:                              //  %if.end888
                                        //    in Loop: Header=BB0_348 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_347
.LBB0_353:                              //  %land.lhs.true892
                                        //    in Loop: Header=BB0_348 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_347
	jal x0, .LBB0_472
.LBB0_354:                              //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x26
	sub x23 ,  x25 ,  x26
	bltu x0, x23, .LBB0_475
	jal x0, .LBB0_525
.LBB0_355:                              //  %if.then1204
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_527
.LBB0_356:                              //  %if.end1224
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_527
.LBB0_357:                              //  %cleanup1233
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_358:                              //  %if.end1236
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB0_359:                              //  %if.end1247
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_369
.LBB0_360:                              //  %while.body1256.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x14, .LBB0_480
.LBB0_361:                              //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x25
	jal x0, .LBB0_363
.LBB0_362:                              //  %if.end1298
                                        //    in Loop: Header=BB0_363 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_486
.LBB0_363:                              //  %while.body1256
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x27 )
	addi x27 ,  x27 ,  1
	sub x26 ,  x27 ,  x25
	bltu x26, x24, .LBB0_366
.LBB0_364:                              //  %if.then1271
                                        //    in Loop: Header=BB0_363 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call realloc
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB0_524
.LBB0_365:                              //  %if.end1277
                                        //    in Loop: Header=BB0_363 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x26 ,  x25
	sw x25 ,  0 ( x15 )
.LBB0_366:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_363 Depth=2
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB0_486
.LBB0_367:                              //  %if.end1290
                                        //    in Loop: Header=BB0_363 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_362
.LBB0_368:                              //  %land.lhs.true1294
                                        //    in Loop: Header=BB0_363 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_362
	jal x0, .LBB0_486
.LBB0_369:                              //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x25
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	bltu x0, x15, .LBB0_487
	jal x0, .LBB0_490
.LBB0_370:                              //  %if.then255
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_525
.LBB0_371:                              //  %if.end275
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_525
.LBB0_372:                              //  %cleanup
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_373:                              //  %if.end284
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x27 ,  x0 ,  32
	add x26 ,  x0 ,  x25
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_376
	jal x0, .LBB0_521
.LBB0_374:                              //  %if.end380
                                        //    in Loop: Header=BB0_376 Depth=2
	beq x0, x23, .LBB0_394
.LBB0_375:                              //  %while.body298
                                        //    in Loop: Header=BB0_376 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB0_521
.LBB0_376:                              //  %if.end303
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_378
.LBB0_377:                              //  %if.end303
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_379
.LBB0_378:                              //  %if.then316
                                        //    in Loop: Header=BB0_376 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_379:                              //  %if.end318
                                        //    in Loop: Header=BB0_376 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_391
.LBB0_380:                              //  %if.end318
                                        //    in Loop: Header=BB0_376 Depth=2
	beq x0, x10, .LBB0_384
.LBB0_381:                              //  %if.end318
                                        //    in Loop: Header=BB0_376 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_521
.LBB0_382:                              //  %if.then334
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x24
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_385
.LBB0_383:                              //  %if.then334
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_386
	jal x0, .LBB0_385
.LBB0_384:                              //  %if.then330
                                        //    in Loop: Header=BB0_376 Depth=2
	add x20 ,  x20 ,  x24
	sw x0 ,  0 ( x25 )
.LBB0_385:                              //  %if.then342
                                        //    in Loop: Header=BB0_376 Depth=2
	addi x23 ,  x23 ,  -1
.LBB0_386:                              //  %if.then347
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_390
.LBB0_387:                              //  %if.then347
                                        //    in Loop: Header=BB0_376 Depth=2
	sub x15 ,  x25 ,  x26
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB0_390
.LBB0_388:                              //  %if.then352
                                        //    in Loop: Header=BB0_376 Depth=2
	slli x11 ,  x27 ,  3&31
	add x10 ,  x0 ,  x26
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB0_524
.LBB0_389:                              //  %if.end357
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x27 ,  x27 ,  1&31
	sw x26 ,  0 ( x15 )
	slli x15 ,  x24 ,  2&31
	add x25 ,  x15 ,  x26
.LBB0_390:                              //  %cleanup.cont365
                                        //    in Loop: Header=BB0_376 Depth=2
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
.LBB0_391:                              //  %if.end368
                                        //    in Loop: Header=BB0_376 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_374
.LBB0_392:                              //  %land.lhs.true372
                                        //    in Loop: Header=BB0_376 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_374
.LBB0_393:                              //  %if.then375
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x24, .LBB0_521
.LBB0_394:                              //  %while.end381
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_398
.LBB0_395:                              //  %while.end381
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x11 ,  x25 ,  x26
	srai x15 ,  x11 ,  2&31
	bgeu x15, x27, .LBB0_398
.LBB0_396:                              //  %if.then391
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_398
.LBB0_397:                              //  %if.then395
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_398:                              //  %cleanup403
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -720 ( x8 )           //  4-byte Folded Reload
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x27 ,  x15 ,  x27
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_609
.LBB0_610:                              //  %cleanup403
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_609:                              //  %cleanup403
	jal x0, .LBB0_525
.LBB0_399:                              //  %if.then566
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_538
.LBB0_400:                              //  %if.end586
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_538
.LBB0_401:                              //  %cleanup595
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_402:                              //  %if.end598
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x13
	add x14 ,  x14 ,  x10
	sw x26 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -720 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB0_407
	jal x0, .LBB0_522
.LBB0_403:                              //    in Loop: Header=BB0_407 Depth=2
	add x25 ,  x0 ,  x14
	lw x26 ,  -720 ( x8 )           //  4-byte Folded Reload
.LBB0_404:                              //  %if.end704.us
                                        //    in Loop: Header=BB0_407 Depth=2
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB0_423
.LBB0_405:                              //  %if.end716.us
                                        //    in Loop: Header=BB0_407 Depth=2
	beq x0, x23, .LBB0_502
.LBB0_406:                              //  %while.body614.us
                                        //    in Loop: Header=BB0_407 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB0_522
.LBB0_407:                              //  %if.end619.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_409
.LBB0_408:                              //  %if.end619.us
                                        //    in Loop: Header=BB0_407 Depth=2
	lw x15 ,  -688 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_410
.LBB0_409:                              //  %if.then633.us
                                        //    in Loop: Header=BB0_407 Depth=2
	addi x10 ,  x8 ,  -688
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_410:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_407 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -688
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_404
.LBB0_411:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_407 Depth=2
	beq x0, x10, .LBB0_415
.LBB0_412:                              //  %if.end635.us
                                        //    in Loop: Header=BB0_407 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_522
.LBB0_413:                              //  %if.then648.us
                                        //    in Loop: Header=BB0_407 Depth=2
	add x13 ,  x0 ,  x26
	add x26 ,  x0 ,  x25
	lw x25 ,  0 ( x25 )
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB0_416
.LBB0_414:                              //    in Loop: Header=BB0_407 Depth=2
	add x25 ,  x0 ,  x26
	addi x27 ,  x0 ,  -1
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x26 ,  x0 ,  x13
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x27 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_419
	jal x0, .LBB0_499
.LBB0_415:                              //  %if.then648.thread.us
                                        //    in Loop: Header=BB0_407 Depth=2
	add x26 ,  x0 ,  x25
	sw x0 ,  0 ( x25 )
	add x25 ,  x0 ,  x0
.LBB0_416:                              //  %if.end.i.us
                                        //    in Loop: Header=BB0_407 Depth=2
	add x27 ,  x0 ,  x0
	addi x10 ,  x8 ,  -60
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x27
	call memset
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	addi x11 ,  x8 ,  -61
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x25
	addi x13 ,  x8 ,  -60
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	slti x15 ,  x0 ,  1
	bne x10, x15, .LBB0_418
.LBB0_417:                              //    in Loop: Header=BB0_407 Depth=2
	lbu x27 ,  -61 ( x8 )
.LBB0_418:                              //  %if.end.i.us
                                        //    in Loop: Header=BB0_407 Depth=2
	add x25 ,  x0 ,  x26
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	lw x26 ,  -720 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x27 ,  x15
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_499
.LBB0_419:                              //  %if.end662.us
                                        //    in Loop: Header=BB0_407 Depth=2
	xori x15 ,  x14 ,  3
	lw x14 ,  -688 ( x8 )
	add x20 ,  x20 ,  x24
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
	beq x0, x26, .LBB0_404
.LBB0_420:                              //  %if.end662.us
                                        //    in Loop: Header=BB0_407 Depth=2
	lw x26 ,  -724 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x10
	add x14 ,  x0 ,  x25
	srai x25 ,  x15 ,  2&31
	bltu x25, x26, .LBB0_403
.LBB0_421:                              //  %if.then688.us
                                        //    in Loop: Header=BB0_407 Depth=2
	slli x11 ,  x26 ,  3&31
	call realloc
	beq x0, x10, .LBB0_537
.LBB0_422:                              //  %if.end694.us
                                        //    in Loop: Header=BB0_407 Depth=2
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	slli x15 ,  x25 ,  2&31
	slli x26 ,  x26 ,  1&31
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	add x25 ,  x15 ,  x10
	add x26 ,  x0 ,  x14
	sw x10 ,  0 ( x14 )
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_405
.LBB0_423:                              //  %land.lhs.true708.us
                                        //    in Loop: Header=BB0_407 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_405
.LBB0_424:                              //  %if.then711
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x24, .LBB0_502
	jal x0, .LBB0_522
.LBB0_425:                              //  %if.then965
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x24 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_538
.LBB0_426:                              //  %if.end985
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_538
.LBB0_427:                              //  %cleanup994
                                        //    in Loop: Header=BB0_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB0_428:                              //  %if.end997
                                        //    in Loop: Header=BB0_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x24
	add x14 ,  x14 ,  x10
	sw x27 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
.LBB0_429:                              //  %if.end1009
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _ctype_&4095
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x24 ,  -716 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB0_508
.LBB0_430:                              //  %if.end1009
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB0_508
.LBB0_431:                              //  %while.body1019.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x26, .LBB0_451
.LBB0_432:                              //  %while.body1019.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x24 ,  x8 ,  -679
.LBB0_433:                              //  %while.body1019.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB0_521
.LBB0_434:                              //  %if.end1024.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	add x15 ,  x26 ,  x15
	addi x26 ,  x26 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_436
.LBB0_435:                              //  %if.end1024.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_437
.LBB0_436:                              //  %if.then1038.us
                                        //    in Loop: Header=BB0_433 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_437:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_433 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_447
.LBB0_438:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_433 Depth=2
	beq x0, x10, .LBB0_441
.LBB0_439:                              //  %if.end1040.us
                                        //    in Loop: Header=BB0_433 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_521
.LBB0_440:                              //  %if.end1040.us.if.then1053.us_crit_edge
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x10 ,  0 ( x25 )
	call iswspace
	beq x0, x10, .LBB0_442
	jal x0, .LBB0_496
.LBB0_441:                              //  %if.then1049.us
                                        //    in Loop: Header=BB0_433 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x25 )
	call iswspace
	bltu x0, x10, .LBB0_496
.LBB0_442:                              //  %if.end1066.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x26
	add x26 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x15 ,  3
	xori x14 ,  x14 ,  4
	sltu x15 ,  x0 ,  x15
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
	beq x0, x27, .LBB0_447
.LBB0_443:                              //  %if.end1066.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x25
	add x25 ,  x0 ,  x27
	lw x27 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x10
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB0_446
.LBB0_444:                              //  %if.then1092.us
                                        //    in Loop: Header=BB0_433 Depth=2
	slli x11 ,  x27 ,  3&31
	call realloc
	beq x0, x10, .LBB0_537
.LBB0_445:                              //  %if.end1098.us
                                        //    in Loop: Header=BB0_433 Depth=2
	slli x15 ,  x24 ,  2&31
	slli x27 ,  x27 ,  1&31
	sw x10 ,  0 ( x25 )
	addi x24 ,  x8 ,  -679
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x15 ,  x10
	sw x27 ,  -720 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x25
	add x25 ,  x0 ,  x15
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_449
	jal x0, .LBB0_448
.LBB0_446:                              //    in Loop: Header=BB0_433 Depth=2
	add x27 ,  x0 ,  x25
	addi x24 ,  x8 ,  -679
	add x25 ,  x0 ,  x14
.LBB0_447:                              //  %if.end1108.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_449
.LBB0_448:                              //  %land.lhs.true1112.us
                                        //    in Loop: Header=BB0_433 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_507
.LBB0_449:                              //  %if.end1120.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB0_508
.LBB0_450:                              //  %if.end1120.us
                                        //    in Loop: Header=BB0_433 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_433
	jal x0, .LBB0_508
.LBB0_451:                              //  %while.body1019.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x24 ,  x8 ,  -679
.LBB0_452:                              //  %while.body1019
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB0_521
.LBB0_453:                              //  %if.end1024
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -678
	add x15 ,  x26 ,  x15
	addi x26 ,  x26 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_455
.LBB0_454:                              //  %if.end1024
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB0_456
.LBB0_455:                              //  %if.then1038
                                        //    in Loop: Header=BB0_452 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB0_456:                              //  %if.end1040
                                        //    in Loop: Header=BB0_452 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB0_462
.LBB0_457:                              //  %if.end1040
                                        //    in Loop: Header=BB0_452 Depth=2
	beq x0, x10, .LBB0_460
.LBB0_458:                              //  %if.end1040
                                        //    in Loop: Header=BB0_452 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_521
.LBB0_459:                              //  %if.end1040.if.then1053_crit_edge
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x10 ,  0 ( x25 )
	call iswspace
	beq x0, x10, .LBB0_461
	jal x0, .LBB0_496
.LBB0_460:                              //  %if.then1049
                                        //    in Loop: Header=BB0_452 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x25 )
	call iswspace
	bltu x0, x10, .LBB0_496
.LBB0_461:                              //  %if.end1066
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x26
	add x26 ,  x0 ,  x0
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x15 ,  3
	xori x14 ,  x14 ,  4
	sltu x15 ,  x0 ,  x15
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
.LBB0_462:                              //  %if.end1108
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_464
.LBB0_463:                              //  %land.lhs.true1112
                                        //    in Loop: Header=BB0_452 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	bltu x0, x10, .LBB0_507
.LBB0_464:                              //  %if.end1120
                                        //    in Loop: Header=BB0_452 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB0_508
.LBB0_465:                              //  %if.end1120
                                        //    in Loop: Header=BB0_452 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_452
	jal x0, .LBB0_508
.LBB0_466:                              //  %while.body854.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x25 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB0_468
.LBB0_467:                              //  %if.end900.us
                                        //    in Loop: Header=BB0_468 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	addi x25 ,  x25 ,  1
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB0_473
.LBB0_468:                              //  %while.body854.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	add x27 ,  x25 ,  x26
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x27 )
	beq x23, x25, .LBB0_473
.LBB0_469:                              //  %if.end888.us
                                        //    in Loop: Header=BB0_468 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_467
.LBB0_470:                              //  %land.lhs.true892.us
                                        //    in Loop: Header=BB0_468 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_467
.LBB0_471:                              //  %if.then895.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB0_472:                              //  %if.then895
                                        //    in Loop: Header=BB0_4 Depth=1
	bne x25, x26, .LBB0_474
	jal x0, .LBB0_522
.LBB0_473:                              //  %while.end901.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB0_474:                              //  %while.end901
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x23 ,  x25 ,  x26
	beq x0, x23, .LBB0_525
.LBB0_475:                              //  %if.end908
                                        //    in Loop: Header=BB0_4 Depth=1
	sb x0 ,  0 ( x25 )
	lw x25 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x25, .LBB0_479
.LBB0_476:                              //  %if.end908
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB0_479
.LBB0_477:                              //  %if.then915
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x25 )
	call realloc
	beq x0, x10, .LBB0_479
.LBB0_478:                              //  %if.then920
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB0_479:                              //  %cleanup925.thread2791
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20 ,  x20 ,  x23
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_611
.LBB0_612:                              //  %cleanup925.thread2791
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_611:                              //  %cleanup925.thread2791
	jal x0, .LBB0_525
.LBB0_480:                              //  %while.body1256.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	add x27 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB0_482
.LBB0_481:                              //  %if.end1298.us
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	addi x27 ,  x27 ,  1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB0_485
.LBB0_482:                              //  %while.body1256.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	add x26 ,  x27 ,  x25
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x26 )
	beq x23, x27, .LBB0_485
.LBB0_483:                              //  %if.end1290.us
                                        //    in Loop: Header=BB0_482 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB0_481
.LBB0_484:                              //  %land.lhs.true1294.us
                                        //    in Loop: Header=BB0_482 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ssrefill_r
	beq x0, x10, .LBB0_481
.LBB0_485:                              //  %while.end1299.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x27 ,  x26 ,  1
.LBB0_486:                              //  %while.end1299
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	beq x0, x15, .LBB0_490
.LBB0_487:                              //  %while.end1299
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB0_490
.LBB0_488:                              //  %if.then1309
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB0_490
.LBB0_489:                              //  %if.then1314
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB0_490:                              //  %cleanup1322
                                        //    in Loop: Header=BB0_4 Depth=1
	add x20 ,  x20 ,  x23
.LBB0_491:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB0_492:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_613
.LBB0_614:                              //  %if.end1327
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_613:                              //  %if.end1327
	jal x0, .LBB0_525
.LBB0_493:                              //  %if.then1797
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
.LBB0_494:                              //  %if.end1803
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x25 )
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_615
.LBB0_616:                              //  %if.end1803
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_615:                              //  %if.end1803
	jal x0, .LBB0_525
.LBB0_495:                              //    in Loop: Header=BB0_4 Depth=1
	add x26 ,  x0 ,  x0
	add x15 ,  x0 ,  x26
	add x10 ,  x0 ,  x26
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -692 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB0_500
	jal x0, .LBB0_502
.LBB0_496:                              //  %while.cond1057.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	beq x0, x26, .LBB0_508
.LBB0_497:                              //  %while.body1060
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x26 ,  x24
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _sungetc_r
	addi x26 ,  x26 ,  -1
	bltu x0, x26, .LBB0_497
	jal x0, .LBB0_508
.LBB0_498:                              //  %if.then172
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_617
.LBB0_618:                              //  %if.then172
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_617:                              //  %if.then172
	jal x0, .LBB0_525
.LBB0_499:                              //    in Loop: Header=BB0_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x24, .LBB0_502
.LBB0_500:                              //  %while.body656.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x23 ,  x8 ,  -679
.LBB0_501:                              //  %while.body656
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x24 ,  x23
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _sungetc_r
	addi x24 ,  x24 ,  -1
	bltu x0, x24, .LBB0_501
.LBB0_502:                              //  %while.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -728 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_503
.LBB0_619:                              //  %while.end717
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_43
.LBB0_503:                              //  %if.then720
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0 ,  0 ( x25 )
	beq x0, x26, .LBB0_492
.LBB0_504:                              //  %if.then720
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -724 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB0_492
.LBB0_505:                              //  %if.then731
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x26 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_492
.LBB0_506:                              //  %if.then736
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x26 )
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_620
.LBB0_621:                              //  %if.then736
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_620:                              //  %if.then736
	jal x0, .LBB0_525
.LBB0_507:                              //  %if.then1115
                                        //    in Loop: Header=BB0_4 Depth=1
	bltu x0, x26, .LBB0_521
.LBB0_508:                              //  %while.end1121
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB0_510
.LBB0_509:                              //    in Loop: Header=BB0_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_622
.LBB0_623:                              //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_622:
	jal x0, .LBB0_525
.LBB0_510:                              //  %if.then1124
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x0 ,  0 ( x25 )
	beq x0, x27, .LBB0_491
.LBB0_511:                              //  %if.then1124
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB0_491
.LBB0_512:                              //  %if.then1135
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10 ,  0 ( x27 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB0_491
.LBB0_513:                              //  %if.then1140
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x10 ,  0 ( x27 )
	jal x0, .LBB0_491
.LBB0_514:                              //  %for.end1414.loopexit.split.loop.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	bltu x0, x15, .LBB0_178
	jal x0, .LBB0_181
.LBB0_515:                              //  %if.then1462
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  -700 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _strtoul_r&4095
	lui x15 ,  (_strtoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB0_518
.LBB0_516:                              //  %if.else1468
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoll_r
	jal x0, .LBB0_519
.LBB0_517:                              //  %if.then183
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	srai x14 ,  x20 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB0_624
.LBB0_625:                              //  %if.then183
                                        //    in Loop: Header=BB0_4 Depth=1
	jal x0, .LBB0_4
.LBB0_624:                              //  %if.then183
	jal x0, .LBB0_525
.LBB0_518:                              //  %if.then1465
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoull_r
.LBB0_519:                              //  %if.end1471
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB0_188
.LBB0_520:
	add x27 ,  x0 ,  x0
	jal x0, .LBB0_532
.LBB0_521:                              //  %cleanup1145.thread2815
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB0_522:                              //  %input_failure
	beq x0, x27, .LBB0_524
.LBB0_523:                              //  %land.lhs.true1817
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_525
.LBB0_524:                              //  %land.lhs.true1817
	addi x27 ,  x0 ,  -1
.LBB0_525:                              //  %do.body1822
	beq x0, x22, .LBB0_532
.LBB0_526:                              //  %if.then1824
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB0_530
.LBB0_527:                              //  %for.cond1828.preheader
	lhu x15 ,  6 ( x22 )
	addi x27 ,  x0 ,  -1
	beq x0, x15, .LBB0_530
.LBB0_528:                              //  %for.body1833.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB0_529:                              //  %for.body1833
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x22 )
	add x15 ,  x9 ,  x15
	lw x15 ,  0 ( x15 )
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  0 ( x22 )
	addi x18 ,  x18 ,  1
	add x15 ,  x9 ,  x15
	addi x9 ,  x9 ,  4
	lw x15 ,  0 ( x15 )
	sw x0 ,  0 ( x15 )
	lhu x15 ,  6 ( x22 )
	bltu x18, x15, .LBB0_529
.LBB0_530:                              //  %if.end1841
	lw x10 ,  0 ( x22 )
	beq x0, x10, .LBB0_532
.LBB0_531:                              //  %if.then1844
	call free
.LBB0_532:                              //  %cleanup1850
	add x10 ,  x0 ,  x27
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
.LBB0_533:                              //  %while.cond1671.preheader
	bge x0, x27, .LBB0_539
.LBB0_534:                              //  %while.body1675.preheader
	addi x9 ,  x8 ,  -678
	add x20 ,  x27 ,  x9
.LBB0_535:                              //  %while.body1675
                                        //  =>This Inner Loop Header: Depth=1
	lb x11 ,  -1 ( x20 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _sungetc_r
	addi x20 ,  x20 ,  -1
	bltu x9, x20, .LBB0_535
	jal x0, .LBB0_539
.LBB0_537:
	addi x25 ,  x0 ,  -1
.LBB0_538:                              //  %cleanup1145.thread
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB0_526
	jal x0, .LBB0_532
.LBB0_540:                              //  %while.cond1703.preheader
	addi x9 ,  x8 ,  -679
	bge x0, x27, .LBB0_539
.LBB0_541:                              //  %while.body1707
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x27 ,  x9
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _sungetc_r
	addi x27 ,  x27 ,  -1
	blt x0, x27, .LBB0_541
	jal x0, .LBB0_539
.LBB0_543:                              //  %while.cond1721.preheader
	bge x0, x27, .LBB0_539
.LBB0_544:                              //  %while.body1725.preheader
	addi x9 ,  x8 ,  -679
.LBB0_545:                              //  %while.body1725
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x27 ,  x9
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _sungetc_r
	addi x27 ,  x27 ,  -1
	blt x0, x27, .LBB0_545
.LBB0_539:
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB0_526
	jal x0, .LBB0_532
.LBB0_550:
	add x25 ,  x0 ,  x27
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB0_526
	jal x0, .LBB0_532
.LBB0_551:
	lw x25 ,  -712 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB0_526
	jal x0, .LBB0_532
.Lfunc_end0:
	.size	__ssvfscanf_r, .Lfunc_end0-__ssvfscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_39
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_21
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_16
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_44
	.long	.LBB0_525
	.long	.LBB0_47
	.long	.LBB0_49
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_18
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_50
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_52
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_45
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_53
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_44
	.long	.LBB0_525
	.long	.LBB0_48
	.long	.LBB0_54
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_44
	.long	.LBB0_23
	.long	.LBB0_55
	.long	.LBB0_18
	.long	.LBB0_525
	.long	.LBB0_26
	.long	.LBB0_30
	.long	.LBB0_57
	.long	.LBB0_63
	.long	.LBB0_64
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_65
	.long	.LBB0_13
	.long	.LBB0_66
	.long	.LBB0_525
	.long	.LBB0_525
	.long	.LBB0_45
	.long	.LBB0_525
	.long	.LBB0_13
JTI0_1:
	.long	.LBB0_79
	.long	.LBB0_85
	.long	.LBB0_91
	.long	.LBB0_97
	.long	.LBB0_99
JTI0_2:
	.long	.LBB0_200
	.long	.LBB0_225
	.long	.LBB0_200
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_228
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_195
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_202
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_204
	.long	.LBB0_210
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_212
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_216
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_221
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_223
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_202
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_204
	.long	.LBB0_210
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_212
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_216
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_221
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_225
	.long	.LBB0_223
JTI0_3:
	.long	.LBB0_161
	.long	.LBB0_177
	.long	.LBB0_161
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_167
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_160
	.long	.LBB0_163
	.long	.LBB0_163
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_165
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_158
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_177
	.long	.LBB0_165
                                        //  -- End function
	.address_space	0
	.type	__ssvfscanf_r.basefix,@object //  @__ssvfscanf_r.basefix
	.p2align	1
__ssvfscanf_r.basefix:
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
	.size	__ssvfscanf_r.basefix, 34

	.address_space	0
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"e%ld"
	.size	.str, 5

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
