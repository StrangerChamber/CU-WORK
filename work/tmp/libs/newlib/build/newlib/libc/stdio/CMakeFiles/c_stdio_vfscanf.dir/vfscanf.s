	.text
	.file	"vfscanf.c"
	.globl	vfscanf                 //  -- Begin function vfscanf
	.type	vfscanf,@function
vfscanf:                                //  @vfscanf
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
	jal x0, __svfscanf_r
.Lfunc_end0:
	.size	vfscanf, .Lfunc_end0-vfscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfscanf_r            //  -- Begin function __svfscanf_r
	.type	__svfscanf_r,@function
__svfscanf_r:                           //  @__svfscanf_r
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
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x18 )
	lw x15 ,  100 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x18 )
.LBB1_2:                                //  %do.end
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_3
.LBB1_552:                              //  %do.end
	jal x0, .LBB1_520
.LBB1_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
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
.LBB1_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //        Child Loop BB1_7 Depth 3
                                        //      Child Loop BB1_15 Depth 2
                                        //      Child Loop BB1_73 Depth 2
                                        //      Child Loop BB1_193 Depth 2
                                        //      Child Loop BB1_273 Depth 2
                                        //      Child Loop BB1_156 Depth 2
                                        //      Child Loop BB1_452 Depth 2
                                        //      Child Loop BB1_433 Depth 2
                                        //      Child Loop BB1_497 Depth 2
                                        //      Child Loop BB1_256 Depth 2
                                        //      Child Loop BB1_363 Depth 2
                                        //      Child Loop BB1_482 Depth 2
                                        //      Child Loop BB1_407 Depth 2
                                        //      Child Loop BB1_123 Depth 2
                                        //      Child Loop BB1_501 Depth 2
                                        //      Child Loop BB1_249 Depth 2
                                        //      Child Loop BB1_348 Depth 2
                                        //      Child Loop BB1_468 Depth 2
                                        //      Child Loop BB1_376 Depth 2
                                        //      Child Loop BB1_105 Depth 2
                                        //      Child Loop BB1_243 Depth 2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x21 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB1_11
.LBB1_5:                                //  %for.cond24.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_7 Depth 3
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_7
	jal x0, .LBB1_6
.LBB1_8:                                //  %if.end35
                                        //    in Loop: Header=BB1_7 Depth=3
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_7
.LBB1_6:                                //  %land.lhs.true27
                                        //    in Loop: Header=BB1_5 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_9
.LBB1_7:                                //  %lor.lhs.false
                                        //    Parent Loop BB1_4 Depth=1
                                        //      Parent Loop BB1_5 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_8
.LBB1_9:                                //  %for.end
                                        //    in Loop: Header=BB1_5 Depth=2
	lbu x15 ,  0 ( x24 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_10
.LBB1_553:                              //  %for.end
	jal x0, .LBB1_525
.LBB1_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB1_5 Depth=2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x24 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_5
.LBB1_11:                               //  %if.end38
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  37
	bltu x0, x15, .LBB1_38
.LBB1_12:                               //  %again.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x0
	add x23 ,  x0 ,  x25
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
	jal x0, .LBB1_525
.LBB1_13:                               //  %sw.bb124
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	add x24 ,  x0 ,  x21
	beq x0, x15, .LBB1_14
.LBB1_554:                              //  %sw.bb124
	jal x0, .LBB1_525
.LBB1_14:                               //  %again
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
.LBB1_555:                              //  %again
	jal x0, .LBB1_525
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  JTI1_0&4095
	lui x14 ,  (JTI1_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	addi x21 ,  x24 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_16:                               //  %sw.bb141
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB1_17
.LBB1_556:                              //  %sw.bb141
	jal x0, .LBB1_525
.LBB1_17:                               //  %if.end145
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x11 ,  x0 ,  10
	add x10 ,  x0 ,  x23
	call __mulsi3
	add x15 ,  x26 ,  x10
	add x24 ,  x0 ,  x21
	addi x23 ,  x15 ,  -48
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
	jal x0, .LBB1_525
.LBB1_18:                               //  %sw.bb93
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_19
.LBB1_557:                              //  %sw.bb93
	jal x0, .LBB1_525
.LBB1_19:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x25 ,  x25 ,  2
	jal x0, .LBB1_20
.LBB1_21:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  159
	or x15 ,  x23 ,  x15
	beq x0, x15, .LBB1_22
.LBB1_558:                              //  %sw.bb72
	jal x0, .LBB1_525
.LBB1_22:                               //  %if.end78
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x25 ,  x25 ,  16
	add x23 ,  x0 ,  x0
	jal x0, .LBB1_20
.LBB1_23:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_24
.LBB1_559:                              //  %sw.bb99
	jal x0, .LBB1_525
.LBB1_24:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x15 ,  1 ( x24 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB1_34
.LBB1_25:                               //  %if.end103
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  4
	jal x0, .LBB1_29
.LBB1_26:                               //  %sw.bb80
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_27
.LBB1_560:                              //  %sw.bb80
	jal x0, .LBB1_525
.LBB1_27:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x15 ,  1 ( x24 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB1_35
.LBB1_28:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x0 ,  1
.LBB1_29:                               //  %if.end84
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24 ,  x0 ,  x21
	jal x0, .LBB1_37
.LBB1_30:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  143
	beq x0, x15, .LBB1_31
.LBB1_561:                              //  %sw.bb129
	jal x0, .LBB1_525
.LBB1_31:                               //  %do.body134
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x22, .LBB1_33
.LBB1_32:                               //  %if.then136
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x2
	addi x22 ,  x15 ,  -8
	add x2 ,  x0 ,  x22
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB1_33:                               //  %do.end139
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x25 ,  x25 ,  128
.LBB1_20:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24 ,  x0 ,  x21
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
	jal x0, .LBB1_525
.LBB1_34:                               //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  8
	jal x0, .LBB1_36
.LBB1_35:                               //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  2
.LBB1_36:                               //    in Loop: Header=BB1_15 Depth=2
	addi x24 ,  x24 ,  2
.LBB1_37:                               //    in Loop: Header=BB1_15 Depth=2
	or x25 ,  x25 ,  x15
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
	jal x0, .LBB1_525
.LBB1_38:                               //    in Loop: Header=BB1_4 Depth=1
	add x21 ,  x0 ,  x24
.LBB1_39:                               //  %literal
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_41
.LBB1_40:                               //  %land.lhs.true52
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_41
.LBB1_562:                              //  %land.lhs.true52
	jal x0, .LBB1_522
.LBB1_41:                               //  %if.end56
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lbu x14 ,  -1 ( x21 )
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB1_42
.LBB1_563:                              //  %if.end56
	jal x0, .LBB1_525
.LBB1_42:                               //  %if.end63
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
.LBB1_43:                               //  %for.cond.outer2925.backedge
                                        //    in Loop: Header=BB1_4 Depth=1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_525
.LBB1_44:                               //  %sw.epilog.loopexit5308
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  4
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_45:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  512
	jal x0, .LBB1_46
.LBB1_47:                               //  %sw.bb163
                                        //    in Loop: Header=BB1_4 Depth=1
	ori x25 ,  x25 ,  1
.LBB1_48:                               //  %sw.bb165
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_49:                               //  %sw.bb146
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x0 ,  10
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtol_r&4095
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	jal x0, .LBB1_51
.LBB1_50:                               //  %sw.bb150
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x0 ,  8
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtoul_r&4095
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
.LBB1_51:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	srli x30 ,  x30 ,  12&31
	ori x25 ,  x25 ,  1
	or x15 ,  x15 ,  x30
	sw x15 ,  -700 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_52:                               //  %sw.bb157
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  2
	ori x25 ,  x25 ,  1
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_53:                               //  %sw.bb160
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x8 ,  -328
	add x11 ,  x0 ,  x21
	call __sccl
	add x21 ,  x0 ,  x10
	slti x24 ,  x0 ,  1
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_54:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
	jal x0, .LBB1_56
.LBB1_55:                               //  %sw.epilog.loopexit3750
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	add x15 ,  x0 ,  x0
.LBB1_56:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	lui x30 ,  _strtol_r&4095
	jal x0, .LBB1_68
.LBB1_57:                               //  %sw.bb169
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_43
.LBB1_58:                               //  %if.end173
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  8
	bltu x0, x15, .LBB1_324
.LBB1_59:                               //  %if.else178
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  4
	beq x0, x15, .LBB1_60
.LBB1_564:                              //  %if.else178
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_498
.LBB1_60:                               //  %if.else184
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_62
.LBB1_61:                               //  %if.else189
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  2
	beq x0, x15, .LBB1_62
.LBB1_565:                              //  %if.else189
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_517
.LBB1_62:                               //  %if.then187
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_525
.LBB1_63:                               //  %sw.epilog.loopexit4352
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  8
	jal x0, .LBB1_67
.LBB1_64:                               //  %sw.bb167
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  544
.LBB1_46:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	jal x0, .LBB1_68
.LBB1_65:                               //  %sw.epilog.loopexit4
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
	jal x0, .LBB1_69
.LBB1_66:                               //  %sw.epilog.loopexit4825
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
.LBB1_67:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -696 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	lui x30 ,  _strtoul_r&4095
.LBB1_68:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -700 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_70
.LBB1_69:                               //  %land.lhs.true204
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_70
.LBB1_566:                              //  %land.lhs.true204
	jal x0, .LBB1_522
.LBB1_70:                               //  %if.end208
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  64
	bltu x0, x15, .LBB1_77
.LBB1_71:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_73
.LBB1_72:                               //  %if.then224
                                        //    in Loop: Header=BB1_73 Depth=2
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_73:                               //  %while.cond.preheader
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB1_77
.LBB1_74:                               //  %while.body
                                        //    in Loop: Header=BB1_73 Depth=2
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB1_72
.LBB1_75:                               //  %if.else227
                                        //    in Loop: Header=BB1_73 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_76
.LBB1_567:                              //  %if.else227
	jal x0, .LBB1_522
.LBB1_76:                               //  %if.else227.if.end232_crit_edge
                                        //    in Loop: Header=BB1_73 Depth=2
	lw x15 ,  0 ( x18 )
	addi x20 ,  x20 ,  1
	jal x0, .LBB1_73
.LBB1_77:                               //  %if.end233
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x0 ,  4
	bltu x15, x24, .LBB1_43
.LBB1_78:                               //  %if.end233
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  JTI1_1&4095
	lui x14 ,  (JTI1_1>>12)&1048575
	slli x15 ,  x24 ,  2&31
	sw x27 ,  -712 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_79:                               //  %sw.bb234
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB1_81
.LBB1_80:                               //    in Loop: Header=BB1_4 Depth=1
	slti x23 ,  x0 ,  1
.LBB1_81:                               //  %sw.bb234
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_101
.LBB1_82:                               //  %if.else418
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_242
.LBB1_83:                               //  %if.else451
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_296
.LBB1_84:                               //  %if.else512
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x24 ,  0 ( x15 )
	jal x0, .LBB1_334
.LBB1_85:                               //  %sw.bb541
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB1_87
.LBB1_86:                               //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB1_87:                               //  %sw.bb541
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_119
.LBB1_88:                               //  %if.else756
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_246
.LBB1_89:                               //  %if.else794
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_300
.LBB1_90:                               //  %if.else855
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	add x24 ,  x0 ,  x25
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB1_344
.LBB1_91:                               //  %sw.bb940
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x0
	bne x23, x27, .LBB1_93
.LBB1_92:                               //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB1_93:                               //  %sw.bb940
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_140
.LBB1_94:                               //  %if.else1160
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_253
.LBB1_95:                               //  %if.else1192
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_304
.LBB1_96:                               //  %if.else1254
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x24 ,  -716 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_359
.LBB1_97:                               //  %sw.bb1337
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x23 ,  -1
	addi x14 ,  x0 ,  348
	bltu x14, x15, .LBB1_142
.LBB1_98:                               //  %sw.bb1337
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x23
	jal x0, .LBB1_143
.LBB1_99:                               //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x26 ,  x23 ,  -1
	addi x27 ,  x0 ,  348
	bltu x27, x26, .LBB1_146
.LBB1_100:                              //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x23
	jal x0, .LBB1_147
.LBB1_101:                              //  %if.then241
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -720 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB1_260
.LBB1_102:                              //  %while.body307.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_105
	jal x0, .LBB1_521
.LBB1_113:                              //    in Loop: Header=BB1_105 Depth=2
	add x24 ,  x0 ,  x25
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB1_117
.LBB1_103:                              //  %if.end389.us
                                        //    in Loop: Header=BB1_105 Depth=2
	beq x0, x23, .LBB1_325
.LBB1_104:                              //  %while.body307.us
                                        //    in Loop: Header=BB1_105 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_105
.LBB1_568:                              //  %while.body307.us
	jal x0, .LBB1_521
.LBB1_105:                              //  %if.end312.us
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x15, .LBB1_107
.LBB1_106:                              //  %if.end312.us
                                        //    in Loop: Header=BB1_105 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_108
.LBB1_107:                              //  %if.then325.us
                                        //    in Loop: Header=BB1_105 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_108:                              //  %if.end327.us
                                        //    in Loop: Header=BB1_105 Depth=2
	add x24 ,  x0 ,  x0
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_113
.LBB1_109:                              //  %if.end327.us
                                        //    in Loop: Header=BB1_105 Depth=2
	beq x0, x10, .LBB1_114
.LBB1_110:                              //  %if.end327.us
                                        //    in Loop: Header=BB1_105 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_111
.LBB1_569:                              //  %if.end327.us
	jal x0, .LBB1_521
.LBB1_111:                              //  %if.then343.us
                                        //    in Loop: Header=BB1_105 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x25
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_115
.LBB1_112:                              //  %if.then343.us
                                        //    in Loop: Header=BB1_105 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_116
	jal x0, .LBB1_115
.LBB1_114:                              //  %if.then343.thread.us
                                        //    in Loop: Header=BB1_105 Depth=2
	add x20 ,  x20 ,  x25
.LBB1_115:                              //  %if.then351.us
                                        //    in Loop: Header=BB1_105 Depth=2
	addi x23 ,  x23 ,  -1
.LBB1_116:                              //  %if.end377.us
                                        //    in Loop: Header=BB1_105 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_103
.LBB1_117:                              //  %land.lhs.true381.us
                                        //    in Loop: Header=BB1_105 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_103
.LBB1_118:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB1_570
.LBB1_571:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_394
.LBB1_570:
	jal x0, .LBB1_521
.LBB1_119:                              //  %if.then548
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -728 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB1_262
.LBB1_120:                              //  %while.body623.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_123
	jal x0, .LBB1_522
.LBB1_121:                              //  %if.end725
                                        //    in Loop: Header=BB1_123 Depth=2
	beq x0, x23, .LBB1_329
.LBB1_122:                              //  %while.body623
                                        //    in Loop: Header=BB1_123 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_123
.LBB1_572:                              //  %while.body623
	jal x0, .LBB1_522
.LBB1_123:                              //  %if.end628
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x15, .LBB1_125
.LBB1_124:                              //  %if.end628
                                        //    in Loop: Header=BB1_123 Depth=2
	lw x15 ,  -688 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_126
.LBB1_125:                              //  %if.then642
                                        //    in Loop: Header=BB1_123 Depth=2
	addi x10 ,  x8 ,  -688
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_126:                              //  %if.end644
                                        //    in Loop: Header=BB1_123 Depth=2
	addi x25 ,  x8 ,  -72
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -688
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_137
.LBB1_127:                              //  %if.end644
                                        //    in Loop: Header=BB1_123 Depth=2
	beq x0, x10, .LBB1_131
.LBB1_128:                              //  %if.end644
                                        //    in Loop: Header=BB1_123 Depth=2
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_129
.LBB1_573:                              //  %if.end644
	jal x0, .LBB1_522
.LBB1_129:                              //  %if.then657
                                        //    in Loop: Header=BB1_123 Depth=2
	lw x27 ,  -72 ( x8 )
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB1_132
.LBB1_130:                              //    in Loop: Header=BB1_123 Depth=2
	addi x26 ,  x0 ,  -1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB1_135
.LBB1_131:                              //  %if.then657.thread
                                        //    in Loop: Header=BB1_123 Depth=2
	add x27 ,  x0 ,  x0
	sw x0 ,  -72 ( x8 )
.LBB1_132:                              //  %if.end.i
                                        //    in Loop: Header=BB1_123 Depth=2
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
	bne x10, x15, .LBB1_134
.LBB1_133:                              //    in Loop: Header=BB1_123 Depth=2
	lbu x26 ,  -61 ( x8 )
.LBB1_134:                              //  %if.end.i
                                        //    in Loop: Header=BB1_123 Depth=2
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x25 ,  x8 ,  -72
.LBB1_135:                              //  %if.end.i
                                        //    in Loop: Header=BB1_123 Depth=2
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB1_136
.LBB1_574:                              //  %if.end.i
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_495
.LBB1_136:                              //  %if.end671
                                        //    in Loop: Header=BB1_123 Depth=2
	xori x15 ,  x14 ,  3
	lw x14 ,  -688 ( x8 )
	add x20 ,  x20 ,  x24
	add x24 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
.LBB1_137:                              //  %if.end713
                                        //    in Loop: Header=BB1_123 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_121
.LBB1_138:                              //  %land.lhs.true717
                                        //    in Loop: Header=BB1_123 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_121
.LBB1_139:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB1_575
.LBB1_576:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_502
.LBB1_575:
	jal x0, .LBB1_522
.LBB1_140:                              //  %if.then947
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x26 ,  x25 ,  16
	beq x0, x26, .LBB1_264
.LBB1_141:                              //    in Loop: Header=BB1_4 Depth=1
	addi x25 ,  x8 ,  -72
	jal x0, .LBB1_266
.LBB1_142:                              //    in Loop: Header=BB1_4 Depth=1
	addi x26 ,  x0 ,  349
.LBB1_143:                              //  %sw.bb1337
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  3456&4095
	lui x13 ,  (3456>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	or x24 ,  x13 ,  x25
	beq x0, x26, .LBB1_150
.LBB1_144:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x0
	bltu x14, x15, .LBB1_152
.LBB1_145:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x25
	jal x0, .LBB1_153
.LBB1_146:                              //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  349
.LBB1_147:                              //  %sw.bb1500
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	call _localeconv_r
	add x15 ,  x0 ,  x0
	ori x25 ,  x25 ,  1920
	beq x0, x24, .LBB1_151
.LBB1_148:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x10 )
	sw x15 ,  -740 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	bltu x27, x26, .LBB1_189
.LBB1_149:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_190
.LBB1_150:                              //    in Loop: Header=BB1_4 Depth=1
	add x23 ,  x0 ,  x0
	add x25 ,  x0 ,  x23
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	bltu x0, x15, .LBB1_178
	jal x0, .LBB1_181
.LBB1_151:                              //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
	add x26 ,  x0 ,  x15
	add x23 ,  x0 ,  x15
	sw x15 ,  -728 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x15
	jal x0, .LBB1_268
.LBB1_152:                              //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x23 ,  -349
.LBB1_153:                              //  %for.body1348.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x23 ,  x0 ,  x25
	jal x0, .LBB1_156
.LBB1_189:                              //    in Loop: Header=BB1_4 Depth=1
	addi x14 ,  x23 ,  -349
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
.LBB1_190:                              //  %for.body1513.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x13 ,  x8 ,  -678
	add x26 ,  x0 ,  x15
	add x23 ,  x0 ,  x15
	add x27 ,  x0 ,  x15
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -728 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_193
.LBB1_191:                              //  %if.then1661
                                        //    in Loop: Header=BB1_193 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_192:                              //  %if.end1669
                                        //    in Loop: Header=BB1_193 Depth=2
	addi x15 ,  x8 ,  -678
	addi x24 ,  x24 ,  -1
	add x13 ,  x27 ,  x15
	beq x0, x24, .LBB1_240
.LBB1_193:                              //  %for.body1513
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x18 )
	addi x11 ,  x0 ,  78
	lbu x14 ,  0 ( x15 )
	addi x12 ,  x14 ,  -43
	bltu x11, x12, .LBB1_225
.LBB1_194:                              //  %for.body1513
                                        //    in Loop: Header=BB1_193 Depth=2
	lui x30 ,  JTI1_2&4095
	lui x11 ,  (JTI1_2>>12)&1048575
	slli x12 ,  x12 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	add x12 ,  x11 ,  x12
	lw x12 ,  0 ( x12 )
	jalr x0 ,  0 ( x12 )
.LBB1_195:                              //  %sw.bb1528
                                        //    in Loop: Header=BB1_193 Depth=2
	slli x13 ,  x26 ,  24&31
	slli x12 ,  x23 ,  24&31
	srai x13 ,  x13 ,  24&31
	srai x12 ,  x12 ,  24&31
	sub x13 ,  x0 ,  x13
	bne x12, x13, .LBB1_240
.LBB1_196:                              //  %if.then1534
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x25 ,  x25 ,  -385
.LBB1_197:                              //  %fok
                                        //    in Loop: Header=BB1_193 Depth=2
	addi x13 ,  x8 ,  -678
	add x13 ,  x27 ,  x13
	addi x27 ,  x27 ,  1
	sb x14 ,  0 ( x13 )
.LBB1_198:                              //  %fskip
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x14 ,  4 ( x18 )
	addi x20 ,  x20 ,  1
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB1_191
.LBB1_199:                              //  %if.else1664
                                        //    in Loop: Header=BB1_193 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_192
	jal x0, .LBB1_240
.LBB1_200:                              //  %sw.bb1537
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  128
	beq x0, x13, .LBB1_240
.LBB1_201:                              //  %if.then1540
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x25 ,  x25 ,  -129
	jal x0, .LBB1_197
.LBB1_202:                              //  %sw.bb1572
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x23 ,  255
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB1_240
.LBB1_203:                              //    in Loop: Header=BB1_193 Depth=2
	addi x23 ,  x0 ,  2
	jal x0, .LBB1_197
.LBB1_204:                              //  %sw.bb1620
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x12 ,  x25 ,  1280
	xori x12 ,  x12 ,  1024
	beq x0, x12, .LBB1_207
.LBB1_205:                              //  %lor.lhs.false1624
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x12 ,  x25 ,  1024
	beq x0, x12, .LBB1_240
.LBB1_206:                              //  %lor.lhs.false1624
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x12 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x12, .LBB1_240
.LBB1_207:                              //  %if.then1629
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x11 ,  x25 ,  512
	add x12 ,  x0 ,  x0
	bne x11, x12, .LBB1_209
.LBB1_208:                              //    in Loop: Header=BB1_193 Depth=2
	lw x11 ,  -720 ( x8 )           //  4-byte Folded Reload
	sw x13 ,  -728 ( x8 )           //  4-byte Folded Spill
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x10 ,  x11
	sw x11 ,  -724 ( x8 )           //  4-byte Folded Spill
.LBB1_209:                              //  %if.then1629
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  -1921
	sw x12 ,  -716 ( x8 )           //  4-byte Folded Spill
	ori x25 ,  x13 ,  384
	jal x0, .LBB1_197
.LBB1_210:                              //  %sw.bb1602
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  2
	bltu x0, x13, .LBB1_240
.LBB1_211:                              //    in Loop: Header=BB1_193 Depth=2
	addi x26 ,  x0 ,  3
	jal x0, .LBB1_197
.LBB1_212:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  1792
	xori x13 ,  x13 ,  1792
	bltu x0, x13, .LBB1_231
.LBB1_213:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x13, .LBB1_231
.LBB1_214:                              //  %sw.bb1578
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	bltu x0, x13, .LBB1_231
.LBB1_215:                              //  %if.then1589
                                        //    in Loop: Header=BB1_193 Depth=2
	slti x26 ,  x0 ,  1
	jal x0, .LBB1_220
.LBB1_216:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  1792
	xori x12 ,  x13 ,  1792
	andi x13 ,  x23 ,  255
	bltu x0, x12, .LBB1_234
.LBB1_217:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x12 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x12, .LBB1_234
.LBB1_218:                              //  %sw.bb1543
                                        //    in Loop: Header=BB1_193 Depth=2
	bltu x0, x13, .LBB1_234
.LBB1_219:                              //  %if.then1554
                                        //    in Loop: Header=BB1_193 Depth=2
	slti x23 ,  x0 ,  1
.LBB1_220:                              //  %fok
                                        //    in Loop: Header=BB1_193 Depth=2
	add x13 ,  x0 ,  x0
	andi x25 ,  x25 ,  -1921
	sw x13 ,  -716 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_197
.LBB1_221:                              //  %sw.bb1608
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  6
	bltu x0, x13, .LBB1_240
.LBB1_222:                              //    in Loop: Header=BB1_193 Depth=2
	addi x26 ,  x0 ,  7
	jal x0, .LBB1_197
.LBB1_223:                              //  %sw.bb1614
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x13 ,  x13 ,  7
	bltu x0, x13, .LBB1_240
.LBB1_224:                              //    in Loop: Header=BB1_193 Depth=2
	addi x26 ,  x0 ,  8
	jal x0, .LBB1_197
.LBB1_225:                              //  %sw.default1639
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  512
	beq x0, x13, .LBB1_240
.LBB1_226:                              //  %sw.default1639
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x13 ,  -740 ( x8 )           //  4-byte Folded Reload
	lbu x13 ,  0 ( x13 )
	bne x14, x13, .LBB1_240
.LBB1_227:                              //  %if.then1649
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	andi x25 ,  x25 ,  -641
	sw x13 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_197
.LBB1_228:                              //  %sw.bb1516
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x25 ,  256
	beq x0, x13, .LBB1_195
.LBB1_229:                              //  %if.then1519
                                        //    in Loop: Header=BB1_193 Depth=2
	lw x14 ,  -716 ( x8 )           //  4-byte Folded Reload
	andi x25 ,  x25 ,  -129
	addi x14 ,  x14 ,  1
	sw x14 ,  -716 ( x8 )           //  4-byte Folded Spill
	lw x14 ,  -736 ( x8 )           //  4-byte Folded Reload
	beq x0, x14, .LBB1_239
.LBB1_230:                              //  %if.then1523
                                        //    in Loop: Header=BB1_193 Depth=2
	addi x14 ,  x14 ,  -1
	addi x24 ,  x24 ,  1
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_198
.LBB1_231:                              //  %if.end1591
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x12 ,  x13 ,  5
	beq x0, x12, .LBB1_238
.LBB1_232:                              //  %if.end1591
                                        //    in Loop: Header=BB1_193 Depth=2
	xori x13 ,  x13 ,  3
	beq x0, x13, .LBB1_238
	jal x0, .LBB1_240
.LBB1_234:                              //  %if.end1556
                                        //    in Loop: Header=BB1_193 Depth=2
	xori x13 ,  x13 ,  2
	bltu x0, x13, .LBB1_236
.LBB1_235:                              //    in Loop: Header=BB1_193 Depth=2
	addi x23 ,  x0 ,  3
	jal x0, .LBB1_197
.LBB1_236:                              //  %if.end1561
                                        //    in Loop: Header=BB1_193 Depth=2
	andi x13 ,  x26 ,  255
	xori x12 ,  x13 ,  4
	beq x0, x12, .LBB1_238
.LBB1_237:                              //  %if.end1561
                                        //    in Loop: Header=BB1_193 Depth=2
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB1_240
.LBB1_238:                              //  %if.then1569
                                        //    in Loop: Header=BB1_193 Depth=2
	addi x26 ,  x26 ,  1
	jal x0, .LBB1_197
.LBB1_239:                              //    in Loop: Header=BB1_193 Depth=2
	add x14 ,  x0 ,  x0
	sw x14 ,  -736 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_198
.LBB1_240:                              //  %for.end1670
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_267
.LBB1_241:                              //    in Loop: Header=BB1_4 Depth=1
	andi x25 ,  x25 ,  -257
	jal x0, .LBB1_268
.LBB1_242:                              //  %for.cond422.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
.LBB1_243:                              //  %for.cond422
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  4 ( x18 )
	bge x15, x23, .LBB1_294
.LBB1_244:                              //  %if.then426
                                        //    in Loop: Header=BB1_243 Depth=2
	lw x14 ,  0 ( x18 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sub x23 ,  x23 ,  x15
	add x24 ,  x24 ,  x15
	add x14 ,  x15 ,  x14
	sw x14 ,  0 ( x18 )
	call __srefill_r
	beq x0, x10, .LBB1_243
.LBB1_245:                              //  %if.then433
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_295
	jal x0, .LBB1_522
.LBB1_246:                              //  %while.cond760.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x24 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x24
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB1_247
.LBB1_577:                              //  %while.cond760.preheader
	jal x0, .LBB1_525
.LBB1_247:                              //  %while.body765.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x14 ,  x20 ,  1
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_249
.LBB1_248:                              //  %if.end787
                                        //    in Loop: Header=BB1_249 Depth=2
	lbu x14 ,  0 ( x15 )
	addi x23 ,  x23 ,  -1
	add x13 ,  x14 ,  x24
	addi x14 ,  x20 ,  1
	lbu x13 ,  0 ( x13 )
	beq x0, x13, .LBB1_43
.LBB1_249:                              //  %while.body765
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x20 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x0, x23, .LBB1_43
.LBB1_250:                              //  %if.end775
                                        //    in Loop: Header=BB1_249 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB1_248
.LBB1_251:                              //  %land.lhs.true779
                                        //    in Loop: Header=BB1_249 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_43
.LBB1_252:                              //  %land.lhs.true779.if.end787_crit_edge
                                        //    in Loop: Header=BB1_249 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_248
.LBB1_253:                              //  %while.cond1164.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_308
.LBB1_254:                              //  %while.body1171.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x14 ,  x0 ,  1
	jal x0, .LBB1_256
.LBB1_255:                              //  %if.end1189
                                        //    in Loop: Header=BB1_256 Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	add x13 ,  x14 ,  x13
	addi x14 ,  x24 ,  1
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	bltu x0, x13, .LBB1_309
.LBB1_256:                              //  %while.body1171
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x24 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x23, x24, .LBB1_309
.LBB1_257:                              //  %if.end1181
                                        //    in Loop: Header=BB1_256 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB1_255
.LBB1_258:                              //  %land.lhs.true1185
                                        //    in Loop: Header=BB1_256 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_309
.LBB1_259:                              //  %land.lhs.true1185.if.end1189_crit_edge
                                        //    in Loop: Header=BB1_256 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_255
.LBB1_260:                              //  %if.else245
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_310
.LBB1_261:                              //  %if.else300
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	add x24 ,  x0 ,  x27
	add x26 ,  x0 ,  x27
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x27 ,  -716 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_376
	jal x0, .LBB1_521
.LBB1_262:                              //  %if.else556
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_314
.LBB1_263:                              //  %if.else616
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x26 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -720 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_407
	jal x0, .LBB1_522
.LBB1_264:                              //  %if.else955
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_318
.LBB1_265:                              //  %if.else1015
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
.LBB1_266:                              //  %if.end1018
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x27
	sw x27 ,  -720 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_429
.LBB1_267:                              //    in Loop: Header=BB1_4 Depth=1
	add x15 ,  x0 ,  x0
.LBB1_268:                              //  %for.end1670.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -732 ( x8 )           //  4-byte Folded Spill
	slli x15 ,  x23 ,  24&31
	slti x14 ,  x0 ,  1
	srai x15 ,  x15 ,  24&31
	addi x15 ,  x15 ,  -1
	bltu x14, x15, .LBB1_269
.LBB1_578:                              //  %for.end1670.thread
	jal x0, .LBB1_533
.LBB1_269:                              //  %if.end1690
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x15 ,  x26 ,  24&31
	addi x13 ,  x0 ,  6
	srai x15 ,  x15 ,  24&31
	addi x14 ,  x15 ,  -1
	bltu x13, x14, .LBB1_275
.LBB1_270:                              //  %if.then1695
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x15 ,  x15 ,  3
	beq x0, x15, .LBB1_271
.LBB1_579:                              //  %if.then1695
	jal x0, .LBB1_540
.LBB1_271:                              //  %while.cond1700.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x26 ,  255
	xori x15 ,  x15 ,  3
	beq x0, x15, .LBB1_275
.LBB1_272:                              //  %while.body1705.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x26 ,  -4
	addi x24 ,  x8 ,  -679
	andi x23 ,  x15 ,  255
.LBB1_273:                              //  %while.body1705
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x27 ,  x24
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _ungetc_r
	lui x30 ,  -16777216&4095
	lui x14 ,  (-16777216>>12)&1048575
	slli x15 ,  x26 ,  24&31
	addi x27 ,  x27 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	srai x26 ,  x15 ,  24&31
	addi x15 ,  x0 ,  3
	blt x15, x26, .LBB1_273
.LBB1_274:                              //  %if.end1723.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	xori x15 ,  x23 ,  -1
	add x20 ,  x15 ,  x20
.LBB1_275:                              //  %if.end1723
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x8 ,  -678
	add x24 ,  x27 ,  x15
	andi x15 ,  x25 ,  256
	bltu x0, x15, .LBB1_277
.LBB1_276:                              //    in Loop: Header=BB1_4 Depth=1
	add x23 ,  x0 ,  x24
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_43
	jal x0, .LBB1_282
.LBB1_277:                              //  %if.then1726
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1024
	beq x0, x15, .LBB1_278
.LBB1_580:                              //  %if.then1726
	jal x0, .LBB1_543
.LBB1_278:                              //  %if.end1740
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11 ,  -1 ( x24 )
	ori x15 ,  x11 ,  32
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  101
	bltu x0, x15, .LBB1_280
.LBB1_279:                              //    in Loop: Header=BB1_4 Depth=1
	addi x20 ,  x20 ,  -1
	addi x23 ,  x24 ,  -1
	jal x0, .LBB1_281
.LBB1_280:                              //  %if.then1749
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetc_r
	lb x11 ,  -2 ( x24 )
	addi x20 ,  x20 ,  -2
	addi x23 ,  x24 ,  -2
.LBB1_281:                              //  %if.end1754
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	call _ungetc_r
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_43
.LBB1_282:                              //  %if.then1760
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1536
	sb x0 ,  0 ( x23 )
	xori x15 ,  x15 ,  1024
	bltu x0, x15, .LBB1_285
.LBB1_283:                              //  %if.end1775
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -732 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x14
	beq x0, x15, .LBB1_289
.LBB1_284:                              //    in Loop: Header=BB1_4 Depth=1
	sub x15 ,  x0 ,  x15
	lw x14 ,  -704 ( x8 )           //  4-byte Folded Reload
	bltu x23, x14, .LBB1_288
.LBB1_287:                              //  %if.then1777
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x23 ,  -708 ( x8 )           //  4-byte Folded Reload
.LBB1_288:                              //  %if.then1777
                                        //    in Loop: Header=BB1_4 Depth=1
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
	jal x0, .LBB1_289
.LBB1_285:                              //  %if.else1768
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_289
.LBB1_286:                              //  %if.end1775.thread2878
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x23 ,  -728 ( x8 )           //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  10
	add x10 ,  x0 ,  x19
	add x24 ,  x0 ,  x15
	addi x11 ,  x23 ,  1
	call _strtol_r
	sub x15 ,  x10 ,  x24
	lw x14 ,  -704 ( x8 )           //  4-byte Folded Reload
	bltu x23, x14, .LBB1_288
	jal x0, .LBB1_287
.LBB1_289:                              //  %if.end1790
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtod_r
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_293
.LBB1_290:                              //  %if.else1797
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  2
	bltu x0, x15, .LBB1_323
.LBB1_291:                              //  %if.else1803
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x25 ,  -68 ( x8 )
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	addi x15 ,  x25 ,  4
	sw x15 ,  -68 ( x8 )
	call __unorddf2
	lw x25 ,  0 ( x25 )
	beq x0, x10, .LBB1_292
.LBB1_581:                              //  %if.else1803
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_493
.LBB1_292:                              //  %if.else1808
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __truncdfsf2
	jal x0, .LBB1_494
.LBB1_293:                              //  %if.then1795
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x27 ,  x27 ,  1
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x24 ,  4 ( x15 )
	sw x23 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_525
.LBB1_294:                              //  %if.else439
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x15 ,  x15 ,  x23
	add x24 ,  x24 ,  x23
	sw x15 ,  4 ( x18 )
	lw x15 ,  0 ( x18 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x18 )
.LBB1_295:                              //  %cleanup448.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_525
.LBB1_296:                              //  %if.then454
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB1_297
.LBB1_582:                              //  %if.then454
	jal x0, .LBB1_525
.LBB1_297:                              //  %if.end458
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x23
	call malloc
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB1_298
.LBB1_583:                              //  %if.end458
	jal x0, .LBB1_524
.LBB1_298:                              //  %if.end463
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x24 ,  0 ( x25 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_330
.LBB1_299:                              //  %if.end463.if.end503_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_333
.LBB1_300:                              //  %if.then798
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB1_301
.LBB1_584:                              //  %if.then798
	jal x0, .LBB1_525
.LBB1_301:                              //  %if.end802
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB1_302
.LBB1_585:                              //  %if.end802
	jal x0, .LBB1_524
.LBB1_302:                              //  %if.end806
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26 ,  0 ( x25 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_340
.LBB1_303:                              //  %if.end806.if.end846_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_343
.LBB1_304:                              //  %if.then1197
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_305
.LBB1_586:                              //  %if.then1197
	jal x0, .LBB1_525
.LBB1_305:                              //  %if.end1201
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB1_306
.LBB1_587:                              //  %if.end1201
	jal x0, .LBB1_524
.LBB1_306:                              //  %if.end1205
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_355
.LBB1_307:                              //  %if.end1205.if.end1245_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_358
.LBB1_308:                              //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_588
.LBB1_589:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_588:
	jal x0, .LBB1_525
.LBB1_309:                              //  %while.end1190
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_590
.LBB1_591:                              //  %while.end1190
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_590:                              //  %while.end1190
	jal x0, .LBB1_525
.LBB1_310:                              //  %if.then248
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -716 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_311
.LBB1_592:                              //  %if.then248
	jal x0, .LBB1_525
.LBB1_311:                              //  %if.end252
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x25 ,  x0 ,  x10
	addi x27 ,  x0 ,  -1
	bltu x0, x25, .LBB1_312
.LBB1_593:                              //  %if.end252
	jal x0, .LBB1_525
.LBB1_312:                              //  %if.end256
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_370
.LBB1_313:                              //  %if.end256.if.end293_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_373
.LBB1_314:                              //  %if.then559
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x26 ,  0 ( x15 )
	bltu x0, x26, .LBB1_315
.LBB1_594:                              //  %if.then559
	jal x0, .LBB1_550
.LBB1_315:                              //  %if.end563
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x13 ,  x0 ,  x10
	addi x25 ,  x0 ,  -1
	bltu x0, x13, .LBB1_316
.LBB1_595:                              //  %if.end563
	jal x0, .LBB1_538
.LBB1_316:                              //  %if.end567
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x13 ,  0 ( x26 )
	sw x13 ,  -716 ( x8 )           //  4-byte Folded Spill
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_399
.LBB1_317:                              //  %if.end567.if.end607_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_402
.LBB1_318:                              //  %if.then958
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x27 ,  0 ( x15 )
	bltu x0, x27, .LBB1_319
.LBB1_596:                              //  %if.then958
	jal x0, .LBB1_551
.LBB1_319:                              //  %if.end962
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	addi x25 ,  x0 ,  -1
	bltu x0, x10, .LBB1_320
.LBB1_597:                              //  %if.end962
	jal x0, .LBB1_538
.LBB1_320:                              //  %if.end966
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x27 )
	lhu x14 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
	bgeu x15, x14, .LBB1_425
.LBB1_321:                              //  %if.end966.if.end1006_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x10
	lw x10 ,  0 ( x22 )
	jal x0, .LBB1_428
.LBB1_323:                              //  %if.then1800
                                        //    in Loop: Header=BB1_4 Depth=1
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
	beq x0, x15, .LBB1_598
.LBB1_599:                              //  %if.then1800
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_598:                              //  %if.then1800
	jal x0, .LBB1_525
.LBB1_324:                              //  %if.then176
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_600
.LBB1_601:                              //  %if.then176
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_600:                              //  %if.then176
	jal x0, .LBB1_525
.LBB1_325:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB1_395
	jal x0, .LBB1_398
.LBB1_173:                              //  %if.end1365
                                        //    in Loop: Header=BB1_156 Depth=2
	sltu x14 ,  x0 ,  x27
	addi x23 ,  x23 ,  1
	andi x24 ,  x24 ,  -897
	add x27 ,  x0 ,  x13
	add x26 ,  x14 ,  x26
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	bge x0, x14, .LBB1_176
.LBB1_154:                              //  %if.then1412
                                        //    in Loop: Header=BB1_156 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_155:                              //  %for.inc1421
                                        //    in Loop: Header=BB1_156 Depth=2
	addi x26 ,  x26 ,  -1
	beq x0, x26, .LBB1_177
.LBB1_156:                              //  %for.body1348
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x18 )
	addi x12 ,  x0 ,  77
	lbu x14 ,  0 ( x15 )
	addi x13 ,  x14 ,  -43
	bltu x12, x13, .LBB1_177
.LBB1_157:                              //  %for.body1348
                                        //    in Loop: Header=BB1_156 Depth=2
	lui x30 ,  JTI1_3&4095
	lui x12 ,  (JTI1_3>>12)&1048575
	slli x13 ,  x13 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	add x13 ,  x12 ,  x13
	lw x13 ,  0 ( x13 )
	jalr x0 ,  0 ( x13 )
.LBB1_158:                              //  %sw.bb1385
                                        //    in Loop: Header=BB1_156 Depth=2
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	slti x13 ,  x13 ,  11
	bltu x0, x13, .LBB1_177
.LBB1_159:                              //  %if.end1389
                                        //    in Loop: Header=BB1_156 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x24 ,  x13 ,  x24
	jal x0, .LBB1_175
.LBB1_160:                              //  %sw.bb1373
                                        //    in Loop: Header=BB1_156 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	lui x12 ,  (__svfscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  __svfscanf_r.basefix&4095
	and x24 ,  x13 ,  x24
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x13 ,  1&31
	add x13 ,  x13 ,  x12
	lh x13 ,  0 ( x13 )
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_175
.LBB1_161:                              //  %sw.bb1391
                                        //    in Loop: Header=BB1_156 Depth=2
	andi x13 ,  x24 ,  128
	beq x0, x13, .LBB1_177
.LBB1_162:                              //  %if.then1394
                                        //    in Loop: Header=BB1_156 Depth=2
	andi x24 ,  x24 ,  -129
	jal x0, .LBB1_175
.LBB1_163:                              //  %sw.bb1377
                                        //    in Loop: Header=BB1_156 Depth=2
	lw x11 ,  -696 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __svfscanf_r.basefix&4095
	lui x12 ,  (__svfscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x11 ,  1&31
	add x13 ,  x13 ,  x12
	addi x12 ,  x11 ,  -1
	lh x13 ,  0 ( x13 )
	sltiu x12 ,  x12 ,  8
	bltu x0, x12, .LBB1_514
.LBB1_164:                              //  %if.end1383
                                        //    in Loop: Header=BB1_156 Depth=2
	lui x30 ,  -2945&4095
	lui x12 ,  (-2945>>12)&1048575
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x24 ,  x12 ,  x24
	jal x0, .LBB1_175
.LBB1_165:                              //  %sw.bb1397
                                        //    in Loop: Header=BB1_156 Depth=2
	andi x13 ,  x24 ,  1536
	xori x13 ,  x13 ,  512
	bltu x0, x13, .LBB1_177
.LBB1_166:                              //  %if.then1401
                                        //    in Loop: Header=BB1_156 Depth=2
	addi x13 ,  x0 ,  16
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	andi x13 ,  x24 ,  -1793
	ori x24 ,  x13 ,  1280
	jal x0, .LBB1_175
.LBB1_167:                              //  %sw.bb1351
                                        //    in Loop: Header=BB1_156 Depth=2
	lui x30 ,  2048&4095
	lui x13 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x24
	beq x0, x13, .LBB1_175
.LBB1_168:                              //  %if.end1355
                                        //    in Loop: Header=BB1_156 Depth=2
	lw x12 ,  -696 ( x8 )           //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	bne x12, x13, .LBB1_170
.LBB1_169:                              //    in Loop: Header=BB1_156 Depth=2
	ori x24 ,  x24 ,  512
	addi x12 ,  x0 ,  8
	sw x12 ,  -696 ( x8 )           //  4-byte Folded Spill
.LBB1_170:                              //  %if.end1355
                                        //    in Loop: Header=BB1_156 Depth=2
	andi x12 ,  x24 ,  1024
	bltu x0, x12, .LBB1_174
.LBB1_171:                              //  %if.end1365
                                        //    in Loop: Header=BB1_156 Depth=2
	beq x27, x13, .LBB1_173
.LBB1_172:                              //  %if.end1365
                                        //    in Loop: Header=BB1_156 Depth=2
	addi x13 ,  x27 ,  -1
	jal x0, .LBB1_173
.LBB1_174:                              //  %if.then1363
                                        //    in Loop: Header=BB1_156 Depth=2
	andi x24 ,  x24 ,  -1409
.LBB1_175:                              //  %ok
                                        //    in Loop: Header=BB1_156 Depth=2
	addi x13 ,  x8 ,  -678
	add x13 ,  x25 ,  x13
	addi x25 ,  x25 ,  1
	sb x14 ,  0 ( x13 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB1_154
.LBB1_176:                              //  %if.else1415
                                        //    in Loop: Header=BB1_156 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_155
.LBB1_177:                              //  %for.end1423
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	beq x0, x15, .LBB1_181
.LBB1_178:                              //  %if.then1426
                                        //    in Loop: Header=BB1_4 Depth=1
	bge x0, x25, .LBB1_180
.LBB1_179:                              //  %if.then1430
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11 ,  -1 ( x26 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetc_r
	addi x26 ,  x26 ,  -1
.LBB1_180:                              //  %if.end1434
                                        //    in Loop: Header=BB1_4 Depth=1
	bne x26, x27, .LBB1_181
.LBB1_602:                              //  %if.end1434
	jal x0, .LBB1_539
.LBB1_181:                              //  %if.end1440
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x24 ,  16
	bltu x0, x15, .LBB1_328
.LBB1_182:                              //  %if.then1444
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	sb x0 ,  0 ( x26 )
	lw x15 ,  -700 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x24 ,  32
	bltu x0, x15, .LBB1_187
.LBB1_183:                              //  %if.else1451
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x24 ,  8
	bltu x0, x15, .LBB1_322
.LBB1_184:                              //  %if.else1457
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x24 ,  4
	bltu x0, x15, .LBB1_326
.LBB1_185:                              //  %if.else1463
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x24 ,  1
	bltu x0, x15, .LBB1_187
.LBB1_186:                              //  %if.else1468
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x24 ,  2
	bltu x0, x15, .LBB1_515
.LBB1_187:                              //  %if.else1482
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB1_188:                              //  %if.end1488
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_327
.LBB1_322:                              //  %if.then1454
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB1_327
.LBB1_326:                              //  %if.then1460
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB1_327:                              //  %if.end1488
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -712 ( x8 )           //  4-byte Folded Spill
.LBB1_328:                              //  %cleanup1497.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x15 ,  x20 ,  x27
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x23 ,  x15
	add x20 ,  x26 ,  x15
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_603
.LBB1_604:                              //  %cleanup1497.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_603:                              //  %cleanup1497.thread
	jal x0, .LBB1_525
.LBB1_329:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -716 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -728 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_605
.LBB1_606:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_605:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_503
.LBB1_330:                              //  %if.then471
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_527
.LBB1_331:                              //  %if.end491
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_527
.LBB1_332:                              //  %cleanup500
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_333:                              //  %if.end503
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB1_334:                              //  %if.end514
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x18
	call _fread_r
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB1_522
.LBB1_335:                              //  %if.end519
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_339
.LBB1_336:                              //  %if.end519
                                        //    in Loop: Header=BB1_4 Depth=1
	bgeu x24, x23, .LBB1_339
.LBB1_337:                              //  %if.then525
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x25 )
	add x11 ,  x0 ,  x24
	call realloc
	beq x0, x10, .LBB1_339
.LBB1_338:                              //  %if.then530
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB1_339:                              //  %cleanup535.thread2761
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_607
.LBB1_608:                              //  %cleanup535.thread2761
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_607:                              //  %cleanup535.thread2761
	jal x0, .LBB1_525
.LBB1_340:                              //  %if.then814
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_527
.LBB1_341:                              //  %if.end834
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_527
.LBB1_342:                              //  %cleanup843
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_343:                              //  %if.end846
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB1_344:                              //  %if.end857
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	sw x25 ,  -716 ( x8 )           //  4-byte Folded Spill
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_354
.LBB1_345:                              //  %while.body863.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_466
.LBB1_346:                              //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x26
	jal x0, .LBB1_348
.LBB1_347:                              //  %if.end909
                                        //    in Loop: Header=BB1_348 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_474
.LBB1_348:                              //  %while.body863
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x27, x24, .LBB1_351
.LBB1_349:                              //  %if.then878
                                        //    in Loop: Header=BB1_348 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x24
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB1_524
.LBB1_350:                              //  %if.end884
                                        //    in Loop: Header=BB1_348 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x25 ,  x27 ,  x26
	sw x26 ,  0 ( x15 )
.LBB1_351:                              //  %cleanup.cont892
                                        //    in Loop: Header=BB1_348 Depth=2
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB1_474
.LBB1_352:                              //  %if.end897
                                        //    in Loop: Header=BB1_348 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_347
.LBB1_353:                              //  %land.lhs.true901
                                        //    in Loop: Header=BB1_348 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_347
	jal x0, .LBB1_472
.LBB1_354:                              //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x26
	sub x23 ,  x25 ,  x26
	bltu x0, x23, .LBB1_475
	jal x0, .LBB1_525
.LBB1_355:                              //  %if.then1213
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_527
.LBB1_356:                              //  %if.end1233
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_527
.LBB1_357:                              //  %cleanup1242
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_358:                              //  %if.end1245
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
.LBB1_359:                              //  %if.end1256
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_369
.LBB1_360:                              //  %while.body1265.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x14, .LBB1_480
.LBB1_361:                              //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x25
	jal x0, .LBB1_363
.LBB1_362:                              //  %if.end1307
                                        //    in Loop: Header=BB1_363 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_486
.LBB1_363:                              //  %while.body1265
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x26, x24, .LBB1_366
.LBB1_364:                              //  %if.then1280
                                        //    in Loop: Header=BB1_363 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call realloc
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB1_524
.LBB1_365:                              //  %if.end1286
                                        //    in Loop: Header=BB1_363 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x26 ,  x25
	sw x25 ,  0 ( x15 )
.LBB1_366:                              //  %cleanup.cont1294
                                        //    in Loop: Header=BB1_363 Depth=2
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB1_486
.LBB1_367:                              //  %if.end1299
                                        //    in Loop: Header=BB1_363 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_362
.LBB1_368:                              //  %land.lhs.true1303
                                        //    in Loop: Header=BB1_363 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_362
	jal x0, .LBB1_486
.LBB1_369:                              //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x25
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	bltu x0, x15, .LBB1_487
	jal x0, .LBB1_490
.LBB1_370:                              //  %if.then264
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_525
.LBB1_371:                              //  %if.end284
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_525
.LBB1_372:                              //  %cleanup
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_373:                              //  %if.end293
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x27 ,  x0 ,  32
	add x26 ,  x0 ,  x25
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_376
	jal x0, .LBB1_521
.LBB1_374:                              //  %if.end389
                                        //    in Loop: Header=BB1_376 Depth=2
	beq x0, x23, .LBB1_394
.LBB1_375:                              //  %while.body307
                                        //    in Loop: Header=BB1_376 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB1_521
.LBB1_376:                              //  %if.end312
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x15, .LBB1_378
.LBB1_377:                              //  %if.end312
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_379
.LBB1_378:                              //  %if.then325
                                        //    in Loop: Header=BB1_376 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_379:                              //  %if.end327
                                        //    in Loop: Header=BB1_376 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_391
.LBB1_380:                              //  %if.end327
                                        //    in Loop: Header=BB1_376 Depth=2
	beq x0, x10, .LBB1_384
.LBB1_381:                              //  %if.end327
                                        //    in Loop: Header=BB1_376 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_521
.LBB1_382:                              //  %if.then343
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x24
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_385
.LBB1_383:                              //  %if.then343
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_386
	jal x0, .LBB1_385
.LBB1_384:                              //  %if.then339
                                        //    in Loop: Header=BB1_376 Depth=2
	add x20 ,  x20 ,  x24
	sw x0 ,  0 ( x25 )
.LBB1_385:                              //  %if.then351
                                        //    in Loop: Header=BB1_376 Depth=2
	addi x23 ,  x23 ,  -1
.LBB1_386:                              //  %if.then356
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_390
.LBB1_387:                              //  %if.then356
                                        //    in Loop: Header=BB1_376 Depth=2
	sub x15 ,  x25 ,  x26
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB1_390
.LBB1_388:                              //  %if.then361
                                        //    in Loop: Header=BB1_376 Depth=2
	slli x11 ,  x27 ,  3&31
	add x10 ,  x0 ,  x26
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB1_524
.LBB1_389:                              //  %if.end366
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	slli x27 ,  x27 ,  1&31
	sw x26 ,  0 ( x15 )
	slli x15 ,  x24 ,  2&31
	add x25 ,  x15 ,  x26
.LBB1_390:                              //  %cleanup.cont374
                                        //    in Loop: Header=BB1_376 Depth=2
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
.LBB1_391:                              //  %if.end377
                                        //    in Loop: Header=BB1_376 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_374
.LBB1_392:                              //  %land.lhs.true381
                                        //    in Loop: Header=BB1_376 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_374
.LBB1_393:                              //  %if.then384
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_521
.LBB1_394:                              //  %while.end390
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_398
.LBB1_395:                              //  %while.end390
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x11 ,  x25 ,  x26
	srai x15 ,  x11 ,  2&31
	bgeu x15, x27, .LBB1_398
.LBB1_396:                              //  %if.then400
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_398
.LBB1_397:                              //  %if.then404
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_398:                              //  %cleanup412
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -720 ( x8 )           //  4-byte Folded Reload
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x27 ,  x15 ,  x27
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_609
.LBB1_610:                              //  %cleanup412
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_609:                              //  %cleanup412
	jal x0, .LBB1_525
.LBB1_399:                              //  %if.then575
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_538
.LBB1_400:                              //  %if.end595
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_538
.LBB1_401:                              //  %cleanup604
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	lw x13 ,  -716 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_402:                              //  %if.end607
                                        //    in Loop: Header=BB1_4 Depth=1
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
	bne x24, x10, .LBB1_407
	jal x0, .LBB1_522
.LBB1_403:                              //    in Loop: Header=BB1_407 Depth=2
	add x25 ,  x0 ,  x14
	lw x26 ,  -720 ( x8 )           //  4-byte Folded Reload
.LBB1_404:                              //  %if.end713.us
                                        //    in Loop: Header=BB1_407 Depth=2
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB1_423
.LBB1_405:                              //  %if.end725.us
                                        //    in Loop: Header=BB1_407 Depth=2
	beq x0, x23, .LBB1_502
.LBB1_406:                              //  %while.body623.us
                                        //    in Loop: Header=BB1_407 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB1_522
.LBB1_407:                              //  %if.end628.us
                                        //    Parent Loop BB1_4 Depth=1
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
	bltu x0, x15, .LBB1_409
.LBB1_408:                              //  %if.end628.us
                                        //    in Loop: Header=BB1_407 Depth=2
	lw x15 ,  -688 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_410
.LBB1_409:                              //  %if.then642.us
                                        //    in Loop: Header=BB1_407 Depth=2
	addi x10 ,  x8 ,  -688
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_410:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_407 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -688
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_404
.LBB1_411:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_407 Depth=2
	beq x0, x10, .LBB1_415
.LBB1_412:                              //  %if.end644.us
                                        //    in Loop: Header=BB1_407 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_522
.LBB1_413:                              //  %if.then657.us
                                        //    in Loop: Header=BB1_407 Depth=2
	add x13 ,  x0 ,  x26
	add x26 ,  x0 ,  x25
	lw x25 ,  0 ( x25 )
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB1_416
.LBB1_414:                              //    in Loop: Header=BB1_407 Depth=2
	add x25 ,  x0 ,  x26
	addi x27 ,  x0 ,  -1
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	add x26 ,  x0 ,  x13
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x27 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB1_419
	jal x0, .LBB1_499
.LBB1_415:                              //  %if.then657.thread.us
                                        //    in Loop: Header=BB1_407 Depth=2
	add x26 ,  x0 ,  x25
	sw x0 ,  0 ( x25 )
	add x25 ,  x0 ,  x0
.LBB1_416:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_407 Depth=2
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
	bne x10, x15, .LBB1_418
.LBB1_417:                              //    in Loop: Header=BB1_407 Depth=2
	lbu x27 ,  -61 ( x8 )
.LBB1_418:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_407 Depth=2
	add x25 ,  x0 ,  x26
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -692 ( x8 )           //  4-byte Folded Reload
	lw x26 ,  -720 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x27 ,  x15
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_499
.LBB1_419:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_407 Depth=2
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
	beq x0, x26, .LBB1_404
.LBB1_420:                              //  %if.end671.us
                                        //    in Loop: Header=BB1_407 Depth=2
	lw x26 ,  -724 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x10
	add x14 ,  x0 ,  x25
	srai x25 ,  x15 ,  2&31
	bltu x25, x26, .LBB1_403
.LBB1_421:                              //  %if.then697.us
                                        //    in Loop: Header=BB1_407 Depth=2
	slli x11 ,  x26 ,  3&31
	call realloc
	beq x0, x10, .LBB1_537
.LBB1_422:                              //  %if.end703.us
                                        //    in Loop: Header=BB1_407 Depth=2
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	slli x15 ,  x25 ,  2&31
	slli x26 ,  x26 ,  1&31
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	add x25 ,  x15 ,  x10
	add x26 ,  x0 ,  x14
	sw x10 ,  0 ( x14 )
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_405
.LBB1_423:                              //  %land.lhs.true717.us
                                        //    in Loop: Header=BB1_407 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_405
.LBB1_424:                              //  %if.then720
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_502
	jal x0, .LBB1_522
.LBB1_425:                              //  %if.then974
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x24 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_538
.LBB1_426:                              //  %if.end994
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x22 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_538
.LBB1_427:                              //  %cleanup1003
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x22 )
	sw x10 ,  0 ( x22 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x22 )
	lhu x15 ,  6 ( x22 )
.LBB1_428:                              //  %if.end1006
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x24
	add x14 ,  x14 ,  x10
	sw x27 ,  0 ( x14 )
	sh x15 ,  6 ( x22 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -720 ( x8 )           //  4-byte Folded Spill
.LBB1_429:                              //  %if.end1018
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _ctype_&4095
	sw x26 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x24 ,  -716 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB1_508
.LBB1_430:                              //  %if.end1018
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB1_508
.LBB1_431:                              //  %while.body1028.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x26, .LBB1_451
.LBB1_432:                              //  %while.body1028.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x24 ,  x8 ,  -679
.LBB1_433:                              //  %while.body1028.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB1_521
.LBB1_434:                              //  %if.end1033.us
                                        //    in Loop: Header=BB1_433 Depth=2
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
	bltu x0, x15, .LBB1_436
.LBB1_435:                              //  %if.end1033.us
                                        //    in Loop: Header=BB1_433 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_437
.LBB1_436:                              //  %if.then1047.us
                                        //    in Loop: Header=BB1_433 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_437:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_433 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_447
.LBB1_438:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_433 Depth=2
	beq x0, x10, .LBB1_441
.LBB1_439:                              //  %if.end1049.us
                                        //    in Loop: Header=BB1_433 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_521
.LBB1_440:                              //  %if.end1049.us.if.then1062.us_crit_edge
                                        //    in Loop: Header=BB1_433 Depth=2
	lw x10 ,  0 ( x25 )
	call iswspace
	beq x0, x10, .LBB1_442
	jal x0, .LBB1_496
.LBB1_441:                              //  %if.then1058.us
                                        //    in Loop: Header=BB1_433 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x25 )
	call iswspace
	bltu x0, x10, .LBB1_496
.LBB1_442:                              //  %if.end1075.us
                                        //    in Loop: Header=BB1_433 Depth=2
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
	beq x0, x27, .LBB1_447
.LBB1_443:                              //  %if.end1075.us
                                        //    in Loop: Header=BB1_433 Depth=2
	lw x10 ,  -716 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x25
	add x25 ,  x0 ,  x27
	lw x27 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x10
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB1_446
.LBB1_444:                              //  %if.then1101.us
                                        //    in Loop: Header=BB1_433 Depth=2
	slli x11 ,  x27 ,  3&31
	call realloc
	beq x0, x10, .LBB1_537
.LBB1_445:                              //  %if.end1107.us
                                        //    in Loop: Header=BB1_433 Depth=2
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
	blt x0, x15, .LBB1_449
	jal x0, .LBB1_448
.LBB1_446:                              //    in Loop: Header=BB1_433 Depth=2
	add x27 ,  x0 ,  x25
	addi x24 ,  x8 ,  -679
	add x25 ,  x0 ,  x14
.LBB1_447:                              //  %if.end1117.us
                                        //    in Loop: Header=BB1_433 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_449
.LBB1_448:                              //  %land.lhs.true1121.us
                                        //    in Loop: Header=BB1_433 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_507
.LBB1_449:                              //  %if.end1129.us
                                        //    in Loop: Header=BB1_433 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB1_508
.LBB1_450:                              //  %if.end1129.us
                                        //    in Loop: Header=BB1_433 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB1_433
	jal x0, .LBB1_508
.LBB1_451:                              //  %while.body1028.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	addi x24 ,  x8 ,  -679
.LBB1_452:                              //  %while.body1028
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB1_521
.LBB1_453:                              //  %if.end1033
                                        //    in Loop: Header=BB1_452 Depth=2
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
	bltu x0, x15, .LBB1_455
.LBB1_454:                              //  %if.end1033
                                        //    in Loop: Header=BB1_452 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_456
.LBB1_455:                              //  %if.then1047
                                        //    in Loop: Header=BB1_452 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_456:                              //  %if.end1049
                                        //    in Loop: Header=BB1_452 Depth=2
	addi x12 ,  x8 ,  -678
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_462
.LBB1_457:                              //  %if.end1049
                                        //    in Loop: Header=BB1_452 Depth=2
	beq x0, x10, .LBB1_460
.LBB1_458:                              //  %if.end1049
                                        //    in Loop: Header=BB1_452 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_521
.LBB1_459:                              //  %if.end1049.if.then1062_crit_edge
                                        //    in Loop: Header=BB1_452 Depth=2
	lw x10 ,  0 ( x25 )
	call iswspace
	beq x0, x10, .LBB1_461
	jal x0, .LBB1_496
.LBB1_460:                              //  %if.then1058
                                        //    in Loop: Header=BB1_452 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x25 )
	call iswspace
	bltu x0, x10, .LBB1_496
.LBB1_461:                              //  %if.end1075
                                        //    in Loop: Header=BB1_452 Depth=2
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
.LBB1_462:                              //  %if.end1117
                                        //    in Loop: Header=BB1_452 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_464
.LBB1_463:                              //  %land.lhs.true1121
                                        //    in Loop: Header=BB1_452 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_507
.LBB1_464:                              //  %if.end1129
                                        //    in Loop: Header=BB1_452 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	beq x0, x23, .LBB1_508
.LBB1_465:                              //  %if.end1129
                                        //    in Loop: Header=BB1_452 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB1_452
	jal x0, .LBB1_508
.LBB1_466:                              //  %while.body863.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_468
.LBB1_467:                              //  %if.end909.us
                                        //    in Loop: Header=BB1_468 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	addi x25 ,  x25 ,  1
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_473
.LBB1_468:                              //  %while.body863.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	add x27 ,  x25 ,  x26
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x27 )
	beq x23, x25, .LBB1_473
.LBB1_469:                              //  %if.end897.us
                                        //    in Loop: Header=BB1_468 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_467
.LBB1_470:                              //  %land.lhs.true901.us
                                        //    in Loop: Header=BB1_468 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_467
.LBB1_471:                              //  %if.then904.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB1_472:                              //  %if.then904
                                        //    in Loop: Header=BB1_4 Depth=1
	bne x25, x26, .LBB1_474
	jal x0, .LBB1_522
.LBB1_473:                              //  %while.end910.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB1_474:                              //  %while.end910
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x23 ,  x25 ,  x26
	beq x0, x23, .LBB1_525
.LBB1_475:                              //  %if.end917
                                        //    in Loop: Header=BB1_4 Depth=1
	sb x0 ,  0 ( x25 )
	lw x25 ,  -716 ( x8 )           //  4-byte Folded Reload
	beq x0, x25, .LBB1_479
.LBB1_476:                              //  %if.end917
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB1_479
.LBB1_477:                              //  %if.then924
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x25 )
	call realloc
	beq x0, x10, .LBB1_479
.LBB1_478:                              //  %if.then929
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB1_479:                              //  %cleanup934.thread2817
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x23
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_611
.LBB1_612:                              //  %cleanup934.thread2817
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_611:                              //  %cleanup934.thread2817
	jal x0, .LBB1_525
.LBB1_480:                              //  %while.body1265.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_482
.LBB1_481:                              //  %if.end1307.us
                                        //    in Loop: Header=BB1_482 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	addi x27 ,  x27 ,  1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_485
.LBB1_482:                              //  %while.body1265.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x14 ,  x15 ,  1
	add x26 ,  x27 ,  x25
	sw x14 ,  0 ( x18 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x26 )
	beq x23, x27, .LBB1_485
.LBB1_483:                              //  %if.end1299.us
                                        //    in Loop: Header=BB1_482 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_481
.LBB1_484:                              //  %land.lhs.true1303.us
                                        //    in Loop: Header=BB1_482 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_481
.LBB1_485:                              //  %while.end1308.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x26 ,  1
.LBB1_486:                              //  %while.end1308
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	beq x0, x15, .LBB1_490
.LBB1_487:                              //  %while.end1308
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB1_490
.LBB1_488:                              //  %if.then1318
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_490
.LBB1_489:                              //  %if.then1323
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_490:                              //  %cleanup1331
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x23
.LBB1_491:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB1_492:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_613
.LBB1_614:                              //  %if.end1336
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_613:                              //  %if.end1336
	jal x0, .LBB1_525
.LBB1_493:                              //  %if.then1806
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call nanf
.LBB1_494:                              //  %if.end1812
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x25 )
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_615
.LBB1_616:                              //  %if.end1812
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_615:                              //  %if.end1812
	jal x0, .LBB1_525
.LBB1_495:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	add x15 ,  x0 ,  x26
	add x10 ,  x0 ,  x26
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -692 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB1_500
	jal x0, .LBB1_502
.LBB1_496:                              //  %while.cond1066.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x26, .LBB1_508
.LBB1_497:                              //  %while.body1069
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x26 ,  x24
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _ungetc_r
	addi x26 ,  x26 ,  -1
	bltu x0, x26, .LBB1_497
	jal x0, .LBB1_508
.LBB1_498:                              //  %if.then181
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_617
.LBB1_618:                              //  %if.then181
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_617:                              //  %if.then181
	jal x0, .LBB1_525
.LBB1_499:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -724 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -716 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -692 ( x8 )           //  4-byte Folded Spill
	beq x0, x24, .LBB1_502
.LBB1_500:                              //  %while.body665.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x8 ,  -679
.LBB1_501:                              //  %while.body665
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x24 ,  x23
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _ungetc_r
	addi x24 ,  x24 ,  -1
	bltu x0, x24, .LBB1_501
.LBB1_502:                              //  %while.end726
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -728 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_503
.LBB1_619:                              //  %while.end726
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_503:                              //  %if.then729
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x0 ,  0 ( x25 )
	beq x0, x26, .LBB1_492
.LBB1_504:                              //  %if.then729
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -724 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB1_492
.LBB1_505:                              //  %if.then740
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x26 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_492
.LBB1_506:                              //  %if.then745
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x26 )
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_620
.LBB1_621:                              //  %if.then745
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_620:                              //  %if.then745
	jal x0, .LBB1_525
.LBB1_507:                              //  %if.then1124
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x26, .LBB1_521
.LBB1_508:                              //  %while.end1130
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -724 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_510
.LBB1_509:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_622
.LBB1_623:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_622:
	jal x0, .LBB1_525
.LBB1_510:                              //  %if.then1133
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x0 ,  0 ( x25 )
	beq x0, x27, .LBB1_491
.LBB1_511:                              //  %if.then1133
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -716 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -720 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB1_491
.LBB1_512:                              //  %if.then1144
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x27 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_491
.LBB1_513:                              //  %if.then1149
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x27 )
	jal x0, .LBB1_491
.LBB1_514:                              //  %for.end1423.loopexit.split.loop.exit
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x13 ,  -696 ( x8 )           //  4-byte Folded Spill
	addi x27 ,  x8 ,  -678
	andi x15 ,  x24 ,  256
	add x26 ,  x25 ,  x27
	bltu x0, x15, .LBB1_178
	jal x0, .LBB1_181
.LBB1_515:                              //  %if.then1471
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  -700 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _strtoul_r&4095
	lui x15 ,  (_strtoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB1_518
.LBB1_516:                              //  %if.else1477
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoll_r
	jal x0, .LBB1_519
.LBB1_517:                              //  %if.then192
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	srai x14 ,  x20 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_624
.LBB1_625:                              //  %if.then192
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_624:                              //  %if.then192
	jal x0, .LBB1_525
.LBB1_518:                              //  %if.then1474
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -696 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -678
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoull_r
.LBB1_519:                              //  %if.end1480
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB1_188
.LBB1_520:
	add x27 ,  x0 ,  x0
	jal x0, .LBB1_532
.LBB1_521:                              //  %cleanup1154.thread2841
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
.LBB1_522:                              //  %input_failure
	beq x0, x27, .LBB1_524
.LBB1_523:                              //  %land.lhs.true1826
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_525
.LBB1_524:                              //  %land.lhs.true1826
	addi x27 ,  x0 ,  -1
.LBB1_525:                              //  %all_done
	beq x0, x22, .LBB1_532
.LBB1_526:                              //  %if.then1848
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB1_530
.LBB1_527:                              //  %for.cond1852.preheader
	lhu x15 ,  6 ( x22 )
	addi x27 ,  x0 ,  -1
	beq x0, x15, .LBB1_530
.LBB1_528:                              //  %for.body1857.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB1_529:                              //  %for.body1857
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
	bltu x18, x15, .LBB1_529
.LBB1_530:                              //  %if.end1865
	lw x10 ,  0 ( x22 )
	beq x0, x10, .LBB1_532
.LBB1_531:                              //  %if.then1868
	call free
.LBB1_532:                              //  %cleanup1874
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
.LBB1_533:                              //  %while.cond1680.preheader
	bge x0, x27, .LBB1_539
.LBB1_534:                              //  %while.body1684.preheader
	addi x9 ,  x8 ,  -678
	add x20 ,  x27 ,  x9
.LBB1_535:                              //  %while.body1684
                                        //  =>This Inner Loop Header: Depth=1
	lb x11 ,  -1 ( x20 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetc_r
	addi x20 ,  x20 ,  -1
	bltu x9, x20, .LBB1_535
	jal x0, .LBB1_539
.LBB1_537:
	addi x25 ,  x0 ,  -1
.LBB1_538:                              //  %cleanup1154.thread
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB1_526
	jal x0, .LBB1_532
.LBB1_540:                              //  %while.cond1712.preheader
	addi x9 ,  x8 ,  -679
	bge x0, x27, .LBB1_539
.LBB1_541:                              //  %while.body1716
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x27 ,  x9
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _ungetc_r
	addi x27 ,  x27 ,  -1
	blt x0, x27, .LBB1_541
	jal x0, .LBB1_539
.LBB1_543:                              //  %while.cond1730.preheader
	bge x0, x27, .LBB1_539
.LBB1_544:                              //  %while.body1734.preheader
	addi x9 ,  x8 ,  -679
.LBB1_545:                              //  %while.body1734
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x27 ,  x9
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lb x11 ,  0 ( x15 )
	call _ungetc_r
	addi x27 ,  x27 ,  -1
	blt x0, x27, .LBB1_545
.LBB1_539:
	lw x27 ,  -712 ( x8 )           //  4-byte Folded Reload
	bltu x0, x22, .LBB1_526
	jal x0, .LBB1_532
.LBB1_550:
	add x25 ,  x0 ,  x27
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB1_526
	jal x0, .LBB1_532
.LBB1_551:
	lw x25 ,  -712 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x0 ,  x25
	bltu x0, x22, .LBB1_526
	jal x0, .LBB1_532
.Lfunc_end1:
	.size	__svfscanf_r, .Lfunc_end1-__svfscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_21
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_16
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_44
	.long	.LBB1_525
	.long	.LBB1_47
	.long	.LBB1_49
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_18
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_50
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_52
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_45
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_53
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_44
	.long	.LBB1_525
	.long	.LBB1_48
	.long	.LBB1_54
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_23
	.long	.LBB1_55
	.long	.LBB1_18
	.long	.LBB1_525
	.long	.LBB1_26
	.long	.LBB1_30
	.long	.LBB1_57
	.long	.LBB1_63
	.long	.LBB1_64
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_65
	.long	.LBB1_13
	.long	.LBB1_66
	.long	.LBB1_525
	.long	.LBB1_525
	.long	.LBB1_45
	.long	.LBB1_525
	.long	.LBB1_13
JTI1_1:
	.long	.LBB1_79
	.long	.LBB1_85
	.long	.LBB1_91
	.long	.LBB1_97
	.long	.LBB1_99
JTI1_2:
	.long	.LBB1_200
	.long	.LBB1_225
	.long	.LBB1_200
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_228
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_195
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_202
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_204
	.long	.LBB1_210
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_212
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_216
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_221
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_223
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_202
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_204
	.long	.LBB1_210
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_212
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_216
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_221
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_225
	.long	.LBB1_223
JTI1_3:
	.long	.LBB1_161
	.long	.LBB1_177
	.long	.LBB1_161
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_167
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_160
	.long	.LBB1_163
	.long	.LBB1_163
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_165
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_158
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_177
	.long	.LBB1_165
                                        //  -- End function
	.text
	.globl	__svfscanf              //  -- Begin function __svfscanf
	.type	__svfscanf,@function
__svfscanf:                             //  @__svfscanf
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
	jal x0, __svfscanf_r
.Lfunc_end2:
	.size	__svfscanf, .Lfunc_end2-__svfscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfscanf_r              //  -- Begin function _vfscanf_r
	.type	_vfscanf_r,@function
_vfscanf_r:                             //  @_vfscanf_r
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
	jal x0, __svfscanf_r
.Lfunc_end3:
	.size	_vfscanf_r, .Lfunc_end3-_vfscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfscanf_r.basefix,@object //  @__svfscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfscanf_r.basefix:
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
	.size	__svfscanf_r.basefix, 34

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
