	.text
	.file	"vfwscanf.c"
	.globl	vfwscanf                //  -- Begin function vfwscanf
	.type	vfwscanf,@function
vfwscanf:                               //  @vfwscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x19 ,  0 ( x15 )
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x19
	call __sinit
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, __svfwscanf_r
.Lfunc_end0:
	.size	vfwscanf, .Lfunc_end0-vfwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfwscanf_r           //  -- Begin function __svfwscanf_r
	.type	__svfwscanf_r,@function
__svfwscanf_r:                          //  @__svfwscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1536
	.cfi_adjust_cfa_offset 1536
	sw x8 ,  1528 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  1528
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
	lb x9 ,  0 ( x12 )
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then8
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x18 )
	lw x14 ,  100 ( x18 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x18 )
.LBB1_2:                                //  %do.end
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_4
.LBB1_3:                                //  %if.end17.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	addi x14 ,  x8 ,  -1464
	add x15 ,  x0 ,  x0
	addi x23 ,  x0 ,  -1
	addi x13 ,  x14 ,  4
	add x24 ,  x0 ,  x15
	add x22 ,  x0 ,  x15
	add x21 ,  x0 ,  x15
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1480 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1492 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
	sw x13 ,  -1496 ( x8 )          //  4-byte Folded Spill
	addi x13 ,  x14 ,  1356
	addi x14 ,  x14 ,  1352
	sw x13 ,  -1500 ( x8 )          //  4-byte Folded Spill
	sw x14 ,  -1504 ( x8 )          //  4-byte Folded Spill
	add x10 ,  x0 ,  x26
	addi x27 ,  x27 ,  4
	call iswspace
	bltu x0, x10, .LBB1_11
	jal x0, .LBB1_14
.LBB1_4:
	add x22 ,  x0 ,  x0
	jal x0, .LBB1_513
.LBB1_5:                                //  %cleanup1066
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
.LBB1_6:                                //  %if.end1230
	addi x22 ,  x22 ,  1
.LBB1_7:                                //  %if.end1239
	addi x23 ,  x0 ,  -1
.LBB1_8:                                //  %if.end1239
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
.LBB1_9:                                //  %if.end30
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
.LBB1_543:                              //  %if.end30
	jal x0, .LBB1_506
.LBB1_10:                               //  %if.end17
	add x10 ,  x0 ,  x26
	addi x27 ,  x27 ,  4
	call iswspace
	beq x0, x10, .LBB1_14
.LBB1_11:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	xori x15 ,  x20 ,  -1
	beq x0, x15, .LBB1_9
.LBB1_12:                               //  %land.rhs
                                        //    in Loop: Header=BB1_11 Depth=1
	add x10 ,  x0 ,  x20
	call iswspace
	bltu x0, x10, .LBB1_11
.LBB1_13:                               //  %if.then28
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_14:                               //  %if.end31
	xori x15 ,  x26 ,  37
	bltu x0, x15, .LBB1_42
.LBB1_15:                               //  %again.preheader
	add x25 ,  x0 ,  x0
	add x20 ,  x0 ,  x25
.LBB1_16:                               //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_17 Depth 2
                                        //        Child Loop BB1_18 Depth 3
	add x15 ,  x0 ,  x27
.LBB1_17:                               //  %again
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_18 Depth 3
	lw x26 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x26 ,  -37
	bgeu x13, x14, .LBB1_18
.LBB1_544:                              //  %again
	jal x0, .LBB1_506
.LBB1_18:                               //  %again
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_17 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lui x30 ,  JTI1_0&4095
	lui x13 ,  (JTI1_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	addi x27 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB1_19:                               //  %sw.bb96
                                        //    in Loop: Header=BB1_17 Depth=2
	andi x14 ,  x25 ,  15
	add x15 ,  x0 ,  x27
	beq x0, x14, .LBB1_17
	jal x0, .LBB1_506
.LBB1_20:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_18 Depth=3
	andi x14 ,  x25 ,  15
	beq x0, x14, .LBB1_21
.LBB1_545:                              //  %sw.bb72
	jal x0, .LBB1_506
.LBB1_21:                               //  %if.end76
                                        //    in Loop: Header=BB1_18 Depth=3
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  104
	beq x14, x13, .LBB1_27
.LBB1_22:                               //  %if.end76
                                        //    in Loop: Header=BB1_18 Depth=3
	addi x14 ,  x0 ,  4
	jal x0, .LBB1_26
.LBB1_23:                               //  %sw.bb54
                                        //    in Loop: Header=BB1_18 Depth=3
	andi x14 ,  x25 ,  15
	beq x0, x14, .LBB1_24
.LBB1_546:                              //  %sw.bb54
	jal x0, .LBB1_506
.LBB1_24:                               //  %if.end58
                                        //    in Loop: Header=BB1_18 Depth=3
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  108
	beq x14, x13, .LBB1_28
.LBB1_25:                               //  %if.end58
                                        //    in Loop: Header=BB1_18 Depth=3
	slti x14 ,  x0 ,  1
.LBB1_26:                               //  %if.end58
                                        //    in Loop: Header=BB1_18 Depth=3
	add x15 ,  x0 ,  x27
	jal x0, .LBB1_30
.LBB1_27:                               //    in Loop: Header=BB1_18 Depth=3
	addi x14 ,  x0 ,  8
	jal x0, .LBB1_29
.LBB1_28:                               //    in Loop: Header=BB1_18 Depth=3
	addi x14 ,  x0 ,  2
.LBB1_29:                               //    in Loop: Header=BB1_18 Depth=3
	addi x15 ,  x15 ,  8
.LBB1_30:                               //    in Loop: Header=BB1_18 Depth=3
	or x25 ,  x25 ,  x14
	lw x26 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x26 ,  -37
	bgeu x13, x14, .LBB1_18
	jal x0, .LBB1_506
.LBB1_31:                               //  %sw.bb113
                                        //    in Loop: Header=BB1_16 Depth=1
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB1_32
.LBB1_547:                              //  %sw.bb113
	jal x0, .LBB1_506
.LBB1_32:                               //  %if.end117
                                        //    in Loop: Header=BB1_16 Depth=1
	add x10 ,  x0 ,  x20
	addi x11 ,  x0 ,  10
	call __mulsi3
	add x15 ,  x26 ,  x10
	addi x20 ,  x15 ,  -48
	jal x0, .LBB1_16
.LBB1_33:                               //  %sw.bb66
                                        //    in Loop: Header=BB1_16 Depth=1
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_34
.LBB1_548:                              //  %sw.bb66
	jal x0, .LBB1_506
.LBB1_34:                               //  %if.end70
                                        //    in Loop: Header=BB1_16 Depth=1
	ori x25 ,  x25 ,  2
	jal x0, .LBB1_16
.LBB1_35:                               //  %sw.bb47
                                        //    in Loop: Header=BB1_16 Depth=1
	andi x15 ,  x25 ,  159
	or x15 ,  x20 ,  x15
	beq x0, x15, .LBB1_36
.LBB1_549:                              //  %sw.bb47
	jal x0, .LBB1_506
.LBB1_36:                               //  %if.end52
                                        //    in Loop: Header=BB1_16 Depth=1
	ori x25 ,  x25 ,  16
	add x20 ,  x0 ,  x0
	jal x0, .LBB1_16
.LBB1_37:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_16 Depth=1
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB1_38
.LBB1_550:                              //  %sw.bb101
	jal x0, .LBB1_506
.LBB1_38:                               //  %do.body106
                                        //    in Loop: Header=BB1_16 Depth=1
	bltu x0, x24, .LBB1_40
.LBB1_39:                               //  %if.then108
                                        //    in Loop: Header=BB1_16 Depth=1
	add x15 ,  x0 ,  x2
	addi x24 ,  x15 ,  -8
	add x2 ,  x0 ,  x24
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB1_40:                               //  %do.end111
                                        //    in Loop: Header=BB1_16 Depth=1
	ori x25 ,  x25 ,  128
	jal x0, .LBB1_16
.LBB1_41:                               //  %sw.epilog.loopexit5499
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	addi x9 ,  x0 ,  4
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_42:                               //  %literal
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	bltu x0, x15, .LBB1_43
.LBB1_551:                              //  %literal
	jal x0, .LBB1_501
.LBB1_43:                               //  %if.end41
	beq x11, x26, .LBB1_44
.LBB1_552:                              //  %if.end41
	jal x0, .LBB1_522
.LBB1_44:                               //  %if.end46
	addi x21 ,  x21 ,  1
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_45:                               //  %sw.bb122
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	ori x25 ,  x25 ,  512
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_61
.LBB1_46:                               //  %sw.bb152
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x25 ,  1
	ori x25 ,  x25 ,  64
	add x9 ,  x0 ,  x0
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_47:                               //  %sw.bb125
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x25 ,  1
	addi x9 ,  x0 ,  2
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_48:                               //  %sw.bb128
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  94
	beq x14, x13, .LBB1_67
.LBB1_49:                               //  %sw.bb128
	addi x13 ,  x0 ,  4
	jal x0, .LBB1_68
.LBB1_50:                               //  %sw.bb154.loopexit
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x25 ,  64
	add x9 ,  x0 ,  x0
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_51:                               //  %sw.epilog.loopexit
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_65
.LBB1_52:                               //  %sw.epilog.loopexit3680
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x9 ,  x0 ,  3
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_53:                               //  %sw.bb158
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_9
.LBB1_54:                               //  %if.end162
	andi x15 ,  x25 ,  8
	bltu x0, x15, .LBB1_239
.LBB1_55:                               //  %if.else167
	andi x15 ,  x25 ,  4
	beq x0, x15, .LBB1_56
.LBB1_553:                              //  %if.else167
	jal x0, .LBB1_339
.LBB1_56:                               //  %if.else173
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_58
.LBB1_57:                               //  %if.else178
	andi x15 ,  x25 ,  2
	beq x0, x15, .LBB1_58
.LBB1_554:                              //  %if.else178
	jal x0, .LBB1_488
.LBB1_58:                               //  %if.then176
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x21 ,  0 ( x15 )
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_59:                               //  %sw.epilog.loopexit4359
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  8
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x9 ,  x0 ,  3
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_60:                               //  %sw.bb156
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x25 ,  544
.LBB1_61:                               //  %sw.epilog
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  16
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x9 ,  x0 ,  3
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_63:                               //  %sw.epilog.loopexit4
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	addi x9 ,  x0 ,  2
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_64:                               //  %sw.epilog.loopexit4927
	lui x30 ,  _wcstoul_r&4095
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_wcstoul_r>>12)&1048575
.LBB1_65:                               //  %sw.epilog
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -1484 ( x8 )          //  4-byte Folded Spill
	addi x15 ,  x0 ,  10
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	addi x9 ,  x0 ,  3
	andi x15 ,  x25 ,  64
	beq x0, x15, .LBB1_74
	jal x0, .LBB1_78
.LBB1_67:
	addi x27 ,  x15 ,  8
	addi x13 ,  x0 ,  8
.LBB1_68:                               //  %sw.bb128
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	sw x27 ,  -1480 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  0 ( x15 )
	bne x15, x13, .LBB1_70
.LBB1_69:
	addi x27 ,  x27 ,  4
.LBB1_70:                               //  %sw.bb128
	xori x15 ,  x14 ,  94
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	sltiu x15 ,  x15 ,  1
	sw x15 ,  -1488 ( x8 )          //  4-byte Folded Spill
.LBB1_71:                               //  %while.cond140
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x27 )
	addi x27 ,  x27 ,  4
	xori x14 ,  x15 ,  93
	beq x0, x14, .LBB1_73
.LBB1_72:                               //  %while.cond140
                                        //    in Loop: Header=BB1_71 Depth=1
	bltu x0, x15, .LBB1_71
.LBB1_73:                               //  %while.end149
	addi x15 ,  x27 ,  -4
	ori x25 ,  x25 ,  64
	slti x9 ,  x0 ,  1
	sw x15 ,  -1492 ( x8 )          //  4-byte Folded Spill
	andi x15 ,  x25 ,  64
	bltu x0, x15, .LBB1_78
.LBB1_74:                               //  %while.cond194.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x26 ,  x0 ,  x23
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_75
.LBB1_555:                              //  %while.cond194.preheader
	jal x0, .LBB1_504
.LBB1_75:                               //  %land.rhs198
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x23
	call iswspace
	beq x0, x10, .LBB1_77
.LBB1_76:                               //  %while.body202
                                        //    in Loop: Header=BB1_75 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_75
	jal x0, .LBB1_500
.LBB1_77:                               //  %if.end208
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	add x23 ,  x0 ,  x26
.LBB1_78:                               //  %if.end210
	addi x15 ,  x0 ,  4
	bltu x15, x9, .LBB1_8
.LBB1_79:                               //  %if.end210
	lui x30 ,  JTI1_1&4095
	lui x14 ,  (JTI1_1>>12)&1048575
	slli x15 ,  x9 ,  2&31
	sw x22 ,  -1512 ( x8 )          //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_80:                               //  %sw.bb211
	slti x9 ,  x0 ,  1
	add x15 ,  x0 ,  x0
	beq x20, x15, .LBB1_82
.LBB1_81:                               //  %sw.bb211
	add x9 ,  x0 ,  x20
.LBB1_82:                               //  %sw.bb211
	andi x20 ,  x25 ,  16
	andi x15 ,  x25 ,  1
	sw x20 ,  -1528 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_139
.LBB1_83:                               //  %if.else344
	beq x0, x20, .LBB1_198
.LBB1_84:                               //  %land.rhs416.us.preheader
	addi x20 ,  x8 ,  -64
	add x22 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x22
	call memset
	addi x25 ,  x8 ,  -1465
	jal x0, .LBB1_88
.LBB1_85:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_88 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_86
.LBB1_556:                              //  %while.body421.us
	jal x0, .LBB1_537
.LBB1_86:                               //  %if.then432.us
                                        //    in Loop: Header=BB1_88 Depth=1
	addi x9 ,  x9 ,  -1
.LBB1_87:                               //  %if.end468.us
                                        //    in Loop: Header=BB1_88 Depth=1
	addi x22 ,  x22 ,  1
	beq x0, x9, .LBB1_241
.LBB1_88:                               //  %land.rhs416.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x12 ,  x0 ,  x10
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB1_240
.LBB1_89:                               //  %while.body421.us
                                        //    in Loop: Header=BB1_88 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x20
	call _wcrtomb_r
	bltu x0, x10, .LBB1_85
.LBB1_90:                               //  %lor.lhs.false429.us
                                        //    in Loop: Header=BB1_88 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB1_86
	jal x0, .LBB1_87
.LBB1_91:                               //  %sw.bb503
	add x15 ,  x0 ,  x0
	beq x20, x15, .LBB1_93
.LBB1_92:                               //  %sw.bb503
	add x23 ,  x0 ,  x20
.LBB1_93:                               //  %sw.bb503
	andi x9 ,  x25 ,  16
	andi x15 ,  x25 ,  1
	beq x0, x15, .LBB1_143
.LBB1_94:                               //  %sw.bb503
	beq x0, x9, .LBB1_143
.LBB1_95:                               //  %while.cond514.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB1_96
.LBB1_557:                              //  %while.cond514.preheader
	jal x0, .LBB1_506
.LBB1_96:                               //  %land.lhs.true518.lr.ph
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1492 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x25 ,  x15 ,  2&31
	lw x15 ,  -1488 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_212
.LBB1_97:                               //  %land.lhs.true518.preheader
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
.LBB1_98:                               //  %land.lhs.true518
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x22, .LBB1_217
.LBB1_99:                               //  %land.rhs522
                                        //    in Loop: Header=BB1_98 Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x25
	call wmemchr
	bltu x0, x10, .LBB1_217
.LBB1_100:                              //  %while.body543
                                        //    in Loop: Header=BB1_98 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	addi x22 ,  x22 ,  1
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB1_98
	jal x0, .LBB1_216
.LBB1_102:                              //  %sw.bb901
	add x22 ,  x0 ,  x23
	add x15 ,  x0 ,  x0
	beq x20, x15, .LBB1_104
.LBB1_103:                              //  %sw.bb901
	add x22 ,  x0 ,  x20
.LBB1_104:                              //  %sw.bb901
	andi x9 ,  x25 ,  16
	andi x15 ,  x25 ,  1
	beq x0, x15, .LBB1_146
.LBB1_105:                              //  %sw.bb901
	beq x0, x9, .LBB1_146
.LBB1_106:                              //  %while.cond912.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	xori x15 ,  x20 ,  -1
	beq x0, x15, .LBB1_211
.LBB1_107:                              //  %land.lhs.true916.preheader
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
.LBB1_108:                              //  %land.lhs.true916
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x22, .LBB1_210
.LBB1_109:                              //  %land.rhs920
                                        //    in Loop: Header=BB1_108 Depth=1
	add x10 ,  x0 ,  x20
	call iswspace
	bltu x0, x10, .LBB1_210
.LBB1_110:                              //  %while.body924
                                        //    in Loop: Header=BB1_108 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	addi x22 ,  x22 ,  -1
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB1_108
.LBB1_111:
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_112:                              //  %sw.bb1240
	addi x15 ,  x20 ,  -1
	addi x22 ,  x0 ,  349
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB1_114
.LBB1_113:                              //  %sw.bb1240
	add x22 ,  x0 ,  x20
.LBB1_114:                              //  %sw.bb1240
	ori x9 ,  x25 ,  1408
	beq x0, x22, .LBB1_149
.LBB1_115:                              //  %for.body.preheader
	addi x15 ,  x8 ,  -1464
	add x20 ,  x0 ,  x0
	addi x25 ,  x0 ,  121
	add x26 ,  x0 ,  x15
	jal x0, .LBB1_118
.LBB1_116:                              //  %sw.bb1266
                                        //    in Loop: Header=BB1_118 Depth=1
	lw x15 ,  -1476 ( x8 )          //  4-byte Folded Reload
	lui x30 ,  __svfwscanf_r.basefix&4095
	lui x14 ,  (__svfwscanf_r.basefix>>12)&1048575
	andi x9 ,  x9 ,  -897
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x14
	lh x15 ,  0 ( x15 )
.LBB1_117:                              //  %ok
                                        //    in Loop: Header=BB1_118 Depth=1
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x20 ,  x20 ,  1
	beq x22, x20, .LBB1_133
.LBB1_118:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x11 ,  x0 ,  x10
	addi x15 ,  x11 ,  1
	bgeu x25, x15, .LBB1_119
.LBB1_558:                              //  %for.body
	jal x0, .LBB1_432
.LBB1_119:                              //  %for.body
                                        //    in Loop: Header=BB1_118 Depth=1
	lui x30 ,  JTI1_3&4095
	lui x14 ,  (JTI1_3>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_120:                              //  %sw.bb1278
                                        //    in Loop: Header=BB1_118 Depth=1
	lw x15 ,  -1476 ( x8 )          //  4-byte Folded Reload
	slti x15 ,  x15 ,  11
	beq x0, x15, .LBB1_121
.LBB1_559:                              //  %sw.bb1278
	jal x0, .LBB1_432
.LBB1_121:                              //  %if.else1263
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x9 ,  x9 ,  -897
	sw x11 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x20 ,  x20 ,  1
	bne x22, x20, .LBB1_118
	jal x0, .LBB1_133
.LBB1_122:                              //  %sw.bb1284
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x15 ,  x9 ,  128
	bltu x0, x15, .LBB1_123
.LBB1_560:                              //  %sw.bb1284
	jal x0, .LBB1_432
.LBB1_123:                              //  %if.then1287
                                        //    in Loop: Header=BB1_118 Depth=1
	lui x30 ,  -65665&4095
	lui x15 ,  (-65665>>12)&1048575
	lui x14 ,  (65536>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	or x9 ,  x14 ,  x15
	sw x11 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x20 ,  x20 ,  1
	bne x22, x20, .LBB1_118
	jal x0, .LBB1_133
.LBB1_124:                              //  %sw.bb1270
                                        //    in Loop: Header=BB1_118 Depth=1
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	lui x30 ,  __svfwscanf_r.basefix&4095
	lui x14 ,  (__svfwscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x13 ,  1&31
	add x15 ,  x15 ,  x14
	addi x14 ,  x13 ,  -1
	lh x15 ,  0 ( x15 )
	sltiu x14 ,  x14 ,  8
	beq x0, x14, .LBB1_125
.LBB1_561:                              //  %sw.bb1270
	jal x0, .LBB1_431
.LBB1_125:                              //  %if.end1276
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x9 ,  x9 ,  -897
	jal x0, .LBB1_117
.LBB1_126:                              //  %sw.bb1291
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x15 ,  x9 ,  512
	bltu x0, x15, .LBB1_127
.LBB1_562:                              //  %sw.bb1291
	jal x0, .LBB1_432
.LBB1_127:                              //  %land.lhs.true1294
                                        //    in Loop: Header=BB1_118 Depth=1
	lw x14 ,  -1496 ( x8 )          //  4-byte Folded Reload
	srli x15 ,  x9 ,  14&31
	andi x15 ,  x15 ,  4
	add x15 ,  x15 ,  x14
	beq x26, x15, .LBB1_128
.LBB1_563:                              //  %land.lhs.true1294
	jal x0, .LBB1_432
.LBB1_128:                              //  %if.then1304
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x9 ,  x9 ,  -513
	addi x15 ,  x0 ,  16
	jal x0, .LBB1_117
.LBB1_129:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_118 Depth=1
	lw x14 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB1_131
.LBB1_130:                              //    in Loop: Header=BB1_118 Depth=1
	ori x9 ,  x9 ,  512
	addi x15 ,  x0 ,  8
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
.LBB1_131:                              //  %sw.bb1253
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x15 ,  x9 ,  1024
	beq x0, x15, .LBB1_121
.LBB1_132:                              //  %if.then1261
                                        //    in Loop: Header=BB1_118 Depth=1
	andi x9 ,  x9 ,  -1409
	sw x11 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x20 ,  x20 ,  1
	bne x22, x20, .LBB1_118
.LBB1_133:
	slti x20 ,  x0 ,  1
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x9 ,  256
	bltu x0, x15, .LBB1_564
.LBB1_565:
	jal x0, .LBB1_434
.LBB1_564:
	jal x0, .LBB1_517
.LBB1_134:                              //  %sw.bb1392
	addi x15 ,  x20 ,  -1
	addi x26 ,  x0 ,  349
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB1_136
.LBB1_135:                              //  %sw.bb1392
	add x26 ,  x0 ,  x20
.LBB1_136:                              //  %sw.bb1392
	ori x25 ,  x25 ,  1920
	add x14 ,  x0 ,  x0
	beq x0, x26, .LBB1_150
.LBB1_137:                              //  %for.body1403.preheader
	addi x13 ,  x0 ,  348
	bltu x13, x15, .LBB1_151
.LBB1_138:                              //  %for.body1403.preheader
	sw x14 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_152
.LBB1_139:                              //  %if.then218
	beq x0, x20, .LBB1_200
.LBB1_140:                              //  %land.rhs283.us.preheader
	add x25 ,  x0 ,  x0
.LBB1_141:                              //  %land.rhs283.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_243
.LBB1_142:                              //  %if.end310.us
                                        //    in Loop: Header=BB1_141 Depth=1
	addi x25 ,  x25 ,  1
	bne x9, x25, .LBB1_141
	jal x0, .LBB1_205
.LBB1_143:                              //  %if.else555
	bltu x0, x15, .LBB1_206
.LBB1_144:                              //  %if.else713
	beq x0, x9, .LBB1_218
.LBB1_145:
	add x22 ,  x0 ,  x0
	addi x26 ,  x8 ,  -1465
	sw x22 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x22 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x22 ,  -1524 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_358
.LBB1_146:                              //  %if.else932
	bltu x0, x15, .LBB1_208
.LBB1_147:                              //  %if.else1070
	beq x0, x9, .LBB1_220
.LBB1_148:
	add x11 ,  x0 ,  x0
	addi x20 ,  x8 ,  -1465
	add x23 ,  x0 ,  x11
	sw x11 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x11 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_222
.LBB1_149:
	addi x15 ,  x8 ,  -1464
	add x20 ,  x0 ,  x0
	add x26 ,  x0 ,  x15
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x9 ,  256
	bltu x0, x15, .LBB1_566
.LBB1_567:
	jal x0, .LBB1_434
.LBB1_566:
	jal x0, .LBB1_517
.LBB1_150:
	add x15 ,  x0 ,  x14
	sw x14 ,  -1520 ( x8 )          //  4-byte Folded Spill
	addi x20 ,  x8 ,  -1464
	add x9 ,  x0 ,  x14
	add x23 ,  x0 ,  x14
	add x26 ,  x0 ,  x14
	sw x14 ,  -1524 ( x8 )          //  4-byte Folded Spill
	add x22 ,  x0 ,  x15
	jal x0, .LBB1_456
.LBB1_151:
	addi x15 ,  x20 ,  -349
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
.LBB1_152:                              //  %for.body1403.preheader
	add x22 ,  x0 ,  x14
	addi x20 ,  x8 ,  -1464
	add x9 ,  x0 ,  x14
	add x23 ,  x0 ,  x14
	sw x14 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x14 ,  -1524 ( x8 )          //  4-byte Folded Spill
	sw x14 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sw x14 ,  -1516 ( x8 )          //  4-byte Folded Spill
.LBB1_153:                              //  %for.body1403
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x11 ,  x0 ,  x10
	addi x14 ,  x0 ,  78
	addi x15 ,  x11 ,  -43
	bltu x14, x15, .LBB1_179
.LBB1_154:                              //  %for.body1403
                                        //    in Loop: Header=BB1_153 Depth=1
	lui x30 ,  JTI1_2&4095
	lui x14 ,  (JTI1_2>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_155:                              //  %sw.bb1417
                                        //    in Loop: Header=BB1_153 Depth=1
	slli x15 ,  x9 ,  24&31
	slli x14 ,  x23 ,  24&31
	srai x15 ,  x15 ,  24&31
	srai x14 ,  x14 ,  24&31
	sub x15 ,  x0 ,  x15
	beq x14, x15, .LBB1_156
.LBB1_568:                              //  %sw.bb1417
	jal x0, .LBB1_452
.LBB1_156:                              //  %if.then1423
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x25 ,  x25 ,  -385
.LBB1_157:                              //  %fok
                                        //    in Loop: Header=BB1_153 Depth=1
	sw x11 ,  0 ( x20 )
	addi x22 ,  x22 ,  1
.LBB1_158:                              //  %fskip
                                        //    in Loop: Header=BB1_153 Depth=1
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	addi x21 ,  x21 ,  1
	addi x26 ,  x26 ,  -1
	add x20 ,  x15 ,  x14
	bltu x0, x26, .LBB1_153
	jal x0, .LBB1_453
.LBB1_159:                              //  %sw.bb1426
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_160
.LBB1_569:                              //  %sw.bb1426
	jal x0, .LBB1_452
.LBB1_160:                              //  %if.then1429
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x25 ,  x25 ,  -129
	jal x0, .LBB1_157
.LBB1_161:                              //  %sw.bb1461
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x23 ,  255
	xori x15 ,  x15 ,  1
	beq x0, x15, .LBB1_162
.LBB1_570:                              //  %sw.bb1461
	jal x0, .LBB1_452
.LBB1_162:                              //    in Loop: Header=BB1_153 Depth=1
	addi x23 ,  x0 ,  2
	jal x0, .LBB1_157
.LBB1_163:                              //  %sw.bb1509
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  1280
	xori x15 ,  x15 ,  1024
	beq x0, x15, .LBB1_166
.LBB1_164:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  1024
	bltu x0, x15, .LBB1_165
.LBB1_571:                              //  %lor.lhs.false1513
	jal x0, .LBB1_452
.LBB1_165:                              //  %lor.lhs.false1513
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB1_166
.LBB1_572:                              //  %lor.lhs.false1513
	jal x0, .LBB1_452
.LBB1_166:                              //  %if.then1518
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  512
	add x14 ,  x0 ,  x0
	bne x15, x14, .LBB1_168
.LBB1_167:                              //    in Loop: Header=BB1_153 Depth=1
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	sw x15 ,  -1524 ( x8 )          //  4-byte Folded Spill
.LBB1_168:                              //  %if.then1518
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  -1921
	ori x25 ,  x15 ,  384
	add x15 ,  x0 ,  x0
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_157
.LBB1_169:                              //  %sw.bb1491
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x9 ,  255
	xori x15 ,  x15 ,  2
	beq x0, x15, .LBB1_170
.LBB1_573:                              //  %sw.bb1491
	jal x0, .LBB1_452
.LBB1_170:                              //    in Loop: Header=BB1_153 Depth=1
	addi x9 ,  x0 ,  3
	jal x0, .LBB1_157
.LBB1_171:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  1792
	xori x14 ,  x15 ,  1792
	andi x15 ,  x23 ,  255
	bltu x0, x14, .LBB1_189
.LBB1_172:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bltu x0, x14, .LBB1_189
.LBB1_173:                              //  %sw.bb1432
                                        //    in Loop: Header=BB1_153 Depth=1
	bltu x0, x15, .LBB1_189
.LBB1_174:                              //  %if.then1443
                                        //    in Loop: Header=BB1_153 Depth=1
	add x15 ,  x0 ,  x0
	andi x25 ,  x25 ,  -1921
	slti x23 ,  x0 ,  1
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_157
.LBB1_175:                              //  %sw.bb1497
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x9 ,  255
	xori x15 ,  x15 ,  6
	beq x0, x15, .LBB1_176
.LBB1_574:                              //  %sw.bb1497
	jal x0, .LBB1_452
.LBB1_176:                              //    in Loop: Header=BB1_153 Depth=1
	addi x9 ,  x0 ,  7
	jal x0, .LBB1_157
.LBB1_177:                              //  %sw.bb1503
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x9 ,  255
	xori x15 ,  x15 ,  7
	beq x0, x15, .LBB1_178
.LBB1_575:                              //  %sw.bb1503
	jal x0, .LBB1_452
.LBB1_178:                              //    in Loop: Header=BB1_153 Depth=1
	addi x9 ,  x0 ,  8
	jal x0, .LBB1_157
.LBB1_179:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  512
	bltu x0, x15, .LBB1_180
.LBB1_576:                              //  %sw.default1528
	jal x0, .LBB1_451
.LBB1_180:                              //  %sw.default1528
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x15 ,  -1508 ( x8 )          //  4-byte Folded Reload
	beq x11, x15, .LBB1_181
.LBB1_577:                              //  %sw.default1528
	jal x0, .LBB1_451
.LBB1_181:                              //  %if.then1534
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x25 ,  x25 ,  -641
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_157
.LBB1_182:                              //  %sw.bb1405
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  256
	beq x0, x15, .LBB1_155
.LBB1_183:                              //  %if.then1408
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	andi x25 ,  x25 ,  -129
	addi x15 ,  x15 ,  1
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_196
.LBB1_184:                              //  %if.then1412
                                        //    in Loop: Header=BB1_153 Depth=1
	addi x26 ,  x26 ,  1
	addi x15 ,  x15 ,  -1
	jal x0, .LBB1_197
.LBB1_185:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x25 ,  1792
	xori x14 ,  x15 ,  1792
	andi x15 ,  x9 ,  255
	bltu x0, x14, .LBB1_191
.LBB1_186:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_153 Depth=1
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bltu x0, x14, .LBB1_191
.LBB1_187:                              //  %sw.bb1467
                                        //    in Loop: Header=BB1_153 Depth=1
	bltu x0, x15, .LBB1_191
.LBB1_188:                              //  %if.then1478
                                        //    in Loop: Header=BB1_153 Depth=1
	add x15 ,  x0 ,  x0
	andi x25 ,  x25 ,  -1921
	slti x9 ,  x0 ,  1
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_157
.LBB1_189:                              //  %if.end1445
                                        //    in Loop: Header=BB1_153 Depth=1
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB1_193
.LBB1_190:                              //    in Loop: Header=BB1_153 Depth=1
	addi x23 ,  x0 ,  3
	jal x0, .LBB1_157
.LBB1_191:                              //  %if.end1480
                                        //    in Loop: Header=BB1_153 Depth=1
	xori x14 ,  x15 ,  5
	beq x0, x14, .LBB1_195
.LBB1_192:                              //  %if.end1480
                                        //    in Loop: Header=BB1_153 Depth=1
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB1_195
	jal x0, .LBB1_452
.LBB1_193:                              //  %if.end1450
                                        //    in Loop: Header=BB1_153 Depth=1
	andi x15 ,  x9 ,  255
	xori x14 ,  x15 ,  4
	beq x0, x14, .LBB1_195
.LBB1_194:                              //  %if.end1450
                                        //    in Loop: Header=BB1_153 Depth=1
	xori x15 ,  x15 ,  1
	beq x0, x15, .LBB1_195
.LBB1_578:                              //  %if.end1450
	jal x0, .LBB1_452
.LBB1_195:                              //  %if.then1488
                                        //    in Loop: Header=BB1_153 Depth=1
	addi x9 ,  x9 ,  1
	jal x0, .LBB1_157
.LBB1_196:                              //    in Loop: Header=BB1_153 Depth=1
	add x15 ,  x0 ,  x0
.LBB1_197:                              //  %fskip
                                        //    in Loop: Header=BB1_153 Depth=1
	sw x15 ,  -1528 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_158
.LBB1_198:                              //  %if.else348
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_223
.LBB1_199:                              //  %if.else408
	lw x15 ,  -56 ( x8 )
	add x22 ,  x0 ,  x0
	addi x25 ,  x8 ,  -64
	sw x22 ,  -1516 ( x8 )          //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x20 ,  0 ( x15 )
	sw x22 ,  -1524 ( x8 )          //  4-byte Folded Spill
	sw x22 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_261
.LBB1_200:                              //  %if.else223
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_227
.LBB1_201:                              //  %land.rhs283.us3581.preheader
	lw x15 ,  -56 ( x8 )
	add x25 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x20 ,  0 ( x15 )
.LBB1_202:                              //  %land.rhs283.us3581
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_242
.LBB1_203:                              //  %if.then291.us3591
                                        //    in Loop: Header=BB1_202 Depth=1
	sw x10 ,  0 ( x20 )
	addi x20 ,  x20 ,  4
	addi x25 ,  x25 ,  1
	bne x9, x25, .LBB1_202
.LBB1_204:
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_205:
	add x15 ,  x0 ,  x0
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x0 ,  x15
	add x26 ,  x0 ,  x15
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_245
	jal x0, .LBB1_248
.LBB1_206:                              //  %if.then558
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_231
.LBB1_207:                              //  %if.else620
	lw x15 ,  -56 ( x8 )
	add x9 ,  x0 ,  x0
	add x25 ,  x0 ,  x9
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_295
.LBB1_208:                              //  %if.then935
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_235
.LBB1_209:                              //  %if.else997
	lw x15 ,  -56 ( x8 )
	add x9 ,  x0 ,  x0
	add x23 ,  x0 ,  x9
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x20 ,  0 ( x15 )
	jal x0, .LBB1_311
.LBB1_210:                              //  %if.then929
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_211:
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_212:                              //  %land.lhs.true518.us.preheader
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
.LBB1_213:                              //  %land.lhs.true518.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x22, .LBB1_217
.LBB1_214:                              //  %land.rhs522.us
                                        //    in Loop: Header=BB1_213 Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x25
	call wmemchr
	beq x0, x10, .LBB1_217
.LBB1_215:                              //  %while.body543.us
                                        //    in Loop: Header=BB1_213 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	addi x22 ,  x22 ,  1
	xori x15 ,  x20 ,  -1
	bltu x0, x15, .LBB1_213
.LBB1_216:
	addi x23 ,  x0 ,  -1
	jal x0, .LBB1_401
.LBB1_217:
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x18
	addi x23 ,  x0 ,  -1
	call _ungetwc_r
	bltu x0, x22, .LBB1_401
	jal x0, .LBB1_533
.LBB1_218:                              //  %if.else721
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_249
.LBB1_219:                              //  %if.else781
	lw x15 ,  -56 ( x8 )
	add x22 ,  x0 ,  x0
	sw x22 ,  -1524 ( x8 )          //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x26 ,  0 ( x15 )
	sw x22 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x22 ,  -1520 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_358
.LBB1_220:                              //  %if.else1078
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_253
.LBB1_221:                              //  %if.else1138
	lw x15 ,  -56 ( x8 )
	add x11 ,  x0 ,  x0
	sw x11 ,  -1520 ( x8 )          //  4-byte Folded Spill
	add x23 ,  x0 ,  x11
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x20 ,  0 ( x15 )
	sw x11 ,  -1516 ( x8 )          //  4-byte Folded Spill
.LBB1_222:                              //  %if.end1141
	addi x25 ,  x8 ,  -64
	jal x0, .LBB1_406
.LBB1_223:                              //  %if.then351
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_224
.LBB1_579:                              //  %if.then351
	jal x0, .LBB1_506
.LBB1_224:                              //  %if.end355
	addi x10 ,  x0 ,  32
	call malloc
	addi x25 ,  x8 ,  -64
	bltu x0, x10, .LBB1_225
.LBB1_580:                              //  %if.end355
	jal x0, .LBB1_539
.LBB1_225:                              //  %if.end359
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	sw x10 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_257
.LBB1_226:                              //  %if.end359.if.end399_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_260
.LBB1_227:                              //  %if.then226
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_228
.LBB1_581:                              //  %if.then226
	jal x0, .LBB1_506
.LBB1_228:                              //  %if.end230
	addi x10 ,  x0 ,  128
	call malloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB1_229
.LBB1_582:                              //  %if.end230
	jal x0, .LBB1_539
.LBB1_229:                              //  %if.end234
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x20 ,  0 ( x15 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_281
.LBB1_230:                              //  %if.end234.if.end270_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_284
.LBB1_231:                              //  %if.then563
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
	bltu x0, x9, .LBB1_232
.LBB1_583:                              //  %if.then563
	jal x0, .LBB1_506
.LBB1_232:                              //  %if.end567
	addi x10 ,  x0 ,  128
	call malloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB1_233
.LBB1_584:                              //  %if.end567
	jal x0, .LBB1_503
.LBB1_233:                              //  %if.end571
	sw x20 ,  0 ( x9 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_291
.LBB1_234:                              //  %if.end571.if.end611_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_294
.LBB1_235:                              //  %if.then940
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
	bltu x0, x9, .LBB1_236
.LBB1_585:                              //  %if.then940
	jal x0, .LBB1_533
.LBB1_236:                              //  %if.end944
	addi x10 ,  x0 ,  128
	call malloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB1_237
.LBB1_586:                              //  %if.end944
	jal x0, .LBB1_539
.LBB1_237:                              //  %if.end948
	sw x20 ,  0 ( x9 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_307
.LBB1_238:                              //  %if.end948.if.end988_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_310
.LBB1_239:                              //  %if.then165
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x21 ,  0 ( x15 )
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_240:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	add x20 ,  x0 ,  x25
	add x14 ,  x0 ,  x15
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
	bltu x0, x22, .LBB1_276
	jal x0, .LBB1_537
.LBB1_241:
	add x15 ,  x0 ,  x0
	add x20 ,  x0 ,  x25
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x0 ,  x15
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bltu x0, x15, .LBB1_277
	jal x0, .LBB1_280
.LBB1_242:
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_243:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	add x15 ,  x0 ,  x20
	add x26 ,  x0 ,  x20
	bltu x0, x25, .LBB1_244
.LBB1_587:
	jal x0, .LBB1_501
.LBB1_244:                              //  %if.end316
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB1_248
.LBB1_245:                              //  %if.end316
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sub x11 ,  x15 ,  x20
	srai x15 ,  x11 ,  2&31
	bgeu x15, x26, .LBB1_248
.LBB1_246:                              //  %if.then327
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_248
.LBB1_247:                              //  %if.then331
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_248:                              //  %cleanup339.thread2604
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x21 ,  x25
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x22 ,  x15 ,  x22
	lw x26 ,  0 ( x27 )
	bltu x0, x26, .LBB1_10
	jal x0, .LBB1_506
.LBB1_249:                              //  %if.then724
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_250
.LBB1_588:                              //  %if.then724
	jal x0, .LBB1_506
.LBB1_250:                              //  %if.end728
	addi x10 ,  x0 ,  32
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB1_251
.LBB1_589:                              //  %if.end728
	jal x0, .LBB1_503
.LBB1_251:                              //  %if.end732
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	sw x26 ,  0 ( x15 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_354
.LBB1_252:                              //  %if.end732.if.end772_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_357
.LBB1_253:                              //  %if.then1081
	lw x15 ,  -56 ( x8 )
	addi x25 ,  x8 ,  -64
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x23 ,  0 ( x15 )
	bltu x0, x23, .LBB1_254
.LBB1_590:                              //  %if.then1081
	jal x0, .LBB1_533
.LBB1_254:                              //  %if.end1085
	addi x10 ,  x0 ,  32
	call malloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB1_255
.LBB1_591:                              //  %if.end1085
	jal x0, .LBB1_503
.LBB1_255:                              //  %if.end1089
	sw x20 ,  0 ( x23 )
	lhu x14 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
	bgeu x15, x14, .LBB1_402
.LBB1_256:                              //  %if.end1089.if.end1129_crit_edge
	lw x10 ,  0 ( x24 )
	jal x0, .LBB1_405
.LBB1_257:                              //  %if.then367
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB1_258
.LBB1_592:                              //  %if.then367
	jal x0, .LBB1_508
.LBB1_258:                              //  %if.end387
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB1_259
.LBB1_593:                              //  %if.end387
	jal x0, .LBB1_508
.LBB1_259:                              //  %cleanup396
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_260:                              //  %if.end399
	lw x13 ,  -1516 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	lw x20 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1524 ( x8 )          //  4-byte Folded Spill
.LBB1_261:                              //  %land.rhs416.preheader
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	addi x12 ,  x0 ,  8
	call memset
	jal x0, .LBB1_264
.LBB1_262:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_264 Depth=1
	addi x25 ,  x8 ,  -64
.LBB1_263:                              //  %cleanup.cont466
                                        //    in Loop: Header=BB1_264 Depth=1
	add x20 ,  x23 ,  x20
	addi x22 ,  x22 ,  1
	add x23 ,  x0 ,  x26
	beq x0, x9, .LBB1_275
.LBB1_264:                              //  %land.rhs416
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x12 ,  x0 ,  x10
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB1_274
.LBB1_265:                              //  %while.body421
                                        //    in Loop: Header=BB1_264 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x25
	add x26 ,  x0 ,  x23
	call _wcrtomb_r
	add x23 ,  x0 ,  x10
	beq x0, x23, .LBB1_267
.LBB1_266:                              //  %while.body421
                                        //    in Loop: Header=BB1_264 Depth=1
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_268
	jal x0, .LBB1_515
.LBB1_267:                              //  %lor.lhs.false429
                                        //    in Loop: Header=BB1_264 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_269
.LBB1_268:                              //  %if.then432
                                        //    in Loop: Header=BB1_264 Depth=1
	addi x9 ,  x9 ,  -1
.LBB1_269:                              //  %if.then437
                                        //    in Loop: Header=BB1_264 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_263
.LBB1_270:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_264 Depth=1
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sub x25 ,  x20 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -1524 ( x8 )          //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_272
.LBB1_271:                              //  %land.lhs.true444
                                        //    in Loop: Header=BB1_264 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x25, x15, .LBB1_262
.LBB1_272:                              //  %if.then452
                                        //    in Loop: Header=BB1_264 Depth=1
	lw x10 ,  -1520 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1524 ( x8 )          //  4-byte Folded Spill
	call realloc
	bltu x0, x10, .LBB1_273
.LBB1_594:                              //  %if.then452
	jal x0, .LBB1_523
.LBB1_273:                              //  %if.end458
                                        //    in Loop: Header=BB1_264 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x20 ,  x25 ,  x10
	sw x10 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_262
.LBB1_274:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -1524 ( x8 )          //  4-byte Folded Reload
	bltu x0, x22, .LBB1_276
	jal x0, .LBB1_537
.LBB1_275:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -1524 ( x8 )          //  4-byte Folded Reload
.LBB1_276:                              //  %if.end474
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_280
.LBB1_277:                              //  %if.end474
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sub x11 ,  x20 ,  x15
	bgeu x11, x14, .LBB1_280
.LBB1_278:                              //  %if.then484
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_280
.LBB1_279:                              //  %if.then489
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_280:                              //  %cleanup497
	lw x15 ,  -1528 ( x8 )          //  4-byte Folded Reload
	add x21 ,  x21 ,  x22
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x22 ,  x15 ,  x22
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_595
.LBB1_596:                              //  %cleanup497
	jal x0, .LBB1_10
.LBB1_595:                              //  %cleanup497
	jal x0, .LBB1_506
.LBB1_281:                              //  %if.then242
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_508
.LBB1_282:                              //  %if.end261
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_508
.LBB1_283:                              //  %cleanup
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_284:                              //  %land.rhs283.preheader
	lw x13 ,  -1516 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x0
	addi x26 ,  x0 ,  32
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
	jal x0, .LBB1_287
.LBB1_285:                              //    in Loop: Header=BB1_287 Depth=1
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB1_286:                              //  %cleanup.cont308
                                        //    in Loop: Header=BB1_287 Depth=1
	sw x23 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x25 ,  x25 ,  1
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	beq x9, x25, .LBB1_341
.LBB1_287:                              //  %land.rhs283
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB1_340
.LBB1_288:                              //  %if.then291
                                        //    in Loop: Header=BB1_287 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x15 ,  x20
	srai x22 ,  x15 ,  2&31
	bltu x22, x26, .LBB1_285
.LBB1_289:                              //  %if.then296
                                        //    in Loop: Header=BB1_287 Depth=1
	slli x11 ,  x26 ,  3&31
	add x10 ,  x0 ,  x20
	call realloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB1_503
.LBB1_290:                              //  %if.end301
                                        //    in Loop: Header=BB1_287 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	slli x26 ,  x26 ,  1&31
	sw x20 ,  0 ( x15 )
	slli x15 ,  x22 ,  2&31
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x15 ,  x20
	jal x0, .LBB1_286
.LBB1_291:                              //  %if.then579
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_508
.LBB1_292:                              //  %if.end599
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_508
.LBB1_293:                              //  %cleanup608
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_294:                              //  %if.end611
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	addi x25 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x9 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
.LBB1_295:                              //  %if.end622
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB1_306
.LBB1_296:                              //  %land.lhs.true627.lr.ph
	lw x15 ,  -1480 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1492 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x15 ,  x15 ,  2&31
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1488 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_329
.LBB1_297:                              //  %land.lhs.true627.lr.ph.split
	beq x0, x9, .LBB1_342
.LBB1_298:                              //  %land.lhs.true627.preheader
	lw x20 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x22 ,  x23 ,  1
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB1_302
	jal x0, .LBB1_347
.LBB1_299:                              //    in Loop: Header=BB1_302 Depth=1
	sw x14 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_300:                              //  %cleanup676
                                        //    in Loop: Header=BB1_302 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	addi x23 ,  x0 ,  -1
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB1_349
.LBB1_301:                              //  %land.lhs.true627
                                        //    in Loop: Header=BB1_302 Depth=1
	addi x22 ,  x22 ,  -1
	beq x0, x22, .LBB1_347
.LBB1_302:                              //  %land.end652
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	lw x12 ,  -1516 ( x8 )          //  4-byte Folded Reload
	call wmemchr
	bltu x0, x10, .LBB1_347
.LBB1_303:                              //  %while.body653
                                        //    in Loop: Header=BB1_302 Depth=1
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x26 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	sub x15 ,  x14 ,  x20
	srai x23 ,  x15 ,  2&31
	bltu x23, x25, .LBB1_299
.LBB1_304:                              //  %if.then665
                                        //    in Loop: Header=BB1_302 Depth=1
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x20
	call realloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB1_503
.LBB1_305:                              //  %if.end671
                                        //    in Loop: Header=BB1_302 Depth=1
	slli x15 ,  x23 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x20 ,  0 ( x9 )
	add x15 ,  x15 ,  x20
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_300
.LBB1_306:
	lw x20 ,  -1472 ( x8 )          //  4-byte Folded Reload
	jal x0, .LBB1_348
.LBB1_307:                              //  %if.then956
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_508
.LBB1_308:                              //  %if.end976
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_508
.LBB1_309:                              //  %cleanup985
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_310:                              //  %if.end988
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x23 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x9 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
.LBB1_311:                              //  %if.end999
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_324
.LBB1_312:                              //  %land.lhs.true1004.lr.ph
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	beq x0, x9, .LBB1_314
.LBB1_313:
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	bltu x0, x22, .LBB1_320
	jal x0, .LBB1_323
.LBB1_314:                              //  %land.end1012.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x25
	call iswspace
	bltu x0, x10, .LBB1_323
.LBB1_315:                              //  %while.body1013.us
                                        //    in Loop: Header=BB1_314 Depth=1
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sw x25 ,  0 ( x26 )
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_430
.LBB1_316:                              //  %land.lhs.true1004.us
                                        //    in Loop: Header=BB1_314 Depth=1
	addi x26 ,  x26 ,  4
	addi x21 ,  x21 ,  1
	addi x22 ,  x22 ,  -1
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	bltu x0, x22, .LBB1_314
	jal x0, .LBB1_323
.LBB1_317:                              //  %if.end1031
                                        //    in Loop: Header=BB1_320 Depth=1
	slli x15 ,  x25 ,  2&31
	slli x23 ,  x23 ,  1&31
	sw x20 ,  0 ( x9 )
	add x15 ,  x15 ,  x20
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_318:                              //  %cleanup.cont1039
                                        //    in Loop: Header=BB1_320 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	addi x22 ,  x22 ,  -1
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_325
.LBB1_319:                              //  %land.lhs.true1004
                                        //    in Loop: Header=BB1_320 Depth=1
	beq x0, x22, .LBB1_323
.LBB1_320:                              //  %land.end1012
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x25
	call iswspace
	bltu x0, x10, .LBB1_323
.LBB1_321:                              //  %while.body1013
                                        //    in Loop: Header=BB1_320 Depth=1
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sub x15 ,  x15 ,  x20
	srai x25 ,  x15 ,  2&31
	bltu x25, x23, .LBB1_318
.LBB1_322:                              //  %if.then1025
                                        //    in Loop: Header=BB1_320 Depth=1
	slli x11 ,  x23 ,  3&31
	add x10 ,  x0 ,  x20
	call realloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB1_317
	jal x0, .LBB1_503
.LBB1_323:                              //  %if.then1044
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	bltu x0, x9, .LBB1_326
	jal x0, .LBB1_5
.LBB1_324:
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_325:                              //  %if.end1046
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	bltu x0, x9, .LBB1_326
.LBB1_597:                              //  %if.end1046
	jal x0, .LBB1_5
.LBB1_326:                              //  %if.end1046
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x15 ,  x20
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bltu x15, x23, .LBB1_327
.LBB1_598:                              //  %if.end1046
	jal x0, .LBB1_5
.LBB1_327:                              //  %if.then1057
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB1_328
.LBB1_599:                              //  %if.then1057
	jal x0, .LBB1_5
.LBB1_328:                              //  %if.then1062
	sw x10 ,  0 ( x9 )
	jal x0, .LBB1_5
.LBB1_329:
	lw x20 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB1_330:                              //  %land.end652.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	lw x12 ,  -1516 ( x8 )          //  4-byte Folded Reload
	call wmemchr
	beq x0, x10, .LBB1_347
.LBB1_331:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_330 Depth=1
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x26 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	beq x0, x9, .LBB1_336
.LBB1_332:                              //  %while.body653.us
                                        //    in Loop: Header=BB1_330 Depth=1
	sub x15 ,  x14 ,  x20
	srai x22 ,  x15 ,  2&31
	bltu x22, x25, .LBB1_336
.LBB1_333:                              //  %if.then665.us
                                        //    in Loop: Header=BB1_330 Depth=1
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x20
	call realloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB1_503
.LBB1_334:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_330 Depth=1
	slli x15 ,  x22 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x20 ,  0 ( x9 )
	add x15 ,  x15 ,  x20
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_337
.LBB1_336:                              //    in Loop: Header=BB1_330 Depth=1
	sw x14 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_337:                              //  %cleanup676.us
                                        //    in Loop: Header=BB1_330 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB1_348
.LBB1_338:                              //  %land.lhs.true627.us
                                        //    in Loop: Header=BB1_330 Depth=1
	addi x23 ,  x23 ,  -1
	bltu x0, x23, .LBB1_330
	jal x0, .LBB1_347
.LBB1_339:                              //  %if.then170
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x21 ,  0 ( x15 )
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_600
.LBB1_601:                              //  %if.then170
	jal x0, .LBB1_10
.LBB1_600:                              //  %if.then170
	jal x0, .LBB1_506
.LBB1_340:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x0 ,  -1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	bltu x0, x25, .LBB1_244
	jal x0, .LBB1_501
.LBB1_341:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x0 ,  -1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
	bltu x0, x15, .LBB1_245
	jal x0, .LBB1_248
.LBB1_342:
	lw x22 ,  -1472 ( x8 )          //  4-byte Folded Reload
.LBB1_343:                              //  %land.end652.us3525
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	lw x12 ,  -1516 ( x8 )          //  4-byte Folded Reload
	call wmemchr
	bltu x0, x10, .LBB1_346
.LBB1_344:                              //  %while.body653.us3527
                                        //    in Loop: Header=BB1_343 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sw x26 ,  0 ( x22 )
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB1_489
.LBB1_345:                              //  %land.lhs.true627.us3516
                                        //    in Loop: Header=BB1_343 Depth=1
	addi x22 ,  x22 ,  4
	addi x23 ,  x23 ,  -1
	bltu x0, x23, .LBB1_343
.LBB1_346:
	lw x20 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x22 ,  -1472 ( x8 )          //  4-byte Folded Spill
.LBB1_347:                              //  %if.then683
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_348:                              //  %if.end685
	addi x23 ,  x0 ,  -1
.LBB1_349:                              //  %if.end685
	lw x14 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x20
	beq x0, x15, .LBB1_533
.LBB1_350:                              //  %if.end693
	srai x22 ,  x15 ,  2&31
	sw x0 ,  0 ( x14 )
	beq x0, x9, .LBB1_399
.LBB1_351:                              //  %if.end693
	addi x15 ,  x22 ,  1
	bgeu x15, x25, .LBB1_399
.LBB1_352:                              //  %if.then700
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_399
.LBB1_353:                              //  %if.then705
	sw x10 ,  0 ( x9 )
	jal x0, .LBB1_399
.LBB1_354:                              //  %if.then740
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_508
.LBB1_355:                              //  %if.end760
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_508
.LBB1_356:                              //  %cleanup769
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_357:                              //  %if.end772
	lw x13 ,  -1516 ( x8 )          //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x26 ,  -1520 ( x8 )          //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1524 ( x8 )          //  4-byte Folded Spill
.LBB1_358:                              //  %if.end784
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x22
	addi x12 ,  x0 ,  8
	call memset
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	xori x14 ,  x20 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_392
.LBB1_359:                              //  %if.end784
	beq x0, x14, .LBB1_392
.LBB1_360:                              //  %land.rhs793.lr.ph
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	lw x15 ,  -1492 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x15 ,  x10
	srai x12 ,  x15 ,  2&31
	lw x15 ,  -1488 ( x8 )          //  4-byte Folded Reload
	add x25 ,  x0 ,  x12
	beq x0, x15, .LBB1_375
.LBB1_361:                              //  %land.rhs793
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	call wmemchr
	bltu x0, x10, .LBB1_393
.LBB1_362:                              //  %while.body815
                                        //    in Loop: Header=BB1_361 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x20
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB1_364
.LBB1_363:                              //  %while.body815
                                        //    in Loop: Header=BB1_361 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_365
	jal x0, .LBB1_516
.LBB1_364:                              //  %lor.lhs.false823
                                        //    in Loop: Header=BB1_361 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_366
.LBB1_365:                              //  %if.then827
                                        //    in Loop: Header=BB1_361 Depth=1
	addi x23 ,  x23 ,  -1
.LBB1_366:                              //  %if.end829
                                        //    in Loop: Header=BB1_361 Depth=1
	bltu x0, x9, .LBB1_373
.LBB1_367:                              //  %if.then832
                                        //    in Loop: Header=BB1_361 Depth=1
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x0 ,  x26
	add x15 ,  x10 ,  x15
	beq x0, x14, .LBB1_372
.LBB1_368:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_361 Depth=1
	lw x14 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x0 ,  x15
	sub x20 ,  x15 ,  x14
	call __locale_mb_cur_max
	lw x11 ,  -1524 ( x8 )          //  4-byte Folded Reload
	bgeu x20, x11, .LBB1_370
.LBB1_369:                              //  %land.lhs.true840
                                        //    in Loop: Header=BB1_361 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x20, x15, .LBB1_373
.LBB1_370:                              //  %if.then848
                                        //    in Loop: Header=BB1_361 Depth=1
	lw x10 ,  -1520 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1524 ( x8 )          //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_503
.LBB1_371:                              //  %if.end854
                                        //    in Loop: Header=BB1_361 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x20 ,  x10
	sw x10 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_373
.LBB1_372:                              //    in Loop: Header=BB1_361 Depth=1
	add x26 ,  x0 ,  x15
.LBB1_373:                              //  %if.end863
                                        //    in Loop: Header=BB1_361 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	addi x22 ,  x22 ,  1
	xori x14 ,  x20 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_392
.LBB1_374:                              //  %if.end863
                                        //    in Loop: Header=BB1_361 Depth=1
	add x12 ,  x0 ,  x25
	bltu x0, x14, .LBB1_361
	jal x0, .LBB1_392
.LBB1_375:                              //  %land.rhs793.lr.ph.split.us
	add x11 ,  x0 ,  x20
	call wmemchr
	beq x0, x10, .LBB1_393
.LBB1_376:                              //  %while.body815.us.preheader
	slti x22 ,  x0 ,  1
.LBB1_377:                              //  %while.body815.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x20
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB1_379
.LBB1_378:                              //  %while.body815.us
                                        //    in Loop: Header=BB1_377 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_380
	jal x0, .LBB1_516
.LBB1_379:                              //  %lor.lhs.false823.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_381
.LBB1_380:                              //  %if.then827.us
                                        //    in Loop: Header=BB1_377 Depth=1
	addi x23 ,  x23 ,  -1
.LBB1_381:                              //  %if.end829.us
                                        //    in Loop: Header=BB1_377 Depth=1
	bltu x0, x9, .LBB1_388
.LBB1_382:                              //  %if.then832.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x0 ,  x26
	add x15 ,  x10 ,  x15
	beq x0, x14, .LBB1_387
.LBB1_383:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x14 ,  -1520 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x0 ,  x15
	sub x20 ,  x15 ,  x14
	call __locale_mb_cur_max
	lw x11 ,  -1524 ( x8 )          //  4-byte Folded Reload
	bgeu x20, x11, .LBB1_385
.LBB1_384:                              //  %land.lhs.true840.us
                                        //    in Loop: Header=BB1_377 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x20, x15, .LBB1_388
.LBB1_385:                              //  %if.then848.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x10 ,  -1520 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1524 ( x8 )          //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_503
.LBB1_386:                              //  %if.end854.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	add x26 ,  x20 ,  x10
	sw x10 ,  -1520 ( x8 )          //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_388
.LBB1_387:                              //    in Loop: Header=BB1_377 Depth=1
	add x26 ,  x0 ,  x15
.LBB1_388:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_377 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x20 ,  x0 ,  x10
	xori x14 ,  x20 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_392
.LBB1_389:                              //  %if.end863.us
                                        //    in Loop: Header=BB1_377 Depth=1
	add x12 ,  x0 ,  x25
	beq x0, x14, .LBB1_392
.LBB1_390:                              //  %land.rhs793.us
                                        //    in Loop: Header=BB1_377 Depth=1
	lw x10 ,  -1480 ( x8 )          //  4-byte Folded Reload
	add x11 ,  x0 ,  x20
	call wmemchr
	addi x22 ,  x22 ,  1
	bltu x0, x10, .LBB1_377
.LBB1_391:                              //  %if.then868.loopexit
	addi x22 ,  x22 ,  -1
	jal x0, .LBB1_393
.LBB1_392:                              //  %while.end865
	beq x0, x15, .LBB1_394
.LBB1_393:                              //  %if.then868
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_394:                              //  %if.end870
	addi x23 ,  x0 ,  -1
	bltu x0, x9, .LBB1_400
.LBB1_395:                              //  %if.then873
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sb x0 ,  0 ( x26 )
	beq x0, x15, .LBB1_399
.LBB1_396:                              //  %if.then873
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x26 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	bgeu x11, x15, .LBB1_399
.LBB1_397:                              //  %if.then883
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_399
.LBB1_398:                              //  %if.then888
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_399:                              //  %if.end890
	lw x15 ,  -1512 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -1512 ( x8 )          //  4-byte Folded Spill
.LBB1_400:                              //  %if.end899
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
.LBB1_401:                              //  %if.end899
	add x21 ,  x21 ,  x22
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_602
.LBB1_603:                              //  %if.end899
	jal x0, .LBB1_10
.LBB1_602:                              //  %if.end899
	jal x0, .LBB1_506
.LBB1_402:                              //  %if.then1097
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_508
.LBB1_403:                              //  %if.end1117
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_508
.LBB1_404:                              //  %cleanup1126
	lh x15 ,  4 ( x24 )
	sw x10 ,  0 ( x24 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x24 )
	lhu x15 ,  6 ( x24 )
.LBB1_405:                              //  %if.end1129
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x20 ,  -1516 ( x8 )          //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x23 ,  0 ( x14 )
	sh x15 ,  6 ( x24 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -1520 ( x8 )          //  4-byte Folded Spill
.LBB1_406:                              //  %if.end1141
	add x10 ,  x0 ,  x25
	addi x12 ,  x0 ,  8
	call memset
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	xori x14 ,  x26 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x22, .LBB1_491
.LBB1_407:                              //  %if.end1141
	beq x0, x14, .LBB1_491
.LBB1_408:                              //  %land.rhs1150.lr.ph
	beq x0, x9, .LBB1_417
.LBB1_409:                              //  %land.rhs1150.us
	add x10 ,  x0 ,  x26
	call iswspace
	bltu x0, x10, .LBB1_492
.LBB1_410:                              //  %while.body1155.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x25
	call wcrtomb
	beq x0, x10, .LBB1_412
.LBB1_411:                              //  %while.body1155.us
                                        //    in Loop: Header=BB1_410 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_413
	jal x0, .LBB1_516
.LBB1_412:                              //  %lor.lhs.false1163.us
                                        //    in Loop: Header=BB1_410 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_414
.LBB1_413:                              //  %if.then1167.us
                                        //    in Loop: Header=BB1_410 Depth=1
	addi x22 ,  x22 ,  -1
.LBB1_414:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_410 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -1
	beq x0, x22, .LBB1_490
.LBB1_415:                              //  %if.end1203.us
                                        //    in Loop: Header=BB1_410 Depth=1
	beq x0, x15, .LBB1_490
.LBB1_416:                              //  %land.rhs1150.us
                                        //    in Loop: Header=BB1_410 Depth=1
	addi x21 ,  x21 ,  1
	add x10 ,  x0 ,  x26
	call iswspace
	beq x0, x10, .LBB1_410
	jal x0, .LBB1_492
.LBB1_417:                              //  %land.rhs1150
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x26
	call iswspace
	bltu x0, x10, .LBB1_492
.LBB1_418:                              //  %while.body1155
                                        //    in Loop: Header=BB1_417 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x25
	call wcrtomb
	beq x0, x10, .LBB1_420
.LBB1_419:                              //  %while.body1155
                                        //    in Loop: Header=BB1_417 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_421
	jal x0, .LBB1_516
.LBB1_420:                              //  %lor.lhs.false1163
                                        //    in Loop: Header=BB1_417 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_422
.LBB1_421:                              //  %if.then1167
                                        //    in Loop: Header=BB1_417 Depth=1
	addi x22 ,  x22 ,  -1
.LBB1_422:                              //  %if.then1172
                                        //    in Loop: Header=BB1_417 Depth=1
	add x20 ,  x10 ,  x20
	beq x0, x23, .LBB1_428
.LBB1_423:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_417 Depth=1
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sub x25 ,  x20 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_425
.LBB1_424:                              //  %land.lhs.true1180
                                        //    in Loop: Header=BB1_417 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x25, x15, .LBB1_427
.LBB1_425:                              //  %if.then1188
                                        //    in Loop: Header=BB1_417 Depth=1
	lw x10 ,  -1516 ( x8 )          //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -1520 ( x8 )          //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_503
.LBB1_426:                              //  %if.end1194
                                        //    in Loop: Header=BB1_417 Depth=1
	add x20 ,  x25 ,  x10
	sw x10 ,  0 ( x23 )
	sw x10 ,  -1516 ( x8 )          //  4-byte Folded Spill
.LBB1_427:                              //  %if.end1203
                                        //    in Loop: Header=BB1_417 Depth=1
	addi x25 ,  x8 ,  -64
.LBB1_428:                              //  %if.end1203
                                        //    in Loop: Header=BB1_417 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x26 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x14 ,  x26 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x22, .LBB1_491
.LBB1_429:                              //  %if.end1203
                                        //    in Loop: Header=BB1_417 Depth=1
	bltu x0, x14, .LBB1_417
	jal x0, .LBB1_491
.LBB1_430:                              //  %if.end1046.loopexit
	addi x26 ,  x26 ,  4
	addi x21 ,  x21 ,  1
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	lw x15 ,  -1472 ( x8 )          //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	bltu x0, x9, .LBB1_326
	jal x0, .LBB1_5
.LBB1_431:                              //  %if.then1310.split.loop.exit6271
	sw x15 ,  -1476 ( x8 )          //  4-byte Folded Spill
.LBB1_432:                              //  %if.then1310
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_433:                              //  %for.end
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	andi x15 ,  x9 ,  256
	bltu x0, x15, .LBB1_517
.LBB1_434:                              //  %if.end1325
	lw x11 ,  -4 ( x26 )
	ori x15 ,  x11 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_436
.LBB1_435:                              //  %if.then1332
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	addi x26 ,  x26 ,  -4
	call _ungetwc_r
.LBB1_436:                              //  %if.end1335
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_443
.LBB1_437:                              //  %if.then1339
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	sw x0 ,  0 ( x26 )
	lw x15 ,  -1484 ( x8 )          //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x9 ,  32
	bltu x0, x15, .LBB1_442
.LBB1_438:                              //  %if.else1346
	andi x15 ,  x9 ,  8
	bltu x0, x15, .LBB1_444
.LBB1_439:                              //  %if.else1352
	andi x15 ,  x9 ,  4
	bltu x0, x15, .LBB1_445
.LBB1_440:                              //  %if.else1358
	andi x15 ,  x9 ,  1
	bltu x0, x15, .LBB1_442
.LBB1_441:                              //  %if.else1363
	andi x15 ,  x9 ,  2
	bltu x0, x15, .LBB1_449
.LBB1_442:                              //  %if.else1377
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_446
.LBB1_443:
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB1_448
.LBB1_444:                              //  %if.then1349
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB1_446
.LBB1_445:                              //  %if.then1355
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB1_446:                              //  %if.end1383
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
.LBB1_447:                              //  %if.end1383
	addi x22 ,  x22 ,  1
.LBB1_448:                              //  %if.end1385
	addi x15 ,  x8 ,  -1464
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	sub x15 ,  x26 ,  x15
	srai x15 ,  x15 ,  2&31
	add x21 ,  x21 ,  x15
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_604
.LBB1_605:                              //  %if.end1385
	jal x0, .LBB1_10
.LBB1_604:                              //  %if.end1385
	jal x0, .LBB1_506
.LBB1_449:                              //  %if.then1366
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	lw x14 ,  -1484 ( x8 )          //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB1_498
.LBB1_450:                              //  %if.else1372
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	call _wcstoll_r
	jal x0, .LBB1_499
.LBB1_451:                              //  %sw.epilog1537
	xori x15 ,  x11 ,  -1
	beq x0, x15, .LBB1_453
.LBB1_452:                              //  %if.then1540
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_453:                              //  %for.end1546
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_455
.LBB1_454:
	andi x25 ,  x25 ,  -257
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	jal x0, .LBB1_457
.LBB1_455:
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
.LBB1_456:                              //  %for.end1546.thread
	sw x15 ,  -1516 ( x8 )          //  4-byte Folded Spill
.LBB1_457:
	slli x15 ,  x23 ,  24&31
	slti x14 ,  x0 ,  1
	srai x15 ,  x15 ,  24&31
	addi x15 ,  x15 ,  -1
	bgeu x14, x15, .LBB1_519
.LBB1_458:                              //  %if.end1565
	slli x15 ,  x9 ,  24&31
	addi x13 ,  x0 ,  6
	srai x15 ,  x15 ,  24&31
	addi x14 ,  x15 ,  -1
	bltu x13, x14, .LBB1_464
.LBB1_459:                              //  %if.then1570
	slti x15 ,  x15 ,  3
	addi x23 ,  x0 ,  -1
	bltu x0, x15, .LBB1_525
.LBB1_460:                              //  %while.cond1575.preheader
	andi x15 ,  x9 ,  255
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB1_465
.LBB1_461:                              //  %while.body1580.preheader
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1468
	sw x26 ,  -1472 ( x8 )          //  4-byte Folded Spill
	addi x26 ,  x0 ,  3
	add x20 ,  x15 ,  x14
	addi x15 ,  x9 ,  -4
	andi x23 ,  x15 ,  255
.LBB1_462:                              //  %while.body1580
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x20 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lui x30 ,  -16777216&4095
	lui x15 ,  (-16777216>>12)&1048575
	addi x20 ,  x20 ,  -4
	addi x22 ,  x22 ,  -1
	add x14 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x9 ,  24&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	srai x9 ,  x15 ,  24&31
	blt x26, x9, .LBB1_462
.LBB1_463:                              //  %if.end1596.loopexit
	lw x26 ,  -1472 ( x8 )          //  4-byte Folded Reload
	xori x15 ,  x23 ,  -1
	addi x23 ,  x0 ,  -1
	add x21 ,  x15 ,  x21
	jal x0, .LBB1_465
.LBB1_464:
	addi x23 ,  x0 ,  -1
.LBB1_465:                              //  %if.end1596
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	add x9 ,  x15 ,  x14
	andi x14 ,  x25 ,  256
	bltu x0, x14, .LBB1_467
.LBB1_466:
	add x20 ,  x0 ,  x9
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  16
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB1_606
.LBB1_607:
	jal x0, .LBB1_9
.LBB1_606:
	jal x0, .LBB1_472
.LBB1_467:                              //  %if.then1599
	andi x14 ,  x25 ,  1024
	bltu x0, x14, .LBB1_529
.LBB1_468:                              //  %if.end1612
	lw x11 ,  -4 ( x9 )
	ori x15 ,  x11 ,  32
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB1_470
.LBB1_469:
	addi x21 ,  x21 ,  -1
	addi x20 ,  x9 ,  -4
	jal x0, .LBB1_471
.LBB1_470:                              //  %if.then1620
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x11 ,  -8 ( x9 )
	addi x21 ,  x21 ,  -2
	addi x20 ,  x9 ,  -8
.LBB1_471:                              //  %if.end1624
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	call _ungetwc_r
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  16
	sw x20 ,  -1472 ( x8 )          //  4-byte Folded Spill
	beq x0, x15, .LBB1_472
.LBB1_608:                              //  %if.end1624
	jal x0, .LBB1_9
.LBB1_472:                              //  %if.then1630
	andi x15 ,  x25 ,  1536
	sw x0 ,  0 ( x20 )
	xori x15 ,  x15 ,  1024
	bltu x0, x15, .LBB1_475
.LBB1_473:                              //  %if.end1645
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	lw x14 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	beq x0, x15, .LBB1_479
.LBB1_474:
	sub x15 ,  x0 ,  x15
	add x26 ,  x0 ,  x20
	lw x14 ,  -1500 ( x8 )          //  4-byte Folded Reload
	bltu x26, x14, .LBB1_478
.LBB1_477:                              //  %if.then1647
	lw x26 ,  -1504 ( x8 )          //  4-byte Folded Reload
.LBB1_478:                              //  %if.then1647
	addi x2 ,  x2 ,  -16
	lui x30 ,  .str&4095
	lui x14 ,  (.str>>12)&1048575
	sw x15 ,  12 ( x2 )
	addi x15 ,  x0 ,  11
	sw x26 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x2 )
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	call swprintf
	addi x2 ,  x2 ,  16
	jal x0, .LBB1_479
.LBB1_475:                              //  %if.else1638
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	beq x0, x15, .LBB1_479
.LBB1_476:                              //  %if.end1645.thread2731
	addi x11 ,  x26 ,  4
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  10
	sw x15 ,  -1524 ( x8 )          //  4-byte Folded Spill
	call _wcstol_r
	lw x15 ,  -1524 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x10 ,  x15
	lw x14 ,  -1500 ( x8 )          //  4-byte Folded Reload
	bltu x26, x14, .LBB1_478
	jal x0, .LBB1_477
.LBB1_479:                              //  %if.end1660
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	add x26 ,  x0 ,  x23
	call _wcstod_r
	add x20 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_483
.LBB1_480:                              //  %if.else1667
	andi x15 ,  x25 ,  2
	sw x9 ,  -1508 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_484
.LBB1_481:                              //  %if.else1673
	lw x9 ,  -56 ( x8 )
	add x10 ,  x0 ,  x20
	add x13 ,  x0 ,  x23
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x20
	addi x15 ,  x9 ,  4
	sw x15 ,  -56 ( x8 )
	call __unorddf2
	lw x9 ,  0 ( x9 )
	bltu x0, x10, .LBB1_485
.LBB1_482:                              //  %if.else1678
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	call __truncdfsf2
	jal x0, .LBB1_486
.LBB1_483:                              //  %if.then1665
	lw x15 ,  -56 ( x8 )
	addi x22 ,  x22 ,  1
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x23 ,  4 ( x15 )
	sw x20 ,  0 ( x15 )
	add x23 ,  x0 ,  x26
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_609
.LBB1_610:                              //  %if.then1665
	jal x0, .LBB1_10
.LBB1_609:                              //  %if.then1665
	jal x0, .LBB1_506
.LBB1_484:                              //  %if.then1670
	lw x9 ,  -56 ( x8 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	addi x15 ,  x9 ,  4
	sw x15 ,  -56 ( x8 )
	call __extenddftf2
	lw x15 ,  0 ( x9 )
	sw x13 ,  12 ( x15 )
	sw x12 ,  8 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_487
.LBB1_485:                              //  %if.then1676
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
.LBB1_486:                              //  %if.end1682
	sw x10 ,  0 ( x9 )
.LBB1_487:                              //  %if.end1682
	add x23 ,  x0 ,  x26
	lw x9 ,  -1508 ( x8 )           //  4-byte Folded Reload
	addi x22 ,  x22 ,  1
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_611
.LBB1_612:                              //  %if.end1682
	jal x0, .LBB1_10
.LBB1_611:                              //  %if.end1682
	jal x0, .LBB1_506
.LBB1_488:                              //  %if.then181
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	srai x14 ,  x21 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x21 ,  0 ( x15 )
	lw x26 ,  0 ( x27 )
	beq x0, x26, .LBB1_613
.LBB1_614:                              //  %if.then181
	jal x0, .LBB1_10
.LBB1_613:                              //  %if.then181
	jal x0, .LBB1_506
.LBB1_489:                              //  %if.end685.loopexit27
	lw x20 ,  -1472 ( x8 )          //  4-byte Folded Reload
	addi x15 ,  x22 ,  4
	sw x15 ,  -1472 ( x8 )          //  4-byte Folded Spill
	jal x0, .LBB1_348
.LBB1_490:                              //  %while.end1205.loopexit
	sltu x15 ,  x0 ,  x15
	addi x21 ,  x21 ,  1
.LBB1_491:                              //  %while.end1205
	beq x0, x15, .LBB1_493
.LBB1_492:                              //  %if.then1208
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_493:                              //  %if.end1210
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	beq x0, x9, .LBB1_494
.LBB1_615:                              //  %if.end1210
	jal x0, .LBB1_7
.LBB1_494:                              //  %if.then1213
	sb x0 ,  0 ( x20 )
	bltu x0, x23, .LBB1_495
.LBB1_616:                              //  %if.then1213
	jal x0, .LBB1_6
.LBB1_495:                              //  %if.then1213
	lw x15 ,  -1516 ( x8 )          //  4-byte Folded Reload
	sub x15 ,  x20 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -1520 ( x8 )          //  4-byte Folded Reload
	bltu x11, x15, .LBB1_496
.LBB1_617:                              //  %if.then1213
	jal x0, .LBB1_6
.LBB1_496:                              //  %if.then1223
	lw x10 ,  0 ( x23 )
	call realloc
	bltu x0, x10, .LBB1_497
.LBB1_618:                              //  %if.then1223
	jal x0, .LBB1_6
.LBB1_497:                              //  %if.then1228
	sw x10 ,  0 ( x23 )
	jal x0, .LBB1_6
.LBB1_498:                              //  %if.then1369
	lw x13 ,  -1476 ( x8 )          //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -1464
	add x12 ,  x0 ,  x0
	call _wcstoull_r
.LBB1_499:                              //  %if.end1375
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_447
.LBB1_500:
	add x23 ,  x0 ,  x26
.LBB1_501:                              //  %input_failure
	beq x0, x22, .LBB1_505
.LBB1_502:                              //  %land.lhs.true1695
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_506
.LBB1_503:                              //  %land.lhs.true1695
	addi x22 ,  x0 ,  -1
	bltu x0, x24, .LBB1_507
	jal x0, .LBB1_513
.LBB1_504:
	add x23 ,  x0 ,  x26
	bltu x0, x22, .LBB1_502
.LBB1_505:
	add x22 ,  x0 ,  x23
.LBB1_506:                              //  %all_done
	beq x0, x24, .LBB1_513
.LBB1_507:                              //  %if.then1718
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB1_511
.LBB1_508:                              //  %for.cond1722.preheader
	lhu x15 ,  6 ( x24 )
	addi x22 ,  x0 ,  -1
	beq x0, x15, .LBB1_511
.LBB1_509:                              //  %for.body1727.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB1_510:                              //  %for.body1727
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x24 )
	add x15 ,  x9 ,  x15
	lw x15 ,  0 ( x15 )
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  0 ( x24 )
	addi x18 ,  x18 ,  1
	add x15 ,  x9 ,  x15
	addi x9 ,  x9 ,  4
	lw x15 ,  0 ( x15 )
	sw x0 ,  0 ( x15 )
	lhu x15 ,  6 ( x24 )
	bltu x18, x15, .LBB1_510
.LBB1_511:                              //  %if.end1735
	lw x10 ,  0 ( x24 )
	beq x0, x10, .LBB1_513
.LBB1_512:                              //  %if.then1738
	call free
.LBB1_513:                              //  %cleanup1744
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
.LBB1_537:
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	bltu x0, x22, .LBB1_502
	jal x0, .LBB1_505
.LBB1_515:
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	add x23 ,  x0 ,  x26
	bltu x0, x22, .LBB1_502
	jal x0, .LBB1_505
.LBB1_516:                              //  %input_failure.loopexit35
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	addi x23 ,  x0 ,  -1
	bltu x0, x22, .LBB1_502
	jal x0, .LBB1_505
.LBB1_517:                              //  %if.then1317
	beq x0, x20, .LBB1_506
.LBB1_518:                              //  %if.then1321
	lw x11 ,  -4 ( x26 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	bltu x0, x24, .LBB1_507
	jal x0, .LBB1_513
.LBB1_519:                              //  %while.cond1556.preheader
	addi x9 ,  x8 ,  -1464
	bgeu x9, x20, .LBB1_533
.LBB1_520:                              //  %while.body1560.preheader
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
.LBB1_521:                              //  %while.body1560
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  -4 ( x20 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	addi x20 ,  x20 ,  -4
	bltu x9, x20, .LBB1_521
	jal x0, .LBB1_506
.LBB1_522:                              //  %if.then44
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	bltu x0, x22, .LBB1_502
	jal x0, .LBB1_505
.LBB1_523:
	add x22 ,  x0 ,  x26
	bltu x0, x24, .LBB1_507
	jal x0, .LBB1_513
.LBB1_525:                              //  %while.cond1586.preheader
	bge x0, x22, .LBB1_533
.LBB1_526:                              //  %while.body1590.preheader
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x8 ,  -1464
	add x15 ,  x15 ,  x14
	addi x9 ,  x15 ,  -4
.LBB1_527:                              //  %while.body1590
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x9 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	addi x9 ,  x9 ,  -4
	addi x22 ,  x22 ,  -1
	blt x0, x22, .LBB1_527
	jal x0, .LBB1_533
.LBB1_529:                              //  %while.cond1603.preheader
	bge x0, x22, .LBB1_533
.LBB1_530:                              //  %while.body1607.preheader
	addi x14 ,  x8 ,  -1464
	add x15 ,  x15 ,  x14
	addi x9 ,  x15 ,  -4
.LBB1_531:                              //  %while.body1607
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x9 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	addi x9 ,  x9 ,  -4
	addi x22 ,  x22 ,  -1
	blt x0, x22, .LBB1_531
.LBB1_533:
	lw x22 ,  -1512 ( x8 )          //  4-byte Folded Reload
	bltu x0, x24, .LBB1_507
	jal x0, .LBB1_513
.LBB1_539:
	add x22 ,  x0 ,  x23
	bltu x0, x24, .LBB1_507
	jal x0, .LBB1_513
.Lfunc_end1:
	.size	__svfwscanf_r, .Lfunc_end1-__svfwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_42
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_35
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_31
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_41
	.long	.LBB1_506
	.long	.LBB1_46
	.long	.LBB1_506
	.long	.LBB1_41
	.long	.LBB1_41
	.long	.LBB1_41
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_33
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_47
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_45
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_48
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_41
	.long	.LBB1_506
	.long	.LBB1_50
	.long	.LBB1_51
	.long	.LBB1_41
	.long	.LBB1_41
	.long	.LBB1_41
	.long	.LBB1_20
	.long	.LBB1_52
	.long	.LBB1_33
	.long	.LBB1_506
	.long	.LBB1_23
	.long	.LBB1_37
	.long	.LBB1_53
	.long	.LBB1_59
	.long	.LBB1_60
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_63
	.long	.LBB1_19
	.long	.LBB1_64
	.long	.LBB1_506
	.long	.LBB1_506
	.long	.LBB1_45
	.long	.LBB1_506
	.long	.LBB1_19
JTI1_1:
	.long	.LBB1_80
	.long	.LBB1_91
	.long	.LBB1_102
	.long	.LBB1_112
	.long	.LBB1_134
JTI1_2:
	.long	.LBB1_159
	.long	.LBB1_179
	.long	.LBB1_159
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_182
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_155
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_161
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_163
	.long	.LBB1_169
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_171
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_175
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_177
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_161
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_163
	.long	.LBB1_169
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_185
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_171
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_175
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_179
	.long	.LBB1_177
JTI1_3:
	.long	.LBB1_433
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_122
	.long	.LBB1_432
	.long	.LBB1_122
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_129
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_116
	.long	.LBB1_124
	.long	.LBB1_124
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_126
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_120
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_432
	.long	.LBB1_126
                                        //  -- End function
	.text
	.globl	__svfwscanf             //  -- Begin function __svfwscanf
	.type	__svfwscanf,@function
__svfwscanf:                            //  @__svfwscanf
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
	jal x0, __svfwscanf_r
.Lfunc_end2:
	.size	__svfwscanf, .Lfunc_end2-__svfwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfwscanf_r             //  -- Begin function _vfwscanf_r
	.type	_vfwscanf_r,@function
_vfwscanf_r:                            //  @_vfwscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x19, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	bltu x0, x15, .LBB3_3
.LBB3_2:                                //  %if.then
	add x10 ,  x0 ,  x19
	call __sinit
.LBB3_3:                                //  %if.end
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, __svfwscanf_r
.Lfunc_end3:
	.size	_vfwscanf_r, .Lfunc_end3-_vfwscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfwscanf_r.basefix,@object //  @__svfwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfwscanf_r.basefix:
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
	.size	__svfwscanf_r.basefix, 34

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
