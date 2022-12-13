	.text
	.file	"vfiprintf.c"
	.globl	__sprint_r              //  -- Begin function __sprint_r
	.type	__sprint_r,@function
__sprint_r:                             //  @__sprint_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x12
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x15 ,  8 ( x8 )
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	lbu x14 ,  101 ( x18 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB0_3
.LBB0_11:                               //  %if.else
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call __sfvwrite_r
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_12
.LBB0_1:
	add x9 ,  x0 ,  x0
	jal x0, .LBB0_13
.LBB0_3:                                //  %for.body.preheader
	lw x21 ,  0 ( x8 )
	add x20 ,  x0 ,  x0
	addi x9 ,  x0 ,  -1
	lw x22 ,  4 ( x21 )
	srli x23 ,  x22 ,  2&31
	bltu x0, x23, .LBB0_5
.LBB0_9:                                //  %for.inc10
                                        //  =>This Inner Loop Header: Depth=1
	andi x14 ,  x22 ,  -4
	addi x21 ,  x21 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  8 ( x8 )
	beq x0, x15, .LBB0_10
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_9 Depth=1
	lw x22 ,  4 ( x21 )
	srli x23 ,  x22 ,  2&31
	beq x0, x23, .LBB0_9
.LBB0_5:
	lw x24 ,  0 ( x21 )
.LBB0_7:                                //  %for.body6
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x24 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_12
.LBB0_6:                                //  %for.cond4
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x24 ,  x24 ,  4
	addi x23 ,  x23 ,  -1
	bltu x0, x23, .LBB0_7
.LBB0_8:                                //  %for.inc10.loopexit
	lw x15 ,  8 ( x8 )
	jal x0, .LBB0_9
.LBB0_10:
	add x9 ,  x0 ,  x20
.LBB0_12:                               //  %out
	sw x0 ,  8 ( x8 )
.LBB0_13:                               //  %cleanup20
	sw x0 ,  4 ( x8 )
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__sprint_r, .Lfunc_end0-__sprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	vfiprintf               //  -- Begin function vfiprintf
	.type	vfiprintf,@function
vfiprintf:                              //  @vfiprintf
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
	jal x0, _vfiprintf_r
.Lfunc_end1:
	.size	vfiprintf, .Lfunc_end1-vfiprintf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiprintf_r            //  -- Begin function _vfiprintf_r
	.type	_vfiprintf_r,@function
_vfiprintf_r:                           //  @_vfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -296
	.cfi_adjust_cfa_offset 296
	sw x9 ,  288 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x23 ,  264 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  256 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x8 ,  244 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x9 ,  x0 ,  x13
	add x23 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x25 ,  x0 ,  x10
	sw x1 ,  292 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  284 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  280 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  276 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  272 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  268 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  260 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  252 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  248 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x9 ,  240 ( x2 )
	beq x0, x25, .LBB2_2
.LBB2_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x25 )
	bltu x0, x15, .LBB2_2
.LBB2_415:                              //  %land.lhs.true
	jal x0, .LBB2_384
.LBB2_2:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB2_4
.LBB2_3:                                //  %if.then12
	lw x13 ,  100 ( x8 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	sh x15 ,  12 ( x8 )
	or x12 ,  x12 ,  x30
	and x13 ,  x12 ,  x13
	sw x13 ,  100 ( x8 )
.LBB2_4:                                //  %do.end20
	andi x14 ,  x15 ,  8
	beq x0, x14, .LBB2_9
.LBB2_5:                                //  %lor.lhs.false
	lw x14 ,  16 ( x8 )
	beq x0, x14, .LBB2_9
.LBB2_6:                                //  %if.end42
	andi x15 ,  x15 ,  26
	xori x15 ,  x15 ,  10
	bltu x0, x15, .LBB2_11
.LBB2_7:                                //  %land.lhs.true48
	lh x15 ,  14 ( x8 )
	blt x15, x0, .LBB2_11
.LBB2_8:                                //  %if.then52
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x9
	call __sbprintf
	add x24 ,  x0 ,  x10
	jal x0, .LBB2_402
.LBB2_9:                                //  %land.lhs.true27
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	call __swsetup_r
	beq x0, x10, .LBB2_10
.LBB2_416:                              //  %land.lhs.true27
	jal x0, .LBB2_401
.LBB2_10:                               //  %land.lhs.true27.if.end42_crit_edge
	lhu x15 ,  12 ( x8 )
	andi x15 ,  x15 ,  26
	xori x15 ,  x15 ,  10
	beq x0, x15, .LBB2_7
.LBB2_11:                               //  %if.end66
	addi x15 ,  x2 ,  224
	add x21 ,  x0 ,  x0
	addi x26 ,  x0 ,  -1
	addi x20 ,  x0 ,  10
	addi x27 ,  x0 ,  122
	sw x0 ,  228 ( x2 )
	sw x25 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  8 ( x15 )
	addi x15 ,  x2 ,  160
	add x24 ,  x0 ,  x21
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  224 ( x2 )
	addi x15 ,  x2 ,  60
	addi x15 ,  x15 ,  100
	sw x15 ,  28 ( x2 )             //  4-byte Folded Spill
.LBB2_12:                               //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_15 Depth 2
                                        //        Child Loop BB2_62 Depth 3
                                        //        Child Loop BB2_65 Depth 3
                                        //        Child Loop BB2_25 Depth 3
                                        //          Child Loop BB2_26 Depth 4
                                        //            Child Loop BB2_29 Depth 5
                                        //              Child Loop BB2_33 Depth 6
                                        //            Child Loop BB2_28 Depth 5
                                        //      Child Loop BB2_13 Depth 2
                                        //      Child Loop BB2_148 Depth 2
                                        //      Child Loop BB2_163 Depth 2
                                        //      Child Loop BB2_171 Depth 2
                                        //      Child Loop BB2_158 Depth 2
                                        //      Child Loop BB2_203 Depth 2
                                        //        Child Loop BB2_209 Depth 3
                                        //        Child Loop BB2_212 Depth 3
                                        //      Child Loop BB2_266 Depth 2
                                        //      Child Loop BB2_269 Depth 2
                                        //      Child Loop BB2_247 Depth 2
                                        //      Child Loop BB2_250 Depth 2
                                        //      Child Loop BB2_257 Depth 2
                                        //      Child Loop BB2_260 Depth 2
                                        //      Child Loop BB2_232 Depth 2
                                        //        Child Loop BB2_238 Depth 3
                                        //        Child Loop BB2_241 Depth 3
                                        //      Child Loop BB2_273 Depth 2
                                        //      Child Loop BB2_276 Depth 2
                                        //      Child Loop BB2_291 Depth 2
                                        //        Child Loop BB2_297 Depth 3
                                        //        Child Loop BB2_300 Depth 3
                                        //      Child Loop BB2_307 Depth 2
                                        //      Child Loop BB2_310 Depth 2
                                        //      Child Loop BB2_365 Depth 2
                                        //      Child Loop BB2_368 Depth 2
                                        //      Child Loop BB2_342 Depth 2
                                        //        Child Loop BB2_348 Depth 3
                                        //        Child Loop BB2_351 Depth 3
                                        //      Child Loop BB2_375 Depth 2
                                        //      Child Loop BB2_378 Depth 2
                                        //      Child Loop BB2_356 Depth 2
                                        //      Child Loop BB2_359 Depth 2
	addi x15 ,  x2 ,  160
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
	add x9 ,  x0 ,  x23
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB2_15
.LBB2_13:                               //  %while.cond
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB2_15
.LBB2_14:                               //  %while.body
                                        //    in Loop: Header=BB2_13 Depth=2
	addi x9 ,  x9 ,  1
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB2_13
.LBB2_15:                               //  %while.end
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_62 Depth 3
                                        //        Child Loop BB2_65 Depth 3
                                        //        Child Loop BB2_25 Depth 3
                                        //          Child Loop BB2_26 Depth 4
                                        //            Child Loop BB2_29 Depth 5
                                        //              Child Loop BB2_33 Depth 6
                                        //            Child Loop BB2_28 Depth 5
	sub x18 ,  x9 ,  x23
	beq x0, x18, .LBB2_20
.LBB2_16:                               //  %if.then75
                                        //    in Loop: Header=BB2_15 Depth=2
	addi x15 ,  x2 ,  224
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x15
	lw x15 ,  8 ( x14 )
	sw x18 ,  4 ( x12 )
	sw x23 ,  0 ( x12 )
	add x15 ,  x18 ,  x15
	sw x15 ,  8 ( x14 )
	lw x14 ,  228 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_21
.LBB2_17:                               //  %if.then80
                                        //    in Loop: Header=BB2_15 Depth=2
	beq x0, x15, .LBB2_22
.LBB2_18:                               //  %if.end.i1200
                                        //    in Loop: Header=BB2_15 Depth=2
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_61
.LBB2_19:                               //  %__sprint_r.exit1229
                                        //    in Loop: Header=BB2_15 Depth=2
	addi x19 ,  x2 ,  224
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call __sfvwrite_r
	addi x15 ,  x2 ,  160
	addi x27 ,  x0 ,  122
	sw x0 ,  8 ( x19 )
	sw x0 ,  228 ( x2 )
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
	beq x0, x10, .LBB2_23
	jal x0, .LBB2_400
.LBB2_20:                               //    in Loop: Header=BB2_15 Depth=2
	sw x24 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x18 ,  x0 ,  16
	bltu x0, x15, .LBB2_24
	jal x0, .LBB2_386
.LBB2_21:                               //    in Loop: Header=BB2_15 Depth=2
	addi x12 ,  x12 ,  8
	sw x12 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB2_23
.LBB2_22:                               //  %__sprint_r.exit1229.thread
                                        //    in Loop: Header=BB2_15 Depth=2
	addi x15 ,  x2 ,  160
	sw x0 ,  228 ( x2 )
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
.LBB2_23:                               //  %if.end86
                                        //    in Loop: Header=BB2_15 Depth=2
	lbu x15 ,  0 ( x9 )
	add x24 ,  x24 ,  x18
	sw x24 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x18 ,  x0 ,  16
	bltu x0, x15, .LBB2_24
.LBB2_417:                              //  %if.end86
	jal x0, .LBB2_386
.LBB2_24:                               //  %if.end93
                                        //    in Loop: Header=BB2_15 Depth=2
	addi x15 ,  x9 ,  1
	add x19 ,  x0 ,  x21
	add x24 ,  x0 ,  x21
	sb x0 ,  239 ( x2 )
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB2_25:                               //  %rflag
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_26 Depth 4
                                        //            Child Loop BB2_29 Depth 5
                                        //              Child Loop BB2_33 Depth 6
                                        //            Child Loop BB2_28 Depth 5
	lb x9 ,  0 ( x15 )
	addi x23 ,  x15 ,  1
.LBB2_26:                               //  %reswitch
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_29 Depth 5
                                        //              Child Loop BB2_33 Depth 6
                                        //            Child Loop BB2_28 Depth 5
	addi x15 ,  x9 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB2_29
.LBB2_27:                               //  %do.body156.preheader
                                        //    in Loop: Header=BB2_26 Depth=4
	add x24 ,  x0 ,  x21
.LBB2_28:                               //  %do.body156
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //          Parent Loop BB2_26 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x15 ,  x10 ,  x9
	lb x9 ,  0 ( x23 )
	addi x23 ,  x23 ,  1
	addi x24 ,  x15 ,  -48
	addi x15 ,  x9 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB2_28
	jal x0, .LBB2_26
.LBB2_36:                               //    in Loop: Header=BB2_29 Depth=5
	addi x18 ,  x0 ,  16
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x9 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB2_27
.LBB2_29:                               //  %reswitch
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //          Parent Loop BB2_26 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB2_33 Depth 6
	bltu x27, x9, .LBB2_113
.LBB2_30:                               //  %reswitch
                                        //    in Loop: Header=BB2_29 Depth=5
	lui x30 ,  JTI2_0&4095
	lui x14 ,  (JTI2_0>>12)&1048575
	slli x15 ,  x9 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB2_31:                               //  %sw.bb126
                                        //    in Loop: Header=BB2_29 Depth=5
	lb x9 ,  0 ( x23 )
	addi x15 ,  x23 ,  1
	xori x14 ,  x9 ,  42
	beq x0, x14, .LBB2_59
.LBB2_32:                               //  %while.cond138.preheader
                                        //    in Loop: Header=BB2_29 Depth=5
	addi x18 ,  x9 ,  -48
	add x10 ,  x0 ,  x0
	add x23 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x18, .LBB2_36
.LBB2_33:                               //  %while.body142
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_25 Depth=3
                                        //          Parent Loop BB2_26 Depth=4
                                        //            Parent Loop BB2_29 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	addi x11 ,  x0 ,  10
	call __mulsi3
	lb x9 ,  0 ( x23 )
	add x10 ,  x10 ,  x18
	addi x23 ,  x23 ,  1
	addi x18 ,  x9 ,  -48
	sltiu x15 ,  x18 ,  10
	bltu x0, x15, .LBB2_33
.LBB2_34:                               //  %while.end147
                                        //    in Loop: Header=BB2_29 Depth=5
	addi x15 ,  x0 ,  -1
	addi x18 ,  x0 ,  16
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB2_26
.LBB2_35:                               //  %while.end147.thread
                                        //    in Loop: Header=BB2_29 Depth=5
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x9 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB2_27
	jal x0, .LBB2_29
.LBB2_37:                               //  %sw.bb188
                                        //    in Loop: Header=BB2_25 Depth=3
	ori x19 ,  x19 ,  32
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_38:                               //  %sw.bb112
                                        //    in Loop: Header=BB2_25 Depth=3
	lbu x14 ,  239 ( x2 )
	add x15 ,  x0 ,  x23
	bltu x0, x14, .LBB2_25
.LBB2_39:                               //  %if.then114
                                        //    in Loop: Header=BB2_25 Depth=3
	addi x15 ,  x0 ,  32
	jal x0, .LBB2_50
.LBB2_40:                               //  %sw.bb116
                                        //    in Loop: Header=BB2_25 Depth=3
	ori x19 ,  x19 ,  1
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_41:                               //  %sw.bb
                                        //    in Loop: Header=BB2_25 Depth=3
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x10 ,  4 ( x10 )
	sw x10 ,  12 ( x2 )             //  4-byte Folded Spill
	call strlen
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x23
	beq x0, x9, .LBB2_25
.LBB2_42:                               //  %sw.bb
                                        //    in Loop: Header=BB2_25 Depth=3
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x23
	beq x0, x14, .LBB2_25
.LBB2_43:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_25 Depth=3
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB2_45
.LBB2_44:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_25 Depth=3
	ori x19 ,  x19 ,  1024
.LBB2_45:                               //  %land.lhs.true106
                                        //    in Loop: Header=BB2_25 Depth=3
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_46:                               //  %sw.bb118
                                        //    in Loop: Header=BB2_25 Depth=3
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x24 ,  0 ( x15 )
	add x15 ,  x0 ,  x23
	bge x24, x0, .LBB2_25
.LBB2_47:                               //  %if.end122
                                        //    in Loop: Header=BB2_25 Depth=3
	sub x24 ,  x0 ,  x24
.LBB2_48:                               //  %sw.bb123.loopexit
                                        //    in Loop: Header=BB2_25 Depth=3
	ori x19 ,  x19 ,  4
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_49:                               //  %sw.bb125
                                        //    in Loop: Header=BB2_25 Depth=3
	addi x15 ,  x0 ,  43
.LBB2_50:                               //  %rflag
                                        //    in Loop: Header=BB2_25 Depth=3
	sb x15 ,  239 ( x2 )
.LBB2_51:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB2_25 Depth=3
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_52:                               //  %sw.bb153
                                        //    in Loop: Header=BB2_25 Depth=3
	ori x19 ,  x19 ,  128
	add x15 ,  x0 ,  x23
	jal x0, .LBB2_25
.LBB2_53:                               //  %sw.bb167
                                        //    in Loop: Header=BB2_25 Depth=3
	lbu x15 ,  0 ( x23 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB2_57
.LBB2_54:                               //  %sw.bb167
                                        //    in Loop: Header=BB2_25 Depth=3
	addi x14 ,  x0 ,  64
	add x15 ,  x0 ,  x23
	or x19 ,  x19 ,  x14
	jal x0, .LBB2_25
.LBB2_55:                               //  %sw.bb176
                                        //    in Loop: Header=BB2_25 Depth=3
	lbu x15 ,  0 ( x23 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB2_58
.LBB2_56:                               //  %sw.bb176
                                        //    in Loop: Header=BB2_25 Depth=3
	add x14 ,  x0 ,  x18
	add x15 ,  x0 ,  x23
	or x19 ,  x19 ,  x14
	jal x0, .LBB2_25
.LBB2_57:                               //    in Loop: Header=BB2_25 Depth=3
	addi x14 ,  x0 ,  512
	addi x15 ,  x23 ,  1
	or x19 ,  x19 ,  x14
	jal x0, .LBB2_25
.LBB2_58:                               //    in Loop: Header=BB2_25 Depth=3
	addi x14 ,  x0 ,  32
	addi x15 ,  x23 ,  1
	or x19 ,  x19 ,  x14
	jal x0, .LBB2_25
.LBB2_59:                               //  %if.then131
                                        //    in Loop: Header=BB2_25 Depth=3
	lw x14 ,  240 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  240 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	sw x13 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x14, x13, .LBB2_25
.LBB2_60:                               //  %if.then131
                                        //    in Loop: Header=BB2_25 Depth=3
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB2_25
.LBB2_61:                               //  %for.body.preheader.i1202
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x19 ,  224 ( x2 )
	lw x21 ,  4 ( x19 )
	srli x22 ,  x21 ,  2&31
	bltu x0, x22, .LBB2_64
.LBB2_62:                               //  %for.inc10.i1222
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x14 ,  x21 ,  -4
	addi x19 ,  x19 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_75
.LBB2_63:                               //  %for.body.i1207
                                        //    in Loop: Header=BB2_62 Depth=3
	lw x21 ,  4 ( x19 )
	srli x22 ,  x21 ,  2&31
	beq x0, x22, .LBB2_62
.LBB2_64:                               //    in Loop: Header=BB2_15 Depth=2
	lw x23 ,  0 ( x19 )
.LBB2_65:                               //  %for.body6.i1215
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  0 ( x23 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB2_66
.LBB2_418:                              //  %for.body6.i1215
	jal x0, .LBB2_397
.LBB2_66:                               //  %for.cond4.i1209
                                        //    in Loop: Header=BB2_65 Depth=3
	addi x23 ,  x23 ,  4
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB2_65
.LBB2_67:                               //  %for.inc10.loopexit.i1217
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x15 ,  232 ( x2 )
	jal x0, .LBB2_62
.LBB2_68:                               //  %sw.bb238
                                        //    in Loop: Header=BB2_15 Depth=2
	andi x15 ,  x19 ,  32
	bltu x0, x15, .LBB2_73
.LBB2_69:                               //  %if.else244
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x19 ,  16
	bltu x0, x15, .LBB2_72
.LBB2_70:                               //  %if.else249
                                        //    in Loop: Header=BB2_15 Depth=2
	andi x15 ,  x19 ,  64
	bltu x0, x15, .LBB2_74
.LBB2_71:                               //  %if.else255
                                        //    in Loop: Header=BB2_15 Depth=2
	andi x15 ,  x19 ,  512
	bltu x0, x15, .LBB2_76
.LBB2_72:                               //  %if.then247
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x23
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB2_13
	jal x0, .LBB2_15
.LBB2_73:                               //  %if.then241
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x15 ,  240 ( x2 )
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	srai x14 ,  x24 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x23
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB2_13
	jal x0, .LBB2_15
.LBB2_74:                               //  %if.then252
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x23
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB2_13
	jal x0, .LBB2_15
.LBB2_75:                               //  %__sprint_r.exit1229.thread1639
                                        //    in Loop: Header=BB2_15 Depth=2
	addi x15 ,  x2 ,  224
	addi x22 ,  x2 ,  160
	sw x0 ,  228 ( x2 )
	add x21 ,  x0 ,  x0
	addi x27 ,  x0 ,  122
	sw x0 ,  8 ( x15 )
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB2_23
.LBB2_76:                               //  %if.then258
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x24 ,  0 ( x15 )
	add x9 ,  x0 ,  x23
	lbu x15 ,  0 ( x9 )
	bltu x0, x15, .LBB2_13
	jal x0, .LBB2_15
.LBB2_77:                               //  %sw.bb192
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x15 ,  60 ( x2 )
	jal x0, .LBB2_114
.LBB2_78:                               //  %sw.bb310
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x26 ,  0 ( x15 )
	sb x0 ,  239 ( x2 )
	beq x0, x26, .LBB2_115
.LBB2_79:                               //  %if.else321
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x27 ,  44 ( x2 )             //  4-byte Folded Reload
	blt x27, x0, .LBB2_122
.LBB2_80:                               //  %if.then324
                                        //    in Loop: Header=BB2_12 Depth=1
	add x9 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x12 ,  x0 ,  x27
	add x11 ,  x0 ,  x9
	call memchr
	beq x10, x9, .LBB2_82
.LBB2_81:                               //  %if.then324
                                        //    in Loop: Header=BB2_12 Depth=1
	sub x27 ,  x10 ,  x26
.LBB2_82:                               //  %if.then324
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x27
	add x21 ,  x0 ,  x9
	jal x0, .LBB2_123
.LBB2_83:                               //  %sw.bb198.loopexit
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB2_89
.LBB2_84:                               //  %cond.false203
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  16
	bltu x0, x15, .LBB2_118
.LBB2_85:                               //  %cond.false208
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  64
	bltu x0, x15, .LBB2_124
.LBB2_86:                               //  %cond.false215
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x27 ,  0 ( x15 )
	andi x15 ,  x5 ,  512
	beq x0, x15, .LBB2_125
.LBB2_87:                               //  %cond.true218
                                        //    in Loop: Header=BB2_12 Depth=1
	slli x15 ,  x27 ,  24&31
	srai x27 ,  x15 ,  24&31
	srai x22 ,  x27 ,  31&31
	bge x22, x0, .LBB2_90
	jal x0, .LBB2_126
.LBB2_88:                               //  %sw.bb196
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	ori x5 ,  x5 ,  16
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB2_84
.LBB2_89:                               //  %cond.true201
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	addi x14 ,  x15 ,  8
	lw x27 ,  0 ( x15 )
	sw x14 ,  240 ( x2 )
	lw x22 ,  4 ( x15 )
	blt x22, x0, .LBB2_126
.LBB2_90:                               //    in Loop: Header=BB2_12 Depth=1
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_91:                               //  %sw.bb267
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	ori x5 ,  x5 ,  16
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	beq x0, x15, .LBB2_98
.LBB2_92:                               //  %cond.true272
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	addi x14 ,  x15 ,  8
	lw x27 ,  0 ( x15 )
	sw x14 ,  240 ( x2 )
	lw x22 ,  4 ( x15 )
	jal x0, .LBB2_131
.LBB2_93:                               //  %sw.bb338
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	ori x5 ,  x5 ,  16
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB2_104
.LBB2_94:                               //  %cond.true343
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  240 ( x2 )
	addi x15 ,  x14 ,  4
	sw x15 ,  240 ( x2 )
	addi x15 ,  x14 ,  8
	lw x27 ,  0 ( x14 )
	sw x15 ,  240 ( x2 )
	slti x15 ,  x0 ,  1
	lw x22 ,  4 ( x14 )
	sb x0 ,  239 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_95:                               //  %hex.loopexit
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	addi x15 ,  x0 ,  88
	add x5 ,  x0 ,  x19
	andi x14 ,  x5 ,  32
	beq x0, x14, .LBB2_109
.LBB2_96:                               //  %cond.true379
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  240 ( x2 )
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x13 ,  x14 ,  4
	sw x13 ,  240 ( x2 )
	addi x13 ,  x14 ,  8
	lw x27 ,  0 ( x14 )
	sw x13 ,  240 ( x2 )
	lw x22 ,  4 ( x14 )
	andi x14 ,  x5 ,  1
	bltu x0, x14, .LBB2_136
	jal x0, .LBB2_138
.LBB2_97:                               //  %sw.bb269.loopexit
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	bltu x0, x15, .LBB2_92
.LBB2_98:                               //  %cond.false274
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  16
	bltu x0, x15, .LBB2_119
.LBB2_99:                               //  %cond.false279
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  64
	bltu x0, x15, .LBB2_129
.LBB2_100:                              //  %cond.false286
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	andi x14 ,  x5 ,  512
	lw x27 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB2_130
.LBB2_101:                              //  %cond.false286
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x27 ,  x27 ,  255
	jal x0, .LBB2_130
.LBB2_102:                              //  %sw.bb305
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	lui x30 ,  .str&4095
	add x5 ,  x0 ,  x19
	add x22 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	ori x5 ,  x5 ,  2
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x27 ,  0 ( x15 )
	addi x15 ,  x0 ,  120
	sb x15 ,  59 ( x2 )
	addi x15 ,  x0 ,  48
	sb x15 ,  58 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	or x9 ,  x15 ,  x30
	addi x15 ,  x0 ,  2
	sb x0 ,  239 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_103:                              //  %sw.bb340.loopexit
                                        //    in Loop: Header=BB2_12 Depth=1
	add x5 ,  x0 ,  x19
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x5 ,  32
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB2_94
.LBB2_104:                              //  %cond.false345
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  16
	bltu x0, x15, .LBB2_120
.LBB2_105:                              //  %cond.false350
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  64
	bltu x0, x15, .LBB2_132
.LBB2_106:                              //  %cond.false357
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	andi x14 ,  x5 ,  512
	lw x27 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB2_133
.LBB2_107:                              //  %cond.false357
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x27 ,  x27 ,  255
	jal x0, .LBB2_133
.LBB2_108:                              //  %hex.loopexit1
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	addi x15 ,  x0 ,  120
	add x5 ,  x0 ,  x19
	andi x14 ,  x5 ,  32
	bltu x0, x14, .LBB2_96
.LBB2_109:                              //  %cond.false381
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	andi x14 ,  x5 ,  16
	bltu x0, x14, .LBB2_121
.LBB2_110:                              //  %cond.false386
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x14 ,  x5 ,  64
	bltu x0, x14, .LBB2_134
.LBB2_111:                              //  %cond.false393
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  240 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  240 ( x2 )
	andi x13 ,  x5 ,  512
	lw x27 ,  0 ( x14 )
	add x14 ,  x0 ,  x0
	beq x13, x14, .LBB2_135
.LBB2_112:                              //  %cond.false393
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x27 ,  x27 ,  255
	add x22 ,  x0 ,  x0
	andi x14 ,  x5 ,  1
	bltu x0, x14, .LBB2_136
	jal x0, .LBB2_138
.LBB2_113:                              //  %if.end526
                                        //    in Loop: Header=BB2_12 Depth=1
	sb x9 ,  60 ( x2 )
.LBB2_114:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	slti x15 ,  x0 ,  1
	addi x26 ,  x2 ,  60
	sb x0 ,  239 ( x2 )
	add x10 ,  x0 ,  x15
	jal x0, .LBB2_168
.LBB2_115:                              //  %if.then314
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	add x5 ,  x0 ,  x19
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	bltu x14, x15, .LBB2_117
.LBB2_116:                              //  %if.then314
                                        //    in Loop: Header=BB2_12 Depth=1
	add x14 ,  x0 ,  x15
.LBB2_117:                              //  %if.then314
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x14
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	add x15 ,  x0 ,  x21
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x21, .LBB2_186
	jal x0, .LBB2_187
.LBB2_118:                              //  %cond.true206
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x27 ,  0 ( x15 )
	srai x22 ,  x27 ,  31&31
	bge x22, x0, .LBB2_90
	jal x0, .LBB2_126
.LBB2_119:                              //  %cond.true277
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x27 ,  0 ( x15 )
	jal x0, .LBB2_130
.LBB2_120:                              //  %cond.true348
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x27 ,  0 ( x15 )
	jal x0, .LBB2_133
.LBB2_121:                              //  %cond.true384
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  240 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  240 ( x2 )
	lw x27 ,  0 ( x14 )
	add x22 ,  x0 ,  x0
	andi x14 ,  x5 ,  1
	bltu x0, x14, .LBB2_136
	jal x0, .LBB2_138
.LBB2_122:                              //  %if.else334
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x26
	call strlen
.LBB2_123:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	add x5 ,  x0 ,  x19
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x21
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x21, .LBB2_186
	jal x0, .LBB2_187
.LBB2_124:                              //  %cond.true211
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x27 ,  x15 ,  16&31
.LBB2_125:                              //  %cond.end228
                                        //    in Loop: Header=BB2_12 Depth=1
	srai x22 ,  x27 ,  31&31
	bge x22, x0, .LBB2_90
.LBB2_126:                              //  %if.then435.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x0 ,  -1
	bge x15, x21, .LBB2_128
.LBB2_127:                              //    in Loop: Header=BB2_12 Depth=1
	andi x5 ,  x5 ,  -129
.LBB2_128:                              //  %if.then435.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x0 ,  45
	sb x15 ,  239 ( x2 )
	sltu x15 ,  x0 ,  x27
	sub x27 ,  x0 ,  x27
	add x15 ,  x15 ,  x22
	sub x22 ,  x0 ,  x15
	jal x0, .LBB2_150
.LBB2_129:                              //  %cond.true282
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lhu x27 ,  0 ( x15 )
.LBB2_130:                              //  %cond.false286
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
.LBB2_131:                              //  %cond.end302
                                        //    in Loop: Header=BB2_12 Depth=1
	add x15 ,  x0 ,  x0
	andi x5 ,  x5 ,  -1025
	sb x0 ,  239 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_132:                              //  %cond.true353
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  240 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  240 ( x2 )
	lhu x27 ,  0 ( x15 )
.LBB2_133:                              //  %cond.end370
                                        //    in Loop: Header=BB2_12 Depth=1
	add x22 ,  x0 ,  x0
	slti x15 ,  x0 ,  1
	sb x0 ,  239 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x21, .LBB2_139
	jal x0, .LBB2_140
.LBB2_134:                              //  %cond.true389
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  240 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  240 ( x2 )
	lhu x27 ,  0 ( x14 )
.LBB2_135:                              //  %cond.end406
                                        //    in Loop: Header=BB2_12 Depth=1
	add x22 ,  x0 ,  x0
	andi x14 ,  x5 ,  1
	beq x0, x14, .LBB2_138
.LBB2_136:                              //  %cond.end409
                                        //    in Loop: Header=BB2_12 Depth=1
	or x14 ,  x22 ,  x27
	beq x0, x14, .LBB2_138
.LBB2_137:                              //  %if.then416
                                        //    in Loop: Header=BB2_12 Depth=1
	sb x15 ,  59 ( x2 )
	addi x15 ,  x0 ,  48
	ori x5 ,  x5 ,  2
	sb x15 ,  58 ( x2 )
.LBB2_138:                              //  %if.end421
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x5 ,  x5 ,  -1025
	addi x15 ,  x0 ,  2
	sb x0 ,  239 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x21, .LBB2_140
.LBB2_139:                              //    in Loop: Header=BB2_12 Depth=1
	andi x5 ,  x5 ,  -129
.LBB2_140:                              //  %number
                                        //    in Loop: Header=BB2_12 Depth=1
	bltu x0, x21, .LBB2_145
.LBB2_141:                              //  %number
                                        //    in Loop: Header=BB2_12 Depth=1
	or x14 ,  x22 ,  x27
	bltu x0, x14, .LBB2_145
.LBB2_142:                              //  %if.else506
                                        //    in Loop: Header=BB2_12 Depth=1
	bltu x0, x15, .LBB2_160
.LBB2_143:                              //  %if.else506
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	andi x15 ,  x5 ,  1
	beq x0, x15, .LBB2_161
.LBB2_144:                              //  %if.then513
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x0 ,  48
	addi x26 ,  x2 ,  159
	sb x15 ,  159 ( x2 )
	jal x0, .LBB2_185
.LBB2_145:                              //  %if.then435
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_162
.LBB2_146:                              //  %if.then435
                                        //    in Loop: Header=BB2_12 Depth=1
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB2_150
.LBB2_147:                              //  %if.then435
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB2_167
.LBB2_148:                              //  %do.body497
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x15 ,  x27 ,  15
	slli x14 ,  x22 ,  28&31
	srli x22 ,  x22 ,  4&31
	add x15 ,  x15 ,  x9
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x26 )
	srli x15 ,  x27 ,  4&31
	addi x26 ,  x26 ,  -1
	or x27 ,  x14 ,  x15
	or x15 ,  x22 ,  x27
	bltu x0, x15, .LBB2_148
	jal x0, .LBB2_184
.LBB2_150:                              //  %sw.bb455
                                        //    in Loop: Header=BB2_12 Depth=1
	add x15 ,  x0 ,  x0
	bne x22, x15, .LBB2_152
.LBB2_151:                              //    in Loop: Header=BB2_12 Depth=1
	sltiu x15 ,  x27 ,  10
.LBB2_152:                              //  %sw.bb455
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_154
.LBB2_153:                              //  %if.then458
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x27 ,  48
	addi x26 ,  x2 ,  159
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  159 ( x2 )
	jal x0, .LBB2_185
.LBB2_154:                              //  %do.body463.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x15 ,  x5 ,  1024
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB2_169
.LBB2_155:                              //  %do.body463.us.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_158
.LBB2_156:                              //  %do.body463.us
                                        //    in Loop: Header=BB2_158 Depth=2
	sltu x15 ,  x0 ,  x22
.LBB2_157:                              //  %do.body463.us
                                        //    in Loop: Header=BB2_158 Depth=2
	sub x14 ,  x27 ,  x10
	add x27 ,  x0 ,  x9
	add x22 ,  x0 ,  x19
	ori x14 ,  x14 ,  48
	sb x14 ,  -1 ( x26 )
	addi x26 ,  x26 ,  -1
	beq x0, x15, .LBB2_181
.LBB2_158:                              //  %do.body463.us
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x21 ,  x0 ,  10
	add x25 ,  x0 ,  x0
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	call __udivdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __muldi3
	bne x22, x25, .LBB2_156
.LBB2_159:                              //    in Loop: Header=BB2_158 Depth=2
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x27
	jal x0, .LBB2_157
.LBB2_160:                              //    in Loop: Header=BB2_12 Depth=1
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_184
.LBB2_161:                              //    in Loop: Header=BB2_12 Depth=1
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_185
.LBB2_162:                              //  %do.body438.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x26 ,  x2 ,  159
.LBB2_163:                              //  %do.body438
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	slli x14 ,  x22 ,  29&31
	srli x15 ,  x27 ,  3&31
	srli x22 ,  x22 ,  3&31
	or x14 ,  x14 ,  x15
	andi x15 ,  x27 ,  7
	ori x15 ,  x15 ,  48
	or x13 ,  x22 ,  x14
	add x27 ,  x0 ,  x14
	sb x15 ,  0 ( x26 )
	addi x26 ,  x26 ,  -1
	bltu x0, x13, .LBB2_163
.LBB2_164:                              //  %do.end445
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x14 ,  x26 ,  1
	andi x13 ,  x5 ,  1
	beq x0, x13, .LBB2_279
.LBB2_165:                              //  %do.end445
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB2_280
.LBB2_166:                              //  %if.then452
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x26 )
	jal x0, .LBB2_185
.LBB2_167:                              //  %sw.default
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	add x19 ,  x0 ,  x5
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	add x10 ,  x0 ,  x26
	call strlen
.LBB2_168:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x5 ,  x0 ,  x19
	add x15 ,  x0 ,  x21
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x10, x21, .LBB2_186
	jal x0, .LBB2_187
.LBB2_169:                              //  %do.body463.preheader5
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB2_171
.LBB2_170:                              //  %if.end491
                                        //    in Loop: Header=BB2_171 Depth=2
	sltu x15 ,  x0 ,  x22
	add x27 ,  x0 ,  x21
	add x22 ,  x0 ,  x19
	beq x0, x15, .LBB2_182
.LBB2_171:                              //  %do.body463
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x25 ,  x0 ,  10
	add x9 ,  x0 ,  x0
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x9
	call __udivdi3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x9
	add x21 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __muldi3
	sub x15 ,  x27 ,  x10
	addi x18 ,  x18 ,  1
	ori x15 ,  x15 ,  48
	sb x15 ,  -1 ( x26 )
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x26 ,  -1
	lb x15 ,  0 ( x15 )
	bne x18, x15, .LBB2_177
.LBB2_172:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	beq x22, x9, .LBB2_180
.LBB2_173:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	add x14 ,  x0 ,  x9
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	bltu x0, x14, .LBB2_178
.LBB2_174:                              //  %land.lhs.true474
                                        //    in Loop: Header=BB2_171 Depth=2
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  127
	beq x0, x15, .LBB2_178
.LBB2_175:                              //  %if.then481
                                        //    in Loop: Header=BB2_171 Depth=2
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x15 ,  x26
	add x10 ,  x0 ,  x26
	call strncpy
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x0
	lbu x15 ,  1 ( x14 )
	beq x15, x18, .LBB2_178
.LBB2_176:                              //  %if.then481
                                        //    in Loop: Header=BB2_171 Depth=2
	addi x14 ,  x14 ,  1
	sw x14 ,  36 ( x2 )             //  4-byte Folded Spill
	bne x22, x9, .LBB2_170
	jal x0, .LBB2_179
.LBB2_177:                              //    in Loop: Header=BB2_171 Depth=2
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
.LBB2_178:                              //  %if.end491
                                        //    in Loop: Header=BB2_171 Depth=2
	bne x22, x9, .LBB2_170
.LBB2_179:                              //    in Loop: Header=BB2_171 Depth=2
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x27
	add x27 ,  x0 ,  x21
	add x22 ,  x0 ,  x19
	bltu x0, x15, .LBB2_171
	jal x0, .LBB2_182
.LBB2_180:                              //    in Loop: Header=BB2_171 Depth=2
	sltiu x14 ,  x27 ,  10
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB2_174
	jal x0, .LBB2_178
.LBB2_181:                              //    in Loop: Header=BB2_12 Depth=1
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_183
.LBB2_182:                              //    in Loop: Header=BB2_12 Depth=1
	addi x18 ,  x0 ,  16
.LBB2_183:                              //  %if.end516
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x5 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB2_184:                              //  %if.end516
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
.LBB2_185:                              //  %if.end516
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	sub x10 ,  x15 ,  x26
	add x15 ,  x0 ,  x21
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x10, x21, .LBB2_187
.LBB2_186:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	add x15 ,  x0 ,  x10
.LBB2_187:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  239 ( x2 )
	andi x19 ,  x5 ,  2
	addi x9 ,  x2 ,  224
	sw x10 ,  48 ( x2 )             //  4-byte Folded Spill
	sltu x14 ,  x0 ,  x14
	add x27 ,  x14 ,  x15
	srli x15 ,  x19 ,  1&31
	beq x0, x15, .LBB2_189
.LBB2_188:                              //    in Loop: Header=BB2_12 Depth=1
	addi x27 ,  x27 ,  2
.LBB2_189:                              //  %sw.epilog529
                                        //    in Loop: Header=BB2_12 Depth=1
	andi x11 ,  x5 ,  132
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	beq x0, x11, .LBB2_195
.LBB2_190:                              //  %if.end592
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x15 ,  239 ( x2 )
	beq x0, x15, .LBB2_218
.LBB2_191:                              //  %if.then594
                                        //    in Loop: Header=BB2_12 Depth=1
	slti x15 ,  x0 ,  1
	lw x14 ,  228 ( x2 )
	sw x15 ,  4 ( x12 )
	addi x15 ,  x2 ,  239
	sw x15 ,  0 ( x12 )
	lw x15 ,  8 ( x9 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  228 ( x2 )
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x9 )
	bltu x0, x14, .LBB2_216
.LBB2_192:                              //  %if.then604
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_217
.LBB2_193:                              //  %if.end.i1311
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_246
.LBB2_194:                              //  %__sprint_r.exit1340
                                        //    in Loop: Header=BB2_12 Depth=1
	add x21 ,  x0 ,  x27
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x22 ,  x0 ,  x18
	add x18 ,  x0 ,  x19
	add x19 ,  x0 ,  x5
	call __sfvwrite_r
	add x5 ,  x0 ,  x19
	add x19 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	add x18 ,  x0 ,  x22
	add x27 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_218
	jal x0, .LBB2_404
.LBB2_195:                              //  %if.then548
                                        //    in Loop: Header=BB2_12 Depth=1
	sub x22 ,  x24 ,  x27
	bge x0, x22, .LBB2_190
.LBB2_196:                              //  %while.cond553.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  _vfiprintf_r.blanks&4095
	lui x15 ,  (_vfiprintf_r.blanks>>12)&1048575
	lw x14 ,  228 ( x2 )
	slti x13 ,  x22 ,  17
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x12 )
	lw x15 ,  8 ( x9 )
	beq x0, x13, .LBB2_203
.LBB2_197:                              //  %while.end574
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x13 ,  x14 ,  1
	add x15 ,  x22 ,  x15
	slti x14 ,  x14 ,  7
	sw x22 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_254
.LBB2_198:                              //  %if.then584
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_263
.LBB2_199:                              //  %if.end.i1274
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_265
.LBB2_200:                              //  %__sprint_r.exit1303
                                        //    in Loop: Header=BB2_12 Depth=1
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x21 ,  x0 ,  x18
	add x18 ,  x0 ,  x19
	add x19 ,  x0 ,  x5
	call __sfvwrite_r
	add x11 ,  x0 ,  x27
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	add x5 ,  x0 ,  x19
	add x19 ,  x0 ,  x18
	add x18 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_190
	jal x0, .LBB2_404
.LBB2_201:                              //    in Loop: Header=BB2_203 Depth=2
	addi x12 ,  x12 ,  8
	add x14 ,  x0 ,  x13
.LBB2_202:                              //  %if.end572
                                        //    in Loop: Header=BB2_203 Depth=2
	lui x30 ,  _vfiprintf_r.blanks&4095
	lui x13 ,  (_vfiprintf_r.blanks>>12)&1048575
	addi x22 ,  x22 ,  -16
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x12 )
	bge x18, x22, .LBB2_197
.LBB2_203:                              //  %while.body556
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_209 Depth 3
                                        //        Child Loop BB2_212 Depth 3
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  16
	slti x14 ,  x14 ,  7
	sw x18 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_201
.LBB2_204:                              //  %if.then566
                                        //    in Loop: Header=BB2_203 Depth=2
	beq x0, x15, .LBB2_207
.LBB2_205:                              //  %if.end.i1237
                                        //    in Loop: Header=BB2_203 Depth=2
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_208
.LBB2_206:                              //  %__sprint_r.exit1266
                                        //    in Loop: Header=BB2_203 Depth=2
	add x18 ,  x0 ,  x27
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x21 ,  x0 ,  x19
	add x19 ,  x0 ,  x5
	call __sfvwrite_r
	add x15 ,  x0 ,  x0
	addi x13 ,  x2 ,  160
	add x5 ,  x0 ,  x19
	add x11 ,  x0 ,  x27
	add x27 ,  x0 ,  x18
	add x19 ,  x0 ,  x21
	addi x18 ,  x0 ,  16
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x15
	add x12 ,  x0 ,  x13
	beq x0, x10, .LBB2_202
	jal x0, .LBB2_404
.LBB2_207:                              //  %__sprint_r.exit1266.thread
                                        //    in Loop: Header=BB2_203 Depth=2
	add x15 ,  x0 ,  x0
	addi x13 ,  x2 ,  160
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x15
	add x12 ,  x0 ,  x13
	jal x0, .LBB2_202
.LBB2_208:                              //  %for.body.preheader.i1239
                                        //    in Loop: Header=BB2_203 Depth=2
	lw x18 ,  224 ( x2 )
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	lw x25 ,  4 ( x18 )
	srli x9 ,  x25 ,  2&31
	bltu x0, x9, .LBB2_211
.LBB2_209:                              //  %for.inc10.i1259
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_203 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x14 ,  x25 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_215
.LBB2_210:                              //  %for.body.i1244
                                        //    in Loop: Header=BB2_209 Depth=3
	lw x25 ,  4 ( x18 )
	srli x9 ,  x25 ,  2&31
	beq x0, x9, .LBB2_209
.LBB2_211:                              //    in Loop: Header=BB2_203 Depth=2
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  0 ( x18 )
.LBB2_212:                              //  %for.body6.i1252
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_203 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  0 ( x27 )
	add x12 ,  x0 ,  x8
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_389
.LBB2_213:                              //  %for.cond4.i1246
                                        //    in Loop: Header=BB2_212 Depth=3
	addi x27 ,  x27 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_212
.LBB2_214:                              //  %for.inc10.loopexit.i1254
                                        //    in Loop: Header=BB2_203 Depth=2
	lw x15 ,  232 ( x2 )
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	lw x5 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB2_209
.LBB2_215:                              //  %__sprint_r.exit1266.thread1647
                                        //    in Loop: Header=BB2_203 Depth=2
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	addi x13 ,  x2 ,  160
	addi x9 ,  x2 ,  224
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x15
	add x12 ,  x0 ,  x13
	sw x0 ,  8 ( x9 )
	jal x0, .LBB2_202
.LBB2_216:                              //    in Loop: Header=BB2_12 Depth=1
	addi x12 ,  x12 ,  8
	bltu x0, x19, .LBB2_219
.LBB2_282:                              //    in Loop: Header=BB2_12 Depth=1
	add x21 ,  x0 ,  x0
	xori x15 ,  x11 ,  128
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	bltu x0, x15, .LBB2_283
.LBB2_224:                              //  %if.then636
                                        //    in Loop: Header=BB2_12 Depth=1
	sub x19 ,  x24 ,  x27
	bge x0, x19, .LBB2_283
.LBB2_225:                              //  %while.cond641.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  _vfiprintf_r.zeroes&4095
	lui x15 ,  (_vfiprintf_r.zeroes>>12)&1048575
	lw x14 ,  228 ( x2 )
	slti x13 ,  x19 ,  17
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x12 )
	lw x15 ,  8 ( x9 )
	beq x0, x13, .LBB2_232
.LBB2_226:                              //  %while.end662
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x13 ,  x14 ,  1
	add x15 ,  x19 ,  x15
	slti x14 ,  x14 ,  7
	sw x19 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_255
.LBB2_227:                              //  %if.then672
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_264
.LBB2_228:                              //  %if.end.i1422
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_272
.LBB2_229:                              //  %__sprint_r.exit1451
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_283
	jal x0, .LBB2_404
.LBB2_230:                              //    in Loop: Header=BB2_232 Depth=2
	addi x12 ,  x12 ,  8
	add x14 ,  x0 ,  x13
.LBB2_231:                              //  %if.end660
                                        //    in Loop: Header=BB2_232 Depth=2
	lui x30 ,  _vfiprintf_r.zeroes&4095
	lui x13 ,  (_vfiprintf_r.zeroes>>12)&1048575
	addi x19 ,  x19 ,  -16
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x12 )
	bge x18, x19, .LBB2_226
.LBB2_232:                              //  %while.body644
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_238 Depth 3
                                        //        Child Loop BB2_241 Depth 3
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  16
	slti x14 ,  x14 ,  7
	sw x18 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_230
.LBB2_233:                              //  %if.then654
                                        //    in Loop: Header=BB2_232 Depth=2
	beq x0, x15, .LBB2_236
.LBB2_234:                              //  %if.end.i1385
                                        //    in Loop: Header=BB2_232 Depth=2
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_237
.LBB2_235:                              //  %__sprint_r.exit1414
                                        //    in Loop: Header=BB2_232 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_231
	jal x0, .LBB2_404
.LBB2_236:                              //  %__sprint_r.exit1414.thread
                                        //    in Loop: Header=BB2_232 Depth=2
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	jal x0, .LBB2_231
.LBB2_237:                              //  %for.body.preheader.i1387
                                        //    in Loop: Header=BB2_232 Depth=2
	lw x18 ,  224 ( x2 )
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	bltu x0, x9, .LBB2_240
.LBB2_238:                              //  %for.inc10.i1407
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_232 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x14 ,  x21 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_244
.LBB2_239:                              //  %for.body.i1392
                                        //    in Loop: Header=BB2_238 Depth=3
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	beq x0, x9, .LBB2_238
.LBB2_240:                              //    in Loop: Header=BB2_232 Depth=2
	lw x22 ,  0 ( x18 )
.LBB2_241:                              //  %for.body6.i1400
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_232 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_242:                              //  %for.cond4.i1394
                                        //    in Loop: Header=BB2_241 Depth=3
	addi x22 ,  x22 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_241
.LBB2_243:                              //  %for.inc10.loopexit.i1402
                                        //    in Loop: Header=BB2_232 Depth=2
	lw x15 ,  232 ( x2 )
	jal x0, .LBB2_238
.LBB2_244:                              //  %__sprint_r.exit1414.thread1679
                                        //    in Loop: Header=BB2_232 Depth=2
	add x21 ,  x0 ,  x0
	addi x9 ,  x2 ,  224
	addi x12 ,  x2 ,  160
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	sw x0 ,  8 ( x9 )
	jal x0, .LBB2_231
.LBB2_217:                              //  %__sprint_r.exit1340.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	addi x12 ,  x2 ,  160
.LBB2_218:                              //  %if.end611
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x19, .LBB2_282
.LBB2_219:                              //  %if.then614
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x0 ,  2
	lw x14 ,  228 ( x2 )
	sw x15 ,  4 ( x12 )
	addi x15 ,  x2 ,  58
	sw x15 ,  0 ( x12 )
	lw x15 ,  8 ( x9 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  228 ( x2 )
	addi x15 ,  x15 ,  2
	sw x15 ,  8 ( x9 )
	bltu x0, x14, .LBB2_245
.LBB2_220:                              //  %if.then625
                                        //    in Loop: Header=BB2_12 Depth=1
	add x21 ,  x0 ,  x0
	beq x0, x15, .LBB2_253
.LBB2_221:                              //  %if.end.i1348
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_256
.LBB2_222:                              //  %__sprint_r.exit1377
                                        //    in Loop: Header=BB2_12 Depth=1
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x22 ,  x0 ,  x5
	call __sfvwrite_r
	add x11 ,  x0 ,  x27
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	add x5 ,  x0 ,  x22
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	bltu x0, x10, .LBB2_404
.LBB2_223:                              //  %if.end632
                                        //    in Loop: Header=BB2_12 Depth=1
	xori x15 ,  x11 ,  128
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB2_224
.LBB2_283:                              //  %if.end680
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x15 ,  x14
	bge x0, x19, .LBB2_317
.LBB2_284:                              //  %while.cond685.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  _vfiprintf_r.zeroes&4095
	lui x15 ,  (_vfiprintf_r.zeroes>>12)&1048575
	lw x14 ,  228 ( x2 )
	slti x13 ,  x19 ,  17
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x12 )
	lw x15 ,  8 ( x9 )
	beq x0, x13, .LBB2_291
.LBB2_285:                              //  %while.end706
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x13 ,  x14 ,  1
	add x15 ,  x19 ,  x15
	slti x14 ,  x14 ,  7
	sw x19 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_304
.LBB2_286:                              //  %if.then716
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x27 ,  x0 ,  122
	beq x0, x15, .LBB2_305
.LBB2_287:                              //  %if.end.i1496
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_306
.LBB2_288:                              //  %__sprint_r.exit1525
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	add x15 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_319
	jal x0, .LBB2_404
.LBB2_289:                              //    in Loop: Header=BB2_291 Depth=2
	addi x12 ,  x12 ,  8
	add x14 ,  x0 ,  x13
.LBB2_290:                              //  %if.end704
                                        //    in Loop: Header=BB2_291 Depth=2
	lui x30 ,  _vfiprintf_r.zeroes&4095
	lui x13 ,  (_vfiprintf_r.zeroes>>12)&1048575
	addi x19 ,  x19 ,  -16
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x13 ,  0 ( x12 )
	bge x18, x19, .LBB2_285
.LBB2_291:                              //  %while.body688
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_297 Depth 3
                                        //        Child Loop BB2_300 Depth 3
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  16
	slti x14 ,  x14 ,  7
	sw x18 ,  4 ( x12 )
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_289
.LBB2_292:                              //  %if.then698
                                        //    in Loop: Header=BB2_291 Depth=2
	beq x0, x15, .LBB2_295
.LBB2_293:                              //  %if.end.i1459
                                        //    in Loop: Header=BB2_291 Depth=2
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_296
.LBB2_294:                              //  %__sprint_r.exit1488
                                        //    in Loop: Header=BB2_291 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_290
	jal x0, .LBB2_404
.LBB2_295:                              //  %__sprint_r.exit1488.thread
                                        //    in Loop: Header=BB2_291 Depth=2
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	jal x0, .LBB2_290
.LBB2_296:                              //  %for.body.preheader.i1461
                                        //    in Loop: Header=BB2_291 Depth=2
	lw x18 ,  224 ( x2 )
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	bltu x0, x9, .LBB2_299
.LBB2_297:                              //  %for.inc10.i1481
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_291 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x14 ,  x21 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_303
.LBB2_298:                              //  %for.body.i1466
                                        //    in Loop: Header=BB2_297 Depth=3
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	beq x0, x9, .LBB2_297
.LBB2_299:                              //    in Loop: Header=BB2_291 Depth=2
	lw x22 ,  0 ( x18 )
.LBB2_300:                              //  %for.body6.i1474
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_291 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_301:                              //  %for.cond4.i1468
                                        //    in Loop: Header=BB2_300 Depth=3
	addi x22 ,  x22 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_300
.LBB2_302:                              //  %for.inc10.loopexit.i1476
                                        //    in Loop: Header=BB2_291 Depth=2
	lw x15 ,  232 ( x2 )
	jal x0, .LBB2_297
.LBB2_303:                              //  %__sprint_r.exit1488.thread1695
                                        //    in Loop: Header=BB2_291 Depth=2
	add x21 ,  x0 ,  x0
	addi x9 ,  x2 ,  224
	addi x12 ,  x2 ,  160
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	sw x0 ,  8 ( x9 )
	jal x0, .LBB2_290
.LBB2_245:                              //    in Loop: Header=BB2_12 Depth=1
	addi x12 ,  x12 ,  8
	add x21 ,  x0 ,  x0
	xori x15 ,  x11 ,  128
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB2_224
	jal x0, .LBB2_283
.LBB2_304:                              //    in Loop: Header=BB2_12 Depth=1
	addi x12 ,  x12 ,  8
	jal x0, .LBB2_318
.LBB2_246:                              //  %for.body.preheader.i1313
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x22 ,  4 ( x18 )
	srli x9 ,  x22 ,  2&31
	bltu x0, x9, .LBB2_249
.LBB2_247:                              //  %for.inc10.i1333
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x22 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_281
.LBB2_248:                              //  %for.body.i1318
                                        //    in Loop: Header=BB2_247 Depth=2
	lw x22 ,  4 ( x18 )
	srli x9 ,  x22 ,  2&31
	beq x0, x9, .LBB2_247
.LBB2_249:                              //    in Loop: Header=BB2_12 Depth=1
	add x21 ,  x0 ,  x5
	add x27 ,  x0 ,  x11
	lw x25 ,  0 ( x18 )
.LBB2_250:                              //  %for.body6.i1326
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x25 )
	add x12 ,  x0 ,  x8
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_251:                              //  %for.cond4.i1320
                                        //    in Loop: Header=BB2_250 Depth=2
	addi x25 ,  x25 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_250
.LBB2_252:                              //  %for.inc10.loopexit.i1328
                                        //    in Loop: Header=BB2_12 Depth=1
	add x11 ,  x0 ,  x27
	lw x15 ,  232 ( x2 )
	add x5 ,  x0 ,  x21
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_247
.LBB2_253:                              //  %__sprint_r.exit1377.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	addi x12 ,  x2 ,  160
	xori x15 ,  x11 ,  128
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB2_224
	jal x0, .LBB2_283
.LBB2_254:                              //    in Loop: Header=BB2_12 Depth=1
	addi x12 ,  x12 ,  8
	lbu x15 ,  239 ( x2 )
	bltu x0, x15, .LBB2_191
	jal x0, .LBB2_218
.LBB2_255:                              //    in Loop: Header=BB2_12 Depth=1
	addi x12 ,  x12 ,  8
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x15 ,  x14
	blt x0, x19, .LBB2_284
.LBB2_317:                              //  %if.end680.if.end723_crit_edge
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x13 ,  228 ( x2 )
	lw x15 ,  8 ( x9 )
.LBB2_318:                              //  %if.end723
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x27 ,  x0 ,  122
.LBB2_319:                              //  %if.end723
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x26 ,  0 ( x12 )
	add x15 ,  x14 ,  x15
	sw x14 ,  4 ( x12 )
	addi x14 ,  x13 ,  1
	slti x13 ,  x13 ,  7
	sw x15 ,  8 ( x9 )
	sw x14 ,  228 ( x2 )
	bltu x0, x13, .LBB2_333
.LBB2_320:                              //  %if.then733
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x26 ,  x0 ,  -1
	beq x0, x15, .LBB2_362
.LBB2_321:                              //  %if.end.i1533
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_364
.LBB2_322:                              //  %__sprint_r.exit1562
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x21
	addi x13 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	bltu x0, x10, .LBB2_404
.LBB2_323:                              //  %if.end739
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x12 ,  20 ( x2 )             //  4-byte Folded Reload
	andi x12 ,  x12 ,  4
	beq x0, x12, .LBB2_334
.LBB2_324:                              //  %if.then742
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x24 ,  x27
	bge x0, x19, .LBB2_363
.LBB2_325:                              //  %while.cond747.preheader
                                        //    in Loop: Header=BB2_12 Depth=1
	lui x30 ,  _vfiprintf_r.blanks&4095
	lui x12 ,  (_vfiprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	sw x12 ,  0 ( x13 )
	slti x12 ,  x19 ,  17
	beq x0, x12, .LBB2_342
.LBB2_326:                              //    in Loop: Header=BB2_12 Depth=1
	addi x13 ,  x13 ,  4
	add x15 ,  x19 ,  x15
	addi x27 ,  x0 ,  122
	sw x19 ,  0 ( x13 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x15 ,  8 ( x9 )
	sw x13 ,  228 ( x2 )
	bltu x0, x14, .LBB2_334
.LBB2_327:                              //  %if.then778
                                        //    in Loop: Header=BB2_12 Depth=1
	beq x0, x15, .LBB2_371
.LBB2_328:                              //  %if.end.i1607
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_374
.LBB2_329:                              //  %__sprint_r.exit1636
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	bltu x0, x10, .LBB2_404
.LBB2_330:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	blt x15, x24, .LBB2_332
.LBB2_331:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	add x24 ,  x0 ,  x15
.LBB2_332:                              //  %if.end786.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  228 ( x2 )
	add x15 ,  x15 ,  x24
	add x24 ,  x0 ,  x15
	jal x0, .LBB2_12
.LBB2_333:                              //    in Loop: Header=BB2_12 Depth=1
	addi x13 ,  x12 ,  8
	addi x26 ,  x0 ,  -1
	lw x12 ,  20 ( x2 )             //  4-byte Folded Reload
	andi x12 ,  x12 ,  4
	bltu x0, x12, .LBB2_324
.LBB2_334:                              //  %if.end786
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	blt x14, x24, .LBB2_336
.LBB2_335:                              //  %if.end786
                                        //    in Loop: Header=BB2_12 Depth=1
	add x24 ,  x0 ,  x14
.LBB2_336:                              //  %if.end786
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x14 ,  x24
	add x24 ,  x0 ,  x14
	beq x0, x15, .LBB2_339
.LBB2_337:                              //  %if.end.i1163
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_355
.LBB2_338:                              //  %__sprint_r.exit1192
                                        //    in Loop: Header=BB2_12 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	bltu x0, x10, .LBB2_400
.LBB2_339:                              //  %if.end800
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	jal x0, .LBB2_12
.LBB2_340:                              //    in Loop: Header=BB2_342 Depth=2
	addi x13 ,  x13 ,  8
	add x14 ,  x0 ,  x12
.LBB2_341:                              //  %if.end766
                                        //    in Loop: Header=BB2_342 Depth=2
	lui x30 ,  _vfiprintf_r.blanks&4095
	lui x12 ,  (_vfiprintf_r.blanks>>12)&1048575
	addi x19 ,  x19 ,  -16
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	sw x12 ,  0 ( x13 )
	bge x18, x19, .LBB2_326
.LBB2_342:                              //  %while.body750
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_348 Depth 3
                                        //        Child Loop BB2_351 Depth 3
	addi x12 ,  x14 ,  1
	addi x15 ,  x15 ,  16
	slti x14 ,  x14 ,  7
	sw x18 ,  4 ( x13 )
	sw x15 ,  8 ( x9 )
	sw x12 ,  228 ( x2 )
	bltu x0, x14, .LBB2_340
.LBB2_343:                              //  %if.then760
                                        //    in Loop: Header=BB2_342 Depth=2
	beq x0, x15, .LBB2_346
.LBB2_344:                              //  %if.end.i1570
                                        //    in Loop: Header=BB2_342 Depth=2
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_347
.LBB2_345:                              //  %__sprint_r.exit1599
                                        //    in Loop: Header=BB2_342 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x13 ,  x2 ,  160
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	beq x0, x10, .LBB2_341
	jal x0, .LBB2_404
.LBB2_346:                              //  %__sprint_r.exit1599.thread
                                        //    in Loop: Header=BB2_342 Depth=2
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	addi x13 ,  x2 ,  160
	jal x0, .LBB2_341
.LBB2_347:                              //  %for.body.preheader.i1572
                                        //    in Loop: Header=BB2_342 Depth=2
	lw x18 ,  224 ( x2 )
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	bltu x0, x9, .LBB2_350
.LBB2_348:                              //  %for.inc10.i1592
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_342 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	andi x14 ,  x21 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_354
.LBB2_349:                              //  %for.body.i1577
                                        //    in Loop: Header=BB2_348 Depth=3
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	beq x0, x9, .LBB2_348
.LBB2_350:                              //    in Loop: Header=BB2_342 Depth=2
	lw x22 ,  0 ( x18 )
.LBB2_351:                              //  %for.body6.i1585
                                        //    Parent Loop BB2_12 Depth=1
                                        //      Parent Loop BB2_342 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_352:                              //  %for.cond4.i1579
                                        //    in Loop: Header=BB2_351 Depth=3
	addi x22 ,  x22 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_351
.LBB2_353:                              //  %for.inc10.loopexit.i1587
                                        //    in Loop: Header=BB2_342 Depth=2
	lw x15 ,  232 ( x2 )
	jal x0, .LBB2_348
.LBB2_354:                              //  %__sprint_r.exit1599.thread1719
                                        //    in Loop: Header=BB2_342 Depth=2
	add x21 ,  x0 ,  x0
	addi x9 ,  x2 ,  224
	addi x13 ,  x2 ,  160
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x14 ,  x0 ,  x21
	add x15 ,  x0 ,  x21
	sw x0 ,  8 ( x9 )
	jal x0, .LBB2_341
.LBB2_355:                              //  %for.body.preheader.i1165
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x9 ,  224 ( x2 )
	lw x18 ,  4 ( x9 )
	srli x19 ,  x18 ,  2&31
	bltu x0, x19, .LBB2_358
.LBB2_356:                              //  %for.inc10.i1185
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x18 ,  -4
	addi x9 ,  x9 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_381
.LBB2_357:                              //  %for.body.i1170
                                        //    in Loop: Header=BB2_356 Depth=2
	lw x18 ,  4 ( x9 )
	srli x19 ,  x18 ,  2&31
	beq x0, x19, .LBB2_356
.LBB2_358:                              //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  0 ( x9 )
.LBB2_359:                              //  %for.body6.i1178
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_397
.LBB2_360:                              //  %for.cond4.i1172
                                        //    in Loop: Header=BB2_359 Depth=2
	addi x21 ,  x21 ,  4
	addi x19 ,  x19 ,  -1
	bltu x0, x19, .LBB2_359
.LBB2_361:                              //  %for.inc10.loopexit.i1180
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x21 ,  x0 ,  x0
	jal x0, .LBB2_356
.LBB2_362:                              //  %__sprint_r.exit1562.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x21
	addi x13 ,  x2 ,  160
	lw x12 ,  20 ( x2 )             //  4-byte Folded Reload
	andi x12 ,  x12 ,  4
	bltu x0, x12, .LBB2_324
	jal x0, .LBB2_334
.LBB2_363:                              //    in Loop: Header=BB2_12 Depth=1
	addi x27 ,  x0 ,  122
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	bge x14, x24, .LBB2_335
	jal x0, .LBB2_336
.LBB2_364:                              //  %for.body.preheader.i1535
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	bltu x0, x9, .LBB2_367
.LBB2_365:                              //  %for.inc10.i1555
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x19 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_382
.LBB2_366:                              //  %for.body.i1540
                                        //    in Loop: Header=BB2_365 Depth=2
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	beq x0, x9, .LBB2_365
.LBB2_367:                              //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  0 ( x18 )
.LBB2_368:                              //  %for.body6.i1548
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_369:                              //  %for.cond4.i1542
                                        //    in Loop: Header=BB2_368 Depth=2
	addi x21 ,  x21 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_368
.LBB2_370:                              //  %for.inc10.loopexit.i1550
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x21 ,  x0 ,  x0
	jal x0, .LBB2_365
.LBB2_256:                              //  %for.body.preheader.i1350
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	bltu x0, x9, .LBB2_259
.LBB2_257:                              //  %for.inc10.i1370
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x21 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_313
.LBB2_258:                              //  %for.body.i1355
                                        //    in Loop: Header=BB2_257 Depth=2
	lw x21 ,  4 ( x18 )
	srli x9 ,  x21 ,  2&31
	beq x0, x9, .LBB2_257
.LBB2_259:                              //    in Loop: Header=BB2_12 Depth=1
	add x19 ,  x0 ,  x5
	add x27 ,  x0 ,  x11
	lw x22 ,  0 ( x18 )
.LBB2_260:                              //  %for.body6.i1363
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x22 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_261:                              //  %for.cond4.i1357
                                        //    in Loop: Header=BB2_260 Depth=2
	addi x22 ,  x22 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_260
.LBB2_262:                              //  %for.inc10.loopexit.i1365
                                        //    in Loop: Header=BB2_12 Depth=1
	add x11 ,  x0 ,  x27
	lw x15 ,  232 ( x2 )
	add x5 ,  x0 ,  x19
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB2_257
.LBB2_305:                              //  %__sprint_r.exit1525.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	add x15 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	jal x0, .LBB2_319
.LBB2_306:                              //  %for.body.preheader.i1498
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	bltu x0, x9, .LBB2_309
.LBB2_307:                              //  %for.inc10.i1518
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x19 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_314
.LBB2_308:                              //  %for.body.i1503
                                        //    in Loop: Header=BB2_307 Depth=2
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	beq x0, x9, .LBB2_307
.LBB2_309:                              //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  0 ( x18 )
.LBB2_310:                              //  %for.body6.i1511
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_311:                              //  %for.cond4.i1505
                                        //    in Loop: Header=BB2_310 Depth=2
	addi x21 ,  x21 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_310
.LBB2_312:                              //  %for.inc10.loopexit.i1513
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x21 ,  x0 ,  x0
	jal x0, .LBB2_307
.LBB2_263:                              //  %__sprint_r.exit1303.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	addi x12 ,  x2 ,  160
	lbu x15 ,  239 ( x2 )
	bltu x0, x15, .LBB2_191
	jal x0, .LBB2_218
.LBB2_264:                              //  %__sprint_r.exit1451.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x0 ,  228 ( x2 )
	addi x12 ,  x2 ,  160
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x15 ,  x14
	blt x0, x19, .LBB2_284
	jal x0, .LBB2_317
.LBB2_265:                              //  %for.body.preheader.i1276
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	lw x22 ,  4 ( x18 )
	srli x9 ,  x22 ,  2&31
	bltu x0, x9, .LBB2_268
.LBB2_266:                              //  %for.inc10.i1296
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x22 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_315
.LBB2_267:                              //  %for.body.i1281
                                        //    in Loop: Header=BB2_266 Depth=2
	lw x22 ,  4 ( x18 )
	srli x9 ,  x22 ,  2&31
	beq x0, x9, .LBB2_266
.LBB2_268:                              //    in Loop: Header=BB2_12 Depth=1
	add x21 ,  x0 ,  x5
	lw x25 ,  0 ( x18 )
.LBB2_269:                              //  %for.body6.i1289
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x25 )
	add x12 ,  x0 ,  x8
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_270:                              //  %for.cond4.i1283
                                        //    in Loop: Header=BB2_269 Depth=2
	addi x25 ,  x25 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_269
.LBB2_271:                              //  %for.inc10.loopexit.i1291
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x5 ,  x0 ,  x21
	lw x25 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB2_266
.LBB2_272:                              //  %for.body.preheader.i1424
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	bltu x0, x9, .LBB2_275
.LBB2_273:                              //  %for.inc10.i1444
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x19 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_316
.LBB2_274:                              //  %for.body.i1429
                                        //    in Loop: Header=BB2_273 Depth=2
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	beq x0, x9, .LBB2_273
.LBB2_275:                              //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  0 ( x18 )
.LBB2_276:                              //  %for.body6.i1437
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_277:                              //  %for.cond4.i1431
                                        //    in Loop: Header=BB2_276 Depth=2
	addi x21 ,  x21 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_276
.LBB2_278:                              //  %for.inc10.loopexit.i1439
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x21 ,  x0 ,  x0
	jal x0, .LBB2_273
.LBB2_279:                              //    in Loop: Header=BB2_12 Depth=1
	add x26 ,  x0 ,  x14
	jal x0, .LBB2_184
.LBB2_280:                              //    in Loop: Header=BB2_12 Depth=1
	add x26 ,  x0 ,  x14
	jal x0, .LBB2_185
.LBB2_371:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	blt x15, x24, .LBB2_373
.LBB2_372:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_12 Depth=1
	add x24 ,  x0 ,  x15
.LBB2_373:                              //  %if.end786.thread2453
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  228 ( x2 )
	sw x0 ,  228 ( x2 )
	add x15 ,  x15 ,  x24
	add x24 ,  x0 ,  x15
	jal x0, .LBB2_12
.LBB2_374:                              //  %for.body.preheader.i1609
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x18 ,  224 ( x2 )
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	bltu x0, x9, .LBB2_377
.LBB2_375:                              //  %for.inc10.i1629
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x14 ,  x19 ,  -4
	addi x18 ,  x18 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_383
.LBB2_376:                              //  %for.body.i1614
                                        //    in Loop: Header=BB2_375 Depth=2
	lw x19 ,  4 ( x18 )
	srli x9 ,  x19 ,  2&31
	beq x0, x9, .LBB2_375
.LBB2_377:                              //    in Loop: Header=BB2_12 Depth=1
	lw x21 ,  0 ( x18 )
.LBB2_378:                              //  %for.body6.i1622
                                        //    Parent Loop BB2_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_385
.LBB2_379:                              //  %for.cond4.i1616
                                        //    in Loop: Header=BB2_378 Depth=2
	addi x21 ,  x21 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB2_378
.LBB2_380:                              //  %for.inc10.loopexit.i1624
                                        //    in Loop: Header=BB2_12 Depth=1
	lw x15 ,  232 ( x2 )
	add x21 ,  x0 ,  x0
	jal x0, .LBB2_375
.LBB2_281:                              //  %__sprint_r.exit1340.thread1663
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x22 ,  x2 ,  160
	addi x9 ,  x2 ,  224
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x12 ,  x0 ,  x22
	sw x0 ,  8 ( x9 )
	bltu x0, x19, .LBB2_219
	jal x0, .LBB2_282
.LBB2_381:                              //  %__sprint_r.exit1192.thread
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x2 ,  224
	sw x0 ,  228 ( x2 )
	addi x27 ,  x0 ,  122
	sw x0 ,  228 ( x2 )
	sw x0 ,  8 ( x15 )
	jal x0, .LBB2_12
.LBB2_382:                              //  %__sprint_r.exit1562.thread1711
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x9 ,  x2 ,  224
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x21
	addi x13 ,  x2 ,  160
	addi x27 ,  x0 ,  122
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	sw x0 ,  8 ( x9 )
	lw x12 ,  20 ( x2 )             //  4-byte Folded Reload
	andi x12 ,  x12 ,  4
	bltu x0, x12, .LBB2_324
	jal x0, .LBB2_334
.LBB2_313:                              //  %__sprint_r.exit1377.thread1671
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x9 ,  x2 ,  224
	addi x12 ,  x2 ,  160
	add x21 ,  x0 ,  x0
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	sw x0 ,  8 ( x9 )
	xori x15 ,  x11 ,  128
	sw x5 ,  20 ( x2 )              //  4-byte Folded Spill
	beq x0, x15, .LBB2_224
	jal x0, .LBB2_283
.LBB2_314:                              //  %__sprint_r.exit1525.thread1703
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x9 ,  x2 ,  224
	add x15 ,  x0 ,  x21
	sw x0 ,  228 ( x2 )
	add x13 ,  x0 ,  x21
	addi x12 ,  x2 ,  160
	addi x27 ,  x0 ,  122
	addi x18 ,  x0 ,  16
	sw x0 ,  8 ( x9 )
	jal x0, .LBB2_319
.LBB2_315:                              //  %__sprint_r.exit1303.thread1655
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x22 ,  x2 ,  160
	addi x9 ,  x2 ,  224
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	add x12 ,  x0 ,  x22
	sw x0 ,  8 ( x9 )
	lbu x15 ,  239 ( x2 )
	bltu x0, x15, .LBB2_191
	jal x0, .LBB2_218
.LBB2_316:                              //  %__sprint_r.exit1451.thread1687
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x9 ,  x2 ,  224
	addi x12 ,  x2 ,  160
	addi x18 ,  x0 ,  16
	sw x0 ,  228 ( x2 )
	sw x0 ,  8 ( x9 )
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x19 ,  x15 ,  x14
	blt x0, x19, .LBB2_284
	jal x0, .LBB2_317
.LBB2_383:                              //  %__sprint_r.exit1636.thread1727
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x15 ,  x2 ,  224
	addi x27 ,  x0 ,  122
	sw x0 ,  228 ( x2 )
	sw x0 ,  8 ( x15 )
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	bge x15, x24, .LBB2_331
	jal x0, .LBB2_332
.LBB2_384:                              //  %if.then
	add x10 ,  x0 ,  x25
	call __sinit
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB2_419
.LBB2_420:                              //  %if.then
	jal x0, .LBB2_3
.LBB2_419:                              //  %if.then
	jal x0, .LBB2_4
.LBB2_385:                              //  %__sprint_r.exit1303.thread1658
	addi x15 ,  x2 ,  224
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	sw x0 ,  8 ( x15 )
	sw x0 ,  228 ( x2 )
	lbu x15 ,  12 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB2_401
	jal x0, .LBB2_402
.LBB2_386:                              //  %done
	lw x15 ,  232 ( x2 )
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB2_399
.LBB2_387:                              //  %if.end.i
	lbu x14 ,  101 ( x8 )
	andi x14 ,  x14 ,  32
	bltu x0, x14, .LBB2_390
.LBB2_388:                              //  %__sprint_r.exit
	addi x9 ,  x2 ,  224
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __sfvwrite_r
	sw x0 ,  8 ( x9 )
	sw x0 ,  228 ( x2 )
	bltu x0, x10, .LBB2_400
	jal x0, .LBB2_399
.LBB2_389:                              //  %__sprint_r.exit1266.thread1650
	addi x15 ,  x2 ,  224
	sw x0 ,  228 ( x2 )
	add x24 ,  x0 ,  x21
	sw x0 ,  8 ( x15 )
	lbu x15 ,  12 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB2_401
	jal x0, .LBB2_402
.LBB2_390:                              //  %for.body.preheader.i
	lw x9 ,  224 ( x2 )
	lw x18 ,  4 ( x9 )
	srli x19 ,  x18 ,  2&31
	bltu x0, x19, .LBB2_393
.LBB2_391:                              //  %for.inc10.i
                                        //  =>This Inner Loop Header: Depth=1
	andi x14 ,  x18 ,  -4
	addi x9 ,  x9 ,  8
	sub x15 ,  x15 ,  x14
	sw x15 ,  232 ( x2 )
	beq x0, x15, .LBB2_408
.LBB2_392:                              //  %for.body.i
                                        //    in Loop: Header=BB2_391 Depth=1
	lw x18 ,  4 ( x9 )
	srli x19 ,  x18 ,  2&31
	beq x0, x19, .LBB2_391
.LBB2_393:
	lw x20 ,  0 ( x9 )
.LBB2_394:                              //  %for.body6.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x20 )
	add x10 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	call _fputwc_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB2_397
.LBB2_395:                              //  %for.cond4.i
                                        //    in Loop: Header=BB2_394 Depth=1
	addi x20 ,  x20 ,  4
	addi x19 ,  x19 ,  -1
	bltu x0, x19, .LBB2_394
.LBB2_396:                              //  %for.inc10.loopexit.i
	lw x15 ,  232 ( x2 )
	jal x0, .LBB2_391
.LBB2_397:                              //  %__sprint_r.exit1229.thread1642
	addi x15 ,  x2 ,  224
.LBB2_398:                              //  %if.end813
	sw x0 ,  8 ( x15 )
.LBB2_399:                              //  %if.end813
	sw x0 ,  228 ( x2 )
.LBB2_400:                              //  %if.end819
	lbu x15 ,  12 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB2_402
.LBB2_401:                              //  %if.end819
	addi x24 ,  x0 ,  -1
.LBB2_402:                              //  %cleanup
	add x10 ,  x0 ,  x24
	lw x8 ,  244 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  248 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  252 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  256 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  260 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  264 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  268 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  272 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  276 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  280 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  284 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  288 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  292 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  296
	.cfi_def_cfa 2, 0
	ret
.LBB2_404:
	lw x24 ,  32 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  12 ( x8 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB2_401
	jal x0, .LBB2_402
.LBB2_408:                              //  %__sprint_r.exit.thread
	addi x15 ,  x2 ,  224
	sw x0 ,  228 ( x2 )
	jal x0, .LBB2_398
.Lfunc_end2:
	.size	_vfiprintf_r, .Lfunc_end2-_vfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	.LBB2_386
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_38
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_40
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_41
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_46
	.long	.LBB2_49
	.long	.LBB2_113
	.long	.LBB2_48
	.long	.LBB2_31
	.long	.LBB2_113
	.long	.LBB2_52
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_77
	.long	.LBB2_88
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_91
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_78
	.long	.LBB2_113
	.long	.LBB2_93
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_95
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_77
	.long	.LBB2_83
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_53
	.long	.LBB2_83
	.long	.LBB2_37
	.long	.LBB2_113
	.long	.LBB2_55
	.long	.LBB2_113
	.long	.LBB2_68
	.long	.LBB2_97
	.long	.LBB2_102
	.long	.LBB2_37
	.long	.LBB2_113
	.long	.LBB2_78
	.long	.LBB2_51
	.long	.LBB2_103
	.long	.LBB2_113
	.long	.LBB2_113
	.long	.LBB2_108
	.long	.LBB2_113
	.long	.LBB2_51
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
	call _vfiprintf_r
	add x18 ,  x0 ,  x10
	blt x18, x0, .LBB3_3
.LBB3_1:                                //  %land.lhs.true
	addi x11 ,  x2 ,  1032
	add x10 ,  x0 ,  x9
	call _fflush_r
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB3_3
.LBB3_2:                                //  %land.lhs.true
	addi x18 ,  x0 ,  -1
.LBB3_3:                                //  %if.end
	lbu x15 ,  1044 ( x2 )
	andi x15 ,  x15 ,  64
	beq x0, x15, .LBB3_5
.LBB3_4:                                //  %if.then15
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
.LBB3_5:                                //  %if.end19
	add x10 ,  x0 ,  x18
	lw x8 ,  1136 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  1140 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1144 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1148 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1152
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	__sbprintf, .Lfunc_end3-__sbprintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	_vfiprintf_r.blanks,@object //  @_vfiprintf_r.blanks
	.section	.rodata,"a",@progbits
_vfiprintf_r.blanks:
	.zero	16,32
	.size	_vfiprintf_r.blanks, 16

	.address_space	0
	.type	_vfiprintf_r.zeroes,@object //  @_vfiprintf_r.zeroes
_vfiprintf_r.zeroes:
	.zero	16,48
	.size	_vfiprintf_r.zeroes, 16

	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"0123456789abcdef"
	.size	.str, 17

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"(null)"
	.size	.str.1, 7

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"0123456789ABCDEF"
	.size	.str.2, 17

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	.str.3, 26


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
