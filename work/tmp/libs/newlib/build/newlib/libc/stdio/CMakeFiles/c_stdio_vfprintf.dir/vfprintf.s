	.text
	.file	"vfprintf.c"
	.globl	vfprintf                //  -- Begin function vfprintf
	.type	vfprintf,@function
vfprintf:                               //  @vfprintf
	.cfi_sections .debug_frame
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
	jal x0, _vfprintf_r
.Lfunc_end0:
	.size	vfprintf, .Lfunc_end0-vfprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfprintf_r             //  -- Begin function _vfprintf_r
	.type	_vfprintf_r,@function
_vfprintf_r:                            //  @_vfprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -352
	.cfi_adjust_cfa_offset 352
	sw x18 ,  340 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x13
	sw x19 ,  336 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x25 ,  312 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x8 ,  300 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x1 ,  348 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  344 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  332 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  328 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  324 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  320 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  316 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  308 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  304 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x25 ,  x0 ,  x10
	sw x18 ,  284 ( x2 )
	call _localeconv_r
	lw x9 ,  0 ( x10 )
	add x10 ,  x0 ,  x9
	call strlen
	add x20 ,  x0 ,  x10
	beq x0, x25, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x25 )
	bltu x0, x15, .LBB1_2
.LBB1_523:                              //  %land.lhs.true
	jal x0, .LBB1_517
.LBB1_2:                                //  %if.end
	lhu x15 ,  12 ( x19 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_4
.LBB1_3:                                //  %if.then14
	lw x13 ,  100 ( x19 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	sh x15 ,  12 ( x19 )
	or x12 ,  x12 ,  x30
	and x13 ,  x12 ,  x13
	sw x13 ,  100 ( x19 )
.LBB1_4:                                //  %do.end22
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB1_9
.LBB1_5:                                //  %lor.lhs.false
	lw x14 ,  16 ( x19 )
	beq x0, x14, .LBB1_9
.LBB1_6:                                //  %if.end45
	andi x15 ,  x15 ,  26
	xori x15 ,  x15 ,  10
	bltu x0, x15, .LBB1_11
.LBB1_7:                                //  %land.lhs.true51
	lh x15 ,  14 ( x19 )
	blt x15, x0, .LBB1_11
.LBB1_8:                                //  %if.then55
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x18
	call __sbprintf
	add x24 ,  x0 ,  x10
	jal x0, .LBB1_522
.LBB1_9:                                //  %land.lhs.true29
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __swsetup_r
	beq x0, x10, .LBB1_10
.LBB1_524:                              //  %land.lhs.true29
	jal x0, .LBB1_521
.LBB1_10:                               //  %land.lhs.true29.if.end45_crit_edge
	lhu x15 ,  12 ( x19 )
	andi x15 ,  x15 ,  26
	xori x15 ,  x15 ,  10
	beq x0, x15, .LBB1_7
.LBB1_11:                               //  %if.end69
	addi x15 ,  x2 ,  192
	sw x20 ,  24 ( x2 )             //  4-byte Folded Spill
	add x20 ,  x0 ,  x0
	addi x27 ,  x2 ,  256
	addi x23 ,  x0 ,  10
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x0 ,  260 ( x2 )
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  80 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  256 ( x2 )
	addi x15 ,  x2 ,  92
	add x24 ,  x0 ,  x20
	sw x0 ,  8 ( x27 )
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  100
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  269
	addi x14 ,  x15 ,  2
	addi x15 ,  x15 ,  3
	sw x14 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
.LBB1_12:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_15 Depth 2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_26 Depth 5
                                        //              Child Loop BB1_30 Depth 6
                                        //            Child Loop BB1_25 Depth 5
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_220 Depth 3
                                        //        Child Loop BB1_227 Depth 3
                                        //        Child Loop BB1_215 Depth 3
                                        //        Child Loop BB1_454 Depth 3
                                        //        Child Loop BB1_169 Depth 3
                                        //        Child Loop BB1_394 Depth 3
                                        //        Child Loop BB1_176 Depth 3
                                        //        Child Loop BB1_482 Depth 3
                                        //        Child Loop BB1_487 Depth 3
                                        //        Child Loop BB1_502 Depth 3
                                        //        Child Loop BB1_254 Depth 3
                                        //        Child Loop BB1_268 Depth 3
                                        //        Child Loop BB1_282 Depth 3
                                        //        Child Loop BB1_329 Depth 3
                                        //        Child Loop BB1_369 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //          Child Loop BB1_416 Depth 4
                                        //        Child Loop BB1_443 Depth 3
                                        //        Child Loop BB1_426 Depth 3
                                        //        Child Loop BB1_337 Depth 3
                                        //        Child Loop BB1_349 Depth 3
                                        //      Child Loop BB1_13 Depth 2
	addi x21 ,  x2 ,  192
	add x9 ,  x0 ,  x8
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB1_15
.LBB1_13:                               //  %while.cond
                                        //    Parent Loop BB1_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB1_15
.LBB1_14:                               //  %while.body
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x9 ,  x9 ,  1
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB1_13
.LBB1_15:                               //  %while.end
                                        //    Parent Loop BB1_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_26 Depth 5
                                        //              Child Loop BB1_30 Depth 6
                                        //            Child Loop BB1_25 Depth 5
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_220 Depth 3
                                        //        Child Loop BB1_227 Depth 3
                                        //        Child Loop BB1_215 Depth 3
                                        //        Child Loop BB1_454 Depth 3
                                        //        Child Loop BB1_169 Depth 3
                                        //        Child Loop BB1_394 Depth 3
                                        //        Child Loop BB1_176 Depth 3
                                        //        Child Loop BB1_482 Depth 3
                                        //        Child Loop BB1_487 Depth 3
                                        //        Child Loop BB1_502 Depth 3
                                        //        Child Loop BB1_254 Depth 3
                                        //        Child Loop BB1_268 Depth 3
                                        //        Child Loop BB1_282 Depth 3
                                        //        Child Loop BB1_329 Depth 3
                                        //        Child Loop BB1_369 Depth 3
                                        //        Child Loop BB1_397 Depth 3
                                        //          Child Loop BB1_416 Depth 4
                                        //        Child Loop BB1_443 Depth 3
                                        //        Child Loop BB1_426 Depth 3
                                        //        Child Loop BB1_337 Depth 3
                                        //        Child Loop BB1_349 Depth 3
	sub x18 ,  x9 ,  x8
	beq x0, x18, .LBB1_20
.LBB1_16:                               //  %if.then78
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	sw x18 ,  4 ( x21 )
	sw x8 ,  0 ( x21 )
	add x15 ,  x18 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_18
.LBB1_17:                               //  %if.then83
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_19
	jal x0, .LBB1_273
.LBB1_18:                               //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_19:                               //  %if.end89
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x15 ,  0 ( x9 )
	add x24 ,  x24 ,  x18
.LBB1_20:                               //  %if.end91
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x15, .LBB1_21
.LBB1_525:                              //  %if.end91
	jal x0, .LBB1_518
.LBB1_21:                               //  %if.end96
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x0 ,  -1
	addi x15 ,  x9 ,  1
	add x22 ,  x0 ,  x20
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	sb x0 ,  283 ( x2 )
	sw x24 ,  60 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB1_22:                               //  %rflag
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_23 Depth 4
                                        //            Child Loop BB1_26 Depth 5
                                        //              Child Loop BB1_30 Depth 6
                                        //            Child Loop BB1_25 Depth 5
	lb x18 ,  0 ( x15 )
	addi x26 ,  x15 ,  1
.LBB1_23:                               //  %reswitch
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_26 Depth 5
                                        //              Child Loop BB1_30 Depth 6
                                        //            Child Loop BB1_25 Depth 5
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB1_26
.LBB1_24:                               //  %do.body159.preheader
                                        //    in Loop: Header=BB1_23 Depth=4
	add x22 ,  x0 ,  x20
.LBB1_25:                               //  %do.body159
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __mulsi3
	add x15 ,  x10 ,  x18
	lb x18 ,  0 ( x26 )
	addi x26 ,  x26 ,  1
	addi x22 ,  x15 ,  -48
	addi x15 ,  x18 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB1_25
	jal x0, .LBB1_23
.LBB1_26:                               //  %reswitch
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_30 Depth 6
	addi x15 ,  x18 ,  -32
	addi x14 ,  x0 ,  90
	bltu x14, x15, .LBB1_125
.LBB1_27:                               //  %reswitch
                                        //    in Loop: Header=BB1_26 Depth=5
	lui x30 ,  JTI1_0&4095
	lui x14 ,  (JTI1_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_28:                               //  %sw.bb129
                                        //    in Loop: Header=BB1_26 Depth=5
	lb x18 ,  0 ( x26 )
	addi x15 ,  x26 ,  1
	xori x14 ,  x18 ,  42
	beq x0, x14, .LBB1_59
.LBB1_29:                               //  %while.cond141.preheader
                                        //    in Loop: Header=BB1_26 Depth=5
	addi x9 ,  x18 ,  -48
	add x10 ,  x0 ,  x0
	add x26 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x9, .LBB1_32
.LBB1_30:                               //  %while.body145
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //          Parent Loop BB1_23 Depth=4
                                        //            Parent Loop BB1_26 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	addi x11 ,  x0 ,  10
	call __mulsi3
	lb x18 ,  0 ( x26 )
	add x10 ,  x10 ,  x9
	addi x26 ,  x26 ,  1
	addi x9 ,  x18 ,  -48
	sltiu x15 ,  x9 ,  10
	bltu x0, x15, .LBB1_30
.LBB1_31:                               //  %while.end150
                                        //    in Loop: Header=BB1_26 Depth=5
	addi x15 ,  x0 ,  -1
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB1_23
.LBB1_32:                               //  %while.end150.thread
                                        //    in Loop: Header=BB1_26 Depth=5
	sw x10 ,  76 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_24
	jal x0, .LBB1_26
.LBB1_33:                               //  %sw.bb193
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  32
	jal x0, .LBB1_50
.LBB1_34:                               //  %sw.bb115
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x14 ,  283 ( x2 )
	add x15 ,  x0 ,  x26
	bltu x0, x14, .LBB1_22
.LBB1_35:                               //  %if.then117
                                        //    in Loop: Header=BB1_22 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB1_46
.LBB1_36:                               //  %sw.bb119
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  1
	jal x0, .LBB1_50
.LBB1_37:                               //  %sw.bb
                                        //    in Loop: Header=BB1_22 Depth=3
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x10 ,  4 ( x10 )
	sw x10 ,  28 ( x2 )             //  4-byte Folded Spill
	call strlen
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	beq x0, x9, .LBB1_22
.LBB1_38:                               //  %sw.bb
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x26
	beq x0, x14, .LBB1_22
.LBB1_39:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB1_41
.LBB1_40:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	ori x13 ,  x13 ,  1024
.LBB1_41:                               //  %land.lhs.true109
                                        //    in Loop: Header=BB1_22 Depth=3
	sw x13 ,  84 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_22
.LBB1_42:                               //  %sw.bb121
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x22 ,  0 ( x15 )
	add x15 ,  x0 ,  x26
	bge x22, x0, .LBB1_22
.LBB1_43:                               //  %if.end125
                                        //    in Loop: Header=BB1_22 Depth=3
	sub x22 ,  x0 ,  x22
.LBB1_44:                               //  %sw.bb126.loopexit
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  4
	jal x0, .LBB1_50
.LBB1_45:                               //  %sw.bb128
                                        //    in Loop: Header=BB1_22 Depth=3
	addi x15 ,  x0 ,  43
.LBB1_46:                               //  %rflag
                                        //    in Loop: Header=BB1_22 Depth=3
	sb x15 ,  283 ( x2 )
.LBB1_47:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_22 Depth=3
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_22
.LBB1_48:                               //  %sw.bb156
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  128
	jal x0, .LBB1_50
.LBB1_49:                               //  %sw.bb170
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  8
.LBB1_50:                               //  %rflag
                                        //    in Loop: Header=BB1_22 Depth=3
	sw x15 ,  84 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_22
.LBB1_51:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x15 ,  0 ( x26 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB1_56
.LBB1_52:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	addi x14 ,  x0 ,  64
	jal x0, .LBB1_55
.LBB1_53:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_22 Depth=3
	lbu x15 ,  0 ( x26 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB1_57
.LBB1_54:                               //  %sw.bb181
                                        //    in Loop: Header=BB1_22 Depth=3
	addi x14 ,  x0 ,  16
.LBB1_55:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	add x15 ,  x0 ,  x26
	jal x0, .LBB1_58
.LBB1_56:                               //    in Loop: Header=BB1_22 Depth=3
	addi x15 ,  x26 ,  1
	addi x14 ,  x0 ,  512
	jal x0, .LBB1_58
.LBB1_57:                               //    in Loop: Header=BB1_22 Depth=3
	addi x15 ,  x26 ,  1
	addi x14 ,  x0 ,  32
.LBB1_58:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	or x13 ,  x13 ,  x14
	sw x13 ,  84 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_22
.LBB1_59:                               //  %if.then134
                                        //    in Loop: Header=BB1_22 Depth=3
	lw x14 ,  284 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  284 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	sw x13 ,  76 ( x2 )             //  4-byte Folded Spill
	blt x14, x13, .LBB1_22
.LBB1_60:                               //  %if.then134
                                        //    in Loop: Header=BB1_22 Depth=3
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_22
.LBB1_61:                               //  %sw.bb456
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x14 ,  32
	bltu x0, x15, .LBB1_66
.LBB1_62:                               //  %if.else462
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x14 ,  16
	bltu x0, x15, .LBB1_65
.LBB1_63:                               //  %if.else467
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x14 ,  64
	bltu x0, x15, .LBB1_68
.LBB1_64:                               //  %if.else473
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x14 ,  512
	bltu x0, x15, .LBB1_69
.LBB1_65:                               //  %if.then465
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	jal x0, .LBB1_67
.LBB1_66:                               //  %if.then459
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	srai x14 ,  x24 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
.LBB1_67:                               //  %for.cond
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x24 ,  0 ( x15 )
	add x8 ,  x0 ,  x26
	add x9 ,  x0 ,  x8
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB1_13
	jal x0, .LBB1_15
.LBB1_68:                               //  %if.then470
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	add x8 ,  x0 ,  x26
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x8
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB1_13
	jal x0, .LBB1_15
.LBB1_69:                               //  %if.then476
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	add x8 ,  x0 ,  x26
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x8
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB1_13
	jal x0, .LBB1_15
.LBB1_70:                               //  %sw.bb243
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB1_72
.LBB1_71:                               //  %if.else250
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x9 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x27 ,  4 ( x15 )
	jal x0, .LBB1_73
.LBB1_72:                               //  %if.then246
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x10 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  12
	lw x11 ,  4 ( x15 )
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  16
	lw x12 ,  8 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x13 ,  12 ( x15 )
	call __trunctfdf2
	add x9 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
.LBB1_73:                               //  %if.end253
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x20 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x20
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x27
	call __nedf2
	sw x27 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	bltu x0, x10, .LBB1_79
.LBB1_74:                               //  %if.then256
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x20
	call __ltdf2
	bge x10, x0, .LBB1_76
.LBB1_75:                               //  %if.then260
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
.LBB1_76:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	lui x14 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x8 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	blt x18, x14, .LBB1_78
.LBB1_77:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	add x8 ,  x0 ,  x15
.LBB1_78:                               //  %if.end261
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x20
	addi x27 ,  x0 ,  3
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x9 ,  x0 ,  x20
	add x10 ,  x0 ,  x20
	andi x12 ,  x12 ,  -129
	add x15 ,  x0 ,  x25
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	bge x27, x25, .LBB1_240
	jal x0, .LBB1_241
.LBB1_79:                               //  %if.end268
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x27
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x9
	call __unorddf2
	bltu x0, x10, .LBB1_94
.LBB1_80:                               //  %if.end289
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x9 ,  x18 ,  32
	xori x19 ,  x9 ,  97
	bltu x0, x19, .LBB1_128
.LBB1_81:                               //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  97
	beq x18, x15, .LBB1_146
.LBB1_82:                               //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  88
	jal x0, .LBB1_147
.LBB1_83:                               //  %sw.bb197
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	add x20 ,  x0 ,  x0
	slti x27 ,  x0 ,  1
	add x9 ,  x0 ,  x20
	add x25 ,  x0 ,  x20
	add x10 ,  x0 ,  x20
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x0 ,  283 ( x2 )
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	sb x15 ,  92 ( x2 )
	jal x0, .LBB1_127
.LBB1_84:                               //  %sw.bb529
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x8 ,  0 ( x15 )
	sb x0 ,  283 ( x2 )
	beq x0, x8, .LBB1_131
.LBB1_85:                               //  %if.else540
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	blt x27, x0, .LBB1_150
.LBB1_86:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x27
	add x11 ,  x0 ,  x20
	call memchr
	beq x10, x20, .LBB1_88
.LBB1_87:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x27 ,  x10 ,  x8
.LBB1_88:                               //  %if.then543
                                        //    in Loop: Header=BB1_15 Depth=2
	add x25 ,  x0 ,  x20
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x9 ,  x0 ,  x20
	jal x0, .LBB1_152
.LBB1_89:                               //  %sw.bb203.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB1_100
.LBB1_90:                               //  %cond.false208
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB1_134
.LBB1_91:                               //  %cond.false213
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB1_155
.LBB1_92:                               //  %cond.false220
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	andi x15 ,  x12 ,  512
	beq x0, x15, .LBB1_135
.LBB1_93:                               //  %cond.true223
                                        //    in Loop: Header=BB1_15 Depth=2
	slli x15 ,  x19 ,  24&31
	srai x19 ,  x15 ,  24&31
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB1_101
	jal x0, .LBB1_136
.LBB1_94:                               //  %cond.true276
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x27, x0, .LBB1_96
.LBB1_95:                               //  %if.then281
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
.LBB1_96:                               //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lui x14 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	or x8 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	blt x18, x14, .LBB1_98
.LBB1_97:                               //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	add x8 ,  x0 ,  x15
.LBB1_98:                               //  %if.end282
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
	addi x27 ,  x0 ,  3
	andi x12 ,  x12 ,  -129
	add x9 ,  x0 ,  x20
	add x25 ,  x0 ,  x20
	jal x0, .LBB1_239
.LBB1_99:                               //  %sw.bb201
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x12 ,  x12 ,  16
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB1_90
.LBB1_100:                              //  %cond.true206
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	blt x20, x0, .LBB1_136
.LBB1_101:                              //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x25, .LBB1_200
	jal x0, .LBB1_201
.LBB1_102:                              //  %sw.bb485
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x0 ,  79
	ori x12 ,  x12 ,  16
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB1_108
.LBB1_103:                              //  %cond.true490
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	jal x0, .LBB1_192
.LBB1_104:                              //  %sw.bb557
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x0 ,  85
	ori x12 ,  x12 ,  16
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB1_114
.LBB1_105:                              //  %cond.true562
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  284 ( x2 )
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  4
	sw x15 ,  284 ( x2 )
	addi x15 ,  x14 ,  8
	lw x19 ,  0 ( x14 )
	sw x15 ,  284 ( x2 )
	slti x15 ,  x0 ,  1
	lw x20 ,  4 ( x14 )
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x25, .LBB1_200
	jal x0, .LBB1_201
.LBB1_106:                              //  %hex.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x15 ,  (.str.6>>12)&1048575
	lui x30 ,  .str.6&4095
	jal x0, .LBB1_119
.LBB1_107:                              //  %sw.bb487.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB1_103
.LBB1_108:                              //  %cond.false492
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB1_143
.LBB1_109:                              //  %cond.false497
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB1_190
.LBB1_110:                              //  %cond.false504
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_191
.LBB1_111:                              //  %cond.false504
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x19 ,  x19 ,  255
	jal x0, .LBB1_191
.LBB1_112:                              //  %sw.bb523
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	lui x30 ,  .str.4&4095
	addi x18 ,  x0 ,  120
	add x20 ,  x0 ,  x0
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	ori x12 ,  x12 ,  2
	lw x19 ,  0 ( x15 )
	addi x15 ,  x0 ,  48
	sb x18 ,  91 ( x2 )
	sb x15 ,  90 ( x2 )
	lui x15 ,  (.str.4>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x0 ,  2
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x25, .LBB1_200
	jal x0, .LBB1_201
.LBB1_113:                              //  %sw.bb559.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB1_105
.LBB1_114:                              //  %cond.false564
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB1_144
.LBB1_115:                              //  %cond.false569
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB1_193
.LBB1_116:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_194
.LBB1_117:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x19 ,  x19 ,  255
	jal x0, .LBB1_194
.LBB1_118:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
.LBB1_119:                              //  %hex
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB1_124
.LBB1_120:                              //  %cond.false600
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB1_145
.LBB1_121:                              //  %cond.false605
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB1_195
.LBB1_122:                              //  %cond.false612
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_196
.LBB1_123:                              //  %cond.false612
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x19 ,  x19 ,  255
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB1_197
	jal x0, .LBB1_199
.LBB1_124:                              //  %cond.true598
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB1_197
	jal x0, .LBB1_199
.LBB1_125:                              //  %sw.default741
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x18, .LBB1_126
.LBB1_526:                              //  %sw.default741
	jal x0, .LBB1_518
.LBB1_126:                              //  %if.end745
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24 ,  x0 ,  x20
	slti x27 ,  x0 ,  1
	sb x18 ,  92 ( x2 )
	sb x0 ,  283 ( x2 )
	add x25 ,  x0 ,  x24
	add x9 ,  x0 ,  x24
	add x10 ,  x0 ,  x24
	sw x24 ,  56 ( x2 )             //  4-byte Folded Spill
.LBB1_127:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x8 ,  x2 ,  92
	jal x0, .LBB1_153
.LBB1_128:                              //  %if.else318
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  -1
	beq x0, x15, .LBB1_156
.LBB1_129:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  103
	beq x9, x15, .LBB1_157
.LBB1_130:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x13
	add x14 ,  x0 ,  x0
	sw x14 ,  56 ( x2 )             //  4-byte Folded Spill
	bne x13, x14, .LBB1_158
	jal x0, .LBB1_159
.LBB1_131:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	bltu x27, x15, .LBB1_133
.LBB1_132:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	add x27 ,  x0 ,  x15
.LBB1_133:                              //  %if.then533
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	jal x0, .LBB1_151
.LBB1_134:                              //  %cond.true211
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
.LBB1_135:                              //  %cond.end233
                                        //    in Loop: Header=BB1_15 Depth=2
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB1_101
.LBB1_136:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  -1
	bge x15, x25, .LBB1_138
.LBB1_137:                              //    in Loop: Header=BB1_15 Depth=2
	andi x12 ,  x12 ,  -129
.LBB1_138:                              //  %if.then654.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
	sltu x15 ,  x0 ,  x19
	sub x19 ,  x0 ,  x19
	add x15 ,  x15 ,  x20
	sub x20 ,  x0 ,  x15
	jal x0, .LBB1_139
.LBB1_143:                              //  %cond.true495
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	jal x0, .LBB1_191
.LBB1_144:                              //  %cond.true567
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	jal x0, .LBB1_194
.LBB1_145:                              //  %cond.true603
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB1_197
	jal x0, .LBB1_199
.LBB1_146:                              //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  120
.LBB1_147:                              //  %if.then295
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  91 ( x2 )
	addi x15 ,  x0 ,  48
	ori x14 ,  x14 ,  2
	sb x15 ,  90 ( x2 )
	sw x14 ,  84 ( x2 )             //  4-byte Folded Spill
	slti x15 ,  x13 ,  100
	bltu x0, x15, .LBB1_154
.LBB1_148:                              //  %if.then304
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x11 ,  x13 ,  1
	add x10 ,  x0 ,  x25
	call _malloc_r
	add x8 ,  x0 ,  x10
	sw x10 ,  56 ( x2 )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_160
	jal x0, .LBB1_149
.LBB1_150:                              //  %if.else553
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x8
	call strlen
	add x27 ,  x0 ,  x10
.LBB1_151:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
	add x9 ,  x0 ,  x20
	add x25 ,  x0 ,  x20
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
.LBB1_152:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x20
.LBB1_153:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x25
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	bge x27, x25, .LBB1_240
	jal x0, .LBB1_241
.LBB1_154:                              //    in Loop: Header=BB1_15 Depth=2
	addi x8 ,  x2 ,  92
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_160
.LBB1_155:                              //  %cond.true216
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x19 ,  x15 ,  16&31
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB1_101
	jal x0, .LBB1_136
.LBB1_156:                              //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  6
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_159
.LBB1_157:                              //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x0 ,  1
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	sw x14 ,  56 ( x2 )             //  4-byte Folded Spill
	beq x13, x14, .LBB1_159
.LBB1_158:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x13
.LBB1_159:                              //  %if.else322
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB1_160:                              //  %if.end334
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x27, x20, .LBB1_164
.LBB1_161:                              //  %if.end334
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x27
	xori x15 ,  x9 ,  103
	beq x0, x19, .LBB1_165
.LBB1_162:                              //  %if.end43.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x19 ,  x0 ,  x15
	xori x24 ,  x9 ,  102
	bltu x0, x24, .LBB1_177
.LBB1_163:                              //    in Loop: Header=BB1_15 Depth=2
	addi x13 ,  x0 ,  3
	lw x9 ,  76 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_178
.LBB1_164:                              //    in Loop: Header=BB1_15 Depth=2
	xor x20 ,  x15 ,  x27
	xori x15 ,  x9 ,  103
	bltu x0, x19, .LBB1_162
.LBB1_165:                              //  %if.then2.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  276
	add x11 ,  x0 ,  x20
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	call frexp
	add x20 ,  x0 ,  x0
	lui x13 ,  (1069547520>>12)&1048575
	add x12 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x20
	add x27 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __nedf2
	bltu x0, x10, .LBB1_167
.LBB1_166:                              //  %if.then4.i
                                        //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x0 ,  1
	sw x15 ,  276 ( x2 )
.LBB1_167:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.4>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	or x9 ,  x14 ,  x30
	addi x14 ,  x0 ,  97
	beq x18, x14, .LBB1_169
.LBB1_168:                              //  %if.end5.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x15
.LBB1_169:                              //  %do.body.i2388
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1076887552>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x19
	add x25 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __fixdfsi
	add x24 ,  x0 ,  x10
	add x14 ,  x25 ,  x8
	add x15 ,  x24 ,  x9
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x14 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x20 ,  x25 ,  1
	beq x15, x25, .LBB1_171
.LBB1_170:                              //  %do.body.i2388
                                        //    in Loop: Header=BB1_169 Depth=3
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB1_169
.LBB1_171:                              //  %do.end.i2390
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x19
	sw x9 ,  52 ( x2 )              //  4-byte Folded Spill
	call __gtdf2
	add x9 ,  x20 ,  x8
	blt x0, x10, .LBB1_174
.LBB1_172:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x24 ,  1
	bltu x0, x15, .LBB1_173
.LBB1_527:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_392
.LBB1_173:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x19
	call __eqdf2
	beq x0, x10, .LBB1_174
.LBB1_528:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_392
.LBB1_174:                              //  %if.then19.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x9 ,  -1
	sw x15 ,  296 ( x2 )
	lbu x14 ,  -1 ( x9 )
	lbu x13 ,  15 ( x13 )
	bne x14, x13, .LBB1_185
.LBB1_175:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_176:                              //  %while.body.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x13 ,  x0 ,  48
	sb x13 ,  0 ( x15 )
	lw x13 ,  296 ( x2 )
	addi x15 ,  x13 ,  -1
	sw x15 ,  296 ( x2 )
	lbu x13 ,  -1 ( x13 )
	beq x13, x14, .LBB1_176
	jal x0, .LBB1_186
.LBB1_177:                              //  %if.else50.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x9 ,  101
	addi x13 ,  x0 ,  2
	sltiu x15 ,  x15 ,  1
	add x9 ,  x15 ,  x14
.LBB1_178:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  276
	addi x16 ,  x2 ,  288
	addi x17 ,  x2 ,  296
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x20
	add x14 ,  x0 ,  x9
	call _dtoa_r
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	bltu x0, x10, .LBB1_181
.LBB1_179:                              //  %if.end58.i
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x11 ,  1
	bltu x0, x15, .LBB1_181
.LBB1_180:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x9 ,  296 ( x2 )
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	ori x5 ,  x11 ,  256
	sub x15 ,  x9 ,  x8
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_529
.LBB1_530:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_459
.LBB1_529:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_466
.LBB1_181:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x0 ,  x9
	add x9 ,  x9 ,  x8
	sw x10 ,  72 ( x2 )             //  4-byte Folded Spill
	beq x0, x24, .LBB1_182
.LBB1_531:                              //  %if.then68.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_395
.LBB1_182:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x12
	call __eqdf2
	bltu x0, x10, .LBB1_183
.LBB1_532:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_448
.LBB1_183:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x15 ,  0 ( x8 )
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB1_184
.LBB1_533:                              //  %if.then74.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_448
.LBB1_184:                              //  %if.then80.i
                                        //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x0 ,  1
	sub x15 ,  x15 ,  x19
	sw x15 ,  276 ( x2 )
	jal x0, .LBB1_449
.LBB1_185:                              //    in Loop: Header=BB1_15 Depth=2
	add x13 ,  x0 ,  x14
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_186:                              //  %while.end.i
                                        //    in Loop: Header=BB1_15 Depth=2
	xori x14 ,  x13 ,  57
	bltu x0, x14, .LBB1_188
.LBB1_187:                              //  %cond.true.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	lbu x14 ,  10 ( x14 )
	jal x0, .LBB1_189
.LBB1_188:                              //  %cond.false.i
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x13 ,  1
.LBB1_189:                              //  %cond.false.i
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x14 ,  0 ( x15 )
	ori x5 ,  x11 ,  256
	sub x15 ,  x9 ,  x8
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	bltu x0, x10, .LBB1_466
.LBB1_534:                              //  %cond.false.i
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_459
.LBB1_466:                              //  %if.else353
                                        //    in Loop: Header=BB1_15 Depth=2
	xori x15 ,  x18 ,  70
	beq x0, x15, .LBB1_467
.LBB1_535:                              //  %if.else353
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_470
.LBB1_467:                              //  %if.else374.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  276 ( x2 )
	andi x15 ,  x11 ,  1
	or x15 ,  x25 ,  x15
	bge x0, x10, .LBB1_468
.LBB1_536:                              //  %if.else374.thread
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_476
.LBB1_468:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x0
	bne x15, x9, .LBB1_469
.LBB1_537:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_511
.LBB1_469:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x25
	addi x27 ,  x15 ,  1
	jal x0, .LBB1_512
.LBB1_190:                              //  %cond.true500
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
.LBB1_191:                              //  %cond.end517
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
.LBB1_192:                              //  %cond.end520
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x0
	andi x12 ,  x12 ,  -1025
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x25, .LBB1_200
	jal x0, .LBB1_201
.LBB1_193:                              //  %cond.true572
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
.LBB1_194:                              //  %cond.false576
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	slti x15 ,  x0 ,  1
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x25, .LBB1_200
	jal x0, .LBB1_201
.LBB1_195:                              //  %cond.true608
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
.LBB1_196:                              //  %cond.end625
                                        //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	beq x0, x15, .LBB1_199
.LBB1_197:                              //  %cond.end628
                                        //    in Loop: Header=BB1_15 Depth=2
	or x15 ,  x20 ,  x19
	beq x0, x15, .LBB1_199
.LBB1_198:                              //  %if.then635
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  48
	ori x12 ,  x12 ,  2
	sb x18 ,  91 ( x2 )
	sb x15 ,  90 ( x2 )
.LBB1_199:                              //  %if.end640
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x12 ,  x12 ,  -1025
	addi x15 ,  x0 ,  2
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x25, .LBB1_201
.LBB1_200:                              //    in Loop: Header=BB1_15 Depth=2
	andi x12 ,  x12 ,  -129
.LBB1_201:                              //  %number
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x25, .LBB1_206
.LBB1_202:                              //  %number
                                        //    in Loop: Header=BB1_15 Depth=2
	or x14 ,  x20 ,  x19
	bltu x0, x14, .LBB1_206
.LBB1_203:                              //  %if.else725
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x15, .LBB1_217
.LBB1_204:                              //  %if.else725
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  1
	beq x0, x15, .LBB1_218
.LBB1_205:                              //  %if.then732
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  48
	addi x8 ,  x2 ,  191
	sb x15 ,  191 ( x2 )
	jal x0, .LBB1_238
.LBB1_206:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x15, .LBB1_219
.LBB1_207:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB1_139
.LBB1_208:                              //  %if.then654
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB1_224
.LBB1_209:                              //  %do.body716
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x19 ,  15
	slli x14 ,  x20 ,  28&31
	srli x20 ,  x20 ,  4&31
	add x15 ,  x15 ,  x13
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x8 )
	srli x15 ,  x19 ,  4&31
	addi x8 ,  x8 ,  -1
	or x19 ,  x14 ,  x15
	or x15 ,  x20 ,  x19
	bltu x0, x15, .LBB1_209
.LBB1_210:                              //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_238
.LBB1_139:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x0
	bne x20, x15, .LBB1_141
.LBB1_140:                              //    in Loop: Header=BB1_15 Depth=2
	sltiu x15 ,  x19 ,  10
.LBB1_141:                              //  %sw.bb674
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x15, .LBB1_211
.LBB1_142:                              //  %if.then677
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x19 ,  48
	addi x8 ,  x2 ,  191
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  191 ( x2 )
	jal x0, .LBB1_238
.LBB1_211:                              //  %do.body682.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x12 ,  1024
	sw x12 ,  84 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_225
.LBB1_212:                              //  %do.body682.us.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24 ,  x0 ,  x0
	add x9 ,  x0 ,  x24
	jal x0, .LBB1_215
.LBB1_213:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_215 Depth=3
	sltu x15 ,  x0 ,  x20
.LBB1_214:                              //  %do.body682.us
                                        //    in Loop: Header=BB1_215 Depth=3
	sub x14 ,  x19 ,  x10
	add x19 ,  x0 ,  x25
	add x20 ,  x0 ,  x8
	ori x13 ,  x14 ,  48
	addi x14 ,  x2 ,  92
	add x12 ,  x9 ,  x14
	addi x9 ,  x9 ,  -1
	sb x13 ,  99 ( x12 )
	beq x0, x15, .LBB1_236
.LBB1_215:                              //  %do.body682.us
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x27 ,  x0 ,  10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x24
	add x12 ,  x0 ,  x27
	call __udivdi3
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x24
	add x25 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	call __muldi3
	bne x20, x24, .LBB1_213
.LBB1_216:                              //    in Loop: Header=BB1_215 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x19
	jal x0, .LBB1_214
.LBB1_217:                              //    in Loop: Header=BB1_15 Depth=2
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_238
.LBB1_218:                              //    in Loop: Header=BB1_15 Depth=2
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_238
.LBB1_219:                              //  %do.body657.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x8 ,  x2 ,  191
.LBB1_220:                              //  %do.body657
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x20 ,  29&31
	srli x15 ,  x19 ,  3&31
	srli x20 ,  x20 ,  3&31
	or x15 ,  x14 ,  x15
	andi x14 ,  x19 ,  7
	ori x14 ,  x14 ,  48
	or x13 ,  x20 ,  x15
	add x19 ,  x0 ,  x15
	sb x14 ,  0 ( x8 )
	addi x8 ,  x8 ,  -1
	bltu x0, x13, .LBB1_220
.LBB1_221:                              //  %do.end664
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x8 ,  1
	andi x13 ,  x12 ,  1
	beq x0, x13, .LBB1_376
.LBB1_222:                              //  %do.end664
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	xori x14 ,  x14 ,  48
	beq x0, x14, .LBB1_377
.LBB1_223:                              //  %if.then671
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x8 )
	jal x0, .LBB1_238
.LBB1_224:                              //  %sw.default
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	add x9 ,  x0 ,  x12
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	add x10 ,  x0 ,  x8
	call strlen
	add x20 ,  x0 ,  x0
	add x27 ,  x0 ,  x10
	add x12 ,  x0 ,  x9
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x20
	jal x0, .LBB1_239
.LBB1_225:                              //  %do.body682.preheader12
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_227
.LBB1_226:                              //  %if.end710
                                        //    in Loop: Header=BB1_227 Depth=3
	sltu x15 ,  x0 ,  x20
	add x19 ,  x0 ,  x27
	add x20 ,  x0 ,  x25
	beq x0, x15, .LBB1_237
.LBB1_227:                              //  %do.body682
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x9 ,  x0 ,  10
	add x24 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x24
	call __udivdi3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x24
	add x27 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	call __muldi3
	sub x15 ,  x19 ,  x10
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  48
	sb x15 ,  -1 ( x8 )
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x8 ,  -1
	addi x14 ,  x14 ,  1
	sw x14 ,  72 ( x2 )             //  4-byte Folded Spill
	lb x15 ,  0 ( x15 )
	bne x14, x15, .LBB1_234
.LBB1_228:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_227 Depth=3
	beq x20, x24, .LBB1_233
.LBB1_229:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_227 Depth=3
	add x14 ,  x0 ,  x24
	bltu x0, x14, .LBB1_234
.LBB1_230:                              //  %land.lhs.true693
                                        //    in Loop: Header=BB1_227 Depth=3
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  127
	beq x0, x15, .LBB1_234
.LBB1_231:                              //  %if.then700
                                        //    in Loop: Header=BB1_227 Depth=3
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  32 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x15 ,  x8
	add x10 ,  x0 ,  x8
	call strncpy
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	sw x13 ,  72 ( x2 )             //  4-byte Folded Spill
	lbu x15 ,  1 ( x14 )
	beq x15, x13, .LBB1_234
.LBB1_232:                              //  %if.then700
                                        //    in Loop: Header=BB1_227 Depth=3
	addi x14 ,  x14 ,  1
	sw x14 ,  68 ( x2 )             //  4-byte Folded Spill
	bne x20, x24, .LBB1_226
	jal x0, .LBB1_235
.LBB1_233:                              //    in Loop: Header=BB1_227 Depth=3
	sltiu x14 ,  x19 ,  10
	beq x0, x14, .LBB1_230
.LBB1_234:                              //  %if.end710
                                        //    in Loop: Header=BB1_227 Depth=3
	bne x20, x24, .LBB1_226
.LBB1_235:                              //    in Loop: Header=BB1_227 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x19
	add x19 ,  x0 ,  x27
	add x20 ,  x0 ,  x25
	bltu x0, x15, .LBB1_227
	jal x0, .LBB1_237
.LBB1_236:                              //  %if.end735.loopexit
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x9 ,  x14
	addi x8 ,  x15 ,  100
	sub x15 ,  x0 ,  x9
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
.LBB1_237:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  76 ( x2 )             //  4-byte Folded Reload
.LBB1_238:                              //  %if.end735
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	add x9 ,  x0 ,  x20
	sub x27 ,  x15 ,  x8
.LBB1_239:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x20
	add x15 ,  x0 ,  x25
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	blt x27, x25, .LBB1_241
.LBB1_240:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x27
.LBB1_241:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x14 ,  283 ( x2 )
	andi x9 ,  x12 ,  2
	add x24 ,  x0 ,  x25
	sltu x14 ,  x0 ,  x14
	add x13 ,  x14 ,  x15
	srli x15 ,  x9 ,  1&31
	beq x0, x15, .LBB1_243
.LBB1_242:                              //    in Loop: Header=BB1_15 Depth=2
	addi x13 ,  x13 ,  2
.LBB1_243:                              //  %sw.epilog748
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x0 ,  16
	andi x25 ,  x12 ,  132
	sw x12 ,  84 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x13 ,  76 ( x2 )             //  4-byte Folded Spill
	beq x0, x25, .LBB1_247
.LBB1_244:                              //  %if.end811
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x15 ,  283 ( x2 )
	beq x0, x15, .LBB1_258
.LBB1_245:                              //  %if.then813
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x2 ,  256
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x12 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x21 )
	addi x15 ,  x2 ,  283
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_257
.LBB1_246:                              //  %if.then823
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_258
	jal x0, .LBB1_251
.LBB1_247:                              //  %if.then767
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x19 ,  x22 ,  x13
	bge x0, x19, .LBB1_301
.LBB1_248:                              //  %while.cond772.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.blanks&4095
	lui x15 ,  (_vfprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x19 ,  17
	beq x0, x15, .LBB1_254
	jal x0, .LBB1_249
.LBB1_252:                              //    in Loop: Header=BB1_254 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_253:                              //  %if.end791
                                        //    in Loop: Header=BB1_254 Depth=3
	lui x30 ,  _vfprintf_r.blanks&4095
	lui x15 ,  (_vfprintf_r.blanks>>12)&1048575
	addi x19 ,  x19 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x19, .LBB1_249
.LBB1_254:                              //  %while.body775
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x12 ,  x2 ,  256
	sw x14 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_252
.LBB1_255:                              //  %if.then785
                                        //    in Loop: Header=BB1_254 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_253
	jal x0, .LBB1_256
.LBB1_257:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
.LBB1_258:                              //  %if.end830
                                        //    in Loop: Header=BB1_15 Depth=2
	beq x0, x9, .LBB1_261
.LBB1_259:                              //  %if.then833
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x2 ,  256
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  2
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x21 )
	addi x15 ,  x2 ,  90
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_274
.LBB1_260:                              //  %if.then844
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_261
.LBB1_538:                              //  %if.then844
	jal x0, .LBB1_251
.LBB1_261:                              //  %if.end851
                                        //    in Loop: Header=BB1_15 Depth=2
	xori x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_275
.LBB1_262:                              //  %if.then855
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  80 ( x2 )             //  4-byte Folded Reload
	sub x9 ,  x22 ,  x15
	bge x0, x9, .LBB1_276
.LBB1_263:                              //  %while.cond860.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB1_268
	jal x0, .LBB1_264
.LBB1_266:                              //    in Loop: Header=BB1_268 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_267:                              //  %if.end879
                                        //    in Loop: Header=BB1_268 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x9, .LBB1_264
.LBB1_268:                              //  %while.body863
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x12 ,  x2 ,  256
	sw x14 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_266
.LBB1_269:                              //  %if.then873
                                        //    in Loop: Header=BB1_268 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_267
	jal x0, .LBB1_270
.LBB1_264:                              //  %while.end881
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x2 ,  256
	sw x9 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_302
.LBB1_265:                              //  %if.then891
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_276
	jal x0, .LBB1_270
.LBB1_274:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	xori x15 ,  x25 ,  128
	beq x0, x15, .LBB1_262
.LBB1_275:                              //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  80 ( x2 )             //  4-byte Folded Reload
.LBB1_276:                              //  %if.end899
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x9 ,  x24 ,  x27
	bge x0, x9, .LBB1_285
.LBB1_277:                              //  %while.cond904.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB1_282
	jal x0, .LBB1_278
.LBB1_280:                              //    in Loop: Header=BB1_282 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_281:                              //  %if.end923
                                        //    in Loop: Header=BB1_282 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x9, .LBB1_278
.LBB1_282:                              //  %while.body907
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x12 ,  x2 ,  256
	sw x14 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_280
.LBB1_283:                              //  %if.then917
                                        //    in Loop: Header=BB1_282 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_281
	jal x0, .LBB1_270
.LBB1_278:                              //  %while.end925
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x2 ,  256
	sw x9 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_284
.LBB1_279:                              //  %if.then935
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_285
	jal x0, .LBB1_270
.LBB1_284:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_285:                              //  %if.end942
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x11 ,  256
	bltu x0, x15, .LBB1_288
.LBB1_286:                              //  %if.then946
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x9 ,  x2 ,  256
	sw x27 ,  4 ( x21 )
	sw x8 ,  0 ( x21 )
	lw x15 ,  8 ( x9 )
	add x15 ,  x27 ,  x15
	sw x15 ,  8 ( x9 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_294
.LBB1_287:                              //  %if.then956
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	call __sprint_r
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	add x27 ,  x0 ,  x9
	add x20 ,  x0 ,  x0
	bltu x0, x10, .LBB1_539
.LBB1_540:                              //  %if.then956
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_343
.LBB1_539:                              //  %if.then956
	jal x0, .LBB1_271
.LBB1_288:                              //  %if.else963
                                        //    in Loop: Header=BB1_15 Depth=2
	slti x15 ,  x18 ,  102
	bltu x0, x15, .LBB1_295
.LBB1_289:                              //  %if.then966
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	lw x11 ,  44 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x12
	call __nedf2
	addi x27 ,  x2 ,  256
	bltu x0, x10, .LBB1_309
.LBB1_290:                              //  %if.then970
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x27 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x21 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_315
.LBB1_291:                              //  %if.then980
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	add x20 ,  x0 ,  x0
	beq x0, x10, .LBB1_292
.LBB1_541:                              //  %if.then980
	jal x0, .LBB1_271
.LBB1_292:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB1_316
.LBB1_293:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  276 ( x2 )
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	blt x15, x14, .LBB1_542
.LBB1_543:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_343
.LBB1_542:                              //  %if.end986
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_316
.LBB1_294:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	add x27 ,  x0 ,  x9
	add x20 ,  x0 ,  x0
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB1_344
.LBB1_544:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_353
.LBB1_344:                              //  %if.then1620
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x22 ,  x15
	blt x0, x8, .LBB1_345
.LBB1_545:                              //  %if.then1620
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_353
.LBB1_345:                              //  %while.cond1625.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.blanks&4095
	lui x15 ,  (_vfprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	bltu x0, x15, .LBB1_351
.LBB1_346:                              //  %while.body1628.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x0 ,  16
	jal x0, .LBB1_349
.LBB1_347:                              //    in Loop: Header=BB1_349 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_348:                              //  %if.end1644
                                        //    in Loop: Header=BB1_349 Depth=3
	lui x30 ,  _vfprintf_r.blanks&4095
	lui x15 ,  (_vfprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB1_351
.LBB1_349:                              //  %while.body1628
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_347
.LBB1_350:                              //  %if.then1638
                                        //    in Loop: Header=BB1_349 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_348
	jal x0, .LBB1_271
.LBB1_295:                              //  %if.else1475
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x27 ,  x2 ,  256
	lw x13 ,  260 ( x2 )
	addi x18 ,  x21 ,  8
	sw x8 ,  0 ( x21 )
	lw x15 ,  8 ( x27 )
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x15 ,  1
	slti x15 ,  x0 ,  1
	add x12 ,  x0 ,  x15
	addi x15 ,  x13 ,  1
	slti x13 ,  x13 ,  7
	sw x14 ,  8 ( x27 )
	sw x12 ,  4 ( x21 )
	sw x15 ,  260 ( x2 )
	blt x12, x9, .LBB1_303
.LBB1_296:                              //  %if.else1475
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x12 ,  x11 ,  1
	bltu x0, x12, .LBB1_303
.LBB1_297:                              //  %if.else1581
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	bltu x0, x13, .LBB1_299
	jal x0, .LBB1_298
.LBB1_249:                              //  %while.end793
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x2 ,  256
	sw x19 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x19 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_308
.LBB1_250:                              //  %if.then803
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_244
	jal x0, .LBB1_251
.LBB1_351:                              //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x21 ,  4
	lw x14 ,  260 ( x2 )
	sw x8 ,  0 ( x15 )
	lw x15 ,  8 ( x27 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	add x15 ,  x8 ,  x15
	sw x13 ,  260 ( x2 )
	sw x15 ,  8 ( x27 )
	bltu x0, x14, .LBB1_354
.LBB1_352:                              //  %if.then1656
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	beq x0, x10, .LBB1_353
	jal x0, .LBB1_271
.LBB1_301:                              //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  283 ( x2 )
	bltu x0, x15, .LBB1_245
	jal x0, .LBB1_258
.LBB1_302:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	sub x9 ,  x24 ,  x27
	blt x0, x9, .LBB1_277
	jal x0, .LBB1_285
.LBB1_303:                              //  %if.then1481
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	bltu x0, x13, .LBB1_306
.LBB1_304:                              //  %if.then1491
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_305:                              //  %if.then1491.if.end1497_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  260 ( x2 )
	addi x18 ,  x2 ,  192
	lw x14 ,  8 ( x27 )
.LBB1_306:                              //  %if.end1497
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x13 ,  x14
	sw x13 ,  4 ( x18 )
	sw x14 ,  8 ( x27 )
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  0 ( x18 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_319
.LBB1_307:                              //  %if.then1508
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x18 ,  x2 ,  192
	beq x0, x10, .LBB1_320
	jal x0, .LBB1_271
.LBB1_308:                              //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	lbu x15 ,  283 ( x2 )
	bltu x0, x15, .LBB1_245
	jal x0, .LBB1_258
.LBB1_309:                              //  %if.else1053
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  276 ( x2 )
	bge x0, x14, .LBB1_339
.LBB1_310:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x14
	blt x14, x15, .LBB1_312
.LBB1_311:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
.LBB1_312:                              //  %if.else1156
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x0, x9, .LBB1_361
.LBB1_313:                              //  %if.then1168
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	sw x9 ,  4 ( x21 )
	sw x8 ,  0 ( x21 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_360
.LBB1_314:                              //  %if.then1178
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_361
	jal x0, .LBB1_270
.LBB1_315:                              //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	add x20 ,  x0 ,  x0
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	beq x0, x15, .LBB1_293
.LBB1_316:                              //  %if.then992
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	add x15 ,  x14 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_331
.LBB1_317:                              //  %if.then1002
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	bltu x0, x10, .LBB1_271
.LBB1_318:                              //  %if.end1008
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x15 ,  -1
	blt x0, x8, .LBB1_332
	jal x0, .LBB1_343
.LBB1_319:                              //    in Loop: Header=BB1_15 Depth=2
	addi x18 ,  x18 ,  8
.LBB1_320:                              //  %if.end1514
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x20
	lw x11 ,  44 ( x2 )             //  4-byte Folded Reload
	call __eqdf2
	beq x0, x10, .LBB1_324
.LBB1_321:                              //  %if.then1517
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  8 ( x27 )
	addi x14 ,  x9 ,  -1
	addi x15 ,  x8 ,  1
	sw x14 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	add x13 ,  x14 ,  x13
	sw x13 ,  8 ( x27 )
	jal x0, .LBB1_322
.LBB1_324:                              //  %if.else1536
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x8 ,  x9 ,  -1
	bge x0, x8, .LBB1_299
.LBB1_325:                              //  %while.cond1541.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_329
	jal x0, .LBB1_326
.LBB1_327:                              //    in Loop: Header=BB1_329 Depth=3
	addi x18 ,  x18 ,  8
.LBB1_328:                              //  %if.end1560
                                        //    in Loop: Header=BB1_329 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x18 )
	bge x14, x8, .LBB1_326
.LBB1_329:                              //  %while.body1544
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_327
.LBB1_330:                              //  %if.then1554
                                        //    in Loop: Header=BB1_329 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x18 ,  x2 ,  192
	beq x0, x10, .LBB1_328
	jal x0, .LBB1_271
.LBB1_331:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x15 ,  -1
	bge x0, x8, .LBB1_343
.LBB1_332:                              //  %while.cond1013.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_337
	jal x0, .LBB1_333
.LBB1_335:                              //    in Loop: Header=BB1_337 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_336:                              //  %if.end1032
                                        //    in Loop: Header=BB1_337 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB1_333
.LBB1_337:                              //  %while.body1016
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_335
.LBB1_338:                              //  %if.then1026
                                        //    in Loop: Header=BB1_337 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_336
	jal x0, .LBB1_271
.LBB1_339:                              //  %if.then1056
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x27 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x21 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x15, .LBB1_371
.LBB1_340:                              //  %if.then1066
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	bltu x0, x10, .LBB1_271
.LBB1_341:                              //  %if.then1066.if.end1072_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	jal x0, .LBB1_372
.LBB1_326:                              //  %while.end1562
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	sw x8 ,  4 ( x18 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x27 )
.LBB1_322:                              //  %if.then1517
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_323
.LBB1_298:                              //  %if.then1529
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x18 ,  x2 ,  192
	beq x0, x10, .LBB1_299
	jal x0, .LBB1_271
.LBB1_323:                              //    in Loop: Header=BB1_15 Depth=2
	addi x18 ,  x18 ,  8
.LBB1_299:                              //  %if.end1598
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x18 )
	add x15 ,  x14 ,  x15
	sw x15 ,  8 ( x27 )
	addi x15 ,  x2 ,  269
	sw x15 ,  0 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	beq x0, x15, .LBB1_300
.LBB1_342:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x18 ,  8
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB1_353
	jal x0, .LBB1_344
.LBB1_360:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_361:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x0
	blt x15, x9, .LBB1_363
.LBB1_362:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x0
.LBB1_363:                              //  %if.end1185
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  16
	sub x9 ,  x15 ,  x9
	bge x0, x9, .LBB1_379
.LBB1_364:                              //  %while.cond1196.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB1_369
	jal x0, .LBB1_365
.LBB1_367:                              //    in Loop: Header=BB1_369 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_368:                              //  %if.end1215
                                        //    in Loop: Header=BB1_369 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x9, .LBB1_365
.LBB1_369:                              //  %while.body1199
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_367
.LBB1_370:                              //  %if.then1209
                                        //    in Loop: Header=BB1_369 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_368
	jal x0, .LBB1_270
.LBB1_365:                              //  %while.end1217
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	sw x9 ,  4 ( x21 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_378
.LBB1_366:                              //  %if.then1227
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	lw x24 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_380
	jal x0, .LBB1_270
.LBB1_371:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
.LBB1_372:                              //  %if.end1072
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	or x15 ,  x13 ,  x15
	or x15 ,  x14 ,  x15
	beq x0, x15, .LBB1_343
.LBB1_373:                              //  %if.then1079
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x27 )
	sw x13 ,  4 ( x21 )
	add x15 ,  x13 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x15, .LBB1_421
.LBB1_374:                              //  %if.then1089
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_375:                              //  %if.then1089.if.end1095_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  276 ( x2 )
	addi x15 ,  x2 ,  192
	lw x18 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x14, x0, .LBB1_515
	jal x0, .LBB1_422
.LBB1_376:                              //    in Loop: Header=BB1_15 Depth=2
	add x8 ,  x0 ,  x15
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_238
.LBB1_377:                              //    in Loop: Header=BB1_15 Depth=2
	add x8 ,  x0 ,  x15
	jal x0, .LBB1_238
.LBB1_378:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_379:                              //  %cleanup.cont
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB1_380:                              //  %cleanup.cont
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x15 ,  x8
	andi x15 ,  x14 ,  1024
	bltu x0, x15, .LBB1_382
.LBB1_381:                              //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x18
	jal x0, .LBB1_387
.LBB1_382:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x0, x24, .LBB1_396
.LBB1_383:                              //  %while.cond1239.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x0, x20, .LBB1_396
.LBB1_384:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x15 ,  x8
	bltu x9, x18, .LBB1_386
.LBB1_385:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x18
.LBB1_386:                              //  %while.end1355
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x25 ,  80 ( x2 )             //  4-byte Folded Reload
.LBB1_387:                              //  %if.end1362
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	andi x14 ,  x14 ,  1
	lw x15 ,  276 ( x2 )
	bltu x0, x14, .LBB1_389
.LBB1_388:                              //  %if.end1362
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x15, x14, .LBB1_429
.LBB1_389:                              //  %if.then1368
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  8 ( x27 )
	sw x13 ,  4 ( x21 )
	add x14 ,  x13 ,  x14
	sw x14 ,  8 ( x27 )
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  0 ( x21 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB1_428
.LBB1_390:                              //  %if.then1378
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_391:                              //  %if.then1378.if.end1385_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	jal x0, .LBB1_429
.LBB1_392:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x20
	addi x15 ,  x15 ,  1
	bge x0, x15, .LBB1_465
.LBB1_393:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x25
	add x25 ,  x0 ,  x14
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_394:                              //  %while.body39.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x0 ,  48
	addi x15 ,  x15 ,  -1
	sb x14 ,  0 ( x9 )
	addi x9 ,  x9 ,  1
	blt x0, x15, .LBB1_394
	jal x0, .LBB1_458
.LBB1_395:                              //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_450
.LBB1_396:                              //  %while.body1244.lr.ph
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	slt x25 ,  x0 ,  x24
	add x15 ,  x15 ,  x8
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
.LBB1_397:                              //  %while.body1244
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_416 Depth 4
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	add x15 ,  x14 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	andi x27 ,  x25 ,  1
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	sw x14 ,  260 ( x2 )
	bltu x0, x27, .LBB1_399
.LBB1_398:                              //  %while.body1244
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1
	sw x14 ,  68 ( x2 )             //  4-byte Folded Spill
.LBB1_399:                              //  %while.body1244
                                        //    in Loop: Header=BB1_397 Depth=3
	slti x15 ,  x15 ,  7
	bltu x0, x15, .LBB1_401
.LBB1_400:                              //  %if.then1262
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	addi x12 ,  x2 ,  256
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_402
	jal x0, .LBB1_251
.LBB1_401:                              //    in Loop: Header=BB1_397 Depth=3
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
.LBB1_402:                              //  %if.end1268
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x13 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	lb x9 ,  0 ( x13 )
	sub x15 ,  x15 ,  x18
	blt x9, x15, .LBB1_404
.LBB1_403:                              //  %if.end1268
                                        //    in Loop: Header=BB1_397 Depth=3
	add x9 ,  x0 ,  x15
.LBB1_404:                              //  %if.end1268
                                        //    in Loop: Header=BB1_397 Depth=3
	bge x0, x9, .LBB1_408
.LBB1_405:                              //  %if.then1282
                                        //    in Loop: Header=BB1_397 Depth=3
	addi x12 ,  x2 ,  256
	sw x9 ,  4 ( x21 )
	sw x18 ,  0 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_407
.LBB1_406:                              //  %if.then1292
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_408
	jal x0, .LBB1_251
.LBB1_407:                              //    in Loop: Header=BB1_397 Depth=3
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
.LBB1_408:                              //  %if.end1299
                                        //    in Loop: Header=BB1_397 Depth=3
	add x15 ,  x0 ,  x0
	blt x15, x9, .LBB1_410
.LBB1_409:                              //  %if.end1299
                                        //    in Loop: Header=BB1_397 Depth=3
	add x9 ,  x0 ,  x0
.LBB1_410:                              //  %if.end1299
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	sub x9 ,  x15 ,  x9
	bge x0, x9, .LBB1_419
.LBB1_411:                              //  %while.cond1311.preheader
                                        //    in Loop: Header=BB1_397 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB1_416
	jal x0, .LBB1_412
.LBB1_414:                              //    in Loop: Header=BB1_416 Depth=4
	addi x21 ,  x21 ,  8
.LBB1_415:                              //  %if.end1330
                                        //    in Loop: Header=BB1_416 Depth=4
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x9, .LBB1_412
.LBB1_416:                              //  %while.body1314
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_397 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	addi x12 ,  x2 ,  256
	sw x14 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_414
.LBB1_417:                              //  %if.then1324
                                        //    in Loop: Header=BB1_416 Depth=4
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_415
	jal x0, .LBB1_251
.LBB1_412:                              //  %while.end1332
                                        //    in Loop: Header=BB1_397 Depth=3
	addi x12 ,  x2 ,  256
	sw x9 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_418
.LBB1_413:                              //  %if.then1342
                                        //    in Loop: Header=BB1_397 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x19
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_419
	jal x0, .LBB1_251
.LBB1_418:                              //    in Loop: Header=BB1_397 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_419:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_397 Depth=3
	xori x15 ,  x25 ,  -1
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	sub x24 ,  x24 ,  x27
	addi x27 ,  x2 ,  256
	andi x15 ,  x15 ,  1
	slt x25 ,  x0 ,  x24
	sub x20 ,  x20 ,  x15
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	add x18 ,  x15 ,  x18
	blt x0, x24, .LBB1_397
.LBB1_420:                              //  %cleanup.cont1352
                                        //    in Loop: Header=BB1_397 Depth=3
	blt x0, x20, .LBB1_397
	jal x0, .LBB1_384
.LBB1_421:                              //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x21 ,  8
	lw x18 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x14, x0, .LBB1_515
.LBB1_422:                              //  %while.cond1100.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x13 ,  (_vfprintf_r.zeroes>>12)&1048575
	sub x9 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x15 )
	addi x13 ,  x0 ,  -17
	blt x13, x14, .LBB1_446
.LBB1_423:                              //  %while.body1103.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x13 ,  x0 ,  16
	jal x0, .LBB1_426
.LBB1_424:                              //    in Loop: Header=BB1_426 Depth=3
	addi x15 ,  x15 ,  8
.LBB1_425:                              //  %if.end1119
                                        //    in Loop: Header=BB1_426 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x14 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x13 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	bge x13, x9, .LBB1_446
.LBB1_426:                              //  %while.body1103
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x27 )
	sw x13 ,  4 ( x15 )
	addi x14 ,  x14 ,  16
	sw x14 ,  8 ( x27 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB1_424
.LBB1_427:                              //  %if.then1113
                                        //    in Loop: Header=BB1_426 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x15 ,  x2 ,  192
	beq x0, x10, .LBB1_425
	jal x0, .LBB1_271
.LBB1_428:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_429:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  72 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x13 ,  x8
	sub x15 ,  x13 ,  x15
	sub x14 ,  x14 ,  x9
	add x8 ,  x0 ,  x15
	blt x15, x14, .LBB1_431
.LBB1_430:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	add x8 ,  x0 ,  x14
.LBB1_431:                              //  %if.end1385
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x0, x8, .LBB1_437
.LBB1_432:                              //  %if.then1399
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  8 ( x27 )
	sw x8 ,  4 ( x21 )
	sw x9 ,  0 ( x21 )
	add x14 ,  x8 ,  x14
	sw x14 ,  8 ( x27 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB1_436
.LBB1_433:                              //  %if.then1409
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_434:                              //  %if.then1409.if.end1416_crit_edge
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	bge x20, x8, .LBB1_438
.LBB1_435:                              //    in Loop: Header=BB1_15 Depth=2
	sub x14 ,  x0 ,  x8
	add x8 ,  x14 ,  x15
	blt x0, x8, .LBB1_439
	jal x0, .LBB1_343
.LBB1_436:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
.LBB1_437:                              //  %if.end1416
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x20, x8, .LBB1_435
.LBB1_438:                              //  %if.end1416
                                        //    in Loop: Header=BB1_15 Depth=2
	add x14 ,  x0 ,  x20
	add x8 ,  x14 ,  x15
	bge x0, x8, .LBB1_343
.LBB1_439:                              //  %while.cond1428.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	bltu x0, x15, .LBB1_333
.LBB1_440:                              //  %while.body1431.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x0 ,  16
	jal x0, .LBB1_443
.LBB1_441:                              //    in Loop: Header=BB1_443 Depth=3
	addi x21 ,  x21 ,  8
.LBB1_442:                              //  %if.end1447
                                        //    in Loop: Header=BB1_443 Depth=3
	lui x30 ,  _vfprintf_r.zeroes&4095
	lui x15 ,  (_vfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB1_333
.LBB1_443:                              //  %while.body1431
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x27 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB1_441
.LBB1_444:                              //  %if.then1441
                                        //    in Loop: Header=BB1_443 Depth=3
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB1_442
	jal x0, .LBB1_271
.LBB1_333:                              //  %while.end1034
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  8 ( x27 )
	sw x8 ,  4 ( x21 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x27 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	beq x0, x15, .LBB1_300
.LBB1_334:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x21 ,  8
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB1_344
	jal x0, .LBB1_353
.LBB1_511:                              //    in Loop: Header=BB1_15 Depth=2
	slti x27 ,  x0 ,  1
.LBB1_512:                              //  %if.else389
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x18 ,  x0 ,  102
	add x20 ,  x0 ,  x9
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	bge x15, x0, .LBB1_510
	jal x0, .LBB1_513
.LBB1_446:                              //  %while.end1121
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  8 ( x27 )
	sw x9 ,  4 ( x15 )
	add x14 ,  x9 ,  x14
	sw x14 ,  8 ( x27 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB1_514
.LBB1_447:                              //  %if.then1131
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x15 ,  x2 ,  192
	beq x0, x10, .LBB1_515
	jal x0, .LBB1_271
.LBB1_448:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  276 ( x2 )
.LBB1_449:                              //  %if.end83.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x15 ,  x9
.LBB1_450:                              //  %if.end85.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB1_452
.LBB1_451:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x9 ,  296 ( x2 )
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_457
.LBB1_452:                              //  %if.end89.i
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  296 ( x2 )
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	bgeu x15, x9, .LBB1_456
.LBB1_453:                              //  %while.body93.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_454:                              //  %while.body93.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x15 ,  1
	sw x14 ,  296 ( x2 )
	addi x14 ,  x0 ,  48
	sb x14 ,  0 ( x15 )
	lw x15 ,  296 ( x2 )
	bltu x15, x9, .LBB1_454
.LBB1_455:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x15
	ori x5 ,  x11 ,  256
	sub x15 ,  x9 ,  x8
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_459
	jal x0, .LBB1_466
.LBB1_465:                              //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x14
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
	ori x5 ,  x11 ,  256
	sub x15 ,  x9 ,  x8
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_459
	jal x0, .LBB1_466
.LBB1_456:                              //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x15
.LBB1_457:                              //  %cvt.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_458:                              //  %cvt.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x5 ,  x11 ,  256
	sub x15 ,  x9 ,  x8
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	beq x0, x10, .LBB1_459
.LBB1_546:                              //  %cvt.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_466
.LBB1_459:                              //  %if.then343
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  276 ( x2 )
	addi x18 ,  x18 ,  -2
	slti x15 ,  x10 ,  -3
	bltu x0, x15, .LBB1_470
.LBB1_460:                              //  %if.then343
                                        //    in Loop: Header=BB1_15 Depth=2
	blt x25, x10, .LBB1_470
.LBB1_461:                              //    in Loop: Header=BB1_15 Depth=2
	addi x18 ,  x0 ,  103
	jal x0, .LBB1_462
.LBB1_470:                              //  %if.end358
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  101
	blt x15, x18, .LBB1_474
.LBB1_471:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x15 ,  x18 ,  32
	addi x14 ,  x0 ,  97
	beq x15, x14, .LBB1_478
.LBB1_472:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	add x14 ,  x0 ,  x18
	lw x11 ,  276 ( x2 )
	slti x10 ,  x0 ,  1
	addi x13 ,  x11 ,  -1
	blt x11, x10, .LBB1_473
.LBB1_479:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x0 ,  43
	add x19 ,  x0 ,  x13
	jal x0, .LBB1_480
.LBB1_474:                              //  %if.else374
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10 ,  276 ( x2 )
	xori x15 ,  x18 ,  102
	bltu x0, x15, .LBB1_462
.LBB1_475:                              //  %if.then377
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x11 ,  1
	or x15 ,  x25 ,  x15
	blt x0, x10, .LBB1_476
.LBB1_547:                              //  %if.then377
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_468
.LBB1_476:                              //  %if.then380
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x18 ,  x0 ,  102
	beq x0, x15, .LBB1_496
.LBB1_477:                              //  %if.then385
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x25
	add x27 ,  x10 ,  x15
	add x9 ,  x0 ,  x0
	andi x15 ,  x11 ,  1024
	bltu x0, x15, .LBB1_498
	jal x0, .LBB1_507
.LBB1_462:                              //  %if.else401
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x10, x14, .LBB1_506
.LBB1_463:                              //  %if.else410
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x15 ,  x14
	blt x0, x10, .LBB1_497
.LBB1_464:                              //  %if.then414
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x15 ,  x27 ,  x10
	add x9 ,  x0 ,  x0
	addi x27 ,  x15 ,  1
	add x20 ,  x0 ,  x9
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	bge x15, x0, .LBB1_510
	jal x0, .LBB1_513
.LBB1_506:                              //  %if.then404
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x11 ,  1
	sub x15 ,  x0 ,  x15
	and x15 ,  x14 ,  x15
	add x27 ,  x15 ,  x10
	add x9 ,  x0 ,  x0
	andi x15 ,  x11 ,  1024
	bltu x0, x15, .LBB1_498
	jal x0, .LBB1_507
.LBB1_478:                              //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x18 ,  15
	lw x11 ,  276 ( x2 )
	slti x10 ,  x0 ,  1
	addi x13 ,  x11 ,  -1
	bge x11, x10, .LBB1_479
.LBB1_473:                              //    in Loop: Header=BB1_15 Depth=2
	addi x12 ,  x0 ,  45
	sub x19 ,  x10 ,  x11
.LBB1_480:                              //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x14 ,  269 ( x2 )
	slti x14 ,  x19 ,  10
	sw x13 ,  276 ( x2 )
	sb x12 ,  270 ( x2 )
	bltu x0, x14, .LBB1_488
.LBB1_481:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x27 ,  x2 ,  288
	addi x25 ,  x0 ,  6
	addi x15 ,  x0 ,  -1
	sw x5 ,  76 ( x2 )              //  4-byte Folded Spill
.LBB1_482:                              //  %do.body.i
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x20 ,  x0 ,  x19
	addi x24 ,  x0 ,  10
	add x9 ,  x0 ,  x15
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x24
	call __divsi3
	add x11 ,  x0 ,  x24
	add x19 ,  x0 ,  x10
	call __mulsi3
	sub x14 ,  x20 ,  x10
	add x15 ,  x25 ,  x27
	addi x25 ,  x25 ,  -1
	addi x13 ,  x0 ,  99
	addi x14 ,  x14 ,  48
	sb x14 ,  0 ( x15 )
	addi x15 ,  x9 ,  -1
	blt x13, x20, .LBB1_482
.LBB1_483:                              //  %do.end.i
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x25 ,  x27
	addi x13 ,  x19 ,  48
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x25 ,  -7
	sb x13 ,  0 ( x15 )
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x5 ,  76 ( x2 )              //  4-byte Folded Reload
	bge x12, x0, .LBB1_491
.LBB1_484:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	sb x13 ,  271 ( x2 )
	xori x13 ,  x25 ,  6
	beq x0, x13, .LBB1_491
.LBB1_485:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	sb x14 ,  272 ( x2 )
	xori x14 ,  x25 ,  5
	addi x15 ,  x2 ,  273
	beq x0, x14, .LBB1_491
.LBB1_486:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x2 ,  273
.LBB1_487:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x2 ,  296
	add x14 ,  x9 ,  x14
	addi x9 ,  x9 ,  1
	lb x14 ,  0 ( x14 )
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	xori x14 ,  x9 ,  -1
	bltu x0, x14, .LBB1_487
	jal x0, .LBB1_491
.LBB1_488:                              //  %if.else23.i
                                        //    in Loop: Header=BB1_15 Depth=2
	xori x14 ,  x15 ,  97
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB1_490
.LBB1_489:                              //  %if.then25.i
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  48
	sb x15 ,  271 ( x2 )
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB1_490:                              //  %if.end27.i
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x14 ,  x19 ,  48
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
.LBB1_491:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	lw x12 ,  72 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x20
	blt x12, x13, .LBB1_493
.LBB1_492:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
.LBB1_493:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x13 ,  x11 ,  1
	beq x13, x20, .LBB1_495
.LBB1_494:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
.LBB1_495:                              //  %exponent.exit
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x13 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x5 ,  x5 ,  -1025
	add x9 ,  x0 ,  x20
	add x10 ,  x0 ,  x20
	add x14 ,  x13 ,  x14
	addi x13 ,  x2 ,  269
	sub x15 ,  x15 ,  x13
	sw x15 ,  16 ( x2 )             //  4-byte Folded Spill
	add x27 ,  x15 ,  x14
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	bge x15, x0, .LBB1_510
	jal x0, .LBB1_513
.LBB1_496:                              //    in Loop: Header=BB1_15 Depth=2
	add x27 ,  x0 ,  x10
.LBB1_497:                              //  %if.end419
                                        //    in Loop: Header=BB1_15 Depth=2
	add x9 ,  x0 ,  x0
	andi x15 ,  x11 ,  1024
	beq x0, x15, .LBB1_507
.LBB1_498:                              //  %if.end419
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x0, x10, .LBB1_507
.LBB1_499:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	lb x14 ,  0 ( x12 )
	add x9 ,  x0 ,  x0
	xori x15 ,  x14 ,  127
	beq x0, x15, .LBB1_508
.LBB1_500:                              //  %while.cond426.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	bge x14, x10, .LBB1_508
.LBB1_501:                              //  %if.end435.preheader
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x0
	add x25 ,  x0 ,  x5
	add x9 ,  x0 ,  x15
	add x20 ,  x0 ,  x15
.LBB1_502:                              //  %if.end435
                                        //    Parent Loop BB1_12 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	lbu x13 ,  1 ( x12 )
	beq x13, x15, .LBB1_504
.LBB1_503:                              //  %if.end435
                                        //    in Loop: Header=BB1_502 Depth=3
	addi x12 ,  x12 ,  1
.LBB1_504:                              //  %if.end435
                                        //    in Loop: Header=BB1_502 Depth=3
	sub x10 ,  x10 ,  x14
	sltu x14 ,  x0 ,  x13
	sw x12 ,  68 ( x2 )             //  4-byte Folded Spill
	add x20 ,  x14 ,  x20
	xori x14 ,  x13 ,  0
	sltiu x14 ,  x14 ,  1
	add x9 ,  x14 ,  x9
	lb x14 ,  0 ( x12 )
	xori x13 ,  x14 ,  127
	beq x0, x13, .LBB1_509
.LBB1_505:                              //  %if.end435
                                        //    in Loop: Header=BB1_502 Depth=3
	blt x14, x10, .LBB1_502
	jal x0, .LBB1_509
.LBB1_507:                              //    in Loop: Header=BB1_15 Depth=2
	add x20 ,  x0 ,  x9
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	bge x15, x0, .LBB1_510
.LBB1_513:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x0 ,  45
	add x12 ,  x0 ,  x5
	sb x15 ,  283 ( x2 )
	add x15 ,  x0 ,  x25
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	blt x27, x25, .LBB1_548
.LBB1_549:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_240
.LBB1_548:                              //  %if.then454
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_241
.LBB1_508:                              //    in Loop: Header=BB1_15 Depth=2
	add x25 ,  x0 ,  x5
	add x20 ,  x0 ,  x9
.LBB1_509:                              //  %while.end446
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  32 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x10
	add x10 ,  x9 ,  x20
	call __mulsi3
	add x27 ,  x27 ,  x10
	add x10 ,  x0 ,  x24
	add x5 ,  x0 ,  x25
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	blt x15, x0, .LBB1_513
.LBB1_510:                              //    in Loop: Header=BB1_15 Depth=2
	add x12 ,  x0 ,  x5
	add x15 ,  x0 ,  x25
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	blt x27, x25, .LBB1_550
.LBB1_551:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_240
.LBB1_550:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_241
.LBB1_514:                              //    in Loop: Header=BB1_15 Depth=2
	addi x15 ,  x15 ,  8
.LBB1_515:                              //  %if.end1138
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  8 ( x27 )
	sw x18 ,  4 ( x15 )
	sw x8 ,  0 ( x15 )
	add x14 ,  x18 ,  x14
	sw x14 ,  8 ( x27 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB1_516
.LBB1_300:                              //  %if.then1044
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	addi x21 ,  x2 ,  192
	bltu x0, x10, .LBB1_271
.LBB1_343:                              //  %if.end1617
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB1_353
.LBB1_552:                              //  %if.end1617
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_344
.LBB1_353:                              //  %if.end1664thread-pre-split
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x15 ,  264 ( x2 )
.LBB1_354:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	blt x14, x22, .LBB1_356
.LBB1_355:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	add x22 ,  x0 ,  x14
.LBB1_356:                              //  %if.end1664
                                        //    in Loop: Header=BB1_15 Depth=2
	add x24 ,  x24 ,  x22
	beq x0, x15, .LBB1_358
.LBB1_357:                              //  %land.lhs.true1674
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x27
	call __sprint_r
	bltu x0, x10, .LBB1_271
.LBB1_358:                              //  %if.end1678
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x26
	sw x0 ,  260 ( x2 )
	bltu x0, x11, .LBB1_359
.LBB1_553:                              //  %if.end1678
                                        //    in Loop: Header=BB1_12 Depth=1
	jal x0, .LBB1_12
.LBB1_359:                              //  %if.then1683
                                        //    in Loop: Header=BB1_15 Depth=2
	add x10 ,  x0 ,  x25
	call _free_r
	add x8 ,  x0 ,  x26
	addi x21 ,  x2 ,  192
	add x9 ,  x0 ,  x8
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB1_554
.LBB1_555:                              //  %if.then1683
                                        //    in Loop: Header=BB1_12 Depth=1
	jal x0, .LBB1_13
.LBB1_554:                              //  %if.then1683
                                        //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_15
.LBB1_516:                              //    in Loop: Header=BB1_15 Depth=2
	addi x21 ,  x15 ,  8
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB1_556
.LBB1_557:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_344
.LBB1_556:                              //    in Loop: Header=BB1_15 Depth=2
	jal x0, .LBB1_353
.LBB1_517:                              //  %if.then
	add x10 ,  x0 ,  x25
	call __sinit
	lhu x15 ,  12 ( x19 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_558
.LBB1_559:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_558:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_256:
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
.LBB1_251:
	lw x25 ,  80 ( x2 )             //  4-byte Folded Reload
.LBB1_270:
	lw x24 ,  60 ( x2 )             //  4-byte Folded Reload
.LBB1_271:                              //  %error
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	beq x0, x11, .LBB1_273
.LBB1_272:                              //  %if.then1696
	add x10 ,  x0 ,  x25
	call _free_r
.LBB1_273:                              //  %if.end1697
	lbu x15 ,  12 ( x19 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_522
.LBB1_521:                              //  %if.end1697
	addi x24 ,  x0 ,  -1
.LBB1_522:                              //  %cleanup1719
	add x10 ,  x0 ,  x24
	lw x8 ,  300 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  304 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  308 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  312 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  316 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  320 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  324 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  328 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  332 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  336 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  340 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  344 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  348 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  352
	.cfi_def_cfa 2, 0
	ret
.LBB1_518:                              //  %done
	lw x15 ,  264 ( x2 )
	beq x0, x15, .LBB1_520
.LBB1_519:                              //  %land.lhs.true1687
	addi x12 ,  x2 ,  256
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __sprint_r
	bltu x0, x10, .LBB1_273
.LBB1_520:                              //  %if.end1691
	sw x0 ,  260 ( x2 )
	lbu x15 ,  12 ( x19 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_522
	jal x0, .LBB1_521
.LBB1_149:                              //  %if.then309
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lh x15 ,  12 ( x19 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x19 )
	lbu x15 ,  12 ( x19 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB1_521
	jal x0, .LBB1_522
.Lfunc_end1:
	.size	_vfprintf_r, .Lfunc_end1-_vfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_34
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_36
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_37
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_42
	.long	.LBB1_45
	.long	.LBB1_125
	.long	.LBB1_44
	.long	.LBB1_28
	.long	.LBB1_125
	.long	.LBB1_48
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_70
	.long	.LBB1_125
	.long	.LBB1_83
	.long	.LBB1_99
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_49
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_102
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_84
	.long	.LBB1_125
	.long	.LBB1_104
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_106
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_70
	.long	.LBB1_125
	.long	.LBB1_83
	.long	.LBB1_89
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_70
	.long	.LBB1_51
	.long	.LBB1_89
	.long	.LBB1_33
	.long	.LBB1_125
	.long	.LBB1_53
	.long	.LBB1_125
	.long	.LBB1_61
	.long	.LBB1_107
	.long	.LBB1_112
	.long	.LBB1_33
	.long	.LBB1_125
	.long	.LBB1_84
	.long	.LBB1_47
	.long	.LBB1_113
	.long	.LBB1_125
	.long	.LBB1_125
	.long	.LBB1_118
	.long	.LBB1_125
	.long	.LBB1_47
                                        //  -- End function
	.text
	.type	__sbprintf,@function    //  -- Begin function __sbprintf
__sbprintf:                             //  @__sbprintf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1152
	.cfi_adjust_cfa_offset 1152
	sw x8 ,  1136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	lui x30 ,  65533&4095
	lui x14 ,  (65533>>12)&1048575
	addi x11 ,  x2 ,  1032
	sw x9 ,  1144 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  1148 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1140 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x10
	lhu x15 ,  12 ( x8 )
	srli x30 ,  x30 ,  12&31
	sw x0 ,  24 ( x11 )
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x11 )
	lw x15 ,  100 ( x8 )
	sw x15 ,  100 ( x11 )
	lh x15 ,  14 ( x8 )
	sh x15 ,  14 ( x11 )
	lw x15 ,  28 ( x8 )
	sw x15 ,  28 ( x11 )
	lw x15 ,  36 ( x8 )
	sw x15 ,  36 ( x11 )
	addi x15 ,  x2 ,  8
	sw x15 ,  16 ( x11 )
	sw x15 ,  1032 ( x2 )
	addi x15 ,  x0 ,  1024
	sw x15 ,  8 ( x11 )
	sw x15 ,  1052 ( x2 )
	call _vfprintf_r
	add x18 ,  x0 ,  x10
	blt x18, x0, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	addi x11 ,  x2 ,  1032
	add x10 ,  x0 ,  x9
	call _fflush_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB2_3
.LBB2_2:                                //  %land.lhs.true
	addi x18 ,  x0 ,  -1
.LBB2_3:                                //  %if.end
	lbu x15 ,  1044 ( x2 )
	andi x15 ,  x15 ,  64
	beq x0, x15, .LBB2_5
.LBB2_4:                                //  %if.then15
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
.LBB2_5:                                //  %if.end19
	add x10 ,  x0 ,  x18
	lw x8 ,  1136 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  1140 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1144 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1148 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1152
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	__sbprintf, .Lfunc_end2-__sbprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfprintf_r.blanks,@object //  @_vfprintf_r.blanks
	.section	.rodata,"a",@progbits
_vfprintf_r.blanks:
	.zero	16,32
	.size	_vfprintf_r.blanks, 16

	.address_space	0
	.type	_vfprintf_r.zeroes,@object //  @_vfprintf_r.zeroes
_vfprintf_r.zeroes:
	.zero	16,48
	.size	_vfprintf_r.zeroes, 16

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"INF"
	.size	.str, 4

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"inf"
	.size	.str.1, 4

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"NAN"
	.size	.str.2, 4

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"nan"
	.size	.str.3, 4

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"0123456789abcdef"
	.size	.str.4, 17

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"(null)"
	.size	.str.5, 7

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"0123456789ABCDEF"
	.size	.str.6, 17

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"bug in vfprintf: bad base"
	.size	.str.7, 26

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"0"
	.size	.str.8, 2


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
