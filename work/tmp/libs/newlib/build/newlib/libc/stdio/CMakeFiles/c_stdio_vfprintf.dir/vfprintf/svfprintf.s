	.text
	.file	"svfprintf.c"
	.globl	_svfprintf_r            //  -- Begin function _svfprintf_r
	.type	_svfprintf_r,@function
_svfprintf_r:                           //  @_svfprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -352
	.cfi_adjust_cfa_offset 352
	sw x9 ,  344 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x24 ,  316 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x27 ,  304 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x1 ,  348 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  340 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  336 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  332 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  328 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  324 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  320 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  312 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  308 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x8 ,  300 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x24 ,  x0 ,  x12
	add x27 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x13 ,  284 ( x2 )
	call _localeconv_r
	lw x10 ,  0 ( x10 )
	sw x10 ,  16 ( x2 )             //  4-byte Folded Spill
	call strlen
	lbu x15 ,  12 ( x27 )
	sw x10 ,  20 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  16 ( x27 )
	bltu x0, x15, .LBB0_4
.LBB0_2:                                //  %if.then
	addi x8 ,  x0 ,  64
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call _malloc_r
	sw x10 ,  16 ( x27 )
	sw x10 ,  0 ( x27 )
	bltu x0, x10, .LBB0_3
.LBB0_516:                              //  %if.then
	jal x0, .LBB0_514
.LBB0_3:                                //  %if.end
	sw x8 ,  20 ( x27 )
.LBB0_4:                                //  %if.end11
	addi x15 ,  x2 ,  192
	add x19 ,  x0 ,  x0
	addi x18 ,  x2 ,  256
	addi x23 ,  x0 ,  10
	addi x25 ,  x0 ,  90
	sw x0 ,  260 ( x2 )
	sw x27 ,  76 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  256 ( x2 )
	addi x15 ,  x2 ,  92
	add x20 ,  x0 ,  x19
	sw x0 ,  8 ( x18 )
	sw x19 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  68 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  100
	sw x15 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  269
	addi x14 ,  x15 ,  2
	addi x15 ,  x15 ,  3
	sw x14 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
.LBB0_5:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_203 Depth 3
                                        //        Child Loop BB0_212 Depth 3
                                        //        Child Loop BB0_219 Depth 3
                                        //        Child Loop BB0_208 Depth 3
                                        //        Child Loop BB0_452 Depth 3
                                        //        Child Loop BB0_167 Depth 3
                                        //        Child Loop BB0_392 Depth 3
                                        //        Child Loop BB0_174 Depth 3
                                        //        Child Loop BB0_478 Depth 3
                                        //        Child Loop BB0_489 Depth 3
                                        //        Child Loop BB0_494 Depth 3
                                        //        Child Loop BB0_248 Depth 3
                                        //        Child Loop BB0_263 Depth 3
                                        //        Child Loop BB0_282 Depth 3
                                        //        Child Loop BB0_325 Depth 3
                                        //        Child Loop BB0_365 Depth 3
                                        //        Child Loop BB0_394 Depth 3
                                        //          Child Loop BB0_412 Depth 4
                                        //        Child Loop BB0_441 Depth 3
                                        //        Child Loop BB0_424 Depth 3
                                        //        Child Loop BB0_333 Depth 3
                                        //        Child Loop BB0_345 Depth 3
                                        //      Child Loop BB0_6 Depth 2
	addi x21 ,  x2 ,  192
	add x8 ,  x0 ,  x24
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_8
.LBB0_6:                                //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB0_8
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_6 Depth=2
	addi x8 ,  x8 ,  1
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
.LBB0_8:                                //  %while.end
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
                                        //        Child Loop BB0_203 Depth 3
                                        //        Child Loop BB0_212 Depth 3
                                        //        Child Loop BB0_219 Depth 3
                                        //        Child Loop BB0_208 Depth 3
                                        //        Child Loop BB0_452 Depth 3
                                        //        Child Loop BB0_167 Depth 3
                                        //        Child Loop BB0_392 Depth 3
                                        //        Child Loop BB0_174 Depth 3
                                        //        Child Loop BB0_478 Depth 3
                                        //        Child Loop BB0_489 Depth 3
                                        //        Child Loop BB0_494 Depth 3
                                        //        Child Loop BB0_248 Depth 3
                                        //        Child Loop BB0_263 Depth 3
                                        //        Child Loop BB0_282 Depth 3
                                        //        Child Loop BB0_325 Depth 3
                                        //        Child Loop BB0_365 Depth 3
                                        //        Child Loop BB0_394 Depth 3
                                        //          Child Loop BB0_412 Depth 4
                                        //        Child Loop BB0_441 Depth 3
                                        //        Child Loop BB0_424 Depth 3
                                        //        Child Loop BB0_333 Depth 3
                                        //        Child Loop BB0_345 Depth 3
	sub x9 ,  x8 ,  x24
	beq x0, x9, .LBB0_13
.LBB0_9:                                //  %if.then19
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	sw x9 ,  4 ( x21 )
	sw x24 ,  0 ( x21 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %if.then24
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_12
	jal x0, .LBB0_268
.LBB0_11:                               //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
.LBB0_12:                               //  %if.end30
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x15 ,  0 ( x8 )
	add x20 ,  x20 ,  x9
.LBB0_13:                               //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	bltu x0, x15, .LBB0_14
.LBB0_517:                              //  %if.end32
	jal x0, .LBB0_511
.LBB0_14:                               //  %if.end37
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  -1
	addi x15 ,  x8 ,  1
	add x22 ,  x0 ,  x19
	sw x19 ,  84 ( x2 )             //  4-byte Folded Spill
	sb x0 ,  283 ( x2 )
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  72 ( x2 )             //  4-byte Folded Spill
.LBB0_15:                               //  %rflag
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_16 Depth 4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	lb x18 ,  0 ( x15 )
	addi x26 ,  x15 ,  1
.LBB0_16:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_19 Depth 5
                                        //              Child Loop BB0_23 Depth 6
                                        //            Child Loop BB0_18 Depth 5
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB0_19
.LBB0_17:                               //  %do.body.preheader
                                        //    in Loop: Header=BB0_16 Depth=4
	add x22 ,  x0 ,  x19
.LBB0_18:                               //  %do.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
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
	bltu x0, x15, .LBB0_18
	jal x0, .LBB0_16
.LBB0_19:                               //  %reswitch
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_23 Depth 6
	addi x15 ,  x18 ,  -32
	bltu x25, x15, .LBB0_121
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
.LBB0_21:                               //  %sw.bb69
                                        //    in Loop: Header=BB0_19 Depth=5
	lb x18 ,  0 ( x26 )
	addi x15 ,  x26 ,  1
	xori x14 ,  x18 ,  42
	beq x0, x14, .LBB0_52
.LBB0_22:                               //  %while.cond81.preheader
                                        //    in Loop: Header=BB0_19 Depth=5
	addi x8 ,  x18 ,  -48
	add x10 ,  x0 ,  x0
	add x26 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x8, .LBB0_25
.LBB0_23:                               //  %while.body85
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_15 Depth=3
                                        //          Parent Loop BB0_16 Depth=4
                                        //            Parent Loop BB0_19 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	addi x11 ,  x0 ,  10
	call __mulsi3
	lb x18 ,  0 ( x26 )
	add x10 ,  x10 ,  x8
	addi x26 ,  x26 ,  1
	addi x8 ,  x18 ,  -48
	sltiu x15 ,  x8 ,  10
	bltu x0, x15, .LBB0_23
.LBB0_24:                               //  %while.end90
                                        //    in Loop: Header=BB0_19 Depth=5
	addi x15 ,  x0 ,  -1
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB0_16
.LBB0_25:                               //  %while.end90.thread
                                        //    in Loop: Header=BB0_19 Depth=5
	sw x10 ,  72 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x18 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_17
	jal x0, .LBB0_19
.LBB0_26:                               //  %sw.bb127
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  32
	jal x0, .LBB0_43
.LBB0_27:                               //  %sw.bb55
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x14 ,  283 ( x2 )
	add x15 ,  x0 ,  x26
	bltu x0, x14, .LBB0_15
.LBB0_28:                               //  %if.then57
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB0_39
.LBB0_29:                               //  %sw.bb59
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  1
	jal x0, .LBB0_43
.LBB0_30:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	add x10 ,  x0 ,  x9
	call _localeconv_r
	lw x10 ,  4 ( x10 )
	sw x10 ,  24 ( x2 )             //  4-byte Folded Spill
	call strlen
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  64 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	beq x0, x8, .LBB0_15
.LBB0_31:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x26
	beq x0, x14, .LBB0_15
.LBB0_32:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB0_34
.LBB0_33:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	ori x13 ,  x13 ,  1024
.LBB0_34:                               //  %land.lhs.true50
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x13 ,  84 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_15
.LBB0_35:                               //  %sw.bb61
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x22 ,  0 ( x15 )
	add x15 ,  x0 ,  x26
	bge x22, x0, .LBB0_15
.LBB0_36:                               //  %if.end65
                                        //    in Loop: Header=BB0_15 Depth=3
	sub x22 ,  x0 ,  x22
.LBB0_37:                               //  %sw.bb66.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  4
	jal x0, .LBB0_43
.LBB0_38:                               //  %sw.bb68
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x0 ,  43
.LBB0_39:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sb x15 ,  283 ( x2 )
.LBB0_40:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_15
.LBB0_41:                               //  %sw.bb93
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  128
	jal x0, .LBB0_43
.LBB0_42:                               //  %sw.bb104
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  8
.LBB0_43:                               //  %rflag
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x15 ,  84 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_15
.LBB0_44:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x15 ,  0 ( x26 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB0_49
.LBB0_45:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  64
	jal x0, .LBB0_48
.LBB0_46:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	lbu x15 ,  0 ( x26 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB0_50
.LBB0_47:                               //  %sw.bb115
                                        //    in Loop: Header=BB0_15 Depth=3
	addi x14 ,  x0 ,  16
.LBB0_48:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	add x15 ,  x0 ,  x26
	jal x0, .LBB0_51
.LBB0_49:                               //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x26 ,  1
	addi x14 ,  x0 ,  512
	jal x0, .LBB0_51
.LBB0_50:                               //    in Loop: Header=BB0_15 Depth=3
	addi x15 ,  x26 ,  1
	addi x14 ,  x0 ,  32
.LBB0_51:                               //  %sw.bb106
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	or x13 ,  x13 ,  x14
	sw x13 ,  84 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_52:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	lw x14 ,  284 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  284 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	sw x13 ,  72 ( x2 )             //  4-byte Folded Spill
	blt x14, x13, .LBB0_15
.LBB0_53:                               //  %if.then74
                                        //    in Loop: Header=BB0_15 Depth=3
	sw x14 ,  72 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_54:                               //  %sw.bb389
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x2 ,  256
	andi x15 ,  x14 ,  32
	bltu x0, x15, .LBB0_59
.LBB0_55:                               //  %if.else395
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x14 ,  16
	bltu x0, x15, .LBB0_58
.LBB0_56:                               //  %if.else400
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x14 ,  64
	bltu x0, x15, .LBB0_61
.LBB0_57:                               //  %if.else406
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x14 ,  512
	bltu x0, x15, .LBB0_62
.LBB0_58:                               //  %if.then398
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	jal x0, .LBB0_60
.LBB0_59:                               //  %if.then392
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	srai x14 ,  x20 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
.LBB0_60:                               //  %for.cond
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20 ,  0 ( x15 )
	add x24 ,  x0 ,  x26
	add x8 ,  x0 ,  x24
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_61:                               //  %if.then403
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	add x24 ,  x0 ,  x26
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x20 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_62:                               //  %if.then409
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	add x24 ,  x0 ,  x26
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x20 ,  0 ( x15 )
	add x8 ,  x0 ,  x24
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB0_6
	jal x0, .LBB0_8
.LBB0_63:                               //  %sw.bb177
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB0_65
.LBB0_64:                               //  %if.else184
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x8 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x25 ,  4 ( x15 )
	jal x0, .LBB0_66
.LBB0_65:                               //  %if.then180
                                        //    in Loop: Header=BB0_8 Depth=2
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
	add x8 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
.LBB0_66:                               //  %if.end187
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x19 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x25
	call __nedf2
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x8 ,  44 ( x2 )              //  4-byte Folded Spill
	bltu x0, x10, .LBB0_72
.LBB0_67:                               //  %if.then190
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x20
	call __ltdf2
	bge x10, x0, .LBB0_69
.LBB0_68:                               //  %if.then194
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
.LBB0_69:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	lui x14 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x24 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	blt x18, x14, .LBB0_71
.LBB0_70:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x15
.LBB0_71:                               //  %if.end195
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x20
	addi x19 ,  x0 ,  3
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x8 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	andi x12 ,  x12 ,  -129
	add x15 ,  x0 ,  x27
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	bge x19, x27, .LBB0_234
	jal x0, .LBB0_235
.LBB0_72:                               //  %if.end202
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x25
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call __unorddf2
	bltu x0, x10, .LBB0_87
.LBB0_73:                               //  %if.end223
                                        //    in Loop: Header=BB0_8 Depth=2
	ori x8 ,  x18 ,  32
	xori x9 ,  x8 ,  97
	bltu x0, x9, .LBB0_124
.LBB0_74:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  97
	beq x18, x15, .LBB0_144
.LBB0_75:                               //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  88
	jal x0, .LBB0_145
.LBB0_76:                               //  %sw.bb131
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	add x20 ,  x0 ,  x0
	slti x19 ,  x0 ,  1
	add x8 ,  x0 ,  x20
	add x27 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x0 ,  283 ( x2 )
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	sb x15 ,  92 ( x2 )
	jal x0, .LBB0_123
.LBB0_77:                               //  %sw.bb462
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x24 ,  0 ( x15 )
	sb x0 ,  283 ( x2 )
	beq x0, x24, .LBB0_127
.LBB0_78:                               //  %if.else473
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	blt x19, x0, .LBB0_148
.LBB0_79:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	add x10 ,  x0 ,  x24
	add x12 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call memchr
	beq x10, x20, .LBB0_81
.LBB0_80:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x19 ,  x10 ,  x24
.LBB0_81:                               //  %if.then476
                                        //    in Loop: Header=BB0_8 Depth=2
	add x27 ,  x0 ,  x20
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x8 ,  x0 ,  x20
	jal x0, .LBB0_150
.LBB0_82:                               //  %sw.bb137.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB0_93
.LBB0_83:                               //  %cond.false142
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB0_130
.LBB0_84:                               //  %cond.false147
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB0_153
.LBB0_85:                               //  %cond.false154
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	andi x15 ,  x12 ,  512
	beq x0, x15, .LBB0_131
.LBB0_86:                               //  %cond.true157
                                        //    in Loop: Header=BB0_8 Depth=2
	slli x15 ,  x19 ,  24&31
	srai x19 ,  x15 ,  24&31
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB0_94
	jal x0, .LBB0_132
.LBB0_87:                               //  %cond.true210
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x25, x0, .LBB0_89
.LBB0_88:                               //  %if.then215
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
.LBB0_89:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lui x14 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	or x24 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	blt x18, x14, .LBB0_91
.LBB0_90:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x15
.LBB0_91:                               //  %if.end216
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	addi x19 ,  x0 ,  3
	andi x12 ,  x12 ,  -129
	add x8 ,  x0 ,  x20
	add x27 ,  x0 ,  x20
	jal x0, .LBB0_233
.LBB0_92:                               //  %sw.bb135
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x12 ,  x12 ,  16
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB0_83
.LBB0_93:                               //  %cond.true140
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	blt x20, x0, .LBB0_132
.LBB0_94:                               //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x27, .LBB0_194
	jal x0, .LBB0_195
.LBB0_95:                               //  %sw.bb418
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x0 ,  79
	ori x12 ,  x12 ,  16
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB0_101
.LBB0_96:                               //  %cond.true423
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	jal x0, .LBB0_193
.LBB0_97:                               //  %sw.bb490
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x18 ,  x0 ,  85
	ori x12 ,  x12 ,  16
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	beq x0, x15, .LBB0_107
.LBB0_98:                               //  %cond.true495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  284 ( x2 )
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  4
	sw x15 ,  284 ( x2 )
	addi x15 ,  x14 ,  8
	lw x19 ,  0 ( x14 )
	sw x15 ,  284 ( x2 )
	slti x15 ,  x0 ,  1
	lw x20 ,  4 ( x14 )
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x27, .LBB0_194
	jal x0, .LBB0_195
.LBB0_99:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x15 ,  (.str.6>>12)&1048575
	lui x30 ,  .str.6&4095
	jal x0, .LBB0_112
.LBB0_100:                              //  %sw.bb420.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB0_96
.LBB0_101:                              //  %cond.false425
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB0_140
.LBB0_102:                              //  %cond.false430
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  64
	bltu x0, x15, .LBB0_191
.LBB0_103:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_192
.LBB0_104:                              //  %cond.false437
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x19 ,  x19 ,  255
	jal x0, .LBB0_192
.LBB0_105:                              //  %sw.bb456
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	lui x30 ,  .str.4&4095
	addi x18 ,  x0 ,  120
	add x20 ,  x0 ,  x0
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	ori x12 ,  x12 ,  2
	lw x19 ,  0 ( x15 )
	addi x15 ,  x0 ,  48
	sb x18 ,  91 ( x2 )
	sb x15 ,  90 ( x2 )
	lui x15 ,  (.str.4>>12)&1048575
	or x13 ,  x15 ,  x30
	addi x15 ,  x0 ,  2
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x27, .LBB0_194
	jal x0, .LBB0_195
.LBB0_106:                              //  %sw.bb492.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB0_98
.LBB0_107:                              //  %cond.false497
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB0_141
.LBB0_108:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  64
	beq x0, x15, .LBB0_109
.LBB0_518:                              //  %cond.false502
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_387
.LBB0_109:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB0_110
.LBB0_519:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_388
.LBB0_110:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x19 ,  x19 ,  255
	jal x0, .LBB0_388
.LBB0_111:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
.LBB0_112:                              //  %hex
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	andi x15 ,  x12 ,  32
	bltu x0, x15, .LBB0_117
.LBB0_113:                              //  %cond.false533
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  16
	bltu x0, x15, .LBB0_142
.LBB0_114:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  64
	beq x0, x15, .LBB0_115
.LBB0_520:                              //  %cond.false538
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_389
.LBB0_115:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	andi x14 ,  x12 ,  512
	lw x19 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_143
.LBB0_116:                              //  %cond.false545
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x19 ,  x19 ,  255
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB0_118
	jal x0, .LBB0_120
.LBB0_117:                              //  %cond.true531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	addi x14 ,  x15 ,  8
	lw x19 ,  0 ( x15 )
	sw x14 ,  284 ( x2 )
	lw x20 ,  4 ( x15 )
	andi x15 ,  x12 ,  1
	beq x0, x15, .LBB0_120
.LBB0_118:                              //  %cond.end561
                                        //    in Loop: Header=BB0_8 Depth=2
	or x15 ,  x20 ,  x19
	beq x0, x15, .LBB0_120
.LBB0_119:                              //  %if.then568
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	ori x12 ,  x12 ,  2
	sb x18 ,  91 ( x2 )
	sb x15 ,  90 ( x2 )
.LBB0_120:                              //  %if.end573
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x12 ,  x12 ,  -1025
	addi x15 ,  x0 ,  2
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x27, .LBB0_194
	jal x0, .LBB0_195
.LBB0_121:                              //  %sw.default674
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x18, .LBB0_122
.LBB0_521:                              //  %sw.default674
	jal x0, .LBB0_511
.LBB0_122:                              //  %if.end678
                                        //    in Loop: Header=BB0_8 Depth=2
	add x25 ,  x0 ,  x19
	add x20 ,  x0 ,  x19
	add x27 ,  x0 ,  x19
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	slti x19 ,  x0 ,  1
	sb x18 ,  92 ( x2 )
	sb x0 ,  283 ( x2 )
	add x8 ,  x0 ,  x25
	add x11 ,  x0 ,  x25
.LBB0_123:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x24 ,  x2 ,  92
	jal x0, .LBB0_151
.LBB0_124:                              //  %if.else251
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x13 ,  -1
	beq x0, x15, .LBB0_154
.LBB0_125:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  103
	beq x8, x15, .LBB0_155
.LBB0_126:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x13
	add x14 ,  x0 ,  x0
	sw x14 ,  56 ( x2 )             //  4-byte Folded Spill
	bne x13, x14, .LBB0_156
	jal x0, .LBB0_157
.LBB0_127:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	bltu x19, x15, .LBB0_129
.LBB0_128:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x15
.LBB0_129:                              //  %if.then466
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x24 ,  x15 ,  x30
	jal x0, .LBB0_149
.LBB0_130:                              //  %cond.true145
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
.LBB0_131:                              //  %cond.end167
                                        //    in Loop: Header=BB0_8 Depth=2
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB0_94
.LBB0_132:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  -1
	bge x15, x27, .LBB0_134
.LBB0_133:                              //    in Loop: Header=BB0_8 Depth=2
	andi x12 ,  x12 ,  -129
.LBB0_134:                              //  %if.then587.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	sb x15 ,  283 ( x2 )
	sltu x15 ,  x0 ,  x19
	sub x19 ,  x0 ,  x19
	add x15 ,  x15 ,  x20
	sub x20 ,  x0 ,  x15
	jal x0, .LBB0_135
.LBB0_140:                              //  %cond.true428
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	jal x0, .LBB0_192
.LBB0_141:                              //  %cond.true500
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
	jal x0, .LBB0_388
.LBB0_142:                              //  %cond.true536
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x19 ,  0 ( x15 )
.LBB0_143:                              //  %cond.end558
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB0_118
	jal x0, .LBB0_120
.LBB0_144:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  120
.LBB0_145:                              //  %if.then228
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  72 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  91 ( x2 )
	addi x15 ,  x0 ,  48
	ori x14 ,  x14 ,  2
	sb x15 ,  90 ( x2 )
	sw x14 ,  84 ( x2 )             //  4-byte Folded Spill
	slti x15 ,  x13 ,  100
	bltu x0, x15, .LBB0_152
.LBB0_146:                              //  %if.then237
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x13 ,  1
	call _malloc_r
	add x24 ,  x0 ,  x10
	sw x10 ,  56 ( x2 )             //  4-byte Folded Spill
	bltu x0, x10, .LBB0_158
	jal x0, .LBB0_147
.LBB0_148:                              //  %if.else486
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x24
	call strlen
	add x19 ,  x0 ,  x10
.LBB0_149:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	add x8 ,  x0 ,  x20
	add x27 ,  x0 ,  x20
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
.LBB0_150:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x11 ,  x0 ,  x20
.LBB0_151:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x27
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	bge x19, x27, .LBB0_234
	jal x0, .LBB0_235
.LBB0_152:                              //    in Loop: Header=BB0_8 Depth=2
	addi x24 ,  x2 ,  92
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_158
.LBB0_153:                              //  %cond.true150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x19 ,  x15 ,  16&31
	srai x20 ,  x19 ,  31&31
	bge x20, x0, .LBB0_94
	jal x0, .LBB0_132
.LBB0_154:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  6
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_157
.LBB0_155:                              //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	add x14 ,  x0 ,  x0
	sw x14 ,  56 ( x2 )             //  4-byte Folded Spill
	beq x13, x14, .LBB0_157
.LBB0_156:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x13
.LBB0_157:                              //  %if.else255
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
.LBB0_158:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x25, x19, .LBB0_162
.LBB0_159:                              //  %if.end267
                                        //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x25
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x8 ,  103
	beq x0, x9, .LBB0_163
.LBB0_160:                              //  %if.end43.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x15
	xori x20 ,  x8 ,  102
	bltu x0, x20, .LBB0_177
.LBB0_161:                              //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x0 ,  3
	add x8 ,  x0 ,  x27
	jal x0, .LBB0_178
.LBB0_162:                              //    in Loop: Header=BB0_8 Depth=2
	xor x19 ,  x15 ,  x25
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x8 ,  103
	bltu x0, x9, .LBB0_160
.LBB0_163:                              //  %if.then2.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  276
	add x11 ,  x0 ,  x19
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	call frexp
	add x19 ,  x0 ,  x0
	lui x13 ,  (1069547520>>12)&1048575
	add x12 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	call __nedf2
	bltu x0, x10, .LBB0_165
.LBB0_164:                              //  %if.then4.i
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	sw x15 ,  276 ( x2 )
.LBB0_165:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.4>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	or x9 ,  x14 ,  x30
	addi x14 ,  x0 ,  97
	beq x18, x14, .LBB0_167
.LBB0_166:                              //  %if.end5.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x15
.LBB0_167:                              //  %do.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1076887552>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	add x27 ,  x0 ,  x19
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __fixdfsi
	add x8 ,  x0 ,  x10
	add x14 ,  x27 ,  x24
	add x15 ,  x8 ,  x9
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x14 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	addi x19 ,  x27 ,  1
	beq x15, x27, .LBB0_169
.LBB0_168:                              //  %do.body.i
                                        //    in Loop: Header=BB0_167 Depth=3
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_167
.LBB0_169:                              //  %do.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	sw x9 ,  52 ( x2 )              //  4-byte Folded Spill
	call __gtdf2
	add x9 ,  x19 ,  x24
	blt x0, x10, .LBB0_172
.LBB0_170:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x8 ,  1
	bltu x0, x15, .LBB0_171
.LBB0_522:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_390
.LBB0_171:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	call __eqdf2
	beq x0, x10, .LBB0_172
.LBB0_523:                              //  %lor.lhs.false14.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_390
.LBB0_172:                              //  %if.then19.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x9 ,  -1
	sw x15 ,  288 ( x2 )
	lbu x14 ,  -1 ( x9 )
	lbu x13 ,  15 ( x13 )
	bne x14, x13, .LBB0_189
.LBB0_173:                              //  %while.body.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB0_174:                              //  %while.body.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x13 ,  x0 ,  48
	sb x13 ,  0 ( x15 )
	lw x13 ,  288 ( x2 )
	addi x15 ,  x13 ,  -1
	sw x15 ,  288 ( x2 )
	lbu x13 ,  -1 ( x13 )
	beq x13, x14, .LBB0_174
.LBB0_175:                              //  %while.end.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x13 ,  57
	bltu x0, x14, .LBB0_190
.LBB0_176:                              //  %cond.true.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	lbu x14 ,  10 ( x14 )
	sb x14 ,  0 ( x15 )
	jal x0, .LBB0_457
.LBB0_177:                              //  %if.else50.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x8 ,  101
	addi x13 ,  x0 ,  2
	sltiu x15 ,  x15 ,  1
	add x8 ,  x15 ,  x27
.LBB0_178:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  276
	addi x16 ,  x2 ,  292
	addi x17 ,  x2 ,  288
	add x12 ,  x0 ,  x19
	add x14 ,  x0 ,  x8
	lw x11 ,  44 ( x2 )             //  4-byte Folded Reload
	call _dtoa_r
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x10
	add x14 ,  x0 ,  x9
	bltu x0, x14, .LBB0_185
.LBB0_179:                              //  %if.end58.i
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  1
	bltu x0, x15, .LBB0_185
.LBB0_180:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  288 ( x2 )
	ori x5 ,  x12 ,  256
	sub x15 ,  x9 ,  x24
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	bltu x0, x14, .LBB0_181
.LBB0_524:                              //  %if.end58.if.end96_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_458
.LBB0_181:                              //  %if.else286
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x18 ,  70
	beq x0, x15, .LBB0_182
.LBB0_525:                              //  %if.else286
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_464
.LBB0_182:                              //  %if.else307.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  276 ( x2 )
	andi x15 ,  x12 ,  1
	or x15 ,  x27 ,  x15
	bge x0, x11, .LBB0_183
.LBB0_526:                              //  %if.else307.thread
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_470
.LBB0_183:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x0
	bne x15, x8, .LBB0_184
.LBB0_527:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_506
.LBB0_184:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x27
	addi x19 ,  x15 ,  1
	jal x0, .LBB0_507
.LBB0_185:                              //  %if.then68.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x8 ,  x24
	sw x14 ,  68 ( x2 )             //  4-byte Folded Spill
	beq x0, x20, .LBB0_186
.LBB0_528:                              //  %if.then68.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_448
.LBB0_186:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x12
	call __eqdf2
	bltu x0, x10, .LBB0_187
.LBB0_529:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_446
.LBB0_187:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x15 ,  0 ( x24 )
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB0_188
.LBB0_530:                              //  %if.then74.i
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_446
.LBB0_188:                              //  %if.then80.i
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x0 ,  1
	sub x15 ,  x15 ,  x8
	sw x15 ,  276 ( x2 )
	jal x0, .LBB0_447
.LBB0_189:                              //    in Loop: Header=BB0_8 Depth=2
	add x13 ,  x0 ,  x14
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x14 ,  x13 ,  57
	beq x0, x14, .LBB0_176
.LBB0_190:                              //  %cond.false.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x13 ,  1
	sb x14 ,  0 ( x15 )
	jal x0, .LBB0_457
.LBB0_191:                              //  %cond.true433
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
.LBB0_192:                              //  %cond.end450
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
.LBB0_193:                              //  %cond.end453
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x0
	andi x12 ,  x12 ,  -1025
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x27, .LBB0_195
.LBB0_194:                              //    in Loop: Header=BB0_8 Depth=2
	andi x12 ,  x12 ,  -129
.LBB0_195:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	bltu x0, x27, .LBB0_200
.LBB0_196:                              //  %number
                                        //    in Loop: Header=BB0_8 Depth=2
	or x14 ,  x20 ,  x19
	bltu x0, x14, .LBB0_200
.LBB0_197:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_210
.LBB0_198:                              //  %if.else658
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  1
	beq x0, x15, .LBB0_210
.LBB0_199:                              //  %if.then665
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	jal x0, .LBB0_139
.LBB0_200:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x15, .LBB0_211
.LBB0_201:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB0_135
.LBB0_202:                              //  %if.then587
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_216
.LBB0_203:                              //  %do.body649
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x19 ,  15
	slli x14 ,  x20 ,  28&31
	srli x20 ,  x20 ,  4&31
	add x15 ,  x15 ,  x13
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x24 )
	srli x15 ,  x19 ,  4&31
	addi x24 ,  x24 ,  -1
	or x19 ,  x14 ,  x15
	or x15 ,  x20 ,  x19
	bltu x0, x15, .LBB0_203
	jal x0, .LBB0_231
.LBB0_135:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x0
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	bne x20, x15, .LBB0_137
.LBB0_136:                              //    in Loop: Header=BB0_8 Depth=2
	sltiu x15 ,  x19 ,  10
.LBB0_137:                              //  %sw.bb607
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x15, .LBB0_204
.LBB0_138:                              //  %if.then610
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x19 ,  48
.LBB0_139:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x15 ,  191 ( x2 )
	addi x24 ,  x2 ,  191
	jal x0, .LBB0_231
.LBB0_210:                              //    in Loop: Header=BB0_8 Depth=2
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_231
.LBB0_204:                              //  %do.body615.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  1024
	sw x12 ,  84 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_217
.LBB0_205:                              //  %do.body615.us.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x0
	add x8 ,  x0 ,  x24
	jal x0, .LBB0_208
.LBB0_206:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_208 Depth=3
	sltu x15 ,  x0 ,  x20
.LBB0_207:                              //  %do.body615.us
                                        //    in Loop: Header=BB0_208 Depth=3
	sub x14 ,  x19 ,  x10
	add x19 ,  x0 ,  x25
	add x20 ,  x0 ,  x9
	ori x13 ,  x14 ,  48
	addi x14 ,  x2 ,  92
	add x12 ,  x8 ,  x14
	addi x8 ,  x8 ,  -1
	sb x13 ,  99 ( x12 )
	beq x0, x15, .LBB0_229
.LBB0_208:                              //  %do.body615.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	add x9 ,  x0 ,  x11
	call __muldi3
	bne x20, x24, .LBB0_206
.LBB0_209:                              //    in Loop: Header=BB0_208 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x19
	jal x0, .LBB0_207
.LBB0_211:                              //  %do.body590.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x24 ,  x2 ,  191
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
.LBB0_212:                              //  %do.body590
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x20 ,  29&31
	srli x15 ,  x19 ,  3&31
	srli x20 ,  x20 ,  3&31
	or x15 ,  x14 ,  x15
	andi x14 ,  x19 ,  7
	ori x14 ,  x14 ,  48
	or x13 ,  x20 ,  x15
	add x19 ,  x0 ,  x15
	sb x14 ,  0 ( x24 )
	addi x24 ,  x24 ,  -1
	bltu x0, x13, .LBB0_212
.LBB0_213:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x24 ,  1
	andi x13 ,  x12 ,  1
	beq x0, x13, .LBB0_372
.LBB0_214:                              //  %do.end597
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x14 ,  48
	beq x0, x14, .LBB0_372
.LBB0_215:                              //  %if.then604
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x24 )
	jal x0, .LBB0_231
.LBB0_216:                              //  %sw.default
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	add x8 ,  x0 ,  x12
	srli x30 ,  x30 ,  12&31
	or x24 ,  x15 ,  x30
	add x10 ,  x0 ,  x24
	call strlen
	add x19 ,  x0 ,  x10
	add x12 ,  x0 ,  x8
	jal x0, .LBB0_232
.LBB0_217:                              //  %do.body615.preheader12
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x0
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_219
.LBB0_218:                              //  %if.end643
                                        //    in Loop: Header=BB0_219 Depth=3
	sltu x15 ,  x0 ,  x20
	add x19 ,  x0 ,  x25
	add x20 ,  x0 ,  x27
	beq x0, x15, .LBB0_230
.LBB0_219:                              //  %do.body615
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x9 ,  x0 ,  10
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x25 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	call __muldi3
	sub x15 ,  x19 ,  x10
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  48
	sb x15 ,  -1 ( x24 )
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	addi x24 ,  x24 ,  -1
	addi x14 ,  x14 ,  1
	sw x14 ,  68 ( x2 )             //  4-byte Folded Spill
	lb x15 ,  0 ( x15 )
	bne x14, x15, .LBB0_225
.LBB0_220:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_219 Depth=3
	beq x20, x8, .LBB0_228
.LBB0_221:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_219 Depth=3
	add x14 ,  x0 ,  x8
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	bltu x0, x14, .LBB0_226
.LBB0_222:                              //  %land.lhs.true626
                                        //    in Loop: Header=BB0_219 Depth=3
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  127
	beq x0, x15, .LBB0_226
.LBB0_223:                              //  %if.then633
                                        //    in Loop: Header=BB0_219 Depth=3
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  28 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x15 ,  x24
	add x10 ,  x0 ,  x24
	call strncpy
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	sw x13 ,  68 ( x2 )             //  4-byte Folded Spill
	lbu x15 ,  1 ( x14 )
	beq x15, x13, .LBB0_226
.LBB0_224:                              //  %if.then633
                                        //    in Loop: Header=BB0_219 Depth=3
	addi x14 ,  x14 ,  1
	sw x14 ,  64 ( x2 )             //  4-byte Folded Spill
	bne x20, x8, .LBB0_218
	jal x0, .LBB0_227
.LBB0_225:                              //    in Loop: Header=BB0_219 Depth=3
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
.LBB0_226:                              //  %if.end643
                                        //    in Loop: Header=BB0_219 Depth=3
	bne x20, x8, .LBB0_218
.LBB0_227:                              //    in Loop: Header=BB0_219 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x19
	add x19 ,  x0 ,  x25
	add x20 ,  x0 ,  x27
	bltu x0, x15, .LBB0_219
	jal x0, .LBB0_230
.LBB0_228:                              //    in Loop: Header=BB0_219 Depth=3
	sltiu x14 ,  x19 ,  10
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	beq x0, x14, .LBB0_222
	jal x0, .LBB0_226
.LBB0_229:                              //  %if.end668.loopexit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x8 ,  x14
	addi x24 ,  x15 ,  100
	sub x15 ,  x0 ,  x8
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
.LBB0_230:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_231
.LBB0_372:                              //    in Loop: Header=BB0_8 Depth=2
	add x24 ,  x0 ,  x15
.LBB0_231:                              //  %if.end668
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x15 ,  x24
.LBB0_232:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x0
	add x8 ,  x0 ,  x20
.LBB0_233:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x20 ,  56 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x20
	add x15 ,  x0 ,  x27
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	blt x19, x27, .LBB0_235
.LBB0_234:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x19
.LBB0_235:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x14 ,  283 ( x2 )
	andi x8 ,  x12 ,  2
	add x25 ,  x0 ,  x27
	sltu x14 ,  x0 ,  x14
	add x13 ,  x14 ,  x15
	srli x15 ,  x8 ,  1&31
	beq x0, x15, .LBB0_237
.LBB0_236:                              //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x13 ,  2
.LBB0_237:                              //  %sw.epilog681
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  16
	andi x27 ,  x12 ,  132
	sw x12 ,  84 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x13 ,  72 ( x2 )             //  4-byte Folded Spill
	beq x0, x27, .LBB0_241
.LBB0_238:                              //  %if.end744
                                        //    in Loop: Header=BB0_8 Depth=2
	lbu x15 ,  283 ( x2 )
	beq x0, x15, .LBB0_252
.LBB0_239:                              //  %if.then746
                                        //    in Loop: Header=BB0_8 Depth=2
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
	bltu x0, x15, .LBB0_251
.LBB0_240:                              //  %if.then756
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB0_252
	jal x0, .LBB0_245
.LBB0_241:                              //  %if.then700
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x9 ,  x22 ,  x13
	bge x0, x9, .LBB0_272
.LBB0_242:                              //  %while.cond705.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.blanks&4095
	lui x15 ,  (_svfprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB0_248
	jal x0, .LBB0_243
.LBB0_246:                              //    in Loop: Header=BB0_248 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_247:                              //  %if.end724
                                        //    in Loop: Header=BB0_248 Depth=3
	lui x30 ,  _svfprintf_r.blanks&4095
	lui x15 ,  (_svfprintf_r.blanks>>12)&1048575
	addi x9 ,  x9 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x9, .LBB0_243
.LBB0_248:                              //  %while.body708
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	bltu x0, x15, .LBB0_246
.LBB0_249:                              //  %if.then718
                                        //    in Loop: Header=BB0_248 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_247
	jal x0, .LBB0_250
.LBB0_251:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
.LBB0_252:                              //  %if.end763
                                        //    in Loop: Header=BB0_8 Depth=2
	beq x0, x8, .LBB0_255
.LBB0_253:                              //  %if.then766
                                        //    in Loop: Header=BB0_8 Depth=2
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
	bltu x0, x15, .LBB0_270
.LBB0_254:                              //  %if.then777
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB0_255
.LBB0_531:                              //  %if.then777
	jal x0, .LBB0_245
.LBB0_255:                              //  %if.end784
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x15 ,  x27 ,  128
	bltu x0, x15, .LBB0_271
.LBB0_256:                              //  %if.then788
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x22 ,  x15
	bge x0, x8, .LBB0_260
.LBB0_257:                              //  %while.cond793.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_263
	jal x0, .LBB0_258
.LBB0_261:                              //    in Loop: Header=BB0_263 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_262:                              //  %if.end812
                                        //    in Loop: Header=BB0_263 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_258
.LBB0_263:                              //  %while.body796
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	bltu x0, x15, .LBB0_261
.LBB0_264:                              //  %if.then806
                                        //    in Loop: Header=BB0_263 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_262
	jal x0, .LBB0_265
.LBB0_258:                              //  %while.end814
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  256
	sw x8 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_273
.LBB0_259:                              //  %if.then824
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB0_260
.LBB0_532:                              //  %if.then824
	jal x0, .LBB0_265
.LBB0_260:                              //  %if.end832
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x8 ,  x25 ,  x19
	blt x0, x8, .LBB0_274
	jal x0, .LBB0_277
.LBB0_270:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	xori x15 ,  x27 ,  128
	beq x0, x15, .LBB0_256
.LBB0_271:                              //    in Loop: Header=BB0_8 Depth=2
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x25 ,  x19
	blt x0, x8, .LBB0_274
	jal x0, .LBB0_277
.LBB0_243:                              //  %while.end726
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  256
	sw x9 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_301
.LBB0_244:                              //  %if.then736
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB0_238
	jal x0, .LBB0_245
.LBB0_272:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lbu x15 ,  283 ( x2 )
	bltu x0, x15, .LBB0_239
	jal x0, .LBB0_252
.LBB0_273:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	sub x8 ,  x25 ,  x19
	bge x0, x8, .LBB0_277
.LBB0_274:                              //  %while.cond837.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_282
	jal x0, .LBB0_275
.LBB0_280:                              //    in Loop: Header=BB0_282 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_281:                              //  %if.end856
                                        //    in Loop: Header=BB0_282 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_275
.LBB0_282:                              //  %while.body840
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
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
	bltu x0, x15, .LBB0_280
.LBB0_283:                              //  %if.then850
                                        //    in Loop: Header=BB0_282 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_281
	jal x0, .LBB0_265
.LBB0_275:                              //  %while.end858
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x2 ,  256
	sw x8 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_284
.LBB0_276:                              //  %if.then868
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_277
.LBB0_533:                              //  %if.then868
	jal x0, .LBB0_265
.LBB0_277:                              //  %if.end875
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x11 ,  256
	bltu x0, x15, .LBB0_285
.LBB0_278:                              //  %if.then879
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x2 ,  256
	sw x19 ,  4 ( x21 )
	sw x24 ,  0 ( x21 )
	lw x15 ,  8 ( x18 )
	add x15 ,  x19 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_291
.LBB0_279:                              //  %if.then889
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	add x19 ,  x0 ,  x0
	addi x25 ,  x0 ,  90
	bltu x0, x10, .LBB0_534
.LBB0_535:                              //  %if.then889
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_339
.LBB0_534:                              //  %if.then889
	jal x0, .LBB0_266
.LBB0_284:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x11 ,  256
	beq x0, x15, .LBB0_278
.LBB0_285:                              //  %if.else896
                                        //    in Loop: Header=BB0_8 Depth=2
	slti x15 ,  x18 ,  102
	bltu x0, x15, .LBB0_292
.LBB0_286:                              //  %if.then899
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x0 ,  x0
	lw x11 ,  36 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __nedf2
	addi x18 ,  x2 ,  256
	bltu x0, x10, .LBB0_302
.LBB0_287:                              //  %if.then903
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x18 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x21 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_308
.LBB0_288:                              //  %if.then913
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	addi x25 ,  x0 ,  90
	beq x0, x10, .LBB0_289
.LBB0_536:                              //  %if.then913
	jal x0, .LBB0_266
.LBB0_289:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	bltu x0, x15, .LBB0_309
.LBB0_290:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  276 ( x2 )
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	blt x15, x14, .LBB0_537
.LBB0_538:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_339
.LBB0_537:                              //  %if.end919
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_309
.LBB0_291:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	add x19 ,  x0 ,  x0
	addi x25 ,  x0 ,  90
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB0_340
.LBB0_539:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_349
.LBB0_340:                              //  %if.then1553
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x22 ,  x15
	blt x0, x8, .LBB0_341
.LBB0_540:                              //  %if.then1553
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_349
.LBB0_341:                              //  %while.cond1558.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.blanks&4095
	lui x15 ,  (_svfprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	bltu x0, x15, .LBB0_347
.LBB0_342:                              //  %while.body1561.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  16
	jal x0, .LBB0_345
.LBB0_343:                              //    in Loop: Header=BB0_345 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_344:                              //  %if.end1577
                                        //    in Loop: Header=BB0_345 Depth=3
	lui x30 ,  _svfprintf_r.blanks&4095
	lui x15 ,  (_svfprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_347
.LBB0_345:                              //  %while.body1561
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_343
.LBB0_346:                              //  %if.then1571
                                        //    in Loop: Header=BB0_345 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_344
	jal x0, .LBB0_266
.LBB0_292:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x2 ,  256
	lw x13 ,  260 ( x2 )
	addi x9 ,  x21 ,  8
	add x19 ,  x0 ,  x0
	sw x24 ,  0 ( x21 )
	lw x15 ,  8 ( x18 )
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x14 ,  x15 ,  1
	slti x15 ,  x0 ,  1
	add x12 ,  x0 ,  x15
	addi x15 ,  x13 ,  1
	slti x13 ,  x13 ,  7
	sw x14 ,  8 ( x18 )
	sw x12 ,  4 ( x21 )
	sw x15 ,  260 ( x2 )
	blt x12, x8, .LBB0_295
.LBB0_293:                              //  %if.else1408
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x12 ,  x11 ,  1
	bltu x0, x12, .LBB0_295
.LBB0_294:                              //  %if.else1514
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x25 ,  x0 ,  90
	beq x0, x13, .LBB0_319
	jal x0, .LBB0_320
.LBB0_347:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x21 ,  4
	lw x14 ,  260 ( x2 )
	sw x8 ,  0 ( x15 )
	lw x15 ,  8 ( x18 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	add x15 ,  x8 ,  x15
	sw x13 ,  260 ( x2 )
	sw x15 ,  8 ( x18 )
	bltu x0, x14, .LBB0_350
.LBB0_348:                              //  %if.then1589
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	beq x0, x10, .LBB0_349
	jal x0, .LBB0_266
.LBB0_295:                              //  %if.then1414
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x25 ,  x0 ,  90
	bltu x0, x13, .LBB0_298
.LBB0_296:                              //  %if.then1424
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	add x10 ,  x0 ,  x9
	call __ssprint_r
	bltu x0, x10, .LBB0_266
.LBB0_297:                              //  %if.then1424.if.end1430_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  260 ( x2 )
	addi x9 ,  x2 ,  192
	lw x14 ,  8 ( x18 )
.LBB0_298:                              //  %if.end1430
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x13 ,  x14
	sw x13 ,  4 ( x9 )
	sw x14 ,  8 ( x18 )
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  0 ( x9 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_312
.LBB0_299:                              //  %if.then1441
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x9 ,  x2 ,  192
	beq x0, x10, .LBB0_313
	jal x0, .LBB0_300
.LBB0_301:                              //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	lbu x15 ,  283 ( x2 )
	bltu x0, x15, .LBB0_239
	jal x0, .LBB0_252
.LBB0_302:                              //  %if.else986
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  276 ( x2 )
	bge x0, x14, .LBB0_335
.LBB0_303:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x14
	blt x14, x15, .LBB0_305
.LBB0_304:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
.LBB0_305:                              //  %if.else1089
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x8, .LBB0_357
.LBB0_306:                              //  %if.then1101
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	sw x8 ,  4 ( x21 )
	sw x24 ,  0 ( x21 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_356
.LBB0_307:                              //  %if.then1111
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_357
	jal x0, .LBB0_265
.LBB0_308:                              //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x21 ,  8
	addi x25 ,  x0 ,  90
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	beq x0, x15, .LBB0_290
.LBB0_309:                              //  %if.then925
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x21 )
	add x15 ,  x14 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_327
.LBB0_310:                              //  %if.then935
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	bltu x0, x10, .LBB0_266
.LBB0_311:                              //  %if.end941
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x15 ,  -1
	blt x0, x8, .LBB0_328
	jal x0, .LBB0_339
.LBB0_312:                              //    in Loop: Header=BB0_8 Depth=2
	addi x9 ,  x9 ,  8
.LBB0_313:                              //  %if.end1447
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	lw x11 ,  36 ( x2 )             //  4-byte Folded Reload
	call __eqdf2
	beq x0, x10, .LBB0_316
.LBB0_314:                              //  %if.then1450
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x24 ,  1
	lw x13 ,  8 ( x18 )
	addi x14 ,  x8 ,  -1
	sw x15 ,  0 ( x9 )
	lw x15 ,  260 ( x2 )
	sw x14 ,  4 ( x9 )
	add x13 ,  x14 ,  x13
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  8 ( x18 )
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_315
.LBB0_319:                              //  %if.then1462
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x9 ,  x2 ,  192
	beq x0, x10, .LBB0_320
	jal x0, .LBB0_300
.LBB0_316:                              //  %if.else1469
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x8 ,  x8 ,  -1
	bge x0, x8, .LBB0_320
.LBB0_317:                              //  %while.cond1474.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_325
	jal x0, .LBB0_318
.LBB0_323:                              //    in Loop: Header=BB0_325 Depth=3
	addi x9 ,  x9 ,  8
.LBB0_324:                              //  %if.end1493
                                        //    in Loop: Header=BB0_325 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	bge x14, x8, .LBB0_318
.LBB0_325:                              //  %while.body1477
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x9 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_323
.LBB0_326:                              //  %if.then1487
                                        //    in Loop: Header=BB0_325 Depth=3
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x9 ,  x2 ,  192
	beq x0, x10, .LBB0_324
	jal x0, .LBB0_300
.LBB0_327:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x15 ,  -1
	bge x0, x8, .LBB0_339
.LBB0_328:                              //  %while.cond946.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_333
	jal x0, .LBB0_329
.LBB0_331:                              //    in Loop: Header=BB0_333 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_332:                              //  %if.end965
                                        //    in Loop: Header=BB0_333 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_329
.LBB0_333:                              //  %while.body949
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_331
.LBB0_334:                              //  %if.then959
                                        //    in Loop: Header=BB0_333 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_332
	jal x0, .LBB0_266
.LBB0_335:                              //  %if.then989
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	lui x30 ,  .str.8&4095
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x18 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x21 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x15, .LBB0_367
.LBB0_336:                              //  %if.then999
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x25 ,  x0 ,  90
	bltu x0, x10, .LBB0_266
.LBB0_337:                              //  %if.then999.if.end1005_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	jal x0, .LBB0_368
.LBB0_318:                              //  %while.end1495
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	sw x8 ,  4 ( x9 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	beq x0, x15, .LBB0_319
.LBB0_315:                              //    in Loop: Header=BB0_8 Depth=2
	addi x9 ,  x9 ,  8
.LBB0_320:                              //  %if.end1531
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x9 )
	add x15 ,  x14 ,  x15
	sw x15 ,  8 ( x18 )
	addi x15 ,  x2 ,  269
	sw x15 ,  0 ( x9 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_338
.LBB0_321:                              //  %if.then1542
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_322
.LBB0_338:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x9 ,  8
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB0_349
	jal x0, .LBB0_340
.LBB0_356:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
.LBB0_357:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x19, x8, .LBB0_359
.LBB0_358:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x19
.LBB0_359:                              //  %if.end1118
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  16
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB0_374
.LBB0_360:                              //  %while.cond1129.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_365
	jal x0, .LBB0_361
.LBB0_363:                              //    in Loop: Header=BB0_365 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_364:                              //  %if.end1148
                                        //    in Loop: Header=BB0_365 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_361
.LBB0_365:                              //  %while.body1132
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_363
.LBB0_366:                              //  %if.then1142
                                        //    in Loop: Header=BB0_365 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_364
	jal x0, .LBB0_265
.LBB0_361:                              //  %while.end1150
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	sw x8 ,  4 ( x21 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_373
.LBB0_362:                              //  %if.then1160
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_375
	jal x0, .LBB0_265
.LBB0_367:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x25 ,  x0 ,  90
.LBB0_368:                              //  %if.end1005
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  68 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  1
	or x15 ,  x13 ,  x15
	or x15 ,  x14 ,  x15
	beq x0, x15, .LBB0_339
.LBB0_369:                              //  %if.then1012
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  8 ( x18 )
	sw x13 ,  4 ( x21 )
	add x15 ,  x13 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x15, .LBB0_419
.LBB0_370:                              //  %if.then1022
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	bltu x0, x10, .LBB0_266
.LBB0_371:                              //  %if.then1022.if.end1028_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  276 ( x2 )
	addi x15 ,  x2 ,  192
	lw x21 ,  68 ( x2 )             //  4-byte Folded Reload
	bge x14, x0, .LBB0_509
	jal x0, .LBB0_420
.LBB0_373:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
.LBB0_374:                              //  %cleanup.cont
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
.LBB0_375:                              //  %cleanup.cont
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x15 ,  x24
	andi x15 ,  x14 ,  1024
	bltu x0, x15, .LBB0_377
.LBB0_376:                              //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x18
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_382
.LBB0_377:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x8, .LBB0_393
.LBB0_378:                              //  %while.cond1172.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x0, x20, .LBB0_393
.LBB0_379:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x15 ,  x24
	bltu x8, x18, .LBB0_381
.LBB0_380:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x18
.LBB0_381:                              //  %while.end1288
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x0 ,  x0
.LBB0_382:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  276 ( x2 )
	addi x25 ,  x0 ,  90
	andi x14 ,  x14 ,  1
	addi x18 ,  x2 ,  256
	bltu x0, x14, .LBB0_384
.LBB0_383:                              //  %if.end1295
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	bge x15, x14, .LBB0_427
.LBB0_384:                              //  %if.then1301
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  8 ( x18 )
	sw x13 ,  4 ( x21 )
	add x14 ,  x13 ,  x14
	sw x14 ,  8 ( x18 )
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  0 ( x21 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB0_426
.LBB0_385:                              //  %if.then1311
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	bltu x0, x10, .LBB0_266
.LBB0_386:                              //  %if.then1311.if.end1318_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	jal x0, .LBB0_427
.LBB0_387:                              //  %cond.true505
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
.LBB0_388:                              //  %cond.false509
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x27 ,  72 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	slti x15 ,  x0 ,  1
	sb x0 ,  283 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x27, .LBB0_194
	jal x0, .LBB0_195
.LBB0_389:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  284 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  284 ( x2 )
	lhu x19 ,  0 ( x15 )
	add x20 ,  x0 ,  x0
	andi x15 ,  x12 ,  1
	beq x0, x15, .LBB0_541
.LBB0_542:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_118
.LBB0_541:                              //  %cond.true541
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_120
.LBB0_390:                              //  %while.cond35.preheader.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x19
	addi x15 ,  x15 ,  1
	bge x0, x15, .LBB0_454
.LBB0_391:                              //  %while.body39.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x27
	add x27 ,  x0 ,  x14
.LBB0_392:                              //  %while.body39.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x0 ,  48
	addi x15 ,  x15 ,  -1
	sb x14 ,  0 ( x9 )
	addi x9 ,  x9 ,  1
	blt x0, x15, .LBB0_392
	jal x0, .LBB0_457
.LBB0_393:                              //  %while.body1177.lr.ph
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  68 ( x2 )             //  4-byte Folded Reload
	slt x25 ,  x0 ,  x8
	add x15 ,  x15 ,  x24
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
.LBB0_394:                              //  %while.body1177
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_412 Depth 4
	addi x15 ,  x2 ,  256
	lw x13 ,  28 ( x2 )             //  4-byte Folded Reload
	andi x19 ,  x25 ,  1
	add x14 ,  x0 ,  x15
	lw x15 ,  8 ( x14 )
	sw x13 ,  4 ( x21 )
	add x15 ,  x13 ,  x15
	sw x15 ,  8 ( x14 )
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  0 ( x21 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	sw x14 ,  260 ( x2 )
	bltu x0, x19, .LBB0_396
.LBB0_395:                              //  %while.body1177
                                        //    in Loop: Header=BB0_394 Depth=3
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1
	sw x14 ,  64 ( x2 )             //  4-byte Folded Spill
.LBB0_396:                              //  %while.body1177
                                        //    in Loop: Header=BB0_394 Depth=3
	slti x15 ,  x15 ,  7
	bltu x0, x15, .LBB0_398
.LBB0_397:                              //  %if.then1195
                                        //    in Loop: Header=BB0_394 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	addi x12 ,  x2 ,  256
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB0_399
	jal x0, .LBB0_265
.LBB0_398:                              //    in Loop: Header=BB0_394 Depth=3
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
.LBB0_399:                              //  %if.end1201
                                        //    in Loop: Header=BB0_394 Depth=3
	lw x13 ,  64 ( x2 )             //  4-byte Folded Reload
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	lb x8 ,  0 ( x13 )
	sub x15 ,  x15 ,  x18
	blt x8, x15, .LBB0_401
.LBB0_400:                              //  %if.end1201
                                        //    in Loop: Header=BB0_394 Depth=3
	add x8 ,  x0 ,  x15
.LBB0_401:                              //  %if.end1201
                                        //    in Loop: Header=BB0_394 Depth=3
	bge x0, x8, .LBB0_404
.LBB0_402:                              //  %if.then1215
                                        //    in Loop: Header=BB0_394 Depth=3
	addi x12 ,  x2 ,  256
	sw x8 ,  4 ( x21 )
	sw x18 ,  0 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_414
.LBB0_403:                              //  %if.then1225
                                        //    in Loop: Header=BB0_394 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	addi x14 ,  x0 ,  16
	bltu x0, x10, .LBB0_265
.LBB0_404:                              //  %if.end1232
                                        //    in Loop: Header=BB0_394 Depth=3
	add x15 ,  x0 ,  x0
	blt x15, x8, .LBB0_406
.LBB0_405:                              //  %if.end1232
                                        //    in Loop: Header=BB0_394 Depth=3
	add x8 ,  x0 ,  x0
.LBB0_406:                              //  %if.end1232
                                        //    in Loop: Header=BB0_394 Depth=3
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB0_416
.LBB0_407:                              //  %while.cond1244.preheader
                                        //    in Loop: Header=BB0_394 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB0_412
	jal x0, .LBB0_408
.LBB0_410:                              //    in Loop: Header=BB0_412 Depth=4
	addi x21 ,  x21 ,  8
.LBB0_411:                              //  %if.end1263
                                        //    in Loop: Header=BB0_412 Depth=4
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_408
.LBB0_412:                              //  %while.body1247
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //        Parent Loop BB0_394 Depth=3
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
	bltu x0, x15, .LBB0_410
.LBB0_413:                              //  %if.then1257
                                        //    in Loop: Header=BB0_412 Depth=4
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_411
	jal x0, .LBB0_265
.LBB0_408:                              //  %while.end1265
                                        //    in Loop: Header=BB0_394 Depth=3
	addi x12 ,  x2 ,  256
	sw x8 ,  4 ( x21 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_415
.LBB0_409:                              //  %if.then1275
                                        //    in Loop: Header=BB0_394 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_417
	jal x0, .LBB0_265
.LBB0_414:                              //    in Loop: Header=BB0_394 Depth=3
	addi x21 ,  x21 ,  8
	addi x14 ,  x0 ,  16
	add x15 ,  x0 ,  x0
	bge x15, x8, .LBB0_405
	jal x0, .LBB0_406
.LBB0_415:                              //    in Loop: Header=BB0_394 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_416:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_394 Depth=3
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
.LBB0_417:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_394 Depth=3
	xori x15 ,  x25 ,  -1
	lw x14 ,  84 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x8 ,  x19
	andi x15 ,  x15 ,  1
	slt x25 ,  x0 ,  x8
	sub x20 ,  x20 ,  x15
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	add x18 ,  x15 ,  x18
	blt x0, x8, .LBB0_394
.LBB0_418:                              //  %cleanup.cont1285
                                        //    in Loop: Header=BB0_394 Depth=3
	blt x0, x20, .LBB0_394
	jal x0, .LBB0_379
.LBB0_419:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x21 ,  8
	lw x21 ,  68 ( x2 )             //  4-byte Folded Reload
	bge x14, x0, .LBB0_509
.LBB0_420:                              //  %while.cond1033.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x13 ,  (_svfprintf_r.zeroes>>12)&1048575
	sub x8 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x15 )
	addi x13 ,  x0 ,  -17
	blt x13, x14, .LBB0_444
.LBB0_421:                              //  %while.body1036.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x13 ,  x0 ,  16
	jal x0, .LBB0_424
.LBB0_422:                              //    in Loop: Header=BB0_424 Depth=3
	addi x15 ,  x15 ,  8
.LBB0_423:                              //  %if.end1052
                                        //    in Loop: Header=BB0_424 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x14 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x13 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	bge x13, x8, .LBB0_444
.LBB0_424:                              //  %while.body1036
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x18 )
	sw x13 ,  4 ( x15 )
	addi x14 ,  x14 ,  16
	sw x14 ,  8 ( x18 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB0_422
.LBB0_425:                              //  %if.then1046
                                        //    in Loop: Header=BB0_424 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x15 ,  x2 ,  192
	beq x0, x10, .LBB0_423
	jal x0, .LBB0_266
.LBB0_426:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
.LBB0_427:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  68 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x13 ,  x24
	sub x15 ,  x13 ,  x15
	sub x14 ,  x14 ,  x8
	add x9 ,  x0 ,  x15
	blt x15, x14, .LBB0_429
.LBB0_428:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x14
.LBB0_429:                              //  %if.end1318
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x9, .LBB0_433
.LBB0_430:                              //  %if.then1332
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x18 )
	sw x9 ,  4 ( x21 )
	sw x8 ,  0 ( x21 )
	add x14 ,  x9 ,  x14
	sw x14 ,  8 ( x18 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB0_435
.LBB0_431:                              //  %if.then1342
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  80 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	bltu x0, x10, .LBB0_300
.LBB0_432:                              //  %if.then1342.if.end1349_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  276 ( x2 )
	addi x21 ,  x2 ,  192
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
.LBB0_433:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x19, x9, .LBB0_436
.LBB0_434:                              //  %if.end1349
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14 ,  x0 ,  x19
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	add x8 ,  x14 ,  x15
	blt x0, x8, .LBB0_437
	jal x0, .LBB0_339
.LBB0_435:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	bge x19, x9, .LBB0_434
.LBB0_436:                              //    in Loop: Header=BB0_8 Depth=2
	sub x14 ,  x0 ,  x9
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	add x8 ,  x14 ,  x15
	bge x0, x8, .LBB0_339
.LBB0_437:                              //  %while.cond1361.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	slti x15 ,  x8 ,  17
	bltu x0, x15, .LBB0_329
.LBB0_438:                              //  %while.body1364.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x0 ,  16
	jal x0, .LBB0_441
.LBB0_439:                              //    in Loop: Header=BB0_441 Depth=3
	addi x21 ,  x21 ,  8
.LBB0_440:                              //  %if.end1380
                                        //    in Loop: Header=BB0_441 Depth=3
	lui x30 ,  _svfprintf_r.zeroes&4095
	lui x15 ,  (_svfprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x21 )
	bge x14, x8, .LBB0_329
.LBB0_441:                              //  %while.body1364
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x18 )
	sw x14 ,  4 ( x21 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	bltu x0, x15, .LBB0_439
.LBB0_442:                              //  %if.then1374
                                        //    in Loop: Header=BB0_441 Depth=3
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	beq x0, x10, .LBB0_440
	jal x0, .LBB0_266
.LBB0_329:                              //  %while.end967
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  8 ( x18 )
	sw x8 ,  4 ( x21 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x18 )
	lw x15 ,  260 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  260 ( x2 )
	beq x0, x15, .LBB0_322
.LBB0_330:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x21 ,  8
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	bltu x0, x15, .LBB0_340
	jal x0, .LBB0_349
.LBB0_506:                              //    in Loop: Header=BB0_8 Depth=2
	slti x19 ,  x0 ,  1
.LBB0_507:                              //  %if.else322
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x0 ,  102
	add x20 ,  x0 ,  x8
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	bge x15, x0, .LBB0_484
	jal x0, .LBB0_503
.LBB0_444:                              //  %while.end1054
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x18 )
	sw x8 ,  4 ( x15 )
	add x14 ,  x8 ,  x14
	sw x14 ,  8 ( x18 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB0_508
.LBB0_445:                              //  %if.then1064
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x15 ,  x2 ,  192
	beq x0, x10, .LBB0_509
	jal x0, .LBB0_266
.LBB0_446:                              //  %if.then74.if.end83_crit_edge.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  276 ( x2 )
.LBB0_447:                              //  %if.end83.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x15 ,  x9
.LBB0_448:                              //  %if.end85.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x10 ,  44 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_450
.LBB0_449:                              //  %if.end89.thread.i
                                        //    in Loop: Header=BB0_8 Depth=2
	sw x9 ,  288 ( x2 )
	jal x0, .LBB0_456
.LBB0_450:                              //  %if.end89.i
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  288 ( x2 )
	bgeu x15, x9, .LBB0_455
.LBB0_451:                              //  %while.body93.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
.LBB0_452:                              //  %while.body93.i
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x15 ,  1
	sw x14 ,  288 ( x2 )
	addi x14 ,  x0 ,  48
	sb x14 ,  0 ( x15 )
	lw x15 ,  288 ( x2 )
	bltu x15, x9, .LBB0_452
.LBB0_453:                              //  %if.end96.loopexit.i
                                        //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x15
	jal x0, .LBB0_457
.LBB0_454:                              //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x14
	jal x0, .LBB0_457
.LBB0_455:                              //    in Loop: Header=BB0_8 Depth=2
	add x9 ,  x0 ,  x15
.LBB0_456:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  84 ( x2 )             //  4-byte Folded Reload
.LBB0_457:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	ori x5 ,  x12 ,  256
	sub x15 ,  x9 ,  x24
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB0_458
.LBB0_543:                              //  %cvt.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_181
.LBB0_458:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  276 ( x2 )
	addi x18 ,  x18 ,  -2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	slti x15 ,  x11 ,  -3
	bltu x0, x15, .LBB0_464
.LBB0_459:                              //  %if.then276
                                        //    in Loop: Header=BB0_8 Depth=2
	blt x27, x11, .LBB0_464
.LBB0_460:                              //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x0 ,  103
	jal x0, .LBB0_461
.LBB0_464:                              //  %if.end291
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  101
	blt x15, x18, .LBB0_468
.LBB0_465:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	ori x15 ,  x18 ,  32
	addi x14 ,  x0 ,  97
	beq x15, x14, .LBB0_485
.LBB0_466:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	add x14 ,  x0 ,  x18
	lw x11 ,  276 ( x2 )
	slti x10 ,  x0 ,  1
	addi x13 ,  x11 ,  -1
	bge x11, x10, .LBB0_486
.LBB0_467:                              //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x0 ,  45
	sub x8 ,  x10 ,  x11
	jal x0, .LBB0_487
.LBB0_468:                              //  %if.else307
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  276 ( x2 )
	xori x15 ,  x18 ,  102
	bltu x0, x15, .LBB0_461
.LBB0_469:                              //  %if.then310
                                        //    in Loop: Header=BB0_8 Depth=2
	andi x15 ,  x12 ,  1
	or x15 ,  x27 ,  x15
	blt x0, x11, .LBB0_470
.LBB0_544:                              //  %if.then310
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_183
.LBB0_470:                              //  %if.then313
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x18 ,  x0 ,  102
	beq x0, x15, .LBB0_504
.LBB0_471:                              //  %if.then318
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x27
	add x19 ,  x11 ,  x15
	add x8 ,  x0 ,  x0
	andi x15 ,  x12 ,  1024
	beq x0, x15, .LBB0_505
.LBB0_474:                              //  %if.end352
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x0, x11, .LBB0_505
.LBB0_475:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x0
	lb x14 ,  0 ( x15 )
	xori x15 ,  x14 ,  127
	beq x0, x15, .LBB0_482
.LBB0_476:                              //  %while.cond359.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	bge x14, x11, .LBB0_482
.LBB0_477:                              //  %if.end368.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x0 ,  x0
	add x27 ,  x0 ,  x5
	add x8 ,  x0 ,  x15
	add x20 ,  x0 ,  x15
.LBB0_478:                              //  %if.end368
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x12 ,  64 ( x2 )             //  4-byte Folded Reload
	lbu x13 ,  1 ( x12 )
	beq x13, x15, .LBB0_480
.LBB0_479:                              //  %if.end368
                                        //    in Loop: Header=BB0_478 Depth=3
	addi x12 ,  x12 ,  1
.LBB0_480:                              //  %if.end368
                                        //    in Loop: Header=BB0_478 Depth=3
	sub x11 ,  x11 ,  x14
	sltu x14 ,  x0 ,  x13
	sw x12 ,  64 ( x2 )             //  4-byte Folded Spill
	add x20 ,  x14 ,  x20
	xori x14 ,  x13 ,  0
	sltiu x14 ,  x14 ,  1
	add x8 ,  x14 ,  x8
	lb x14 ,  0 ( x12 )
	xori x13 ,  x14 ,  127
	beq x0, x13, .LBB0_483
.LBB0_481:                              //  %if.end368
                                        //    in Loop: Header=BB0_478 Depth=3
	blt x14, x11, .LBB0_478
	jal x0, .LBB0_483
.LBB0_461:                              //  %if.else334
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	bge x11, x14, .LBB0_472
.LBB0_462:                              //  %if.else343
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x15 ,  x14
	blt x0, x11, .LBB0_473
.LBB0_463:                              //  %if.then347
                                        //    in Loop: Header=BB0_8 Depth=2
	sub x15 ,  x19 ,  x11
	add x8 ,  x0 ,  x0
	addi x19 ,  x15 ,  1
	add x20 ,  x0 ,  x8
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	bge x15, x0, .LBB0_484
	jal x0, .LBB0_503
.LBB0_472:                              //  %if.then337
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x12 ,  1
	sub x15 ,  x0 ,  x15
	and x15 ,  x14 ,  x15
	add x19 ,  x15 ,  x11
.LBB0_473:                              //  %if.end352
                                        //    in Loop: Header=BB0_8 Depth=2
	add x8 ,  x0 ,  x0
	andi x15 ,  x12 ,  1024
	bltu x0, x15, .LBB0_474
.LBB0_505:                              //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x0 ,  x8
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	bge x15, x0, .LBB0_484
.LBB0_503:                              //  %if.then387
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  45
	add x12 ,  x0 ,  x5
	sb x15 ,  283 ( x2 )
	add x15 ,  x0 ,  x27
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	blt x19, x27, .LBB0_545
.LBB0_546:                              //  %if.then387
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_234
.LBB0_545:                              //  %if.then387
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_235
.LBB0_482:                              //    in Loop: Header=BB0_8 Depth=2
	add x27 ,  x0 ,  x5
	add x20 ,  x0 ,  x8
.LBB0_483:                              //  %while.end379
                                        //    in Loop: Header=BB0_8 Depth=2
	add x25 ,  x0 ,  x11
	lw x11 ,  28 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x8 ,  x20
	call __mulsi3
	add x19 ,  x19 ,  x10
	add x11 ,  x0 ,  x25
	add x5 ,  x0 ,  x27
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	blt x15, x0, .LBB0_503
.LBB0_484:                              //    in Loop: Header=BB0_8 Depth=2
	add x12 ,  x0 ,  x5
	add x15 ,  x0 ,  x27
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	blt x19, x27, .LBB0_547
.LBB0_548:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_234
.LBB0_547:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_235
.LBB0_485:                              //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x18 ,  15
	lw x11 ,  276 ( x2 )
	slti x10 ,  x0 ,  1
	addi x13 ,  x11 ,  -1
	blt x11, x10, .LBB0_467
.LBB0_486:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x12 ,  x0 ,  43
	add x8 ,  x0 ,  x13
.LBB0_487:                              //  %if.then294
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x14 ,  269 ( x2 )
	slti x14 ,  x8 ,  10
	sw x13 ,  276 ( x2 )
	sb x12 ,  270 ( x2 )
	bltu x0, x14, .LBB0_495
.LBB0_488:                              //  %do.body.i2298.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x27 ,  x2 ,  292
	addi x25 ,  x0 ,  6
	addi x15 ,  x0 ,  -1
	sw x5 ,  72 ( x2 )              //  4-byte Folded Spill
.LBB0_489:                              //  %do.body.i2298
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x19 ,  x0 ,  x8
	addi x20 ,  x0 ,  10
	add x9 ,  x0 ,  x15
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __divsi3
	add x11 ,  x0 ,  x20
	add x8 ,  x0 ,  x10
	call __mulsi3
	sub x14 ,  x19 ,  x10
	add x15 ,  x25 ,  x27
	addi x25 ,  x25 ,  -1
	addi x13 ,  x0 ,  99
	addi x14 ,  x14 ,  48
	sb x14 ,  0 ( x15 )
	addi x15 ,  x9 ,  -1
	blt x13, x19, .LBB0_489
.LBB0_490:                              //  %do.end.i2299
                                        //    in Loop: Header=BB0_8 Depth=2
	add x15 ,  x25 ,  x27
	addi x13 ,  x8 ,  48
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x25 ,  -7
	sb x13 ,  0 ( x15 )
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x5 ,  72 ( x2 )              //  4-byte Folded Reload
	bge x12, x0, .LBB0_498
.LBB0_491:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	sb x13 ,  271 ( x2 )
	xori x13 ,  x25 ,  6
	beq x0, x13, .LBB0_498
.LBB0_492:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	sb x14 ,  272 ( x2 )
	xori x14 ,  x25 ,  5
	addi x15 ,  x2 ,  273
	beq x0, x14, .LBB0_498
.LBB0_493:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x2 ,  273
.LBB0_494:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_8 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x14 ,  x2 ,  300
	add x14 ,  x9 ,  x14
	addi x9 ,  x9 ,  1
	lb x14 ,  0 ( x14 )
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	xori x14 ,  x9 ,  -1
	bltu x0, x14, .LBB0_494
	jal x0, .LBB0_498
.LBB0_495:                              //  %if.else23.i
                                        //    in Loop: Header=BB0_8 Depth=2
	xori x14 ,  x15 ,  97
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_497
.LBB0_496:                              //  %if.then25.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x0 ,  48
	sb x15 ,  271 ( x2 )
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_497:                              //  %if.end27.i
                                        //    in Loop: Header=BB0_8 Depth=2
	addi x14 ,  x8 ,  48
	sb x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
.LBB0_498:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x12 ,  68 ( x2 )             //  4-byte Folded Reload
	add x20 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	add x14 ,  x0 ,  x20
	blt x12, x13, .LBB0_500
.LBB0_499:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_500:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	andi x13 ,  x11 ,  1
	beq x13, x20, .LBB0_502
.LBB0_501:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_502:                              //  %exponent.exit
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x13 ,  68 ( x2 )             //  4-byte Folded Reload
	andi x5 ,  x5 ,  -1025
	add x8 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	add x14 ,  x13 ,  x14
	addi x13 ,  x2 ,  269
	sub x15 ,  x15 ,  x13
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	add x19 ,  x15 ,  x14
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	bge x15, x0, .LBB0_484
	jal x0, .LBB0_503
.LBB0_504:                              //    in Loop: Header=BB0_8 Depth=2
	add x19 ,  x0 ,  x11
	add x8 ,  x0 ,  x0
	andi x15 ,  x12 ,  1024
	bltu x0, x15, .LBB0_474
	jal x0, .LBB0_505
.LBB0_508:                              //    in Loop: Header=BB0_8 Depth=2
	addi x15 ,  x15 ,  8
.LBB0_509:                              //  %if.end1071
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  8 ( x18 )
	sw x21 ,  4 ( x15 )
	sw x24 ,  0 ( x15 )
	add x14 ,  x21 ,  x14
	sw x14 ,  8 ( x18 )
	lw x14 ,  260 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  260 ( x2 )
	bltu x0, x14, .LBB0_510
.LBB0_322:                              //  %if.then977
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	addi x21 ,  x2 ,  192
	bltu x0, x10, .LBB0_266
.LBB0_339:                              //  %if.end1550
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB0_349
.LBB0_549:                              //  %if.end1550
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_340
.LBB0_349:                              //  %if.end1597thread-pre-split
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x15 ,  264 ( x2 )
.LBB0_350:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	blt x14, x22, .LBB0_352
.LBB0_351:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x22 ,  x0 ,  x14
.LBB0_352:                              //  %if.end1597
                                        //    in Loop: Header=BB0_8 Depth=2
	add x20 ,  x20 ,  x22
	beq x0, x15, .LBB0_354
.LBB0_353:                              //  %land.lhs.true1607
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x18
	call __ssprint_r
	bltu x0, x10, .LBB0_266
.LBB0_354:                              //  %if.end1611
                                        //    in Loop: Header=BB0_8 Depth=2
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x26
	sw x0 ,  260 ( x2 )
	bltu x0, x11, .LBB0_355
.LBB0_550:                              //  %if.end1611
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_5
.LBB0_355:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	add x10 ,  x0 ,  x9
	call _free_r
	add x24 ,  x0 ,  x26
	addi x21 ,  x2 ,  192
	add x8 ,  x0 ,  x24
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_551
.LBB0_552:                              //  %if.then1616
                                        //    in Loop: Header=BB0_5 Depth=1
	jal x0, .LBB0_6
.LBB0_551:                              //  %if.then1616
                                        //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_8
.LBB0_510:                              //    in Loop: Header=BB0_8 Depth=2
	addi x21 ,  x15 ,  8
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x15 ,  4
	beq x0, x15, .LBB0_553
.LBB0_554:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_340
.LBB0_553:                              //    in Loop: Header=BB0_8 Depth=2
	jal x0, .LBB0_349
.LBB0_250:
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_265
.LBB0_511:                              //  %done
	lw x15 ,  264 ( x2 )
	beq x0, x15, .LBB0_513
.LBB0_512:                              //  %land.lhs.true1620
	addi x12 ,  x2 ,  256
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	call __ssprint_r
	bltu x0, x10, .LBB0_268
.LBB0_513:                              //  %if.end1624
	sw x0 ,  260 ( x2 )
	lbu x15 ,  12 ( x27 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_269
	jal x0, .LBB0_515
.LBB0_514:                              //  %if.then9
	addi x15 ,  x0 ,  12
	addi x20 ,  x0 ,  -1
	sw x15 ,  0 ( x9 )
	jal x0, .LBB0_515
.LBB0_245:
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
.LBB0_265:
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
.LBB0_266:                              //  %error
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	beq x0, x11, .LBB0_268
.LBB0_267:                              //  %if.then1629
	add x10 ,  x0 ,  x9
	call _free_r
.LBB0_268:                              //  %if.end1630
	lbu x15 ,  12 ( x27 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB0_515
.LBB0_269:                              //  %if.end1630
	addi x20 ,  x0 ,  -1
.LBB0_515:                              //  %cleanup1640
	add x10 ,  x0 ,  x20
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
.LBB0_300:
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  56 ( x2 )             //  4-byte Folded Reload
	bltu x0, x11, .LBB0_267
	jal x0, .LBB0_268
.LBB0_147:                              //  %if.then242
	lh x15 ,  12 ( x27 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x27 )
	lbu x15 ,  12 ( x27 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB0_269
	jal x0, .LBB0_515
.Lfunc_end0:
	.size	_svfprintf_r, .Lfunc_end0-_svfprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_27
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_29
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_30
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_35
	.long	.LBB0_38
	.long	.LBB0_121
	.long	.LBB0_37
	.long	.LBB0_21
	.long	.LBB0_121
	.long	.LBB0_41
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_63
	.long	.LBB0_121
	.long	.LBB0_76
	.long	.LBB0_92
	.long	.LBB0_63
	.long	.LBB0_63
	.long	.LBB0_63
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_42
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_95
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_77
	.long	.LBB0_121
	.long	.LBB0_97
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_99
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_63
	.long	.LBB0_121
	.long	.LBB0_76
	.long	.LBB0_82
	.long	.LBB0_63
	.long	.LBB0_63
	.long	.LBB0_63
	.long	.LBB0_44
	.long	.LBB0_82
	.long	.LBB0_26
	.long	.LBB0_121
	.long	.LBB0_46
	.long	.LBB0_121
	.long	.LBB0_54
	.long	.LBB0_100
	.long	.LBB0_105
	.long	.LBB0_26
	.long	.LBB0_121
	.long	.LBB0_77
	.long	.LBB0_40
	.long	.LBB0_106
	.long	.LBB0_121
	.long	.LBB0_121
	.long	.LBB0_111
	.long	.LBB0_121
	.long	.LBB0_40
                                        //  -- End function
	.address_space	0
	.type	_svfprintf_r.blanks,@object //  @_svfprintf_r.blanks
_svfprintf_r.blanks:
	.zero	16,32
	.size	_svfprintf_r.blanks, 16

	.address_space	0
	.type	_svfprintf_r.zeroes,@object //  @_svfprintf_r.zeroes
_svfprintf_r.zeroes:
	.zero	16,48
	.size	_svfprintf_r.zeroes, 16

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
