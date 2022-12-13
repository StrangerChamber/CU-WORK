	.text
	.file	"svfiscanf.c"
	.globl	_sungetc_r              //  -- Begin function _sungetc_r
	.type	_sungetc_r,@function
_sungetc_r:                             //  @_sungetc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x12
	addi x18 ,  x0 ,  -1
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB0_13
.LBB0_1:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	andi x19 ,  x9 ,  255
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	lw x15 ,  48 ( x8 )
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %if.then6
	lw x15 ,  52 ( x8 )
	lw x14 ,  4 ( x8 )
	blt x14, x15, .LBB0_4
.LBB0_3:                                //  %land.lhs.true
	add x11 ,  x0 ,  x8
	call __submore
	bltu x0, x10, .LBB0_13
.LBB0_4:                                //  %if.end11
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  0 ( x8 )
	sb x9 ,  -1 ( x15 )
.LBB0_11:                               //  %return
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  1
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.end14
	lw x14 ,  16 ( x8 )
	beq x0, x14, .LBB0_6
.LBB0_8:                                //  %land.lhs.true18
	lw x15 ,  0 ( x8 )
	bgeu x14, x15, .LBB0_7
.LBB0_9:                                //  %land.lhs.true24
	lbu x14 ,  -1 ( x15 )
	andi x13 ,  x9 ,  255
	bne x14, x13, .LBB0_7
.LBB0_10:                               //  %if.then29
	addi x15 ,  x15 ,  -1
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.end14.if.end34_crit_edge
	lw x15 ,  0 ( x8 )
.LBB0_7:                                //  %if.end34
	sw x15 ,  56 ( x8 )
	addi x15 ,  x0 ,  3
	sb x9 ,  66 ( x8 )
	sw x15 ,  52 ( x8 )
	addi x15 ,  x8 ,  64
	sw x15 ,  48 ( x8 )
	addi x15 ,  x8 ,  66
	sw x15 ,  0 ( x8 )
	lw x15 ,  4 ( x8 )
	sw x15 ,  60 ( x8 )
	slti x15 ,  x0 ,  1
.LBB0_12:                               //  %return
	add x18 ,  x0 ,  x19
	sw x15 ,  4 ( x8 )
.LBB0_13:                               //  %return
	add x10 ,  x0 ,  x18
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_sungetc_r, .Lfunc_end0-_sungetc_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssrefill_r            //  -- Begin function __ssrefill_r
	.type	__ssrefill_r,@function
__ssrefill_r:                           //  @__ssrefill_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x11 ,  48 ( x8 )
	beq x0, x11, .LBB1_5
.LBB1_1:                                //  %if.then
	addi x15 ,  x8 ,  64
	beq x11, x15, .LBB1_3
.LBB1_2:                                //  %if.then4
	call _free_r
.LBB1_3:                                //  %if.end
	lw x15 ,  60 ( x8 )
	sw x0 ,  48 ( x8 )
	sw x15 ,  4 ( x8 )
	beq x0, x15, .LBB1_5
.LBB1_4:                                //  %if.then10
	lw x15 ,  56 ( x8 )
	add x10 ,  x0 ,  x0
	sw x15 ,  0 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_5:                                //  %if.end12
	lw x15 ,  16 ( x8 )
	addi x10 ,  x0 ,  -1
	sw x0 ,  4 ( x8 )
	sw x15 ,  0 ( x8 )
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__ssrefill_r, .Lfunc_end1-__ssrefill_r
	.cfi_endproc
                                        //  -- End function
	.globl	_sfread_r               //  -- Begin function _sfread_r
	.type	_sfread_r,@function
_sfread_r:                              //  @_sfread_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x13
	add x20 ,  x0 ,  x12
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x18 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x9 ,  x0 ,  x14
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x21 ,  x0 ,  x10
	beq x0, x21, .LBB2_1
.LBB2_2:                                //  %while.cond.preheader
	lw x11 ,  0 ( x9 )
	lw x23 ,  4 ( x9 )
	bgeu x23, x21, .LBB2_3
.LBB2_4:                                //  %while.body.lr.ph
	addi x24 ,  x9 ,  64
	add x19 ,  x0 ,  x21
.LBB2_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x23
	call memcpy
	lw x15 ,  0 ( x9 )
	sub x19 ,  x19 ,  x23
	sw x0 ,  4 ( x9 )
	lw x11 ,  48 ( x9 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x9 )
	beq x0, x11, .LBB2_12
.LBB2_6:                                //  %if.then.i
                                        //    in Loop: Header=BB2_5 Depth=1
	beq x11, x24, .LBB2_8
.LBB2_7:                                //  %if.then4.i
                                        //    in Loop: Header=BB2_5 Depth=1
	add x10 ,  x0 ,  x22
	call _free_r
.LBB2_8:                                //  %if.end.i
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x15 ,  60 ( x9 )
	sw x0 ,  48 ( x9 )
	sw x15 ,  4 ( x9 )
	beq x0, x15, .LBB2_12
.LBB2_9:                                //  %__ssrefill_r.exit
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x11 ,  56 ( x9 )
	add x18 ,  x23 ,  x18
	add x23 ,  x0 ,  x15
	sw x11 ,  0 ( x9 )
	bltu x15, x19, .LBB2_5
	jal x0, .LBB2_10
.LBB2_1:
	add x8 ,  x0 ,  x0
	jal x0, .LBB2_11
.LBB2_3:
	add x19 ,  x0 ,  x21
.LBB2_10:                               //  %while.end
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call memcpy
	lw x15 ,  4 ( x9 )
	sub x15 ,  x15 ,  x19
	sw x15 ,  4 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x19 ,  x15
	sw x15 ,  0 ( x9 )
	jal x0, .LBB2_11
.LBB2_12:                               //  %if.then6
	lw x15 ,  16 ( x9 )
	sub x10 ,  x21 ,  x19
	add x11 ,  x0 ,  x20
	sw x0 ,  4 ( x9 )
	sw x15 ,  0 ( x9 )
	lh x15 ,  12 ( x9 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x9 )
	call __udivsi3
	add x8 ,  x0 ,  x10
.LBB2_11:                               //  %cleanup
	add x10 ,  x0 ,  x8
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
.Lfunc_end2:
	.size	_sfread_r, .Lfunc_end2-_sfread_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ssvfiscanf_r          //  -- Begin function __ssvfiscanf_r
	.type	__ssvfiscanf_r,@function
__ssvfiscanf_r:                         //  @__ssvfiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -432
	.cfi_adjust_cfa_offset 432
	sw x8 ,  424 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  424
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
	bltu x0, x13, .LBB3_2
.LBB3_1:                                //  %if.then
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x18 )
	lw x15 ,  100 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x18 )
.LBB3_2:                                //  %do.end
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_3
.LBB3_571:                              //  %do.end
	jal x0, .LBB3_542
.LBB3_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x25 ,  x0 ,  x0
	addi x14 ,  x18 ,  66
	addi x9 ,  x18 ,  64
	lui x20 ,  (_ctype_>>12)&1048575
	add x27 ,  x0 ,  x25
	sw x25 ,  -392 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -396 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -380 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -384 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -388 ( x8 )           //  4-byte Folded Spill
.LBB3_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_5 Depth 2
                                        //      Child Loop BB3_21 Depth 2
                                        //      Child Loop BB3_87 Depth 2
                                        //      Child Loop BB3_170 Depth 2
                                        //      Child Loop BB3_403 Depth 2
                                        //      Child Loop BB3_380 Depth 2
                                        //      Child Loop BB3_459 Depth 2
                                        //      Child Loop BB3_218 Depth 2
                                        //      Child Loop BB3_303 Depth 2
                                        //      Child Loop BB3_442 Depth 2
                                        //      Child Loop BB3_351 Depth 2
                                        //      Child Loop BB3_142 Depth 2
                                        //      Child Loop BB3_479 Depth 2
                                        //      Child Loop BB3_206 Depth 2
                                        //      Child Loop BB3_284 Depth 2
                                        //      Child Loop BB3_425 Depth 2
                                        //      Child Loop BB3_320 Depth 2
                                        //      Child Loop BB3_121 Depth 2
                                        //      Child Loop BB3_196 Depth 2
	lui x30 ,  _ctype_&4095
	addi x23 ,  x21 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB3_17
.LBB3_5:                                //  %for.cond15.preheader
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB3_7
.LBB3_6:                                //  %for.cond15.lor.lhs.false_crit_edge
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x14 ,  0 ( x18 )
	jal x0, .LBB3_12
.LBB3_7:                                //  %land.lhs.true18
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_14
.LBB3_8:                                //  %if.then.i
                                        //    in Loop: Header=BB3_5 Depth=2
	beq x11, x9, .LBB3_10
.LBB3_9:                                //  %if.then4.i
                                        //    in Loop: Header=BB3_5 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_10:                               //  %if.end.i
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_14
.LBB3_11:                               //  %__ssrefill_r.exit.thread
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
.LBB3_12:                               //  %lor.lhs.false
                                        //    in Loop: Header=BB3_5 Depth=2
	lbu x13 ,  0 ( x14 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	add x13 ,  x13 ,  x12
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	beq x0, x13, .LBB3_15
.LBB3_13:                               //  %if.end26
                                        //    in Loop: Header=BB3_5 Depth=2
	addi x14 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	addi x27 ,  x27 ,  1
	sw x14 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_6
	jal x0, .LBB3_7
.LBB3_14:                               //  %__ssrefill_r.exit
                                        //    in Loop: Header=BB3_5 Depth=2
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
.LBB3_15:                               //  %for.end
                                        //    in Loop: Header=BB3_5 Depth=2
	lbu x15 ,  0 ( x23 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_16
.LBB3_572:                              //  %for.end
	jal x0, .LBB3_549
.LBB3_16:                               //  %land.lhs.true
                                        //    in Loop: Header=BB3_5 Depth=2
	lui x30 ,  _ctype_&4095
	addi x23 ,  x23 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB3_5
.LBB3_17:                               //  %if.end29
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  37
	bltu x0, x15, .LBB3_44
.LBB3_18:                               //  %again.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x26 ,  x0 ,  x0
	add x22 ,  x0 ,  x26
	lbu x24 ,  0 ( x23 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x24 ,  -37
	bgeu x14, x15, .LBB3_21
	jal x0, .LBB3_549
.LBB3_19:                               //  %sw.bb115
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  15
	add x23 ,  x0 ,  x21
	beq x0, x15, .LBB3_20
.LBB3_573:                              //  %sw.bb115
	jal x0, .LBB3_549
.LBB3_20:                               //  %again
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x24 ,  0 ( x23 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x24 ,  -37
	bgeu x14, x15, .LBB3_21
.LBB3_574:                              //  %again
	jal x0, .LBB3_549
.LBB3_21:                               //  %again
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  JTI3_0&4095
	lui x14 ,  (JTI3_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	addi x21 ,  x23 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB3_22:                               //  %sw.bb132
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  143
	beq x0, x15, .LBB3_23
.LBB3_575:                              //  %sw.bb132
	jal x0, .LBB3_549
.LBB3_23:                               //  %if.end136
                                        //    in Loop: Header=BB3_21 Depth=2
	addi x11 ,  x0 ,  10
	add x10 ,  x0 ,  x22
	call __mulsi3
	add x15 ,  x24 ,  x10
	add x23 ,  x0 ,  x21
	addi x22 ,  x15 ,  -48
	lbu x24 ,  0 ( x23 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x24 ,  -37
	bgeu x14, x15, .LBB3_21
	jal x0, .LBB3_549
.LBB3_24:                               //  %sw.bb84
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  15
	beq x0, x15, .LBB3_25
.LBB3_576:                              //  %sw.bb84
	jal x0, .LBB3_549
.LBB3_25:                               //  %if.end88
                                        //    in Loop: Header=BB3_21 Depth=2
	ori x26 ,  x26 ,  2
	jal x0, .LBB3_26
.LBB3_27:                               //  %sw.bb63
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  159
	or x15 ,  x22 ,  x15
	beq x0, x15, .LBB3_28
.LBB3_577:                              //  %sw.bb63
	jal x0, .LBB3_549
.LBB3_28:                               //  %if.end69
                                        //    in Loop: Header=BB3_21 Depth=2
	ori x26 ,  x26 ,  16
	add x22 ,  x0 ,  x0
	jal x0, .LBB3_26
.LBB3_29:                               //  %sw.bb90
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  15
	beq x0, x15, .LBB3_30
.LBB3_578:                              //  %sw.bb90
	jal x0, .LBB3_549
.LBB3_30:                               //  %if.end94
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x15 ,  1 ( x23 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB3_40
.LBB3_31:                               //  %if.end94
                                        //    in Loop: Header=BB3_21 Depth=2
	addi x15 ,  x0 ,  4
	jal x0, .LBB3_35
.LBB3_32:                               //  %sw.bb71
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  15
	beq x0, x15, .LBB3_33
.LBB3_579:                              //  %sw.bb71
	jal x0, .LBB3_549
.LBB3_33:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	lbu x15 ,  1 ( x23 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB3_41
.LBB3_34:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	slti x15 ,  x0 ,  1
.LBB3_35:                               //  %if.end75
                                        //    in Loop: Header=BB3_21 Depth=2
	add x23 ,  x0 ,  x21
	jal x0, .LBB3_43
.LBB3_36:                               //  %sw.bb120
                                        //    in Loop: Header=BB3_21 Depth=2
	andi x15 ,  x26 ,  143
	beq x0, x15, .LBB3_37
.LBB3_580:                              //  %sw.bb120
	jal x0, .LBB3_549
.LBB3_37:                               //  %do.body125
                                        //    in Loop: Header=BB3_21 Depth=2
	bltu x0, x25, .LBB3_39
.LBB3_38:                               //  %if.then127
                                        //    in Loop: Header=BB3_21 Depth=2
	add x15 ,  x0 ,  x2
	addi x25 ,  x15 ,  -8
	add x2 ,  x0 ,  x25
	sw x0 ,  -4 ( x15 )
	sw x0 ,  -8 ( x15 )
.LBB3_39:                               //  %do.end130
                                        //    in Loop: Header=BB3_21 Depth=2
	ori x26 ,  x26 ,  128
.LBB3_26:                               //  %if.end88
                                        //    in Loop: Header=BB3_21 Depth=2
	add x23 ,  x0 ,  x21
	lbu x24 ,  0 ( x23 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x24 ,  -37
	bgeu x14, x15, .LBB3_21
	jal x0, .LBB3_549
.LBB3_40:                               //    in Loop: Header=BB3_21 Depth=2
	addi x15 ,  x0 ,  8
	jal x0, .LBB3_42
.LBB3_41:                               //    in Loop: Header=BB3_21 Depth=2
	addi x15 ,  x0 ,  2
.LBB3_42:                               //    in Loop: Header=BB3_21 Depth=2
	addi x23 ,  x23 ,  2
.LBB3_43:                               //    in Loop: Header=BB3_21 Depth=2
	or x26 ,  x26 ,  x15
	lbu x24 ,  0 ( x23 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x24 ,  -37
	bgeu x14, x15, .LBB3_21
	jal x0, .LBB3_549
.LBB3_44:                               //    in Loop: Header=BB3_4 Depth=1
	add x21 ,  x0 ,  x23
.LBB3_45:                               //  %literal
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB3_47
.LBB3_46:                               //  %literal.if.end47_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  0 ( x18 )
	lbu x13 ,  -1 ( x21 )
	lbu x12 ,  0 ( x14 )
	beq x12, x13, .LBB3_52
	jal x0, .LBB3_549
.LBB3_47:                               //  %land.lhs.true43
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_48
.LBB3_581:                              //  %land.lhs.true43
	jal x0, .LBB3_556
.LBB3_48:                               //  %if.then.i2234
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x11, x9, .LBB3_50
.LBB3_49:                               //  %if.then4.i2235
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_50:                               //  %if.end.i2239
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB3_51
.LBB3_582:                              //  %if.end.i2239
	jal x0, .LBB3_556
.LBB3_51:                               //  %__ssrefill_r.exit2247.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
	lbu x13 ,  -1 ( x21 )
	lbu x12 ,  0 ( x14 )
	beq x12, x13, .LBB3_52
.LBB3_583:                              //  %__ssrefill_r.exit2247.thread
	jal x0, .LBB3_549
.LBB3_52:                               //  %if.end54
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x14 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	addi x27 ,  x27 ,  1
	sw x14 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
.LBB3_53:                               //  %for.cond.outer2752.backedge
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_54:                               //  %sw.bb145
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  3
	ori x26 ,  x26 ,  512
	jal x0, .LBB3_55
.LBB3_56:                               //  %sw.bb153
                                        //    in Loop: Header=BB3_4 Depth=1
	ori x26 ,  x26 ,  1
.LBB3_57:                               //  %sw.bb155
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	add x23 ,  x0 ,  x0
	ori x26 ,  x26 ,  64
	lw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_83
	jal x0, .LBB3_78
.LBB3_58:                               //  %sw.bb137
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x15 ,  x0 ,  10
	addi x23 ,  x0 ,  3
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	lui x30 ,  _strtol_r&4095
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	jal x0, .LBB3_60
.LBB3_59:                               //  %sw.bb141
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x15 ,  x0 ,  8
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  3
	lui x30 ,  _strtoul_r&4095
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
.LBB3_60:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	srli x30 ,  x30 ,  12&31
	ori x26 ,  x26 ,  1
	or x15 ,  x15 ,  x30
	sw x15 ,  -392 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_83
	jal x0, .LBB3_78
.LBB3_61:                               //  %sw.bb147
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  2
	ori x26 ,  x26 ,  1
	lw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_83
	jal x0, .LBB3_78
.LBB3_62:                               //  %sw.bb150
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x10 ,  x8 ,  -328
	add x11 ,  x0 ,  x21
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	call __sccl
	add x21 ,  x0 ,  x10
	slti x23 ,  x0 ,  1
	ori x26 ,  x26 ,  64
	lw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_83
	jal x0, .LBB3_78
.LBB3_63:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x23 ,  x0 ,  3
	addi x15 ,  x0 ,  10
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_65
.LBB3_64:                               //  %sw.epilog.loopexit3430
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  3
	add x15 ,  x0 ,  x0
.LBB3_65:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	lui x30 ,  _strtol_r&4095
	jal x0, .LBB3_77
.LBB3_66:                               //  %sw.bb159
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB3_53
.LBB3_67:                               //  %if.end163
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  8
	bltu x0, x15, .LBB3_261
.LBB3_68:                               //  %if.else168
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  4
	beq x0, x15, .LBB3_69
.LBB3_584:                              //  %if.else168
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_450
.LBB3_69:                               //  %if.else174
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB3_71
.LBB3_70:                               //  %if.else179
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  2
	beq x0, x15, .LBB3_71
.LBB3_585:                              //  %if.else179
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_539
.LBB3_71:                               //  %if.then177
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x27 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_72:                               //  %sw.epilog.loopexit4008
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x23 ,  x0 ,  3
	addi x15 ,  x0 ,  8
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_76
.LBB3_73:                               //  %sw.bb157
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  3
	ori x26 ,  x26 ,  544
.LBB3_55:                               //  %sw.bb145
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	jal x0, .LBB3_77
.LBB3_74:                               //  %sw.epilog.loopexit4981
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  2
	lw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_83
	jal x0, .LBB3_78
.LBB3_75:                               //  %sw.epilog.loopexit4491
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x0 ,  3
	addi x15 ,  x0 ,  10
.LBB3_76:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	lui x30 ,  _strtoul_r&4095
.LBB3_77:                               //  %sw.epilog
                                        //    in Loop: Header=BB3_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -392 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  4 ( x18 )
	bge x0, x25, .LBB3_78
.LBB3_83:                               //  %if.end198
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  64
	bltu x0, x15, .LBB3_94
	jal x0, .LBB3_84
.LBB3_78:                               //  %land.lhs.true194
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_79
.LBB3_586:                              //  %land.lhs.true194
	jal x0, .LBB3_543
.LBB3_79:                               //  %if.then.i2252
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x11, x9, .LBB3_81
.LBB3_80:                               //  %if.then4.i2253
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_81:                               //  %if.end.i2257
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x25 ,  4 ( x18 )
	bltu x0, x25, .LBB3_82
.LBB3_587:                              //  %if.end.i2257
	jal x0, .LBB3_543
.LBB3_82:                               //  %__ssrefill_r.exit2265.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	andi x15 ,  x26 ,  64
	bltu x0, x15, .LBB3_94
.LBB3_84:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	jal x0, .LBB3_87
.LBB3_85:                               //  %if.then214
                                        //    in Loop: Header=BB3_87 Depth=2
	addi x15 ,  x15 ,  1
.LBB3_86:                               //  %if.end222
                                        //    in Loop: Header=BB3_87 Depth=2
	sw x15 ,  0 ( x18 )
	addi x27 ,  x27 ,  1
.LBB3_87:                               //  %while.cond.preheader
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x20 ,  x30
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB3_94
.LBB3_88:                               //  %while.body
                                        //    in Loop: Header=BB3_87 Depth=2
	addi x25 ,  x25 ,  -1
	sw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_85
.LBB3_89:                               //  %if.else217
                                        //    in Loop: Header=BB3_87 Depth=2
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_90
.LBB3_588:                              //  %if.else217
	jal x0, .LBB3_543
.LBB3_90:                               //  %if.then.i2270
                                        //    in Loop: Header=BB3_87 Depth=2
	beq x11, x9, .LBB3_92
.LBB3_91:                               //  %if.then4.i2271
                                        //    in Loop: Header=BB3_87 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_92:                               //  %if.end.i2275
                                        //    in Loop: Header=BB3_87 Depth=2
	lw x25 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x25 ,  4 ( x18 )
	bltu x0, x25, .LBB3_93
.LBB3_589:                              //  %if.end.i2275
	jal x0, .LBB3_543
.LBB3_93:                               //  %__ssrefill_r.exit2283.thread
                                        //    in Loop: Header=BB3_87 Depth=2
	lw x15 ,  56 ( x18 )
	jal x0, .LBB3_86
.LBB3_94:                               //  %if.end223
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  JTI3_1&4095
	lui x14 ,  (JTI3_1>>12)&1048575
	slli x15 ,  x23 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB3_95:                               //  %sw.bb224
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	bne x22, x24, .LBB3_97
.LBB3_96:                               //    in Loop: Header=BB3_4 Depth=1
	slti x22 ,  x0 ,  1
.LBB3_97:                               //  %sw.bb224
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB3_115
.LBB3_98:                               //  %if.else408
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB3_194
.LBB3_99:                               //  %if.else441
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_233
.LBB3_100:                              //  %if.else502
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x23 ,  x0 ,  x0
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x24 ,  0 ( x15 )
	jal x0, .LBB3_268
.LBB3_101:                              //  %sw.bb531
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	bne x22, x24, .LBB3_103
.LBB3_102:                              //    in Loop: Header=BB3_4 Depth=1
	addi x22 ,  x0 ,  -1
.LBB3_103:                              //  %sw.bb531
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB3_136
.LBB3_104:                              //  %if.else746
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB3_203
.LBB3_105:                              //  %if.else784
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_237
.LBB3_106:                              //  %if.else845
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x23 ,  0 ( x15 )
	sw x24 ,  -404 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_279
.LBB3_107:                              //  %sw.bb930
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	bne x22, x24, .LBB3_109
.LBB3_108:                              //    in Loop: Header=BB3_4 Depth=1
	addi x22 ,  x0 ,  -1
.LBB3_109:                              //  %sw.bb930
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB3_159
.LBB3_110:                              //  %if.else1150
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB3_213
.LBB3_111:                              //  %if.else1182
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_241
.LBB3_112:                              //  %if.else1244
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x24 ,  -404 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_298
.LBB3_113:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x15 ,  x22 ,  -1
	addi x14 ,  x0 ,  38
	bltu x14, x15, .LBB3_161
.LBB3_114:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x22
	jal x0, .LBB3_162
.LBB3_115:                              //  %if.then231
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x13 ,  x26 ,  16
	sw x13 ,  -416 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB3_223
.LBB3_116:                              //  %while.body297.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_121
	jal x0, .LBB3_544
.LBB3_129:                              //    in Loop: Header=BB3_121 Depth=2
	add x24 ,  x0 ,  x25
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB3_133
.LBB3_119:                              //  %if.end379.us
                                        //    in Loop: Header=BB3_121 Depth=2
	beq x0, x22, .LBB3_263
.LBB3_120:                              //  %while.body297.us
                                        //    in Loop: Header=BB3_121 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_121
.LBB3_590:                              //  %while.body297.us
	jal x0, .LBB3_544
.LBB3_121:                              //  %if.end302.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	addi x25 ,  x24 ,  1
	add x15 ,  x24 ,  x15
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_123
.LBB3_122:                              //  %if.end302.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_124
.LBB3_123:                              //  %if.then315.us
                                        //    in Loop: Header=BB3_121 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_124:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_121 Depth=2
	add x24 ,  x0 ,  x0
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_129
.LBB3_125:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_121 Depth=2
	beq x0, x23, .LBB3_130
.LBB3_126:                              //  %if.end317.us
                                        //    in Loop: Header=BB3_121 Depth=2
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB3_127
.LBB3_591:                              //  %if.end317.us
	jal x0, .LBB3_544
.LBB3_127:                              //  %if.then333.us
                                        //    in Loop: Header=BB3_121 Depth=2
	add x27 ,  x27 ,  x25
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_131
.LBB3_128:                              //  %if.then333.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_132
	jal x0, .LBB3_131
.LBB3_130:                              //  %if.then333.thread.us
                                        //    in Loop: Header=BB3_121 Depth=2
	add x27 ,  x27 ,  x25
.LBB3_131:                              //  %if.then341.us
                                        //    in Loop: Header=BB3_121 Depth=2
	addi x22 ,  x22 ,  -1
.LBB3_132:                              //  %if.end367.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_119
.LBB3_133:                              //  %land.lhs.true371.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_134
.LBB3_592:                              //  %land.lhs.true371.us
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_432
.LBB3_134:                              //  %if.then.i2288.us
                                        //    in Loop: Header=BB3_121 Depth=2
	beq x11, x9, .LBB3_117
.LBB3_135:                              //  %if.then4.i2289.us
                                        //    in Loop: Header=BB3_121 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_117:                              //  %if.end.i2293.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB3_118
.LBB3_593:                              //  %if.end.i2293.us
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_432
.LBB3_118:                              //  %__ssrefill_r.exit2301.thread.us
                                        //    in Loop: Header=BB3_121 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	bltu x0, x22, .LBB3_120
.LBB3_263:                              //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x0
	sw x25 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -412 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB3_594
.LBB3_595:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_435
.LBB3_594:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_438
.LBB3_136:                              //  %if.then538
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x13 ,  x26 ,  16
	sw x13 ,  -420 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB3_225
.LBB3_137:                              //  %while.body613.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_142
	jal x0, .LBB3_545
.LBB3_138:                              //  %if.end.i2342
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB3_139
.LBB3_596:                              //  %if.end.i2342
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_452
.LBB3_139:                              //  %__ssrefill_r.exit2350.thread
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
.LBB3_140:                              //  %if.end715
                                        //    in Loop: Header=BB3_142 Depth=2
	bltu x0, x22, .LBB3_141
.LBB3_597:                              //  %if.end715
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_488
.LBB3_141:                              //  %while.body613
                                        //    in Loop: Header=BB3_142 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_142
.LBB3_598:                              //  %while.body613
	jal x0, .LBB3_545
.LBB3_142:                              //  %if.end618
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_144
.LBB3_143:                              //  %if.end618
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x15 ,  -376 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_145
.LBB3_144:                              //  %if.then632
                                        //    in Loop: Header=BB3_142 Depth=2
	addi x10 ,  x8 ,  -376
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_145:                              //  %if.end634
                                        //    in Loop: Header=BB3_142 Depth=2
	addi x11 ,  x8 ,  -72
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -376
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_155
.LBB3_146:                              //  %if.end634
                                        //    in Loop: Header=BB3_142 Depth=2
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	beq x0, x23, .LBB3_150
.LBB3_147:                              //  %if.end634
                                        //    in Loop: Header=BB3_142 Depth=2
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB3_148
.LBB3_599:                              //  %if.end634
	jal x0, .LBB3_545
.LBB3_148:                              //  %if.then647
                                        //    in Loop: Header=BB3_142 Depth=2
	add x23 ,  x0 ,  x25
	lw x25 ,  -72 ( x8 )
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB3_151
.LBB3_149:                              //    in Loop: Header=BB3_142 Depth=2
	addi x26 ,  x0 ,  -1
	jal x0, .LBB3_153
.LBB3_150:                              //  %if.then647.thread
                                        //    in Loop: Header=BB3_142 Depth=2
	add x23 ,  x0 ,  x25
	add x25 ,  x0 ,  x0
	sw x0 ,  -72 ( x8 )
.LBB3_151:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_142 Depth=2
	add x26 ,  x0 ,  x0
	addi x10 ,  x8 ,  -60
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x26
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
	bne x10, x15, .LBB3_153
.LBB3_152:                              //    in Loop: Header=BB3_142 Depth=2
	lbu x26 ,  -61 ( x8 )
.LBB3_153:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_142 Depth=2
	addi x15 ,  x8 ,  -328
	add x25 ,  x0 ,  x23
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB3_154
.LBB3_600:                              //  %if.end.i2322
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_454
.LBB3_154:                              //  %if.end661
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x14 ,  -376 ( x8 )
	xori x15 ,  x23 ,  3
	add x27 ,  x27 ,  x24
	add x24 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x22 ,  x22 ,  x15
.LBB3_155:                              //  %if.end703
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_140
.LBB3_156:                              //  %land.lhs.true707
                                        //    in Loop: Header=BB3_142 Depth=2
	lw x11 ,  48 ( x18 )
	addi x26 ,  x8 ,  -72
	bltu x0, x11, .LBB3_157
.LBB3_601:                              //  %land.lhs.true707
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_452
.LBB3_157:                              //  %if.then.i2337
                                        //    in Loop: Header=BB3_142 Depth=2
	beq x11, x9, .LBB3_138
.LBB3_158:                              //  %if.then4.i2338
                                        //    in Loop: Header=BB3_142 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
	jal x0, .LBB3_138
.LBB3_159:                              //  %if.then937
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x25 ,  x26 ,  16
	beq x0, x25, .LBB3_227
.LBB3_160:                              //    in Loop: Header=BB3_4 Depth=1
	addi x15 ,  x8 ,  -72
	jal x0, .LBB3_229
.LBB3_161:                              //    in Loop: Header=BB3_4 Depth=1
	addi x23 ,  x0 ,  39
.LBB3_162:                              //  %sw.bb1327
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  3456&4095
	lui x13 ,  (3456>>12)&1048575
	addi x5 ,  x8 ,  -368
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	or x26 ,  x13 ,  x26
	beq x0, x23, .LBB3_165
.LBB3_163:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x24 ,  x0 ,  x0
	bltu x14, x15, .LBB3_166
.LBB3_164:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10 ,  x0 ,  x24
	jal x0, .LBB3_167
.LBB3_165:                              //    in Loop: Header=BB3_4 Depth=1
	add x22 ,  x0 ,  x0
	add x24 ,  x0 ,  x22
	add x15 ,  x24 ,  x5
	andi x14 ,  x26 ,  256
	bltu x0, x14, .LBB3_500
.LBB3_602:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_232
.LBB3_500:                              //  %if.then1416
                                        //    in Loop: Header=BB3_4 Depth=1
	bge x0, x24, .LBB3_506
.LBB3_501:                              //  %if.then1420
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x24 ,  -1 ( x15 )
	addi x23 ,  x15 ,  -1
	xori x15 ,  x24 ,  255
	bltu x0, x15, .LBB3_502
.LBB3_603:                              //  %if.then1420
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_514
.LBB3_502:                              //  %if.end.i2505
                                        //    in Loop: Header=BB3_4 Depth=1
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB3_507
.LBB3_503:                              //  %if.then6.i2509
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  52 ( x18 )
	blt x25, x15, .LBB3_505
.LBB3_504:                              //  %land.lhs.true.i2512
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	addi x5 ,  x8 ,  -368
	beq x0, x10, .LBB3_505
.LBB3_604:                              //  %land.lhs.true.i2512
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_514
.LBB3_505:                              //  %if.end11.i2516
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  0 ( x18 )
	sb x24 ,  -1 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  4 ( x18 )
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	beq x23, x5, .LBB3_605
.LBB3_606:                              //  %if.end11.i2516
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_515
.LBB3_605:                              //  %if.end11.i2516
	jal x0, .LBB3_549
.LBB3_166:                              //    in Loop: Header=BB3_4 Depth=1
	addi x10 ,  x22 ,  -39
.LBB3_167:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	add x22 ,  x0 ,  x24
	lbu x14 ,  0 ( x15 )
	addi x12 ,  x0 ,  77
	addi x13 ,  x14 ,  -43
	bltu x12, x13, .LBB3_607
.LBB3_608:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_170
.LBB3_607:                              //  %for.body1338.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_231
.LBB3_194:                              //  %for.cond412.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	add x23 ,  x0 ,  x0
	bge x25, x22, .LBB3_202
.LBB3_195:                              //  %if.then416.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x11 ,  48 ( x18 )
.LBB3_196:                              //  %if.then416
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x25 ,  x15
	add x23 ,  x23 ,  x25
	sw x15 ,  0 ( x18 )
	beq x0, x11, .LBB3_258
.LBB3_197:                              //  %if.then.i2306
                                        //    in Loop: Header=BB3_196 Depth=2
	beq x11, x9, .LBB3_199
.LBB3_198:                              //  %if.then4.i2307
                                        //    in Loop: Header=BB3_196 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_199:                              //  %if.end.i2311
                                        //    in Loop: Header=BB3_196 Depth=2
	lw x14 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x14 ,  4 ( x18 )
	beq x0, x14, .LBB3_258
.LBB3_200:                              //  %__ssrefill_r.exit2319
                                        //    in Loop: Header=BB3_196 Depth=2
	lw x15 ,  56 ( x18 )
	sub x22 ,  x22 ,  x25
	add x11 ,  x0 ,  x0
	add x25 ,  x0 ,  x14
	sw x15 ,  0 ( x18 )
	blt x14, x22, .LBB3_196
.LBB3_201:                              //  %if.else429.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x14
.LBB3_202:                              //  %if.else429
                                        //    in Loop: Header=BB3_4 Depth=1
	add x15 ,  x22 ,  x15
	add x23 ,  x23 ,  x22
	sw x15 ,  0 ( x18 )
	sub x15 ,  x25 ,  x22
	add x27 ,  x27 ,  x23
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  4 ( x18 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_203:                              //  %while.cond750.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x23 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x23
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB3_204
.LBB3_609:                              //  %while.cond750.preheader
	jal x0, .LBB3_567
.LBB3_204:                              //  %while.body755.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x13 ,  x27 ,  1
	addi x22 ,  x22 ,  -1
	jal x0, .LBB3_206
.LBB3_205:                              //  %if.end777
                                        //    in Loop: Header=BB3_206 Depth=2
	lbu x13 ,  0 ( x15 )
	addi x22 ,  x22 ,  -1
	add x25 ,  x0 ,  x14
	add x12 ,  x13 ,  x23
	addi x13 ,  x27 ,  1
	lbu x12 ,  0 ( x12 )
	bltu x0, x12, .LBB3_206
.LBB3_610:                              //  %if.end777
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_538
.LBB3_206:                              //  %while.body755
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x15 ,  x15 ,  1
	addi x14 ,  x25 ,  -1
	add x27 ,  x0 ,  x13
	sw x15 ,  0 ( x18 )
	sw x14 ,  4 ( x18 )
	bltu x0, x22, .LBB3_207
.LBB3_611:                              //  %while.body755
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_538
.LBB3_207:                              //  %if.end765
                                        //    in Loop: Header=BB3_206 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x25, .LBB3_205
.LBB3_208:                              //  %land.lhs.true769
                                        //    in Loop: Header=BB3_206 Depth=2
	lw x11 ,  48 ( x18 )
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	beq x0, x11, .LBB3_262
.LBB3_209:                              //  %if.then.i2355
                                        //    in Loop: Header=BB3_206 Depth=2
	beq x11, x9, .LBB3_211
.LBB3_210:                              //  %if.then4.i2356
                                        //    in Loop: Header=BB3_206 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_211:                              //  %if.end.i2360
                                        //    in Loop: Header=BB3_206 Depth=2
	lw x14 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x14 ,  4 ( x18 )
	beq x0, x14, .LBB3_262
.LBB3_212:                              //  %__ssrefill_r.exit2368.thread
                                        //    in Loop: Header=BB3_206 Depth=2
	lw x15 ,  56 ( x18 )
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  0 ( x18 )
	jal x0, .LBB3_205
.LBB3_213:                              //  %while.cond1154.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x20 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB3_245
.LBB3_214:                              //  %while.body1161.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	slti x13 ,  x0 ,  1
	jal x0, .LBB3_218
.LBB3_215:                              //  %if.end.i2455
                                        //    in Loop: Header=BB3_218 Depth=2
	lw x14 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x14 ,  4 ( x18 )
	bltu x0, x14, .LBB3_216
.LBB3_612:                              //  %if.end.i2455
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_449
.LBB3_216:                              //  %__ssrefill_r.exit2463.thread
                                        //    in Loop: Header=BB3_218 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
.LBB3_217:                              //  %if.end1179
                                        //    in Loop: Header=BB3_218 Depth=2
	lbu x13 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	add x25 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	add x12 ,  x13 ,  x12
	addi x13 ,  x23 ,  1
	lbu x12 ,  1 ( x12 )
	andi x12 ,  x12 ,  8
	bltu x0, x12, .LBB3_260
.LBB3_218:                              //  %while.body1161
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x15 ,  x15 ,  1
	addi x14 ,  x25 ,  -1
	add x23 ,  x0 ,  x13
	sw x15 ,  0 ( x18 )
	sw x14 ,  4 ( x18 )
	beq x22, x23, .LBB3_260
.LBB3_219:                              //  %if.end1171
                                        //    in Loop: Header=BB3_218 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x25, .LBB3_217
.LBB3_220:                              //  %land.lhs.true1175
                                        //    in Loop: Header=BB3_218 Depth=2
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_221
.LBB3_613:                              //  %land.lhs.true1175
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_449
.LBB3_221:                              //  %if.then.i2450
                                        //    in Loop: Header=BB3_218 Depth=2
	beq x11, x9, .LBB3_215
.LBB3_222:                              //  %if.then4.i2451
                                        //    in Loop: Header=BB3_218 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
	jal x0, .LBB3_215
.LBB3_223:                              //  %if.else235
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_246
.LBB3_224:                              //  %if.else290
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	add x14 ,  x0 ,  x0
	lw x25 ,  0 ( x15 )
	add x24 ,  x0 ,  x14
	sw x14 ,  -412 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -404 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_320
	jal x0, .LBB3_544
.LBB3_225:                              //  %if.else546
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_250
.LBB3_226:                              //  %if.else606
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	add x14 ,  x0 ,  x0
	lw x26 ,  0 ( x15 )
	sw x14 ,  -412 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -416 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -404 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_351
	jal x0, .LBB3_545
.LBB3_227:                              //  %if.else945
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  128
	bltu x0, x15, .LBB3_254
.LBB3_228:                              //  %if.else1005
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB3_229:                              //  %if.end1008
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x24 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x24 ,  -412 ( x8 )           //  4-byte Folded Spill
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	bltu x0, x22, .LBB3_376
	jal x0, .LBB3_469
.LBB3_506:                              //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x15
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	beq x23, x5, .LBB3_614
.LBB3_615:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_515
.LBB3_614:
	jal x0, .LBB3_549
.LBB3_233:                              //  %if.then444
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x23 ,  0 ( x15 )
	bltu x0, x23, .LBB3_234
.LBB3_616:                              //  %if.then444
	jal x0, .LBB3_549
.LBB3_234:                              //  %if.end448
                                        //    in Loop: Header=BB3_4 Depth=1
	add x10 ,  x0 ,  x22
	call malloc
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB3_235
.LBB3_617:                              //  %if.end448
	jal x0, .LBB3_557
.LBB3_235:                              //  %if.end453
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x24 ,  0 ( x23 )
	lhu x14 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
	bgeu x15, x14, .LBB3_264
.LBB3_236:                              //  %if.end453.if.end493_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	jal x0, .LBB3_267
.LBB3_237:                              //  %if.then788
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB3_238
.LBB3_618:                              //  %if.then788
	jal x0, .LBB3_549
.LBB3_238:                              //  %if.end792
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x23 ,  x0 ,  x10
	bltu x0, x23, .LBB3_239
.LBB3_619:                              //  %if.end792
	jal x0, .LBB3_557
.LBB3_239:                              //  %if.end796
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  0 ( x15 )
	lhu x14 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
	bgeu x15, x14, .LBB3_275
.LBB3_240:                              //  %if.end796.if.end836_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	jal x0, .LBB3_278
.LBB3_241:                              //  %if.then1187
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB3_242
.LBB3_620:                              //  %if.then1187
	jal x0, .LBB3_567
.LBB3_242:                              //  %if.end1191
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB3_243
.LBB3_621:                              //  %if.end1191
	jal x0, .LBB3_560
.LBB3_243:                              //  %if.end1195
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	lw x23 ,  -400 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x23 )
	lhu x15 ,  6 ( x23 )
	bgeu x15, x14, .LBB3_294
.LBB3_244:                              //  %if.end1195.if.end1235_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x23 )
	jal x0, .LBB3_297
.LBB3_245:                              //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x0
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x27 ,  x23
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_246:                              //  %if.then238
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB3_247
.LBB3_622:                              //  %if.then238
	jal x0, .LBB3_568
.LBB3_247:                              //  %if.end242
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x25 ,  x0 ,  x10
	addi x23 ,  x0 ,  -1
	bltu x0, x25, .LBB3_248
.LBB3_623:                              //  %if.end242
	jal x0, .LBB3_562
.LBB3_248:                              //  %if.end246
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	lw x13 ,  -400 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x13 )
	sw x13 ,  -400 ( x8 )           //  4-byte Folded Spill
	lhu x15 ,  6 ( x13 )
	bgeu x15, x14, .LBB3_314
.LBB3_249:                              //  %if.end246.if.end283_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x13 )
	jal x0, .LBB3_317
.LBB3_250:                              //  %if.then549
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB3_251
.LBB3_624:                              //  %if.then549
	jal x0, .LBB3_569
.LBB3_251:                              //  %if.end553
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x26 ,  x0 ,  x10
	addi x23 ,  x0 ,  -1
	bltu x0, x26, .LBB3_252
.LBB3_625:                              //  %if.end553
	jal x0, .LBB3_564
.LBB3_252:                              //  %if.end557
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x26 ,  0 ( x15 )
	lhu x14 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
	bgeu x15, x14, .LBB3_343
.LBB3_253:                              //  %if.end557.if.end597_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	jal x0, .LBB3_346
.LBB3_254:                              //  %if.then948
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x26 ,  x0 ,  x25
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x24 ,  0 ( x15 )
	bltu x0, x24, .LBB3_255
.LBB3_626:                              //  %if.then948
	jal x0, .LBB3_569
.LBB3_255:                              //  %if.end952
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	addi x23 ,  x0 ,  -1
	bltu x0, x10, .LBB3_256
.LBB3_627:                              //  %if.end952
	jal x0, .LBB3_564
.LBB3_256:                              //  %if.end956
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10 ,  0 ( x24 )
	sw x10 ,  -408 ( x8 )           //  4-byte Folded Spill
	lhu x14 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
	bgeu x15, x14, .LBB3_372
.LBB3_257:                              //  %if.end956.if.end996_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	jal x0, .LBB3_375
.LBB3_258:                              //  %if.then423
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	bltu x0, x23, .LBB3_259
.LBB3_628:                              //  %if.then423
	jal x0, .LBB3_544
.LBB3_259:                              //  %cleanup438.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27 ,  x27 ,  x23
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_260:                              //  %while.end1180
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27 ,  x27 ,  x23
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_261:                              //  %if.then166
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x27 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_262:                              //  %__ssrefill_r.exit2368
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB3_4
	jal x0, .LBB3_549
.LBB3_507:                              //  %if.end14.i2519
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  16 ( x18 )
	bltu x0, x14, .LBB3_508
.LBB3_629:                              //  %if.end14.i2519
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_511
.LBB3_508:                              //  %land.lhs.true18.i2525
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
	bltu x14, x15, .LBB3_509
.LBB3_630:                              //  %land.lhs.true18.i2525
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_512
.LBB3_509:                              //  %land.lhs.true24.i2528
                                        //    in Loop: Header=BB3_4 Depth=1
	lbu x14 ,  -1 ( x15 )
	beq x14, x24, .LBB3_510
.LBB3_631:                              //  %land.lhs.true24.i2528
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_512
.LBB3_510:                              //  %if.then29.i2531
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x15 ,  x15 ,  -1
	addi x14 ,  x25 ,  1
	sw x14 ,  4 ( x18 )
	jal x0, .LBB3_513
.LBB3_264:                              //  %if.then461
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB3_265
.LBB3_632:                              //  %if.then461
	jal x0, .LBB3_551
.LBB3_265:                              //  %if.end481
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB3_266
.LBB3_633:                              //  %if.end481
	jal x0, .LBB3_551
.LBB3_266:                              //  %cleanup490
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x15 ,  4 ( x25 )
	sw x10 ,  0 ( x25 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
.LBB3_267:                              //  %if.end493
                                        //    in Loop: Header=BB3_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x23 ,  0 ( x14 )
	sh x15 ,  6 ( x25 )
.LBB3_268:                              //  %if.end504
                                        //    in Loop: Header=BB3_4 Depth=1
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x22
	add x14 ,  x0 ,  x18
	call _sfread_r
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB3_269
.LBB3_634:                              //  %if.end504
	jal x0, .LBB3_545
.LBB3_269:                              //  %if.end509
                                        //    in Loop: Header=BB3_4 Depth=1
	beq x0, x23, .LBB3_273
.LBB3_270:                              //  %if.end509
                                        //    in Loop: Header=BB3_4 Depth=1
	bgeu x24, x22, .LBB3_273
.LBB3_271:                              //  %if.then515
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x23 )
	add x11 ,  x0 ,  x24
	call realloc
	beq x0, x10, .LBB3_273
.LBB3_272:                              //  %if.then520
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10 ,  0 ( x23 )
.LBB3_273:                              //  %cleanup525.thread2596
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27 ,  x27 ,  x24
.LBB3_274:                              //  %if.end737
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -380 ( x8 )           //  4-byte Folded Spill
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_635
.LBB3_636:                              //  %if.end737
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_635:                              //  %if.end737
	jal x0, .LBB3_549
.LBB3_275:                              //  %if.then804
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB3_276
.LBB3_637:                              //  %if.then804
	jal x0, .LBB3_551
.LBB3_276:                              //  %if.end824
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB3_277
.LBB3_638:                              //  %if.end824
	jal x0, .LBB3_551
.LBB3_277:                              //  %cleanup833
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x15 ,  4 ( x25 )
	sw x10 ,  0 ( x25 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
.LBB3_278:                              //  %if.end836
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -404 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x25 )
.LBB3_279:                              //  %if.end847
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  0 ( x18 )
	addi x12 ,  x8 ,  -328
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	lbu x15 ,  0 ( x14 )
	add x15 ,  x15 ,  x12
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB3_566
.LBB3_280:                              //  %while.body853.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  4 ( x18 )
	lw x13 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x13, .LBB3_422
.LBB3_281:                              //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x23
	jal x0, .LBB3_284
.LBB3_282:                              //  %if.end887.if.end899_crit_edge
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x13 ,  0 ( x14 )
	add x13 ,  x13 ,  x12
	lbu x13 ,  0 ( x13 )
	bltu x0, x13, .LBB3_284
.LBB3_639:                              //  %if.end887.if.end899_crit_edge
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_497
.LBB3_284:                              //  %while.body853
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	sw x13 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	lb x15 ,  0 ( x14 )
	sb x15 ,  0 ( x25 )
	addi x25 ,  x25 ,  1
	sub x26 ,  x25 ,  x23
	bltu x26, x24, .LBB3_287
.LBB3_285:                              //  %if.then868
                                        //    in Loop: Header=BB3_284 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call realloc
	add x23 ,  x0 ,  x10
	bltu x0, x23, .LBB3_286
.LBB3_640:                              //  %if.then868
	jal x0, .LBB3_560
.LBB3_286:                              //  %if.end874
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	add x25 ,  x26 ,  x23
	addi x12 ,  x8 ,  -328
	sw x23 ,  0 ( x15 )
.LBB3_287:                              //  %cleanup.cont882
                                        //    in Loop: Header=BB3_284 Depth=2
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB3_288
.LBB3_641:                              //  %cleanup.cont882
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_497
.LBB3_288:                              //  %if.end887
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_282
.LBB3_289:                              //  %land.lhs.true891
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_290
.LBB3_642:                              //  %land.lhs.true891
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_496
.LBB3_290:                              //  %if.then.i2373
                                        //    in Loop: Header=BB3_284 Depth=2
	beq x11, x9, .LBB3_292
.LBB3_291:                              //  %if.then4.i2374
                                        //    in Loop: Header=BB3_284 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
	addi x12 ,  x8 ,  -328
.LBB3_292:                              //  %if.end.i2378
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB3_293
.LBB3_643:                              //  %if.end.i2378
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_496
.LBB3_293:                              //  %__ssrefill_r.exit2386.thread
                                        //    in Loop: Header=BB3_284 Depth=2
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
	lbu x13 ,  0 ( x14 )
	add x13 ,  x13 ,  x12
	lbu x13 ,  0 ( x13 )
	bltu x0, x13, .LBB3_284
	jal x0, .LBB3_497
.LBB3_566:                              //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x23
	sub x22 ,  x25 ,  x23
	beq x0, x22, .LBB3_644
.LBB3_645:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_498
.LBB3_644:
	jal x0, .LBB3_567
.LBB3_294:                              //  %if.then1203
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB3_295
.LBB3_646:                              //  %if.then1203
	jal x0, .LBB3_570
.LBB3_295:                              //  %if.end1223
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x23 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB3_296
.LBB3_647:                              //  %if.end1223
	jal x0, .LBB3_570
.LBB3_296:                              //  %cleanup1232
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x15 ,  4 ( x23 )
	sw x10 ,  0 ( x23 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x23 )
	lhu x15 ,  6 ( x23 )
.LBB3_297:                              //  %if.end1235
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -404 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x23 ,  -400 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x23 )
.LBB3_298:                              //  %if.end1246
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x20 ,  x30
	lbu x15 ,  0 ( x14 )
	add x15 ,  x15 ,  x13
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB3_313
.LBB3_299:                              //  %while.body1255.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  4 ( x18 )
	lw x13 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x13, .LBB3_439
.LBB3_300:                              //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x25
	jal x0, .LBB3_303
.LBB3_301:                              //  %if.end1289.if.end1297_crit_edge
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x14 ,  0 ( x18 )
.LBB3_302:                              //  %if.end1297
                                        //    in Loop: Header=BB3_303 Depth=2
	lbu x13 ,  0 ( x14 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	add x13 ,  x13 ,  x12
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	beq x0, x13, .LBB3_303
.LBB3_648:                              //  %if.end1297
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_532
.LBB3_303:                              //  %while.body1255
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	sw x13 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	lb x15 ,  0 ( x14 )
	sb x15 ,  0 ( x23 )
	addi x23 ,  x23 ,  1
	sub x26 ,  x23 ,  x25
	bltu x26, x24, .LBB3_306
.LBB3_304:                              //  %if.then1270
                                        //    in Loop: Header=BB3_303 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call realloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB3_305
.LBB3_649:                              //  %if.then1270
	jal x0, .LBB3_560
.LBB3_305:                              //  %if.end1276
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	add x23 ,  x26 ,  x25
	sw x25 ,  0 ( x15 )
.LBB3_306:                              //  %cleanup.cont1284
                                        //    in Loop: Header=BB3_303 Depth=2
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB3_307
.LBB3_650:                              //  %cleanup.cont1284
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_532
.LBB3_307:                              //  %if.end1289
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_301
.LBB3_308:                              //  %land.lhs.true1293
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x11 ,  48 ( x18 )
	bltu x0, x11, .LBB3_309
.LBB3_651:                              //  %land.lhs.true1293
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_531
.LBB3_309:                              //  %if.then.i2468
                                        //    in Loop: Header=BB3_303 Depth=2
	beq x11, x9, .LBB3_311
.LBB3_310:                              //  %if.then4.i2469
                                        //    in Loop: Header=BB3_303 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_311:                              //  %if.end.i2473
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB3_312
.LBB3_652:                              //  %if.end.i2473
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_531
.LBB3_312:                              //  %__ssrefill_r.exit2481.thread
                                        //    in Loop: Header=BB3_303 Depth=2
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
	jal x0, .LBB3_302
.LBB3_313:                              //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x25
	sub x22 ,  x23 ,  x25
	sb x0 ,  0 ( x23 )
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB3_653
.LBB3_654:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_533
.LBB3_653:                              //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_536
.LBB3_314:                              //  %if.then254
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB3_315
.LBB3_655:                              //  %if.then254
	jal x0, .LBB3_562
.LBB3_315:                              //  %if.end274
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  -400 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x15 ,  2&31
	lw x10 ,  0 ( x14 )
	call realloc
	bltu x0, x10, .LBB3_316
.LBB3_656:                              //  %if.end274
	jal x0, .LBB3_562
.LBB3_316:                              //  %cleanup
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -400 ( x8 )           //  4-byte Folded Reload
	lh x15 ,  4 ( x13 )
	sw x10 ,  0 ( x13 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x13 )
	lhu x15 ,  6 ( x13 )
.LBB3_317:                              //  %if.end283
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x12 ,  -408 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x25 ,  -412 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	sw x12 ,  0 ( x14 )
	sh x15 ,  6 ( x13 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_320
	jal x0, .LBB3_544
.LBB3_318:                              //  %if.end379
                                        //    in Loop: Header=BB3_320 Depth=2
	beq x0, x22, .LBB3_434
.LBB3_319:                              //  %while.body297
                                        //    in Loop: Header=BB3_320 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_320
.LBB3_657:                              //  %while.body297
	jal x0, .LBB3_544
.LBB3_320:                              //  %if.end302
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_322
.LBB3_321:                              //  %if.end302
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_323
.LBB3_322:                              //  %if.then315
                                        //    in Loop: Header=BB3_320 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_323:                              //  %if.end317
                                        //    in Loop: Header=BB3_320 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_337
.LBB3_324:                              //  %if.end317
                                        //    in Loop: Header=BB3_320 Depth=2
	beq x0, x23, .LBB3_328
.LBB3_325:                              //  %if.end317
                                        //    in Loop: Header=BB3_320 Depth=2
	xori x15 ,  x23 ,  -1
	bltu x0, x15, .LBB3_326
.LBB3_658:                              //  %if.end317
	jal x0, .LBB3_544
.LBB3_326:                              //  %if.then333
                                        //    in Loop: Header=BB3_320 Depth=2
	add x27 ,  x27 ,  x24
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_329
.LBB3_327:                              //  %if.then333
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_330
	jal x0, .LBB3_329
.LBB3_328:                              //  %if.then329
                                        //    in Loop: Header=BB3_320 Depth=2
	add x27 ,  x27 ,  x24
	sw x0 ,  0 ( x25 )
.LBB3_329:                              //  %if.then341
                                        //    in Loop: Header=BB3_320 Depth=2
	addi x22 ,  x22 ,  -1
.LBB3_330:                              //  %if.then346
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB3_335
.LBB3_331:                              //  %if.then346
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x10 ,  -412 ( x8 )           //  4-byte Folded Reload
	add x24 ,  x0 ,  x23
	lw x26 ,  -404 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x10
	srai x23 ,  x15 ,  2&31
	bltu x23, x26, .LBB3_334
.LBB3_332:                              //  %if.then351
                                        //    in Loop: Header=BB3_320 Depth=2
	slli x11 ,  x26 ,  3&31
	call realloc
	bltu x0, x10, .LBB3_333
.LBB3_659:                              //  %if.then351
	jal x0, .LBB3_561
.LBB3_333:                              //  %if.end356
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	slli x26 ,  x26 ,  1&31
	sw x10 ,  -412 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	slli x15 ,  x23 ,  2&31
	add x25 ,  x15 ,  x10
.LBB3_334:                              //  %cleanup.cont364
                                        //    in Loop: Header=BB3_320 Depth=2
	add x23 ,  x0 ,  x24
	jal x0, .LBB3_336
.LBB3_335:                              //    in Loop: Header=BB3_320 Depth=2
	lw x26 ,  -404 ( x8 )           //  4-byte Folded Reload
.LBB3_336:                              //  %cleanup.cont364
                                        //    in Loop: Header=BB3_320 Depth=2
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
	sw x26 ,  -404 ( x8 )           //  4-byte Folded Spill
.LBB3_337:                              //  %if.end367
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_318
.LBB3_338:                              //  %land.lhs.true371
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_433
.LBB3_339:                              //  %if.then.i2288
                                        //    in Loop: Header=BB3_320 Depth=2
	beq x11, x9, .LBB3_341
.LBB3_340:                              //  %if.then4.i2289
                                        //    in Loop: Header=BB3_320 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_341:                              //  %if.end.i2293
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_433
.LBB3_342:                              //  %__ssrefill_r.exit2301.thread
                                        //    in Loop: Header=BB3_320 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	jal x0, .LBB3_318
.LBB3_343:                              //  %if.then565
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x14, x15, .LBB3_344
.LBB3_660:                              //  %if.then565
	jal x0, .LBB3_564
.LBB3_344:                              //  %if.end585
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	slli x11 ,  x15 ,  2&31
	call realloc
	bltu x0, x10, .LBB3_345
.LBB3_661:                              //  %if.end585
	jal x0, .LBB3_564
.LBB3_345:                              //  %cleanup594
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x15 ,  4 ( x25 )
	sw x10 ,  0 ( x25 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
.LBB3_346:                              //  %if.end597
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -404 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x26 ,  -416 ( x8 )           //  4-byte Folded Spill
	add x14 ,  x14 ,  x10
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x25 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB3_351
	jal x0, .LBB3_545
.LBB3_347:                              //    in Loop: Header=BB3_351 Depth=2
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x26 ,  x0 ,  x15
.LBB3_348:                              //  %if.end703.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB3_367
.LBB3_349:                              //  %if.end715.us
                                        //    in Loop: Header=BB3_351 Depth=2
	beq x0, x22, .LBB3_489
.LBB3_350:                              //  %while.body613.us
                                        //    in Loop: Header=BB3_351 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB3_545
.LBB3_351:                              //  %if.end618.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_353
.LBB3_352:                              //  %if.end618.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x15 ,  -376 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_354
.LBB3_353:                              //  %if.then632.us
                                        //    in Loop: Header=BB3_351 Depth=2
	addi x10 ,  x8 ,  -376
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_354:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_351 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -376
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x26
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_348
.LBB3_355:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_351 Depth=2
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -408 ( x8 )           //  4-byte Folded Spill
	beq x0, x23, .LBB3_359
.LBB3_356:                              //  %if.end634.us
                                        //    in Loop: Header=BB3_351 Depth=2
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB3_545
.LBB3_357:                              //  %if.then647.us
                                        //    in Loop: Header=BB3_351 Depth=2
	add x23 ,  x0 ,  x25
	lw x25 ,  0 ( x26 )
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB3_360
.LBB3_358:                              //    in Loop: Header=BB3_351 Depth=2
	addi x26 ,  x0 ,  -1
	jal x0, .LBB3_362
.LBB3_359:                              //  %if.then647.thread.us
                                        //    in Loop: Header=BB3_351 Depth=2
	add x23 ,  x0 ,  x25
	add x25 ,  x0 ,  x0
	sw x0 ,  0 ( x26 )
.LBB3_360:                              //  %if.end.i2322.us
                                        //    in Loop: Header=BB3_351 Depth=2
	add x26 ,  x0 ,  x0
	addi x10 ,  x8 ,  -60
	addi x12 ,  x0 ,  8
	add x11 ,  x0 ,  x26
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
	bne x10, x15, .LBB3_362
.LBB3_361:                              //    in Loop: Header=BB3_351 Depth=2
	lbu x26 ,  -61 ( x8 )
.LBB3_362:                              //  %if.end.i2322.us
                                        //    in Loop: Header=BB3_351 Depth=2
	addi x15 ,  x8 ,  -328
	add x25 ,  x0 ,  x23
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB3_474
.LBB3_363:                              //  %if.end661.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x14 ,  -376 ( x8 )
	xori x15 ,  x23 ,  3
	add x27 ,  x27 ,  x24
	add x24 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	lw x26 ,  -408 ( x8 )           //  4-byte Folded Reload
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	addi x26 ,  x26 ,  4
	or x15 ,  x15 ,  x14
	sub x22 ,  x22 ,  x15
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB3_348
.LBB3_364:                              //  %if.end661.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x10 ,  -416 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x26 ,  x10
	srai x23 ,  x15 ,  2&31
	add x15 ,  x0 ,  x26
	lw x26 ,  -412 ( x8 )           //  4-byte Folded Reload
	bltu x23, x26, .LBB3_347
.LBB3_365:                              //  %if.then687.us
                                        //    in Loop: Header=BB3_351 Depth=2
	slli x11 ,  x26 ,  3&31
	call realloc
	beq x0, x10, .LBB3_563
.LBB3_366:                              //  %if.end693.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	slli x26 ,  x26 ,  1&31
	sw x10 ,  -416 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -412 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	slli x15 ,  x23 ,  2&31
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x15 ,  x10
	add x26 ,  x0 ,  x15
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_349
.LBB3_367:                              //  %land.lhs.true707.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_453
.LBB3_368:                              //  %if.then.i2337.us
                                        //    in Loop: Header=BB3_351 Depth=2
	beq x11, x9, .LBB3_370
.LBB3_369:                              //  %if.then4.i2338.us
                                        //    in Loop: Header=BB3_351 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_370:                              //  %if.end.i2342.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_453
.LBB3_371:                              //  %__ssrefill_r.exit2350.thread.us
                                        //    in Loop: Header=BB3_351 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	bltu x0, x22, .LBB3_350
	jal x0, .LBB3_489
.LBB3_372:                              //  %if.then964
                                        //    in Loop: Header=BB3_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB3_564
.LBB3_373:                              //  %if.end984
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x25 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB3_564
.LBB3_374:                              //  %cleanup993
                                        //    in Loop: Header=BB3_4 Depth=1
	lh x15 ,  4 ( x25 )
	sw x10 ,  0 ( x25 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x25 )
	lhu x15 ,  6 ( x25 )
.LBB3_375:                              //  %if.end996
                                        //    in Loop: Header=BB3_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x14 ,  x10
	sw x24 ,  0 ( x14 )
	sh x15 ,  6 ( x25 )
	addi x15 ,  x0 ,  32
	add x25 ,  x0 ,  x26
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	beq x0, x22, .LBB3_469
.LBB3_376:                              //  %if.end1008
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB3_469
.LBB3_377:                              //  %while.body1018.lr.ph
                                        //    in Loop: Header=BB3_4 Depth=1
	add x26 ,  x0 ,  x0
	bltu x0, x25, .LBB3_403
.LBB3_378:                              //  %while.body1018.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x25 ,  -416 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x26, x10, .LBB3_380
	jal x0, .LBB3_544
.LBB3_415:                              //  %if.end1107.if.end1119_crit_edge
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	beq x0, x22, .LBB3_469
.LBB3_421:                              //  %if.end1119
                                        //    in Loop: Header=BB3_403 Depth=2
	lbu x15 ,  0 ( x15 )
	add x15 ,  x15 ,  x14
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB3_469
.LBB3_403:                              //  %while.body1018
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB3_544
.LBB3_404:                              //  %if.end1023
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	add x15 ,  x26 ,  x15
	addi x26 ,  x26 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_406
.LBB3_405:                              //  %if.end1023
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_407
.LBB3_406:                              //  %if.then1037
                                        //    in Loop: Header=BB3_403 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_407:                              //  %if.end1039
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x11 ,  -404 ( x8 )           //  4-byte Folded Reload
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_414
.LBB3_408:                              //  %if.end1039
                                        //    in Loop: Header=BB3_403 Depth=2
	beq x0, x23, .LBB3_412
.LBB3_409:                              //  %if.end1039
                                        //    in Loop: Header=BB3_403 Depth=2
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB3_544
.LBB3_410:                              //  %if.end1039.if.then1052_crit_edge
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call iswspace
	beq x0, x10, .LBB3_413
	jal x0, .LBB3_411
.LBB3_412:                              //  %if.then1048
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x15 )
	call iswspace
	bltu x0, x10, .LBB3_411
.LBB3_413:                              //  %if.end1065
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x23 ,  3
	add x27 ,  x27 ,  x26
	add x26 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x22 ,  x22 ,  x15
.LBB3_414:                              //  %if.end1107
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_415
.LBB3_416:                              //  %land.lhs.true1111
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_468
.LBB3_417:                              //  %if.then.i2432
                                        //    in Loop: Header=BB3_403 Depth=2
	beq x11, x9, .LBB3_419
.LBB3_418:                              //  %if.then4.i2433
                                        //    in Loop: Header=BB3_403 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_419:                              //  %if.end.i2437
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_468
.LBB3_420:                              //  %__ssrefill_r.exit2445.thread
                                        //    in Loop: Header=BB3_403 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	bltu x0, x22, .LBB3_421
	jal x0, .LBB3_469
.LBB3_396:                              //    in Loop: Header=BB3_380 Depth=2
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	bge x0, x15, .LBB3_397
.LBB3_395:                              //  %if.end1107.us.if.end1119.us_crit_edge
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	beq x0, x22, .LBB3_469
.LBB3_402:                              //  %if.end1119.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lbu x15 ,  0 ( x15 )
	add x15 ,  x15 ,  x14
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB3_469
.LBB3_379:                              //  %while.body1018.us
                                        //    in Loop: Header=BB3_380 Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB3_544
.LBB3_380:                              //  %if.end1023.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  0 ( x18 )
	addi x15 ,  x8 ,  -368
	add x15 ,  x26 ,  x15
	addi x26 ,  x26 ,  1
	lb x13 ,  0 ( x14 )
	sb x13 ,  0 ( x15 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
	addi x15 ,  x14 ,  1
	sw x15 ,  0 ( x18 )
	xori x15 ,  x23 ,  3
	bltu x0, x15, .LBB3_382
.LBB3_381:                              //  %if.end1023.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB3_383
.LBB3_382:                              //  %if.then1037.us
                                        //    in Loop: Header=BB3_380 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB3_383:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x11 ,  -404 ( x8 )           //  4-byte Folded Reload
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	add x23 ,  x0 ,  x10
	xori x15 ,  x23 ,  -2
	beq x0, x15, .LBB3_394
.LBB3_384:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_380 Depth=2
	beq x0, x23, .LBB3_387
.LBB3_385:                              //  %if.end1039.us
                                        //    in Loop: Header=BB3_380 Depth=2
	xori x15 ,  x23 ,  -1
	beq x0, x15, .LBB3_544
.LBB3_386:                              //  %if.end1039.us.if.then1052.us_crit_edge
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call iswspace
	beq x0, x10, .LBB3_388
	jal x0, .LBB3_411
.LBB3_387:                              //  %if.then1048.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x15 )
	call iswspace
	bltu x0, x10, .LBB3_411
.LBB3_388:                              //  %if.end1065.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x23 ,  3
	add x27 ,  x27 ,  x26
	add x26 ,  x0 ,  x0
	sltu x15 ,  x0 ,  x15
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x22 ,  x22 ,  x15
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  4
	beq x0, x24, .LBB3_396
.LBB3_389:                              //  %if.end1065.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x10 ,  -408 ( x8 )           //  4-byte Folded Reload
	add x14 ,  x0 ,  x15
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  -412 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x10
	srai x23 ,  x15 ,  2&31
	bltu x23, x25, .LBB3_392
.LBB3_390:                              //  %if.then1091.us
                                        //    in Loop: Header=BB3_380 Depth=2
	slli x11 ,  x25 ,  3&31
	call realloc
	beq x0, x10, .LBB3_565
.LBB3_391:                              //  %if.end1097.us
                                        //    in Loop: Header=BB3_380 Depth=2
	slli x15 ,  x23 ,  2&31
	slli x25 ,  x25 ,  1&31
	sw x10 ,  0 ( x24 )
	sw x10 ,  -408 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x15 ,  x10
	sw x25 ,  -412 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_393
.LBB3_392:                              //    in Loop: Header=BB3_380 Depth=2
	sw x14 ,  -404 ( x8 )           //  4-byte Folded Spill
.LBB3_393:                              //  %if.end1107.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x23 ,  -388 ( x8 )           //  4-byte Folded Reload
	lw x25 ,  -416 ( x8 )           //  4-byte Folded Reload
.LBB3_394:                              //  %if.end1107.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_395
.LBB3_397:                              //  %land.lhs.true1111.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_468
.LBB3_398:                              //  %if.then.i2432.us
                                        //    in Loop: Header=BB3_380 Depth=2
	beq x11, x9, .LBB3_400
.LBB3_399:                              //  %if.then4.i2433.us
                                        //    in Loop: Header=BB3_380 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_400:                              //  %if.end.i2437.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_468
.LBB3_401:                              //  %__ssrefill_r.exit2445.thread.us
                                        //    in Loop: Header=BB3_380 Depth=2
	lw x15 ,  56 ( x18 )
	sw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	bltu x0, x22, .LBB3_402
	jal x0, .LBB3_469
.LBB3_186:                              //  %if.end1355
                                        //    in Loop: Header=BB3_170 Depth=2
	sltu x14 ,  x0 ,  x10
	addi x22 ,  x22 ,  1
	andi x26 ,  x26 ,  -897
	add x10 ,  x0 ,  x13
	add x23 ,  x14 ,  x23
	addi x25 ,  x25 ,  -1
	sw x25 ,  4 ( x18 )
	bge x0, x25, .LBB3_189
.LBB3_168:                              //  %if.then1402
                                        //    in Loop: Header=BB3_170 Depth=2
	addi x15 ,  x15 ,  1
	addi x23 ,  x23 ,  -1
	sw x15 ,  0 ( x18 )
	beq x0, x23, .LBB3_231
.LBB3_169:                              //  %for.body1338
                                        //    in Loop: Header=BB3_170 Depth=2
	lbu x14 ,  0 ( x15 )
	addi x12 ,  x0 ,  77
	addi x13 ,  x14 ,  -43
	bltu x12, x13, .LBB3_231
.LBB3_170:                              //  %for.body1338
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  JTI3_2&4095
	lui x12 ,  (JTI3_2>>12)&1048575
	slli x13 ,  x13 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	add x13 ,  x12 ,  x13
	lw x13 ,  0 ( x13 )
	jalr x0 ,  0 ( x13 )
.LBB3_171:                              //  %sw.bb1375
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	slti x13 ,  x13 ,  11
	bltu x0, x13, .LBB3_231
.LBB3_172:                              //  %if.end1379
                                        //    in Loop: Header=BB3_170 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x26 ,  x13 ,  x26
	jal x0, .LBB3_188
.LBB3_173:                              //  %sw.bb1363
                                        //    in Loop: Header=BB3_170 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	lui x12 ,  (__ssvfiscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  __ssvfiscanf_r.basefix&4095
	and x26 ,  x13 ,  x26
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x13 ,  1&31
	add x13 ,  x13 ,  x12
	lh x13 ,  0 ( x13 )
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_188
.LBB3_174:                              //  %sw.bb1381
                                        //    in Loop: Header=BB3_170 Depth=2
	andi x13 ,  x26 ,  128
	beq x0, x13, .LBB3_231
.LBB3_175:                              //  %if.then1384
                                        //    in Loop: Header=BB3_170 Depth=2
	andi x26 ,  x26 ,  -129
	jal x0, .LBB3_188
.LBB3_176:                              //  %sw.bb1367
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x11 ,  -384 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __ssvfiscanf_r.basefix&4095
	lui x12 ,  (__ssvfiscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x11 ,  1&31
	add x13 ,  x13 ,  x12
	addi x12 ,  x11 ,  -1
	lh x13 ,  0 ( x13 )
	sltiu x12 ,  x12 ,  8
	bltu x0, x12, .LBB3_499
.LBB3_177:                              //  %if.end1373
                                        //    in Loop: Header=BB3_170 Depth=2
	lui x30 ,  -2945&4095
	lui x12 ,  (-2945>>12)&1048575
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x26 ,  x12 ,  x26
	jal x0, .LBB3_188
.LBB3_178:                              //  %sw.bb1387
                                        //    in Loop: Header=BB3_170 Depth=2
	andi x13 ,  x26 ,  1536
	xori x13 ,  x13 ,  512
	bltu x0, x13, .LBB3_231
.LBB3_179:                              //  %if.then1391
                                        //    in Loop: Header=BB3_170 Depth=2
	addi x13 ,  x0 ,  16
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	andi x13 ,  x26 ,  -1793
	ori x26 ,  x13 ,  1280
	jal x0, .LBB3_188
.LBB3_180:                              //  %sw.bb1341
                                        //    in Loop: Header=BB3_170 Depth=2
	lui x30 ,  2048&4095
	lui x13 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x26
	beq x0, x13, .LBB3_188
.LBB3_181:                              //  %if.end1345
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x12 ,  -384 ( x8 )           //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	bne x12, x13, .LBB3_183
.LBB3_182:                              //    in Loop: Header=BB3_170 Depth=2
	ori x26 ,  x26 ,  512
	addi x12 ,  x0 ,  8
	sw x12 ,  -384 ( x8 )           //  4-byte Folded Spill
.LBB3_183:                              //  %if.end1345
                                        //    in Loop: Header=BB3_170 Depth=2
	andi x12 ,  x26 ,  1024
	bltu x0, x12, .LBB3_187
.LBB3_184:                              //  %if.end1355
                                        //    in Loop: Header=BB3_170 Depth=2
	beq x10, x13, .LBB3_186
.LBB3_185:                              //  %if.end1355
                                        //    in Loop: Header=BB3_170 Depth=2
	addi x13 ,  x10 ,  -1
	jal x0, .LBB3_186
.LBB3_187:                              //  %if.then1353
                                        //    in Loop: Header=BB3_170 Depth=2
	andi x26 ,  x26 ,  -1409
.LBB3_188:                              //  %ok
                                        //    in Loop: Header=BB3_170 Depth=2
	add x13 ,  x24 ,  x5
	addi x24 ,  x24 ,  1
	sb x14 ,  0 ( x13 )
	addi x25 ,  x25 ,  -1
	sw x25 ,  4 ( x18 )
	blt x0, x25, .LBB3_168
.LBB3_189:                              //  %if.else1405
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_230
.LBB3_190:                              //  %if.then.i2486
                                        //    in Loop: Header=BB3_170 Depth=2
	beq x11, x9, .LBB3_192
.LBB3_191:                              //  %if.then4.i2487
                                        //    in Loop: Header=BB3_170 Depth=2
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call _free_r
	add x10 ,  x0 ,  x25
	addi x5 ,  x8 ,  -368
.LBB3_192:                              //  %if.end.i2491
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x25 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x25 ,  4 ( x18 )
	beq x0, x25, .LBB3_230
.LBB3_193:                              //  %__ssrefill_r.exit2499.thread
                                        //    in Loop: Header=BB3_170 Depth=2
	lw x15 ,  56 ( x18 )
	addi x23 ,  x23 ,  -1
	sw x15 ,  0 ( x18 )
	bltu x0, x23, .LBB3_169
	jal x0, .LBB3_231
.LBB3_230:                              //  %__ssrefill_r.exit2499
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	add x25 ,  x0 ,  x0
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
.LBB3_231:                              //  %for.end1413
                                        //    in Loop: Header=BB3_4 Depth=1
	add x15 ,  x24 ,  x5
	andi x14 ,  x26 ,  256
	beq x0, x14, .LBB3_232
.LBB3_662:                              //  %for.end1413
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_500
.LBB3_232:                              //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x15
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x26 ,  16
	beq x0, x15, .LBB3_516
	jal x0, .LBB3_527
.LBB3_422:                              //  %while.body853.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x0
	addi x22 ,  x22 ,  -1
	jal x0, .LBB3_425
.LBB3_423:                              //  %if.end887.us.if.end899.us_crit_edge
                                        //    in Loop: Header=BB3_425 Depth=2
	lw x14 ,  0 ( x18 )
.LBB3_424:                              //  %if.end899.us
                                        //    in Loop: Header=BB3_425 Depth=2
	lbu x13 ,  0 ( x14 )
	addi x25 ,  x25 ,  1
	add x13 ,  x13 ,  x12
	lbu x13 ,  0 ( x13 )
	beq x0, x13, .LBB3_451
.LBB3_425:                              //  %while.body853.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	add x26 ,  x25 ,  x23
	sw x13 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	lb x15 ,  0 ( x14 )
	sb x15 ,  0 ( x26 )
	beq x22, x25, .LBB3_451
.LBB3_426:                              //  %if.end887.us
                                        //    in Loop: Header=BB3_425 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_423
.LBB3_427:                              //  %land.lhs.true891.us
                                        //    in Loop: Header=BB3_425 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_495
.LBB3_428:                              //  %if.then.i2373.us
                                        //    in Loop: Header=BB3_425 Depth=2
	beq x11, x9, .LBB3_430
.LBB3_429:                              //  %if.then4.i2374.us
                                        //    in Loop: Header=BB3_425 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
	addi x12 ,  x8 ,  -328
.LBB3_430:                              //  %if.end.i2378.us
                                        //    in Loop: Header=BB3_425 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_495
.LBB3_431:                              //  %__ssrefill_r.exit2386.thread.us
                                        //    in Loop: Header=BB3_425 Depth=2
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
	jal x0, .LBB3_424
.LBB3_488:                              //    in Loop: Header=BB3_4 Depth=1
	add x15 ,  x0 ,  x0
	addi x26 ,  x8 ,  -72
	sw x15 ,  -416 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB3_489
.LBB3_432:                              //    in Loop: Header=BB3_4 Depth=1
	add x25 ,  x0 ,  x0
	sw x25 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x25 ,  -412 ( x8 )           //  4-byte Folded Spill
.LBB3_433:                              //  %if.then374
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	bltu x0, x24, .LBB3_544
.LBB3_434:                              //  %while.end380
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB3_438
.LBB3_435:                              //  %while.end380
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -412 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -404 ( x8 )           //  4-byte Folded Reload
	sub x11 ,  x25 ,  x15
	srai x15 ,  x11 ,  2&31
	bgeu x15, x14, .LBB3_438
.LBB3_436:                              //  %if.then390
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB3_438
.LBB3_437:                              //  %if.then394
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB3_438:                              //  %cleanup402
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -416 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -380 ( x8 )           //  4-byte Folded Reload
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x14 ,  x15 ,  x14
	sw x14 ,  -380 ( x8 )           //  4-byte Folded Spill
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_663
.LBB3_664:                              //  %cleanup402
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_663:                              //  %cleanup402
	jal x0, .LBB3_549
.LBB3_439:                              //  %while.body1255.us.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	add x23 ,  x0 ,  x0
	addi x22 ,  x22 ,  -1
	jal x0, .LBB3_442
.LBB3_440:                              //  %if.end1289.us.if.end1297.us_crit_edge
                                        //    in Loop: Header=BB3_442 Depth=2
	lw x14 ,  0 ( x18 )
.LBB3_441:                              //  %if.end1297.us
                                        //    in Loop: Header=BB3_442 Depth=2
	lbu x13 ,  0 ( x14 )
	lui x30 ,  _ctype_&4095
	addi x23 ,  x23 ,  1
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	add x13 ,  x13 ,  x12
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	bltu x0, x13, .LBB3_494
.LBB3_442:                              //  %while.body1255.us
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x13 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	add x26 ,  x23 ,  x25
	sw x13 ,  0 ( x18 )
	sw x15 ,  4 ( x18 )
	lb x15 ,  0 ( x14 )
	sb x15 ,  0 ( x26 )
	beq x22, x23, .LBB3_494
.LBB3_443:                              //  %if.end1289.us
                                        //    in Loop: Header=BB3_442 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB3_440
.LBB3_444:                              //  %land.lhs.true1293.us
                                        //    in Loop: Header=BB3_442 Depth=2
	lw x11 ,  48 ( x18 )
	beq x0, x11, .LBB3_530
.LBB3_445:                              //  %if.then.i2468.us
                                        //    in Loop: Header=BB3_442 Depth=2
	beq x11, x9, .LBB3_447
.LBB3_446:                              //  %if.then4.i2469.us
                                        //    in Loop: Header=BB3_442 Depth=2
	add x10 ,  x0 ,  x19
	call _free_r
.LBB3_447:                              //  %if.end.i2473.us
                                        //    in Loop: Header=BB3_442 Depth=2
	lw x15 ,  60 ( x18 )
	sw x0 ,  48 ( x18 )
	sw x15 ,  4 ( x18 )
	beq x0, x15, .LBB3_530
.LBB3_448:                              //  %__ssrefill_r.exit2481.thread.us
                                        //    in Loop: Header=BB3_442 Depth=2
	lw x14 ,  56 ( x18 )
	sw x14 ,  0 ( x18 )
	jal x0, .LBB3_441
.LBB3_449:                              //  %__ssrefill_r.exit2463
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	add x27 ,  x27 ,  x23
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_665
.LBB3_666:                              //  %__ssrefill_r.exit2463
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_665:                              //  %__ssrefill_r.exit2463
	jal x0, .LBB3_549
.LBB3_450:                              //  %if.then171
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x27 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_667
.LBB3_668:                              //  %if.then171
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_667:                              //  %if.then171
	jal x0, .LBB3_549
.LBB3_451:                              //  %while.end900.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x25 ,  x26 ,  1
	sub x22 ,  x25 ,  x23
	bltu x0, x22, .LBB3_498
	jal x0, .LBB3_567
.LBB3_452:                              //    in Loop: Header=BB3_4 Depth=1
	add x15 ,  x0 ,  x0
	sw x15 ,  -416 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
.LBB3_453:                              //  %if.then710
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	beq x0, x24, .LBB3_489
	jal x0, .LBB3_545
.LBB3_468:                              //  %if.then1114
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	beq x0, x26, .LBB3_469
	jal x0, .LBB3_544
.LBB3_454:                              //    in Loop: Header=BB3_4 Depth=1
	add x15 ,  x0 ,  x0
	addi x26 ,  x8 ,  -72
	sw x15 ,  -416 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB3_479
	jal x0, .LBB3_489
.LBB3_411:                              //  %while.cond1056.preheader
                                        //    in Loop: Header=BB3_4 Depth=1
	bltu x0, x26, .LBB3_459
	jal x0, .LBB3_469
.LBB3_455:                              //  %if.end14.if.end34_crit_edge.i2408
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x15 ,  0 ( x18 )
.LBB3_456:                              //  %if.end34.i2425
                                        //    in Loop: Header=BB3_459 Depth=2
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sb x22 ,  66 ( x18 )
	sw x9 ,  48 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	sw x15 ,  60 ( x18 )
	slti x15 ,  x0 ,  1
.LBB3_457:                              //  %_sungetc_r.exit2427.sink.split
                                        //    in Loop: Header=BB3_459 Depth=2
	sw x15 ,  4 ( x18 )
.LBB3_458:                              //  %_sungetc_r.exit2427
                                        //    in Loop: Header=BB3_459 Depth=2
	beq x0, x26, .LBB3_469
.LBB3_459:                              //  %while.body1059
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	addi x15 ,  x8 ,  -369
	add x15 ,  x26 ,  x15
	addi x26 ,  x26 ,  -1
	lbu x22 ,  0 ( x15 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB3_464
.LBB3_460:                              //  %if.then6.i2395
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB3_462
.LBB3_461:                              //  %land.lhs.true.i2398
                                        //    in Loop: Header=BB3_459 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB3_458
.LBB3_462:                              //  %if.end11.i2402
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  0 ( x18 )
	sb x22 ,  -1 ( x15 )
.LBB3_463:                              //  %_sungetc_r.exit2427.sink.split
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	jal x0, .LBB3_457
.LBB3_464:                              //  %if.end14.i2405
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB3_455
.LBB3_465:                              //  %land.lhs.true18.i2411
                                        //    in Loop: Header=BB3_459 Depth=2
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB3_456
.LBB3_466:                              //  %land.lhs.true24.i2414
                                        //    in Loop: Header=BB3_459 Depth=2
	lbu x14 ,  -1 ( x15 )
	bne x14, x22, .LBB3_456
.LBB3_467:                              //  %if.then29.i2417
                                        //    in Loop: Header=BB3_459 Depth=2
	addi x15 ,  x15 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB3_463
.LBB3_469:                              //  %while.end1120
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	bltu x0, x25, .LBB3_538
.LBB3_470:                              //  %if.then1123
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	beq x0, x24, .LBB3_537
.LBB3_471:                              //  %if.then1123
                                        //    in Loop: Header=BB3_4 Depth=1
	add x14 ,  x0 ,  x15
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x14 ,  x15
	lw x14 ,  -412 ( x8 )           //  4-byte Folded Reload
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB3_537
.LBB3_472:                              //  %if.then1134
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x10 ,  0 ( x24 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB3_537
.LBB3_473:                              //  %if.then1139
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10 ,  0 ( x24 )
	jal x0, .LBB3_537
.LBB3_474:                              //    in Loop: Header=BB3_4 Depth=1
	lw x26 ,  -408 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -412 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -412 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB3_479
	jal x0, .LBB3_489
.LBB3_475:                              //  %if.end14.if.end34_crit_edge.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x15 ,  0 ( x18 )
.LBB3_476:                              //  %if.end34.i
                                        //    in Loop: Header=BB3_479 Depth=2
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sb x22 ,  66 ( x18 )
	sw x9 ,  48 ( x18 )
	sw x15 ,  52 ( x18 )
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	sw x15 ,  60 ( x18 )
	slti x15 ,  x0 ,  1
.LBB3_477:                              //  %_sungetc_r.exit.sink.split
                                        //    in Loop: Header=BB3_479 Depth=2
	sw x15 ,  4 ( x18 )
.LBB3_478:                              //  %_sungetc_r.exit
                                        //    in Loop: Header=BB3_479 Depth=2
	beq x0, x24, .LBB3_489
.LBB3_479:                              //  %while.body655
                                        //    Parent Loop BB3_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x15 ,  12 ( x18 )
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x18 )
	addi x15 ,  x8 ,  -369
	add x15 ,  x24 ,  x15
	addi x24 ,  x24 ,  -1
	lbu x22 ,  0 ( x15 )
	lw x15 ,  48 ( x18 )
	beq x0, x15, .LBB3_484
.LBB3_480:                              //  %if.then6.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x15 ,  52 ( x18 )
	lw x14 ,  4 ( x18 )
	blt x14, x15, .LBB3_482
.LBB3_481:                              //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_479 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __submore
	bltu x0, x10, .LBB3_478
.LBB3_482:                              //  %if.end11.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x15 ,  0 ( x18 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  0 ( x18 )
	sb x22 ,  -1 ( x15 )
.LBB3_483:                              //  %_sungetc_r.exit.sink.split
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	jal x0, .LBB3_477
.LBB3_484:                              //  %if.end14.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x14 ,  16 ( x18 )
	beq x0, x14, .LBB3_475
.LBB3_485:                              //  %land.lhs.true18.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lw x15 ,  0 ( x18 )
	bgeu x14, x15, .LBB3_476
.LBB3_486:                              //  %land.lhs.true24.i
                                        //    in Loop: Header=BB3_479 Depth=2
	lbu x14 ,  -1 ( x15 )
	bne x14, x22, .LBB3_476
.LBB3_487:                              //  %if.then29.i
                                        //    in Loop: Header=BB3_479 Depth=2
	addi x15 ,  x15 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB3_483
.LBB3_489:                              //  %while.end716
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -420 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -388 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB3_490
.LBB3_669:                              //  %while.end716
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_53
.LBB3_490:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x26 )
	bltu x0, x15, .LBB3_491
.LBB3_670:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_274
.LBB3_491:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -416 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -412 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x26 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bltu x15, x14, .LBB3_492
.LBB3_671:                              //  %if.then719
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_274
.LBB3_492:                              //  %if.then730
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  -404 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x15 ,  2&31
	lw x10 ,  0 ( x14 )
	call realloc
	bltu x0, x10, .LBB3_493
.LBB3_672:                              //  %if.then730
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_274
.LBB3_493:                              //  %if.then735
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
	jal x0, .LBB3_274
.LBB3_494:                              //  %while.end1298.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x23 ,  x26 ,  1
	sub x22 ,  x23 ,  x25
	sb x0 ,  0 ( x23 )
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB3_533
	jal x0, .LBB3_536
.LBB3_511:                              //  %if.end14.if.end34_crit_edge.i2522
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  0 ( x18 )
.LBB3_512:                              //  %if.end34.i2539
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  56 ( x18 )
	addi x15 ,  x0 ,  3
	sw x25 ,  60 ( x18 )
	sb x24 ,  66 ( x18 )
	sw x9 ,  48 ( x18 )
	sw x15 ,  52 ( x18 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x18 )
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
.LBB3_513:                              //  %if.end1424
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x15 ,  0 ( x18 )
.LBB3_514:                              //  %if.end1424
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	beq x23, x5, .LBB3_549
.LBB3_515:                              //  %if.end1430
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  16
	bltu x0, x15, .LBB3_527
.LBB3_516:                              //  %if.then1434
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	sb x0 ,  0 ( x23 )
	lw x15 ,  -392 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x26 ,  32
	bltu x0, x15, .LBB3_522
.LBB3_517:                              //  %if.else1441
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  8
	addi x5 ,  x8 ,  -368
	bltu x0, x15, .LBB3_524
.LBB3_518:                              //  %if.else1447
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  4
	bltu x0, x15, .LBB3_525
.LBB3_519:                              //  %if.else1453
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  1
	bltu x0, x15, .LBB3_521
.LBB3_520:                              //  %if.else1458
                                        //    in Loop: Header=BB3_4 Depth=1
	andi x15 ,  x26 ,  2
	bltu x0, x15, .LBB3_528
.LBB3_521:                              //  %if.else1472
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x10 ,  0 ( x15 )
	jal x0, .LBB3_526
.LBB3_522:                              //  %if.then1439
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB3_523:                              //  %if.end1478
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x10 ,  0 ( x15 )
	addi x5 ,  x8 ,  -368
	jal x0, .LBB3_526
.LBB3_524:                              //  %if.then1444
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB3_526
.LBB3_525:                              //  %if.then1450
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB3_526:                              //  %if.end1478
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -380 ( x8 )           //  4-byte Folded Spill
.LBB3_527:                              //  %cleanup1487.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x15 ,  x27 ,  x5
	add x15 ,  x22 ,  x15
	add x27 ,  x23 ,  x15
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_673
.LBB3_674:                              //  %cleanup1487.thread
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_673:                              //  %cleanup1487.thread
	jal x0, .LBB3_549
.LBB3_528:                              //  %if.then1461
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x14 ,  -392 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _strtoul_r&4095
	lui x15 ,  (_strtoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB3_540
.LBB3_529:                              //  %if.else1467
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoll_r
	jal x0, .LBB3_541
.LBB3_495:                              //  %if.then894.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x25 ,  x26 ,  1
.LBB3_496:                              //  %if.then894
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	beq x25, x23, .LBB3_544
.LBB3_497:                              //  %while.end900
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x22 ,  x25 ,  x23
	beq x0, x22, .LBB3_567
.LBB3_498:                              //  %if.end907
                                        //    in Loop: Header=BB3_4 Depth=1
	sb x0 ,  0 ( x25 )
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB3_533
	jal x0, .LBB3_536
.LBB3_499:                              //  %for.end1413.loopexit.split.loop.exit
                                        //    in Loop: Header=BB3_4 Depth=1
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	add x15 ,  x24 ,  x5
	andi x14 ,  x26 ,  256
	beq x0, x14, .LBB3_232
	jal x0, .LBB3_500
.LBB3_530:                              //  %__ssrefill_r.exit2481.loopexit
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x23 ,  x26 ,  1
.LBB3_531:                              //  %__ssrefill_r.exit2481
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
.LBB3_532:                              //  %while.end1298
                                        //    in Loop: Header=BB3_4 Depth=1
	sub x22 ,  x23 ,  x25
	sb x0 ,  0 ( x23 )
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB3_536
.LBB3_533:                              //  %while.end1298
                                        //    in Loop: Header=BB3_4 Depth=1
	addi x11 ,  x22 ,  1
	bgeu x11, x24, .LBB3_536
.LBB3_534:                              //  %if.then1308
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB3_536
.LBB3_535:                              //  %if.then1313
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB3_536:                              //  %cleanup1321
                                        //    in Loop: Header=BB3_4 Depth=1
	add x27 ,  x27 ,  x22
.LBB3_537:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -380 ( x8 )           //  4-byte Folded Spill
.LBB3_538:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_675
.LBB3_676:                              //  %if.end1326
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_675:                              //  %if.end1326
	jal x0, .LBB3_549
.LBB3_539:                              //  %if.then182
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	srai x14 ,  x27 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x27 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB3_677
.LBB3_678:                              //  %if.then182
                                        //    in Loop: Header=BB3_4 Depth=1
	jal x0, .LBB3_4
.LBB3_677:                              //  %if.then182
	jal x0, .LBB3_549
.LBB3_540:                              //  %if.then1464
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoull_r
.LBB3_541:                              //  %if.end1470
                                        //    in Loop: Header=BB3_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB3_523
.LBB3_542:
	add x19 ,  x0 ,  x0
	jal x0, .LBB3_559
.LBB3_543:                              //  %__ssrefill_r.exit2265
	lw x15 ,  16 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	sw x0 ,  4 ( x18 )
.LBB3_544:                              //  %cleanup402.thread2578
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
.LBB3_545:                              //  %input_failure
	lw x13 ,  -380 ( x8 )           //  4-byte Folded Reload
	beq x0, x13, .LBB3_557
.LBB3_546:                              //  %land.lhs.true1492
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB3_548
.LBB3_547:                              //  %land.lhs.true1492
	addi x13 ,  x0 ,  -1
.LBB3_548:                              //  %land.lhs.true1492
	sw x13 ,  -380 ( x8 )           //  4-byte Folded Spill
.LBB3_549:                              //  %do.body1497
	beq x0, x25, .LBB3_558
.LBB3_550:                              //  %if.then1499
	lw x19 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x19 ,  -1
	bltu x0, x15, .LBB3_554
.LBB3_551:                              //  %for.cond1503.preheader
	lhu x15 ,  6 ( x25 )
	addi x19 ,  x0 ,  -1
	beq x0, x15, .LBB3_554
.LBB3_552:                              //  %for.body1508.lr.ph
	add x9 ,  x0 ,  x0
	add x18 ,  x0 ,  x9
.LBB3_553:                              //  %for.body1508
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x25 )
	add x15 ,  x9 ,  x15
	lw x15 ,  0 ( x15 )
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  0 ( x25 )
	addi x18 ,  x18 ,  1
	add x15 ,  x9 ,  x15
	addi x9 ,  x9 ,  4
	lw x15 ,  0 ( x15 )
	sw x0 ,  0 ( x15 )
	lhu x15 ,  6 ( x25 )
	bltu x18, x15, .LBB3_553
.LBB3_554:                              //  %if.end1516
	lw x10 ,  0 ( x25 )
	beq x0, x10, .LBB3_559
.LBB3_555:                              //  %if.then1519
	call free
	jal x0, .LBB3_559
.LBB3_556:                              //  %__ssrefill_r.exit2247
	lw x15 ,  16 ( x18 )
	sw x0 ,  4 ( x18 )
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x18 )
	ori x15 ,  x15 ,  32
	sh x15 ,  12 ( x18 )
	lw x13 ,  -380 ( x8 )           //  4-byte Folded Reload
	bltu x0, x13, .LBB3_546
.LBB3_557:
	addi x15 ,  x0 ,  -1
	sw x15 ,  -380 ( x8 )           //  4-byte Folded Spill
	bltu x0, x25, .LBB3_550
.LBB3_558:
	lw x19 ,  -380 ( x8 )           //  4-byte Folded Reload
.LBB3_559:                              //  %cleanup1525
	add x10 ,  x0 ,  x19
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
.LBB3_560:
	addi x15 ,  x0 ,  -1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	sw x15 ,  -380 ( x8 )           //  4-byte Folded Spill
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_561:
	addi x23 ,  x0 ,  -1
.LBB3_562:                              //  %cleanup402.thread
	sw x23 ,  -380 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_567:
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_565:
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
.LBB3_563:
	addi x23 ,  x0 ,  -1
.LBB3_564:                              //  %cleanup740.thread
	sw x23 ,  -380 ( x8 )           //  4-byte Folded Spill
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_569:
	lw x23 ,  -380 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -380 ( x8 )           //  4-byte Folded Spill
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_568:
	lw x23 ,  -380 ( x8 )           //  4-byte Folded Reload
	sw x23 ,  -380 ( x8 )           //  4-byte Folded Spill
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	bltu x0, x25, .LBB3_550
	jal x0, .LBB3_558
.LBB3_570:
	add x25 ,  x0 ,  x23
	lhu x15 ,  6 ( x25 )
	addi x19 ,  x0 ,  -1
	bltu x0, x15, .LBB3_552
	jal x0, .LBB3_554
.Lfunc_end3:
	.size	__ssvfiscanf_r, .Lfunc_end3-__ssvfiscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI3_0:
	.long	.LBB3_45
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_27
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_22
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_56
	.long	.LBB3_58
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_24
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_59
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_61
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_54
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_62
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_57
	.long	.LBB3_63
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_29
	.long	.LBB3_64
	.long	.LBB3_24
	.long	.LBB3_549
	.long	.LBB3_32
	.long	.LBB3_36
	.long	.LBB3_66
	.long	.LBB3_72
	.long	.LBB3_73
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_74
	.long	.LBB3_19
	.long	.LBB3_75
	.long	.LBB3_549
	.long	.LBB3_549
	.long	.LBB3_54
	.long	.LBB3_549
	.long	.LBB3_19
JTI3_1:
	.long	.LBB3_95
	.long	.LBB3_101
	.long	.LBB3_107
	.long	.LBB3_113
JTI3_2:
	.long	.LBB3_174
	.long	.LBB3_231
	.long	.LBB3_174
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_180
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_173
	.long	.LBB3_176
	.long	.LBB3_176
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_178
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_171
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_231
	.long	.LBB3_178
                                        //  -- End function
	.address_space	0
	.type	__ssvfiscanf_r.basefix,@object //  @__ssvfiscanf_r.basefix
	.p2align	1
__ssvfiscanf_r.basefix:
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
	.size	__ssvfiscanf_r.basefix, 34

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
