	.text
	.file	"vfiscanf.c"
	.globl	vfiscanf                //  -- Begin function vfiscanf
	.type	vfiscanf,@function
vfiscanf:                               //  @vfiscanf
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
	jal x0, __svfiscanf_r
.Lfunc_end0:
	.size	vfiscanf, .Lfunc_end0-vfiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	__svfiscanf_r           //  -- Begin function __svfiscanf_r
	.type	__svfiscanf_r,@function
__svfiscanf_r:                          //  @__svfiscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -424
	.cfi_adjust_cfa_offset 424
	sw x8 ,  416 ( x2 )
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  416
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
.LBB1_449:                              //  %do.end
	jal x0, .LBB1_431
.LBB1_3:                                //  %land.lhs.true.lr.ph.lr.ph.lr.ph.lr.ph
	add x9 ,  x0 ,  x0
	lui x22 ,  (_ctype_>>12)&1048575
	add x27 ,  x0 ,  x9
	add x20 ,  x0 ,  x9
	sw x9 ,  -388 ( x8 )            //  4-byte Folded Spill
	sw x9 ,  -384 ( x8 )            //  4-byte Folded Spill
	sw x9 ,  -380 ( x8 )            //  4-byte Folded Spill
.LBB1_4:                                //  %land.lhs.true.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_5 Depth 2
                                        //        Child Loop BB1_7 Depth 3
                                        //      Child Loop BB1_15 Depth 2
                                        //      Child Loop BB1_73 Depth 2
                                        //      Child Loop BB1_147 Depth 2
                                        //      Child Loop BB1_372 Depth 2
                                        //      Child Loop BB1_345 Depth 2
                                        //      Child Loop BB1_416 Depth 2
                                        //      Child Loop BB1_194 Depth 2
                                        //      Child Loop BB1_273 Depth 2
                                        //      Child Loop BB1_402 Depth 2
                                        //      Child Loop BB1_315 Depth 2
                                        //      Child Loop BB1_120 Depth 2
                                        //      Child Loop BB1_418 Depth 2
                                        //      Child Loop BB1_187 Depth 2
                                        //      Child Loop BB1_258 Depth 2
                                        //      Child Loop BB1_388 Depth 2
                                        //      Child Loop BB1_286 Depth 2
                                        //      Child Loop BB1_102 Depth 2
                                        //      Child Loop BB1_181 Depth 2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x21 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x22 ,  x30
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
	or x13 ,  x22 ,  x30
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
.LBB1_450:                              //  %for.end
	jal x0, .LBB1_436
.LBB1_10:                               //  %land.lhs.true
                                        //    in Loop: Header=BB1_5 Depth=2
	lui x30 ,  _ctype_&4095
	addi x24 ,  x24 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x22 ,  x30
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
	jal x0, .LBB1_436
.LBB1_13:                               //  %sw.bb124
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	add x24 ,  x0 ,  x21
	beq x0, x15, .LBB1_14
.LBB1_451:                              //  %sw.bb124
	jal x0, .LBB1_436
.LBB1_14:                               //  %again
                                        //    in Loop: Header=BB1_15 Depth=2
	lbu x26 ,  0 ( x24 )
	addi x14 ,  x0 ,  85
	addi x15 ,  x26 ,  -37
	bgeu x14, x15, .LBB1_15
.LBB1_452:                              //  %again
	jal x0, .LBB1_436
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
.LBB1_453:                              //  %sw.bb141
	jal x0, .LBB1_436
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
	jal x0, .LBB1_436
.LBB1_18:                               //  %sw.bb93
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_19
.LBB1_454:                              //  %sw.bb93
	jal x0, .LBB1_436
.LBB1_19:                               //  %if.end97
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x25 ,  x25 ,  2
	jal x0, .LBB1_20
.LBB1_21:                               //  %sw.bb72
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  159
	or x15 ,  x23 ,  x15
	beq x0, x15, .LBB1_22
.LBB1_455:                              //  %sw.bb72
	jal x0, .LBB1_436
.LBB1_22:                               //  %if.end78
                                        //    in Loop: Header=BB1_15 Depth=2
	ori x25 ,  x25 ,  16
	add x23 ,  x0 ,  x0
	jal x0, .LBB1_20
.LBB1_23:                               //  %sw.bb99
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x15 ,  x25 ,  15
	beq x0, x15, .LBB1_24
.LBB1_456:                              //  %sw.bb99
	jal x0, .LBB1_436
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
.LBB1_457:                              //  %sw.bb80
	jal x0, .LBB1_436
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
.LBB1_458:                              //  %sw.bb129
	jal x0, .LBB1_436
.LBB1_31:                               //  %do.body134
                                        //    in Loop: Header=BB1_15 Depth=2
	bltu x0, x9, .LBB1_33
.LBB1_32:                               //  %if.then136
                                        //    in Loop: Header=BB1_15 Depth=2
	add x15 ,  x0 ,  x2
	addi x9 ,  x15 ,  -8
	add x2 ,  x0 ,  x9
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
	jal x0, .LBB1_436
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
	jal x0, .LBB1_436
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
.LBB1_459:                              //  %land.lhs.true52
	jal x0, .LBB1_433
.LBB1_41:                               //  %if.end56
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lbu x14 ,  -1 ( x21 )
	lbu x13 ,  0 ( x15 )
	beq x13, x14, .LBB1_42
.LBB1_460:                              //  %if.end56
	jal x0, .LBB1_436
.LBB1_42:                               //  %if.end63
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x15 ,  1
	addi x20 ,  x20 ,  1
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x18 )
.LBB1_43:                               //  %for.cond.outer2442.backedge
                                        //    in Loop: Header=BB1_4 Depth=1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_44:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  512
	jal x0, .LBB1_45
.LBB1_46:                               //  %sw.bb162
                                        //    in Loop: Header=BB1_4 Depth=1
	ori x25 ,  x25 ,  1
.LBB1_47:                               //  %sw.bb164
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
	jal x0, .LBB1_68
.LBB1_48:                               //  %sw.bb146
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x0 ,  10
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtol_r&4095
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	jal x0, .LBB1_50
.LBB1_49:                               //  %sw.bb150
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x0 ,  8
	addi x24 ,  x0 ,  3
	lui x30 ,  _strtoul_r&4095
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
.LBB1_50:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	srli x30 ,  x30 ,  12&31
	ori x25 ,  x25 ,  1
	or x15 ,  x15 ,  x30
	sw x15 ,  -388 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
	jal x0, .LBB1_68
.LBB1_51:                               //  %sw.bb156
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  2
	ori x25 ,  x25 ,  1
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
	jal x0, .LBB1_68
.LBB1_52:                               //  %sw.bb159
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x8 ,  -328
	add x11 ,  x0 ,  x21
	call __sccl
	add x21 ,  x0 ,  x10
	slti x24 ,  x0 ,  1
	ori x25 ,  x25 ,  64
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
	jal x0, .LBB1_68
.LBB1_53:                               //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
	jal x0, .LBB1_55
.LBB1_54:                               //  %sw.epilog.loopexit3090
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	add x15 ,  x0 ,  x0
.LBB1_55:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtol_r>>12)&1048575
	lui x30 ,  _strtol_r&4095
	jal x0, .LBB1_67
.LBB1_56:                               //  %sw.bb168
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_43
.LBB1_57:                               //  %if.end172
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  8
	bltu x0, x15, .LBB1_234
.LBB1_58:                               //  %if.else177
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  4
	beq x0, x15, .LBB1_59
.LBB1_461:                              //  %if.else177
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_414
.LBB1_59:                               //  %if.else183
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_61
.LBB1_60:                               //  %if.else188
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  2
	beq x0, x15, .LBB1_61
.LBB1_462:                              //  %if.else188
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_428
.LBB1_61:                               //  %if.then186
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_62:                               //  %sw.epilog.loopexit3635
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  8
	jal x0, .LBB1_66
.LBB1_63:                               //  %sw.bb166
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _strtoul_r&4095
	addi x15 ,  x0 ,  16
	addi x24 ,  x0 ,  3
	ori x25 ,  x25 ,  544
.LBB1_45:                               //  %sw.bb154
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	jal x0, .LBB1_67
.LBB1_64:                               //  %sw.epilog.loopexit4535
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
	jal x0, .LBB1_68
.LBB1_65:                               //  %sw.epilog.loopexit4080
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  3
	addi x15 ,  x0 ,  10
.LBB1_66:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x15 ,  -384 ( x8 )           //  4-byte Folded Spill
	lui x15 ,  (_strtoul_r>>12)&1048575
	lui x30 ,  _strtoul_r&4095
.LBB1_67:                               //  %sw.epilog
                                        //    in Loop: Header=BB1_4 Depth=1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  -388 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_69
.LBB1_68:                               //  %land.lhs.true203
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_69
.LBB1_463:                              //  %land.lhs.true203
	jal x0, .LBB1_433
.LBB1_69:                               //  %if.end207
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  64
	bltu x0, x15, .LBB1_76
.LBB1_70:                               //  %while.cond.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	lw x26 ,  -380 ( x8 )           //  4-byte Folded Reload
	or x13 ,  x22 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_73
	jal x0, .LBB1_77
.LBB1_71:                               //  %if.then223
                                        //    in Loop: Header=BB1_73 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_72:                               //  %if.end231
                                        //    in Loop: Header=BB1_73 Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	addi x20 ,  x20 ,  1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB1_77
.LBB1_73:                               //  %while.body
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB1_71
.LBB1_74:                               //  %if.else226
                                        //    in Loop: Header=BB1_73 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_75
.LBB1_464:                              //  %if.else226
	jal x0, .LBB1_433
.LBB1_75:                               //  %if.else226.if.end231_crit_edge
                                        //    in Loop: Header=BB1_73 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_72
.LBB1_76:                               //    in Loop: Header=BB1_4 Depth=1
	lw x26 ,  -380 ( x8 )           //  4-byte Folded Reload
.LBB1_77:                               //  %if.end232
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  JTI1_1&4095
	lui x14 ,  (JTI1_1>>12)&1048575
	slli x15 ,  x24 ,  2&31
	sw x27 ,  -392 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_78:                               //  %sw.bb233
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB1_80
.LBB1_79:                               //    in Loop: Header=BB1_4 Depth=1
	slti x23 ,  x0 ,  1
.LBB1_80:                               //  %sw.bb233
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_98
.LBB1_81:                               //  %if.else417
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_180
.LBB1_82:                               //  %if.else450
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_207
.LBB1_83:                               //  %if.else511
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x24 ,  0 ( x15 )
	jal x0, .LBB1_244
.LBB1_84:                               //  %sw.bb540
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	bne x23, x24, .LBB1_86
.LBB1_85:                               //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB1_86:                               //  %sw.bb540
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_116
.LBB1_87:                               //  %if.else755
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_184
.LBB1_88:                               //  %if.else793
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_211
.LBB1_89:                               //  %if.else854
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x25 ,  x0 ,  x0
	add x24 ,  x0 ,  x25
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x26 ,  0 ( x15 )
	jal x0, .LBB1_254
.LBB1_90:                               //  %sw.bb939
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x0
	bne x23, x27, .LBB1_92
.LBB1_91:                               //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x0 ,  -1
.LBB1_92:                               //  %sw.bb939
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_136
.LBB1_93:                               //  %if.else1159
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_191
.LBB1_94:                               //  %if.else1191
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_215
.LBB1_95:                               //  %if.else1253
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x24 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x24 ,  -396 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_269
.LBB1_96:                               //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x23 ,  -1
	addi x14 ,  x0 ,  38
	bltu x14, x15, .LBB1_138
.LBB1_97:                               //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x23
	jal x0, .LBB1_139
.LBB1_98:                               //  %if.then240
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -400 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB1_198
.LBB1_99:                               //  %while.body306.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_102
	jal x0, .LBB1_432
.LBB1_110:                              //    in Loop: Header=BB1_102 Depth=2
	add x24 ,  x0 ,  x25
	lw x15 ,  4 ( x18 )
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	bge x0, x15, .LBB1_114
.LBB1_100:                              //  %if.end388.us
                                        //    in Loop: Header=BB1_102 Depth=2
	beq x0, x23, .LBB1_235
.LBB1_101:                              //  %while.body306.us
                                        //    in Loop: Header=BB1_102 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_102
.LBB1_465:                              //  %while.body306.us
	jal x0, .LBB1_432
.LBB1_102:                              //  %if.end311.us
                                        //    Parent Loop BB1_4 Depth=1
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
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_104
.LBB1_103:                              //  %if.end311.us
                                        //    in Loop: Header=BB1_102 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_105
.LBB1_104:                              //  %if.then324.us
                                        //    in Loop: Header=BB1_102 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_105:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_102 Depth=2
	add x24 ,  x0 ,  x0
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call _mbrtowc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -2
	beq x0, x15, .LBB1_110
.LBB1_106:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_102 Depth=2
	beq x0, x26, .LBB1_111
.LBB1_107:                              //  %if.end326.us
                                        //    in Loop: Header=BB1_102 Depth=2
	add x14 ,  x0 ,  x26
	xori x15 ,  x26 ,  -1
	bltu x0, x15, .LBB1_108
.LBB1_466:                              //  %if.end326.us
	jal x0, .LBB1_432
.LBB1_108:                              //  %if.then342.us
                                        //    in Loop: Header=BB1_102 Depth=2
	add x26 ,  x0 ,  x14
	add x20 ,  x20 ,  x25
	xori x15 ,  x26 ,  3
	bltu x0, x15, .LBB1_112
.LBB1_109:                              //  %if.then342.us
                                        //    in Loop: Header=BB1_102 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_113
	jal x0, .LBB1_112
.LBB1_111:                              //  %if.then342.thread.us
                                        //    in Loop: Header=BB1_102 Depth=2
	add x20 ,  x20 ,  x25
.LBB1_112:                              //  %if.then350.us
                                        //    in Loop: Header=BB1_102 Depth=2
	addi x23 ,  x23 ,  -1
.LBB1_113:                              //  %if.end376.us
                                        //    in Loop: Header=BB1_102 Depth=2
	lw x15 ,  4 ( x18 )
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	blt x0, x15, .LBB1_100
.LBB1_114:                              //  %land.lhs.true380.us
                                        //    in Loop: Header=BB1_102 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_100
.LBB1_115:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	sw x26 ,  -396 ( x8 )           //  4-byte Folded Spill
	beq x0, x24, .LBB1_304
	jal x0, .LBB1_432
.LBB1_116:                              //  %if.then547
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x13 ,  x25 ,  16
	sw x13 ,  -412 ( x8 )           //  4-byte Folded Spill
	beq x0, x13, .LBB1_200
.LBB1_117:                              //  %while.body622.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_120
	jal x0, .LBB1_433
.LBB1_118:                              //  %if.end724
                                        //    in Loop: Header=BB1_120 Depth=2
	beq x0, x23, .LBB1_239
.LBB1_119:                              //  %while.body622
                                        //    in Loop: Header=BB1_120 Depth=2
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_120
.LBB1_467:                              //  %while.body622
	jal x0, .LBB1_433
.LBB1_120:                              //  %if.end627
                                        //    Parent Loop BB1_4 Depth=1
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
	xori x15 ,  x26 ,  3
	bltu x0, x15, .LBB1_122
.LBB1_121:                              //  %if.end627
                                        //    in Loop: Header=BB1_120 Depth=2
	lw x15 ,  -376 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_123
.LBB1_122:                              //  %if.then641
                                        //    in Loop: Header=BB1_120 Depth=2
	addi x10 ,  x8 ,  -376
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_123:                              //  %if.end643
                                        //    in Loop: Header=BB1_120 Depth=2
	addi x25 ,  x8 ,  -72
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -376
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call _mbrtowc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -2
	beq x0, x15, .LBB1_133
.LBB1_124:                              //  %if.end643
                                        //    in Loop: Header=BB1_120 Depth=2
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	beq x0, x26, .LBB1_128
.LBB1_125:                              //  %if.end643
                                        //    in Loop: Header=BB1_120 Depth=2
	xori x15 ,  x26 ,  -1
	bltu x0, x15, .LBB1_126
.LBB1_468:                              //  %if.end643
	jal x0, .LBB1_433
.LBB1_126:                              //  %if.then656
                                        //    in Loop: Header=BB1_120 Depth=2
	lw x27 ,  -72 ( x8 )
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB1_129
.LBB1_127:                              //    in Loop: Header=BB1_120 Depth=2
	addi x26 ,  x0 ,  -1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x8 ,  -328
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB1_132
	jal x0, .LBB1_413
.LBB1_128:                              //  %if.then656.thread
                                        //    in Loop: Header=BB1_120 Depth=2
	add x27 ,  x0 ,  x0
	sw x0 ,  -72 ( x8 )
.LBB1_129:                              //  %if.end.i
                                        //    in Loop: Header=BB1_120 Depth=2
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
	bne x10, x15, .LBB1_131
.LBB1_130:                              //    in Loop: Header=BB1_120 Depth=2
	lbu x26 ,  -61 ( x8 )
.LBB1_131:                              //  %if.end.i
                                        //    in Loop: Header=BB1_120 Depth=2
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	addi x25 ,  x8 ,  -72
	addi x15 ,  x8 ,  -328
	add x15 ,  x26 ,  x15
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB1_132
.LBB1_469:                              //  %if.end.i
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_413
.LBB1_132:                              //  %if.end670
                                        //    in Loop: Header=BB1_120 Depth=2
	lw x14 ,  -376 ( x8 )
	add x20 ,  x20 ,  x24
	add x24 ,  x0 ,  x0
	lw x26 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x14 ,  x14 ,  4
	xori x15 ,  x26 ,  3
	sltu x14 ,  x0 ,  x14
	sltu x15 ,  x0 ,  x15
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
.LBB1_133:                              //  %if.end712
                                        //    in Loop: Header=BB1_120 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_118
.LBB1_134:                              //  %land.lhs.true716
                                        //    in Loop: Header=BB1_120 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_118
.LBB1_135:                              //    in Loop: Header=BB1_4 Depth=1
	add x15 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB1_470
.LBB1_471:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_419
.LBB1_470:
	jal x0, .LBB1_433
.LBB1_136:                              //  %if.then946
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x24 ,  x25 ,  16
	beq x0, x24, .LBB1_202
.LBB1_137:                              //    in Loop: Header=BB1_4 Depth=1
	addi x13 ,  x8 ,  -72
	jal x0, .LBB1_204
.LBB1_138:                              //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x0 ,  39
.LBB1_139:                              //  %sw.bb1336
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  3456&4095
	lui x13 ,  (3456>>12)&1048575
	addi x24 ,  x8 ,  -368
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	or x25 ,  x13 ,  x25
	beq x0, x27, .LBB1_142
.LBB1_140:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	bltu x14, x15, .LBB1_143
.LBB1_141:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26 ,  -396 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_144
.LBB1_142:                              //    in Loop: Header=BB1_4 Depth=1
	add x23 ,  x0 ,  x0
	add x26 ,  x0 ,  x23
	add x27 ,  x26 ,  x24
	andi x15 ,  x25 ,  256
	bltu x0, x15, .LBB1_169
	jal x0, .LBB1_172
.LBB1_143:                              //    in Loop: Header=BB1_4 Depth=1
	addi x15 ,  x23 ,  -39
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
.LBB1_144:                              //  %for.body1347.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x23 ,  x0 ,  x26
	jal x0, .LBB1_147
.LBB1_180:                              //  %for.cond421.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
.LBB1_181:                              //  %for.cond421
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  4 ( x18 )
	bge x15, x23, .LBB1_205
.LBB1_182:                              //  %if.then425
                                        //    in Loop: Header=BB1_181 Depth=2
	lw x14 ,  0 ( x18 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	sub x23 ,  x23 ,  x15
	add x24 ,  x24 ,  x15
	add x14 ,  x15 ,  x14
	sw x14 ,  0 ( x18 )
	call __srefill_r
	beq x0, x10, .LBB1_181
.LBB1_183:                              //  %if.then432
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_206
	jal x0, .LBB1_433
.LBB1_184:                              //  %while.cond759.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x24 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x24
	lbu x14 ,  0 ( x14 )
	bltu x0, x14, .LBB1_185
.LBB1_472:                              //  %while.cond759.preheader
	jal x0, .LBB1_436
.LBB1_185:                              //  %while.body764.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x14 ,  x20 ,  1
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_187
.LBB1_186:                              //  %if.end786
                                        //    in Loop: Header=BB1_187 Depth=2
	lbu x14 ,  0 ( x15 )
	addi x23 ,  x23 ,  -1
	add x13 ,  x14 ,  x24
	addi x14 ,  x20 ,  1
	lbu x13 ,  0 ( x13 )
	beq x0, x13, .LBB1_43
.LBB1_187:                              //  %while.body764
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x20 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x0, x23, .LBB1_43
.LBB1_188:                              //  %if.end774
                                        //    in Loop: Header=BB1_187 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB1_186
.LBB1_189:                              //  %land.lhs.true778
                                        //    in Loop: Header=BB1_187 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_43
.LBB1_190:                              //  %land.lhs.true778.if.end786_crit_edge
                                        //    in Loop: Header=BB1_187 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_186
.LBB1_191:                              //  %while.cond1163.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	or x13 ,  x22 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_219
.LBB1_192:                              //  %while.body1170.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x14 ,  x0 ,  1
	jal x0, .LBB1_194
.LBB1_193:                              //  %if.end1188
                                        //    in Loop: Header=BB1_194 Depth=2
	lbu x14 ,  0 ( x15 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	add x13 ,  x14 ,  x13
	addi x14 ,  x24 ,  1
	lbu x13 ,  1 ( x13 )
	andi x13 ,  x13 ,  8
	bltu x0, x13, .LBB1_220
.LBB1_194:                              //  %while.body1170
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x24 ,  x0 ,  x14
	lw x14 ,  4 ( x18 )
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	addi x13 ,  x14 ,  -1
	sw x13 ,  4 ( x18 )
	beq x23, x24, .LBB1_220
.LBB1_195:                              //  %if.end1180
                                        //    in Loop: Header=BB1_194 Depth=2
	slti x13 ,  x0 ,  1
	blt x13, x14, .LBB1_193
.LBB1_196:                              //  %land.lhs.true1184
                                        //    in Loop: Header=BB1_194 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_220
.LBB1_197:                              //  %land.lhs.true1184.if.end1188_crit_edge
                                        //    in Loop: Header=BB1_194 Depth=2
	lw x15 ,  0 ( x18 )
	jal x0, .LBB1_193
.LBB1_198:                              //  %if.else244
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_221
.LBB1_199:                              //  %if.else299
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	add x24 ,  x0 ,  x27
	add x26 ,  x0 ,  x27
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	sw x27 ,  -396 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_286
	jal x0, .LBB1_432
.LBB1_200:                              //  %if.else555
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_225
.LBB1_201:                              //  %if.else615
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	add x14 ,  x0 ,  x0
	lw x25 ,  0 ( x15 )
	sw x14 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x14 ,  -396 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_315
	jal x0, .LBB1_433
.LBB1_202:                              //  %if.else954
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  128
	bltu x0, x15, .LBB1_229
.LBB1_203:                              //  %if.else1014
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	add x27 ,  x0 ,  x0
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x13 ,  0 ( x15 )
.LBB1_204:                              //  %if.end1017
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x27
	sw x27 ,  -400 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_341
.LBB1_205:                              //  %if.else438
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x15 ,  x15 ,  x23
	add x24 ,  x24 ,  x23
	sw x15 ,  4 ( x18 )
	lw x15 ,  0 ( x18 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x18 )
.LBB1_206:                              //  %cleanup447.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_207:                              //  %if.then453
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB1_208
.LBB1_473:                              //  %if.then453
	jal x0, .LBB1_436
.LBB1_208:                              //  %if.end457
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10 ,  x0 ,  x23
	call malloc
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB1_209
.LBB1_474:                              //  %if.end457
	jal x0, .LBB1_435
.LBB1_209:                              //  %if.end462
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x24 ,  0 ( x25 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_240
.LBB1_210:                              //  %if.end462.if.end502_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_243
.LBB1_211:                              //  %if.then797
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x25 ,  0 ( x15 )
	bltu x0, x25, .LBB1_212
.LBB1_475:                              //  %if.then797
	jal x0, .LBB1_436
.LBB1_212:                              //  %if.end801
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x26 ,  x0 ,  x10
	bltu x0, x26, .LBB1_213
.LBB1_476:                              //  %if.end801
	jal x0, .LBB1_435
.LBB1_213:                              //  %if.end805
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x26 ,  0 ( x25 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_250
.LBB1_214:                              //  %if.end805.if.end845_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_253
.LBB1_215:                              //  %if.then1196
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_216
.LBB1_477:                              //  %if.then1196
	jal x0, .LBB1_436
.LBB1_216:                              //  %if.end1200
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x24 ,  x0 ,  32
	add x10 ,  x0 ,  x24
	call malloc
	add x25 ,  x0 ,  x10
	bltu x0, x25, .LBB1_217
.LBB1_478:                              //  %if.end1200
	jal x0, .LBB1_435
.LBB1_217:                              //  %if.end1204
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_265
.LBB1_218:                              //  %if.end1204.if.end1244_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_268
.LBB1_219:                              //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x0
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_220:                              //  %while.end1189
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_221:                              //  %if.then247
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_222
.LBB1_479:                              //  %if.then247
	jal x0, .LBB1_436
.LBB1_222:                              //  %if.end251
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x25 ,  x0 ,  x10
	addi x27 ,  x0 ,  -1
	bltu x0, x25, .LBB1_223
.LBB1_480:                              //  %if.end251
	jal x0, .LBB1_436
.LBB1_223:                              //  %if.end255
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x25 ,  0 ( x15 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_280
.LBB1_224:                              //  %if.end255.if.end292_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_283
.LBB1_225:                              //  %if.then558
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_226
.LBB1_481:                              //  %if.then558
	jal x0, .LBB1_447
.LBB1_226:                              //  %if.end562
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	add x12 ,  x0 ,  x10
	addi x25 ,  x0 ,  -1
	bltu x0, x12, .LBB1_227
.LBB1_482:                              //  %if.end562
	jal x0, .LBB1_445
.LBB1_227:                              //  %if.end566
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x12 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x12 ,  0 ( x15 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_309
.LBB1_228:                              //  %if.end566.if.end606_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_312
.LBB1_229:                              //  %if.then957
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x27 ,  0 ( x15 )
	bltu x0, x27, .LBB1_230
.LBB1_483:                              //  %if.then957
	jal x0, .LBB1_448
.LBB1_230:                              //  %if.end961
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x10 ,  x0 ,  128
	call malloc
	addi x25 ,  x0 ,  -1
	bltu x0, x10, .LBB1_231
.LBB1_484:                              //  %if.end961
	jal x0, .LBB1_445
.LBB1_231:                              //  %if.end965
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x27 )
	lhu x14 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
	bgeu x15, x14, .LBB1_337
.LBB1_232:                              //  %if.end965.if.end1005_crit_edge
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x10
	lw x10 ,  0 ( x9 )
	jal x0, .LBB1_340
.LBB1_234:                              //  %if.then175
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_235:                              //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	sw x26 ,  -396 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x0 ,  x26
	add x25 ,  x0 ,  x26
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB1_305
	jal x0, .LBB1_308
.LBB1_164:                              //  %if.end1364
                                        //    in Loop: Header=BB1_147 Depth=2
	sltu x14 ,  x0 ,  x14
	addi x23 ,  x23 ,  1
	andi x25 ,  x25 ,  -897
	sw x13 ,  -396 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x14 ,  x27
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	bge x0, x14, .LBB1_167
.LBB1_145:                              //  %if.then1411
                                        //    in Loop: Header=BB1_147 Depth=2
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
.LBB1_146:                              //  %for.inc1420
                                        //    in Loop: Header=BB1_147 Depth=2
	addi x27 ,  x27 ,  -1
	beq x0, x27, .LBB1_168
.LBB1_147:                              //  %for.body1347
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  0 ( x18 )
	addi x12 ,  x0 ,  77
	lbu x14 ,  0 ( x15 )
	addi x13 ,  x14 ,  -43
	bltu x12, x13, .LBB1_168
.LBB1_148:                              //  %for.body1347
                                        //    in Loop: Header=BB1_147 Depth=2
	lui x30 ,  JTI1_2&4095
	lui x12 ,  (JTI1_2>>12)&1048575
	slli x13 ,  x13 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	add x13 ,  x12 ,  x13
	lw x13 ,  0 ( x13 )
	jalr x0 ,  0 ( x13 )
.LBB1_149:                              //  %sw.bb1384
                                        //    in Loop: Header=BB1_147 Depth=2
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	slti x13 ,  x13 ,  11
	bltu x0, x13, .LBB1_168
.LBB1_150:                              //  %if.end1388
                                        //    in Loop: Header=BB1_147 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x25 ,  x13 ,  x25
	jal x0, .LBB1_166
.LBB1_151:                              //  %sw.bb1372
                                        //    in Loop: Header=BB1_147 Depth=2
	lui x30 ,  -2945&4095
	lui x13 ,  (-2945>>12)&1048575
	lui x12 ,  (__svfiscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  __svfiscanf_r.basefix&4095
	and x25 ,  x13 ,  x25
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x13 ,  1&31
	add x13 ,  x13 ,  x12
	lh x13 ,  0 ( x13 )
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	jal x0, .LBB1_166
.LBB1_152:                              //  %sw.bb1390
                                        //    in Loop: Header=BB1_147 Depth=2
	andi x13 ,  x25 ,  128
	beq x0, x13, .LBB1_168
.LBB1_153:                              //  %if.then1393
                                        //    in Loop: Header=BB1_147 Depth=2
	andi x25 ,  x25 ,  -129
	jal x0, .LBB1_166
.LBB1_154:                              //  %sw.bb1376
                                        //    in Loop: Header=BB1_147 Depth=2
	lw x11 ,  -384 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  __svfiscanf_r.basefix&4095
	lui x12 ,  (__svfiscanf_r.basefix>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	slli x13 ,  x11 ,  1&31
	add x13 ,  x13 ,  x12
	addi x12 ,  x11 ,  -1
	lh x13 ,  0 ( x13 )
	sltiu x12 ,  x12 ,  8
	bltu x0, x12, .LBB1_425
.LBB1_155:                              //  %if.end1382
                                        //    in Loop: Header=BB1_147 Depth=2
	lui x30 ,  -2945&4095
	lui x12 ,  (-2945>>12)&1048575
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x12 ,  x12 ,  x30
	and x25 ,  x12 ,  x25
	jal x0, .LBB1_166
.LBB1_156:                              //  %sw.bb1396
                                        //    in Loop: Header=BB1_147 Depth=2
	andi x13 ,  x25 ,  1536
	xori x13 ,  x13 ,  512
	bltu x0, x13, .LBB1_168
.LBB1_157:                              //  %if.then1400
                                        //    in Loop: Header=BB1_147 Depth=2
	addi x13 ,  x0 ,  16
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	andi x13 ,  x25 ,  -1793
	ori x25 ,  x13 ,  1280
	jal x0, .LBB1_166
.LBB1_158:                              //  %sw.bb1350
                                        //    in Loop: Header=BB1_147 Depth=2
	lui x30 ,  2048&4095
	lui x13 ,  (2048>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x25
	beq x0, x13, .LBB1_166
.LBB1_159:                              //  %if.end1354
                                        //    in Loop: Header=BB1_147 Depth=2
	lw x12 ,  -384 ( x8 )           //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	bne x12, x13, .LBB1_161
.LBB1_160:                              //    in Loop: Header=BB1_147 Depth=2
	ori x25 ,  x25 ,  512
	addi x12 ,  x0 ,  8
	sw x12 ,  -384 ( x8 )           //  4-byte Folded Spill
.LBB1_161:                              //  %if.end1354
                                        //    in Loop: Header=BB1_147 Depth=2
	andi x12 ,  x25 ,  1024
	bltu x0, x12, .LBB1_165
.LBB1_162:                              //  %if.end1364
                                        //    in Loop: Header=BB1_147 Depth=2
	lw x14 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x14, x13, .LBB1_164
.LBB1_163:                              //  %if.end1364
                                        //    in Loop: Header=BB1_147 Depth=2
	addi x13 ,  x14 ,  -1
	jal x0, .LBB1_164
.LBB1_165:                              //  %if.then1362
                                        //    in Loop: Header=BB1_147 Depth=2
	andi x25 ,  x25 ,  -1409
.LBB1_166:                              //  %ok
                                        //    in Loop: Header=BB1_147 Depth=2
	add x13 ,  x26 ,  x24
	addi x26 ,  x26 ,  1
	sb x14 ,  0 ( x13 )
	lw x14 ,  4 ( x18 )
	addi x14 ,  x14 ,  -1
	sw x14 ,  4 ( x18 )
	blt x0, x14, .LBB1_145
.LBB1_167:                              //  %if.else1414
                                        //    in Loop: Header=BB1_147 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_146
.LBB1_168:                              //  %for.end1422
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x26 ,  x24
	andi x15 ,  x25 ,  256
	beq x0, x15, .LBB1_172
.LBB1_169:                              //  %if.then1425
                                        //    in Loop: Header=BB1_4 Depth=1
	bge x0, x26, .LBB1_171
.LBB1_170:                              //  %if.then1429
                                        //    in Loop: Header=BB1_4 Depth=1
	lb x11 ,  -1 ( x27 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call _ungetc_r
	addi x27 ,  x27 ,  -1
.LBB1_171:                              //  %if.end1433
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x27, x24, .LBB1_446
.LBB1_172:                              //  %if.end1439
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  16
	bltu x0, x15, .LBB1_238
.LBB1_173:                              //  %if.then1443
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	sb x0 ,  0 ( x27 )
	lw x15 ,  -388 ( x8 )           //  4-byte Folded Reload
	call_reg, 0 ( x15 )
	andi x15 ,  x25 ,  32
	bltu x0, x15, .LBB1_178
.LBB1_174:                              //  %if.else1450
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  8
	bltu x0, x15, .LBB1_233
.LBB1_175:                              //  %if.else1456
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  4
	bltu x0, x15, .LBB1_236
.LBB1_176:                              //  %if.else1462
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  1
	bltu x0, x15, .LBB1_178
.LBB1_177:                              //  %if.else1467
                                        //    in Loop: Header=BB1_4 Depth=1
	andi x15 ,  x25 ,  2
	bltu x0, x15, .LBB1_426
.LBB1_178:                              //  %if.else1481
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
.LBB1_179:                              //  %if.end1487
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x15 )
	jal x0, .LBB1_237
.LBB1_233:                              //  %if.then1453
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sb x10 ,  0 ( x15 )
	jal x0, .LBB1_237
.LBB1_236:                              //  %if.then1459
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x10 ,  0 ( x15 )
.LBB1_237:                              //  %if.end1487
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -392 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  1
	sw x15 ,  -392 ( x8 )           //  4-byte Folded Spill
.LBB1_238:                              //  %cleanup1496.thread
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x15 ,  x20 ,  x24
	add x15 ,  x23 ,  x15
	add x20 ,  x27 ,  x15
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	bltu x0, x15, .LBB1_4
	jal x0, .LBB1_436
.LBB1_239:                              //    in Loop: Header=BB1_4 Depth=1
	add x15 ,  x0 ,  x0
	addi x25 ,  x8 ,  -72
	sw x15 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	lw x15 ,  -412 ( x8 )           //  4-byte Folded Reload
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	bltu x0, x15, .LBB1_43
	jal x0, .LBB1_420
.LBB1_240:                              //  %if.then470
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_438
.LBB1_241:                              //  %if.end490
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_438
.LBB1_242:                              //  %cleanup499
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_243:                              //  %if.end502
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
.LBB1_244:                              //  %if.end513
                                        //    in Loop: Header=BB1_4 Depth=1
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x18
	call _fread_r
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB1_433
.LBB1_245:                              //  %if.end518
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_249
.LBB1_246:                              //  %if.end518
                                        //    in Loop: Header=BB1_4 Depth=1
	bgeu x24, x23, .LBB1_249
.LBB1_247:                              //  %if.then524
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x25 )
	add x11 ,  x0 ,  x24
	call realloc
	beq x0, x10, .LBB1_249
.LBB1_248:                              //  %if.then529
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB1_249:                              //  %cleanup534.thread2298
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x24
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_485
.LBB1_486:                              //  %cleanup534.thread2298
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_485:                              //  %cleanup534.thread2298
	jal x0, .LBB1_436
.LBB1_250:                              //  %if.then813
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_438
.LBB1_251:                              //  %if.end833
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_438
.LBB1_252:                              //  %cleanup842
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_253:                              //  %if.end845
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x25 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
.LBB1_254:                              //  %if.end856
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	sw x25 ,  -396 ( x8 )           //  4-byte Folded Spill
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_264
.LBB1_255:                              //  %while.body862.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x25, .LBB1_386
.LBB1_256:                              //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x26
	jal x0, .LBB1_258
.LBB1_257:                              //  %if.end908
                                        //    in Loop: Header=BB1_258 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_394
.LBB1_258:                              //  %while.body862
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
	bltu x27, x24, .LBB1_261
.LBB1_259:                              //  %if.then877
                                        //    in Loop: Header=BB1_258 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x24
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB1_435
.LBB1_260:                              //  %if.end883
                                        //    in Loop: Header=BB1_258 Depth=2
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	add x25 ,  x27 ,  x26
	sw x26 ,  0 ( x15 )
.LBB1_261:                              //  %cleanup.cont891
                                        //    in Loop: Header=BB1_258 Depth=2
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB1_394
.LBB1_262:                              //  %if.end896
                                        //    in Loop: Header=BB1_258 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_257
.LBB1_263:                              //  %land.lhs.true900
                                        //    in Loop: Header=BB1_258 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_257
	jal x0, .LBB1_392
.LBB1_264:                              //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x26
	sub x23 ,  x25 ,  x26
	bltu x0, x23, .LBB1_395
	jal x0, .LBB1_436
.LBB1_265:                              //  %if.then1212
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_438
.LBB1_266:                              //  %if.end1232
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_438
.LBB1_267:                              //  %cleanup1241
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_268:                              //  %if.end1244
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
.LBB1_269:                              //  %if.end1255
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_279
.LBB1_270:                              //  %while.body1264.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x0, x14, .LBB1_400
.LBB1_271:                              //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x25
	jal x0, .LBB1_273
.LBB1_272:                              //  %if.end1306
                                        //    in Loop: Header=BB1_273 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_406
.LBB1_273:                              //  %while.body1264
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
	bltu x26, x24, .LBB1_276
.LBB1_274:                              //  %if.then1279
                                        //    in Loop: Header=BB1_273 Depth=2
	slli x24 ,  x24 ,  1&31
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x24
	call realloc
	add x25 ,  x0 ,  x10
	beq x0, x25, .LBB1_435
.LBB1_275:                              //  %if.end1285
                                        //    in Loop: Header=BB1_273 Depth=2
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x26 ,  x25
	sw x25 ,  0 ( x15 )
.LBB1_276:                              //  %cleanup.cont1293
                                        //    in Loop: Header=BB1_273 Depth=2
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB1_406
.LBB1_277:                              //  %if.end1298
                                        //    in Loop: Header=BB1_273 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_272
.LBB1_278:                              //  %land.lhs.true1302
                                        //    in Loop: Header=BB1_273 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_272
	jal x0, .LBB1_406
.LBB1_279:                              //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x25
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	bltu x0, x15, .LBB1_407
	jal x0, .LBB1_410
.LBB1_280:                              //  %if.then263
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_436
.LBB1_281:                              //  %if.end283
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_436
.LBB1_282:                              //  %cleanup
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_283:                              //  %if.end292
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	addi x27 ,  x0 ,  32
	add x26 ,  x0 ,  x25
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_286
	jal x0, .LBB1_432
.LBB1_284:                              //  %if.end388
                                        //    in Loop: Header=BB1_286 Depth=2
	beq x0, x23, .LBB1_304
.LBB1_285:                              //  %while.body306
                                        //    in Loop: Header=BB1_286 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB1_432
.LBB1_286:                              //  %if.end311
                                        //    Parent Loop BB1_4 Depth=1
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
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_288
.LBB1_287:                              //  %if.end311
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_289
.LBB1_288:                              //  %if.then324
                                        //    in Loop: Header=BB1_286 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_289:                              //  %if.end326
                                        //    in Loop: Header=BB1_286 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -380 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_301
.LBB1_290:                              //  %if.end326
                                        //    in Loop: Header=BB1_286 Depth=2
	beq x0, x10, .LBB1_294
.LBB1_291:                              //  %if.end326
                                        //    in Loop: Header=BB1_286 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_432
.LBB1_292:                              //  %if.then342
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x24
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_295
.LBB1_293:                              //  %if.then342
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_296
	jal x0, .LBB1_295
.LBB1_294:                              //  %if.then338
                                        //    in Loop: Header=BB1_286 Depth=2
	add x20 ,  x20 ,  x24
	sw x0 ,  0 ( x25 )
.LBB1_295:                              //  %if.then350
                                        //    in Loop: Header=BB1_286 Depth=2
	addi x23 ,  x23 ,  -1
.LBB1_296:                              //  %if.then355
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_300
.LBB1_297:                              //  %if.then355
                                        //    in Loop: Header=BB1_286 Depth=2
	sub x15 ,  x25 ,  x26
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB1_300
.LBB1_298:                              //  %if.then360
                                        //    in Loop: Header=BB1_286 Depth=2
	slli x11 ,  x27 ,  3&31
	add x10 ,  x0 ,  x26
	call realloc
	add x26 ,  x0 ,  x10
	beq x0, x26, .LBB1_435
.LBB1_299:                              //  %if.end365
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x27 ,  x27 ,  1&31
	sw x26 ,  0 ( x15 )
	slli x15 ,  x24 ,  2&31
	add x25 ,  x15 ,  x26
.LBB1_300:                              //  %cleanup.cont373
                                        //    in Loop: Header=BB1_286 Depth=2
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
.LBB1_301:                              //  %if.end376
                                        //    in Loop: Header=BB1_286 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_284
.LBB1_302:                              //  %land.lhs.true380
                                        //    in Loop: Header=BB1_286 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_284
.LBB1_303:                              //  %if.then383
                                        //    in Loop: Header=BB1_4 Depth=1
	bltu x0, x24, .LBB1_432
.LBB1_304:                              //  %while.end389
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_308
.LBB1_305:                              //  %while.end389
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x11 ,  x25 ,  x26
	srai x15 ,  x11 ,  2&31
	bgeu x15, x27, .LBB1_308
.LBB1_306:                              //  %if.then399
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_308
.LBB1_307:                              //  %if.then403
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_308:                              //  %cleanup411
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -400 ( x8 )           //  4-byte Folded Reload
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	add x27 ,  x15 ,  x27
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_487
.LBB1_488:                              //  %cleanup411
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_487:                              //  %cleanup411
	jal x0, .LBB1_436
.LBB1_309:                              //  %if.then574
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_445
.LBB1_310:                              //  %if.end594
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_445
.LBB1_311:                              //  %cleanup603
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	lw x12 ,  -404 ( x8 )           //  4-byte Folded Reload
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_312:                              //  %if.end606
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x25 ,  x0 ,  x12
	add x14 ,  x14 ,  x10
	sw x13 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	call __locale_mb_cur_max
	bne x24, x10, .LBB1_315
	jal x0, .LBB1_433
.LBB1_313:                              //  %if.end724.us
                                        //    in Loop: Header=BB1_315 Depth=2
	beq x0, x23, .LBB1_419
.LBB1_314:                              //  %while.body622.us
                                        //    in Loop: Header=BB1_315 Depth=2
	call __locale_mb_cur_max
	beq x24, x10, .LBB1_433
.LBB1_315:                              //  %if.end627.us
                                        //    Parent Loop BB1_4 Depth=1
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
	xori x15 ,  x26 ,  3
	bltu x0, x15, .LBB1_317
.LBB1_316:                              //  %if.end627.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x15 ,  -376 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_318
.LBB1_317:                              //  %if.then641.us
                                        //    in Loop: Header=BB1_315 Depth=2
	addi x10 ,  x8 ,  -376
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_318:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_315 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -376
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call _mbrtowc_r
	add x26 ,  x0 ,  x10
	xori x15 ,  x26 ,  -2
	beq x0, x15, .LBB1_334
.LBB1_319:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_315 Depth=2
	sw x25 ,  -400 ( x8 )           //  4-byte Folded Spill
	beq x0, x26, .LBB1_323
.LBB1_320:                              //  %if.end643.us
                                        //    in Loop: Header=BB1_315 Depth=2
	xori x15 ,  x26 ,  -1
	beq x0, x15, .LBB1_433
.LBB1_321:                              //  %if.then656.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x25 ,  0 ( x25 )
	xori x15 ,  x25 ,  -1
	bltu x0, x15, .LBB1_324
.LBB1_322:                              //    in Loop: Header=BB1_315 Depth=2
	addi x27 ,  x0 ,  -1
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	jal x0, .LBB1_327
.LBB1_323:                              //  %if.then656.thread.us
                                        //    in Loop: Header=BB1_315 Depth=2
	sw x0 ,  0 ( x25 )
	add x25 ,  x0 ,  x0
.LBB1_324:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_315 Depth=2
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	addi x26 ,  x8 ,  -60
	add x27 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call memset
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	addi x11 ,  x8 ,  -61
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	slti x15 ,  x0 ,  1
	bne x10, x15, .LBB1_326
.LBB1_325:                              //    in Loop: Header=BB1_315 Depth=2
	lbu x27 ,  -61 ( x8 )
.LBB1_326:                              //  %if.end.i.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x25 ,  -400 ( x8 )           //  4-byte Folded Reload
	lw x26 ,  -380 ( x8 )           //  4-byte Folded Reload
.LBB1_327:                              //  %__wctob.exit.us
                                        //    in Loop: Header=BB1_315 Depth=2
	addi x15 ,  x8 ,  -328
	lw x10 ,  -404 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x27 ,  x15
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB1_417
.LBB1_328:                              //  %if.end670.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x14 ,  -376 ( x8 )
	xori x15 ,  x26 ,  3
	add x20 ,  x20 ,  x24
	add x24 ,  x0 ,  x0
	addi x25 ,  x25 ,  4
	sltu x15 ,  x0 ,  x15
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	xori x14 ,  x14 ,  4
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_334
.LBB1_329:                              //  %if.end670.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x27 ,  -408 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x10
	add x14 ,  x0 ,  x25
	srai x25 ,  x15 ,  2&31
	bltu x25, x27, .LBB1_332
.LBB1_330:                              //  %if.then696.us
                                        //    in Loop: Header=BB1_315 Depth=2
	slli x11 ,  x27 ,  3&31
	call realloc
	beq x0, x10, .LBB1_444
.LBB1_331:                              //  %if.end702.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x27 ,  x27 ,  1&31
	sw x10 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x27 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  0 ( x15 )
	slli x15 ,  x25 ,  2&31
	add x25 ,  x15 ,  x10
	jal x0, .LBB1_333
.LBB1_332:                              //    in Loop: Header=BB1_315 Depth=2
	add x25 ,  x0 ,  x14
.LBB1_333:                              //  %if.end712.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
.LBB1_334:                              //  %if.end712.us
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_313
.LBB1_335:                              //  %land.lhs.true716.us
                                        //    in Loop: Header=BB1_315 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_313
.LBB1_336:                              //  %if.then719
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x24, .LBB1_419
	jal x0, .LBB1_433
.LBB1_337:                              //  %if.then973
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  65534&4095
	addi x15 ,  x14 ,  8
	lui x14 ,  (65534>>12)&1048575
	add x26 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_445
.LBB1_338:                              //  %if.end993
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x9 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_445
.LBB1_339:                              //  %cleanup1002
                                        //    in Loop: Header=BB1_4 Depth=1
	lh x15 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	addi x15 ,  x15 ,  8
	sh x15 ,  4 ( x9 )
	lhu x15 ,  6 ( x9 )
.LBB1_340:                              //  %if.end1005
                                        //    in Loop: Header=BB1_4 Depth=1
	slli x14 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	add x13 ,  x0 ,  x26
	add x14 ,  x14 ,  x10
	sw x27 ,  0 ( x14 )
	sh x15 ,  6 ( x9 )
	addi x15 ,  x0 ,  32
	sw x15 ,  -400 ( x8 )           //  4-byte Folded Spill
.LBB1_341:                              //  %if.end1017
                                        //    in Loop: Header=BB1_4 Depth=1
	lui x30 ,  _ctype_&4095
	sw x24 ,  -404 ( x8 )           //  4-byte Folded Spill
	sw x26 ,  -396 ( x8 )           //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	beq x0, x23, .LBB1_363
.LBB1_342:                              //  %if.end1017
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	bltu x0, x15, .LBB1_364
.LBB1_343:                              //  %while.body1027.lr.ph
                                        //    in Loop: Header=BB1_4 Depth=1
	add x26 ,  x0 ,  x0
	bltu x0, x24, .LBB1_371
.LBB1_344:                              //  %while.body1027.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x13
.LBB1_345:                              //  %while.body1027.us
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB1_432
.LBB1_346:                              //  %if.end1032.us
                                        //    in Loop: Header=BB1_345 Depth=2
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
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_348
.LBB1_347:                              //  %if.end1032.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_349
.LBB1_348:                              //  %if.then1046.us
                                        //    in Loop: Header=BB1_345 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_349:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_345 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -380 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_359
.LBB1_350:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_345 Depth=2
	beq x0, x10, .LBB1_353
.LBB1_351:                              //  %if.end1048.us
                                        //    in Loop: Header=BB1_345 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_432
.LBB1_352:                              //  %if.end1048.us.if.then1061.us_crit_edge
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10 ,  0 ( x24 )
	call iswspace
	beq x0, x10, .LBB1_354
	jal x0, .LBB1_415
.LBB1_353:                              //  %if.then1057.us
                                        //    in Loop: Header=BB1_345 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x24 )
	call iswspace
	bltu x0, x10, .LBB1_415
.LBB1_354:                              //  %if.end1074.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x26
	add x26 ,  x0 ,  x0
	addi x24 ,  x24 ,  4
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x15 ,  3
	xori x14 ,  x14 ,  4
	sltu x15 ,  x0 ,  x15
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
	beq x0, x27, .LBB1_359
.LBB1_355:                              //  %if.end1074.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x10 ,  -396 ( x8 )           //  4-byte Folded Reload
	add x25 ,  x0 ,  x27
	add x14 ,  x0 ,  x24
	lw x27 ,  -400 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x24 ,  x10
	srai x24 ,  x15 ,  2&31
	bltu x24, x27, .LBB1_358
.LBB1_356:                              //  %if.then1100.us
                                        //    in Loop: Header=BB1_345 Depth=2
	slli x11 ,  x27 ,  3&31
	call realloc
	beq x0, x10, .LBB1_444
.LBB1_357:                              //  %if.end1106.us
                                        //    in Loop: Header=BB1_345 Depth=2
	slli x15 ,  x24 ,  2&31
	slli x27 ,  x27 ,  1&31
	sw x10 ,  0 ( x25 )
	sw x10 ,  -396 ( x8 )           //  4-byte Folded Spill
	sw x27 ,  -400 ( x8 )           //  4-byte Folded Spill
	add x24 ,  x15 ,  x10
	add x27 ,  x0 ,  x25
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_361
	jal x0, .LBB1_360
.LBB1_358:                              //    in Loop: Header=BB1_345 Depth=2
	add x27 ,  x0 ,  x25
	add x24 ,  x0 ,  x14
.LBB1_359:                              //  %if.end1116.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_361
.LBB1_360:                              //  %land.lhs.true1120.us
                                        //    in Loop: Header=BB1_345 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_424
.LBB1_361:                              //  %if.end1128.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	beq x0, x23, .LBB1_365
.LBB1_362:                              //  %if.end1128.us
                                        //    in Loop: Header=BB1_345 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB1_345
	jal x0, .LBB1_365
.LBB1_363:                              //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x13
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	bltu x0, x15, .LBB1_366
.LBB1_367:                              //  %if.then1132
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x0 ,  0 ( x24 )
	beq x0, x27, .LBB1_411
.LBB1_368:                              //  %if.then1132
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -400 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x24 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB1_411
.LBB1_369:                              //  %if.then1143
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x27 )
	slli x11 ,  x15 ,  2&31
	call realloc
	beq x0, x10, .LBB1_411
.LBB1_370:                              //  %if.then1148
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x27 )
	jal x0, .LBB1_411
.LBB1_364:                              //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x13
.LBB1_365:                              //  %while.end1129
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	beq x0, x15, .LBB1_367
.LBB1_366:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_489
.LBB1_490:                              //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_489:
	jal x0, .LBB1_436
.LBB1_371:                              //  %while.body1027.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x24 ,  x0 ,  x13
.LBB1_372:                              //  %while.body1027
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call __locale_mb_cur_max
	beq x26, x10, .LBB1_432
.LBB1_373:                              //  %if.end1032
                                        //    in Loop: Header=BB1_372 Depth=2
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
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	xori x15 ,  x15 ,  3
	bltu x0, x15, .LBB1_375
.LBB1_374:                              //  %if.end1032
                                        //    in Loop: Header=BB1_372 Depth=2
	lw x15 ,  -60 ( x8 )
	xori x15 ,  x15 ,  4
	beq x0, x15, .LBB1_376
.LBB1_375:                              //  %if.then1046
                                        //    in Loop: Header=BB1_372 Depth=2
	addi x10 ,  x8 ,  -60
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	call memset
.LBB1_376:                              //  %if.end1048
                                        //    in Loop: Header=BB1_372 Depth=2
	addi x12 ,  x8 ,  -368
	addi x14 ,  x8 ,  -60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x26
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	sw x10 ,  -380 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_382
.LBB1_377:                              //  %if.end1048
                                        //    in Loop: Header=BB1_372 Depth=2
	beq x0, x10, .LBB1_380
.LBB1_378:                              //  %if.end1048
                                        //    in Loop: Header=BB1_372 Depth=2
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_432
.LBB1_379:                              //  %if.end1048.if.then1061_crit_edge
                                        //    in Loop: Header=BB1_372 Depth=2
	lw x10 ,  0 ( x24 )
	call iswspace
	beq x0, x10, .LBB1_381
	jal x0, .LBB1_415
.LBB1_380:                              //  %if.then1057
                                        //    in Loop: Header=BB1_372 Depth=2
	add x10 ,  x0 ,  x0
	sw x0 ,  0 ( x24 )
	call iswspace
	bltu x0, x10, .LBB1_415
.LBB1_381:                              //  %if.end1074
                                        //    in Loop: Header=BB1_372 Depth=2
	lw x15 ,  -380 ( x8 )           //  4-byte Folded Reload
	add x20 ,  x20 ,  x26
	add x26 ,  x0 ,  x0
	lw x14 ,  -60 ( x8 )
	xori x15 ,  x15 ,  3
	xori x14 ,  x14 ,  4
	sltu x15 ,  x0 ,  x15
	sltu x14 ,  x0 ,  x14
	or x15 ,  x15 ,  x14
	sub x23 ,  x23 ,  x15
.LBB1_382:                              //  %if.end1116
                                        //    in Loop: Header=BB1_372 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_384
.LBB1_383:                              //  %land.lhs.true1120
                                        //    in Loop: Header=BB1_372 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB1_424
.LBB1_384:                              //  %if.end1128
                                        //    in Loop: Header=BB1_372 Depth=2
	lui x30 ,  _ctype_&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	beq x0, x23, .LBB1_365
.LBB1_385:                              //  %if.end1128
                                        //    in Loop: Header=BB1_372 Depth=2
	lw x14 ,  0 ( x18 )
	lbu x14 ,  0 ( x14 )
	add x15 ,  x14 ,  x15
	lbu x15 ,  1 ( x15 )
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB1_372
	jal x0, .LBB1_365
.LBB1_386:                              //  %while.body862.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x25 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_388
.LBB1_387:                              //  %if.end908.us
                                        //    in Loop: Header=BB1_388 Depth=2
	lw x15 ,  0 ( x18 )
	addi x13 ,  x8 ,  -328
	addi x25 ,  x25 ,  1
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  0 ( x14 )
	beq x0, x14, .LBB1_393
.LBB1_388:                              //  %while.body862.us
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
	beq x23, x25, .LBB1_393
.LBB1_389:                              //  %if.end896.us
                                        //    in Loop: Header=BB1_388 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_387
.LBB1_390:                              //  %land.lhs.true900.us
                                        //    in Loop: Header=BB1_388 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_387
.LBB1_391:                              //  %if.then903.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
.LBB1_392:                              //  %if.then903
                                        //    in Loop: Header=BB1_4 Depth=1
	bne x25, x26, .LBB1_394
	jal x0, .LBB1_433
.LBB1_393:                              //  %while.end909.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x25 ,  x27 ,  1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
.LBB1_394:                              //  %while.end909
                                        //    in Loop: Header=BB1_4 Depth=1
	sub x23 ,  x25 ,  x26
	beq x0, x23, .LBB1_436
.LBB1_395:                              //  %if.end916
                                        //    in Loop: Header=BB1_4 Depth=1
	sb x0 ,  0 ( x25 )
	lw x25 ,  -396 ( x8 )           //  4-byte Folded Reload
	beq x0, x25, .LBB1_399
.LBB1_396:                              //  %if.end916
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB1_399
.LBB1_397:                              //  %if.then923
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x10 ,  0 ( x25 )
	call realloc
	beq x0, x10, .LBB1_399
.LBB1_398:                              //  %if.then928
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x10 ,  0 ( x25 )
.LBB1_399:                              //  %cleanup933.thread2354
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x23
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_491
.LBB1_492:                              //  %cleanup933.thread2354
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_491:                              //  %cleanup933.thread2354
	jal x0, .LBB1_436
.LBB1_400:                              //  %while.body1264.us.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	add x27 ,  x0 ,  x0
	addi x23 ,  x23 ,  -1
	jal x0, .LBB1_402
.LBB1_401:                              //  %if.end1306.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x15 ,  0 ( x18 )
	lui x30 ,  _ctype_&4095
	addi x27 ,  x27 ,  1
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	lbu x14 ,  0 ( x15 )
	add x14 ,  x14 ,  x13
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  8
	bltu x0, x14, .LBB1_405
.LBB1_402:                              //  %while.body1264.us
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
	beq x23, x27, .LBB1_405
.LBB1_403:                              //  %if.end1298.us
                                        //    in Loop: Header=BB1_402 Depth=2
	lw x15 ,  4 ( x18 )
	blt x0, x15, .LBB1_401
.LBB1_404:                              //  %land.lhs.true1302.us
                                        //    in Loop: Header=BB1_402 Depth=2
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB1_401
.LBB1_405:                              //  %while.end1307.loopexit
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x26 ,  1
.LBB1_406:                              //  %while.end1307
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sub x23 ,  x27 ,  x25
	sb x0 ,  0 ( x27 )
	beq x0, x15, .LBB1_410
.LBB1_407:                              //  %while.end1307
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x11 ,  x23 ,  1
	bgeu x11, x24, .LBB1_410
.LBB1_408:                              //  %if.then1317
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	lw x10 ,  0 ( x15 )
	call realloc
	beq x0, x10, .LBB1_410
.LBB1_409:                              //  %if.then1322
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
.LBB1_410:                              //  %cleanup1330
                                        //    in Loop: Header=BB1_4 Depth=1
	add x20 ,  x20 ,  x23
.LBB1_411:                              //  %if.end1335
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
.LBB1_412:                              //  %if.end1335
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x27 ,  x27 ,  1
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_493
.LBB1_494:                              //  %if.end1335
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_493:                              //  %if.end1335
	jal x0, .LBB1_436
.LBB1_413:                              //    in Loop: Header=BB1_4 Depth=1
	lw x26 ,  -380 ( x8 )           //  4-byte Folded Reload
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x15
	sw x15 ,  -396 ( x8 )           //  4-byte Folded Spill
	addi x23 ,  x8 ,  -369
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -404 ( x8 )           //  4-byte Folded Spill
	beq x0, x24, .LBB1_419
.LBB1_418:                              //  %while.body664
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x24 ,  x23
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _ungetc_r
	addi x24 ,  x24 ,  -1
	bltu x0, x24, .LBB1_418
.LBB1_419:                              //  %while.end725
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -412 ( x8 )           //  4-byte Folded Reload
	sw x26 ,  -380 ( x8 )           //  4-byte Folded Spill
	beq x0, x15, .LBB1_420
.LBB1_495:                              //  %while.end725
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_43
.LBB1_420:                              //  %if.then728
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	sw x0 ,  0 ( x25 )
	beq x0, x15, .LBB1_412
.LBB1_421:                              //  %if.then728
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -404 ( x8 )           //  4-byte Folded Reload
	lw x14 ,  -408 ( x8 )           //  4-byte Folded Reload
	sub x15 ,  x25 ,  x15
	srai x15 ,  x15 ,  2&31
	addi x15 ,  x15 ,  1
	bgeu x15, x14, .LBB1_412
.LBB1_422:                              //  %if.then739
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  -396 ( x8 )           //  4-byte Folded Reload
	slli x11 ,  x15 ,  2&31
	lw x10 ,  0 ( x14 )
	call realloc
	beq x0, x10, .LBB1_412
.LBB1_423:                              //  %if.then744
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -396 ( x8 )           //  4-byte Folded Reload
	addi x27 ,  x27 ,  1
	sw x10 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_496
.LBB1_497:                              //  %if.then744
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_496:                              //  %if.then744
	jal x0, .LBB1_436
.LBB1_414:                              //  %if.then180
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sh x20 ,  0 ( x15 )
	lbu x15 ,  0 ( x21 )
	sw x15 ,  -72 ( x8 )
	beq x0, x15, .LBB1_498
.LBB1_499:                              //  %if.then180
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_498:                              //  %if.then180
	jal x0, .LBB1_436
.LBB1_415:                              //  %while.cond1065.preheader
                                        //    in Loop: Header=BB1_4 Depth=1
	addi x23 ,  x8 ,  -369
	beq x0, x26, .LBB1_365
.LBB1_416:                              //  %while.body1068
                                        //    Parent Loop BB1_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x15 ,  x26 ,  x23
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	lbu x11 ,  0 ( x15 )
	call _ungetc_r
	addi x26 ,  x26 ,  -1
	bltu x0, x26, .LBB1_416
	jal x0, .LBB1_365
.LBB1_417:                              //    in Loop: Header=BB1_4 Depth=1
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	lw x15 ,  -408 ( x8 )           //  4-byte Folded Reload
	addi x23 ,  x8 ,  -369
	sw x15 ,  -408 ( x8 )           //  4-byte Folded Spill
	sw x10 ,  -404 ( x8 )           //  4-byte Folded Spill
	bltu x0, x24, .LBB1_418
	jal x0, .LBB1_419
.LBB1_424:                              //  %if.then1123
                                        //    in Loop: Header=BB1_4 Depth=1
	beq x0, x26, .LBB1_365
	jal x0, .LBB1_432
.LBB1_425:                              //  %for.end1422.loopexit.split.loop.exit
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x13 ,  -384 ( x8 )           //  4-byte Folded Spill
	add x27 ,  x26 ,  x24
	andi x15 ,  x25 ,  256
	bltu x0, x15, .LBB1_169
	jal x0, .LBB1_172
.LBB1_426:                              //  %if.then1470
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x14 ,  -388 ( x8 )           //  4-byte Folded Reload
	lui x30 ,  _strtoul_r&4095
	lui x15 ,  (_strtoul_r>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x15, .LBB1_429
.LBB1_427:                              //  %if.else1476
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoll_r
	jal x0, .LBB1_430
.LBB1_428:                              //  %if.then191
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
	beq x0, x15, .LBB1_500
.LBB1_501:                              //  %if.then191
                                        //    in Loop: Header=BB1_4 Depth=1
	jal x0, .LBB1_4
.LBB1_500:                              //  %if.then191
	jal x0, .LBB1_436
.LBB1_429:                              //  %if.then1473
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x13 ,  -384 ( x8 )           //  4-byte Folded Reload
	addi x11 ,  x8 ,  -368
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call _strtoull_r
.LBB1_430:                              //  %if.end1479
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x15 ,  -68 ( x8 )
	addi x14 ,  x15 ,  4
	sw x14 ,  -68 ( x8 )
	lw x15 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB1_179
.LBB1_431:
	add x27 ,  x0 ,  x0
	jal x0, .LBB1_443
.LBB1_432:                              //  %cleanup1153.thread2378
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
.LBB1_433:                              //  %input_failure
	beq x0, x27, .LBB1_435
.LBB1_434:                              //  %land.lhs.true1501
	lbu x15 ,  12 ( x18 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_436
.LBB1_435:                              //  %land.lhs.true1501
	addi x27 ,  x0 ,  -1
.LBB1_436:                              //  %all_done
	beq x0, x9, .LBB1_443
.LBB1_437:                              //  %if.then1523
	xori x15 ,  x27 ,  -1
	bltu x0, x15, .LBB1_441
.LBB1_438:                              //  %for.cond1527.preheader
	lhu x15 ,  6 ( x9 )
	addi x27 ,  x0 ,  -1
	beq x0, x15, .LBB1_441
.LBB1_439:                              //  %for.body1532.lr.ph
	add x18 ,  x0 ,  x0
	add x19 ,  x0 ,  x18
.LBB1_440:                              //  %for.body1532
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x9 )
	add x15 ,  x18 ,  x15
	lw x15 ,  0 ( x15 )
	lw x10 ,  0 ( x15 )
	call free
	lw x15 ,  0 ( x9 )
	addi x19 ,  x19 ,  1
	add x15 ,  x18 ,  x15
	addi x18 ,  x18 ,  4
	lw x15 ,  0 ( x15 )
	sw x0 ,  0 ( x15 )
	lhu x15 ,  6 ( x9 )
	bltu x19, x15, .LBB1_440
.LBB1_441:                              //  %if.end1540
	lw x10 ,  0 ( x9 )
	beq x0, x10, .LBB1_443
.LBB1_442:                              //  %if.then1543
	call free
.LBB1_443:                              //  %cleanup1549
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
.LBB1_444:
	addi x25 ,  x0 ,  -1
.LBB1_445:                              //  %cleanup1153.thread
	add x27 ,  x0 ,  x25
	bltu x0, x9, .LBB1_437
	jal x0, .LBB1_443
.LBB1_446:
	lw x27 ,  -392 ( x8 )           //  4-byte Folded Reload
	bltu x0, x9, .LBB1_437
	jal x0, .LBB1_443
.LBB1_447:
	add x25 ,  x0 ,  x27
	add x27 ,  x0 ,  x25
	bltu x0, x9, .LBB1_437
	jal x0, .LBB1_443
.LBB1_448:
	lw x25 ,  -392 ( x8 )           //  4-byte Folded Reload
	add x27 ,  x0 ,  x25
	bltu x0, x9, .LBB1_437
	jal x0, .LBB1_443
.Lfunc_end1:
	.size	__svfiscanf_r, .Lfunc_end1-__svfiscanf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_39
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_21
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
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
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_46
	.long	.LBB1_48
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_18
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_49
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_51
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_44
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_52
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_47
	.long	.LBB1_53
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_23
	.long	.LBB1_54
	.long	.LBB1_18
	.long	.LBB1_436
	.long	.LBB1_26
	.long	.LBB1_30
	.long	.LBB1_56
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_64
	.long	.LBB1_13
	.long	.LBB1_65
	.long	.LBB1_436
	.long	.LBB1_436
	.long	.LBB1_44
	.long	.LBB1_436
	.long	.LBB1_13
JTI1_1:
	.long	.LBB1_78
	.long	.LBB1_84
	.long	.LBB1_90
	.long	.LBB1_96
JTI1_2:
	.long	.LBB1_152
	.long	.LBB1_168
	.long	.LBB1_152
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_158
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_151
	.long	.LBB1_154
	.long	.LBB1_154
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_156
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_149
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_168
	.long	.LBB1_156
                                        //  -- End function
	.text
	.globl	__svfiscanf             //  -- Begin function __svfiscanf
	.type	__svfiscanf,@function
__svfiscanf:                            //  @__svfiscanf
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
	jal x0, __svfiscanf_r
.Lfunc_end2:
	.size	__svfiscanf, .Lfunc_end2-__svfiscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vfiscanf_r             //  -- Begin function _vfiscanf_r
	.type	_vfiscanf_r,@function
_vfiscanf_r:                            //  @_vfiscanf_r
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
	jal x0, __svfiscanf_r
.Lfunc_end3:
	.size	_vfiscanf_r, .Lfunc_end3-_vfiscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	__svfiscanf_r.basefix,@object //  @__svfiscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
__svfiscanf_r.basefix:
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
	.size	__svfiscanf_r.basefix, 34

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
