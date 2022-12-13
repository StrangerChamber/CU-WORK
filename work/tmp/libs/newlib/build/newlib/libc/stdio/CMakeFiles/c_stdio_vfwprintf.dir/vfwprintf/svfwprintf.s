	.text
	.file	"svfwprintf.c"
	.globl	_svfwprintf_r           //  -- Begin function _svfwprintf_r
	.type	_svfwprintf_r,@function
_svfwprintf_r:                          //  @_svfwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -712
	.cfi_adjust_cfa_offset 712
	sw x9 ,  704 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  700 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x24 ,  676 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x1 ,  708 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  696 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  692 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  688 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  684 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  680 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  672 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  668 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  664 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  660 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x24 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x13 ,  628 ( x2 )
	sw x0 ,  620 ( x2 )
	sw x0 ,  576 ( x2 )
	call _localeconv_r
	lw x15 ,  0 ( x10 )
	lb x15 ,  0 ( x15 )
	sw x15 ,  616 ( x2 )
	lbu x15 ,  12 ( x9 )
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  16 ( x9 )
	bltu x0, x15, .LBB0_4
.LBB0_2:                                //  %if.then
	addi x8 ,  x0 ,  64
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call _malloc_r
	sw x10 ,  16 ( x9 )
	sw x10 ,  0 ( x9 )
	bltu x0, x10, .LBB0_3
.LBB0_494:                              //  %if.then
	jal x0, .LBB0_488
.LBB0_3:                                //  %if.end
	sw x8 ,  20 ( x9 )
.LBB0_4:                                //  %if.end11
	addi x15 ,  x2 ,  500
	add x23 ,  x0 ,  x0
	addi x12 ,  x2 ,  564
	addi x26 ,  x0 ,  64
	addi x21 ,  x0 ,  10
	addi x22 ,  x0 ,  90
	sw x0 ,  568 ( x2 )
	sw x18 ,  84 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  564 ( x2 )
	addi x15 ,  x2 ,  632
	add x19 ,  x0 ,  x23
	sw x0 ,  8 ( x12 )
	sw x23 ,  80 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  24
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  100
	addi x15 ,  x15 ,  400
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  580
	addi x14 ,  x15 ,  8
	addi x15 ,  x15 ,  12
	sw x14 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_199 Depth 3
                                        //        Child Loop BB0_221 Depth 3
                                        //        Child Loop BB0_207 Depth 3
                                        //        Child Loop BB0_212 Depth 3
                                        //        Child Loop BB0_366 Depth 3
                                        //        Child Loop BB0_455 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_178 Depth 3
                                        //        Child Loop BB0_242 Depth 3
                                        //        Child Loop BB0_259 Depth 3
                                        //        Child Loop BB0_267 Depth 3
                                        //        Child Loop BB0_317 Depth 3
                                        //        Child Loop BB0_338 Depth 3
                                        //        Child Loop BB0_377 Depth 3
                                        //          Child Loop BB0_393 Depth 4
                                        //        Child Loop BB0_426 Depth 3
                                        //        Child Loop BB0_409 Depth 3
                                        //        Child Loop BB0_323 Depth 3
                                        //        Child Loop BB0_435 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	addi x20 ,  x2 ,  500
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	addi x8 ,  x8 ,  4
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_199 Depth 3
                                        //        Child Loop BB0_221 Depth 3
                                        //        Child Loop BB0_207 Depth 3
                                        //        Child Loop BB0_212 Depth 3
                                        //        Child Loop BB0_366 Depth 3
                                        //        Child Loop BB0_455 Depth 3
                                        //        Child Loop BB0_173 Depth 3
                                        //        Child Loop BB0_178 Depth 3
                                        //        Child Loop BB0_242 Depth 3
                                        //        Child Loop BB0_259 Depth 3
                                        //        Child Loop BB0_267 Depth 3
                                        //        Child Loop BB0_317 Depth 3
                                        //        Child Loop BB0_338 Depth 3
                                        //        Child Loop BB0_377 Depth 3
                                        //          Child Loop BB0_393 Depth 4
                                        //        Child Loop BB0_426 Depth 3
                                        //        Child Loop BB0_409 Depth 3
                                        //        Child Loop BB0_323 Depth 3
                                        //        Child Loop BB0_435 Depth 3
	sub x9 ,  x8 ,  x24
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then17
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x12 )
	sw x9 ,  4 ( x20 )
	sw x24 ,  0 ( x20 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  72 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	call __ssprint_r
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_489
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	srai x15 ,  x9 ,  2&31
	add x19 ,  x19 ,  x15
	lw x15 ,  0 ( x8 )
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	bltu x0, x15, .LBB0_14
.LBB0_495:                              //  %if.end32
	jal x0, .LBB0_485
.LBB0_14:                               //  %if.end36
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x8 ,  4
	addi x14 ,  x0 ,  -1
	add x8 ,  x0 ,  x23
	add x25 ,  x0 ,  x23
	sw x0 ,  624 ( x2 )
	sw x19 ,  68 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lw x27 ,  0 ( x15 )
	addi x24 ,  x15 ,  4
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	add x25 ,  x0 ,  x23
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x21
	call __mulsi3
	add x15 ,  x10 ,  x27
	lw x27 ,  0 ( x24 )
	addi x24 ,  x24 ,  4
	addi x25 ,  x15 ,  -48
	addi x15 ,  x27 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB0_18
	jal x0, .LBB0_16
.LBB0_26:                               //    in Loop: Header=BB0_19 Depth=5
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	sw x10 ,  76 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_17
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_23 Depth 6
	addi x15 ,  x27 ,  -32
	bltu x22, x15, .LBB0_120
.LBB0_20:                               //  %reswitch
                                        //    in Loop: Header=BB0_19 Depth=5
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_21:                               //  %sw.bb66
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x27 ,  0 ( x24 )
	addi x15 ,  x24 ,  4
	xori x14 ,  x27 ,  42
	beq x0, x14, .LBB0_50
.LBB0_22:                               //  %while.cond77.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	addi x8 ,  x27 ,  -48
	add x10 ,  x0 ,  x0
	add x24 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x8, .LBB0_26
.LBB0_23:                               //  %while.body81
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	addi x11 ,  x0 ,  10
	call __mulsi3
	lw x27 ,  0 ( x24 )
	add x10 ,  x10 ,  x8
	addi x24 ,  x24 ,  4
	addi x8 ,  x27 ,  -48
	sltiu x15 ,  x8 ,  10
	bltu x0, x15, .LBB0_23
.LBB0_24:                               //  %while.end86
                                        //    in Loop: Header=BB0_19 Depth=5
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x0 ,  -1
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_25:                               //  %while.end86.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x10 ,  76 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_17
	jal x0, .LBB0_19
.LBB0_27:                               //  %sw.bb120
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  32
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_28:                               //  %sw.bb52
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  624 ( x2 )
	add x15 ,  x0 ,  x24
	bltu x0, x14, .LBB0_15
.LBB0_29:                               //  %if.then54
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB0_40
.LBB0_30:                               //  %sw.bb56
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  1
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_31:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10 ,  x0 ,  x18
	call _localeconv_r
	lw x15 ,  4 ( x10 )
	add x10 ,  x0 ,  x18
	lb x15 ,  0 ( x15 )
	sw x15 ,  620 ( x2 )
	call _localeconv_r
	lw x14 ,  8 ( x10 )
	add x15 ,  x0 ,  x24
	sw x14 ,  80 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB0_15
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  620 ( x2 )
	add x15 ,  x0 ,  x24
	beq x0, x14, .LBB0_15
.LBB0_33:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB0_35
.LBB0_34:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  1024
.LBB0_35:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_36:                               //  %sw.bb58
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x25 ,  0 ( x15 )
	add x15 ,  x0 ,  x24
	bge x25, x0, .LBB0_15
.LBB0_37:                               //  %if.end62
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x25 ,  x0 ,  x25
.LBB0_38:                               //  %sw.bb63.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  4
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_39:                               //  %sw.bb65
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  43
.LBB0_40:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x15 ,  624 ( x2 )
.LBB0_41:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_42:                               //  %sw.bb89
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  128
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_43:                               //  %sw.bb99
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x8 ,  x8 ,  8
	add x15 ,  x0 ,  x24
	jal x0, .LBB0_15
.LBB0_44:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  0 ( x24 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB0_48
.LBB0_45:                               //  %sw.bb101
                                        //    in Loop: Header=BB0_15 Depth=3
	add x14 ,  x0 ,  x26
	add x15 ,  x0 ,  x24
	or x8 ,  x8 ,  x14
	jal x0, .LBB0_15
.LBB0_46:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  0 ( x24 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB0_49
.LBB0_47:                               //  %sw.bb109
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  16
	add x15 ,  x0 ,  x24
	or x8 ,  x8 ,  x14
	jal x0, .LBB0_15
.LBB0_48:                               //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  512
	addi x15 ,  x24 ,  4
	or x8 ,  x8 ,  x14
	jal x0, .LBB0_15
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  32
	addi x15 ,  x24 ,  4
	or x8 ,  x8 ,  x14
	jal x0, .LBB0_15
.LBB0_50:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  628 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  628 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	sw x13 ,  76 ( x2 )             //  4-byte Folded Spill
	blt x14, x13, .LBB0_15
.LBB0_51:                               //  %if.then70
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_52:                               //  %sw.bb421
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB0_57
.LBB0_53:                               //  %if.else427
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  564
	bltu x0, x15, .LBB0_56
.LBB0_54:                               //  %if.else432
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  64
	bltu x0, x15, .LBB0_58
.LBB0_55:                               //  %if.else438
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  512
	bltu x0, x15, .LBB0_59
.LBB0_56:                               //  %if.then430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x19 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_57:                               //  %if.then424
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x12 ,  x2 ,  564
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	srai x14 ,  x19 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x19 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_58:                               //  %if.then435
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x19 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_59:                               //  %if.then441
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x19 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_60:                               //  %sw.bb187
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  8
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB0_62
.LBB0_61:                               //  %if.else194
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  8
	lw x23 ,  0 ( x15 )
	sw x14 ,  628 ( x2 )
	lw x8 ,  4 ( x15 )
	jal x0, .LBB0_63
.LBB0_62:                               //  %if.then190
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  8
	lw x10 ,  0 ( x15 )
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  12
	lw x11 ,  4 ( x15 )
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  16
	lw x12 ,  8 ( x15 )
	sw x14 ,  628 ( x2 )
	lw x13 ,  12 ( x15 )
	call __trunctfdf2
	add x23 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_63:                               //  %if.end197
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x18 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x18
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x8
	call __nedf2
	sw x23 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x8 ,  56 ( x2 )              //  4-byte Folded Spill
	bltu x0, x10, .LBB0_69
.LBB0_64:                               //  %if.then200
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x22
	add x12 ,  x0 ,  x22
	call __ltdf2
	bge x10, x0, .LBB0_66
.LBB0_65:                               //  %if.then204
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  624 ( x2 )
.LBB0_66:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	lui x14 ,  (.str>>12)&1048575
	addi x12 ,  x2 ,  564
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	bltu x27, x14, .LBB0_68
.LBB0_67:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x15
.LBB0_68:                               //  %if.end205
                                        //    in Loop: Header=BB0_8 Depth=2
	add x26 ,  x0 ,  x22
	addi x23 ,  x0 ,  3
	andi x8 ,  x8 ,  -129
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_69:                               //  %if.end212
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	add x26 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB0_90
.LBB0_70:                               //  %if.end233
                                        //    in Loop: Header=BB0_8 Depth=2
	ori x18 ,  x27 ,  32
	xori x15 ,  x18 ,  97
	bltu x0, x15, .LBB0_122
.LBB0_71:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  97
	beq x27, x15, .LBB0_142
.LBB0_72:                               //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  88
	jal x0, .LBB0_143
.LBB0_73:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x10 ,  0 ( x15 )
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB0_113
.LBB0_74:                               //  %sw.bb124
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x27 ,  99
	bltu x0, x15, .LBB0_113
.LBB0_75:                               //  %if.then131
                                        //    in Loop: Header=BB0_8 Depth=2
	call btowc
	xori x15 ,  x10 ,  -1
	addi x12 ,  x2 ,  564
	bltu x0, x15, .LBB0_114
	jal x0, .LBB0_491
.LBB0_76:                               //  %sw.bb492
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x26 ,  0 ( x15 )
	sw x0 ,  624 ( x2 )
	beq x0, x26, .LBB0_125
.LBB0_77:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB0_128
.LBB0_78:                               //  %if.else503
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x27 ,  83
	beq x0, x15, .LBB0_128
.LBB0_79:                               //  %if.then509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  76 ( x2 )             //  4-byte Folded Reload
	bge x12, x0, .LBB0_80
.LBB0_496:                              //  %if.then509
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_363
.LBB0_80:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18 ,  x0 ,  x8
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x8
	call memchr
	beq x10, x8, .LBB0_82
.LBB0_81:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x15 ,  x10 ,  x26
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB0_82:                               //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x18
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	sltiu x15 ,  x14 ,  100
	slli x18 ,  x14 ,  2&31
	beq x0, x15, .LBB0_83
.LBB0_497:                              //  %if.then512
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_364
.LBB0_83:                               //  %if.then527
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x18 ,  4
	add x9 ,  x0 ,  x14
	call _malloc_r
	bltu x0, x10, .LBB0_84
.LBB0_498:                              //  %if.then527
	jal x0, .LBB0_492
.LBB0_84:                               //    in Loop: Header=BB0_8 Depth=2
	sw x10 ,  64 ( x2 )             //  4-byte Folded Spill
	addi x12 ,  x2 ,  564
	jal x0, .LBB0_365
.LBB0_85:                               //  %sw.bb147
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  32
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB0_115
.LBB0_86:                               //  %cond.false152
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  564
	bltu x0, x15, .LBB0_133
.LBB0_87:                               //  %cond.false157
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  64
	add x11 ,  x0 ,  x8
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_184
.LBB0_88:                               //  %cond.false164
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x8 ,  0 ( x15 )
	andi x15 ,  x11 ,  512
	beq x0, x15, .LBB0_134
.LBB0_89:                               //  %cond.true167
                                        //    in Loop: Header=BB0_8 Depth=2
	slli x15 ,  x8 ,  24&31
	srai x8 ,  x15 ,  24&31
	srai x22 ,  x8 ,  31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_135
.LBB0_90:                               //  %cond.true220
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	bge x8, x0, .LBB0_92
.LBB0_91:                               //  %if.then225
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  624 ( x2 )
.LBB0_92:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	lui x14 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	bltu x27, x14, .LBB0_94
.LBB0_93:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x15
.LBB0_94:                               //  %if.end226
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	addi x23 ,  x0 ,  3
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	add x26 ,  x0 ,  x22
	andi x8 ,  x8 ,  -129
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_95:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x15 ,  (.str.6>>12)&1048575
	lui x30 ,  .str.6&4095
	jal x0, .LBB0_108
.LBB0_96:                               //  %sw.bb450
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  32
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB0_138
.LBB0_97:                               //  %cond.false455
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  564
	bltu x0, x15, .LBB0_185
.LBB0_98:                               //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  64
	beq x0, x15, .LBB0_99
.LBB0_499:                              //  %cond.false460
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_462
.LBB0_99:                               //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	andi x14 ,  x8 ,  512
	lw x8 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB0_100
.LBB0_500:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_463
.LBB0_100:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x8 ,  x8 ,  255
	jal x0, .LBB0_463
.LBB0_101:                              //  %sw.bb486
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	add x12 ,  x0 ,  x8
	lui x30 ,  .str.4&4095
	addi x27 ,  x0 ,  120
	add x22 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	ori x12 ,  x12 ,  2
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lui x14 ,  (.str.4>>12)&1048575
	lw x8 ,  0 ( x15 )
	addi x15 ,  x0 ,  48
	sw x12 ,  88 ( x2 )             //  4-byte Folded Spill
	sw x27 ,  96 ( x2 )
	or x13 ,  x14 ,  x30
	addi x12 ,  x2 ,  564
	sw x15 ,  92 ( x2 )
	addi x15 ,  x0 ,  2
	sw x0 ,  624 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x26, .LBB0_189
	jal x0, .LBB0_190
.LBB0_102:                              //  %sw.bb578
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  32
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB0_139
.LBB0_103:                              //  %cond.false583
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  564
	bltu x0, x15, .LBB0_186
.LBB0_104:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  64
	beq x0, x15, .LBB0_105
.LBB0_501:                              //  %cond.false588
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_465
.LBB0_105:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	andi x14 ,  x8 ,  512
	lw x8 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB0_106
.LBB0_502:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_466
.LBB0_106:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x8 ,  x8 ,  255
	jal x0, .LBB0_466
.LBB0_107:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
.LBB0_108:                              //  %hex
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	addi x12 ,  x2 ,  564
	or x13 ,  x15 ,  x30
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB0_117
.LBB0_109:                              //  %cond.false619
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB0_140
.LBB0_110:                              //  %cond.false624
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  64
	bltu x0, x15, .LBB0_187
.LBB0_111:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	add x11 ,  x0 ,  x8
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	andi x14 ,  x8 ,  512
	lw x8 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_141
.LBB0_112:                              //  %cond.false631
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x8 ,  x8 ,  255
	add x22 ,  x0 ,  x0
	andi x15 ,  x11 ,  1
	bltu x0, x15, .LBB0_118
	jal x0, .LBB0_188
.LBB0_113:                              //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
.LBB0_114:                              //  %if.end145
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x0
	sw x10 ,  100 ( x2 )
	sw x0 ,  104 ( x2 )
	sw x0 ,  624 ( x2 )
	slti x23 ,  x0 ,  1
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	add x26 ,  x0 ,  x22
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  100
	add x10 ,  x0 ,  x15
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_115:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x12 ,  x2 ,  564
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  8
	lw x8 ,  0 ( x15 )
	sw x14 ,  628 ( x2 )
	lw x22 ,  4 ( x15 )
	blt x22, x0, .LBB0_135
.LBB0_116:                              //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x26, .LBB0_189
	jal x0, .LBB0_190
.LBB0_117:                              //  %cond.true617
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	add x11 ,  x0 ,  x8
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  8
	lw x8 ,  0 ( x15 )
	sw x14 ,  628 ( x2 )
	lw x22 ,  4 ( x15 )
	andi x15 ,  x11 ,  1
	beq x0, x15, .LBB0_188
.LBB0_118:                              //  %cond.end647
                                        //    in Loop: Header=BB0_8 Depth=2
	or x15 ,  x22 ,  x8
	beq x0, x15, .LBB0_188
.LBB0_119:                              //  %if.then654
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	ori x11 ,  x11 ,  2
	sw x27 ,  96 ( x2 )
	sw x15 ,  92 ( x2 )
	jal x0, .LBB0_188
.LBB0_120:                              //  %sw.default757
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	bltu x0, x27, .LBB0_121
.LBB0_503:                              //  %sw.default757
	jal x0, .LBB0_485
.LBB0_121:                              //  %if.end761
                                        //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x23
	add x22 ,  x0 ,  x23
	add x26 ,  x0 ,  x23
	sw x23 ,  64 ( x2 )             //  4-byte Folded Spill
	slti x23 ,  x0 ,  1
	sw x27 ,  100 ( x2 )
	sw x0 ,  624 ( x2 )
	sw x19 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  100
	add x10 ,  x0 ,  x15
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_122:                              //  %if.else261
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  100
	xori x14 ,  x14 ,  -1
	beq x0, x14, .LBB0_147
.LBB0_123:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  103
	beq x18, x14, .LBB0_148
.LBB0_124:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x13
	add x14 ,  x0 ,  x0
	add x19 ,  x0 ,  x14
	bne x13, x14, .LBB0_149
	jal x0, .LBB0_150
.LBB0_125:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x23 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	addi x12 ,  x2 ,  564
	bltu x23, x15, .LBB0_127
.LBB0_126:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	add x23 ,  x0 ,  x15
.LBB0_127:                              //  %if.then496
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.5&4095
	add x22 ,  x0 ,  x0
	lui x15 ,  (.str.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	add x26 ,  x0 ,  x22
	or x10 ,  x15 ,  x30
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_128:                              //  %if.else554
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x23 ,  76 ( x2 )             //  4-byte Folded Reload
	bge x23, x0, .LBB0_129
.LBB0_504:                              //  %if.else554
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_368
.LBB0_129:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x12 ,  x0 ,  x23
	add x11 ,  x0 ,  x18
	call wmemchr
	bltu x0, x10, .LBB0_130
.LBB0_505:                              //  %if.then557
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_447
.LBB0_130:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x15 ,  x10 ,  x26
	addi x12 ,  x2 ,  564
	srai x15 ,  x15 ,  2&31
	blt x23, x15, .LBB0_132
.LBB0_131:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	add x23 ,  x0 ,  x15
.LBB0_132:                              //  %if.then562
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x15 ,  x0 ,  x22
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x26 ,  x0 ,  x15
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_133:                              //  %cond.true155
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x8 ,  0 ( x15 )
.LBB0_134:                              //  %cond.end177
                                        //    in Loop: Header=BB0_8 Depth=2
	srai x22 ,  x8 ,  31&31
	bge x22, x0, .LBB0_116
.LBB0_135:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  -1
	bge x15, x26, .LBB0_137
.LBB0_136:                              //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  88 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -129
	sw x15 ,  88 ( x2 )             //  4-byte Folded Spill
.LBB0_137:                              //  %if.then671.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  624 ( x2 )
	sltu x15 ,  x0 ,  x8
	sub x8 ,  x0 ,  x8
	add x15 ,  x15 ,  x22
	sub x22 ,  x0 ,  x15
	jal x0, .LBB0_201
.LBB0_138:                              //  %cond.true453
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x12 ,  x2 ,  564
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	addi x14 ,  x15 ,  8
	lw x8 ,  0 ( x15 )
	sw x14 ,  628 ( x2 )
	lw x22 ,  4 ( x15 )
	jal x0, .LBB0_464
.LBB0_139:                              //  %cond.true581
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  628 ( x2 )
	addi x27 ,  x0 ,  117
	addi x12 ,  x2 ,  564
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  4
	sw x15 ,  628 ( x2 )
	addi x15 ,  x14 ,  8
	lw x8 ,  0 ( x14 )
	sw x15 ,  628 ( x2 )
	slti x15 ,  x0 ,  1
	lw x22 ,  4 ( x14 )
	sw x0 ,  624 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x26, .LBB0_189
	jal x0, .LBB0_190
.LBB0_140:                              //  %cond.true622
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	add x11 ,  x0 ,  x8
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x8 ,  0 ( x15 )
.LBB0_141:                              //  %cond.end644
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x0
	andi x15 ,  x11 ,  1
	bltu x0, x15, .LBB0_118
	jal x0, .LBB0_188
.LBB0_142:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  120
.LBB0_143:                              //  %if.then239
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x15 ,  96 ( x2 )
	addi x15 ,  x0 ,  48
	lw x22 ,  76 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  92 ( x2 )
	lw x15 ,  88 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  2
	sw x15 ,  88 ( x2 )             //  4-byte Folded Spill
	slti x15 ,  x22 ,  100
	bltu x0, x15, .LBB0_146
.LBB0_144:                              //  %if.then248
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x22 ,  2&31
	addi x11 ,  x15 ,  4
	call _malloc_r
	bltu x0, x10, .LBB0_145
.LBB0_506:                              //  %if.then248
	jal x0, .LBB0_493
.LBB0_145:                              //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x10
	add x15 ,  x0 ,  x19
	jal x0, .LBB0_150
.LBB0_146:                              //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x0
	addi x15 ,  x2 ,  100
	jal x0, .LBB0_150
.LBB0_147:                              //    in Loop: Header=BB0_8 Depth=2
	addi x22 ,  x0 ,  6
	add x19 ,  x0 ,  x26
	jal x0, .LBB0_150
.LBB0_148:                              //    in Loop: Header=BB0_8 Depth=2
	slti x22 ,  x0 ,  1
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	add x19 ,  x0 ,  x14
	beq x13, x14, .LBB0_150
.LBB0_149:                              //  %if.else265
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x13
.LBB0_150:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x15 ,  4 ( x2 )
	addi x15 ,  x0 ,  100
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x2 ,  576
	addi x16 ,  x2 ,  608
	add x11 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	add x17 ,  x0 ,  x27
	sw x15 ,  8 ( x2 )
	lw x15 ,  88 ( x2 )             //  4-byte Folded Reload
	sw x8 ,  0 ( x2 )
	lw x12 ,  56 ( x2 )             //  4-byte Folded Reload
	ori x26 ,  x15 ,  256
	addi x15 ,  x2 ,  612
	add x14 ,  x0 ,  x26
	call wcvt
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	bltu x0, x19, .LBB0_155
.LBB0_151:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x2 ,  100
	addi x12 ,  x2 ,  564
	bne x10, x15, .LBB0_156
.LBB0_152:                              //  %if.end277
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	slti x14 ,  x15 ,  101
	bltu x0, x14, .LBB0_156
.LBB0_153:                              //  %if.then290
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  84 ( x2 )             //  4-byte Folded Reload
	slli x11 ,  x15 ,  2&31
	add x10 ,  x0 ,  x19
	call _malloc_r
	bltu x0, x10, .LBB0_154
.LBB0_507:                              //  %if.then290
	jal x0, .LBB0_491
.LBB0_154:                              //  %if.end300
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	sw x10 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  4 ( x2 )
	addi x16 ,  x2 ,  608
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	add x14 ,  x0 ,  x26
	add x17 ,  x0 ,  x27
	sw x8 ,  0 ( x2 )
	lw x12 ,  56 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  8 ( x2 )
	addi x15 ,  x2 ,  612
	call wcvt
.LBB0_155:                              //  %if.end303
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
.LBB0_156:                              //  %if.end303
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x18 ,  103
	sw x26 ,  76 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_162
.LBB0_157:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x6 ,  608 ( x2 )
	lw x13 ,  88 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x6 ,  -3
	bltu x0, x15, .LBB0_159
.LBB0_158:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x22, x6, .LBB0_159
.LBB0_508:                              //  %if.then309
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_370
.LBB0_159:                              //  %if.then309.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x27 ,  x27 ,  -2
	ori x18 ,  x27 ,  32
	addi x15 ,  x0 ,  97
	beq x18, x15, .LBB0_169
.LBB0_160:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x27
	slti x5 ,  x0 ,  1
	addi x14 ,  x6 ,  -1
	bge x6, x5, .LBB0_170
.LBB0_161:                              //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x0 ,  45
	sub x8 ,  x5 ,  x6
	jal x0, .LBB0_171
.LBB0_162:                              //  %if.else319
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  88 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x27 ,  70
	bltu x0, x15, .LBB0_167
.LBB0_163:                              //  %if.else340.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x6 ,  608 ( x2 )
.LBB0_164:                              //  %if.then343
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x13 ,  1
	or x15 ,  x22 ,  x15
	blt x0, x6, .LBB0_165
.LBB0_509:                              //  %if.then343
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_374
.LBB0_165:                              //  %if.then346
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x27 ,  x0 ,  102
	bltu x0, x15, .LBB0_166
.LBB0_510:                              //  %if.then346
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_459
.LBB0_166:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x6 ,  x22
	addi x23 ,  x15 ,  1
	add x22 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	beq x0, x15, .LBB0_511
.LBB0_512:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_451
.LBB0_511:                              //  %if.then351
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_460
.LBB0_167:                              //  %if.end324
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  101
	bgeu x15, x27, .LBB0_168
.LBB0_513:                              //  %if.end324
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_369
.LBB0_168:                              //  %if.end324.if.then327_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x6 ,  608 ( x2 )
	addi x15 ,  x0 ,  97
	bne x18, x15, .LBB0_160
.LBB0_169:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x27 ,  15
	slti x5 ,  x0 ,  1
	addi x14 ,  x6 ,  -1
	blt x6, x5, .LBB0_161
.LBB0_170:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x0 ,  43
	add x8 ,  x0 ,  x14
.LBB0_171:                              //  %if.then327
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x15 ,  580 ( x2 )
	slti x15 ,  x8 ,  10
	sw x14 ,  608 ( x2 )
	sw x13 ,  584 ( x2 )
	bltu x0, x15, .LBB0_179
.LBB0_172:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	addi x13 ,  x2 ,  660
	add x23 ,  x0 ,  x5
	sw x10 ,  60 ( x2 )             //  4-byte Folded Spill
.LBB0_173:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x18 ,  x0 ,  x8
	addi x22 ,  x0 ,  10
	add x19 ,  x0 ,  x15
	add x26 ,  x0 ,  x13
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	call __divsi3
	add x11 ,  x0 ,  x22
	add x8 ,  x0 ,  x10
	call __mulsi3
	sub x14 ,  x18 ,  x10
	addi x13 ,  x26 ,  -4
	addi x15 ,  x19 ,  1
	addi x23 ,  x23 ,  -1
	addi x12 ,  x0 ,  99
	addi x14 ,  x14 ,  48
	sw x14 ,  0 ( x9 )
	addi x9 ,  x9 ,  -4
	blt x12, x18, .LBB0_173
.LBB0_174:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x8 ,  48
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x23 ,  -2
	addi x12 ,  x2 ,  564
	slti x5 ,  x0 ,  1
	sw x13 ,  0 ( x9 )
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x10 ,  60 ( x2 )             //  4-byte Folded Reload
	bge x11, x0, .LBB0_182
.LBB0_175:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	sw x13 ,  588 ( x2 )
	xori x13 ,  x23 ,  1
	beq x0, x13, .LBB0_182
.LBB0_176:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x2 ,  596
	sw x14 ,  592 ( x2 )
	beq x0, x23, .LBB0_182
.LBB0_177:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x2 ,  596
.LBB0_178:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x19 ,  x19 ,  -1
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x19, .LBB0_178
	jal x0, .LBB0_182
.LBB0_179:                              //  %if.else17.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	xori x14 ,  x18 ,  97
	beq x0, x14, .LBB0_181
.LBB0_180:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  588 ( x2 )
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_181:                              //  %if.end21.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x8 ,  48
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
.LBB0_182:                              //  %wexponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  88 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	lw x14 ,  576 ( x2 )
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	andi x11 ,  x11 ,  1
	slt x13 ,  x5 ,  x14
	or x13 ,  x13 ,  x11
	addi x11 ,  x2 ,  580
	sub x15 ,  x15 ,  x11
	srai x15 ,  x15 ,  2&31
	sw x15 ,  32 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x14 ,  x15
	add x23 ,  x13 ,  x15
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  -1025
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  612 ( x2 )
	add x26 ,  x0 ,  x0
	bltu x0, x15, .LBB0_183
.LBB0_514:                              //  %wexponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_461
.LBB0_183:                              //  %if.then419
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  624 ( x2 )
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_184:                              //  %cond.true160
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x8 ,  x15 ,  16&31
	srai x22 ,  x8 ,  31&31
	bge x22, x0, .LBB0_116
	jal x0, .LBB0_135
.LBB0_185:                              //  %cond.true458
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x8 ,  0 ( x15 )
	jal x0, .LBB0_463
.LBB0_186:                              //  %cond.true586
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lw x8 ,  0 ( x15 )
	jal x0, .LBB0_466
.LBB0_187:                              //  %cond.true627
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	add x11 ,  x0 ,  x8
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lhu x8 ,  0 ( x15 )
	add x22 ,  x0 ,  x0
	andi x15 ,  x11 ,  1
	bltu x0, x15, .LBB0_118
.LBB0_188:                              //  %if.end658
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  2
	andi x11 ,  x11 ,  -1025
	sw x11 ,  88 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  624 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x26, .LBB0_190
.LBB0_189:                              //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  88 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x14 ,  -129
	sw x14 ,  88 ( x2 )             //  4-byte Folded Spill
.LBB0_190:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x26, .LBB0_196
.LBB0_191:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x14 ,  x22 ,  x8
	bltu x0, x14, .LBB0_196
.LBB0_192:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_209
.LBB0_193:                              //  %if.else740
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  1
	beq x0, x15, .LBB0_210
.LBB0_194:                              //  %if.then747
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  496 ( x2 )
	addi x15 ,  x2 ,  496
.LBB0_195:                              //  %if.end750
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_234
.LBB0_196:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x15, .LBB0_211
.LBB0_197:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB0_201
.LBB0_198:                              //  %if.then671
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_216
.LBB0_199:                              //  %do.body731
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x8 ,  15
	slli x14 ,  x22 ,  28&31
	srli x22 ,  x22 ,  4&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x13
	lw x15 ,  0 ( x15 )
	sw x15 ,  -4 ( x10 )
	srli x15 ,  x8 ,  4&31
	addi x10 ,  x10 ,  -4
	or x8 ,  x14 ,  x15
	or x15 ,  x22 ,  x8
	bltu x0, x15, .LBB0_199
.LBB0_200:                              //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_234
.LBB0_201:                              //  %sw.bb690
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  9
	add x18 ,  x0 ,  x0
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	beq x22, x18, .LBB0_217
.LBB0_202:                              //  %sw.bb690
                                        //    in Loop: Header=BB0_8 Depth=2
	sltu x15 ,  x0 ,  x22
	beq x0, x15, .LBB0_218
.LBB0_203:                              //  %if.end697
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  88 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  576 ( x2 )
	andi x15 ,  x15 ,  1024
	bltu x0, x15, .LBB0_219
.LBB0_204:                              //  %do.body698.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_207
.LBB0_205:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_207 Depth=3
	sltu x15 ,  x0 ,  x22
.LBB0_206:                              //  %do.body698.us
                                        //    in Loop: Header=BB0_207 Depth=3
	sub x14 ,  x8 ,  x10
	add x10 ,  x0 ,  x9
	add x8 ,  x0 ,  x23
	add x22 ,  x0 ,  x26
	ori x14 ,  x14 ,  48
	sw x14 ,  -4 ( x10 )
	lw x14 ,  576 ( x2 )
	addi x10 ,  x10 ,  -4
	addi x14 ,  x14 ,  1
	sw x14 ,  576 ( x2 )
	beq x0, x15, .LBB0_233
.LBB0_207:                              //  %do.body698.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x19 ,  x0 ,  10
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x23 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	call __muldi3
	bne x22, x18, .LBB0_205
.LBB0_208:                              //    in Loop: Header=BB0_207 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x8
	jal x0, .LBB0_206
.LBB0_209:                              //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_234
.LBB0_210:                              //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_234
.LBB0_211:                              //  %do.body674.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x2 ,  496
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x15
.LBB0_212:                              //  %do.body674
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x22 ,  29&31
	srli x15 ,  x8 ,  3&31
	srli x22 ,  x22 ,  3&31
	or x15 ,  x14 ,  x15
	andi x14 ,  x8 ,  7
	ori x14 ,  x14 ,  48
	or x13 ,  x22 ,  x15
	add x8 ,  x0 ,  x15
	sw x14 ,  0 ( x10 )
	addi x10 ,  x10 ,  -4
	bltu x0, x13, .LBB0_212
.LBB0_213:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x10 ,  4
	andi x13 ,  x8 ,  1
	beq x0, x13, .LBB0_195
.LBB0_214:                              //  %do.end681
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x14 ,  48
	beq x0, x14, .LBB0_195
.LBB0_215:                              //  %if.then687
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_234
.LBB0_216:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	add x10 ,  x0 ,  x8
	call wcslen
	add x22 ,  x0 ,  x0
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	addi x12 ,  x2 ,  564
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_217:                              //    in Loop: Header=BB0_8 Depth=2
	sltu x15 ,  x15 ,  x8
	bltu x0, x15, .LBB0_203
.LBB0_218:                              //  %if.then693
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x8 ,  48
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  496 ( x2 )
	addi x15 ,  x2 ,  496
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_234
.LBB0_219:                              //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_221
.LBB0_220:                              //  %if.end725
                                        //    in Loop: Header=BB0_221 Depth=3
	sltu x15 ,  x0 ,  x22
	add x8 ,  x0 ,  x23
	add x22 ,  x0 ,  x26
	sw x12 ,  80 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB0_233
.LBB0_221:                              //  %do.body698
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x19 ,  x0 ,  10
	add x18 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x23 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	call __muldi3
	lw x14 ,  576 ( x2 )
	sub x15 ,  x8 ,  x10
	add x10 ,  x0 ,  x9
	lw x12 ,  80 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  48
	sw x15 ,  -4 ( x10 )
	addi x15 ,  x10 ,  -4
	addi x13 ,  x14 ,  1
	sw x13 ,  576 ( x2 )
	lb x14 ,  0 ( x12 )
	bne x13, x14, .LBB0_225
.LBB0_222:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_221 Depth=3
	beq x22, x18, .LBB0_226
.LBB0_223:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_221 Depth=3
	add x13 ,  x0 ,  x18
	bltu x0, x13, .LBB0_225
.LBB0_227:                              //  %land.lhs.true709
                                        //    in Loop: Header=BB0_221 Depth=3
	andi x14 ,  x14 ,  255
	xori x14 ,  x14 ,  127
	beq x0, x14, .LBB0_225
.LBB0_228:                              //  %if.then716
                                        //    in Loop: Header=BB0_221 Depth=3
	lw x15 ,  620 ( x2 )
	sw x0 ,  576 ( x2 )
	add x14 ,  x0 ,  x0
	sw x15 ,  -8 ( x10 )
	lbu x15 ,  1 ( x12 )
	beq x15, x14, .LBB0_230
.LBB0_229:                              //  %if.then716
                                        //    in Loop: Header=BB0_221 Depth=3
	addi x12 ,  x12 ,  1
.LBB0_230:                              //  %if.then716
                                        //    in Loop: Header=BB0_221 Depth=3
	addi x10 ,  x10 ,  -8
	bne x22, x18, .LBB0_220
	jal x0, .LBB0_232
.LBB0_226:                              //    in Loop: Header=BB0_221 Depth=3
	sltiu x13 ,  x8 ,  10
	beq x0, x13, .LBB0_227
.LBB0_225:                              //    in Loop: Header=BB0_221 Depth=3
	add x10 ,  x0 ,  x15
	bne x22, x18, .LBB0_220
.LBB0_232:                              //    in Loop: Header=BB0_221 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x8
	add x8 ,  x0 ,  x23
	add x22 ,  x0 ,  x26
	sw x12 ,  80 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_221
.LBB0_233:                              //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
.LBB0_234:                              //  %if.end750
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	sub x15 ,  x15 ,  x10
	srai x23 ,  x15 ,  2&31
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	blt x23, x26, .LBB0_236
.LBB0_235:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x23
.LBB0_236:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  624 ( x2 )
	andi x18 ,  x8 ,  2
	sltu x14 ,  x0 ,  x14
	add x14 ,  x14 ,  x15
	srli x15 ,  x18 ,  1&31
	beq x0, x15, .LBB0_237
.LBB0_244:                              //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x14 ,  2
.LBB0_237:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x26
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
	andi x26 ,  x8 ,  132
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	sw x10 ,  60 ( x2 )             //  4-byte Folded Spill
	beq x0, x26, .LBB0_238
.LBB0_247:                              //  %if.end828
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  624 ( x2 )
	beq x0, x15, .LBB0_251
.LBB0_248:                              //  %if.then830
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  624
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_250
.LBB0_249:                              //  %if.then840
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_251
	jal x0, .LBB0_478
.LBB0_238:                              //  %if.then782
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x25 ,  x15
	bge x0, x8, .LBB0_247
.LBB0_239:                              //  %while.cond787.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.blanks&4095
	lui x15 ,  (_svfwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_242
	jal x0, .LBB0_245
.LBB0_240:                              //    in Loop: Header=BB0_242 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_241:                              //  %if.end806
                                        //    in Loop: Header=BB0_242 Depth=3
	lui x30 ,  _svfwprintf_r.blanks&4095
	lui x15 ,  (_svfwprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_245
.LBB0_242:                              //  %while.body790
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_240
.LBB0_243:                              //  %if.then800
                                        //    in Loop: Header=BB0_242 Depth=3
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_241
	jal x0, .LBB0_478
.LBB0_250:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_251:                              //  %if.end847
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x18, .LBB0_275
.LBB0_252:                              //  %if.then850
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  8
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  8
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  92
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_274
.LBB0_253:                              //  %if.then861
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18 ,  84 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x18
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_254
.LBB0_515:                              //  %if.then861
	jal x0, .LBB0_479
.LBB0_254:                              //  %if.end868
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x26 ,  128
	bltu x0, x15, .LBB0_276
.LBB0_255:                              //  %if.then872
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x0 ,  64
	sub x8 ,  x25 ,  x15
	bge x0, x8, .LBB0_263
.LBB0_256:                              //  %while.cond877.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_259
	jal x0, .LBB0_261
.LBB0_257:                              //    in Loop: Header=BB0_259 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_258:                              //  %if.end896
                                        //    in Loop: Header=BB0_259 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_261
.LBB0_259:                              //  %while.body880
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_257
.LBB0_260:                              //  %if.then890
                                        //    in Loop: Header=BB0_259 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_258
	jal x0, .LBB0_479
.LBB0_261:                              //  %while.end898
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_290
.LBB0_262:                              //  %if.then910
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_263
.LBB0_516:                              //  %if.then910
	jal x0, .LBB0_479
.LBB0_263:                              //  %if.end918
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x8 ,  x19 ,  x23
	bge x0, x8, .LBB0_277
.LBB0_264:                              //  %while.cond923.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_267
	jal x0, .LBB0_269
.LBB0_265:                              //    in Loop: Header=BB0_267 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_266:                              //  %if.end942
                                        //    in Loop: Header=BB0_267 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_269
.LBB0_267:                              //  %while.body926
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_265
.LBB0_268:                              //  %if.then936
                                        //    in Loop: Header=BB0_267 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_266
	jal x0, .LBB0_479
.LBB0_269:                              //  %while.end944
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_285
.LBB0_270:                              //  %if.then956
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_271
.LBB0_517:                              //  %if.then956
	jal x0, .LBB0_479
.LBB0_271:                              //  %if.end963
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  256
	bltu x0, x15, .LBB0_278
.LBB0_272:                              //  %if.then967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x23 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  8 ( x12 )
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_286
.LBB0_273:                              //  %if.then979
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	add x23 ,  x0 ,  x0
	addi x22 ,  x0 ,  90
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_430
	jal x0, .LBB0_480
.LBB0_274:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_275:                              //  %if.end868
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x18 ,  84 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x26 ,  128
	beq x0, x15, .LBB0_255
.LBB0_276:                              //    in Loop: Header=BB0_8 Depth=2
	addi x26 ,  x0 ,  64
	sub x8 ,  x19 ,  x23
	blt x0, x8, .LBB0_264
.LBB0_277:                              //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  256
	beq x0, x15, .LBB0_272
.LBB0_278:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	sltiu x15 ,  x27 ,  102
	bltu x0, x15, .LBB0_287
.LBB0_279:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x23
	add x12 ,  x0 ,  x23
	call __nedf2
	bltu x0, x10, .LBB0_297
.LBB0_280:                              //  %if.then993
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	lui x30 ,  .str.8&4095
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x12 )
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_303
.LBB0_281:                              //  %if.then1003
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x20 ,  x2 ,  500
	addi x22 ,  x0 ,  90
	bltu x0, x10, .LBB0_480
.LBB0_282:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	andi x14 ,  x8 ,  1
	bltu x0, x14, .LBB0_304
.LBB0_283:                              //  %if.end1009
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  608 ( x2 )
	blt x14, x15, .LBB0_304
.LBB0_284:                              //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	andi x15 ,  x8 ,  4
	beq x0, x15, .LBB0_439
.LBB0_431:                              //  %if.then1673
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x8 ,  x25 ,  x27
	bge x0, x8, .LBB0_439
.LBB0_432:                              //  %while.cond1678.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.blanks&4095
	lui x15 ,  (_svfwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_435
	jal x0, .LBB0_437
.LBB0_433:                              //    in Loop: Header=BB0_435 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_434:                              //  %if.end1697
                                        //    in Loop: Header=BB0_435 Depth=3
	lui x30 ,  _svfwprintf_r.blanks&4095
	lui x15 ,  (_svfwprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_437
.LBB0_435:                              //  %while.body1681
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_433
.LBB0_436:                              //  %if.then1691
                                        //    in Loop: Header=BB0_435 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_434
	jal x0, .LBB0_480
.LBB0_285:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  256
	beq x0, x15, .LBB0_272
	jal x0, .LBB0_278
.LBB0_286:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x20 ,  x20 ,  8
	add x23 ,  x0 ,  x0
	addi x22 ,  x0 ,  90
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
	jal x0, .LBB0_439
.LBB0_287:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  4
	lw x13 ,  568 ( x2 )
	add x11 ,  x0 ,  x8
	addi x8 ,  x20 ,  8
	add x23 ,  x0 ,  x0
	sw x15 ,  4 ( x20 )
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	andi x11 ,  x11 ,  1
	lw x10 ,  576 ( x2 )
	sw x15 ,  0 ( x20 )
	lw x15 ,  8 ( x12 )
	addi x14 ,  x15 ,  4
	addi x15 ,  x13 ,  1
	sw x14 ,  8 ( x12 )
	sw x15 ,  568 ( x2 )
	bltu x0, x11, .LBB0_291
.LBB0_288:                              //  %if.else1522
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x11 ,  x10 ,  2
	beq x0, x11, .LBB0_291
.LBB0_289:                              //  %if.else1632
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x13 ,  7
	addi x22 ,  x0 ,  90
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_311
	jal x0, .LBB0_403
.LBB0_245:                              //  %while.end808
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_296
.LBB0_246:                              //  %if.then820
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  84 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_247
	jal x0, .LBB0_478
.LBB0_437:                              //  %while.end1699
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x15 ,  x15 ,  x14
	lw x14 ,  568 ( x2 )
	sw x15 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_440
.LBB0_438:                              //  %if.then1711
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	beq x0, x10, .LBB0_439
	jal x0, .LBB0_480
.LBB0_290:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	sub x8 ,  x19 ,  x23
	blt x0, x8, .LBB0_264
	jal x0, .LBB0_277
.LBB0_291:                              //  %if.then1528
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	slti x13 ,  x13 ,  7
	addi x22 ,  x0 ,  90
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	bltu x0, x13, .LBB0_294
.LBB0_292:                              //  %if.then1538
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x20 ,  x0 ,  x12
	call __ssprint_r
	bltu x0, x10, .LBB0_480
.LBB0_293:                              //  %if.then1538.if.end1544_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  568 ( x2 )
	addi x8 ,  x2 ,  500
	add x12 ,  x0 ,  x20
	lw x14 ,  8 ( x20 )
.LBB0_294:                              //  %if.end1544
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x14 ,  4
	sw x14 ,  8 ( x12 )
	addi x14 ,  x0 ,  4
	sw x14 ,  4 ( x8 )
	addi x14 ,  x2 ,  616
	sw x14 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_308
.LBB0_295:                              //  %if.then1555
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x8 ,  x2 ,  500
	beq x0, x10, .LBB0_309
	jal x0, .LBB0_480
.LBB0_296:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	lw x15 ,  624 ( x2 )
	bltu x0, x15, .LBB0_248
	jal x0, .LBB0_251
.LBB0_297:                              //  %if.else1078
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  608 ( x2 )
	addi x12 ,  x2 ,  564
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	bge x0, x14, .LBB0_326
.LBB0_298:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	srai x15 ,  x15 ,  2&31
	add x8 ,  x0 ,  x14
	blt x14, x15, .LBB0_300
.LBB0_299:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x15
.LBB0_300:                              //  %if.else1185
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x8, .LBB0_332
.LBB0_301:                              //  %if.then1198
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x13 ,  0 ( x20 )
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_331
.LBB0_302:                              //  %if.then1210
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_332
	jal x0, .LBB0_479
.LBB0_303:                              //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x20 ,  x20 ,  8
	addi x22 ,  x0 ,  90
	lw x15 ,  576 ( x2 )
	andi x14 ,  x8 ,  1
	beq x0, x14, .LBB0_283
.LBB0_304:                              //  %if.then1015
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  564
	lw x14 ,  8 ( x12 )
	addi x14 ,  x14 ,  4
	sw x14 ,  8 ( x12 )
	addi x14 ,  x0 ,  4
	sw x14 ,  4 ( x20 )
	addi x14 ,  x2 ,  616
	sw x14 ,  0 ( x20 )
	lw x14 ,  568 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_319
.LBB0_305:                              //  %if.then1025
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	bltu x0, x10, .LBB0_480
.LBB0_306:                              //  %if.then1025.if.end1031_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	addi x20 ,  x2 ,  500
	addi x12 ,  x2 ,  564
	addi x8 ,  x15 ,  -1
	blt x0, x8, .LBB0_320
	jal x0, .LBB0_307
.LBB0_308:                              //    in Loop: Header=BB0_8 Depth=2
	addi x8 ,  x8 ,  8
.LBB0_309:                              //  %if.end1561
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x23
	add x12 ,  x0 ,  x23
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	call __eqdf2
	beq x0, x10, .LBB0_313
.LBB0_310:                              //  %if.then1564
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	lw x14 ,  576 ( x2 )
	lw x13 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  0 ( x8 )
	lw x15 ,  568 ( x2 )
	slli x14 ,  x14 ,  2&31
	addi x14 ,  x14 ,  -4
	add x13 ,  x14 ,  x13
	sw x14 ,  4 ( x8 )
	sw x13 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_325
.LBB0_311:                              //  %if.then1578
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
.LBB0_312:                              //  %if.then1578
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x8 ,  x2 ,  500
	beq x0, x10, .LBB0_403
	jal x0, .LBB0_480
.LBB0_313:                              //  %if.else1585
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	addi x12 ,  x2 ,  564
	addi x9 ,  x15 ,  -1
	bge x0, x9, .LBB0_402
.LBB0_314:                              //  %while.cond1590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x8 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB0_317
	jal x0, .LBB0_329
.LBB0_315:                              //    in Loop: Header=BB0_317 Depth=3
	addi x8 ,  x8 ,  8
.LBB0_316:                              //  %if.end1609
                                        //    in Loop: Header=BB0_317 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x9 ,  x9 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x8 )
	addi x15 ,  x0 ,  16
	bge x15, x9, .LBB0_329
.LBB0_317:                              //  %while.body1593
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x8 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_315
.LBB0_318:                              //  %if.then1603
                                        //    in Loop: Header=BB0_317 Depth=3
	lw x11 ,  72 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x8 ,  x2 ,  500
	beq x0, x10, .LBB0_316
	jal x0, .LBB0_490
.LBB0_319:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	addi x8 ,  x15 ,  -1
	bge x0, x8, .LBB0_307
.LBB0_320:                              //  %while.cond1036.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_323
	jal x0, .LBB0_428
.LBB0_321:                              //    in Loop: Header=BB0_323 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_322:                              //  %if.end1055
                                        //    in Loop: Header=BB0_323 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_428
.LBB0_323:                              //  %while.body1039
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_321
.LBB0_324:                              //  %if.then1049
                                        //    in Loop: Header=BB0_323 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_322
	jal x0, .LBB0_480
.LBB0_325:                              //    in Loop: Header=BB0_8 Depth=2
	addi x8 ,  x8 ,  8
	jal x0, .LBB0_403
.LBB0_326:                              //  %if.then1081
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x12 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x15, .LBB0_343
.LBB0_327:                              //  %if.then1091
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  90
	bltu x0, x10, .LBB0_480
.LBB0_328:                              //  %if.then1091.if.end1097_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  608 ( x2 )
	addi x20 ,  x2 ,  500
	addi x12 ,  x2 ,  564
	jal x0, .LBB0_344
.LBB0_329:                              //  %while.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x9 ,  2&31
	sw x15 ,  4 ( x8 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_401
.LBB0_330:                              //  %if.then1623
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_312
.LBB0_331:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_332:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x23, x8, .LBB0_334
.LBB0_333:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x23
.LBB0_334:                              //  %if.end1217
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB0_350
.LBB0_335:                              //  %while.cond1228.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_338
	jal x0, .LBB0_340
.LBB0_336:                              //    in Loop: Header=BB0_338 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_337:                              //  %if.end1247
                                        //    in Loop: Header=BB0_338 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_340
.LBB0_338:                              //  %while.body1231
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_336
.LBB0_339:                              //  %if.then1241
                                        //    in Loop: Header=BB0_338 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_337
	jal x0, .LBB0_479
.LBB0_340:                              //  %while.end1249
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_349
.LBB0_341:                              //  %if.then1261
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x14 ,  88 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_351
	jal x0, .LBB0_479
.LBB0_343:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  90
.LBB0_344:                              //  %if.end1097
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  576 ( x2 )
	andi x15 ,  x8 ,  1
	or x15 ,  x15 ,  x14
	or x15 ,  x13 ,  x15
	beq x0, x15, .LBB0_430
.LBB0_345:                              //  %if.then1104
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  616
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x15, .LBB0_405
.LBB0_346:                              //  %if.then1114
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	bltu x0, x10, .LBB0_480
.LBB0_347:                              //  %if.then1114.if.end1120_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  608 ( x2 )
	addi x15 ,  x2 ,  500
	addi x12 ,  x2 ,  564
	bge x14, x0, .LBB0_475
	jal x0, .LBB0_406
.LBB0_349:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_350:                              //  %cleanup.cont1271
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  88 ( x2 )             //  4-byte Folded Reload
.LBB0_351:                              //  %cleanup.cont1271
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  60 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	add x19 ,  x15 ,  x10
	andi x15 ,  x14 ,  1024
	bltu x0, x15, .LBB0_353
.LBB0_352:                              //  %cleanup.cont1271.if.end1404_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x19
	lw x15 ,  576 ( x2 )
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_358
.LBB0_353:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	blt x0, x14, .LBB0_376
.LBB0_354:                              //  %while.cond1276.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x22, .LBB0_376
.LBB0_355:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	slli x14 ,  x15 ,  2&31
	add x8 ,  x14 ,  x10
	bltu x8, x19, .LBB0_357
.LBB0_356:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x19
.LBB0_357:                              //  %while.end1397
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x0 ,  64
	add x23 ,  x0 ,  x0
.LBB0_358:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  88 ( x2 )             //  4-byte Folded Reload
	addi x22 ,  x0 ,  90
	lw x14 ,  608 ( x2 )
	andi x13 ,  x13 ,  1
	bltu x0, x13, .LBB0_360
.LBB0_359:                              //  %if.end1404
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x14, x15, .LBB0_412
.LBB0_360:                              //  %if.then1410
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  8 ( x12 )
	addi x13 ,  x13 ,  4
	sw x13 ,  8 ( x12 )
	addi x13 ,  x0 ,  4
	sw x13 ,  4 ( x20 )
	addi x13 ,  x2 ,  616
	sw x13 ,  0 ( x20 )
	lw x13 ,  568 ( x2 )
	addi x11 ,  x13 ,  1
	slti x13 ,  x13 ,  7
	sw x11 ,  568 ( x2 )
	bltu x0, x13, .LBB0_411
.LBB0_361:                              //  %if.then1420
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	bltu x0, x10, .LBB0_480
.LBB0_362:                              //  %if.then1420.if.end1427_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  608 ( x2 )
	addi x20 ,  x2 ,  500
	addi x12 ,  x2 ,  564
	lw x15 ,  576 ( x2 )
	lw x10 ,  60 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_412
.LBB0_363:                              //  %if.else522
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x26
	call strlen
	add x14 ,  x0 ,  x10
	sltiu x15 ,  x14 ,  100
	slli x18 ,  x14 ,  2&31
	bltu x0, x15, .LBB0_364
.LBB0_518:                              //  %if.else522
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_83
.LBB0_364:                              //  %if.end541
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x0
	addi x10 ,  x2 ,  100
	addi x12 ,  x2 ,  564
	add x9 ,  x0 ,  x14
	sw x15 ,  64 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB0_367
.LBB0_365:                              //  %for.body.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x9
.LBB0_366:                              //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x13 ,  0 ( x26 )
	addi x26 ,  x26 ,  1
	addi x14 ,  x14 ,  -1
	sw x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB0_366
.LBB0_367:                              //  %cleanup550.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x18 ,  x10
	add x22 ,  x0 ,  x23
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  52 ( x2 )             //  4-byte Folded Spill
	add x23 ,  x0 ,  x9
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	add x26 ,  x0 ,  x22
	add x15 ,  x0 ,  x26
	bge x23, x26, .LBB0_235
	jal x0, .LBB0_236
.LBB0_368:                              //  %if.else573
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x26
	call wcslen
	add x22 ,  x0 ,  x0
	add x23 ,  x0 ,  x10
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x22
	sw x22 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_448
.LBB0_369:                              //  %if.else340
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x6 ,  608 ( x2 )
	xori x15 ,  x27 ,  102
	bltu x0, x15, .LBB0_370
.LBB0_519:                              //  %if.else340
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_164
.LBB0_370:                              //  %if.else366
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  576 ( x2 )
	bge x6, x15, .LBB0_373
.LBB0_371:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14 ,  x0 ,  x0
	blt x14, x6, .LBB0_449
.LBB0_372:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  2
	sub x14 ,  x14 ,  x6
	jal x0, .LBB0_450
.LBB0_373:                              //  %if.then369
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x13 ,  1
	add x23 ,  x15 ,  x6
	addi x27 ,  x0 ,  103
	add x22 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB0_451
	jal x0, .LBB0_460
.LBB0_374:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_470
.LBB0_375:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x23 ,  x22 ,  2
	jal x0, .LBB0_471
.LBB0_376:                              //  %while.body1281.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	slt x23 ,  x0 ,  x14
.LBB0_377:                              //  %while.body1281
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_393 Depth 4
	lw x15 ,  8 ( x12 )
	sw x14 ,  52 ( x2 )             //  4-byte Folded Spill
	andi x26 ,  x23 ,  1
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  620
	sw x15 ,  0 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	sw x14 ,  568 ( x2 )
	bltu x0, x26, .LBB0_379
.LBB0_378:                              //  %while.body1281
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x14 ,  80 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1
	sw x14 ,  80 ( x2 )             //  4-byte Folded Spill
.LBB0_379:                              //  %while.body1281
                                        //    in Loop: Header=BB0_377 Depth=3
	slti x15 ,  x15 ,  7
	bltu x0, x15, .LBB0_381
.LBB0_380:                              //  %if.then1299
                                        //    in Loop: Header=BB0_377 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_382
	jal x0, .LBB0_479
.LBB0_381:                              //    in Loop: Header=BB0_377 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_382:                              //  %if.end1305
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x15 ,  576 ( x2 )
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x14 ,  80 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x15 ,  x19
	srai x15 ,  x15 ,  2&31
	lb x8 ,  0 ( x14 )
	blt x8, x15, .LBB0_384
.LBB0_383:                              //  %if.end1305
                                        //    in Loop: Header=BB0_377 Depth=3
	add x8 ,  x0 ,  x15
.LBB0_384:                              //  %if.end1305
                                        //    in Loop: Header=BB0_377 Depth=3
	bge x0, x8, .LBB0_387
.LBB0_385:                              //  %if.then1320
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x19 ,  0 ( x20 )
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_397
.LBB0_386:                              //  %if.then1332
                                        //    in Loop: Header=BB0_377 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	bltu x0, x10, .LBB0_479
.LBB0_387:                              //  %if.end1339
                                        //    in Loop: Header=BB0_377 Depth=3
	add x15 ,  x0 ,  x0
	blt x15, x8, .LBB0_389
.LBB0_388:                              //  %if.end1339
                                        //    in Loop: Header=BB0_377 Depth=3
	add x8 ,  x0 ,  x0
.LBB0_389:                              //  %if.end1339
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB0_399
.LBB0_390:                              //  %while.cond1351.preheader
                                        //    in Loop: Header=BB0_377 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_393
	jal x0, .LBB0_395
.LBB0_391:                              //    in Loop: Header=BB0_393 Depth=4
	addi x20 ,  x20 ,  8
.LBB0_392:                              //  %if.end1370
                                        //    in Loop: Header=BB0_393 Depth=4
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_395
.LBB0_393:                              //  %while.body1354
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_377 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_391
.LBB0_394:                              //  %if.then1364
                                        //    in Loop: Header=BB0_393 Depth=4
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_392
	jal x0, .LBB0_479
.LBB0_395:                              //  %while.end1372
                                        //    in Loop: Header=BB0_377 Depth=3
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_398
.LBB0_396:                              //  %if.then1384
                                        //    in Loop: Header=BB0_377 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_399
	jal x0, .LBB0_479
.LBB0_397:                              //    in Loop: Header=BB0_377 Depth=3
	addi x20 ,  x20 ,  8
	add x15 ,  x0 ,  x0
	bge x15, x8, .LBB0_388
	jal x0, .LBB0_389
.LBB0_398:                              //    in Loop: Header=BB0_377 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_399:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_377 Depth=3
	xori x15 ,  x23 ,  -1
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	lw x10 ,  60 ( x2 )             //  4-byte Folded Reload
	sub x22 ,  x22 ,  x15
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	sub x14 ,  x14 ,  x26
	slt x23 ,  x0 ,  x14
	lb x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  2&31
	add x19 ,  x15 ,  x19
	blt x0, x14, .LBB0_377
.LBB0_400:                              //  %cleanup.cont1394
                                        //    in Loop: Header=BB0_377 Depth=3
	blt x0, x22, .LBB0_377
	jal x0, .LBB0_355
.LBB0_401:                              //    in Loop: Header=BB0_8 Depth=2
	addi x8 ,  x8 ,  8
.LBB0_402:                              //  %if.end1649
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
.LBB0_403:                              //  %if.end1649
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  8 ( x12 )
	slli x15 ,  x15 ,  2&31
	add x14 ,  x15 ,  x14
	sw x15 ,  4 ( x8 )
	addi x15 ,  x2 ,  580
	sw x15 ,  0 ( x8 )
	lw x15 ,  568 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	beq x0, x15, .LBB0_429
.LBB0_404:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x8 ,  8
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
	jal x0, .LBB0_439
.LBB0_405:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x20 ,  8
	bge x14, x0, .LBB0_475
.LBB0_406:                              //  %while.cond1125.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x13 ,  (_svfwprintf_r.zeroes>>12)&1048575
	sub x8 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x15 )
	addi x13 ,  x0 ,  -17
	bge x13, x14, .LBB0_409
	jal x0, .LBB0_472
.LBB0_407:                              //    in Loop: Header=BB0_409 Depth=3
	addi x15 ,  x15 ,  8
.LBB0_408:                              //  %if.end1144
                                        //    in Loop: Header=BB0_409 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x14 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	addi x14 ,  x0 ,  16
	bge x14, x8, .LBB0_472
.LBB0_409:                              //  %while.body1128
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x12 )
	sw x26 ,  4 ( x15 )
	addi x14 ,  x14 ,  64
	sw x14 ,  8 ( x12 )
	lw x14 ,  568 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_407
.LBB0_410:                              //  %if.then1138
                                        //    in Loop: Header=BB0_409 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x15 ,  x2 ,  500
	beq x0, x10, .LBB0_408
	jal x0, .LBB0_480
.LBB0_411:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
.LBB0_412:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	slli x13 ,  x15 ,  2&31
	sub x15 ,  x15 ,  x14
	add x13 ,  x13 ,  x10
	add x9 ,  x0 ,  x15
	sub x13 ,  x13 ,  x8
	srai x13 ,  x13 ,  2&31
	blt x15, x13, .LBB0_414
.LBB0_413:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x13
.LBB0_414:                              //  %if.end1427
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x9, .LBB0_418
.LBB0_415:                              //  %if.then1442
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  8 ( x12 )
	slli x14 ,  x9 ,  2&31
	sw x8 ,  0 ( x20 )
	sw x14 ,  4 ( x20 )
	add x13 ,  x14 ,  x13
	lw x14 ,  568 ( x2 )
	sw x13 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_421
.LBB0_416:                              //  %if.then1454
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  72 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	call __ssprint_r
	bltu x0, x10, .LBB0_490
.LBB0_417:                              //  %if.then1454.if.end1461_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  608 ( x2 )
	addi x20 ,  x2 ,  500
	addi x12 ,  x2 ,  564
	lw x14 ,  576 ( x2 )
	sub x15 ,  x14 ,  x15
.LBB0_418:                              //  %if.end1461
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x23, x9, .LBB0_422
.LBB0_419:                              //  %if.end1461
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14 ,  x0 ,  x23
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	add x8 ,  x14 ,  x15
	blt x0, x8, .LBB0_423
.LBB0_307:                              //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
	jal x0, .LBB0_439
.LBB0_421:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	bge x23, x9, .LBB0_419
.LBB0_422:                              //    in Loop: Header=BB0_8 Depth=2
	sub x14 ,  x0 ,  x9
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	add x8 ,  x14 ,  x15
	bge x0, x8, .LBB0_307
.LBB0_423:                              //  %while.cond1473.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_426
	jal x0, .LBB0_428
.LBB0_424:                              //    in Loop: Header=BB0_426 Depth=3
	addi x20 ,  x20 ,  8
.LBB0_425:                              //  %if.end1492
                                        //    in Loop: Header=BB0_426 Depth=3
	lui x30 ,  _svfwprintf_r.zeroes&4095
	lui x15 ,  (_svfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB0_428
.LBB0_426:                              //  %while.body1476
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	sw x26 ,  4 ( x20 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_424
.LBB0_427:                              //  %if.then1486
                                        //    in Loop: Header=BB0_426 Depth=3
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_425
	jal x0, .LBB0_480
.LBB0_428:                              //  %while.end1057
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	sw x14 ,  8 ( x12 )
	lw x15 ,  568 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  568 ( x2 )
	bltu x0, x15, .LBB0_446
.LBB0_429:                              //  %if.then1069
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	bltu x0, x10, .LBB0_480
.LBB0_430:                              //  %if.end1670
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
.LBB0_439:                              //  %if.end1719thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  572 ( x2 )
.LBB0_440:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x27, x25, .LBB0_442
.LBB0_441:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	add x25 ,  x0 ,  x27
.LBB0_442:                              //  %if.end1719
                                        //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x19 ,  x25
	beq x0, x15, .LBB0_444
.LBB0_443:                              //  %land.lhs.true1729
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	bltu x0, x10, .LBB0_480
.LBB0_444:                              //  %if.end1733
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  568 ( x2 )
	bltu x0, x11, .LBB0_445
.LBB0_520:                              //  %if.end1733
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_445:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	call _free_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	add x8 ,  x0 ,  x24
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_521
.LBB0_522:                              //  %if.then1738
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_521:                              //  %if.then1738
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_446:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x20 ,  8
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
	jal x0, .LBB0_439
.LBB0_447:                              //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x18
	add x22 ,  x0 ,  x18
	sw x18 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x18 ,  48 ( x2 )             //  4-byte Folded Spill
.LBB0_448:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x26
	add x26 ,  x0 ,  x15
	addi x12 ,  x2 ,  564
	add x15 ,  x0 ,  x26
	blt x23, x26, .LBB0_523
.LBB0_524:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_235
.LBB0_523:                              //  %sw.epilog763
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_236
.LBB0_449:                              //    in Loop: Header=BB0_8 Depth=2
	slti x14 ,  x0 ,  1
.LBB0_450:                              //  %if.else375
                                        //    in Loop: Header=BB0_8 Depth=2
	add x23 ,  x15 ,  x14
	addi x27 ,  x0 ,  103
	add x22 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	beq x0, x15, .LBB0_460
.LBB0_451:                              //  %if.end385
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x6, .LBB0_460
.LBB0_452:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	add x5 ,  x0 ,  x0
	lb x14 ,  0 ( x15 )
	xori x15 ,  x14 ,  127
	beq x0, x15, .LBB0_468
.LBB0_453:                              //  %while.cond392.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x14, x6, .LBB0_468
.LBB0_454:                              //  %if.end401.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x0
	add x5 ,  x0 ,  x15
	add x22 ,  x0 ,  x15
.LBB0_455:                              //  %if.end401
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  80 ( x2 )             //  4-byte Folded Reload
	lbu x13 ,  1 ( x11 )
	beq x13, x15, .LBB0_457
.LBB0_456:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	addi x11 ,  x11 ,  1
.LBB0_457:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	sub x6 ,  x6 ,  x14
	sltu x14 ,  x0 ,  x13
	sw x11 ,  80 ( x2 )             //  4-byte Folded Spill
	add x22 ,  x14 ,  x22
	xori x14 ,  x13 ,  0
	sltiu x14 ,  x14 ,  1
	add x5 ,  x14 ,  x5
	lb x14 ,  0 ( x11 )
	xori x13 ,  x14 ,  127
	beq x0, x13, .LBB0_469
.LBB0_458:                              //  %if.end401
                                        //    in Loop: Header=BB0_455 Depth=3
	blt x14, x6, .LBB0_455
	jal x0, .LBB0_469
.LBB0_468:                              //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x5
.LBB0_469:                              //  %while.end412
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x23 ,  x5
	sw x6 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x5 ,  52 ( x2 )              //  4-byte Folded Spill
	add x23 ,  x22 ,  x15
	lw x15 ,  612 ( x2 )
	add x26 ,  x0 ,  x0
	beq x0, x15, .LBB0_461
.LBB0_525:                              //  %while.end412
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_461:                              //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x0 ,  x26
	blt x23, x26, .LBB0_526
.LBB0_527:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_235
.LBB0_526:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_236
.LBB0_459:                              //    in Loop: Header=BB0_8 Depth=2
	add x23 ,  x0 ,  x6
	add x22 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB0_451
.LBB0_460:                              //    in Loop: Header=BB0_8 Depth=2
	sw x6 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  612 ( x2 )
	add x26 ,  x0 ,  x0
	beq x0, x15, .LBB0_528
.LBB0_529:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_528:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_461
.LBB0_462:                              //  %cond.true463
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lhu x8 ,  0 ( x15 )
.LBB0_463:                              //  %cond.false467
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
.LBB0_464:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  88 ( x2 )             //  4-byte Folded Reload
	addi x27 ,  x0 ,  111
	add x15 ,  x0 ,  x0
	andi x14 ,  x14 ,  -1025
	sw x14 ,  88 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  624 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x26, .LBB0_530
.LBB0_531:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_189
.LBB0_530:                              //  %cond.end483
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_190
.LBB0_465:                              //  %cond.true591
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  628 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  628 ( x2 )
	lhu x8 ,  0 ( x15 )
.LBB0_466:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x26 ,  76 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	addi x27 ,  x0 ,  117
	slti x15 ,  x0 ,  1
	sw x0 ,  624 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x26, .LBB0_532
.LBB0_533:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_189
.LBB0_532:                              //  %cond.false595
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_190
.LBB0_470:                              //    in Loop: Header=BB0_8 Depth=2
	slti x23 ,  x0 ,  1
.LBB0_471:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x6 ,  48 ( x2 )              //  4-byte Folded Spill
	addi x27 ,  x0 ,  102
	sw x14 ,  52 ( x2 )             //  4-byte Folded Spill
	add x22 ,  x0 ,  x14
	lw x15 ,  612 ( x2 )
	add x26 ,  x0 ,  x0
	beq x0, x15, .LBB0_534
.LBB0_535:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_534:                              //  %if.end385.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_461
.LBB0_472:                              //  %while.end1146
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  8 ( x12 )
	slli x14 ,  x8 ,  2&31
	sw x14 ,  4 ( x15 )
	add x13 ,  x14 ,  x13
	lw x14 ,  568 ( x2 )
	sw x13 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_474
.LBB0_473:                              //  %if.then1158
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  564
	addi x15 ,  x2 ,  500
	beq x0, x10, .LBB0_475
	jal x0, .LBB0_480
.LBB0_474:                              //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	addi x15 ,  x15 ,  8
.LBB0_475:                              //  %if.end1165
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  576 ( x2 )
	lw x13 ,  8 ( x12 )
	slli x14 ,  x14 ,  2&31
	add x13 ,  x14 ,  x13
	sw x14 ,  4 ( x15 )
	lw x14 ,  568 ( x2 )
	sw x13 ,  8 ( x12 )
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x13 ,  0 ( x15 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  568 ( x2 )
	bltu x0, x14, .LBB0_477
.LBB0_476:                              //  %if.then1177
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	addi x12 ,  x2 ,  564
	addi x20 ,  x2 ,  500
	beq x0, x10, .LBB0_430
	jal x0, .LBB0_480
.LBB0_477:                              //    in Loop: Header=BB0_8 Depth=2
	addi x20 ,  x15 ,  8
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB0_431
	jal x0, .LBB0_439
.LBB0_478:
	lw x18 ,  84 ( x2 )             //  4-byte Folded Reload
.LBB0_479:
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
.LBB0_480:                              //  %error
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	beq x0, x11, .LBB0_482
.LBB0_481:                              //  %if.then1751
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_482:                              //  %if.end1752
	lbu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_484
.LBB0_483:                              //  %if.end1752
	addi x19 ,  x0 ,  -1
.LBB0_484:                              //  %cleanup1762
	add x10 ,  x0 ,  x19
	lw x8 ,  660 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  664 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  668 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  672 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  676 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  680 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  684 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  688 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  692 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  696 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  700 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  704 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  708 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  712
	.cfi_def_cfa 2, 0
	ret
.LBB0_485:                              //  %done
	lw x15 ,  572 ( x2 )
	beq x0, x15, .LBB0_487
.LBB0_486:                              //  %land.lhs.true1742
	addi x12 ,  x2 ,  564
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __ssprint_r
	bltu x0, x10, .LBB0_482
.LBB0_487:                              //  %if.end1746
	sw x0 ,  568 ( x2 )
	lbu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_483
	jal x0, .LBB0_484
.LBB0_488:                              //  %if.then9
	addi x15 ,  x0 ,  12
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_483
.LBB0_489:
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lbu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_483
	jal x0, .LBB0_484
.LBB0_490:
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	bltu x0, x11, .LBB0_481
	jal x0, .LBB0_482
.LBB0_491:                              //  %cleanup
	lh x15 ,  12 ( x9 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x9 )
	lw x19 ,  68 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_483
	jal x0, .LBB0_484
.LBB0_492:                              //  %cleanup550
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
.LBB0_493:                              //  %if.then254
	lh x15 ,  12 ( x9 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x9 )
	lbu x15 ,  12 ( x9 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_483
	jal x0, .LBB0_484
.Lfunc_end0:
	.size	_svfwprintf_r, .Lfunc_end0-_svfwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_28
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_30
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_31
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_36
	.long	.LBB0_39
	.long	.LBB0_120
	.long	.LBB0_38
	.long	.LBB0_21
	.long	.LBB0_120
	.long	.LBB0_42
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_60
	.long	.LBB0_120
	.long	.LBB0_73
	.long	.LBB0_120
	.long	.LBB0_60
	.long	.LBB0_60
	.long	.LBB0_60
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_43
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_76
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_95
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_60
	.long	.LBB0_120
	.long	.LBB0_73
	.long	.LBB0_85
	.long	.LBB0_60
	.long	.LBB0_60
	.long	.LBB0_60
	.long	.LBB0_44
	.long	.LBB0_85
	.long	.LBB0_27
	.long	.LBB0_120
	.long	.LBB0_46
	.long	.LBB0_120
	.long	.LBB0_52
	.long	.LBB0_96
	.long	.LBB0_101
	.long	.LBB0_27
	.long	.LBB0_120
	.long	.LBB0_76
	.long	.LBB0_41
	.long	.LBB0_102
	.long	.LBB0_120
	.long	.LBB0_120
	.long	.LBB0_107
	.long	.LBB0_120
	.long	.LBB0_41
                                        //  -- End function
	.text
	.type	wcvt,@function          //  -- Begin function wcvt
wcvt:                                   //  @wcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	lui x30 ,  -2147483648&4095
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x23 ,  x0 ,  x14
	lui x14 ,  (-2147483648>>12)&1048575
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x22 ,  x0 ,  x17
	add x18 ,  x0 ,  x16
	add x9 ,  x0 ,  x13
	add x20 ,  x0 ,  x11
	add x25 ,  x0 ,  x0
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x12, x25, .LBB1_1
.LBB1_2:                                //  %entry
	add x21 ,  x0 ,  x12
	jal x0, .LBB1_3
.LBB1_1:
	xor x21 ,  x14 ,  x12
.LBB1_3:                                //  %entry
	lw x8 ,  68 ( x2 )
	srai x14 ,  x12 ,  31&31
	ori x26 ,  x22 ,  32
	lw x24 ,  64 ( x2 )
	andi x14 ,  x14 ,  45
	sw x14 ,  0 ( x15 )
	xori x15 ,  x26 ,  97
	bltu x0, x15, .LBB1_26
.LBB1_4:                                //  %if.then2
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x18
	call frexp
	add x21 ,  x0 ,  x0
	lui x13 ,  (1069547520>>12)&1048575
	add x12 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __nedf2
	bltu x0, x10, .LBB1_6
.LBB1_5:                                //  %if.then4
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_6:                                //  %if.end5
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.4>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	or x23 ,  x14 ,  x30
	addi x14 ,  x0 ,  97
	beq x22, x14, .LBB1_8
.LBB1_7:                                //  %if.end5
	add x23 ,  x0 ,  x15
.LBB1_8:                                //  %if.end5
	addi x27 ,  x9 ,  1
	add x9 ,  x0 ,  x0
	lui x18 ,  (1076887552>>12)&1048575
	add x22 ,  x0 ,  x8
.LBB1_9:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __fixdfsi
	add x21 ,  x0 ,  x10
	slli x15 ,  x21 ,  2&31
	add x15 ,  x15 ,  x23
	lw x25 ,  0 ( x15 )
	sw x25 ,  0 ( x22 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x26 ,  x27 ,  -1
	addi x22 ,  x22 ,  4
	xori x15 ,  x27 ,  1
	beq x0, x15, .LBB1_11
.LBB1_10:                               //  %do.body
                                        //    in Loop: Header=BB1_9 Depth=1
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	call __nedf2
	add x27 ,  x0 ,  x26
	bltu x0, x10, .LBB1_9
.LBB1_11:                               //  %do.end
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __gtdf2
	blt x0, x10, .LBB1_17
.LBB1_12:                               //  %lor.lhs.false14
	andi x15 ,  x21 ,  1
	beq x0, x15, .LBB1_14
.LBB1_13:                               //  %lor.lhs.false14
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __eqdf2
	bltu x0, x10, .LBB1_14
.LBB1_17:                               //  %if.then19
	lw x14 ,  60 ( x23 )
	addi x15 ,  x22 ,  -4
	bne x25, x14, .LBB1_18
.LBB1_19:                               //  %while.body.preheader
	addi x13 ,  x0 ,  48
.LBB1_20:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x0 ,  x15
	sw x13 ,  0 ( x14 )
	addi x15 ,  x14 ,  -4
	lw x14 ,  -4 ( x14 )
	beq x14, x25, .LBB1_20
.LBB1_21:                               //  %while.end
	xori x13 ,  x14 ,  57
	bltu x0, x13, .LBB1_23
.LBB1_22:                               //  %cond.true
	lw x14 ,  40 ( x23 )
	jal x0, .LBB1_24
.LBB1_26:                               //  %if.end37
	xori x27 ,  x26 ,  102
	bltu x0, x27, .LBB1_28
.LBB1_27:
	addi x13 ,  x0 ,  3
	jal x0, .LBB1_29
.LBB1_28:                               //  %if.else44
	xori x15 ,  x26 ,  101
	addi x13 ,  x0 ,  2
	sltiu x15 ,  x15 ,  1
	add x9 ,  x9 ,  x15
.LBB1_29:                               //  %if.end52
	addi x16 ,  x2 ,  8
	addi x17 ,  x2 ,  4
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x14 ,  x0 ,  x9
	add x15 ,  x0 ,  x18
	lw x22 ,  72 ( x2 )
	call _dtoa_r
	add x19 ,  x0 ,  x10
	andi x15 ,  x23 ,  1
	bltu x0, x15, .LBB1_32
.LBB1_30:                               //  %if.end52
	xori x15 ,  x26 ,  103
	bltu x0, x15, .LBB1_32
.LBB1_31:                               //  %if.end52.if.end94_crit_edge
	lw x23 ,  4 ( x2 )
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	bge x0, x22, .LBB1_49
.LBB1_45:                               //  %if.end94
	bge x0, x15, .LBB1_49
.LBB1_46:                               //  %for.body.preheader
	add x15 ,  x0 ,  x8
.LBB1_47:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x25 ,  x19
	addi x25 ,  x25 ,  1
	lb x14 ,  0 ( x14 )
	sw x14 ,  0 ( x15 )
	bge x25, x22, .LBB1_49
.LBB1_48:                               //  %for.body
                                        //    in Loop: Header=BB1_47 Depth=1
	lw x14 ,  0 ( x24 )
	addi x15 ,  x15 ,  4
	blt x25, x14, .LBB1_47
	jal x0, .LBB1_49
.LBB1_32:                               //  %if.then66
	add x23 ,  x9 ,  x19
	bltu x0, x27, .LBB1_38
.LBB1_33:                               //  %if.then72
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x12
	call __eqdf2
	beq x0, x10, .LBB1_35
.LBB1_34:                               //  %if.then72
	lbu x15 ,  0 ( x19 )
	xori x15 ,  x15 ,  48
	bltu x0, x15, .LBB1_35
.LBB1_36:                               //  %if.then78
	slti x15 ,  x0 ,  1
	sub x15 ,  x15 ,  x9
	sw x15 ,  0 ( x18 )
	jal x0, .LBB1_37
.LBB1_18:
	add x14 ,  x0 ,  x25
	xori x13 ,  x14 ,  57
	beq x0, x13, .LBB1_22
.LBB1_23:                               //  %cond.false
	addi x14 ,  x14 ,  1
.LBB1_24:                               //  %if.end36
	sw x14 ,  0 ( x15 )
.LBB1_25:                               //  %if.end36
	sub x15 ,  x22 ,  x8
	srai x15 ,  x15 ,  2&31
	sw x15 ,  0 ( x24 )
.LBB1_49:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.LBB1_14:                               //  %while.cond29.preheader
	bge x0, x26, .LBB1_25
.LBB1_15:
	addi x15 ,  x0 ,  48
.LBB1_16:                               //  %while.body33
                                        //  =>This Inner Loop Header: Depth=1
	sw x15 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x26 ,  x26 ,  -1
	blt x0, x26, .LBB1_16
	jal x0, .LBB1_25
.LBB1_35:                               //  %if.then72.if.end81_crit_edge
	lw x15 ,  0 ( x18 )
.LBB1_37:                               //  %if.end81
	add x23 ,  x15 ,  x23
.LBB1_38:                               //  %if.end83
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB1_40
.LBB1_39:                               //  %if.end87.thread
	sw x23 ,  4 ( x2 )
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	blt x0, x22, .LBB1_45
	jal x0, .LBB1_49
.LBB1_40:                               //  %if.end87
	lw x15 ,  4 ( x2 )
	bgeu x15, x23, .LBB1_43
.LBB1_41:                               //  %while.body91.preheader
	addi x14 ,  x0 ,  48
.LBB1_42:                               //  %while.body91
                                        //  =>This Inner Loop Header: Depth=1
	addi x13 ,  x15 ,  1
	sw x13 ,  4 ( x2 )
	sb x14 ,  0 ( x15 )
	lw x15 ,  4 ( x2 )
	bltu x15, x23, .LBB1_42
.LBB1_43:                               //  %if.end94.loopexit
	add x23 ,  x0 ,  x15
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	blt x0, x22, .LBB1_45
	jal x0, .LBB1_49
.Lfunc_end1:
	.size	wcvt, .Lfunc_end1-wcvt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_svfwprintf_r.blanks,@object //  @_svfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	2
_svfwprintf_r.blanks:
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.long	32                      //  0x20
	.size	_svfwprintf_r.blanks, 64

	.address_space	0
	.type	_svfwprintf_r.zeroes,@object //  @_svfwprintf_r.zeroes
	.p2align	2
_svfwprintf_r.zeroes:
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.long	48                      //  0x30
	.size	_svfwprintf_r.zeroes, 64

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.str:
	.long	73                      //  0x49
	.long	78                      //  0x4e
	.long	70                      //  0x46
	.long	0                       //  0x0
	.size	.str, 16

	.address_space	0
	.type	.str.1,@object          //  @.str.1
	.p2align	2
.str.1:
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	102                     //  0x66
	.long	0                       //  0x0
	.size	.str.1, 16

	.address_space	0
	.type	.str.2,@object          //  @.str.2
	.p2align	2
.str.2:
	.long	78                      //  0x4e
	.long	65                      //  0x41
	.long	78                      //  0x4e
	.long	0                       //  0x0
	.size	.str.2, 16

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.p2align	2
.str.3:
	.long	110                     //  0x6e
	.long	97                      //  0x61
	.long	110                     //  0x6e
	.long	0                       //  0x0
	.size	.str.3, 16

	.address_space	0
	.type	.str.4,@object          //  @.str.4
	.p2align	2
.str.4:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	97                      //  0x61
	.long	98                      //  0x62
	.long	99                      //  0x63
	.long	100                     //  0x64
	.long	101                     //  0x65
	.long	102                     //  0x66
	.long	0                       //  0x0
	.size	.str.4, 68

	.address_space	0
	.type	.str.5,@object          //  @.str.5
	.p2align	2
.str.5:
	.long	40                      //  0x28
	.long	110                     //  0x6e
	.long	117                     //  0x75
	.long	108                     //  0x6c
	.long	108                     //  0x6c
	.long	41                      //  0x29
	.long	0                       //  0x0
	.size	.str.5, 28

	.address_space	0
	.type	.str.6,@object          //  @.str.6
	.p2align	2
.str.6:
	.long	48                      //  0x30
	.long	49                      //  0x31
	.long	50                      //  0x32
	.long	51                      //  0x33
	.long	52                      //  0x34
	.long	53                      //  0x35
	.long	54                      //  0x36
	.long	55                      //  0x37
	.long	56                      //  0x38
	.long	57                      //  0x39
	.long	65                      //  0x41
	.long	66                      //  0x42
	.long	67                      //  0x43
	.long	68                      //  0x44
	.long	69                      //  0x45
	.long	70                      //  0x46
	.long	0                       //  0x0
	.size	.str.6, 68

	.address_space	0
	.type	.str.7,@object          //  @.str.7
	.p2align	2
.str.7:
	.long	98                      //  0x62
	.long	117                     //  0x75
	.long	103                     //  0x67
	.long	32                      //  0x20
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	32                      //  0x20
	.long	118                     //  0x76
	.long	102                     //  0x66
	.long	112                     //  0x70
	.long	114                     //  0x72
	.long	105                     //  0x69
	.long	110                     //  0x6e
	.long	116                     //  0x74
	.long	102                     //  0x66
	.long	58                      //  0x3a
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	100                     //  0x64
	.long	32                      //  0x20
	.long	98                      //  0x62
	.long	97                      //  0x61
	.long	115                     //  0x73
	.long	101                     //  0x65
	.long	0                       //  0x0
	.size	.str.7, 104

	.address_space	0
	.type	.str.8,@object          //  @.str.8
	.p2align	2
.str.8:
	.long	48                      //  0x30
	.long	0                       //  0x0
	.size	.str.8, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
