	.text
	.file	"vfiwscanf.c"
	.globl	vfiwscanf               //  -- Begin function vfiwscanf
	.type	vfiwscanf,@function
vfiwscanf:                              //  @vfiwscanf
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
	jal x0, __svfiwscanf_r
.Lfunc_end0:
	.size	vfiwscanf, .Lfunc_end0-vfiwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfiwscanf_r          //  -- Begin function __svfiwscanf_r
	.type	__svfiwscanf_r,@function
__svfiwscanf_r:                         //  @__svfiwscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -280
	.cfi_adjust_cfa_offset 280
	sw x8 ,  272 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  272
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
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x18 )
	lw x14 ,  100 ( x18 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x18 )
.LBB1_2:                                //  %do.end
	lw x27 ,  0 ( x26 )
	beq x0, x27, .LBB1_4
.LBB1_3:                                //  %if.end16.lr.ph.lr.ph.lr.ph.lr.ph.lr.ph
	add x23 ,  x0 ,  x0
	addi x21 ,  x0 ,  -1
	add x20 ,  x0 ,  x23
	add x25 ,  x0 ,  x23
	add x24 ,  x0 ,  x23
	sw x23 ,  -236 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -232 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -244 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -240 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -252 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -248 ( x8 )           //  4-byte Folded Spill
	add x10 ,  x0 ,  x27
	addi x26 ,  x26 ,  4
	call iswspace
	bltu x0, x10, .LBB1_8
	jal x0, .LBB1_11
.LBB1_4:
	add x25 ,  x0 ,  x0
	jal x0, .LBB1_421
.LBB1_5:                                //  %if.then926
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	addi x21 ,  x0 ,  -1
.LBB1_6:                                //  %if.end28
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
.LBB1_430:                              //  %if.end28
	jal x0, .LBB1_414
.LBB1_7:                                //  %if.end16
	add x10 ,  x0 ,  x27
	addi x26 ,  x26 ,  4
	call iswspace
	beq x0, x10, .LBB1_11
.LBB1_8:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_6
.LBB1_9:                                //  %land.rhs
                                        //    in Loop: Header=BB1_8 Depth=1
	add x10 ,  x0 ,  x22
	call iswspace
	bltu x0, x10, .LBB1_8
.LBB1_10:                               //  %if.then26
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_11:                               //  %if.end29
	xori x15 ,  x27 ,  37
	bltu x0, x15, .LBB1_40
.LBB1_12:                               //  %again.preheader
	add x22 ,  x0 ,  x23
	add x9 ,  x0 ,  x23
.LBB1_13:                               //  %again
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
	add x15 ,  x0 ,  x26
.LBB1_14:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
	lw x27 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x27 ,  -37
	bgeu x13, x14, .LBB1_15
.LBB1_431:                              //  %again
	jal x0, .LBB1_414
.LBB1_15:                               //  %again
                                        //    Parent Loop BB1_13 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lui x30 ,  JTI1_0&4095
	lui x13 ,  (JTI1_0>>12)&1048575
	slli x14 ,  x14 ,  2&31
	addi x26 ,  x15 ,  4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB1_16:                               //  %sw.bb94
                                        //    in Loop: Header=BB1_14 Depth=2
	andi x14 ,  x9 ,  15
	add x15 ,  x0 ,  x26
	beq x0, x14, .LBB1_14
	jal x0, .LBB1_414
.LBB1_17:                               //  %sw.bb70
                                        //    in Loop: Header=BB1_15 Depth=3
	andi x14 ,  x9 ,  15
	beq x0, x14, .LBB1_18
.LBB1_432:                              //  %sw.bb70
	jal x0, .LBB1_414
.LBB1_18:                               //  %if.end74
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  104
	beq x14, x13, .LBB1_24
.LBB1_19:                               //  %if.end74
                                        //    in Loop: Header=BB1_15 Depth=3
	addi x14 ,  x0 ,  4
	jal x0, .LBB1_23
.LBB1_20:                               //  %sw.bb52
                                        //    in Loop: Header=BB1_15 Depth=3
	andi x14 ,  x9 ,  15
	beq x0, x14, .LBB1_21
.LBB1_433:                              //  %sw.bb52
	jal x0, .LBB1_414
.LBB1_21:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  108
	beq x14, x13, .LBB1_25
.LBB1_22:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	slti x14 ,  x0 ,  1
.LBB1_23:                               //  %if.end56
                                        //    in Loop: Header=BB1_15 Depth=3
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_27
.LBB1_24:                               //    in Loop: Header=BB1_15 Depth=3
	addi x14 ,  x0 ,  8
	jal x0, .LBB1_26
.LBB1_25:                               //    in Loop: Header=BB1_15 Depth=3
	addi x14 ,  x0 ,  2
.LBB1_26:                               //    in Loop: Header=BB1_15 Depth=3
	addi x15 ,  x15 ,  8
.LBB1_27:                               //    in Loop: Header=BB1_15 Depth=3
	or x9 ,  x9 ,  x14
	lw x27 ,  0 ( x15 )
	addi x13 ,  x0 ,  85
	addi x14 ,  x27 ,  -37
	bgeu x13, x14, .LBB1_15
	jal x0, .LBB1_414
.LBB1_28:                               //  %sw.bb111
                                        //    in Loop: Header=BB1_13 Depth=1
	andi x15 ,  x9 ,  143
	beq x0, x15, .LBB1_29
.LBB1_434:                              //  %sw.bb111
	jal x0, .LBB1_414
.LBB1_29:                               //  %if.end115
                                        //    in Loop: Header=BB1_13 Depth=1
	add x10 ,  x0 ,  x22
	addi x11 ,  x0 ,  10
	call __mulsi3
	add x15 ,  x27 ,  x10
	addi x22 ,  x15 ,  -48
	jal x0, .LBB1_13
.LBB1_30:                               //  %sw.bb64
                                        //    in Loop: Header=BB1_13 Depth=1
	andi x15 ,  x9 ,  15
	beq x0, x15, .LBB1_31
.LBB1_435:                              //  %sw.bb64
	jal x0, .LBB1_414
.LBB1_31:                               //  %if.end68
                                        //    in Loop: Header=BB1_13 Depth=1
	ori x9 ,  x9 ,  2
	jal x0, .LBB1_13
.LBB1_32:                               //  %sw.bb45
                                        //    in Loop: Header=BB1_13 Depth=1
	andi x15 ,  x9 ,  159
	or x15 ,  x22 ,  x15
	beq x0, x15, .LBB1_33
.LBB1_436:                              //  %sw.bb45
	jal x0, .LBB1_414
.LBB1_33:                               //  %if.end50
                                        //    in Loop: Header=BB1_13 Depth=1
	ori x9 ,  x9 ,  16
	add x22 ,  x0 ,  x23
	jal x0, .LBB1_13
.LBB1_34:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_13 Depth=1
	andi x15 ,  x9 ,  143
	beq x0, x15, .LBB1_35
.LBB1_437:                              //  %sw.bb99
	jal x0, .LBB1_414
.LBB1_35:                               //  %do.body104
                                        //    in Loop: Header=BB1_13 Depth=1
	bltu x0, x20, .LBB1_37
.LBB1_36:                               //  %if.then106
                                        //    in Loop: Header=BB1_13 Depth=1
	add x15 ,  x0 ,  x2
	addi x20 ,  x15 ,  -8
	add x2 ,  x0 ,  x20
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB1_37:                               //  %do.end109
                                        //    in Loop: Header=BB1_13 Depth=1
	ori x9 ,  x9 ,  128
	jal x0, .LBB1_13
.LBB1_38:                               //  %sw.bb120
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	ori x9 ,  x9 ,  512
	jal x0, .LBB1_39
.LBB1_40:                               //  %literal
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	bltu x0, x15, .LBB1_41
.LBB1_438:                              //  %literal
	jal x0, .LBB1_407
.LBB1_41:                               //  %if.end39
	beq x11, x27, .LBB1_42
.LBB1_439:                              //  %if.end39
	jal x0, .LBB1_412
.LBB1_42:                               //  %if.end44
	addi x24 ,  x24 ,  1
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_43:                               //  %sw.bb149
	ori x9 ,  x9 ,  1
.LBB1_44:                               //  %sw.bb151
	ori x9 ,  x9 ,  64
	add x21 ,  x0 ,  x23
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_45:                               //  %sw.bb122
	ori x9 ,  x9 ,  1
	addi x21 ,  x0 ,  2
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_46:                               //  %sw.bb125
	lw x14 ,  4 ( x15 )
	addi x13 ,  x0 ,  94
	beq x14, x13, .LBB1_62
.LBB1_47:                               //  %sw.bb125
	addi x13 ,  x0 ,  4
	sw x26 ,  -240 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	beq x15, x13, .LBB1_64
.LBB1_63:                               //  %sw.bb125
	lw x26 ,  -240 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB1_65
.LBB1_48:                               //  %sw.epilog.loopexit
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	jal x0, .LBB1_60
.LBB1_49:                               //  %sw.epilog.loopexit3083
	lui x30 ,  _wcstol_r&4095
	lui x15 ,  (_wcstol_r>>12)&1048575
	sw x23 ,  -232 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -244 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_50:                               //  %sw.bb155
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_6
.LBB1_51:                               //  %if.end159
	andi x15 ,  x9 ,  8
	bltu x0, x15, .LBB1_177
.LBB1_52:                               //  %if.else164
	andi x15 ,  x9 ,  4
	bltu x0, x15, .LBB1_267
.LBB1_53:                               //  %if.else170
	andi x15 ,  x9 ,  1
	bltu x0, x15, .LBB1_55
.LBB1_54:                               //  %if.else175
	andi x15 ,  x9 ,  2
	beq x0, x15, .LBB1_55
.LBB1_440:                              //  %if.else175
	jal x0, .LBB1_391
.LBB1_55:                               //  %if.then173
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x24 ,  0 ( x15 )
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_56:                               //  %sw.epilog.loopexit3673
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -244 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  8
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_57:                               //  %sw.bb153
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	ori x9 ,  x9 ,  544
.LBB1_39:                               //  %sw.bb120
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -244 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  16
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_58:                               //  %sw.epilog.loopexit4683
	addi x21 ,  x0 ,  2
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_59:                               //  %sw.epilog.loopexit4176
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
.LBB1_60:                               //  %sw.epilog
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -244 ( x8 )           //  4-byte Folded Spill
	addi x15 ,  x0 ,  10
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x0 ,  3
	andi x15 ,  x9 ,  64
	beq x0, x15, .LBB1_69
	jal x0, .LBB1_73
.LBB1_62:
	addi x13 ,  x15 ,  8
	sw x13 ,  -240 ( x8 )           //  4-byte Folded Spill
	addi x13 ,  x0 ,  8
	add x15 ,  x13 ,  x15
	addi x13 ,  x0 ,  93
	lw x15 ,  0 ( x15 )
	bne x15, x13, .LBB1_63
.LBB1_64:
	lw x15 ,  -240 ( x8 )           //  4-byte Folded Reload
	addi x26 ,  x15 ,  4
.LBB1_65:                               //  %sw.bb125
	xori x15 ,  x14 ,  94
	sltiu x15 ,  x15 ,  1
	sw x15 ,  -248 ( x8 )           //  4-byte Folded Spill
.LBB1_66:                               //  %while.cond137
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	xori x14 ,  x15 ,  93
	beq x0, x14, .LBB1_68
.LBB1_67:                               //  %while.cond137
                                        //    in Loop: Header=BB1_66 Depth=1
	bltu x0, x15, .LBB1_66
.LBB1_68:                               //  %while.end146
	addi x15 ,  x26 ,  -4
	ori x9 ,  x9 ,  64
	slti x21 ,  x0 ,  1
	sw x15 ,  -252 ( x8 )           //  4-byte Folded Spill
	andi x15 ,  x9 ,  64
	bltu x0, x15, .LBB1_73
.LBB1_69:                               //  %while.cond191.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x27 ,  x0 ,  x23
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_70
.LBB1_441:                              //  %while.cond191.preheader
	jal x0, .LBB1_406
.LBB1_70:                               //  %land.rhs195
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x23
	call iswspace
	beq x0, x10, .LBB1_72
.LBB1_71:                               //  %while.body199
                                        //    in Loop: Header=BB1_70 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	addi x24 ,  x24 ,  1
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_70
	jal x0, .LBB1_406
.LBB1_72:                               //  %if.end205
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	add x23 ,  x0 ,  x27
.LBB1_73:                               //  %if.end207
	lui x30 ,  JTI1_1&4095
	lui x14 ,  (JTI1_1>>12)&1048575
	slli x15 ,  x21 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_74:                               //  %sw.bb208
	sw x25 ,  -256 ( x8 )           //  4-byte Folded Spill
	slti x25 ,  x0 ,  1
	beq x22, x23, .LBB1_76
.LBB1_75:                               //  %sw.bb208
	add x25 ,  x0 ,  x22
.LBB1_76:                               //  %sw.bb208
	andi x22 ,  x9 ,  16
	andi x15 ,  x9 ,  1
	bltu x0, x15, .LBB1_127
.LBB1_77:                               //  %if.else341
	beq x0, x22, .LBB1_138
.LBB1_78:                               //  %land.rhs413.us.preheader
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x23
	addi x12 ,  x0 ,  8
	call memset
	add x21 ,  x0 ,  x23
	jal x0, .LBB1_82
.LBB1_79:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_82 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_80
.LBB1_442:                              //  %while.body418.us
	jal x0, .LBB1_405
.LBB1_80:                               //  %if.then429.us
                                        //    in Loop: Header=BB1_82 Depth=1
	addi x25 ,  x25 ,  -1
.LBB1_81:                               //  %if.end465.us
                                        //    in Loop: Header=BB1_82 Depth=1
	addi x21 ,  x21 ,  1
	beq x0, x25, .LBB1_266
.LBB1_82:                               //  %land.rhs413.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x12 ,  x0 ,  x10
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB1_178
.LBB1_83:                               //  %while.body418.us
                                        //    in Loop: Header=BB1_82 Depth=1
	add x10 ,  x0 ,  x19
	addi x11 ,  x8 ,  -225
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	bltu x0, x10, .LBB1_79
.LBB1_84:                               //  %lor.lhs.false426.us
                                        //    in Loop: Header=BB1_82 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	bltu x0, x15, .LBB1_80
	jal x0, .LBB1_81
.LBB1_85:                               //  %sw.bb500
	addi x21 ,  x0 ,  -1
	add x15 ,  x0 ,  x23
	sw x25 ,  -256 ( x8 )           //  4-byte Folded Spill
	add x23 ,  x0 ,  x21
	beq x22, x15, .LBB1_87
.LBB1_86:                               //  %sw.bb500
	add x23 ,  x0 ,  x22
.LBB1_87:                               //  %sw.bb500
	andi x25 ,  x9 ,  16
	andi x15 ,  x9 ,  1
	beq x0, x15, .LBB1_131
.LBB1_88:                               //  %sw.bb500
	beq x0, x25, .LBB1_131
.LBB1_89:                               //  %while.cond511.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB1_90
.LBB1_443:                              //  %while.cond511.preheader
	jal x0, .LBB1_425
.LBB1_90:                               //  %land.lhs.true515.lr.ph
	lw x9 ,  -240 ( x8 )            //  4-byte Folded Reload
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x9
	srai x25 ,  x15 ,  2&31
	lw x15 ,  -248 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_151
.LBB1_91:                               //  %land.lhs.true515.preheader
	add x21 ,  x0 ,  x0
.LBB1_92:                               //  %land.lhs.true515
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x21, .LBB1_156
.LBB1_93:                               //  %land.rhs519
                                        //    in Loop: Header=BB1_92 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	call wmemchr
	bltu x0, x10, .LBB1_156
.LBB1_94:                               //  %while.body540
                                        //    in Loop: Header=BB1_92 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB1_92
	jal x0, .LBB1_155
.LBB1_95:                               //  %sw.bb898
	addi x21 ,  x0 ,  -1
	beq x22, x23, .LBB1_97
.LBB1_96:                               //  %sw.bb898
	add x21 ,  x0 ,  x22
.LBB1_97:                               //  %sw.bb898
	andi x23 ,  x9 ,  16
	andi x15 ,  x9 ,  1
	beq x0, x15, .LBB1_134
.LBB1_98:                               //  %sw.bb898
	beq x0, x23, .LBB1_134
.LBB1_99:                               //  %while.cond909.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_150
.LBB1_100:                              //  %land.lhs.true913.preheader
	add x23 ,  x0 ,  x0
.LBB1_101:                              //  %land.lhs.true913
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x21, .LBB1_5
.LBB1_102:                              //  %land.rhs917
                                        //    in Loop: Header=BB1_101 Depth=1
	add x10 ,  x0 ,  x22
	call iswspace
	bltu x0, x10, .LBB1_5
.LBB1_103:                              //  %while.body921
                                        //    in Loop: Header=BB1_101 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	addi x21 ,  x21 ,  -1
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	addi x24 ,  x24 ,  1
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB1_101
.LBB1_104:
	addi x21 ,  x0 ,  -1
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_105:                              //  %sw.bb1237
	add x27 ,  x0 ,  x23
	addi x15 ,  x22 ,  -1
	addi x23 ,  x0 ,  39
	addi x14 ,  x0 ,  38
	bltu x14, x15, .LBB1_107
.LBB1_106:                              //  %sw.bb1237
	add x23 ,  x0 ,  x22
.LBB1_107:                              //  %sw.bb1237
	ori x9 ,  x9 ,  1408
	beq x0, x23, .LBB1_137
.LBB1_108:                              //  %for.body.preheader
	addi x22 ,  x8 ,  -224
	add x21 ,  x0 ,  x27
	jal x0, .LBB1_111
.LBB1_109:                              //  %sw.bb1263
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __svfiwscanf_r.basefix&4095
	lui x14 ,  (__svfiwscanf_r.basefix>>12)&1048575
	andi x9 ,  x9 ,  -897
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  1&31
	add x15 ,  x15 ,  x14
	lh x15 ,  0 ( x15 )
.LBB1_110:                              //  %ok
                                        //    in Loop: Header=BB1_111 Depth=1
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
	sw x11 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x21 ,  x21 ,  1
	beq x23, x21, .LBB1_126
.LBB1_111:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x11 ,  x0 ,  x10
	addi x14 ,  x0 ,  121
	addi x15 ,  x11 ,  1
	bgeu x14, x15, .LBB1_112
.LBB1_454:                              //  %for.body
	jal x0, .LBB1_363
.LBB1_112:                              //  %for.body
                                        //    in Loop: Header=BB1_111 Depth=1
	lui x30 ,  JTI1_2&4095
	lui x14 ,  (JTI1_2>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_113:                              //  %sw.bb1275
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	slti x15 ,  x15 ,  11
	bltu x0, x15, .LBB1_363
.LBB1_114:                              //  %if.else1260
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x9 ,  x9 ,  -897
	sw x11 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x21 ,  x21 ,  1
	bne x23, x21, .LBB1_111
	jal x0, .LBB1_126
.LBB1_115:                              //  %sw.bb1281
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x15 ,  x9 ,  128
	beq x0, x15, .LBB1_363
.LBB1_116:                              //  %if.then1284
                                        //    in Loop: Header=BB1_111 Depth=1
	lui x30 ,  -65665&4095
	lui x15 ,  (-65665>>12)&1048575
	lui x14 ,  (65536>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	or x9 ,  x14 ,  x15
	sw x11 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x21 ,  x21 ,  1
	bne x23, x21, .LBB1_111
	jal x0, .LBB1_126
.LBB1_117:                              //  %sw.bb1267
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x13 ,  -232 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __svfiwscanf_r.basefix&4095
	lui x14 ,  (__svfiwscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x13 ,  1&31
	add x15 ,  x15 ,  x14
	addi x14 ,  x13 ,  -1
	lh x15 ,  0 ( x15 )
	sltiu x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_362
.LBB1_118:                              //  %if.end1273
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x9 ,  x9 ,  -897
	jal x0, .LBB1_110
.LBB1_119:                              //  %sw.bb1288
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x15 ,  x9 ,  512
	beq x0, x15, .LBB1_363
.LBB1_120:                              //  %land.lhs.true1291
                                        //    in Loop: Header=BB1_111 Depth=1
	srli x15 ,  x9 ,  14&31
	addi x14 ,  x8 ,  -220
	andi x15 ,  x15 ,  4
	add x15 ,  x15 ,  x14
	bne x22, x15, .LBB1_363
.LBB1_121:                              //  %if.then1301
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x9 ,  x9 ,  -513
	addi x15 ,  x0 ,  16
	jal x0, .LBB1_110
.LBB1_122:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_111 Depth=1
	lw x15 ,  -232 ( x8 )           //  4-byte Folded Reload
	bne x15, x27, .LBB1_124
.LBB1_123:                              //    in Loop: Header=BB1_111 Depth=1
	ori x9 ,  x9 ,  512
	addi x15 ,  x0 ,  8
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
.LBB1_124:                              //  %sw.bb1250
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x15 ,  x9 ,  1024
	beq x0, x15, .LBB1_114
.LBB1_125:                              //  %if.then1258
                                        //    in Loop: Header=BB1_111 Depth=1
	andi x9 ,  x9 ,  -1409
	sw x11 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x21 ,  x21 ,  1
	bne x23, x21, .LBB1_111
.LBB1_126:
	slti x21 ,  x0 ,  1
	add x23 ,  x0 ,  x27
	addi x27 ,  x8 ,  -224
	andi x15 ,  x9 ,  256
	beq x0, x15, .LBB1_365
	jal x0, .LBB1_410
.LBB1_127:                              //  %if.then215
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	beq x0, x22, .LBB1_140
.LBB1_128:                              //  %land.rhs280.us.preheader
	add x21 ,  x0 ,  x23
.LBB1_129:                              //  %land.rhs280.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_180
.LBB1_130:                              //  %if.end307.us
                                        //    in Loop: Header=BB1_129 Depth=1
	addi x21 ,  x21 ,  1
	bne x25, x21, .LBB1_129
	jal x0, .LBB1_145
.LBB1_131:                              //  %if.else552
	bltu x0, x15, .LBB1_146
.LBB1_132:                              //  %if.else710
	beq x0, x25, .LBB1_157
.LBB1_133:
	add x11 ,  x0 ,  x0
	addi x27 ,  x8 ,  -225
	sw x11 ,  -260 ( x8 )           //  4-byte Folded Spill
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	sw x11 ,  -268 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_296
.LBB1_134:                              //  %if.else929
	bltu x0, x15, .LBB1_148
.LBB1_135:                              //  %if.else1067
	beq x0, x23, .LBB1_159
.LBB1_136:
	add x11 ,  x0 ,  x0
	addi x22 ,  x8 ,  -225
	add x9 ,  x0 ,  x11
	sw x11 ,  -260 ( x8 )           //  4-byte Folded Spill
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_337
.LBB1_137:
	add x23 ,  x0 ,  x27
	addi x27 ,  x8 ,  -224
	add x21 ,  x0 ,  x23
	add x22 ,  x0 ,  x27
	andi x15 ,  x9 ,  256
	beq x0, x15, .LBB1_365
	jal x0, .LBB1_410
.LBB1_138:                              //  %if.else345
	andi x15 ,  x9 ,  128
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_161
.LBB1_139:                              //  %if.else405
	lw x15 ,  -56 ( x8 )
	add x27 ,  x0 ,  x23
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	sw x23 ,  -264 ( x8 )           //  4-byte Folded Spill
	sw x23 ,  -260 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_198
.LBB1_140:                              //  %if.else220
	andi x15 ,  x9 ,  128
	bltu x0, x15, .LBB1_165
.LBB1_141:                              //  %land.rhs280.us2987.preheader
	lw x15 ,  -56 ( x8 )
	add x21 ,  x0 ,  x23
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
.LBB1_142:                              //  %land.rhs280.us2987
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_179
.LBB1_143:                              //  %if.then288.us2997
                                        //    in Loop: Header=BB1_142 Depth=1
	sw x10 ,  0 ( x9 )
	addi x9 ,  x9 ,  4
	addi x21 ,  x21 ,  1
	bne x25, x21, .LBB1_142
.LBB1_144:
	sw x9 ,  -236 ( x8 )            //  4-byte Folded Spill
.LBB1_145:
	add x22 ,  x0 ,  x23
	add x27 ,  x0 ,  x23
	add x15 ,  x0 ,  x23
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	add x9 ,  x0 ,  x15
	bltu x0, x15, .LBB1_182
	jal x0, .LBB1_185
.LBB1_146:                              //  %if.then555
	andi x15 ,  x9 ,  128
	bltu x0, x15, .LBB1_169
.LBB1_147:                              //  %if.else617
	lw x15 ,  -56 ( x8 )
	add x9 ,  x0 ,  x0
	add x25 ,  x0 ,  x9
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x27 ,  0 ( x15 )
	jal x0, .LBB1_230
.LBB1_148:                              //  %if.then932
	andi x15 ,  x9 ,  128
	sw x25 ,  -256 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_173
.LBB1_149:                              //  %if.else994
	lw x15 ,  -56 ( x8 )
	add x9 ,  x0 ,  x0
	add x23 ,  x0 ,  x9
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	jal x0, .LBB1_245
.LBB1_150:
	addi x21 ,  x0 ,  -1
	add x23 ,  x0 ,  x0
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_151:                              //  %land.lhs.true515.us.preheader
	add x21 ,  x0 ,  x0
.LBB1_152:                              //  %land.lhs.true515.us
                                        //  =>This Inner Loop Header: Depth=1
	beq x23, x21, .LBB1_156
.LBB1_153:                              //  %land.rhs519.us
                                        //    in Loop: Header=BB1_152 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	call wmemchr
	beq x0, x10, .LBB1_156
.LBB1_154:                              //  %while.body540.us
                                        //    in Loop: Header=BB1_152 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x15 ,  x22 ,  -1
	bltu x0, x15, .LBB1_152
.LBB1_155:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	jal x0, .LBB1_388
.LBB1_156:
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	call _ungetwc_r
	add x23 ,  x0 ,  x0
	bltu x0, x21, .LBB1_388
	jal x0, .LBB1_414
.LBB1_157:                              //  %if.else718
	andi x15 ,  x9 ,  128
	bltu x0, x15, .LBB1_186
.LBB1_158:                              //  %if.else778
	lw x15 ,  -56 ( x8 )
	add x11 ,  x0 ,  x0
	sw x11 ,  -268 ( x8 )           //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x27 ,  0 ( x15 )
	sw x11 ,  -260 ( x8 )           //  4-byte Folded Spill
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_296
.LBB1_159:                              //  %if.else1075
	andi x15 ,  x9 ,  128
	bltu x0, x15, .LBB1_190
.LBB1_160:                              //  %if.else1135
	lw x15 ,  -56 ( x8 )
	add x11 ,  x0 ,  x0
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	add x9 ,  x0 ,  x11
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x22 ,  0 ( x15 )
	sw x11 ,  -260 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_337
.LBB1_161:                              //  %if.then348
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x27 ,  0 ( x15 )
	beq x0, x27, .LBB1_425
.LBB1_162:                              //  %if.end352
	addi x10 ,  x0 ,  32
	call malloc
	beq x0, x10, .LBB1_409
.LBB1_163:                              //  %if.end356
	sw x10 ,  0 ( x27 )
	sw x10 ,  -260 ( x8 )           //  4-byte Folded Spill
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_194
.LBB1_164:                              //  %if.end356.if.end396_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_197
.LBB1_165:                              //  %if.then223
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -260 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_425
.LBB1_166:                              //  %if.end227
	addi x10 ,  x0 ,  128
	call malloc
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB1_409
.LBB1_167:                              //  %if.end231
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sw x22 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_216
.LBB1_168:                              //  %if.end231.if.end267_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_219
.LBB1_169:                              //  %if.then560
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_425
.LBB1_170:                              //  %if.end564
	addi x10 ,  x0 ,  128
	call malloc
	add x27 ,  x0 ,  x10
	beq x0, x27, .LBB1_427
.LBB1_171:                              //  %if.end568
	sw x27 ,  0 ( x9 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_226
.LBB1_172:                              //  %if.end568.if.end608_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_229
.LBB1_173:                              //  %if.then937
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_414
.LBB1_174:                              //  %if.end941
	addi x10 ,  x0 ,  128
	call malloc
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB1_409
.LBB1_175:                              //  %if.end945
	sw x22 ,  0 ( x9 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_241
.LBB1_176:                              //  %if.end945.if.end985_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_244
.LBB1_177:                              //  %if.then162
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x24 ,  0 ( x15 )
	lw x27 ,  0 ( x26 )
	bltu x0, x27, .LBB1_7
	jal x0, .LBB1_414
.LBB1_178:
	sw x22 ,  -268 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x23
	add x14 ,  x0 ,  x23
	addi x22 ,  x8 ,  -225
	sw x23 ,  -260 ( x8 )           //  4-byte Folded Spill
	bltu x0, x21, .LBB1_212
	jal x0, .LBB1_405
.LBB1_179:
	sw x9 ,  -236 ( x8 )            //  4-byte Folded Spill
.LBB1_180:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x0 ,  x23
	add x27 ,  x0 ,  x23
	add x22 ,  x0 ,  x23
	beq x0, x21, .LBB1_406
.LBB1_181:                              //  %if.end313
	add x9 ,  x0 ,  x15
	beq x0, x15, .LBB1_185
.LBB1_182:                              //  %if.end313
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x15 ,  x22
	srai x15 ,  x11 ,  2&31
	bgeu x15, x27, .LBB1_185
.LBB1_183:                              //  %if.then324
	lw x10 ,  0 ( x9 )
	call realloc
	beq x0, x10, .LBB1_185
.LBB1_184:                              //  %if.then328
	sw x10 ,  0 ( x9 )
.LBB1_185:                              //  %cleanup336.thread2159
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x25 ,  x15 ,  x25
	jal x0, .LBB1_388
.LBB1_186:                              //  %if.then721
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -260 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_425
.LBB1_187:                              //  %if.end725
	addi x10 ,  x0 ,  32
	call malloc
	add x27 ,  x0 ,  x10
	beq x0, x27, .LBB1_427
.LBB1_188:                              //  %if.end729
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sw x27 ,  0 ( x15 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_292
.LBB1_189:                              //  %if.end729.if.end769_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_295
.LBB1_190:                              //  %if.then1078
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_414
.LBB1_191:                              //  %if.end1082
	addi x10 ,  x0 ,  32
	call malloc
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB1_409
.LBB1_192:                              //  %if.end1086
	sw x22 ,  0 ( x9 )
	lhu x14 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
	bgeu x15, x14, .LBB1_333
.LBB1_193:                              //  %if.end1086.if.end1126_crit_edge
	lw x10 ,  0 ( x20 )
	jal x0, .LBB1_336
.LBB1_194:                              //  %if.then364
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_195:                              //  %if.end384
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_196:                              //  %cleanup393
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_197:                              //  %if.end396
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	lw x22 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x14 ,  x10
	sw x27 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -264 ( x8 )           //  4-byte Folded Spill
.LBB1_198:                              //  %land.rhs413.preheader
	addi x10 ,  x8 ,  -64
	add x11 ,  x0 ,  x23
	addi x12 ,  x0 ,  8
	call memset
	add x21 ,  x0 ,  x23
	jal x0, .LBB1_202
.LBB1_199:                              //  %if.then449
                                        //    in Loop: Header=BB1_202 Depth=1
	lw x10 ,  -260 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_409
.LBB1_200:                              //  %if.end455
                                        //    in Loop: Header=BB1_202 Depth=1
	add x22 ,  x9 ,  x10
	sw x10 ,  0 ( x27 )
	sw x10 ,  -260 ( x8 )           //  4-byte Folded Spill
.LBB1_201:                              //  %cleanup.cont463
                                        //    in Loop: Header=BB1_202 Depth=1
	add x22 ,  x23 ,  x22
	addi x21 ,  x21 ,  1
	add x23 ,  x0 ,  x0
	beq x0, x25, .LBB1_211
.LBB1_202:                              //  %land.rhs413
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x12 ,  x0 ,  x10
	xori x15 ,  x12 ,  -1
	beq x0, x15, .LBB1_210
.LBB1_203:                              //  %while.body418
                                        //    in Loop: Header=BB1_202 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	add x23 ,  x0 ,  x10
	beq x0, x23, .LBB1_205
.LBB1_204:                              //  %while.body418
                                        //    in Loop: Header=BB1_202 Depth=1
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB1_206
	jal x0, .LBB1_405
.LBB1_205:                              //  %lor.lhs.false426
                                        //    in Loop: Header=BB1_202 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_207
.LBB1_206:                              //  %if.then429
                                        //    in Loop: Header=BB1_202 Depth=1
	addi x25 ,  x25 ,  -1
.LBB1_207:                              //  %if.then434
                                        //    in Loop: Header=BB1_202 Depth=1
	beq x0, x27, .LBB1_201
.LBB1_208:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_202 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x9 ,  x22 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -264 ( x8 )           //  4-byte Folded Reload
	bgeu x9, x11, .LBB1_199
.LBB1_209:                              //  %land.lhs.true441
                                        //    in Loop: Header=BB1_202 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x9, x15, .LBB1_201
	jal x0, .LBB1_199
.LBB1_210:
	lw x14 ,  -264 ( x8 )           //  4-byte Folded Reload
	bltu x0, x21, .LBB1_212
	jal x0, .LBB1_405
.LBB1_211:
	lw x14 ,  -264 ( x8 )           //  4-byte Folded Reload
.LBB1_212:                              //  %if.end471
	beq x0, x27, .LBB1_265
.LBB1_213:                              //  %if.end471
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x22 ,  x15
	bgeu x11, x14, .LBB1_265
.LBB1_214:                              //  %if.then481
	lw x10 ,  0 ( x27 )
	call realloc
	lw x22 ,  -268 ( x8 )           //  4-byte Folded Reload
	beq x0, x10, .LBB1_266
.LBB1_215:                              //  %if.then486
	sw x10 ,  0 ( x27 )
	jal x0, .LBB1_266
.LBB1_265:
	lw x22 ,  -268 ( x8 )           //  4-byte Folded Reload
.LBB1_266:                              //  %cleanup494
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x22 ,  0
	sltiu x15 ,  x15 ,  1
	add x25 ,  x15 ,  x25
	jal x0, .LBB1_388
.LBB1_216:                              //  %if.then239
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_217:                              //  %if.end258
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_218:                              //  %cleanup
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_219:                              //  %land.rhs280.preheader
	lw x13 ,  -260 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x21 ,  x0 ,  x23
	addi x27 ,  x0 ,  32
	sw x22 ,  -236 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	jal x0, .LBB1_222
.LBB1_220:                              //    in Loop: Header=BB1_222 Depth=1
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
.LBB1_221:                              //  %cleanup.cont305
                                        //    in Loop: Header=BB1_222 Depth=1
	sw x23 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x21 ,  x21 ,  1
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	beq x25, x21, .LBB1_279
.LBB1_222:                              //  %land.rhs280
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB1_278
.LBB1_223:                              //  %if.then288
                                        //    in Loop: Header=BB1_222 Depth=1
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x22
	srai x9 ,  x15 ,  2&31
	bltu x9, x27, .LBB1_220
.LBB1_224:                              //  %if.then293
                                        //    in Loop: Header=BB1_222 Depth=1
	slli x11 ,  x27 ,  3&31
	add x10 ,  x0 ,  x22
	call realloc
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB1_409
.LBB1_225:                              //  %if.end298
                                        //    in Loop: Header=BB1_222 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	slli x27 ,  x27 ,  1&31
	sw x22 ,  0 ( x15 )
	slli x15 ,  x9 ,  2&31
	add x15 ,  x15 ,  x22
	jal x0, .LBB1_221
.LBB1_226:                              //  %if.then576
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_227:                              //  %if.end596
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_228:                              //  %cleanup605
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_229:                              //  %if.end608
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x25 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x9 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB1_230:                              //  %if.end619
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_240
.LBB1_231:                              //  %land.lhs.true624.lr.ph
	lw x15 ,  -240 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	srai x15 ,  x15 ,  2&31
	sw x15 ,  -260 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -248 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_268
.LBB1_232:                              //  %land.lhs.true624.lr.ph.split
	beq x0, x9, .LBB1_280
.LBB1_233:                              //  %land.lhs.true624.preheader
	addi x21 ,  x23 ,  1
	add x23 ,  x0 ,  x0
	sw x27 ,  -236 ( x8 )           //  4-byte Folded Spill
	addi x21 ,  x21 ,  -1
	bltu x0, x21, .LBB1_237
	jal x0, .LBB1_285
.LBB1_234:                              //  %if.end668
                                        //    in Loop: Header=BB1_237 Depth=1
	slli x15 ,  x22 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x27 ,  0 ( x9 )
	add x15 ,  x15 ,  x27
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
.LBB1_235:                              //  %cleanup673
                                        //    in Loop: Header=BB1_237 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_287
.LBB1_236:                              //  %land.lhs.true624
                                        //    in Loop: Header=BB1_237 Depth=1
	addi x21 ,  x21 ,  -1
	beq x0, x21, .LBB1_285
.LBB1_237:                              //  %land.end649
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	lw x12 ,  -260 ( x8 )           //  4-byte Folded Reload
	call wmemchr
	bltu x0, x10, .LBB1_285
.LBB1_238:                              //  %while.body650
                                        //    in Loop: Header=BB1_237 Depth=1
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x22 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	sub x15 ,  x15 ,  x27
	srai x22 ,  x15 ,  2&31
	bltu x22, x25, .LBB1_235
.LBB1_239:                              //  %if.then662
                                        //    in Loop: Header=BB1_237 Depth=1
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x27
	call realloc
	add x27 ,  x0 ,  x10
	bltu x0, x27, .LBB1_234
	jal x0, .LBB1_409
.LBB1_240:
	sw x27 ,  -236 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_286
.LBB1_241:                              //  %if.then953
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_242:                              //  %if.end973
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_243:                              //  %cleanup982
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_244:                              //  %if.end985
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x23 ,  x0 ,  32
	add x14 ,  x14 ,  x10
	sw x9 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
.LBB1_245:                              //  %if.end996
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_258
.LBB1_246:                              //  %land.lhs.true1001.lr.ph
	sw x22 ,  -236 ( x8 )           //  4-byte Folded Spill
	beq x0, x9, .LBB1_254
.LBB1_247:
	sw x22 ,  -236 ( x8 )           //  4-byte Folded Spill
	bltu x0, x21, .LBB1_250
	jal x0, .LBB1_257
.LBB1_248:                              //  %cleanup.cont1036
                                        //    in Loop: Header=BB1_250 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	addi x21 ,  x21 ,  -1
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	addi x24 ,  x24 ,  1
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_259
.LBB1_249:                              //  %land.lhs.true1001
                                        //    in Loop: Header=BB1_250 Depth=1
	beq x0, x21, .LBB1_257
.LBB1_250:                              //  %land.end1009
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x25
	call iswspace
	bltu x0, x10, .LBB1_257
.LBB1_251:                              //  %while.body1010
                                        //    in Loop: Header=BB1_250 Depth=1
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	sub x15 ,  x15 ,  x22
	srai x25 ,  x15 ,  2&31
	bltu x25, x23, .LBB1_248
.LBB1_252:                              //  %if.then1022
                                        //    in Loop: Header=BB1_250 Depth=1
	slli x11 ,  x23 ,  3&31
	add x10 ,  x0 ,  x22
	call realloc
	add x22 ,  x0 ,  x10
	beq x0, x22, .LBB1_409
.LBB1_253:                              //  %if.end1028
                                        //    in Loop: Header=BB1_250 Depth=1
	slli x15 ,  x25 ,  2&31
	slli x23 ,  x23 ,  1&31
	sw x22 ,  0 ( x9 )
	add x15 ,  x15 ,  x22
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_248
.LBB1_254:                              //  %land.end1009.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x25
	call iswspace
	bltu x0, x10, .LBB1_257
.LBB1_255:                              //  %while.body1010.us
                                        //    in Loop: Header=BB1_254 Depth=1
	lw x27 ,  -236 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sw x25 ,  0 ( x27 )
	call _fgetwc_r
	add x25 ,  x0 ,  x10
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB1_361
.LBB1_256:                              //  %land.lhs.true1001.us
                                        //    in Loop: Header=BB1_254 Depth=1
	addi x27 ,  x27 ,  4
	addi x24 ,  x24 ,  1
	addi x21 ,  x21 ,  -1
	sw x27 ,  -236 ( x8 )           //  4-byte Folded Spill
	bltu x0, x21, .LBB1_254
.LBB1_257:                              //  %if.then1041
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	bltu x0, x9, .LBB1_260
	jal x0, .LBB1_263
.LBB1_258:
	sw x22 ,  -236 ( x8 )           //  4-byte Folded Spill
.LBB1_259:                              //  %if.end1043
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	beq x0, x9, .LBB1_263
.LBB1_260:                              //  %if.end1043
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x22
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x23, .LBB1_263
.LBB1_261:                              //  %if.then1054
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_263
.LBB1_262:                              //  %if.then1059
	sw x10 ,  0 ( x9 )
.LBB1_263:                              //  %cleanup1063
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	addi x21 ,  x0 ,  -1
	add x23 ,  x0 ,  x0
	addi x25 ,  x25 ,  1
	lw x27 ,  0 ( x26 )
	beq x0, x27, .LBB1_444
.LBB1_445:                              //  %cleanup1063
	jal x0, .LBB1_7
.LBB1_444:                              //  %cleanup1063
	jal x0, .LBB1_414
.LBB1_267:                              //  %if.then167
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x24 ,  0 ( x15 )
	lw x27 ,  0 ( x26 )
	beq x0, x27, .LBB1_446
.LBB1_447:                              //  %if.then167
	jal x0, .LBB1_7
.LBB1_446:                              //  %if.then167
	jal x0, .LBB1_414
.LBB1_268:
	sw x27 ,  -236 ( x8 )           //  4-byte Folded Spill
.LBB1_269:                              //  %land.end649.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	lw x12 ,  -260 ( x8 )           //  4-byte Folded Reload
	call wmemchr
	beq x0, x10, .LBB1_285
.LBB1_270:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_269 Depth=1
	lw x14 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x22 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	beq x0, x9, .LBB1_275
.LBB1_271:                              //  %while.body650.us
                                        //    in Loop: Header=BB1_269 Depth=1
	sub x15 ,  x14 ,  x27
	srai x21 ,  x15 ,  2&31
	bltu x21, x25, .LBB1_275
.LBB1_272:                              //  %if.then662.us
                                        //    in Loop: Header=BB1_269 Depth=1
	slli x11 ,  x25 ,  3&31
	add x10 ,  x0 ,  x27
	call realloc
	add x27 ,  x0 ,  x10
	beq x0, x27, .LBB1_409
.LBB1_273:                              //  %if.end668.us
                                        //    in Loop: Header=BB1_269 Depth=1
	slli x15 ,  x21 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x27 ,  0 ( x9 )
	add x15 ,  x15 ,  x27
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_276
.LBB1_275:                              //    in Loop: Header=BB1_269 Depth=1
	sw x14 ,  -236 ( x8 )           //  4-byte Folded Spill
.LBB1_276:                              //  %cleanup673.us
                                        //    in Loop: Header=BB1_269 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_286
.LBB1_277:                              //  %land.lhs.true624.us
                                        //    in Loop: Header=BB1_269 Depth=1
	addi x23 ,  x23 ,  -1
	bltu x0, x23, .LBB1_269
	jal x0, .LBB1_285
.LBB1_278:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	bltu x0, x21, .LBB1_181
	jal x0, .LBB1_406
.LBB1_279:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x9 ,  x0 ,  x15
	bltu x0, x15, .LBB1_182
	jal x0, .LBB1_185
.LBB1_280:
	add x21 ,  x0 ,  x27
.LBB1_281:                              //  %land.end649.us2931
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	lw x12 ,  -260 ( x8 )           //  4-byte Folded Reload
	call wmemchr
	bltu x0, x10, .LBB1_284
.LBB1_282:                              //  %while.body650.us2933
                                        //    in Loop: Header=BB1_281 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sw x22 ,  0 ( x21 )
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x15 ,  x22 ,  -1
	beq x0, x15, .LBB1_392
.LBB1_283:                              //  %land.lhs.true624.us2922
                                        //    in Loop: Header=BB1_281 Depth=1
	addi x21 ,  x21 ,  4
	addi x23 ,  x23 ,  -1
	bltu x0, x23, .LBB1_281
.LBB1_284:
	sw x21 ,  -236 ( x8 )           //  4-byte Folded Spill
.LBB1_285:                              //  %if.then680
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_286:                              //  %if.end682
	add x23 ,  x0 ,  x0
.LBB1_287:                              //  %if.end682
	lw x14 ,  -236 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x27
	beq x0, x15, .LBB1_425
.LBB1_288:                              //  %if.end690
	srai x21 ,  x15 ,  2&31
	sw x0 ,  0 ( x14 )
	beq x0, x9, .LBB1_387
.LBB1_289:                              //  %if.end690
	addi x15 ,  x21 ,  1
	bgeu x15, x25, .LBB1_387
.LBB1_290:                              //  %if.then697
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_387
.LBB1_291:                              //  %if.then702
	sw x10 ,  0 ( x9 )
	jal x0, .LBB1_387
.LBB1_292:                              //  %if.then737
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_293:                              //  %if.end757
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_294:                              //  %cleanup766
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_295:                              //  %if.end769
	lw x13 ,  -260 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x27 ,  -264 ( x8 )           //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -268 ( x8 )           //  4-byte Folded Spill
.LBB1_296:                              //  %if.end781
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	call memset
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x14 ,  x22 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_313
.LBB1_297:                              //  %if.end781
	beq x0, x14, .LBB1_314
.LBB1_298:                              //  %land.rhs790.lr.ph
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -252 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x15 ,  x10
	srai x12 ,  x15 ,  2&31
	lw x15 ,  -248 ( x8 )           //  4-byte Folded Reload
	add x9 ,  x0 ,  x12
	beq x0, x15, .LBB1_316
.LBB1_299:                              //  %land.rhs790.preheader
	add x21 ,  x0 ,  x0
.LBB1_300:                              //  %land.rhs790
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	call wmemchr
	bltu x0, x10, .LBB1_332
.LBB1_301:                              //  %while.body812
                                        //    in Loop: Header=BB1_300 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x22
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB1_303
.LBB1_302:                              //  %while.body812
                                        //    in Loop: Header=BB1_300 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_304
	jal x0, .LBB1_405
.LBB1_303:                              //  %lor.lhs.false820
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_305
.LBB1_304:                              //  %if.then824
                                        //    in Loop: Header=BB1_300 Depth=1
	addi x23 ,  x23 ,  -1
.LBB1_305:                              //  %if.end826
                                        //    in Loop: Header=BB1_300 Depth=1
	bltu x0, x25, .LBB1_311
.LBB1_306:                              //  %if.then829
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x10 ,  x27
	beq x0, x15, .LBB1_311
.LBB1_307:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sub x22 ,  x27 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -268 ( x8 )           //  4-byte Folded Reload
	bgeu x22, x11, .LBB1_309
.LBB1_308:                              //  %land.lhs.true837
                                        //    in Loop: Header=BB1_300 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x22, x15, .LBB1_311
.LBB1_309:                              //  %if.then845
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x10 ,  -264 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -268 ( x8 )           //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_409
.LBB1_310:                              //  %if.end851
                                        //    in Loop: Header=BB1_300 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x22 ,  x10
	sw x10 ,  -264 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
.LBB1_311:                              //  %if.end860
                                        //    in Loop: Header=BB1_300 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	addi x21 ,  x21 ,  1
	xori x14 ,  x22 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_315
.LBB1_312:                              //  %if.end860
                                        //    in Loop: Header=BB1_300 Depth=1
	add x12 ,  x0 ,  x9
	bltu x0, x14, .LBB1_300
	jal x0, .LBB1_315
.LBB1_313:
	add x21 ,  x0 ,  x0
	add x23 ,  x0 ,  x0
	bltu x0, x15, .LBB1_380
	jal x0, .LBB1_381
.LBB1_314:
	add x21 ,  x0 ,  x0
.LBB1_315:                              //  %while.end862
	add x23 ,  x0 ,  x0
	bltu x0, x15, .LBB1_380
	jal x0, .LBB1_381
.LBB1_316:                              //  %land.rhs790.lr.ph.split.us
	add x11 ,  x0 ,  x22
	call wmemchr
	beq x0, x10, .LBB1_379
.LBB1_317:                              //  %while.body812.us.preheader
	slti x21 ,  x0 ,  1
.LBB1_318:                              //  %while.body812.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x22
	addi x13 ,  x8 ,  -64
	call _wcrtomb_r
	beq x0, x10, .LBB1_320
.LBB1_319:                              //  %while.body812.us
                                        //    in Loop: Header=BB1_318 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_321
	jal x0, .LBB1_405
.LBB1_320:                              //  %lor.lhs.false820.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_322
.LBB1_321:                              //  %if.then824.us
                                        //    in Loop: Header=BB1_318 Depth=1
	addi x23 ,  x23 ,  -1
.LBB1_322:                              //  %if.end826.us
                                        //    in Loop: Header=BB1_318 Depth=1
	bltu x0, x25, .LBB1_328
.LBB1_323:                              //  %if.then829.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x10 ,  x27
	beq x0, x15, .LBB1_328
.LBB1_324:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sub x22 ,  x27 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -268 ( x8 )           //  4-byte Folded Reload
	bgeu x22, x11, .LBB1_326
.LBB1_325:                              //  %land.lhs.true837.us
                                        //    in Loop: Header=BB1_318 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x22, x15, .LBB1_328
.LBB1_326:                              //  %if.then845.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x10 ,  -264 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -268 ( x8 )           //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_409
.LBB1_327:                              //  %if.end851.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x22 ,  x10
	sw x10 ,  -264 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
.LBB1_328:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_318 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x22 ,  x0 ,  x10
	xori x14 ,  x22 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x23, .LBB1_315
.LBB1_329:                              //  %if.end860.us
                                        //    in Loop: Header=BB1_318 Depth=1
	beq x0, x14, .LBB1_315
.LBB1_330:                              //  %land.rhs790.us
                                        //    in Loop: Header=BB1_318 Depth=1
	lw x10 ,  -240 ( x8 )           //  4-byte Folded Reload
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x9
	call wmemchr
	addi x21 ,  x21 ,  1
	bltu x0, x10, .LBB1_318
.LBB1_331:                              //  %if.then865.loopexit
	addi x21 ,  x21 ,  -1
.LBB1_332:                              //  %if.then865
	add x23 ,  x0 ,  x0
	jal x0, .LBB1_380
.LBB1_333:                              //  %if.then1094
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_416
.LBB1_334:                              //  %if.end1114
	lw x10 ,  0 ( x20 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_416
.LBB1_335:                              //  %cleanup1123
	lh x15 ,  4 ( x20 )
	sw x10 ,  0 ( x20 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x20 )
	lhu x15 ,  6 ( x20 )
.LBB1_336:                              //  %if.end1126
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x22 ,  -260 ( x8 )           //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	add x14 ,  x14 ,  x10
	sw x9 ,  0 ( x14 )
	sh x15 ,  6 ( x20 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -264 ( x8 )           //  4-byte Folded Spill
.LBB1_337:                              //  %if.end1138
	addi x10 ,  x8 ,  -64
	addi x12 ,  x0 ,  8
	call memset
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x27 ,  x0 ,  x10
	xori x14 ,  x27 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x21, .LBB1_394
.LBB1_338:                              //  %if.end1138
	beq x0, x14, .LBB1_394
.LBB1_339:                              //  %land.rhs1147.lr.ph
	beq x0, x23, .LBB1_348
.LBB1_340:                              //  %land.rhs1147.us
	add x10 ,  x0 ,  x27
	call iswspace
	bltu x0, x10, .LBB1_395
.LBB1_341:                              //  %while.body1152.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x27
	addi x12 ,  x8 ,  -64
	call wcrtomb
	beq x0, x10, .LBB1_343
.LBB1_342:                              //  %while.body1152.us
                                        //    in Loop: Header=BB1_341 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_344
	jal x0, .LBB1_406
.LBB1_343:                              //  %lor.lhs.false1160.us
                                        //    in Loop: Header=BB1_341 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_345
.LBB1_344:                              //  %if.then1164.us
                                        //    in Loop: Header=BB1_341 Depth=1
	addi x21 ,  x21 ,  -1
.LBB1_345:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_341 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x27 ,  x0 ,  x10
	xori x15 ,  x27 ,  -1
	beq x0, x21, .LBB1_393
.LBB1_346:                              //  %if.end1200.us
                                        //    in Loop: Header=BB1_341 Depth=1
	beq x0, x15, .LBB1_393
.LBB1_347:                              //  %land.rhs1147.us
                                        //    in Loop: Header=BB1_341 Depth=1
	addi x24 ,  x24 ,  1
	add x10 ,  x0 ,  x27
	call iswspace
	beq x0, x10, .LBB1_341
	jal x0, .LBB1_395
.LBB1_348:                              //  %land.rhs1147
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x27
	call iswspace
	bltu x0, x10, .LBB1_395
.LBB1_349:                              //  %while.body1152
                                        //    in Loop: Header=BB1_348 Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x27
	addi x12 ,  x8 ,  -64
	call wcrtomb
	beq x0, x10, .LBB1_351
.LBB1_350:                              //  %while.body1152
                                        //    in Loop: Header=BB1_348 Depth=1
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_352
	jal x0, .LBB1_406
.LBB1_351:                              //  %lor.lhs.false1160
                                        //    in Loop: Header=BB1_348 Depth=1
	lw x15 ,  -64 ( x8 )
	xori x15 ,  x15 ,  -4
	beq x0, x15, .LBB1_353
.LBB1_352:                              //  %if.then1164
                                        //    in Loop: Header=BB1_348 Depth=1
	addi x21 ,  x21 ,  -1
.LBB1_353:                              //  %if.then1169
                                        //    in Loop: Header=BB1_348 Depth=1
	add x22 ,  x10 ,  x22
	beq x0, x9, .LBB1_359
.LBB1_354:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_348 Depth=1
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x0 ,  x25
	sub x25 ,  x22 ,  x15
	call __locale_mb_cur_max
	lw x11 ,  -264 ( x8 )           //  4-byte Folded Reload
	bgeu x25, x11, .LBB1_356
.LBB1_355:                              //  %land.lhs.true1177
                                        //    in Loop: Header=BB1_348 Depth=1
	sub x15 ,  x11 ,  x10
	bltu x25, x15, .LBB1_358
.LBB1_356:                              //  %if.then1185
                                        //    in Loop: Header=BB1_348 Depth=1
	lw x10 ,  -260 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x11 ,  1&31
	sw x11 ,  -264 ( x8 )           //  4-byte Folded Spill
	call realloc
	beq x0, x10, .LBB1_409
.LBB1_357:                              //  %if.end1191
                                        //    in Loop: Header=BB1_348 Depth=1
	add x22 ,  x25 ,  x10
	sw x10 ,  0 ( x9 )
	sw x10 ,  -260 ( x8 )           //  4-byte Folded Spill
.LBB1_358:                              //  %if.end1200
                                        //    in Loop: Header=BB1_348 Depth=1
	add x25 ,  x0 ,  x27
.LBB1_359:                              //  %if.end1200
                                        //    in Loop: Header=BB1_348 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call _fgetwc_r
	add x27 ,  x0 ,  x10
	addi x24 ,  x24 ,  1
	xori x14 ,  x27 ,  -1
	sltu x15 ,  x0 ,  x14
	beq x0, x21, .LBB1_394
.LBB1_360:                              //  %if.end1200
                                        //    in Loop: Header=BB1_348 Depth=1
	bltu x0, x14, .LBB1_348
	jal x0, .LBB1_394
.LBB1_361:                              //  %if.end1043.loopexit
	addi x27 ,  x27 ,  4
	addi x24 ,  x24 ,  1
	sw x27 ,  -236 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -236 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	bltu x0, x9, .LBB1_260
	jal x0, .LBB1_263
.LBB1_362:                              //  %if.then1307.split.loop.exit5344
	sw x15 ,  -232 ( x8 )           //  4-byte Folded Spill
.LBB1_363:                              //  %if.then1307
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_364:                              //  %for.body.for.end.loopexit_crit_edge
	add x23 ,  x0 ,  x27
	addi x27 ,  x8 ,  -224
	andi x15 ,  x9 ,  256
	bltu x0, x15, .LBB1_410
.LBB1_365:                              //  %if.end1322
	lw x11 ,  -4 ( x22 )
	ori x15 ,  x11 ,  32
	xori x15 ,  x15 ,  120
	bltu x0, x15, .LBB1_367
.LBB1_366:                              //  %if.then1329
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	addi x22 ,  x22 ,  -4
	call _ungetwc_r
.LBB1_367:                              //  %if.end1332
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_378
.LBB1_368:                              //  %if.then1336
	lw x13 ,  -232 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	sw x0 ,  0 ( x22 )
	lw x15 ,  -244 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x9 ,  32
	bltu x0, x15, .LBB1_373
.LBB1_369:                              //  %if.else1343
	andi x15 ,  x9 ,  8
	bltu x0, x15, .LBB1_375
.LBB1_370:                              //  %if.else1349
	andi x15 ,  x9 ,  4
	bltu x0, x15, .LBB1_376
.LBB1_371:                              //  %if.else1355
	andi x15 ,  x9 ,  1
	bltu x0, x15, .LBB1_373
.LBB1_372:                              //  %if.else1360
	andi x15 ,  x9 ,  2
	bltu x0, x15, .LBB1_389
.LBB1_373:                              //  %if.else1374
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB1_374:                              //  %if.end1380
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_377
.LBB1_375:                              //  %if.then1346
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB1_377
.LBB1_376:                              //  %if.then1352
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB1_377:                              //  %if.end1380
	addi x25 ,  x25 ,  1
.LBB1_378:                              //  %if.end1382
	sub x15 ,  x22 ,  x27
	sw x22 ,  -236 ( x8 )           //  4-byte Folded Spill
	srai x21 ,  x15 ,  2&31
	jal x0, .LBB1_388
.LBB1_379:
	add x23 ,  x0 ,  x0
	add x21 ,  x0 ,  x23
.LBB1_380:                              //  %if.then865
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_381:                              //  %if.end867
	beq x0, x25, .LBB1_383
.LBB1_382:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB1_388
.LBB1_383:                              //  %if.then870
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sb x0 ,  0 ( x27 )
	beq x0, x15, .LBB1_387
.LBB1_384:                              //  %if.then870
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x27 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -268 ( x8 )           //  4-byte Folded Reload
	bgeu x11, x15, .LBB1_387
.LBB1_385:                              //  %if.then880
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_387
.LBB1_386:                              //  %if.then885
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_387:                              //  %cleanup706
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	addi x25 ,  x25 ,  1
.LBB1_388:                              //  %sw.epilog1389
	lw x27 ,  0 ( x26 )
	add x24 ,  x24 ,  x21
	addi x21 ,  x0 ,  -1
	beq x0, x27, .LBB1_448
.LBB1_449:                              //  %sw.epilog1389
	jal x0, .LBB1_7
.LBB1_448:                              //  %sw.epilog1389
	jal x0, .LBB1_414
.LBB1_389:                              //  %if.then1363
	lw x14 ,  -244 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _wcstoul_r&4095
	lui x15 ,  (_wcstoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB1_403
.LBB1_390:                              //  %if.else1369
	lw x13 ,  -232 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	call _wcstoll_r
	jal x0, .LBB1_404
.LBB1_391:                              //  %if.then178
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	srai x14 ,  x24 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x24 ,  0 ( x15 )
	lw x27 ,  0 ( x26 )
	beq x0, x27, .LBB1_450
.LBB1_451:                              //  %if.then178
	jal x0, .LBB1_7
.LBB1_450:                              //  %if.then178
	jal x0, .LBB1_414
.LBB1_392:                              //  %if.end682.loopexit22
	addi x15 ,  x21 ,  4
	sw x15 ,  -236 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_286
.LBB1_393:                              //  %while.end1202.loopexit
	sltu x15 ,  x0 ,  x15
	addi x24 ,  x24 ,  1
.LBB1_394:                              //  %while.end1202
	beq x0, x15, .LBB1_396
.LBB1_395:                              //  %if.then1205
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call _ungetwc_r
.LBB1_396:                              //  %if.end1207
	addi x21 ,  x0 ,  -1
	bltu x0, x23, .LBB1_402
.LBB1_397:                              //  %if.then1210
	sb x0 ,  0 ( x22 )
	beq x0, x9, .LBB1_401
.LBB1_398:                              //  %if.then1210
	lw x15 ,  -260 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x22 ,  x15
	addi x11 ,  x15 ,  1
	lw x15 ,  -264 ( x8 )           //  4-byte Folded Reload
	bgeu x11, x15, .LBB1_401
.LBB1_399:                              //  %if.then1220
	lw x10 ,  0 ( x9 )
	call realloc
	beq x0, x10, .LBB1_401
.LBB1_400:                              //  %if.then1225
	sw x10 ,  0 ( x9 )
.LBB1_401:                              //  %if.end1227
	addi x25 ,  x25 ,  1
.LBB1_402:                              //  %if.end1236
	add x23 ,  x0 ,  x0
	lw x27 ,  0 ( x26 )
	beq x0, x27, .LBB1_452
.LBB1_453:                              //  %if.end1236
	jal x0, .LBB1_7
.LBB1_452:                              //  %if.end1236
	jal x0, .LBB1_414
.LBB1_403:                              //  %if.then1366
	lw x13 ,  -232 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	call _wcstoull_r
.LBB1_404:                              //  %if.end1372
	lw x15 ,  -56 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -56 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB1_374
.LBB1_405:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
.LBB1_406:                              //  %input_failure.loopexit30
	addi x21 ,  x0 ,  -1
.LBB1_407:                              //  %input_failure
	beq x0, x25, .LBB1_413
.LBB1_408:                              //  %land.lhs.true1391
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_414
.LBB1_409:                              //  %land.lhs.true1391
	addi x25 ,  x0 ,  -1
	bltu x0, x20, .LBB1_415
	jal x0, .LBB1_421
.LBB1_425:
	lw x25 ,  -256 ( x8 )           //  4-byte Folded Reload
	bltu x0, x20, .LBB1_415
	jal x0, .LBB1_421
.LBB1_410:                              //  %if.then1314
	beq x0, x21, .LBB1_414
.LBB1_411:                              //  %if.then1318
	lw x11 ,  -4 ( x22 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	bltu x0, x20, .LBB1_415
	jal x0, .LBB1_421
.LBB1_412:                              //  %if.then42
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetwc_r
	bltu x0, x25, .LBB1_408
.LBB1_413:
	add x25 ,  x0 ,  x21
.LBB1_414:                              //  %all_done
	beq x0, x20, .LBB1_421
.LBB1_415:                              //  %if.then1414
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB1_419
.LBB1_416:                              //  %for.cond1418.preheader
	lhu x15 ,  6 ( x20 )
	addi x25 ,  x0 ,  -1
	beq x0, x15, .LBB1_419
.LBB1_417:                              //  %for.body1423.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB1_418:                              //  %for.body1423
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
	bltu x18, x15, .LBB1_418
.LBB1_419:                              //  %if.end1431
	lw x10 ,  0 ( x20 )
	beq x0, x10, .LBB1_421
.LBB1_420:                              //  %if.then1434
	call free
.LBB1_421:                              //  %cleanup1440
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
.LBB1_427:
	add x25 ,  x0 ,  x21
	bltu x0, x20, .LBB1_415
	jal x0, .LBB1_421
.Lfunc_end1:
	.size	__svfiwscanf_r, .Lfunc_end1-__svfiwscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_40
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_32
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_28
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_43
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_30
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_45
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_38
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_46
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_44
	.long	.LBB1_48
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_17
	.long	.LBB1_49
	.long	.LBB1_30
	.long	.LBB1_414
	.long	.LBB1_20
	.long	.LBB1_34
	.long	.LBB1_50
	.long	.LBB1_56
	.long	.LBB1_57
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_58
	.long	.LBB1_16
	.long	.LBB1_59
	.long	.LBB1_414
	.long	.LBB1_414
	.long	.LBB1_38
	.long	.LBB1_414
	.long	.LBB1_16
JTI1_1:
	.long	.LBB1_74
	.long	.LBB1_85
	.long	.LBB1_95
	.long	.LBB1_105
JTI1_2:
	.long	.LBB1_364
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_115
	.long	.LBB1_363
	.long	.LBB1_115
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_122
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_109
	.long	.LBB1_117
	.long	.LBB1_117
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_119
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_113
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_363
	.long	.LBB1_119
                                        //  -- End function
	.text
	.globl	__svfiwscanf            //  -- Begin function __svfiwscanf
	.type	__svfiwscanf,@function
__svfiwscanf:                           //  @__svfiwscanf
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
	jal x0, __svfiwscanf_r
.Lfunc_end2:
	.size	__svfiwscanf, .Lfunc_end2-__svfiwscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiwscanf_r            //  -- Begin function _vfiwscanf_r
	.type	_vfiwscanf_r,@function
_vfiwscanf_r:                           //  @_vfiwscanf_r
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
	jal x0, __svfiwscanf_r
.Lfunc_end3:
	.size	_vfiwscanf_r, .Lfunc_end3-_vfiwscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfiwscanf_r.basefix,@object //  @__svfiwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfiwscanf_r.basefix:
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
	.size	__svfiwscanf_r.basefix, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
