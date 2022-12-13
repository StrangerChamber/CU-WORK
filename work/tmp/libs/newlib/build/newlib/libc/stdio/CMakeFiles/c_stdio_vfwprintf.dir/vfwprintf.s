	.text
	.file	"vfwprintf.c"
	.globl	vfwprintf               //  -- Begin function vfwprintf
	.type	vfwprintf,@function
vfwprintf:                              //  @vfwprintf
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
	jal x0, _vfwprintf_r
.Lfunc_end0:
	.size	vfwprintf, .Lfunc_end0-vfwprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfwprintf_r            //  -- Begin function _vfwprintf_r
	.type	_vfwprintf_r,@function
_vfwprintf_r:                           //  @_vfwprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1376
	.cfi_adjust_cfa_offset 1376
	sw x18 ,  1364 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x13
	sw x19 ,  1360 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  1348 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26 ,  1332 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x1 ,  1372 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  1368 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  1356 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  1352 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  1344 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  1340 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  1336 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  1328 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  1324 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x22 ,  x0 ,  x12
	add x26 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x0 ,  156 ( x2 )
	sw x0 ,  112 ( x2 )
	sw x18 ,  164 ( x2 )
	call _localeconv_r
	lw x15 ,  0 ( x10 )
	lb x15 ,  0 ( x15 )
	sw x15 ,  152 ( x2 )
	beq x0, x19, .LBB1_2
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	bltu x0, x15, .LBB1_2
.LBB1_513:                              //  %land.lhs.true
	jal x0, .LBB1_496
.LBB1_2:                                //  %if.end
	lhu x15 ,  12 ( x26 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_4
.LBB1_3:                                //  %if.then14
	lw x13 ,  100 ( x26 )
	or x15 ,  x14 ,  x15
	sh x15 ,  12 ( x26 )
	or x13 ,  x14 ,  x13
	sw x13 ,  100 ( x26 )
.LBB1_4:                                //  %do.end22
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB1_13
.LBB1_5:                                //  %lor.lhs.false
	lw x14 ,  16 ( x26 )
	beq x0, x14, .LBB1_13
.LBB1_6:                                //  %if.end45
	andi x14 ,  x15 ,  26
	xori x14 ,  x14 ,  10
	bltu x0, x14, .LBB1_15
.LBB1_7:                                //  %land.lhs.true51
	lh x14 ,  14 ( x26 )
	blt x14, x0, .LBB1_15
.LBB1_8:                                //  %if.then55
	lui x30 ,  65533&4095
	lui x13 ,  (65533>>12)&1048575
	addi x11 ,  x2 ,  1220
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	sh x14 ,  14 ( x11 )
	sw x0 ,  24 ( x11 )
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	add x13 ,  x0 ,  x18
	sh x15 ,  12 ( x11 )
	lw x15 ,  100 ( x26 )
	sw x15 ,  100 ( x11 )
	lw x15 ,  28 ( x26 )
	sw x15 ,  28 ( x11 )
	lw x15 ,  36 ( x26 )
	sw x15 ,  36 ( x11 )
	addi x15 ,  x2 ,  196
	sw x15 ,  16 ( x11 )
	sw x15 ,  1220 ( x2 )
	addi x15 ,  x0 ,  1024
	sw x15 ,  8 ( x11 )
	sw x15 ,  1240 ( x2 )
	call _vfwprintf_r
	add x18 ,  x0 ,  x10
	blt x18, x0, .LBB1_11
.LBB1_9:                                //  %land.lhs.true.i
	addi x11 ,  x2 ,  1220
	add x10 ,  x0 ,  x19
	call _fflush_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB1_11
.LBB1_10:                               //  %land.lhs.true.i
	addi x18 ,  x0 ,  -1
.LBB1_11:                               //  %if.end.i
	lbu x15 ,  1232 ( x2 )
	andi x15 ,  x15 ,  64
	bltu x0, x15, .LBB1_12
.LBB1_514:                              //  %if.end.i
	jal x0, .LBB1_504
.LBB1_12:                               //  %if.then15.i
	lh x15 ,  12 ( x26 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x26 )
	jal x0, .LBB1_504
.LBB1_13:                               //  %land.lhs.true29
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __swsetup_r
	beq x0, x10, .LBB1_14
.LBB1_515:                              //  %land.lhs.true29
	jal x0, .LBB1_503
.LBB1_14:                               //  %land.lhs.true29.if.end45_crit_edge
	lhu x15 ,  12 ( x26 )
	andi x14 ,  x15 ,  26
	xori x14 ,  x14 ,  10
	beq x0, x14, .LBB1_7
.LBB1_15:                               //  %if.end69
	addi x15 ,  x2 ,  1220
	add x24 ,  x0 ,  x0
	addi x12 ,  x2 ,  100
	addi x21 ,  x0 ,  10
	addi x23 ,  x0 ,  90
	sw x0 ,  104 ( x2 )
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  100 ( x2 )
	addi x15 ,  x2 ,  168
	add x18 ,  x0 ,  x24
	sw x0 ,  8 ( x12 )
	sw x24 ,  80 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  60 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  24
	sw x15 ,  28 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  196
	addi x15 ,  x15 ,  400
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  116
	addi x14 ,  x15 ,  8
	addi x15 ,  x15 ,  12
	sw x14 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
.LBB1_16:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_19 Depth 2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_231 Depth 3
                                        //        Child Loop BB1_167 Depth 3
                                        //        Child Loop BB1_154 Depth 3
                                        //        Child Loop BB1_235 Depth 3
                                        //        Child Loop BB1_246 Depth 3
                                        //        Child Loop BB1_467 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_275 Depth 3
                                        //        Child Loop BB1_286 Depth 3
                                        //        Child Loop BB1_297 Depth 3
                                        //        Child Loop BB1_345 Depth 3
                                        //        Child Loop BB1_366 Depth 3
                                        //        Child Loop BB1_391 Depth 3
                                        //          Child Loop BB1_408 Depth 4
                                        //        Child Loop BB1_452 Depth 3
                                        //        Child Loop BB1_435 Depth 3
                                        //        Child Loop BB1_351 Depth 3
                                        //        Child Loop BB1_426 Depth 3
                                        //      Child Loop BB1_17 Depth 2
	addi x20 ,  x2 ,  1220
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB1_19
.LBB1_17:                               //  %while.cond
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB1_19
.LBB1_18:                               //  %while.body
                                        //    in Loop: Header=BB1_17 Depth=2
	addi x8 ,  x8 ,  4
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_17
.LBB1_19:                               //  %while.end
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_26 Depth 3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
                                        //        Child Loop BB1_231 Depth 3
                                        //        Child Loop BB1_167 Depth 3
                                        //        Child Loop BB1_154 Depth 3
                                        //        Child Loop BB1_235 Depth 3
                                        //        Child Loop BB1_246 Depth 3
                                        //        Child Loop BB1_467 Depth 3
                                        //        Child Loop BB1_204 Depth 3
                                        //        Child Loop BB1_209 Depth 3
                                        //        Child Loop BB1_275 Depth 3
                                        //        Child Loop BB1_286 Depth 3
                                        //        Child Loop BB1_297 Depth 3
                                        //        Child Loop BB1_345 Depth 3
                                        //        Child Loop BB1_366 Depth 3
                                        //        Child Loop BB1_391 Depth 3
                                        //          Child Loop BB1_408 Depth 4
                                        //        Child Loop BB1_452 Depth 3
                                        //        Child Loop BB1_435 Depth 3
                                        //        Child Loop BB1_351 Depth 3
                                        //        Child Loop BB1_426 Depth 3
	sub x9 ,  x8 ,  x22
	beq x0, x9, .LBB1_24
.LBB1_20:                               //  %if.then76
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x12 )
	sw x9 ,  4 ( x20 )
	sw x22 ,  0 ( x20 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_22
.LBB1_21:                               //  %if.then83
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_23
	jal x0, .LBB1_502
.LBB1_22:                               //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_23:                               //  %if.end89
                                        //    in Loop: Header=BB1_19 Depth=2
	srai x15 ,  x9 ,  2&31
	add x18 ,  x18 ,  x15
	lw x15 ,  0 ( x8 )
.LBB1_24:                               //  %if.end91
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x15, .LBB1_25
.LBB1_516:                              //  %if.end91
	jal x0, .LBB1_505
.LBB1_25:                               //  %if.end95
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x8 ,  4
	addi x14 ,  x0 ,  -1
	add x8 ,  x0 ,  x24
	add x25 ,  x0 ,  x24
	sw x0 ,  160 ( x2 )
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB1_26:                               //  %rflag
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_27 Depth 4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	lw x27 ,  0 ( x15 )
	addi x22 ,  x15 ,  4
.LBB1_27:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_30 Depth 5
                                        //              Child Loop BB1_34 Depth 6
                                        //            Child Loop BB1_29 Depth 5
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB1_30
.LBB1_28:                               //  %do.body155.preheader
                                        //    in Loop: Header=BB1_27 Depth=4
	add x25 ,  x0 ,  x24
.LBB1_29:                               //  %do.body155
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x21
	call __mulsi3
	add x15 ,  x10 ,  x27
	lw x27 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x25 ,  x15 ,  -48
	addi x15 ,  x27 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB1_29
	jal x0, .LBB1_27
.LBB1_37:                               //    in Loop: Header=BB1_30 Depth=5
	add x8 ,  x0 ,  x9
	sw x10 ,  76 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_28
.LBB1_30:                               //  %reswitch
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB1_34 Depth 6
	addi x15 ,  x27 ,  -32
	bltu x23, x15, .LBB1_130
.LBB1_31:                               //  %reswitch
                                        //    in Loop: Header=BB1_30 Depth=5
	lui x30 ,  JTI1_0&4095
	lui x14 ,  (JTI1_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_32:                               //  %sw.bb126
                                        //    in Loop: Header=BB1_30 Depth=5
	lw x27 ,  0 ( x22 )
	addi x15 ,  x22 ,  4
	xori x14 ,  x27 ,  42
	beq x0, x14, .LBB1_61
.LBB1_33:                               //  %while.cond137.preheader
                                        //    in Loop: Header=BB1_30 Depth=5
	add x9 ,  x0 ,  x8
	addi x8 ,  x27 ,  -48
	add x10 ,  x0 ,  x0
	add x22 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x8, .LBB1_37
.LBB1_34:                               //  %while.body141
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_26 Depth=3
                                        //          Parent Loop BB1_27 Depth=4
                                        //            Parent Loop BB1_30 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	addi x11 ,  x0 ,  10
	call __mulsi3
	lw x27 ,  0 ( x22 )
	add x10 ,  x10 ,  x8
	addi x22 ,  x22 ,  4
	addi x8 ,  x27 ,  -48
	sltiu x15 ,  x8 ,  10
	bltu x0, x15, .LBB1_34
.LBB1_35:                               //  %while.end146
                                        //    in Loop: Header=BB1_30 Depth=5
	addi x15 ,  x0 ,  -1
	add x8 ,  x0 ,  x9
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB1_27
.LBB1_36:                               //  %while.end146.thread
                                        //    in Loop: Header=BB1_30 Depth=5
	sw x10 ,  76 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x27 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_28
	jal x0, .LBB1_30
.LBB1_38:                               //  %sw.bb186
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  32
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_39:                               //  %sw.bb112
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  160 ( x2 )
	add x15 ,  x0 ,  x22
	bltu x0, x14, .LBB1_26
.LBB1_40:                               //  %if.then114
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB1_51
.LBB1_41:                               //  %sw.bb116
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  1
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_42:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	add x10 ,  x0 ,  x19
	call _localeconv_r
	lw x15 ,  4 ( x10 )
	add x10 ,  x0 ,  x19
	lb x15 ,  0 ( x15 )
	sw x15 ,  156 ( x2 )
	call _localeconv_r
	lw x14 ,  8 ( x10 )
	add x15 ,  x0 ,  x22
	sw x14 ,  80 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB1_26
.LBB1_43:                               //  %sw.bb
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  156 ( x2 )
	add x15 ,  x0 ,  x22
	beq x0, x14, .LBB1_26
.LBB1_44:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB1_46
.LBB1_45:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  1024
.LBB1_46:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB1_26 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_47:                               //  %sw.bb118
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x25 ,  0 ( x15 )
	add x15 ,  x0 ,  x22
	bge x25, x0, .LBB1_26
.LBB1_48:                               //  %if.end122
                                        //    in Loop: Header=BB1_26 Depth=3
	sub x25 ,  x0 ,  x25
.LBB1_49:                               //  %sw.bb123.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  4
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_50:                               //  %sw.bb125
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x15 ,  x0 ,  43
.LBB1_51:                               //  %rflag
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x15 ,  160 ( x2 )
.LBB1_52:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_26 Depth=3
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_53:                               //  %sw.bb152
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  128
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_54:                               //  %sw.bb165
                                        //    in Loop: Header=BB1_26 Depth=3
	ori x8 ,  x8 ,  8
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_26
.LBB1_55:                               //  %sw.bb167
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB1_59
.LBB1_56:                               //  %sw.bb167
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  64
	add x15 ,  x0 ,  x22
	or x8 ,  x8 ,  x14
	jal x0, .LBB1_26
.LBB1_57:                               //  %sw.bb175
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x15 ,  0 ( x22 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB1_60
.LBB1_58:                               //  %sw.bb175
                                        //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  16
	add x15 ,  x0 ,  x22
	or x8 ,  x8 ,  x14
	jal x0, .LBB1_26
.LBB1_59:                               //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  512
	addi x15 ,  x22 ,  4
	or x8 ,  x8 ,  x14
	jal x0, .LBB1_26
.LBB1_60:                               //    in Loop: Header=BB1_26 Depth=3
	addi x14 ,  x0 ,  32
	addi x15 ,  x22 ,  4
	or x8 ,  x8 ,  x14
	jal x0, .LBB1_26
.LBB1_61:                               //  %if.then130
                                        //    in Loop: Header=BB1_26 Depth=3
	lw x14 ,  164 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  164 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	blt x14, x13, .LBB1_63
.LBB1_62:                               //  %if.then130
                                        //    in Loop: Header=BB1_26 Depth=3
	add x13 ,  x0 ,  x14
.LBB1_63:                               //  %if.then130
                                        //    in Loop: Header=BB1_26 Depth=3
	sw x13 ,  76 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_26
.LBB1_64:                               //  %sw.bb488
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB1_69
.LBB1_65:                               //  %if.else494
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  100
	bltu x0, x15, .LBB1_68
.LBB1_66:                               //  %if.else499
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  64
	bltu x0, x15, .LBB1_70
.LBB1_67:                               //  %if.else505
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  512
	bltu x0, x15, .LBB1_71
.LBB1_68:                               //  %if.then497
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_69:                               //  %if.then491
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x12 ,  x2 ,  100
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	srai x14 ,  x18 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_70:                               //  %if.then502
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_71:                               //  %if.then508
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_19
.LBB1_72:                               //  %sw.bb253
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  8
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB1_74
.LBB1_73:                               //  %if.else260
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  8
	lw x24 ,  0 ( x15 )
	sw x14 ,  164 ( x2 )
	lw x8 ,  4 ( x15 )
	jal x0, .LBB1_75
.LBB1_74:                               //  %if.then256
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  8
	lw x10 ,  0 ( x15 )
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  12
	lw x11 ,  4 ( x15 )
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  16
	lw x12 ,  8 ( x15 )
	sw x14 ,  164 ( x2 )
	lw x13 ,  12 ( x15 )
	call __trunctfdf2
	add x24 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB1_75:                               //  %if.end263
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	add x9 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	add x10 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x9
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x8
	call __nedf2
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x8 ,  60 ( x2 )              //  4-byte Folded Spill
	bltu x0, x10, .LBB1_81
.LBB1_76:                               //  %if.then266
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x0
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x23
	add x12 ,  x0 ,  x23
	call __ltdf2
	bge x10, x0, .LBB1_78
.LBB1_77:                               //  %if.then270
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  160 ( x2 )
.LBB1_78:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lui x14 ,  (.str>>12)&1048575
	addi x12 ,  x2 ,  100
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	bltu x27, x14, .LBB1_80
.LBB1_79:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	add x19 ,  x0 ,  x15
.LBB1_80:                               //  %if.end271
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11 ,  x0 ,  x23
	addi x24 ,  x0 ,  3
	andi x8 ,  x8 ,  -129
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	bge x24, x11, .LBB1_264
	jal x0, .LBB1_265
.LBB1_81:                               //  %if.end278
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x24
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	call __unorddf2
	bltu x0, x10, .LBB1_102
.LBB1_82:                               //  %if.end299
                                        //    in Loop: Header=BB1_19 Depth=2
	ori x12 ,  x27 ,  32
	xori x15 ,  x12 ,  97
	sw x12 ,  72 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_133
.LBB1_83:                               //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x23 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  97
	beq x27, x15, .LBB1_160
.LBB1_84:                               //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  88
	jal x0, .LBB1_161
.LBB1_85:                               //  %sw.bb190
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x10 ,  0 ( x15 )
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB1_125
.LBB1_86:                               //  %sw.bb190
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x27 ,  99
	bltu x0, x15, .LBB1_125
.LBB1_87:                               //  %if.then197
                                        //    in Loop: Header=BB1_19 Depth=2
	call btowc
	xori x15 ,  x10 ,  -1
	addi x12 ,  x2 ,  100
	bltu x0, x15, .LBB1_126
	jal x0, .LBB1_511
.LBB1_88:                               //  %sw.bb559
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	add x18 ,  x0 ,  x26
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x26 ,  0 ( x15 )
	sw x0 ,  160 ( x2 )
	beq x0, x26, .LBB1_136
.LBB1_89:                               //  %if.else570
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x12 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB1_139
.LBB1_90:                               //  %if.else570
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x27 ,  83
	beq x0, x15, .LBB1_139
.LBB1_91:                               //  %if.then576
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	bge x12, x0, .LBB1_92
.LBB1_517:                              //  %if.then576
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_243
.LBB1_92:                               //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x8
	call memchr
	beq x10, x8, .LBB1_94
.LBB1_93:                               //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x15 ,  x10 ,  x26
	sw x15 ,  76 ( x2 )             //  4-byte Folded Spill
.LBB1_94:                               //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  76 ( x2 )             //  4-byte Folded Reload
	sltiu x15 ,  x10 ,  100
	slli x8 ,  x10 ,  2&31
	beq x0, x15, .LBB1_95
.LBB1_518:                              //  %if.then579
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_244
.LBB1_95:                               //  %if.then594
                                        //    in Loop: Header=BB1_19 Depth=2
	add x9 ,  x0 ,  x10
	addi x11 ,  x8 ,  4
	add x10 ,  x0 ,  x19
	call _malloc_r
	add x19 ,  x0 ,  x10
	bltu x0, x19, .LBB1_96
.LBB1_519:                              //  %if.then594
	jal x0, .LBB1_510
.LBB1_96:                               //    in Loop: Header=BB1_19 Depth=2
	add x11 ,  x0 ,  x19
	addi x12 ,  x2 ,  100
	add x10 ,  x0 ,  x9
	jal x0, .LBB1_245
.LBB1_97:                               //  %sw.bb213
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB1_127
.LBB1_98:                               //  %cond.false218
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  100
	bltu x0, x15, .LBB1_144
.LBB1_99:                               //  %cond.false223
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  64
	bltu x0, x15, .LBB1_214
.LBB1_100:                              //  %cond.false230
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x23 ,  0 ( x15 )
	andi x15 ,  x8 ,  512
	beq x0, x15, .LBB1_145
.LBB1_101:                              //  %cond.true233
                                        //    in Loop: Header=BB1_19 Depth=2
	slli x15 ,  x23 ,  24&31
	srai x23 ,  x15 ,  24&31
	srai x24 ,  x23 ,  31&31
	bge x24, x0, .LBB1_128
	jal x0, .LBB1_146
.LBB1_102:                              //  %cond.true286
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	bge x8, x0, .LBB1_104
.LBB1_103:                              //  %if.then291
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  160 ( x2 )
.LBB1_104:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	lui x14 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	addi x14 ,  x0 ,  72
	bltu x27, x14, .LBB1_106
.LBB1_105:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	add x19 ,  x0 ,  x15
.LBB1_106:                              //  %if.end292
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	addi x24 ,  x0 ,  3
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x23
	andi x8 ,  x8 ,  -129
	jal x0, .LBB1_262
.LBB1_107:                              //  %hex.loopexit
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x15 ,  (.str.6>>12)&1048575
	lui x30 ,  .str.6&4095
	jal x0, .LBB1_120
.LBB1_108:                              //  %sw.bb517
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB1_156
.LBB1_109:                              //  %cond.false522
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  100
	bltu x0, x15, .LBB1_215
.LBB1_110:                              //  %cond.false527
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  64
	beq x0, x15, .LBB1_111
.LBB1_520:                              //  %cond.false527
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_472
.LBB1_111:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	andi x14 ,  x8 ,  512
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB1_112
.LBB1_521:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_473
.LBB1_112:                              //  %cond.false534
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x23 ,  x23 ,  255
	jal x0, .LBB1_473
.LBB1_113:                              //  %sw.bb553
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	lui x30 ,  .str.4&4095
	addi x27 ,  x0 ,  120
	add x24 ,  x0 ,  x0
	ori x8 ,  x8 ,  2
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lui x14 ,  (.str.4>>12)&1048575
	lw x23 ,  0 ( x15 )
	addi x15 ,  x0 ,  48
	or x14 ,  x14 ,  x30
	sw x27 ,  96 ( x2 )
	sw x15 ,  92 ( x2 )
	addi x15 ,  x0 ,  2
	sw x14 ,  40 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_158
.LBB1_114:                              //  %sw.bb645
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB1_157
.LBB1_115:                              //  %cond.false650
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x8 ,  16
	addi x12 ,  x2 ,  100
	bltu x0, x15, .LBB1_216
.LBB1_116:                              //  %cond.false655
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  64
	beq x0, x15, .LBB1_117
.LBB1_522:                              //  %cond.false655
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_475
.LBB1_117:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	andi x14 ,  x8 ,  512
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x14, x15, .LBB1_118
.LBB1_523:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_476
.LBB1_118:                              //  %cond.false662
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x23 ,  x23 ,  255
	jal x0, .LBB1_476
.LBB1_119:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
.LBB1_120:                              //  %hex
                                        //    in Loop: Header=BB1_19 Depth=2
	srli x30 ,  x30 ,  12&31
	addi x12 ,  x2 ,  100
	or x15 ,  x15 ,  x30
	sw x15 ,  40 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x8 ,  32
	bltu x0, x15, .LBB1_129
.LBB1_121:                              //  %cond.false686
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  16
	bltu x0, x15, .LBB1_159
.LBB1_122:                              //  %cond.false691
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  64
	bltu x0, x15, .LBB1_217
.LBB1_123:                              //  %cond.false698
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	andi x14 ,  x8 ,  512
	lw x23 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_218
.LBB1_124:                              //  %cond.false698
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x23 ,  x23 ,  255
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	andi x15 ,  x8 ,  1
	bltu x0, x15, .LBB1_219
	jal x0, .LBB1_221
.LBB1_125:                              //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
.LBB1_126:                              //  %if.end211
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x0
	sw x10 ,  196 ( x2 )
	sw x0 ,  200 ( x2 )
	sw x0 ,  160 ( x2 )
	slti x24 ,  x0 ,  1
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x23
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_132
.LBB1_127:                              //  %cond.true216
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x12 ,  x2 ,  100
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  8
	lw x23 ,  0 ( x15 )
	sw x14 ,  164 ( x2 )
	lw x24 ,  4 ( x15 )
	blt x24, x0, .LBB1_146
.LBB1_128:                              //    in Loop: Header=BB1_19 Depth=2
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x11, .LBB1_222
	jal x0, .LBB1_223
.LBB1_129:                              //  %cond.true684
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  8
	lw x23 ,  0 ( x15 )
	sw x14 ,  164 ( x2 )
	lw x24 ,  4 ( x15 )
	andi x15 ,  x8 ,  1
	bltu x0, x15, .LBB1_219
	jal x0, .LBB1_221
.LBB1_130:                              //  %sw.default824
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	bltu x0, x27, .LBB1_131
.LBB1_524:                              //  %sw.default824
	jal x0, .LBB1_505
.LBB1_131:                              //  %if.end828
                                        //    in Loop: Header=BB1_19 Depth=2
	add x9 ,  x0 ,  x24
	add x23 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	sw x24 ,  72 ( x2 )             //  4-byte Folded Spill
	slti x24 ,  x0 ,  1
	sw x27 ,  196 ( x2 )
	sw x0 ,  160 ( x2 )
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
.LBB1_132:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x19 ,  x2 ,  196
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	bge x24, x11, .LBB1_264
	jal x0, .LBB1_265
.LBB1_133:                              //  %if.else328
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  196
	xori x14 ,  x13 ,  -1
	beq x0, x14, .LBB1_180
.LBB1_134:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x14 ,  x0 ,  103
	beq x12, x14, .LBB1_181
.LBB1_135:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x13
	add x9 ,  x0 ,  x0
	bne x13, x9, .LBB1_182
	jal x0, .LBB1_183
.LBB1_136:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x24 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	add x26 ,  x0 ,  x18
	addi x12 ,  x2 ,  100
	bltu x24, x15, .LBB1_138
.LBB1_137:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x15
.LBB1_138:                              //  %if.then563
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.5&4095
	add x23 ,  x0 ,  x0
	lui x15 ,  (.str.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x23
	or x19 ,  x15 ,  x30
	jal x0, .LBB1_262
.LBB1_139:                              //  %if.else621
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x12, x0, .LBB1_140
.LBB1_525:                              //  %if.else621
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_248
.LBB1_140:                              //  %if.then624
                                        //    in Loop: Header=BB1_19 Depth=2
	add x9 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x24 ,  x0 ,  x12
	add x11 ,  x0 ,  x9
	call wmemchr
	bltu x0, x10, .LBB1_141
.LBB1_526:                              //  %if.then624
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_458
.LBB1_141:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x15 ,  x10 ,  x26
	addi x12 ,  x2 ,  100
	srai x15 ,  x15 ,  2&31
	blt x24, x15, .LBB1_143
.LBB1_142:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x15
.LBB1_143:                              //  %if.then629
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x0
	add x19 ,  x0 ,  x26
	add x26 ,  x0 ,  x18
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x23
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	bge x24, x11, .LBB1_264
	jal x0, .LBB1_265
.LBB1_144:                              //  %cond.true221
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x23 ,  0 ( x15 )
.LBB1_145:                              //  %cond.end243
                                        //    in Loop: Header=BB1_19 Depth=2
	srai x24 ,  x23 ,  31&31
	bge x24, x0, .LBB1_128
.LBB1_146:                              //  %if.then738.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  -1
	bge x15, x11, .LBB1_148
.LBB1_147:                              //    in Loop: Header=BB1_19 Depth=2
	andi x8 ,  x8 ,  -129
.LBB1_148:                              //  %if.then738.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  45
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  160 ( x2 )
	sltu x15 ,  x0 ,  x23
	sub x23 ,  x0 ,  x23
	add x15 ,  x15 ,  x24
	sub x24 ,  x0 ,  x15
	addi x15 ,  x0 ,  9
	add x8 ,  x0 ,  x0
	bne x24, x8, .LBB1_240
.LBB1_149:                              //    in Loop: Header=BB1_19 Depth=2
	sltu x15 ,  x15 ,  x23
	beq x0, x15, .LBB1_241
.LBB1_150:                              //  %if.end764
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  112 ( x2 )
	andi x15 ,  x15 ,  1024
	bltu x0, x15, .LBB1_165
.LBB1_151:                              //  %do.body765.us.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_154
.LBB1_152:                              //  %do.body765.us
                                        //    in Loop: Header=BB1_154 Depth=3
	sltu x15 ,  x0 ,  x24
.LBB1_153:                              //  %do.body765.us
                                        //    in Loop: Header=BB1_154 Depth=3
	sub x14 ,  x23 ,  x10
	add x19 ,  x0 ,  x18
	add x23 ,  x0 ,  x9
	add x24 ,  x0 ,  x26
	ori x14 ,  x14 ,  48
	sw x14 ,  -4 ( x19 )
	lw x14 ,  112 ( x2 )
	addi x19 ,  x19 ,  -4
	addi x14 ,  x14 ,  1
	sw x14 ,  112 ( x2 )
	beq x0, x15, .LBB1_179
.LBB1_154:                              //  %do.body765.us
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x18 ,  x0 ,  x19
	addi x19 ,  x0 ,  10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	add x9 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	call __muldi3
	bne x24, x8, .LBB1_152
.LBB1_155:                              //    in Loop: Header=BB1_154 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x23
	jal x0, .LBB1_153
.LBB1_156:                              //  %cond.true520
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x12 ,  x2 ,  100
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	addi x14 ,  x15 ,  8
	lw x23 ,  0 ( x15 )
	sw x14 ,  164 ( x2 )
	lw x24 ,  4 ( x15 )
	jal x0, .LBB1_474
.LBB1_157:                              //  %cond.true648
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  164 ( x2 )
	addi x27 ,  x0 ,  117
	addi x15 ,  x14 ,  4
	sw x15 ,  164 ( x2 )
	addi x15 ,  x14 ,  8
	lw x23 ,  0 ( x14 )
	sw x15 ,  164 ( x2 )
	slti x15 ,  x0 ,  1
	lw x24 ,  4 ( x14 )
.LBB1_158:                              //  %nosign
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  160 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x11, .LBB1_222
	jal x0, .LBB1_223
.LBB1_159:                              //  %cond.true689
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x23 ,  0 ( x15 )
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	andi x15 ,  x8 ,  1
	bltu x0, x15, .LBB1_219
	jal x0, .LBB1_221
.LBB1_160:                              //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  120
.LBB1_161:                              //  %if.then306
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x15 ,  96 ( x2 )
	addi x15 ,  x0 ,  48
	sw x15 ,  92 ( x2 )
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  2
	sw x15 ,  84 ( x2 )             //  4-byte Folded Spill
	slti x15 ,  x23 ,  100
	bltu x0, x15, .LBB1_164
.LBB1_162:                              //  %if.then315
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x23 ,  2&31
	addi x11 ,  x15 ,  4
	call _malloc_r
	add x9 ,  x0 ,  x10
	bltu x0, x9, .LBB1_163
.LBB1_527:                              //  %if.then315
	jal x0, .LBB1_509
.LBB1_163:                              //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x9
	jal x0, .LBB1_183
.LBB1_164:                              //    in Loop: Header=BB1_19 Depth=2
	add x9 ,  x0 ,  x0
	addi x15 ,  x2 ,  196
	jal x0, .LBB1_183
.LBB1_165:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_167
.LBB1_166:                              //  %if.end792
                                        //    in Loop: Header=BB1_167 Depth=3
	sltu x15 ,  x0 ,  x24
	add x23 ,  x0 ,  x26
	add x24 ,  x0 ,  x9
	sw x12 ,  80 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB1_179
.LBB1_167:                              //  %do.body765
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x18 ,  x0 ,  x19
	addi x19 ,  x0 ,  10
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	call __udivdi3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	add x26 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x19 ,  x0 ,  x18
	call __muldi3
	lw x14 ,  112 ( x2 )
	sub x15 ,  x23 ,  x10
	lw x12 ,  80 ( x2 )             //  4-byte Folded Reload
	ori x15 ,  x15 ,  48
	sw x15 ,  -4 ( x19 )
	addi x15 ,  x19 ,  -4
	addi x13 ,  x14 ,  1
	sw x13 ,  112 ( x2 )
	lb x14 ,  0 ( x12 )
	bne x13, x14, .LBB1_171
.LBB1_168:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_167 Depth=3
	beq x24, x8, .LBB1_172
.LBB1_169:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_167 Depth=3
	add x13 ,  x0 ,  x8
	bltu x0, x13, .LBB1_171
.LBB1_173:                              //  %land.lhs.true776
                                        //    in Loop: Header=BB1_167 Depth=3
	andi x14 ,  x14 ,  255
	xori x14 ,  x14 ,  127
	beq x0, x14, .LBB1_171
.LBB1_174:                              //  %if.then783
                                        //    in Loop: Header=BB1_167 Depth=3
	lw x15 ,  156 ( x2 )
	sw x0 ,  112 ( x2 )
	add x14 ,  x0 ,  x0
	sw x15 ,  -8 ( x19 )
	lbu x15 ,  1 ( x12 )
	beq x15, x14, .LBB1_176
.LBB1_175:                              //  %if.then783
                                        //    in Loop: Header=BB1_167 Depth=3
	addi x12 ,  x12 ,  1
.LBB1_176:                              //  %if.then783
                                        //    in Loop: Header=BB1_167 Depth=3
	addi x19 ,  x19 ,  -8
	bne x24, x8, .LBB1_166
	jal x0, .LBB1_178
.LBB1_172:                              //    in Loop: Header=BB1_167 Depth=3
	sltiu x13 ,  x23 ,  10
	beq x0, x13, .LBB1_173
.LBB1_171:                              //    in Loop: Header=BB1_167 Depth=3
	add x19 ,  x0 ,  x15
	bne x24, x8, .LBB1_166
.LBB1_178:                              //    in Loop: Header=BB1_167 Depth=3
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x23
	add x23 ,  x0 ,  x26
	add x24 ,  x0 ,  x9
	sw x12 ,  80 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_167
.LBB1_179:                              //    in Loop: Header=BB1_19 Depth=2
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_261
.LBB1_180:                              //    in Loop: Header=BB1_19 Depth=2
	addi x23 ,  x0 ,  6
	jal x0, .LBB1_183
.LBB1_181:                              //    in Loop: Header=BB1_19 Depth=2
	slti x23 ,  x0 ,  1
	add x9 ,  x0 ,  x0
	beq x13, x9, .LBB1_183
.LBB1_182:                              //  %if.else332
                                        //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x13
.LBB1_183:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x15 ,  4 ( x2 )
	addi x15 ,  x0 ,  100
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	addi x8 ,  x2 ,  112
	addi x16 ,  x2 ,  144
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	add x17 ,  x0 ,  x27
	sw x15 ,  8 ( x2 )
	lw x15 ,  84 ( x2 )             //  4-byte Folded Reload
	sw x8 ,  0 ( x2 )
	lw x12 ,  60 ( x2 )             //  4-byte Folded Reload
	ori x14 ,  x15 ,  256
	addi x15 ,  x2 ,  148
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
	call wcvt
	add x19 ,  x0 ,  x10
	bltu x0, x9, .LBB1_188
.LBB1_184:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  196
	addi x12 ,  x2 ,  100
	bne x19, x15, .LBB1_190
.LBB1_185:                              //  %if.end344
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	slti x14 ,  x15 ,  101
	bltu x0, x14, .LBB1_190
.LBB1_186:                              //  %if.then357
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x9 ,  88 ( x2 )              //  4-byte Folded Reload
	slli x11 ,  x15 ,  2&31
	add x10 ,  x0 ,  x9
	call _malloc_r
	add x19 ,  x0 ,  x10
	bltu x0, x19, .LBB1_187
.LBB1_528:                              //  %if.then357
	jal x0, .LBB1_509
.LBB1_187:                              //  %if.end367
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	addi x16 ,  x2 ,  144
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	add x17 ,  x0 ,  x27
	sw x8 ,  0 ( x2 )
	sw x19 ,  4 ( x2 )
	lw x12 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  8 ( x2 )
	addi x15 ,  x2 ,  148
	call wcvt
	add x9 ,  x0 ,  x19
	addi x12 ,  x2 ,  100
	add x19 ,  x0 ,  x10
	jal x0, .LBB1_189
.LBB1_188:                              //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
.LBB1_189:                              //  %if.end370
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  72 ( x2 )             //  4-byte Folded Reload
.LBB1_190:                              //  %if.end370
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x15 ,  x11 ,  103
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB1_195
.LBB1_191:                              //  %if.then376
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x5 ,  144 ( x2 )
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x5 ,  -3
	bltu x0, x15, .LBB1_193
.LBB1_192:                              //  %if.then376
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x23, x5, .LBB1_193
.LBB1_529:                              //  %if.then376
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_253
.LBB1_193:                              //  %if.then376.if.then394_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x27 ,  x27 ,  -2
	ori x11 ,  x27 ,  32
	addi x15 ,  x0 ,  97
	beq x11, x15, .LBB1_199
.LBB1_194:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x27
	slti x10 ,  x0 ,  1
	addi x14 ,  x5 ,  -1
	blt x5, x10, .LBB1_201
.LBB1_200:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x13 ,  x0 ,  43
	add x8 ,  x0 ,  x14
	jal x0, .LBB1_202
.LBB1_195:                              //  %if.else386
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x27 ,  70
	bltu x0, x15, .LBB1_197
.LBB1_196:                              //  %if.else407.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x5 ,  144 ( x2 )
	andi x15 ,  x13 ,  1
	or x15 ,  x23 ,  x15
	bge x0, x5, .LBB1_257
.LBB1_530:                              //  %if.else407.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_251
.LBB1_257:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x0
	bne x15, x10, .LBB1_258
.LBB1_531:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_483
.LBB1_258:                              //  %if.end452.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x24 ,  x23 ,  2
	addi x27 ,  x0 ,  102
	add x23 ,  x0 ,  x10
	jal x0, .LBB1_480
.LBB1_197:                              //  %if.end391
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  101
	bltu x15, x27, .LBB1_249
.LBB1_198:                              //  %if.end391.if.then394_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x5 ,  144 ( x2 )
	addi x15 ,  x0 ,  97
	bne x11, x15, .LBB1_194
.LBB1_199:                              //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x27 ,  15
	slti x10 ,  x0 ,  1
	addi x14 ,  x5 ,  -1
	bge x5, x10, .LBB1_200
.LBB1_201:                              //    in Loop: Header=BB1_19 Depth=2
	addi x13 ,  x0 ,  45
	sub x8 ,  x10 ,  x5
.LBB1_202:                              //  %if.then394
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x15 ,  116 ( x2 )
	slti x15 ,  x8 ,  10
	sw x14 ,  144 ( x2 )
	sw x13 ,  120 ( x2 )
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_210
.LBB1_203:                              //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	addi x13 ,  x2 ,  196
	add x24 ,  x0 ,  x10
.LBB1_204:                              //  %do.body.i
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x9 ,  x0 ,  x8
	addi x23 ,  x0 ,  10
	add x19 ,  x0 ,  x15
	add x26 ,  x0 ,  x13
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call __divsi3
	add x11 ,  x0 ,  x23
	add x8 ,  x0 ,  x10
	call __mulsi3
	sub x14 ,  x9 ,  x10
	addi x13 ,  x26 ,  -4
	addi x15 ,  x19 ,  1
	addi x24 ,  x24 ,  -1
	addi x12 ,  x0 ,  99
	addi x14 ,  x14 ,  48
	sw x14 ,  0 ( x18 )
	addi x18 ,  x18 ,  -4
	blt x12, x9, .LBB1_204
.LBB1_205:                              //  %do.end.i
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x13 ,  x8 ,  48
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x24 ,  -2
	addi x12 ,  x2 ,  100
	slti x10 ,  x0 ,  1
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	sw x13 ,  0 ( x18 )
	bge x11, x0, .LBB1_213
.LBB1_206:                              //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	sw x13 ,  124 ( x2 )
	xori x13 ,  x24 ,  1
	beq x0, x13, .LBB1_213
.LBB1_207:                              //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x2 ,  132
	sw x14 ,  128 ( x2 )
	beq x0, x24, .LBB1_213
.LBB1_208:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x2 ,  132
.LBB1_209:                              //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  0 ( x26 )
	addi x26 ,  x26 ,  4
	addi x19 ,  x19 ,  -1
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x19, .LBB1_209
	jal x0, .LBB1_213
.LBB1_210:                              //  %if.else17.i
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	xori x14 ,  x11 ,  97
	beq x0, x14, .LBB1_212
.LBB1_211:                              //  %if.then19.i
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  124 ( x2 )
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
.LBB1_212:                              //  %if.end21.i
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x14 ,  x8 ,  48
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
	sw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
.LBB1_213:                              //  %wexponent.exit
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  84 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	andi x8 ,  x8 ,  -1025
	lw x14 ,  112 ( x2 )
	add x5 ,  x0 ,  x23
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	andi x11 ,  x11 ,  1
	slt x13 ,  x10 ,  x14
	add x10 ,  x0 ,  x23
	or x13 ,  x13 ,  x11
	addi x11 ,  x2 ,  116
	sub x15 ,  x15 ,  x11
	srai x15 ,  x15 ,  2&31
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x14 ,  x15
	add x24 ,  x13 ,  x15
	jal x0, .LBB1_481
.LBB1_214:                              //  %cond.true226
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x23 ,  x15 ,  16&31
	srai x24 ,  x23 ,  31&31
	bge x24, x0, .LBB1_128
	jal x0, .LBB1_146
.LBB1_215:                              //  %cond.true525
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x23 ,  0 ( x15 )
	jal x0, .LBB1_473
.LBB1_216:                              //  %cond.true653
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lw x23 ,  0 ( x15 )
	jal x0, .LBB1_476
.LBB1_217:                              //  %cond.true694
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lhu x23 ,  0 ( x15 )
.LBB1_218:                              //  %cond.false698
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	andi x15 ,  x8 ,  1
	beq x0, x15, .LBB1_221
.LBB1_219:                              //  %cond.end714
                                        //    in Loop: Header=BB1_19 Depth=2
	or x15 ,  x24 ,  x23
	beq x0, x15, .LBB1_221
.LBB1_220:                              //  %if.then721
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	ori x8 ,  x8 ,  2
	sw x27 ,  96 ( x2 )
	sw x15 ,  92 ( x2 )
.LBB1_221:                              //  %if.end725
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  2
	andi x8 ,  x8 ,  -1025
	sw x0 ,  160 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x11, .LBB1_223
.LBB1_222:                              //    in Loop: Header=BB1_19 Depth=2
	andi x8 ,  x8 ,  -129
.LBB1_223:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x11, .LBB1_228
.LBB1_224:                              //  %number
                                        //    in Loop: Header=BB1_19 Depth=2
	or x14 ,  x24 ,  x23
	bltu x0, x14, .LBB1_228
.LBB1_225:                              //  %if.else807
                                        //    in Loop: Header=BB1_19 Depth=2
	bltu x0, x15, .LBB1_233
.LBB1_226:                              //  %if.else807
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  1
	beq x0, x15, .LBB1_233
.LBB1_227:                              //  %if.then814
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	addi x19 ,  x2 ,  592
	sw x15 ,  592 ( x2 )
	jal x0, .LBB1_261
.LBB1_228:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x15, .LBB1_234
.LBB1_229:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB1_239
.LBB1_230:                              //  %if.then738
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  44 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB1_242
.LBB1_231:                              //  %do.body798
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x15 ,  x23 ,  15
	slli x14 ,  x24 ,  28&31
	srli x24 ,  x24 ,  4&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x13
	lw x15 ,  0 ( x15 )
	sw x15 ,  -4 ( x19 )
	srli x15 ,  x23 ,  4&31
	addi x19 ,  x19 ,  -4
	or x23 ,  x14 ,  x15
	or x15 ,  x24 ,  x23
	bltu x0, x15, .LBB1_231
	jal x0, .LBB1_261
.LBB1_233:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_261
.LBB1_234:                              //  %do.body741.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x19 ,  x2 ,  592
.LBB1_235:                              //  %do.body741
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	slli x14 ,  x24 ,  29&31
	srli x15 ,  x23 ,  3&31
	srli x24 ,  x24 ,  3&31
	or x15 ,  x14 ,  x15
	andi x14 ,  x23 ,  7
	ori x14 ,  x14 ,  48
	or x13 ,  x24 ,  x15
	add x23 ,  x0 ,  x15
	sw x14 ,  0 ( x19 )
	addi x19 ,  x19 ,  -4
	bltu x0, x13, .LBB1_235
.LBB1_236:                              //  %do.end748
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x19 ,  4
	andi x13 ,  x8 ,  1
	beq x0, x13, .LBB1_260
.LBB1_237:                              //  %do.end748
                                        //    in Loop: Header=BB1_19 Depth=2
	xori x14 ,  x14 ,  48
	beq x0, x14, .LBB1_260
.LBB1_238:                              //  %if.then754
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  48
	sw x15 ,  0 ( x19 )
	jal x0, .LBB1_261
.LBB1_239:                              //    in Loop: Header=BB1_19 Depth=2
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	addi x15 ,  x0 ,  9
	add x8 ,  x0 ,  x0
	beq x24, x8, .LBB1_149
.LBB1_240:                              //  %sw.bb757
                                        //    in Loop: Header=BB1_19 Depth=2
	sltu x15 ,  x0 ,  x24
	bltu x0, x15, .LBB1_150
.LBB1_241:                              //  %if.then760
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x23 ,  48
	addi x19 ,  x2 ,  592
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  592 ( x2 )
	jal x0, .LBB1_261
.LBB1_242:                              //  %sw.default
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	add x10 ,  x0 ,  x19
	call wcslen
	add x23 ,  x0 ,  x0
	addi x12 ,  x2 ,  100
	add x24 ,  x0 ,  x10
	lw x11 ,  76 ( x2 )             //  4-byte Folded Reload
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_262
.LBB1_260:                              //    in Loop: Header=BB1_19 Depth=2
	add x19 ,  x0 ,  x15
.LBB1_261:                              //  %if.end817
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	sub x15 ,  x15 ,  x19
	srai x24 ,  x15 ,  2&31
.LBB1_262:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
.LBB1_263:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	blt x24, x11, .LBB1_265
.LBB1_264:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x24
.LBB1_265:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  160 ( x2 )
	andi x26 ,  x8 ,  2
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	sltu x14 ,  x0 ,  x14
	add x14 ,  x14 ,  x15
	srli x15 ,  x26 ,  1&31
	beq x0, x15, .LBB1_267
.LBB1_266:                              //    in Loop: Header=BB1_19 Depth=2
	addi x14 ,  x14 ,  2
.LBB1_267:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x19 ,  x8 ,  132
	add x9 ,  x0 ,  x11
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	sw x14 ,  76 ( x2 )             //  4-byte Folded Spill
	beq x0, x19, .LBB1_271
.LBB1_268:                              //  %if.end895
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  160 ( x2 )
	beq x0, x15, .LBB1_278
.LBB1_269:                              //  %if.then897
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  160
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_277
.LBB1_270:                              //  %if.then907
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x18
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_278
	jal x0, .LBB1_497
.LBB1_271:                              //  %if.then849
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x8 ,  x25 ,  x14
	bge x0, x8, .LBB1_268
.LBB1_272:                              //  %while.cond854.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.blanks&4095
	lui x15 ,  (_vfwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_275
	jal x0, .LBB1_316
.LBB1_273:                              //    in Loop: Header=BB1_275 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_274:                              //  %if.end873
                                        //    in Loop: Header=BB1_275 Depth=3
	lui x30 ,  _vfwprintf_r.blanks&4095
	lui x15 ,  (_vfwprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_316
.LBB1_275:                              //  %while.body857
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_273
.LBB1_276:                              //  %if.then867
                                        //    in Loop: Header=BB1_275 Depth=3
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x18
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_274
	jal x0, .LBB1_497
.LBB1_277:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_278:                              //  %if.end914
                                        //    in Loop: Header=BB1_19 Depth=2
	beq x0, x26, .LBB1_291
.LBB1_279:                              //  %if.then917
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  8
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  8
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  92
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_290
.LBB1_280:                              //  %if.then928
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x0 ,  x18
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_281
.LBB1_532:                              //  %if.then928
	jal x0, .LBB1_498
.LBB1_281:                              //  %if.end935
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x19 ,  128
	bltu x0, x15, .LBB1_292
.LBB1_282:                              //  %if.then939
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x25 ,  x15
	bge x0, x8, .LBB1_293
.LBB1_283:                              //  %while.cond944.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_286
	jal x0, .LBB1_288
.LBB1_284:                              //    in Loop: Header=BB1_286 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_285:                              //  %if.end963
                                        //    in Loop: Header=BB1_286 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_288
.LBB1_286:                              //  %while.body947
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_284
.LBB1_287:                              //  %if.then957
                                        //    in Loop: Header=BB1_286 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_285
	jal x0, .LBB1_499
.LBB1_288:                              //  %while.end965
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_318
.LBB1_289:                              //  %if.then977
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_293
	jal x0, .LBB1_499
.LBB1_290:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_291:                              //  %if.end935
                                        //    in Loop: Header=BB1_19 Depth=2
	add x26 ,  x0 ,  x18
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x19 ,  128
	beq x0, x15, .LBB1_282
.LBB1_292:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
.LBB1_293:                              //  %if.end985
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x8 ,  x9 ,  x24
	bge x0, x8, .LBB1_319
.LBB1_294:                              //  %while.cond990.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_297
	jal x0, .LBB1_299
.LBB1_295:                              //    in Loop: Header=BB1_297 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_296:                              //  %if.end1009
                                        //    in Loop: Header=BB1_297 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_299
.LBB1_297:                              //  %while.body993
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_295
.LBB1_298:                              //  %if.then1003
                                        //    in Loop: Header=BB1_297 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_296
	jal x0, .LBB1_499
.LBB1_299:                              //  %while.end1011
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_304
.LBB1_300:                              //  %if.then1023
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_301
.LBB1_533:                              //  %if.then1023
	jal x0, .LBB1_499
.LBB1_301:                              //  %if.end1030
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  256
	bltu x0, x15, .LBB1_305
.LBB1_302:                              //  %if.then1034
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x24 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  8 ( x12 )
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_312
.LBB1_303:                              //  %if.then1046
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	add x24 ,  x0 ,  x0
	addi x23 ,  x0 ,  90
	beq x0, x10, .LBB1_421
	jal x0, .LBB1_499
.LBB1_304:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  256
	beq x0, x15, .LBB1_302
.LBB1_305:                              //  %if.else1053
                                        //    in Loop: Header=BB1_19 Depth=2
	sltiu x15 ,  x27 ,  102
	bltu x0, x15, .LBB1_313
.LBB1_306:                              //  %if.then1056
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	lw x11 ,  60 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x24
	add x12 ,  x0 ,  x24
	call __nedf2
	bltu x0, x10, .LBB1_326
.LBB1_307:                              //  %if.then1060
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	lui x30 ,  .str.8&4095
	lw x15 ,  8 ( x12 )
	srli x30 ,  x30 ,  12&31
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	lui x15 ,  (.str.8>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_332
.LBB1_308:                              //  %if.then1070
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	addi x20 ,  x2 ,  1220
	addi x23 ,  x0 ,  90
	beq x0, x10, .LBB1_309
.LBB1_550:                              //  %if.then1070
	jal x0, .LBB1_500
.LBB1_309:                              //  %if.end1076
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	andi x14 ,  x8 ,  1
	bltu x0, x14, .LBB1_333
.LBB1_310:                              //  %if.end1076
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	blt x14, x15, .LBB1_333
.LBB1_311:                              //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	andi x15 ,  x8 ,  4
	beq x0, x15, .LBB1_489
.LBB1_422:                              //  %if.then1740
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  76 ( x2 )             //  4-byte Folded Reload
	sub x9 ,  x25 ,  x15
	bge x0, x9, .LBB1_489
.LBB1_423:                              //  %while.cond1745.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.blanks&4095
	lui x15 ,  (_vfwprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x9 ,  17
	beq x0, x15, .LBB1_426
	jal x0, .LBB1_428
.LBB1_424:                              //    in Loop: Header=BB1_426 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_425:                              //  %if.end1764
                                        //    in Loop: Header=BB1_426 Depth=3
	lui x30 ,  _vfwprintf_r.blanks&4095
	lui x15 ,  (_vfwprintf_r.blanks>>12)&1048575
	addi x9 ,  x9 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x9, .LBB1_428
.LBB1_426:                              //  %while.body1748
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_424
.LBB1_427:                              //  %if.then1758
                                        //    in Loop: Header=BB1_426 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_425
	jal x0, .LBB1_499
.LBB1_312:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	add x24 ,  x0 ,  x0
	addi x23 ,  x0 ,  90
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB1_422
	jal x0, .LBB1_489
.LBB1_313:                              //  %if.else1589
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  4
	lw x13 ,  104 ( x2 )
	addi x9 ,  x20 ,  8
	andi x11 ,  x8 ,  1
	add x24 ,  x0 ,  x0
	sw x15 ,  4 ( x20 )
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  112 ( x2 )
	sw x15 ,  0 ( x20 )
	lw x15 ,  8 ( x12 )
	addi x14 ,  x15 ,  4
	addi x15 ,  x13 ,  1
	sw x14 ,  8 ( x12 )
	sw x15 ,  104 ( x2 )
	bltu x0, x11, .LBB1_320
.LBB1_314:                              //  %if.else1589
                                        //    in Loop: Header=BB1_19 Depth=2
	slti x11 ,  x10 ,  2
	beq x0, x11, .LBB1_320
.LBB1_315:                              //  %if.else1699
                                        //    in Loop: Header=BB1_19 Depth=2
	slti x15 ,  x13 ,  7
	addi x23 ,  x0 ,  90
	beq x0, x15, .LBB1_340
	jal x0, .LBB1_419
.LBB1_316:                              //  %while.end875
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_325
.LBB1_317:                              //  %if.then887
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x18
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_268
	jal x0, .LBB1_497
.LBB1_428:                              //  %while.end1766
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x9 ,  2&31
	sw x15 ,  4 ( x20 )
	add x15 ,  x15 ,  x14
	lw x14 ,  104 ( x2 )
	sw x15 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x14, .LBB1_490
.LBB1_429:                              //  %if.then1778
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	beq x0, x10, .LBB1_489
	jal x0, .LBB1_499
.LBB1_318:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	sub x8 ,  x9 ,  x24
	blt x0, x8, .LBB1_294
.LBB1_319:                              //    in Loop: Header=BB1_19 Depth=2
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  256
	beq x0, x15, .LBB1_302
	jal x0, .LBB1_305
.LBB1_320:                              //  %if.then1595
                                        //    in Loop: Header=BB1_19 Depth=2
	slti x13 ,  x13 ,  7
	addi x23 ,  x0 ,  90
	bltu x0, x13, .LBB1_323
.LBB1_321:                              //  %if.then1605
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x8 ,  x0 ,  x12
	call __sprint_r
	bltu x0, x10, .LBB1_499
.LBB1_322:                              //  %if.then1605.if.end1611_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  104 ( x2 )
	add x12 ,  x0 ,  x8
	addi x9 ,  x2 ,  1220
	lw x14 ,  8 ( x8 )
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
.LBB1_323:                              //  %if.end1611
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x14 ,  x14 ,  4
	sw x14 ,  8 ( x12 )
	addi x14 ,  x0 ,  4
	sw x14 ,  4 ( x9 )
	addi x14 ,  x2 ,  152
	sw x14 ,  0 ( x9 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_337
.LBB1_324:                              //  %if.then1622
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x9 ,  x2 ,  1220
	beq x0, x10, .LBB1_338
	jal x0, .LBB1_499
.LBB1_325:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	lw x15 ,  160 ( x2 )
	bltu x0, x15, .LBB1_269
	jal x0, .LBB1_278
.LBB1_326:                              //  %if.else1145
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	addi x12 ,  x2 ,  100
	bge x0, x14, .LBB1_354
.LBB1_327:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	lw x14 ,  56 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	srai x15 ,  x15 ,  2&31
	add x8 ,  x0 ,  x14
	blt x14, x15, .LBB1_329
.LBB1_328:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	add x8 ,  x0 ,  x15
.LBB1_329:                              //  %if.else1252
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, x8, .LBB1_360
.LBB1_330:                              //  %if.then1265
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  8 ( x12 )
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_359
.LBB1_331:                              //  %if.then1277
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_360
	jal x0, .LBB1_499
.LBB1_332:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	addi x23 ,  x0 ,  90
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x15 ,  112 ( x2 )
	andi x14 ,  x8 ,  1
	beq x0, x14, .LBB1_310
.LBB1_333:                              //  %if.then1082
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x12 ,  x2 ,  100
	lw x14 ,  8 ( x12 )
	addi x14 ,  x14 ,  4
	sw x14 ,  8 ( x12 )
	addi x14 ,  x0 ,  4
	sw x14 ,  4 ( x20 )
	addi x14 ,  x2 ,  152
	sw x14 ,  0 ( x20 )
	lw x14 ,  104 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x14, .LBB1_347
.LBB1_334:                              //  %if.then1092
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	bltu x0, x10, .LBB1_500
.LBB1_335:                              //  %if.then1092.if.end1098_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	addi x20 ,  x2 ,  1220
	addi x12 ,  x2 ,  100
	addi x8 ,  x15 ,  -1
	blt x0, x8, .LBB1_348
	jal x0, .LBB1_336
.LBB1_337:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
.LBB1_338:                              //  %if.end1628
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x24
	add x12 ,  x0 ,  x24
	lw x11 ,  60 ( x2 )             //  4-byte Folded Reload
	call __eqdf2
	beq x0, x10, .LBB1_341
.LBB1_339:                              //  %if.then1631
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	lw x14 ,  112 ( x2 )
	lw x13 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  0 ( x9 )
	lw x15 ,  104 ( x2 )
	slli x14 ,  x14 ,  2&31
	addi x14 ,  x14 ,  -4
	add x13 ,  x14 ,  x13
	sw x14 ,  4 ( x9 )
	sw x13 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_353
.LBB1_340:                              //  %if.then1645
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x9 ,  x2 ,  1220
	beq x0, x10, .LBB1_419
	jal x0, .LBB1_499
.LBB1_341:                              //  %if.else1652
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	addi x12 ,  x2 ,  100
	addi x8 ,  x15 ,  -1
	bge x0, x8, .LBB1_418
.LBB1_342:                              //  %while.cond1657.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_345
	jal x0, .LBB1_357
.LBB1_343:                              //    in Loop: Header=BB1_345 Depth=3
	addi x9 ,  x9 ,  8
.LBB1_344:                              //  %if.end1676
                                        //    in Loop: Header=BB1_345 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x9 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_357
.LBB1_345:                              //  %while.body1660
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x9 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_343
.LBB1_346:                              //  %if.then1670
                                        //    in Loop: Header=BB1_345 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x9 ,  x2 ,  1220
	beq x0, x10, .LBB1_344
	jal x0, .LBB1_499
.LBB1_347:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	addi x8 ,  x15 ,  -1
	bge x0, x8, .LBB1_336
.LBB1_348:                              //  %while.cond1103.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_351
	jal x0, .LBB1_454
.LBB1_349:                              //    in Loop: Header=BB1_351 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_350:                              //  %if.end1122
                                        //    in Loop: Header=BB1_351 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_454
.LBB1_351:                              //  %while.body1106
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_349
.LBB1_352:                              //  %if.then1116
                                        //    in Loop: Header=BB1_351 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_350
	jal x0, .LBB1_500
.LBB1_353:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
	jal x0, .LBB1_419
.LBB1_354:                              //  %if.then1148
                                        //    in Loop: Header=BB1_19 Depth=2
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
	lw x15 ,  104 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x15, .LBB1_370
.LBB1_355:                              //  %if.then1158
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	addi x23 ,  x0 ,  90
	bltu x0, x10, .LBB1_500
.LBB1_356:                              //  %if.then1158.if.end1164_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	addi x20 ,  x2 ,  1220
	addi x12 ,  x2 ,  100
	jal x0, .LBB1_371
.LBB1_357:                              //  %while.end1678
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x9 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_417
.LBB1_358:                              //  %if.then1690
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x9 ,  x2 ,  1220
	beq x0, x10, .LBB1_419
	jal x0, .LBB1_499
.LBB1_359:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_360:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x24, x8, .LBB1_362
.LBB1_361:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	add x8 ,  x0 ,  x24
.LBB1_362:                              //  %if.end1284
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB1_377
.LBB1_363:                              //  %while.cond1295.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_366
	jal x0, .LBB1_368
.LBB1_364:                              //    in Loop: Header=BB1_366 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_365:                              //  %if.end1314
                                        //    in Loop: Header=BB1_366 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_368
.LBB1_366:                              //  %while.body1298
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_364
.LBB1_367:                              //  %if.then1308
                                        //    in Loop: Header=BB1_366 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_365
	jal x0, .LBB1_499
.LBB1_368:                              //  %while.end1316
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_376
.LBB1_369:                              //  %if.then1328
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	lw x27 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	beq x0, x10, .LBB1_378
	jal x0, .LBB1_499
.LBB1_370:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	addi x23 ,  x0 ,  90
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
.LBB1_371:                              //  %if.end1164
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  112 ( x2 )
	andi x15 ,  x8 ,  1
	or x15 ,  x15 ,  x14
	or x15 ,  x13 ,  x15
	beq x0, x15, .LBB1_421
.LBB1_372:                              //  %if.then1171
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  152
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x13 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x15, .LBB1_431
.LBB1_373:                              //  %if.then1181
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	bltu x0, x10, .LBB1_500
.LBB1_374:                              //  %if.then1181.if.end1187_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	addi x15 ,  x2 ,  1220
	addi x12 ,  x2 ,  100
	bge x14, x0, .LBB1_487
	jal x0, .LBB1_432
.LBB1_376:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_377:                              //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
.LBB1_378:                              //  %cleanup.cont1338
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	add x9 ,  x15 ,  x14
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB1_380
.LBB1_379:                              //  %cleanup.cont1338.if.end1471_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	add x19 ,  x0 ,  x9
	jal x0, .LBB1_385
.LBB1_380:                              //  %while.cond1343.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x0, x27, .LBB1_390
.LBB1_381:                              //  %while.cond1343.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	blt x0, x23, .LBB1_390
.LBB1_382:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	add x19 ,  x14 ,  x11
	bltu x19, x9, .LBB1_384
.LBB1_383:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	add x19 ,  x0 ,  x9
.LBB1_384:                              //  %while.end1464
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x0
.LBB1_385:                              //  %if.end1471
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	addi x23 ,  x0 ,  90
	andi x13 ,  x13 ,  1
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	bltu x0, x13, .LBB1_387
.LBB1_386:                              //  %if.end1471
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x14, x15, .LBB1_438
.LBB1_387:                              //  %if.then1477
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  8 ( x12 )
	addi x13 ,  x13 ,  4
	sw x13 ,  8 ( x12 )
	addi x13 ,  x0 ,  4
	sw x13 ,  4 ( x20 )
	addi x13 ,  x2 ,  152
	sw x13 ,  0 ( x20 )
	lw x13 ,  104 ( x2 )
	addi x11 ,  x13 ,  1
	slti x13 ,  x13 ,  7
	sw x11 ,  104 ( x2 )
	bltu x0, x13, .LBB1_437
.LBB1_388:                              //  %if.then1487
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	call __sprint_r
	bltu x0, x10, .LBB1_512
.LBB1_389:                              //  %if.then1487.if.end1494_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  144 ( x2 )
	addi x20 ,  x2 ,  1220
	addi x12 ,  x2 ,  100
	lw x15 ,  112 ( x2 )
	jal x0, .LBB1_438
.LBB1_243:                              //  %if.else589
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	call strlen
	sltiu x15 ,  x10 ,  100
	slli x8 ,  x10 ,  2&31
	bltu x0, x15, .LBB1_244
.LBB1_534:                              //  %if.else589
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_95
.LBB1_244:                              //  %if.end608
                                        //    in Loop: Header=BB1_19 Depth=2
	add x11 ,  x0 ,  x0
	addi x19 ,  x2 ,  196
	addi x12 ,  x2 ,  100
	beq x0, x10, .LBB1_247
.LBB1_245:                              //  %for.body.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x19
	add x14 ,  x0 ,  x10
.LBB1_246:                              //  %for.body
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x13 ,  0 ( x26 )
	addi x26 ,  x26 ,  1
	addi x14 ,  x14 ,  -1
	sw x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bltu x0, x14, .LBB1_246
.LBB1_247:                              //  %cleanup617.thread
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x8 ,  x19
	add x23 ,  x0 ,  x24
	sw x11 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x24 ,  48 ( x2 )             //  4-byte Folded Spill
	add x24 ,  x0 ,  x10
	add x26 ,  x0 ,  x18
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	add x11 ,  x0 ,  x23
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	bge x24, x11, .LBB1_264
	jal x0, .LBB1_265
.LBB1_248:                              //  %if.else640
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x26
	call wcslen
	add x23 ,  x0 ,  x0
	add x24 ,  x0 ,  x10
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x23
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_459
.LBB1_249:                              //  %if.else407
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x5 ,  144 ( x2 )
	xori x15 ,  x27 ,  102
	bltu x0, x15, .LBB1_253
.LBB1_250:                              //  %if.then410
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  1
	or x15 ,  x23 ,  x15
	blt x0, x5, .LBB1_251
.LBB1_535:                              //  %if.then410
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_257
.LBB1_251:                              //  %if.then413
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x27 ,  x0 ,  102
	beq x0, x15, .LBB1_462
.LBB1_252:                              //  %if.then418
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x5 ,  x23
	addi x24 ,  x15 ,  1
	add x10 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB1_463
	jal x0, .LBB1_471
.LBB1_253:                              //  %if.else433
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  112 ( x2 )
	bge x5, x15, .LBB1_256
.LBB1_254:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	add x14 ,  x0 ,  x0
	blt x14, x5, .LBB1_460
.LBB1_255:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x14 ,  x0 ,  2
	sub x14 ,  x14 ,  x5
	jal x0, .LBB1_461
.LBB1_256:                              //  %if.then436
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x13 ,  1
	add x24 ,  x15 ,  x5
	addi x27 ,  x0 ,  103
	add x10 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB1_463
	jal x0, .LBB1_471
.LBB1_390:                              //  %while.body1348.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	slt x19 ,  x0 ,  x27
.LBB1_391:                              //  %while.body1348
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_408 Depth 4
	lw x15 ,  8 ( x12 )
	andi x24 ,  x19 ,  1
	addi x15 ,  x15 ,  4
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  4
	sw x15 ,  4 ( x20 )
	addi x15 ,  x2 ,  156
	sw x15 ,  0 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	sw x14 ,  104 ( x2 )
	bltu x0, x24, .LBB1_393
.LBB1_392:                              //  %while.body1348
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x14 ,  80 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1
	sw x14 ,  80 ( x2 )             //  4-byte Folded Spill
.LBB1_393:                              //  %while.body1348
                                        //    in Loop: Header=BB1_391 Depth=3
	slti x15 ,  x15 ,  7
	bltu x0, x15, .LBB1_395
.LBB1_394:                              //  %if.then1366
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_396
	jal x0, .LBB1_508
.LBB1_395:                              //    in Loop: Header=BB1_391 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_396:                              //  %if.end1372
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x15 ,  112 ( x2 )
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x14 ,  80 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x15 ,  x9
	srai x15 ,  x15 ,  2&31
	lb x8 ,  0 ( x14 )
	blt x8, x15, .LBB1_398
.LBB1_397:                              //  %if.end1372
                                        //    in Loop: Header=BB1_391 Depth=3
	add x8 ,  x0 ,  x15
.LBB1_398:                              //  %if.end1372
                                        //    in Loop: Header=BB1_391 Depth=3
	bge x0, x8, .LBB1_402
.LBB1_399:                              //  %if.then1387
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x9 ,  0 ( x20 )
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_401
.LBB1_400:                              //  %if.then1399
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_402
	jal x0, .LBB1_508
.LBB1_401:                              //    in Loop: Header=BB1_391 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_402:                              //  %if.end1406
                                        //    in Loop: Header=BB1_391 Depth=3
	add x15 ,  x0 ,  x0
	blt x15, x8, .LBB1_404
.LBB1_403:                              //  %if.end1406
                                        //    in Loop: Header=BB1_391 Depth=3
	add x8 ,  x0 ,  x0
.LBB1_404:                              //  %if.end1406
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	sub x8 ,  x15 ,  x8
	bge x0, x8, .LBB1_414
.LBB1_405:                              //  %while.cond1418.preheader
                                        //    in Loop: Header=BB1_391 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_408
	jal x0, .LBB1_410
.LBB1_406:                              //    in Loop: Header=BB1_408 Depth=4
	addi x20 ,  x20 ,  8
.LBB1_407:                              //  %if.end1437
                                        //    in Loop: Header=BB1_408 Depth=4
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_410
.LBB1_408:                              //  %while.body1421
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_391 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_406
.LBB1_409:                              //  %if.then1431
                                        //    in Loop: Header=BB1_408 Depth=4
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_407
	jal x0, .LBB1_508
.LBB1_410:                              //  %while.end1439
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_413
.LBB1_411:                              //  %if.then1451
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x10 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_415
	jal x0, .LBB1_508
.LBB1_413:                              //    in Loop: Header=BB1_391 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_414:                              //  %cleanup.cont1461
                                        //    in Loop: Header=BB1_391 Depth=3
	lw x13 ,  84 ( x2 )             //  4-byte Folded Reload
.LBB1_415:                              //  %cleanup.cont1461
                                        //    in Loop: Header=BB1_391 Depth=3
	xori x15 ,  x19 ,  -1
	sub x27 ,  x27 ,  x24
	andi x15 ,  x15 ,  1
	slt x19 ,  x0 ,  x27
	sub x23 ,  x23 ,  x15
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	lb x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  2&31
	add x9 ,  x15 ,  x9
	blt x0, x27, .LBB1_391
.LBB1_416:                              //  %cleanup.cont1461
                                        //    in Loop: Header=BB1_391 Depth=3
	blt x0, x23, .LBB1_391
	jal x0, .LBB1_382
.LBB1_417:                              //    in Loop: Header=BB1_19 Depth=2
	addi x9 ,  x9 ,  8
.LBB1_418:                              //  %if.end1716
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
.LBB1_419:                              //  %if.end1716
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  8 ( x12 )
	slli x15 ,  x15 ,  2&31
	add x14 ,  x15 ,  x14
	sw x15 ,  4 ( x9 )
	addi x15 ,  x2 ,  116
	sw x15 ,  0 ( x9 )
	lw x15 ,  104 ( x2 )
	sw x14 ,  8 ( x12 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_430
.LBB1_420:                              //  %if.then1244
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	bltu x0, x10, .LBB1_499
.LBB1_421:                              //  %if.end1737
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB1_422
.LBB1_489:                              //  %if.end1786thread-pre-split
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  108 ( x2 )
.LBB1_490:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x14 ,  76 ( x2 )             //  4-byte Folded Reload
	blt x14, x25, .LBB1_492
.LBB1_491:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	add x25 ,  x0 ,  x14
.LBB1_492:                              //  %if.end1786
                                        //    in Loop: Header=BB1_19 Depth=2
	add x18 ,  x18 ,  x25
	beq x0, x15, .LBB1_494
.LBB1_493:                              //  %land.lhs.true1796
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	bltu x0, x10, .LBB1_500
.LBB1_494:                              //  %if.end1800
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x0 ,  104 ( x2 )
	bltu x0, x9, .LBB1_495
.LBB1_536:                              //  %if.end1800
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_16
.LBB1_495:                              //  %if.then1805
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call _free_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	add x8 ,  x0 ,  x22
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB1_537
.LBB1_538:                              //  %if.then1805
                                        //    in Loop: Header=BB1_16 Depth=1
	jal x0, .LBB1_17
.LBB1_537:                              //  %if.then1805
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_19
.LBB1_430:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x9 ,  8
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB1_422
	jal x0, .LBB1_489
.LBB1_431:                              //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x20 ,  8
	bge x14, x0, .LBB1_487
.LBB1_432:                              //  %while.cond1192.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x13 ,  (_vfwprintf_r.zeroes>>12)&1048575
	sub x8 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x15 )
	addi x13 ,  x0 ,  -17
	bge x13, x14, .LBB1_435
	jal x0, .LBB1_484
.LBB1_433:                              //    in Loop: Header=BB1_435 Depth=3
	addi x15 ,  x15 ,  8
.LBB1_434:                              //  %if.end1211
                                        //    in Loop: Header=BB1_435 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x14 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	addi x14 ,  x0 ,  16
	bge x14, x8, .LBB1_484
.LBB1_435:                              //  %while.body1195
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x14 ,  8 ( x12 )
	addi x14 ,  x14 ,  64
	sw x14 ,  8 ( x12 )
	addi x14 ,  x0 ,  64
	sw x14 ,  4 ( x15 )
	lw x14 ,  104 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x14, .LBB1_433
.LBB1_436:                              //  %if.then1205
                                        //    in Loop: Header=BB1_435 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x15 ,  x2 ,  1220
	beq x0, x10, .LBB1_434
	jal x0, .LBB1_500
.LBB1_437:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_438:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	slli x13 ,  x15 ,  2&31
	sub x15 ,  x15 ,  x14
	add x8 ,  x0 ,  x15
	add x13 ,  x13 ,  x11
	sub x13 ,  x13 ,  x19
	srai x13 ,  x13 ,  2&31
	blt x15, x13, .LBB1_440
.LBB1_439:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	add x8 ,  x0 ,  x13
.LBB1_440:                              //  %if.end1494
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, x8, .LBB1_444
.LBB1_441:                              //  %if.then1509
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  8 ( x12 )
	slli x14 ,  x8 ,  2&31
	sw x19 ,  0 ( x20 )
	sw x14 ,  4 ( x20 )
	add x13 ,  x14 ,  x13
	lw x14 ,  104 ( x2 )
	sw x13 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x14, .LBB1_445
.LBB1_442:                              //  %if.then1521
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x26
	add x10 ,  x0 ,  x19
	call __sprint_r
	bltu x0, x10, .LBB1_500
.LBB1_443:                              //  %if.then1521.if.end1528_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  144 ( x2 )
	addi x20 ,  x2 ,  1220
	addi x12 ,  x2 ,  100
	lw x14 ,  112 ( x2 )
	sub x15 ,  x14 ,  x15
	bge x24, x8, .LBB1_446
	jal x0, .LBB1_447
.LBB1_444:                              //    in Loop: Header=BB1_19 Depth=2
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	blt x24, x8, .LBB1_447
.LBB1_446:                              //  %if.end1528
                                        //    in Loop: Header=BB1_19 Depth=2
	add x14 ,  x0 ,  x24
	add x8 ,  x14 ,  x15
	blt x0, x8, .LBB1_448
	jal x0, .LBB1_336
.LBB1_445:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	bge x24, x8, .LBB1_446
.LBB1_447:                              //    in Loop: Header=BB1_19 Depth=2
	sub x14 ,  x0 ,  x8
	add x8 ,  x14 ,  x15
	bge x0, x8, .LBB1_336
.LBB1_448:                              //  %while.cond1540.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	slti x15 ,  x8 ,  17
	bltu x0, x15, .LBB1_454
.LBB1_449:                              //  %while.body1543.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_452
.LBB1_450:                              //    in Loop: Header=BB1_452 Depth=3
	addi x20 ,  x20 ,  8
.LBB1_451:                              //  %if.end1559
                                        //    in Loop: Header=BB1_452 Depth=3
	lui x30 ,  _vfwprintf_r.zeroes&4095
	lui x15 ,  (_vfwprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  16
	bge x15, x8, .LBB1_454
.LBB1_452:                              //  %while.body1543
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  64
	sw x15 ,  8 ( x12 )
	addi x15 ,  x0 ,  64
	sw x15 ,  4 ( x20 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_450
.LBB1_453:                              //  %if.then1553
                                        //    in Loop: Header=BB1_452 Depth=3
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_451
	jal x0, .LBB1_500
.LBB1_454:                              //  %while.end1124
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  8 ( x12 )
	slli x15 ,  x8 ,  2&31
	sw x15 ,  4 ( x20 )
	add x14 ,  x15 ,  x14
	sw x14 ,  8 ( x12 )
	lw x15 ,  104 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  104 ( x2 )
	bltu x0, x15, .LBB1_456
.LBB1_455:                              //  %if.then1136
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x20 ,  x2 ,  1220
	beq x0, x10, .LBB1_421
	jal x0, .LBB1_499
.LBB1_456:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x20 ,  8
.LBB1_336:                              //    in Loop: Header=BB1_19 Depth=2
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB1_422
	jal x0, .LBB1_489
.LBB1_458:                              //    in Loop: Header=BB1_19 Depth=2
	add x11 ,  x0 ,  x9
	add x23 ,  x0 ,  x9
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
.LBB1_459:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	add x19 ,  x0 ,  x26
	add x26 ,  x0 ,  x18
	addi x12 ,  x2 ,  100
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	blt x24, x11, .LBB1_539
.LBB1_540:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_264
.LBB1_539:                              //  %sw.epilog830
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_265
.LBB1_460:                              //    in Loop: Header=BB1_19 Depth=2
	slti x14 ,  x0 ,  1
.LBB1_461:                              //  %if.else442
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x15 ,  x14
	addi x27 ,  x0 ,  103
	add x10 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	bltu x0, x15, .LBB1_463
	jal x0, .LBB1_471
.LBB1_462:                              //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x5
	add x10 ,  x0 ,  x0
	andi x15 ,  x13 ,  1024
	beq x0, x15, .LBB1_471
.LBB1_463:                              //  %if.end452
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x0, x5, .LBB1_471
.LBB1_464:                              //  %while.cond459.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  80 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x0
	lb x14 ,  0 ( x15 )
	xori x15 ,  x14 ,  127
	beq x0, x15, .LBB1_478
.LBB1_465:                              //  %while.cond459.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	bge x14, x5, .LBB1_478
.LBB1_466:                              //  %if.end468.preheader
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x15
	add x23 ,  x0 ,  x15
.LBB1_467:                              //  %if.end468
                                        //    Parent Loop BB1_16 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  80 ( x2 )             //  4-byte Folded Reload
	lbu x13 ,  1 ( x11 )
	beq x13, x15, .LBB1_469
.LBB1_468:                              //  %if.end468
                                        //    in Loop: Header=BB1_467 Depth=3
	addi x11 ,  x11 ,  1
.LBB1_469:                              //  %if.end468
                                        //    in Loop: Header=BB1_467 Depth=3
	sub x5 ,  x5 ,  x14
	sltu x14 ,  x0 ,  x13
	sw x11 ,  80 ( x2 )             //  4-byte Folded Spill
	add x23 ,  x14 ,  x23
	xori x14 ,  x13 ,  0
	sltiu x14 ,  x14 ,  1
	add x10 ,  x14 ,  x10
	lb x14 ,  0 ( x11 )
	xori x13 ,  x14 ,  127
	beq x0, x13, .LBB1_479
.LBB1_470:                              //  %if.end468
                                        //    in Loop: Header=BB1_467 Depth=3
	blt x14, x5, .LBB1_467
	jal x0, .LBB1_479
.LBB1_471:                              //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x10
	jal x0, .LBB1_480
.LBB1_478:                              //    in Loop: Header=BB1_19 Depth=2
	add x23 ,  x0 ,  x10
.LBB1_479:                              //  %while.end479
                                        //    in Loop: Header=BB1_19 Depth=2
	add x15 ,  x24 ,  x10
	add x24 ,  x23 ,  x15
.LBB1_480:                              //  %if.end484
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x8 ,  76 ( x2 )              //  4-byte Folded Reload
.LBB1_481:                              //  %if.end484
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  148 ( x2 )
	add x11 ,  x0 ,  x0
	sw x5 ,  56 ( x2 )              //  4-byte Folded Spill
	sw x10 ,  48 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_482
.LBB1_541:                              //  %if.end484
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_263
.LBB1_482:                              //  %if.then486
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x0 ,  45
	sw x15 ,  160 ( x2 )
	add x18 ,  x0 ,  x26
	add x15 ,  x0 ,  x11
	blt x24, x11, .LBB1_542
.LBB1_543:                              //  %if.then486
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_264
.LBB1_542:                              //  %if.then486
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_265
.LBB1_472:                              //  %cond.true530
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lhu x23 ,  0 ( x15 )
.LBB1_473:                              //  %cond.end547
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x0
.LBB1_474:                              //  %cond.end550
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x27 ,  x0 ,  111
	add x15 ,  x0 ,  x0
	andi x8 ,  x8 ,  -1025
	sw x0 ,  160 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x11, .LBB1_544
.LBB1_545:                              //  %cond.end550
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_222
.LBB1_544:                              //  %cond.end550
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_223
.LBB1_475:                              //  %cond.true658
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x15 ,  164 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  164 ( x2 )
	lhu x23 ,  0 ( x15 )
.LBB1_476:                              //  %cond.end675
                                        //    in Loop: Header=BB1_19 Depth=2
	add x24 ,  x0 ,  x0
	addi x27 ,  x0 ,  117
	slti x15 ,  x0 ,  1
	sw x0 ,  160 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x11, .LBB1_546
.LBB1_547:                              //  %cond.end675
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_222
.LBB1_546:                              //  %cond.end675
                                        //    in Loop: Header=BB1_19 Depth=2
	jal x0, .LBB1_223
.LBB1_483:                              //    in Loop: Header=BB1_19 Depth=2
	slti x24 ,  x0 ,  1
	addi x27 ,  x0 ,  102
	add x23 ,  x0 ,  x10
	jal x0, .LBB1_480
.LBB1_484:                              //  %while.end1213
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x13 ,  8 ( x12 )
	slli x14 ,  x8 ,  2&31
	sw x14 ,  4 ( x15 )
	add x13 ,  x14 ,  x13
	lw x14 ,  104 ( x2 )
	sw x13 ,  8 ( x12 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	bltu x0, x14, .LBB1_486
.LBB1_485:                              //  %if.then1225
                                        //    in Loop: Header=BB1_19 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x12 ,  x2 ,  100
	addi x15 ,  x2 ,  1220
	beq x0, x10, .LBB1_487
	jal x0, .LBB1_500
.LBB1_486:                              //    in Loop: Header=BB1_19 Depth=2
	addi x15 ,  x15 ,  8
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
.LBB1_487:                              //  %if.end1232
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x14 ,  112 ( x2 )
	lw x13 ,  8 ( x12 )
	slli x14 ,  x14 ,  2&31
	add x13 ,  x14 ,  x13
	sw x14 ,  4 ( x15 )
	lw x14 ,  104 ( x2 )
	sw x13 ,  8 ( x12 )
	lw x13 ,  64 ( x2 )             //  4-byte Folded Reload
	sw x13 ,  0 ( x15 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  104 ( x2 )
	beq x0, x14, .LBB1_420
.LBB1_488:                              //    in Loop: Header=BB1_19 Depth=2
	addi x20 ,  x15 ,  8
	andi x15 ,  x8 ,  4
	bltu x0, x15, .LBB1_422
	jal x0, .LBB1_489
.LBB1_496:                              //  %if.then
	add x10 ,  x0 ,  x19
	call __sinit
	lhu x15 ,  12 ( x26 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_548
.LBB1_549:                              //  %if.then
	jal x0, .LBB1_3
.LBB1_548:                              //  %if.then
	jal x0, .LBB1_4
.LBB1_497:
	add x26 ,  x0 ,  x18
.LBB1_498:
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
.LBB1_499:                              //  %error
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
.LBB1_500:                              //  %error
	beq x0, x9, .LBB1_502
.LBB1_501:                              //  %if.then1818
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call _free_r
.LBB1_502:                              //  %if.end1819
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_504
.LBB1_503:                              //  %if.end1819
	addi x18 ,  x0 ,  -1
.LBB1_504:                              //  %cleanup1841
	add x10 ,  x0 ,  x18
	lw x8 ,  1324 ( x2 )            //  4-byte Folded Reload
	lw x27 ,  1328 ( x2 )           //  4-byte Folded Reload
	lw x26 ,  1332 ( x2 )           //  4-byte Folded Reload
	lw x25 ,  1336 ( x2 )           //  4-byte Folded Reload
	lw x24 ,  1340 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1344 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1348 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1352 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1356 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1360 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1364 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1368 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1372 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1376
	.cfi_def_cfa 2, 0
	ret
.LBB1_505:                              //  %done
	lw x15 ,  108 ( x2 )
	beq x0, x15, .LBB1_507
.LBB1_506:                              //  %land.lhs.true1809
	addi x12 ,  x2 ,  100
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	call __sprint_r
	bltu x0, x10, .LBB1_502
.LBB1_507:                              //  %if.end1813
	sw x0 ,  104 ( x2 )
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_504
	jal x0, .LBB1_503
.LBB1_508:
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_499
.LBB1_509:                              //  %if.then321
	lh x15 ,  12 ( x26 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x26 )
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_504
	jal x0, .LBB1_503
.LBB1_510:                              //  %cleanup617
	add x26 ,  x0 ,  x18
.LBB1_511:                              //  %cleanup
	lh x15 ,  12 ( x26 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x26 )
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  12 ( x26 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_504
	jal x0, .LBB1_503
.LBB1_512:
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	bltu x0, x9, .LBB1_501
	jal x0, .LBB1_502
.Lfunc_end1:
	.size	_vfwprintf_r, .Lfunc_end1-_vfwprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_41
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_42
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_47
	.long	.LBB1_50
	.long	.LBB1_130
	.long	.LBB1_49
	.long	.LBB1_32
	.long	.LBB1_130
	.long	.LBB1_53
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_72
	.long	.LBB1_130
	.long	.LBB1_85
	.long	.LBB1_130
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_54
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_88
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_107
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_72
	.long	.LBB1_130
	.long	.LBB1_85
	.long	.LBB1_97
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_72
	.long	.LBB1_55
	.long	.LBB1_97
	.long	.LBB1_38
	.long	.LBB1_130
	.long	.LBB1_57
	.long	.LBB1_130
	.long	.LBB1_64
	.long	.LBB1_108
	.long	.LBB1_113
	.long	.LBB1_38
	.long	.LBB1_130
	.long	.LBB1_88
	.long	.LBB1_52
	.long	.LBB1_114
	.long	.LBB1_130
	.long	.LBB1_130
	.long	.LBB1_119
	.long	.LBB1_130
	.long	.LBB1_52
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
	blt x12, x25, .LBB2_1
.LBB2_2:                                //  %entry
	add x21 ,  x0 ,  x12
	jal x0, .LBB2_3
.LBB2_1:
	xor x21 ,  x14 ,  x12
.LBB2_3:                                //  %entry
	lw x8 ,  68 ( x2 )
	srai x14 ,  x12 ,  31&31
	ori x26 ,  x22 ,  32
	lw x24 ,  64 ( x2 )
	andi x14 ,  x14 ,  45
	sw x14 ,  0 ( x15 )
	xori x15 ,  x26 ,  97
	bltu x0, x15, .LBB2_26
.LBB2_4:                                //  %if.then2
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
	bltu x0, x10, .LBB2_6
.LBB2_5:                                //  %if.then4
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x18 )
.LBB2_6:                                //  %if.end5
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.4>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	or x23 ,  x14 ,  x30
	addi x14 ,  x0 ,  97
	beq x22, x14, .LBB2_8
.LBB2_7:                                //  %if.end5
	add x23 ,  x0 ,  x15
.LBB2_8:                                //  %if.end5
	addi x27 ,  x9 ,  1
	add x9 ,  x0 ,  x0
	lui x18 ,  (1076887552>>12)&1048575
	add x22 ,  x0 ,  x8
.LBB2_9:                                //  %do.body
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
	beq x0, x15, .LBB2_11
.LBB2_10:                               //  %do.body
                                        //    in Loop: Header=BB2_9 Depth=1
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	call __nedf2
	add x27 ,  x0 ,  x26
	bltu x0, x10, .LBB2_9
.LBB2_11:                               //  %do.end
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __gtdf2
	blt x0, x10, .LBB2_17
.LBB2_12:                               //  %lor.lhs.false14
	andi x15 ,  x21 ,  1
	beq x0, x15, .LBB2_14
.LBB2_13:                               //  %lor.lhs.false14
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __eqdf2
	bltu x0, x10, .LBB2_14
.LBB2_17:                               //  %if.then19
	lw x14 ,  60 ( x23 )
	addi x15 ,  x22 ,  -4
	bne x25, x14, .LBB2_18
.LBB2_19:                               //  %while.body.preheader
	addi x13 ,  x0 ,  48
.LBB2_20:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x0 ,  x15
	sw x13 ,  0 ( x14 )
	addi x15 ,  x14 ,  -4
	lw x14 ,  -4 ( x14 )
	beq x14, x25, .LBB2_20
.LBB2_21:                               //  %while.end
	xori x13 ,  x14 ,  57
	bltu x0, x13, .LBB2_23
.LBB2_22:                               //  %cond.true
	lw x14 ,  40 ( x23 )
	jal x0, .LBB2_24
.LBB2_26:                               //  %if.end37
	xori x27 ,  x26 ,  102
	bltu x0, x27, .LBB2_28
.LBB2_27:
	addi x13 ,  x0 ,  3
	jal x0, .LBB2_29
.LBB2_28:                               //  %if.else44
	xori x15 ,  x26 ,  101
	addi x13 ,  x0 ,  2
	sltiu x15 ,  x15 ,  1
	add x9 ,  x9 ,  x15
.LBB2_29:                               //  %if.end52
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
	bltu x0, x15, .LBB2_32
.LBB2_30:                               //  %if.end52
	xori x15 ,  x26 ,  103
	bltu x0, x15, .LBB2_32
.LBB2_31:                               //  %if.end52.if.end94_crit_edge
	lw x23 ,  4 ( x2 )
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	bge x0, x22, .LBB2_49
.LBB2_45:                               //  %if.end94
	bge x0, x15, .LBB2_49
.LBB2_46:                               //  %for.body.preheader
	add x15 ,  x0 ,  x8
.LBB2_47:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x25 ,  x19
	addi x25 ,  x25 ,  1
	lb x14 ,  0 ( x14 )
	sw x14 ,  0 ( x15 )
	bge x25, x22, .LBB2_49
.LBB2_48:                               //  %for.body
                                        //    in Loop: Header=BB2_47 Depth=1
	lw x14 ,  0 ( x24 )
	addi x15 ,  x15 ,  4
	blt x25, x14, .LBB2_47
	jal x0, .LBB2_49
.LBB2_32:                               //  %if.then66
	add x23 ,  x9 ,  x19
	bltu x0, x27, .LBB2_38
.LBB2_33:                               //  %if.then72
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x12
	call __eqdf2
	beq x0, x10, .LBB2_35
.LBB2_34:                               //  %if.then72
	lbu x15 ,  0 ( x19 )
	xori x15 ,  x15 ,  48
	bltu x0, x15, .LBB2_35
.LBB2_36:                               //  %if.then78
	slti x15 ,  x0 ,  1
	sub x15 ,  x15 ,  x9
	sw x15 ,  0 ( x18 )
	jal x0, .LBB2_37
.LBB2_18:
	add x14 ,  x0 ,  x25
	xori x13 ,  x14 ,  57
	beq x0, x13, .LBB2_22
.LBB2_23:                               //  %cond.false
	addi x14 ,  x14 ,  1
.LBB2_24:                               //  %if.end36
	sw x14 ,  0 ( x15 )
.LBB2_25:                               //  %if.end36
	sub x15 ,  x22 ,  x8
	srai x15 ,  x15 ,  2&31
	sw x15 ,  0 ( x24 )
.LBB2_49:                               //  %cleanup
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
.LBB2_14:                               //  %while.cond29.preheader
	bge x0, x26, .LBB2_25
.LBB2_15:
	addi x15 ,  x0 ,  48
.LBB2_16:                               //  %while.body33
                                        //  =>This Inner Loop Header: Depth=1
	sw x15 ,  0 ( x22 )
	addi x22 ,  x22 ,  4
	addi x26 ,  x26 ,  -1
	blt x0, x26, .LBB2_16
	jal x0, .LBB2_25
.LBB2_35:                               //  %if.then72.if.end81_crit_edge
	lw x15 ,  0 ( x18 )
.LBB2_37:                               //  %if.end81
	add x23 ,  x15 ,  x23
.LBB2_38:                               //  %if.end83
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB2_40
.LBB2_39:                               //  %if.end87.thread
	sw x23 ,  4 ( x2 )
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	blt x0, x22, .LBB2_45
	jal x0, .LBB2_49
.LBB2_40:                               //  %if.end87
	lw x15 ,  4 ( x2 )
	bgeu x15, x23, .LBB2_43
.LBB2_41:                               //  %while.body91.preheader
	addi x14 ,  x0 ,  48
.LBB2_42:                               //  %while.body91
                                        //  =>This Inner Loop Header: Depth=1
	addi x13 ,  x15 ,  1
	sw x13 ,  4 ( x2 )
	sb x14 ,  0 ( x15 )
	lw x15 ,  4 ( x2 )
	bltu x15, x23, .LBB2_42
.LBB2_43:                               //  %if.end94.loopexit
	add x23 ,  x0 ,  x15
	sub x15 ,  x23 ,  x19
	sw x15 ,  0 ( x24 )
	blt x0, x22, .LBB2_45
	jal x0, .LBB2_49
.Lfunc_end2:
	.size	wcvt, .Lfunc_end2-wcvt
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfwprintf_r.blanks,@object //  @_vfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	2
_vfwprintf_r.blanks:
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
	.size	_vfwprintf_r.blanks, 64

	.address_space	0
	.type	_vfwprintf_r.zeroes,@object //  @_vfwprintf_r.zeroes
	.p2align	2
_vfwprintf_r.zeroes:
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
	.size	_vfwprintf_r.zeroes, 64

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
