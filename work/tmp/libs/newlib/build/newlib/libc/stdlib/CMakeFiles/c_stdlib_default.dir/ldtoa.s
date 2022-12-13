	.text
	.file	"ldtoa.c"
	.globl	_ldtoa_r                //  -- Begin function _ldtoa_r
	.type	_ldtoa_r,@function
_ldtoa_r:                               //  @_ldtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -440
	.cfi_adjust_cfa_offset 440
	sw x21 ,  416 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x10
	sw x11 ,  76 ( x2 )
	sw x25 ,  400 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x25 ,  x0 ,  x15
	addi x15 ,  x2 ,  76
	sw x9 ,  432 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  428 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x23 ,  408 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x8 ,  388 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	addi x18 ,  x0 ,  144
	add x23 ,  x0 ,  x17
	add x9 ,  x0 ,  x16
	slti x8 ,  x0 ,  1
	sw x1 ,  436 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  424 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  420 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  412 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  404 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  396 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  392 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x14 ,  88 ( x2 )
	lw x11 ,  64 ( x21 )
	sw x13 ,  8 ( x15 )
	sw x12 ,  4 ( x15 )
	addi x15 ,  x0 ,  -1
	sw x18 ,  156 ( x2 )
	sw x15 ,  152 ( x2 )
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x15 ,  68 ( x21 )
	add x10 ,  x0 ,  x21
	sll x14 ,  x8 ,  x15
	sw x15 ,  4 ( x11 )
	sw x14 ,  8 ( x11 )
	call _Bfree
	sw x0 ,  64 ( x21 )
.LBB0_2:                                //  %if.end
	addi x20 ,  x2 ,  232
	addi x10 ,  x2 ,  76
	add x11 ,  x0 ,  x20
	call e113toe
	lhu x14 ,  250 ( x2 )
	lui x30 ,  32767&4095
	lui x13 ,  (32767>>12)&1048575
	add x27 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	slli x15 ,  x14 ,  16&31
	and x24 ,  x13 ,  x14
	srai x15 ,  x15 ,  16&31
	bne x24, x13, .LBB0_13
.LBB0_3:                                //  %for.body.preheader.i.i
	lhu x14 ,  232 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_4:                                //  %for.inc.i.i
	lhu x14 ,  234 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_5:                                //  %for.inc.1.i.i
	lhu x14 ,  236 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_6:                                //  %for.inc.2.i.i
	lhu x14 ,  238 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_7:                                //  %for.inc.3.i.i
	lhu x14 ,  240 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_8:                                //  %for.inc.4.i.i
	lhu x14 ,  242 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_9:                                //  %for.inc.5.i.i
	lhu x14 ,  244 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_10:                               //  %for.inc.6.i.i
	lhu x14 ,  246 ( x2 )
	bltu x0, x14, .LBB0_14
.LBB0_11:                               //  %eisnan.exit.i
	bge x15, x0, .LBB0_14
.LBB0_12:                               //  %eisnan.exit.i
	lhu x14 ,  248 ( x2 )
	beq x0, x14, .LBB0_15
	jal x0, .LBB0_14
.LBB0_13:                               //  %eisneg.exit
	blt x15, x0, .LBB0_15
.LBB0_14:                               //  %eisneg.exit.thread
	add x8 ,  x0 ,  x0
.LBB0_15:
	lw x14 ,  440 ( x2 )
	xori x26 ,  x25 ,  3
	beq x25, x27, .LBB0_17
.LBB0_16:
	sltu x13 ,  x0 ,  x26
	sub x13 ,  x9 ,  x13
	sw x8 ,  0 ( x14 )
	addi x14 ,  x0 ,  42
	bge x13, x14, .LBB0_18
	jal x0, .LBB0_19
.LBB0_17:
	addi x13 ,  x0 ,  20
	sw x8 ,  0 ( x14 )
	addi x14 ,  x0 ,  42
	blt x13, x14, .LBB0_19
.LBB0_18:
	add x13 ,  x0 ,  x14
.LBB0_19:
	lhu x22 ,  232 ( x2 )
	lui x30 ,  32767&4095
	lui x14 ,  (32767>>12)&1048575
	sw x13 ,  52 ( x2 )             //  4-byte Folded Spill
	lw x8 ,  156 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bne x24, x14, .LBB0_30
.LBB0_20:                               //  %for.body.preheader.i.i246
	bltu x0, x22, .LBB0_29
.LBB0_21:                               //  %for.inc.i.i249
	lhu x14 ,  234 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_22:                               //  %for.inc.1.i.i252
	lhu x14 ,  236 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_23:                               //  %for.inc.2.i.i255
	lhu x14 ,  238 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_24:                               //  %for.inc.3.i.i258
	lhu x14 ,  240 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_25:                               //  %for.inc.4.i.i261
	lhu x14 ,  242 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_26:                               //  %for.inc.5.i.i264
	lhu x14 ,  244 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_27:                               //  %for.inc.6.i.i267
	lhu x14 ,  246 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_28:                               //  %eisnan.exit.i270
	lhu x14 ,  248 ( x2 )
	bltu x0, x14, .LBB0_29
.LBB0_263:                              //  %eisnan.exit.i270
	jal x0, .LBB0_261
.LBB0_29:                               //  %if.then.i
	lui x30 ,  .str.2&4095
	addi x15 ,  x2 ,  94
	sw x15 ,  0 ( x2 )
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call sprintf
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	lui x20 ,  (32767>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	jal x0, .LBB0_204
.LBB0_30:                               //  %entry.if.end_crit_edge.i
	add x12 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  44 ( x2 )              //  4-byte Folded Spill
	lhu x25 ,  248 ( x2 )
	lhu x18 ,  14 ( x20 )
	lhu x27 ,  12 ( x20 )
	lhu x26 ,  10 ( x20 )
	lhu x8 ,  8 ( x20 )
	lhu x19 ,  6 ( x20 )
	lhu x21 ,  4 ( x20 )
	lhu x23 ,  2 ( x20 )
.LBB0_31:                               //  %if.end.i273
	addi x14 ,  x2 ,  336
	addi x9 ,  x2 ,  310
	lui x30 ,  16383&4095
	sw x12 ,  156 ( x2 )
	srai x12 ,  x15 ,  15&31
	lui x20 ,  (32767>>12)&1048575
	sh x22 ,  336 ( x2 )
	sh x24 ,  354 ( x2 )
	sh x0 ,  310 ( x2 )
	sh x25 ,  16 ( x14 )
	sh x18 ,  14 ( x14 )
	sh x27 ,  12 ( x14 )
	sh x26 ,  10 ( x14 )
	sh x8 ,  8 ( x14 )
	sh x19 ,  6 ( x14 )
	sh x21 ,  4 ( x14 )
	sh x23 ,  2 ( x14 )
	lui x14 ,  (32768>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x0 ,  14 ( x9 )
	sh x0 ,  12 ( x9 )
	sh x0 ,  10 ( x9 )
	sh x0 ,  8 ( x9 )
	sh x0 ,  6 ( x9 )
	sh x0 ,  4 ( x9 )
	sh x0 ,  2 ( x9 )
	sh x14 ,  16 ( x9 )
	lui x14 ,  (16383>>12)&1048575
	or x14 ,  x14 ,  x30
	sh x14 ,  328 ( x2 )
	beq x0, x24, .LBB0_35
.LBB0_32:                               //  %tnzro.i
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	bne x24, x15, .LBB0_37
.LBB0_33:                               //  %if.then30.i
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	addi x15 ,  x2 ,  94
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	beq x0, x12, .LBB0_51
.LBB0_34:                               //  %if.then32.i
	sw x15 ,  0 ( x2 )
	lui x15 ,  (.str.3>>12)&1048575
	lui x30 ,  .str.3&4095
	jal x0, .LBB0_52
.LBB0_35:                               //  %for.body.preheader.i274
	or x15 ,  x22 ,  x25
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	or x15 ,  x18 ,  x15
	srli x30 ,  x30 ,  12&31
	or x15 ,  x27 ,  x15
	or x14 ,  x14 ,  x30
	or x15 ,  x26 ,  x15
	or x15 ,  x8 ,  x15
	or x15 ,  x19 ,  x15
	or x15 ,  x21 ,  x15
	or x15 ,  x23 ,  x15
	and x15 ,  x14 ,  x15
	bltu x0, x15, .LBB0_39
.LBB0_36:
	sw x12 ,  56 ( x2 )             //  4-byte Folded Spill
	add x19 ,  x0 ,  x0
	jal x0, .LBB0_147
.LBB0_37:                               //  %land.lhs.true.i
	slli x15 ,  x25 ,  16&31
	srai x15 ,  x15 ,  16&31
	blt x15, x0, .LBB0_39
.LBB0_38:                               //  %if.then47.i
	lui x30 ,  .str.5&4095
	addi x15 ,  x2 ,  94
	sw x15 ,  0 ( x2 )
	lui x15 ,  (.str.5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call sprintf
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	lw x9 ,  44 ( x2 )              //  4-byte Folded Reload
	or x19 ,  x15 ,  x30
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_204
.LBB0_39:                               //  %if.end49.i
	lui x30 ,  eone&4095
	lui x15 ,  (eone>>12)&1048575
	addi x11 ,  x2 ,  336
	sw x12 ,  56 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call ecmp
	beq x0, x10, .LBB0_50
.LBB0_40:                               //  %if.end55.i
	blt x10, x0, .LBB0_53
.LBB0_41:                               //  %if.else123.i
	addi x11 ,  x2 ,  258
	bltu x0, x24, .LBB0_42
.LBB0_264:                              //  %if.else123.i
	jal x0, .LBB0_126
.LBB0_42:                               //  %emovi.exit.i
	add x9 ,  x0 ,  x0
	lui x15 ,  (65535>>12)&1048575
	lui x14 ,  (65534>>12)&1048575
	lui x13 ,  (16384>>12)&1048575
	lui x12 ,  (65536>>12)&1048575
	lui x10 ,  (16382>>12)&1048575
	sh x22 ,  22 ( x11 )
	sh x23 ,  20 ( x11 )
	sh x21 ,  18 ( x11 )
	sh x19 ,  16 ( x11 )
	sh x8 ,  14 ( x11 )
	sh x26 ,  12 ( x11 )
	sh x27 ,  10 ( x11 )
	sh x18 ,  8 ( x11 )
	sh x25 ,  6 ( x11 )
	sh x24 ,  2 ( x11 )
	sh x0 ,  4 ( x11 )
	sh x0 ,  282 ( x2 )
	sh x0 ,  258 ( x2 )
	sh x0 ,  284 ( x2 )
.LBB0_43:                               //  %if.end153.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	slli x16 ,  x21 ,  15&31
	srli x30 ,  x30 ,  12&31
	or x6 ,  x15 ,  x30
	lui x30 ,  65534&4095
	and x5 ,  x6 ,  x23
	srli x30 ,  x30 ,  12&31
	and x29 ,  x6 ,  x21
	srli x7 ,  x5 ,  1&31
	srli x1 ,  x29 ,  1&31
	or x17 ,  x7 ,  x16
	or x16 ,  x14 ,  x30
	slli x21 ,  x1 ,  15&31
	and x17 ,  x16 ,  x17
	srli x17 ,  x17 ,  1&31
	or x17 ,  x21 ,  x17
	slli x21 ,  x23 ,  15&31
	and x23 ,  x6 ,  x22
	and x17 ,  x6 ,  x17
	add x17 ,  x5 ,  x17
	slli x5 ,  x7 ,  15&31
	srli x7 ,  x23 ,  1&31
	or x21 ,  x7 ,  x21
	slli x7 ,  x7 ,  15&31
	and x21 ,  x16 ,  x21
	srli x21 ,  x21 ,  1&31
	or x5 ,  x5 ,  x21
	slli x21 ,  x19 ,  15&31
	and x5 ,  x6 ,  x5
	or x1 ,  x1 ,  x21
	add x5 ,  x23 ,  x5
	srli x21 ,  x5 ,  16&31
	add x23 ,  x21 ,  x17
	and x17 ,  x16 ,  x1
	and x1 ,  x6 ,  x19
	srli x19 ,  x1 ,  1&31
	srli x17 ,  x17 ,  1&31
	slli x21 ,  x19 ,  15&31
	or x17 ,  x21 ,  x17
	and x17 ,  x6 ,  x17
	add x17 ,  x29 ,  x17
	slli x29 ,  x8 ,  15&31
	or x29 ,  x19 ,  x29
	srli x19 ,  x23 ,  16&31
	andi x19 ,  x19 ,  1
	add x21 ,  x19 ,  x17
	and x17 ,  x16 ,  x29
	and x29 ,  x6 ,  x8
	srli x8 ,  x29 ,  1&31
	srli x17 ,  x17 ,  1&31
	slli x19 ,  x8 ,  15&31
	or x17 ,  x19 ,  x17
	and x17 ,  x6 ,  x17
	add x17 ,  x1 ,  x17
	slli x1 ,  x26 ,  15&31
	or x8 ,  x8 ,  x1
	srli x1 ,  x21 ,  16&31
	andi x1 ,  x1 ,  1
	add x19 ,  x1 ,  x17
	and x1 ,  x6 ,  x26
	and x17 ,  x16 ,  x8
	srli x8 ,  x1 ,  1&31
	srli x17 ,  x17 ,  1&31
	slli x26 ,  x8 ,  15&31
	or x17 ,  x26 ,  x17
	and x17 ,  x6 ,  x17
	add x17 ,  x29 ,  x17
	slli x29 ,  x27 ,  15&31
	or x29 ,  x8 ,  x29
	srli x8 ,  x19 ,  16&31
	andi x8 ,  x8 ,  1
	add x8 ,  x8 ,  x17
	and x17 ,  x16 ,  x29
	and x29 ,  x6 ,  x27
	srli x26 ,  x29 ,  1&31
	srli x17 ,  x17 ,  1&31
	slli x27 ,  x26 ,  15&31
	or x17 ,  x27 ,  x17
	and x17 ,  x6 ,  x17
	add x17 ,  x1 ,  x17
	slli x1 ,  x18 ,  15&31
	or x1 ,  x26 ,  x1
	srli x26 ,  x8 ,  16&31
	andi x26 ,  x26 ,  1
	add x26 ,  x26 ,  x17
	and x17 ,  x16 ,  x1
	and x1 ,  x6 ,  x18
	srli x18 ,  x1 ,  1&31
	srli x17 ,  x17 ,  1&31
	slli x27 ,  x18 ,  15&31
	or x17 ,  x27 ,  x17
	and x17 ,  x6 ,  x17
	and x6 ,  x6 ,  x25
	add x17 ,  x29 ,  x17
	srli x29 ,  x26 ,  16&31
	andi x29 ,  x29 ,  1
	add x27 ,  x29 ,  x17
	slli x17 ,  x25 ,  14&31
	lui x29 ,  (32768>>12)&1048575
	and x17 ,  x29 ,  x17
	slli x29 ,  x25 ,  15&31
	or x29 ,  x18 ,  x29
	and x16 ,  x16 ,  x29
	srli x16 ,  x16 ,  1&31
	or x16 ,  x17 ,  x16
	srli x17 ,  x27 ,  16&31
	add x16 ,  x1 ,  x16
	andi x17 ,  x17 ,  1
	add x18 ,  x17 ,  x16
	srli x16 ,  x6 ,  2&31
	add x6 ,  x6 ,  x16
	srli x16 ,  x18 ,  16&31
	andi x16 ,  x16 ,  1
	add x25 ,  x16 ,  x6
	slli x6 ,  x22 ,  14&31
	and x6 ,  x13 ,  x6
	or x6 ,  x7 ,  x6
	and x7 ,  x12 ,  x25
	bltu x0, x7, .LBB0_45
.LBB0_44:                               //    in Loop: Header=BB0_43 Depth=1
	addi x24 ,  x24 ,  3
	add x22 ,  x0 ,  x5
	jal x0, .LBB0_46
.LBB0_45:                               //  %while.body169.i.preheader
                                        //    in Loop: Header=BB0_43 Depth=1
	lui x30 ,  65535&4095
	slli x16 ,  x23 ,  15&31
	addi x24 ,  x24 ,  4
	srli x30 ,  x30 ,  12&31
	or x7 ,  x15 ,  x30
	lui x30 ,  65534&4095
	and x6 ,  x7 ,  x6
	slli x7 ,  x5 ,  15&31
	srli x30 ,  x30 ,  12&31
	srli x6 ,  x6 ,  1&31
	or x6 ,  x6 ,  x7
	or x7 ,  x14 ,  x30
	lui x30 ,  -32768&4095
	and x5 ,  x7 ,  x5
	srli x30 ,  x30 ,  12&31
	srli x5 ,  x5 ,  1&31
	or x22 ,  x5 ,  x16
	and x5 ,  x7 ,  x23
	slli x16 ,  x21 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x23 ,  x5 ,  x16
	and x5 ,  x7 ,  x21
	slli x16 ,  x19 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x21 ,  x5 ,  x16
	and x5 ,  x7 ,  x19
	slli x16 ,  x8 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x19 ,  x5 ,  x16
	and x5 ,  x7 ,  x8
	slli x16 ,  x26 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x8 ,  x5 ,  x16
	and x5 ,  x7 ,  x26
	slli x16 ,  x27 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x26 ,  x5 ,  x16
	and x5 ,  x7 ,  x27
	and x7 ,  x7 ,  x18
	slli x16 ,  x18 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x27 ,  x5 ,  x16
	srli x5 ,  x7 ,  1&31
	slli x7 ,  x25 ,  15&31
	or x18 ,  x5 ,  x7
	lui x7 ,  (-32768>>12)&1048575
	srli x5 ,  x25 ,  1&31
	or x7 ,  x7 ,  x30
	or x25 ,  x7 ,  x5
.LBB0_46:                               //  %while.end175.i
                                        //    in Loop: Header=BB0_43 Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x5 ,  x15 ,  x30
	and x5 ,  x5 ,  x6
	bltu x0, x5, .LBB0_130
.LBB0_47:                               //  %while.end175.i
                                        //    in Loop: Header=BB0_43 Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x5 ,  x15 ,  x30
	lui x30 ,  16382&4095
	srli x30 ,  x30 ,  12&31
	and x5 ,  x5 ,  x24
	or x7 ,  x10 ,  x30
	bltu x7, x5, .LBB0_130
.LBB0_48:                               //  %if.end188.i
                                        //    in Loop: Header=BB0_43 Depth=1
	add x5 ,  x0 ,  x9
	sh x22 ,  22 ( x11 )
	sh x23 ,  20 ( x11 )
	sh x21 ,  18 ( x11 )
	sh x19 ,  16 ( x11 )
	sh x8 ,  14 ( x11 )
	sh x26 ,  12 ( x11 )
	sh x27 ,  10 ( x11 )
	sh x18 ,  8 ( x11 )
	sh x25 ,  6 ( x11 )
	sh x24 ,  2 ( x11 )
	sh x0 ,  4 ( x11 )
	sh x0 ,  282 ( x2 )
	addi x5 ,  x5 ,  -1
	add x9 ,  x0 ,  x5
	xori x5 ,  x5 ,  -43
	bltu x0, x5, .LBB0_43
.LBB0_49:                               //  %for.end194.thread.i
	addi x15 ,  x2 ,  284
	lui x13 ,  (16383>>12)&1048575
	sh x25 ,  290 ( x2 )
	sh x24 ,  354 ( x2 )
	sh x22 ,  22 ( x15 )
	sh x23 ,  20 ( x15 )
	sh x21 ,  18 ( x15 )
	sh x19 ,  16 ( x15 )
	sh x8 ,  14 ( x15 )
	sh x26 ,  12 ( x15 )
	sh x27 ,  10 ( x15 )
	sh x18 ,  8 ( x15 )
	sh x24 ,  2 ( x15 )
	sh x0 ,  24 ( x15 )
	sh x0 ,  4 ( x15 )
	jal x0, .LBB0_134
.LBB0_50:
	add x19 ,  x0 ,  x0
	jal x0, .LBB0_147
.LBB0_51:                               //  %if.else34.i
	sw x15 ,  0 ( x2 )
	lui x15 ,  (.str.4>>12)&1048575
	lui x30 ,  .str.4&4095
.LBB0_52:                               //  %etoasc.exit
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call sprintf
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	lw x9 ,  44 ( x2 )              //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	jal x0, .LBB0_204
.LBB0_53:                               //  %if.then58.i
	addi x15 ,  x2 ,  284
	lui x30 ,  16526&4095
	sh x22 ,  284 ( x2 )
	addi x22 ,  x0 ,  16
	sh x25 ,  16 ( x15 )
	sh x19 ,  6 ( x15 )
	sh x21 ,  4 ( x15 )
	sh x23 ,  2 ( x15 )
	sh x18 ,  14 ( x15 )
	sh x27 ,  12 ( x15 )
	sh x26 ,  10 ( x15 )
	sh x8 ,  8 ( x15 )
	lui x15 ,  (16526>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x19 ,  x0 ,  x0
	addi x25 ,  x2 ,  258
	addi x21 ,  x2 ,  94
	addi x23 ,  x0 ,  15
	or x15 ,  x15 ,  x30
	lui x30 ,  etens&4095
	sh x15 ,  302 ( x2 )
	lui x15 ,  (etens>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	addi x24 ,  x15 ,  160
	jal x0, .LBB0_55
.LBB0_54:                               //  %noint.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  32767&4095
	srli x15 ,  x22 ,  1&31
	addi x24 ,  x24 ,  20
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	and x22 ,  x14 ,  x15
	beq x0, x22, .LBB0_120
.LBB0_55:                               //  %do.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_62 Depth 2
	add x10 ,  x0 ,  x24
	addi x11 ,  x2 ,  284
	add x12 ,  x0 ,  x9
	addi x13 ,  x2 ,  152
	add x8 ,  x0 ,  x20
	add x20 ,  x0 ,  x21
	call ediv
	lui x30 ,  32767&4095
	lhu x12 ,  328 ( x2 )
	add x27 ,  x0 ,  x8
	lui x10 ,  (16382>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lhu x11 ,  16 ( x9 )
	or x15 ,  x8 ,  x30
	lhu x7 ,  14 ( x9 )
	lui x30 ,  16382&4095
	lhu x17 ,  12 ( x9 )
	srli x30 ,  x30 ,  12&31
	lhu x8 ,  10 ( x9 )
	and x15 ,  x15 ,  x12
	or x10 ,  x10 ,  x30
	lhu x18 ,  8 ( x9 )
	lhu x21 ,  6 ( x9 )
	lhu x26 ,  4 ( x9 )
	lhu x14 ,  2 ( x9 )
	lhu x13 ,  310 ( x2 )
	bltu x10, x15, .LBB0_58
.LBB0_56:                               //  %if.then.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0 ,  16 ( x25 )
	sh x0 ,  14 ( x25 )
	sh x0 ,  12 ( x25 )
	sh x0 ,  10 ( x25 )
	sh x0 ,  8 ( x25 )
	sh x0 ,  6 ( x25 )
	sh x0 ,  4 ( x25 )
	sh x0 ,  2 ( x25 )
	sh x0 ,  276 ( x2 )
	sh x0 ,  258 ( x2 )
	add x15 ,  x0 ,  x0
	lui x10 ,  (32768>>12)&1048575
	and x12 ,  x10 ,  x12
	bltu x0, x12, .LBB0_66
.LBB0_57:                               //    in Loop: Header=BB0_55 Depth=1
	add x21 ,  x0 ,  x20
	add x20 ,  x0 ,  x27
	bne x13, x15, .LBB0_54
.LBB0_110:                              //  %for.cond66.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x14 ,  260 ( x2 )
	lhu x13 ,  312 ( x2 )
	bne x13, x14, .LBB0_54
.LBB0_111:                              //  %for.cond66.1.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x13 ,  314 ( x2 )
	lhu x12 ,  262 ( x2 )
	bne x13, x12, .LBB0_54
.LBB0_112:                              //  %for.cond66.2.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x12 ,  316 ( x2 )
	lhu x11 ,  264 ( x2 )
	bne x12, x11, .LBB0_54
.LBB0_113:                              //  %for.cond66.3.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11 ,  318 ( x2 )
	lhu x10 ,  266 ( x2 )
	bne x11, x10, .LBB0_54
.LBB0_114:                              //  %for.cond66.4.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x10 ,  320 ( x2 )
	lhu x5 ,  268 ( x2 )
	bne x10, x5, .LBB0_54
.LBB0_115:                              //  %for.cond66.5.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x5 ,  322 ( x2 )
	lhu x6 ,  270 ( x2 )
	bne x5, x6, .LBB0_54
.LBB0_116:                              //  %for.cond66.6.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x6 ,  324 ( x2 )
	lhu x7 ,  272 ( x2 )
	bne x6, x7, .LBB0_54
.LBB0_117:                              //  %for.cond66.7.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x7 ,  326 ( x2 )
	lhu x16 ,  274 ( x2 )
	bne x7, x16, .LBB0_54
.LBB0_118:                              //  %for.cond66.8.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x15 ,  284 ( x2 )
	lh x15 ,  328 ( x2 )
	lui x30 ,  65535&4095
	addi x16 ,  x2 ,  284
	srli x30 ,  x30 ,  12&31
	sh x7 ,  16 ( x16 )
	sh x6 ,  14 ( x16 )
	sh x5 ,  12 ( x16 )
	sh x10 ,  10 ( x16 )
	sh x11 ,  8 ( x16 )
	sh x12 ,  6 ( x16 )
	sh x13 ,  4 ( x16 )
	sh x14 ,  2 ( x16 )
	sh x15 ,  302 ( x2 )
	lui x15 ,  (65535>>12)&1048575
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x22
	add x19 ,  x15 ,  x19
	jal x0, .LBB0_54
.LBB0_58:                               //  %if.end.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  16525&4095
	lui x10 ,  (16525>>12)&1048575
	sh x11 ,  16 ( x25 )
	sh x7 ,  14 ( x25 )
	sh x17 ,  12 ( x25 )
	sh x8 ,  10 ( x25 )
	sh x18 ,  8 ( x25 )
	sh x21 ,  6 ( x25 )
	sh x26 ,  4 ( x25 )
	sh x14 ,  2 ( x25 )
	sh x12 ,  276 ( x2 )
	sh x13 ,  258 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	bgeu x10, x15, .LBB0_60
.LBB0_59:                               //    in Loop: Header=BB0_55 Depth=1
	add x15 ,  x0 ,  x13
	jal x0, .LBB0_76
.LBB0_60:                               //  %if.end7.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  16526&4095
	lui x10 ,  (16526>>12)&1048575
	lui x5 ,  (16510>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	lui x30 ,  16510&4095
	srli x30 ,  x30 ,  12&31
	sub x10 ,  x10 ,  x15
	or x5 ,  x5 ,  x30
	bltu x5, x15, .LBB0_64
.LBB0_61:                               //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_55 Depth=1
	add x15 ,  x0 ,  x25
.LBB0_62:                               //  %while.body.i.i
                                        //    Parent Loop BB0_55 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sh x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  2
	addi x10 ,  x10 ,  -16
	blt x23, x10, .LBB0_62
.LBB0_63:                               //  %while.end.loopexit.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x5 ,  0 ( x15 )
	jal x0, .LBB0_65
.LBB0_64:                               //    in Loop: Header=BB0_55 Depth=1
	add x5 ,  x0 ,  x13
	add x15 ,  x0 ,  x25
.LBB0_65:                               //  %while.end.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  bmask&4095
	lui x6 ,  (bmask>>12)&1048575
	slli x10 ,  x10 ,  1&31
	srli x30 ,  x30 ,  12&31
	or x6 ,  x6 ,  x30
	add x10 ,  x10 ,  x6
	lhu x10 ,  0 ( x10 )
	and x10 ,  x5 ,  x10
	sh x10 ,  0 ( x15 )
	lhu x15 ,  258 ( x2 )
	lui x10 ,  (32768>>12)&1048575
	and x12 ,  x10 ,  x12
	beq x0, x12, .LBB0_57
.LBB0_66:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	add x9 ,  x0 ,  x19
	lh x10 ,  274 ( x2 )
	lhu x12 ,  14 ( x25 )
	lhu x5 ,  12 ( x25 )
	lhu x6 ,  10 ( x25 )
	lhu x16 ,  8 ( x25 )
	lhu x29 ,  6 ( x25 )
	lhu x1 ,  4 ( x25 )
	lhu x19 ,  2 ( x25 )
	bne x13, x15, .LBB0_77
.LBB0_67:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x14, x19, .LBB0_77
.LBB0_68:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x26, x1, .LBB0_77
.LBB0_69:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x21, x29, .LBB0_77
.LBB0_70:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x18, x16, .LBB0_77
.LBB0_71:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x8, x6, .LBB0_77
.LBB0_72:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x17, x5, .LBB0_77
.LBB0_73:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x7, x12, .LBB0_77
.LBB0_74:                               //  %for.body.preheader.i871.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  65535&4095
	lui x7 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x7 ,  x7 ,  x30
	and x7 ,  x7 ,  x10
	bne x11, x7, .LBB0_77
.LBB0_75:                               //    in Loop: Header=BB0_55 Depth=1
	add x19 ,  x0 ,  x9
	add x15 ,  x0 ,  x13
	addi x9 ,  x2 ,  310
.LBB0_76:                               //  %for.cond66.1.i
                                        //    in Loop: Header=BB0_55 Depth=1
	add x21 ,  x0 ,  x20
	add x20 ,  x0 ,  x27
	lhu x13 ,  314 ( x2 )
	lhu x12 ,  262 ( x2 )
	bne x13, x12, .LBB0_54
	jal x0, .LBB0_112
.LBB0_77:                               //  %if.then29.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x11 ,  276 ( x2 )
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x7 ,  x27 ,  x30
	and x14 ,  x7 ,  x11
	bne x14, x7, .LBB0_80
.LBB0_78:                               //  %for.body.preheader.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x14 ,  x15 ,  x19
	lui x30 ,  65535&4095
	add x19 ,  x0 ,  x9
	add x21 ,  x0 ,  x20
	addi x9 ,  x2 ,  310
	add x20 ,  x0 ,  x27
	or x14 ,  x1 ,  x14
	srli x30 ,  x30 ,  12&31
	or x14 ,  x29 ,  x14
	or x14 ,  x16 ,  x14
	or x14 ,  x6 ,  x14
	or x14 ,  x5 ,  x14
	or x14 ,  x12 ,  x14
	lui x12 ,  (65535>>12)&1048575
	or x14 ,  x10 ,  x14
	or x12 ,  x12 ,  x30
	and x14 ,  x12 ,  x14
	beq x0, x14, .LBB0_79
.LBB0_109:                              //  %efloor.exit.i
                                        //    in Loop: Header=BB0_55 Depth=1
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_80:                               //  %emovi.exit.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  16383&4095
	lui x17 ,  (16383>>12)&1048575
	lui x18 ,  (65535>>12)&1048575
	slli x13 ,  x11 ,  16&31
	add x21 ,  x0 ,  x20
	addi x20 ,  x2 ,  362
	lui x8 ,  (32768>>12)&1048575
	sh x0 ,  118 ( x2 )
	sh x0 ,  386 ( x2 )
	srli x30 ,  x30 ,  12&31
	srai x13 ,  x13 ,  31&31
	sh x8 ,  6 ( x21 )
	sh x15 ,  22 ( x20 )
	sh x19 ,  20 ( x20 )
	sh x1 ,  18 ( x20 )
	sh x29 ,  16 ( x20 )
	sh x16 ,  14 ( x20 )
	sh x6 ,  12 ( x20 )
	sh x5 ,  10 ( x20 )
	sh x12 ,  8 ( x20 )
	sh x10 ,  6 ( x20 )
	sh x0 ,  22 ( x21 )
	sh x0 ,  20 ( x21 )
	sh x0 ,  18 ( x21 )
	sh x0 ,  16 ( x21 )
	sh x0 ,  14 ( x21 )
	sh x0 ,  12 ( x21 )
	sh x0 ,  10 ( x21 )
	sh x0 ,  8 ( x21 )
	sh x0 ,  4 ( x21 )
	sh x14 ,  2 ( x20 )
	sh x0 ,  4 ( x20 )
	or x7 ,  x17 ,  x30
	lui x30 ,  65535&4095
	sh x13 ,  362 ( x2 )
	srli x30 ,  x30 ,  12&31
	sh x7 ,  2 ( x21 )
	or x11 ,  x18 ,  x30
	lui x30 ,  16382&4095
	sh x11 ,  94 ( x2 )
	srli x30 ,  x30 ,  12&31
	lui x11 ,  (16382>>12)&1048575
	or x11 ,  x11 ,  x30
	bltu x11, x14, .LBB0_82
.LBB0_81:                               //  %if.end29.thread.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  16383&4095
	sh x8 ,  6 ( x20 )
	sh x15 ,  22 ( x21 )
	sh x19 ,  20 ( x21 )
	sh x1 ,  18 ( x21 )
	sh x29 ,  16 ( x21 )
	sh x16 ,  14 ( x21 )
	sh x6 ,  12 ( x21 )
	sh x5 ,  10 ( x21 )
	sh x12 ,  8 ( x21 )
	sh x10 ,  6 ( x21 )
	sh x14 ,  2 ( x21 )
	sh x0 ,  22 ( x20 )
	sh x0 ,  20 ( x20 )
	sh x0 ,  18 ( x20 )
	sh x0 ,  16 ( x20 )
	sh x0 ,  14 ( x20 )
	sh x0 ,  12 ( x20 )
	sh x0 ,  10 ( x20 )
	sh x0 ,  8 ( x20 )
	sh x0 ,  4 ( x20 )
	sh x0 ,  4 ( x21 )
	sh x13 ,  94 ( x2 )
	sh x0 ,  386 ( x2 )
	sh x0 ,  118 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x8 ,  x17 ,  x30
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	sh x8 ,  2 ( x20 )
	add x20 ,  x0 ,  x27
	or x15 ,  x18 ,  x30
	lui x30 ,  -16383&4095
	sh x15 ,  362 ( x2 )
	srli x30 ,  x30 ,  12&31
	lui x15 ,  (-16383>>12)&1048575
	or x15 ,  x15 ,  x30
	add x11 ,  x15 ,  x14
	add x19 ,  x0 ,  x9
	slti x15 ,  x11 ,  -145
	addi x9 ,  x2 ,  310
	beq x0, x15, .LBB0_84
	jal x0, .LBB0_98
.LBB0_82:                               //  %if.end29.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sub x11 ,  x7 ,  x14
	add x20 ,  x0 ,  x27
	beq x0, x11, .LBB0_85
.LBB0_83:                               //    in Loop: Header=BB0_55 Depth=1
	add x8 ,  x0 ,  x14
	add x19 ,  x0 ,  x9
	slti x15 ,  x11 ,  -145
	addi x9 ,  x2 ,  310
	bltu x0, x15, .LBB0_98
.LBB0_84:                               //  %if.end36.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	add x10 ,  x0 ,  x21
	call eshift
	add x11 ,  x0 ,  x10
	lhu x15 ,  362 ( x2 )
	lhu x13 ,  94 ( x2 )
	jal x0, .LBB0_94
.LBB0_79:                               //  %if.then6.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0 ,  258 ( x2 )
	add x15 ,  x0 ,  x0
	lhu x13 ,  310 ( x2 )
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_85:                               //  %for.inc.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  -32768&4095
	lui x11 ,  (-32768>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	bne x10, x11, .LBB0_88
.LBB0_86:                               //  %for.inc.1.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x15 ,  x15 ,  x19
	lui x30 ,  65535&4095
	or x15 ,  x1 ,  x15
	srli x30 ,  x30 ,  12&31
	or x15 ,  x29 ,  x15
	or x15 ,  x16 ,  x15
	or x15 ,  x6 ,  x15
	or x15 ,  x5 ,  x15
	or x15 ,  x12 ,  x15
	lui x12 ,  (65535>>12)&1048575
	or x12 ,  x12 ,  x30
	and x15 ,  x12 ,  x15
	beq x0, x15, .LBB0_90
.LBB0_87:                               //    in Loop: Header=BB0_55 Depth=1
	add x15 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	jal x0, .LBB0_93
.LBB0_88:                               //  %if.end74.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  65535&4095
	lui x7 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x7 ,  x30
	blt x10, x0, .LBB0_92
.LBB0_89:                               //  %if.then77.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  16383&4095
	addi x11 ,  x2 ,  362
	sh x15 ,  22 ( x21 )
	sh x19 ,  20 ( x21 )
	sh x1 ,  18 ( x21 )
	sh x29 ,  16 ( x21 )
	sh x16 ,  14 ( x21 )
	sh x6 ,  12 ( x21 )
	sh x5 ,  10 ( x21 )
	sh x12 ,  8 ( x21 )
	sh x10 ,  6 ( x21 )
	sh x14 ,  2 ( x21 )
	sh x0 ,  4 ( x21 )
	sh x13 ,  94 ( x2 )
	sh x0 ,  386 ( x2 )
	sh x0 ,  118 ( x2 )
	add x17 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	lui x11 ,  (16383>>12)&1048575
	or x11 ,  x11 ,  x30
	lui x30 ,  65535&4095
	sh x8 ,  6 ( x17 )
	sh x0 ,  22 ( x17 )
	sh x0 ,  20 ( x17 )
	sh x0 ,  18 ( x17 )
	sh x0 ,  16 ( x17 )
	sh x0 ,  14 ( x17 )
	sh x0 ,  12 ( x17 )
	sh x0 ,  10 ( x17 )
	sh x0 ,  8 ( x17 )
	sh x0 ,  4 ( x17 )
	srli x30 ,  x30 ,  12&31
	sh x11 ,  2 ( x17 )
	or x15 ,  x7 ,  x30
	sh x15 ,  362 ( x2 )
	jal x0, .LBB0_93
.LBB0_90:                               //  %if.then44.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	xori x15 ,  x13 ,  -1
	add x19 ,  x0 ,  x9
	beq x0, x15, .LBB0_119
.LBB0_91:                               //  %if.then51.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x0 ,  16 ( x25 )
	sh x0 ,  14 ( x25 )
	sh x0 ,  12 ( x25 )
	sh x0 ,  10 ( x25 )
	sh x0 ,  8 ( x25 )
	sh x0 ,  6 ( x25 )
	sh x0 ,  4 ( x25 )
	sh x0 ,  2 ( x25 )
	sh x0 ,  276 ( x2 )
	sh x0 ,  258 ( x2 )
	add x15 ,  x0 ,  x0
	addi x9 ,  x2 ,  310
	lhu x13 ,  310 ( x2 )
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_92:                               //    in Loop: Header=BB0_55 Depth=1
	add x15 ,  x0 ,  x13
	add x13 ,  x0 ,  x11
.LBB0_93:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	add x19 ,  x0 ,  x9
	add x8 ,  x0 ,  x14
	add x11 ,  x0 ,  x0
	addi x9 ,  x2 ,  310
.LBB0_94:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	and x14 ,  x14 ,  x13
	bne x14, x15, .LBB0_96
.LBB0_95:                               //  %if.then92.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	addi x6 ,  x2 ,  362
	lhu x15 ,  24 ( x21 )
	lhu x14 ,  24 ( x6 )
	lhu x13 ,  22 ( x21 )
	lhu x12 ,  18 ( x6 )
	lhu x10 ,  20 ( x21 )
	add x15 ,  x15 ,  x14
	lhu x5 ,  16 ( x6 )
	srli x14 ,  x15 ,  16&31
	sh x15 ,  24 ( x6 )
	add x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x6 )
	add x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x21 )
	sh x14 ,  22 ( x6 )
	add x13 ,  x13 ,  x12
	srli x12 ,  x14 ,  16&31
	lhu x14 ,  14 ( x21 )
	andi x12 ,  x12 ,  1
	add x12 ,  x10 ,  x12
	lhu x10 ,  20 ( x6 )
	add x12 ,  x10 ,  x12
	srli x10 ,  x12 ,  16&31
	sh x12 ,  20 ( x6 )
	add x12 ,  x0 ,  x0
	andi x10 ,  x10 ,  1
	add x13 ,  x10 ,  x13
	lhu x10 ,  16 ( x21 )
	srli x15 ,  x13 ,  16&31
	sh x13 ,  18 ( x6 )
	lhu x13 ,  14 ( x6 )
	andi x15 ,  x15 ,  1
	add x10 ,  x10 ,  x5
	add x15 ,  x15 ,  x10
	add x14 ,  x14 ,  x13
	lhu x13 ,  12 ( x6 )
	sh x15 ,  16 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x15 ,  x15 ,  x14
	lhu x14 ,  12 ( x21 )
	sh x15 ,  14 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x13
	lhu x13 ,  10 ( x6 )
	add x15 ,  x15 ,  x14
	lhu x14 ,  10 ( x21 )
	sh x15 ,  12 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x13
	lhu x13 ,  8 ( x6 )
	add x15 ,  x15 ,  x14
	lhu x14 ,  8 ( x21 )
	sh x15 ,  10 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x13
	lhu x13 ,  6 ( x6 )
	add x15 ,  x15 ,  x14
	lhu x14 ,  6 ( x21 )
	sh x15 ,  8 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x13
	lh x13 ,  366 ( x2 )
	add x15 ,  x15 ,  x14
	lh x14 ,  98 ( x2 )
	sh x15 ,  6 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	add x14 ,  x14 ,  x13
	add x15 ,  x15 ,  x14
	jal x0, .LBB0_97
.LBB0_96:                               //  %if.else95.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	addi x6 ,  x2 ,  362
	lhu x15 ,  22 ( x21 )
	lhu x14 ,  22 ( x6 )
	lhu x13 ,  24 ( x6 )
	lhu x12 ,  20 ( x6 )
	lhu x10 ,  18 ( x6 )
	sub x15 ,  x14 ,  x15
	lhu x14 ,  24 ( x21 )
	lhu x5 ,  16 ( x6 )
	sub x14 ,  x13 ,  x14
	srli x13 ,  x14 ,  16&31
	sh x14 ,  24 ( x6 )
	lhu x14 ,  14 ( x21 )
	andi x13 ,  x13 ,  1
	sub x15 ,  x15 ,  x13
	lhu x13 ,  20 ( x21 )
	sh x15 ,  22 ( x6 )
	sub x13 ,  x12 ,  x13
	srli x12 ,  x15 ,  16&31
	andi x12 ,  x12 ,  1
	sub x13 ,  x13 ,  x12
	lhu x12 ,  18 ( x21 )
	sh x13 ,  20 ( x6 )
	sub x12 ,  x10 ,  x12
	srli x10 ,  x13 ,  16&31
	lhu x13 ,  14 ( x6 )
	andi x10 ,  x10 ,  1
	sub x12 ,  x12 ,  x10
	lhu x10 ,  16 ( x21 )
	srli x15 ,  x12 ,  16&31
	sh x12 ,  18 ( x6 )
	slti x12 ,  x0 ,  1
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x6 )
	sub x10 ,  x5 ,  x10
	sub x15 ,  x10 ,  x15
	sh x15 ,  16 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x15 ,  x14 ,  x15
	lhu x14 ,  12 ( x21 )
	sh x15 ,  14 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	lhu x13 ,  10 ( x6 )
	sub x15 ,  x14 ,  x15
	lhu x14 ,  10 ( x21 )
	sh x15 ,  12 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	lhu x13 ,  8 ( x6 )
	sub x15 ,  x14 ,  x15
	lhu x14 ,  8 ( x21 )
	sh x15 ,  10 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	lhu x13 ,  6 ( x6 )
	sub x15 ,  x14 ,  x15
	lhu x14 ,  6 ( x21 )
	sh x15 ,  8 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	lhu x13 ,  366 ( x2 )
	sub x15 ,  x14 ,  x15
	lhu x14 ,  98 ( x2 )
	sh x15 ,  6 ( x6 )
	srli x15 ,  x15 ,  16&31
	andi x15 ,  x15 ,  1
	sub x14 ,  x13 ,  x14
	sub x15 ,  x14 ,  x15
.LBB0_97:                               //  %done.i.i.i.i.sink.split
                                        //    in Loop: Header=BB0_55 Depth=1
	sh x15 ,  366 ( x2 )
	add x10 ,  x0 ,  x6
	add x13 ,  x0 ,  x8
	addi x14 ,  x0 ,  64
	addi x15 ,  x2 ,  152
	call emdnorm
.LBB0_98:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	addi x15 ,  x2 ,  362
	lhu x12 ,  362 ( x2 )
	lui x30 ,  -32768&4095
	add x11 ,  x0 ,  x0
	lhu x14 ,  2 ( x15 )
	srli x30 ,  x30 ,  12&31
	lui x15 ,  (-32768>>12)&1048575
	or x13 ,  x15 ,  x30
	add x15 ,  x0 ,  x14
	beq x12, x11, .LBB0_100
.LBB0_99:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	or x15 ,  x13 ,  x14
.LBB0_100:                              //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lhu x13 ,  368 ( x2 )
.LBB0_101:                              //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  32767&4095
	sh x15 ,  276 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	bne x14, x12, .LBB0_104
.LBB0_102:                              //  %for.body.preheader.i.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	addi x14 ,  x2 ,  362
	sh x0 ,  12 ( x25 )
	sh x0 ,  10 ( x25 )
	sh x0 ,  8 ( x25 )
	sh x0 ,  6 ( x25 )
	sh x0 ,  4 ( x25 )
	sh x0 ,  2 ( x25 )
	sh x0 ,  272 ( x2 )
	sh x0 ,  258 ( x2 )
	add x12 ,  x0 ,  x14
	lhu x14 ,  8 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  10 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  14 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  16 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  20 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  386 ( x2 )
	or x14 ,  x13 ,  x14
	beq x0, x14, .LBB0_105
.LBB0_103:                              //  %if.then11.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  32767&4095
	lui x15 ,  (49152>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x15 ,  16 ( x25 )
	or x15 ,  x20 ,  x30
	sh x15 ,  276 ( x2 )
	add x15 ,  x0 ,  x0
	lhu x13 ,  310 ( x2 )
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_104:                              //  %if.end13.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	addi x15 ,  x2 ,  362
	sh x13 ,  16 ( x25 )
	add x14 ,  x0 ,  x15
	lh x15 ,  8 ( x14 )
	sh x15 ,  14 ( x25 )
	lh x15 ,  10 ( x14 )
	sh x15 ,  12 ( x25 )
	lh x15 ,  12 ( x14 )
	sh x15 ,  10 ( x25 )
	lh x15 ,  14 ( x14 )
	sh x15 ,  8 ( x25 )
	lh x15 ,  16 ( x14 )
	sh x15 ,  6 ( x25 )
	lh x15 ,  18 ( x14 )
	sh x15 ,  4 ( x25 )
	lh x15 ,  20 ( x14 )
	sh x15 ,  260 ( x2 )
	lhu x15 ,  384 ( x2 )
	sh x15 ,  258 ( x2 )
	lhu x13 ,  310 ( x2 )
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_105:                              //  %if.end12.i.i.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  32767&4095
	sh x0 ,  16 ( x25 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	or x15 ,  x14 ,  x15
	sh x15 ,  276 ( x2 )
	add x15 ,  x0 ,  x0
	lhu x13 ,  310 ( x2 )
	bne x13, x15, .LBB0_54
	jal x0, .LBB0_110
.LBB0_119:                              //  %done.i.thread.i.i.i
                                        //    in Loop: Header=BB0_55 Depth=1
	lui x30 ,  -32768&4095
	lui x15 ,  (-32768>>12)&1048575
	addi x14 ,  x14 ,  1
	add x13 ,  x0 ,  x8
	addi x9 ,  x2 ,  310
	srli x30 ,  x30 ,  12&31
	sh x14 ,  364 ( x2 )
	or x15 ,  x15 ,  x30
	or x15 ,  x15 ,  x14
	jal x0, .LBB0_101
.LBB0_120:                              //  %do.end.i
	addi x11 ,  x2 ,  284
	addi x14 ,  x2 ,  336
	lui x30 ,  -16526&4095
	lui x18 ,  (etens>>12)&1048575
	sh x0 ,  14 ( x9 )
	sh x0 ,  12 ( x9 )
	sh x0 ,  10 ( x9 )
	sh x0 ,  8 ( x9 )
	sh x0 ,  6 ( x9 )
	sh x0 ,  4 ( x9 )
	sh x0 ,  2 ( x9 )
	sh x0 ,  310 ( x2 )
	lh x15 ,  2 ( x11 )
	add x13 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	lh x14 ,  18 ( x13 )
	sh x15 ,  2 ( x13 )
	lh x15 ,  4 ( x11 )
	sh x15 ,  4 ( x13 )
	lh x15 ,  6 ( x11 )
	sh x15 ,  6 ( x13 )
	lh x15 ,  8 ( x11 )
	sh x15 ,  8 ( x13 )
	lh x15 ,  10 ( x11 )
	sh x15 ,  10 ( x13 )
	lh x15 ,  12 ( x11 )
	sh x15 ,  12 ( x13 )
	lh x15 ,  284 ( x2 )
	sh x15 ,  336 ( x2 )
	lh x15 ,  18 ( x11 )
	add x15 ,  x15 ,  x14
	lui x14 ,  (-16526>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  16383&4095
	add x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	lh x14 ,  14 ( x11 )
	sh x15 ,  18 ( x11 )
	sh x15 ,  18 ( x13 )
	lui x15 ,  (32768>>12)&1048575
	sh x15 ,  16 ( x9 )
	lui x15 ,  (16383>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  etens&4095
	sh x15 ,  328 ( x2 )
	lh x15 ,  300 ( x2 )
	srli x30 ,  x30 ,  12&31
	sh x14 ,  14 ( x13 )
	sh x15 ,  352 ( x2 )
	or x15 ,  x18 ,  x30
	addi x10 ,  x15 ,  240
	call ecmp
	blt x0, x10, .LBB0_147
.LBB0_121:                              //  %while.body.i.preheader
	lui x30 ,  etens&4095
	lui x8 ,  (4096>>12)&1048575
	addi x23 ,  x2 ,  284
	addi x24 ,  x2 ,  152
	addi x25 ,  x2 ,  310
	lui x21 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x18 ,  x30
.LBB0_122:                              //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call ecmp
	blt x0, x10, .LBB0_124
.LBB0_123:                              //  %if.then106.i
                                        //    in Loop: Header=BB0_122 Depth=1
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x11 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call ediv
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x11 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	call emul
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	and x15 ,  x15 ,  x8
	add x19 ,  x15 ,  x19
.LBB0_124:                              //  %if.end113.i
                                        //    in Loop: Header=BB0_122 Depth=1
	lui x30 ,  32767&4095
	srli x15 ,  x8 ,  1&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	and x8 ,  x14 ,  x15
	beq x0, x8, .LBB0_147
.LBB0_125:                              //  %while.cond.i
                                        //    in Loop: Header=BB0_122 Depth=1
	lui x30 ,  etens&4095
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	addi x10 ,  x15 ,  240
	call ecmp
	addi x22 ,  x22 ,  20
	bge x0, x10, .LBB0_122
	jal x0, .LBB0_147
.LBB0_126:                              //  %while.cond129.preheader.i
	slli x15 ,  x25 ,  16&31
	srai x15 ,  x15 ,  16&31
	blt x15, x0, .LBB0_135
.LBB0_127:                              //  %while.body135.i.preheader
	add x9 ,  x0 ,  x0
	lui x8 ,  (etens>>12)&1048575
	addi x22 ,  x2 ,  336
	addi x24 ,  x2 ,  152
.LBB0_128:                              //  %while.body135.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  etens&4095
	add x12 ,  x0 ,  x22
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x8 ,  x30
	addi x10 ,  x15 ,  240
	call emul
	lh x25 ,  352 ( x2 )
	addi x9 ,  x9 ,  -1
	bge x25, x0, .LBB0_128
.LBB0_129:                              //  %if.end197.loopexit.i
	lhu x24 ,  354 ( x2 )
	lui x13 ,  (16383>>12)&1048575
	addi x11 ,  x2 ,  258
	lhu x18 ,  14 ( x22 )
	lhu x27 ,  12 ( x22 )
	lhu x26 ,  10 ( x22 )
	lhu x8 ,  8 ( x22 )
	lhu x19 ,  6 ( x22 )
	lhu x21 ,  4 ( x22 )
	lhu x23 ,  2 ( x22 )
	lhu x22 ,  336 ( x2 )
	jal x0, .LBB0_139
.LBB0_130:                              //  %for.end194.i
	addi x15 ,  x2 ,  284
	sh x25 ,  290 ( x2 )
	lhu x25 ,  6 ( x11 )
	lui x30 ,  32767&4095
	lui x13 ,  (16383>>12)&1048575
	sh x24 ,  2 ( x15 )
	sh x18 ,  8 ( x15 )
	lhu x24 ,  2 ( x11 )
	srli x30 ,  x30 ,  12&31
	sh x6 ,  24 ( x15 )
	sh x22 ,  22 ( x15 )
	sh x23 ,  20 ( x15 )
	sh x21 ,  18 ( x15 )
	sh x19 ,  16 ( x15 )
	sh x8 ,  14 ( x15 )
	sh x26 ,  12 ( x15 )
	sh x27 ,  10 ( x15 )
	sh x0 ,  4 ( x15 )
	lhu x18 ,  266 ( x2 )
	or x15 ,  x20 ,  x30
	sh x24 ,  354 ( x2 )
	bne x24, x15, .LBB0_133
.LBB0_131:                              //  %for.body.preheader.i.i1336.i
	lhu x14 ,  10 ( x11 )
	or x15 ,  x25 ,  x18
	addi x12 ,  x2 ,  336
	sh x0 ,  350 ( x2 )
	sh x0 ,  336 ( x2 )
	sh x0 ,  12 ( x12 )
	sh x0 ,  10 ( x12 )
	sh x0 ,  8 ( x12 )
	sh x0 ,  6 ( x12 )
	sh x0 ,  4 ( x12 )
	sh x0 ,  2 ( x12 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  12 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  14 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  16 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  18 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  20 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  22 ( x11 )
	or x15 ,  x14 ,  x15
	lhu x14 ,  282 ( x2 )
	or x15 ,  x14 ,  x15
	beq x0, x15, .LBB0_136
.LBB0_132:                              //  %if.then11.i1372.i
	lui x30 ,  32767&4095
	add x23 ,  x0 ,  x0
	lui x25 ,  (49152>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x25 ,  16 ( x12 )
	add x21 ,  x0 ,  x23
	add x19 ,  x0 ,  x23
	add x8 ,  x0 ,  x23
	add x26 ,  x0 ,  x23
	add x27 ,  x0 ,  x23
	add x18 ,  x0 ,  x23
	jal x0, .LBB0_137
.LBB0_133:                              //  %for.end194.i.if.end13.i1399.i_crit_edge
	lhu x22 ,  280 ( x2 )
	lhu x23 ,  20 ( x11 )
	lhu x21 ,  18 ( x11 )
	lhu x19 ,  16 ( x11 )
	lhu x8 ,  14 ( x11 )
	lhu x26 ,  12 ( x11 )
	lhu x27 ,  10 ( x11 )
.LBB0_134:                              //  %if.end13.i1399.i
	addi x15 ,  x2 ,  336
	sh x23 ,  338 ( x2 )
	sh x22 ,  336 ( x2 )
	sh x18 ,  14 ( x15 )
	sh x25 ,  16 ( x15 )
	sh x27 ,  12 ( x15 )
	sh x26 ,  10 ( x15 )
	sh x8 ,  8 ( x15 )
	sh x19 ,  6 ( x15 )
	sh x21 ,  4 ( x15 )
	jal x0, .LBB0_139
.LBB0_135:
	add x24 ,  x0 ,  x0
	lui x13 ,  (16383>>12)&1048575
	add x9 ,  x0 ,  x24
	jal x0, .LBB0_139
.LBB0_136:                              //  %if.end12.i1381.i
	lui x30 ,  32767&4095
	add x23 ,  x0 ,  x0
	sh x0 ,  16 ( x12 )
	srli x30 ,  x30 ,  12&31
	add x21 ,  x0 ,  x23
	add x19 ,  x0 ,  x23
	add x8 ,  x0 ,  x23
	add x26 ,  x0 ,  x23
	add x27 ,  x0 ,  x23
	add x18 ,  x0 ,  x23
	add x25 ,  x0 ,  x23
.LBB0_137:                              //  %if.end197.i
	or x24 ,  x20 ,  x30
	sh x24 ,  354 ( x2 )
	add x22 ,  x0 ,  x23
.LBB0_139:                              //  %if.end197.i
	lui x30 ,  16383&4095
	addi x15 ,  x2 ,  310
	sh x18 ,  14 ( x11 )
	lui x18 ,  (eone>>12)&1048575
	sh x25 ,  16 ( x11 )
	sh x27 ,  12 ( x11 )
	sh x26 ,  10 ( x11 )
	sh x8 ,  8 ( x11 )
	sh x19 ,  6 ( x11 )
	sh x21 ,  4 ( x11 )
	sh x23 ,  2 ( x11 )
	sh x24 ,  276 ( x2 )
	sh x22 ,  258 ( x2 )
	sh x0 ,  310 ( x2 )
	add x14 ,  x0 ,  x15
	lui x15 ,  (32768>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x15 ,  16 ( x14 )
	or x15 ,  x13 ,  x30
	lui x30 ,  eone&4095
	sh x0 ,  14 ( x14 )
	sh x0 ,  12 ( x14 )
	sh x0 ,  10 ( x14 )
	sh x0 ,  8 ( x14 )
	sh x0 ,  6 ( x14 )
	sh x0 ,  4 ( x14 )
	sh x0 ,  2 ( x14 )
	srli x30 ,  x30 ,  12&31
	sh x15 ,  328 ( x2 )
	or x10 ,  x18 ,  x30
	call ecmp
	bge x0, x10, .LBB0_145
.LBB0_140:                              //  %while.body206.i.preheader
	lui x30 ,  etens&4095
	lui x15 ,  (etens>>12)&1048575
	add x19 ,  x0 ,  x9
	addi x24 ,  x2 ,  258
	addi x25 ,  x2 ,  152
	addi x26 ,  x2 ,  310
	addi x9 ,  x2 ,  310
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	lui x30 ,  emtens&4095
	lui x15 ,  (emtens>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
.LBB0_141:                              //  %while.body206.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call ecmp
	blt x10, x0, .LBB0_143
.LBB0_142:                              //  %if.then211.i
                                        //    in Loop: Header=BB0_141 Depth=1
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call emul
	add x10 ,  x0 ,  x22
	add x12 ,  x0 ,  x26
	add x11 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call emul
	add x19 ,  x19 ,  x8
.LBB0_143:                              //  %if.end217.i
                                        //    in Loop: Header=BB0_141 Depth=1
	addi x15 ,  x8 ,  1
	sltiu x15 ,  x15 ,  3
	bltu x0, x15, .LBB0_146
.LBB0_144:                              //  %if.end221.i
                                        //    in Loop: Header=BB0_141 Depth=1
	lui x30 ,  eone&4095
	slt x15 ,  x8 ,  x0
	add x11 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	add x8 ,  x15 ,  x8
	or x10 ,  x18 ,  x30
	call ecmp
	addi x22 ,  x22 ,  20
	addi x23 ,  x23 ,  20
	srai x8 ,  x8 ,  1&31
	blt x0, x10, .LBB0_141
	jal x0, .LBB0_146
.LBB0_145:
	add x19 ,  x0 ,  x9
	addi x9 ,  x2 ,  310
.LBB0_146:                              //  %while.end224.i
	lui x30 ,  eone&4095
	addi x10 ,  x2 ,  310
	addi x13 ,  x2 ,  152
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x10
	or x11 ,  x18 ,  x30
	call ediv
.LBB0_147:                              //  %isone.i
	lhu x14 ,  328 ( x2 )
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x20 ,  x30
	slli x15 ,  x14 ,  16&31
	and x14 ,  x13 ,  x14
	srai x15 ,  x15 ,  31&31
	sh x14 ,  260 ( x2 )
	sh x15 ,  258 ( x2 )
	bne x14, x13, .LBB0_150
.LBB0_148:                              //  %for.body.preheader.i.i1090.i
	lhu x7 ,  2 ( x9 )
	lui x30 ,  65535&4095
	lui x8 ,  (65535>>12)&1048575
	addi x22 ,  x2 ,  336
	sh x0 ,  262 ( x2 )
	lhu x16 ,  310 ( x2 )
	srli x30 ,  x30 ,  12&31
	lhu x13 ,  4 ( x9 )
	or x8 ,  x8 ,  x30
	or x12 ,  x16 ,  x7
	or x11 ,  x13 ,  x12
	lhu x12 ,  6 ( x9 )
	or x10 ,  x12 ,  x11
	lhu x11 ,  8 ( x9 )
	or x5 ,  x11 ,  x10
	lhu x10 ,  10 ( x9 )
	or x6 ,  x10 ,  x5
	lhu x5 ,  12 ( x9 )
	or x17 ,  x5 ,  x6
	lhu x6 ,  14 ( x9 )
	or x29 ,  x6 ,  x17
	lhu x17 ,  326 ( x2 )
	or x29 ,  x17 ,  x29
	and x29 ,  x8 ,  x29
	beq x0, x29, .LBB0_151
.LBB0_149:                              //  %if.then13.i1132.i
	addi x29 ,  x2 ,  258
	sh x16 ,  22 ( x29 )
	sh x7 ,  20 ( x29 )
	sh x13 ,  18 ( x29 )
	sh x12 ,  16 ( x29 )
	sh x11 ,  14 ( x29 )
	sh x10 ,  12 ( x29 )
	sh x5 ,  10 ( x29 )
	sh x6 ,  8 ( x29 )
	sh x17 ,  6 ( x29 )
	lh x29 ,  308 ( x2 )
	sh x29 ,  282 ( x2 )
	jal x0, .LBB0_152
.LBB0_150:                              //  %if.end28.i1150.i
	lhu x13 ,  4 ( x9 )
	addi x29 ,  x2 ,  258
	addi x22 ,  x2 ,  336
	sh x0 ,  282 ( x2 )
	lhu x12 ,  6 ( x9 )
	sh x0 ,  4 ( x29 )
	lhu x11 ,  8 ( x9 )
	lhu x10 ,  10 ( x9 )
	lhu x5 ,  12 ( x9 )
	sh x13 ,  18 ( x29 )
	lhu x6 ,  14 ( x9 )
	sh x12 ,  16 ( x29 )
	lhu x17 ,  16 ( x9 )
	sh x11 ,  14 ( x29 )
	lhu x7 ,  312 ( x2 )
	sh x10 ,  12 ( x29 )
	lhu x16 ,  310 ( x2 )
	sh x5 ,  10 ( x29 )
	sh x6 ,  8 ( x29 )
	sh x17 ,  6 ( x29 )
	sh x7 ,  20 ( x29 )
	sh x16 ,  22 ( x29 )
	jal x0, .LBB0_152
.LBB0_151:                              //  %for.cond20.preheader.i1088.i
	addi x13 ,  x2 ,  258
	add x6 ,  x0 ,  x0
	sh x0 ,  282 ( x2 )
	sh x0 ,  22 ( x13 )
	sh x0 ,  20 ( x13 )
	sh x0 ,  18 ( x13 )
	sh x0 ,  16 ( x13 )
	sh x0 ,  14 ( x13 )
	sh x0 ,  12 ( x13 )
	sh x0 ,  10 ( x13 )
	sh x0 ,  8 ( x13 )
	sh x0 ,  6 ( x13 )
	add x5 ,  x0 ,  x6
	add x10 ,  x0 ,  x6
	add x11 ,  x0 ,  x6
	add x12 ,  x0 ,  x6
	add x13 ,  x0 ,  x6
	add x7 ,  x0 ,  x6
	add x16 ,  x0 ,  x6
	add x17 ,  x0 ,  x6
.LBB0_152:                              //  %emovi.exit1152.i
	sh x14 ,  2 ( x9 )
	lh x14 ,  354 ( x2 )
	lui x30 ,  32767&4095
	sh x13 ,  18 ( x9 )
	sh x15 ,  310 ( x2 )
	sh x16 ,  22 ( x9 )
	sh x7 ,  20 ( x9 )
	sh x12 ,  16 ( x9 )
	sh x11 ,  14 ( x9 )
	sh x10 ,  12 ( x9 )
	sh x5 ,  10 ( x9 )
	sh x6 ,  8 ( x9 )
	sh x17 ,  6 ( x9 )
	sh x0 ,  4 ( x9 )
	sh x0 ,  334 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x20 ,  x30
	srai x15 ,  x14 ,  15&31
	and x14 ,  x13 ,  x14
	sh x15 ,  258 ( x2 )
	sh x14 ,  260 ( x2 )
	bne x14, x13, .LBB0_155
.LBB0_153:                              //  %for.body.preheader.i.i984.i
	lhu x7 ,  2 ( x22 )
	lui x30 ,  65535&4095
	lui x8 ,  (65535>>12)&1048575
	sh x0 ,  262 ( x2 )
	lhu x17 ,  336 ( x2 )
	srli x30 ,  x30 ,  12&31
	lhu x13 ,  4 ( x22 )
	or x8 ,  x8 ,  x30
	or x12 ,  x17 ,  x7
	or x11 ,  x13 ,  x12
	lhu x12 ,  6 ( x22 )
	or x10 ,  x12 ,  x11
	lhu x11 ,  8 ( x22 )
	or x5 ,  x11 ,  x10
	lhu x10 ,  10 ( x22 )
	or x6 ,  x10 ,  x5
	lhu x5 ,  12 ( x22 )
	or x16 ,  x5 ,  x6
	lhu x6 ,  14 ( x22 )
	or x29 ,  x6 ,  x16
	lhu x16 ,  352 ( x2 )
	or x29 ,  x16 ,  x29
	and x29 ,  x8 ,  x29
	beq x0, x29, .LBB0_185
.LBB0_154:                              //  %if.then13.i1026.i
	lh x8 ,  334 ( x2 )
	addi x29 ,  x2 ,  258
	sh x7 ,  20 ( x29 )
	sh x13 ,  18 ( x29 )
	sh x12 ,  16 ( x29 )
	sh x11 ,  14 ( x29 )
	sh x10 ,  12 ( x29 )
	sh x5 ,  10 ( x29 )
	sh x6 ,  8 ( x29 )
	sh x16 ,  6 ( x29 )
	sh x8 ,  24 ( x29 )
	jal x0, .LBB0_156
.LBB0_155:                              //  %if.end28.i1044.i
	lhu x13 ,  4 ( x22 )
	addi x17 ,  x2 ,  258
	lhu x12 ,  6 ( x22 )
	sh x0 ,  4 ( x17 )
	sh x0 ,  24 ( x17 )
	lhu x11 ,  8 ( x22 )
	lhu x10 ,  10 ( x22 )
	lhu x5 ,  12 ( x22 )
	sh x13 ,  18 ( x17 )
	lhu x6 ,  14 ( x22 )
	sh x12 ,  16 ( x17 )
	lhu x16 ,  16 ( x22 )
	sh x11 ,  14 ( x17 )
	lhu x7 ,  338 ( x2 )
	sh x10 ,  12 ( x17 )
	sh x5 ,  10 ( x17 )
	sh x6 ,  8 ( x17 )
	sh x16 ,  6 ( x17 )
	sh x7 ,  20 ( x17 )
	lhu x17 ,  336 ( x2 )
.LBB0_156:                              //  %emovi.exit1046.i
	sh x17 ,  280 ( x2 )
.LBB0_157:                              //  %emovi.exit1046.i
	sh x12 ,  16 ( x22 )
	sh x11 ,  14 ( x22 )
	sh x10 ,  12 ( x22 )
	addi x10 ,  x2 ,  310
	addi x12 ,  x2 ,  152
	add x11 ,  x0 ,  x22
	sh x17 ,  22 ( x22 )
	sh x7 ,  20 ( x22 )
	sh x13 ,  18 ( x22 )
	sh x5 ,  10 ( x22 )
	sh x6 ,  8 ( x22 )
	sh x16 ,  6 ( x22 )
	sh x14 ,  2 ( x22 )
	sh x15 ,  336 ( x2 )
	sh x0 ,  4 ( x22 )
	sh x0 ,  360 ( x2 )
	call eiremain
	lhu x15 ,  228 ( x2 )
	bltu x0, x15, .LBB0_162
.LBB0_158:                              //  %land.rhs.lr.ph.i
	addi x25 ,  x2 ,  284
.LBB0_159:                              //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  ezero&4095
	lui x15 ,  (ezero>>12)&1048575
	add x10 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call ecmp
	beq x0, x10, .LBB0_161
.LBB0_160:                              //  %while.body247.i
                                        //    in Loop: Header=BB0_159 Depth=1
	lhu x15 ,  24 ( x22 )
	lui x30 ,  65532&4095
	add x9 ,  x0 ,  x19
	sh x0 ,  24 ( x25 )
	lhu x12 ,  22 ( x22 )
	srli x30 ,  x30 ,  12&31
	lhu x6 ,  20 ( x22 )
	lhu x7 ,  18 ( x22 )
	sw x15 ,  60 ( x2 )             //  4-byte Folded Spill
	srli x15 ,  x15 ,  15&31
	lhu x8 ,  16 ( x22 )
	slli x14 ,  x12 ,  1&31
	lhu x21 ,  14 ( x22 )
	or x16 ,  x15 ,  x14
	lui x15 ,  (65532>>12)&1048575
	slli x5 ,  x6 ,  1&31
	slli x14 ,  x16 ,  2&31
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x14 ,  72 ( x2 )             //  4-byte Folded Spill
	and x15 ,  x15 ,  x14
	srli x30 ,  x30 ,  12&31
	lui x14 ,  (65535>>12)&1048575
	or x14 ,  x14 ,  x30
	slli x22 ,  x21 ,  1&31
	and x11 ,  x14 ,  x16
	add x15 ,  x11 ,  x15
	srli x11 ,  x12 ,  15&31
	or x1 ,  x11 ,  x5
	srli x11 ,  x6 ,  15&31
	slli x5 ,  x7 ,  1&31
	sw x15 ,  68 ( x2 )             //  4-byte Folded Spill
	or x26 ,  x11 ,  x5
	srli x11 ,  x6 ,  14&31
	slli x17 ,  x1 ,  1&31
	and x29 ,  x14 ,  x1
	andi x11 ,  x11 ,  1
	slli x5 ,  x26 ,  1&31
	or x11 ,  x11 ,  x5
	srli x5 ,  x12 ,  14&31
	srli x12 ,  x12 ,  13&31
	andi x5 ,  x5 ,  1
	andi x12 ,  x12 ,  1
	or x5 ,  x5 ,  x17
	srli x17 ,  x15 ,  16&31
	slli x5 ,  x5 ,  1&31
	add x17 ,  x29 ,  x17
	slli x29 ,  x8 ,  1&31
	or x5 ,  x12 ,  x5
	slli x12 ,  x11 ,  1&31
	srli x11 ,  x6 ,  13&31
	andi x11 ,  x11 ,  1
	sh x5 ,  20 ( x25 )
	or x6 ,  x11 ,  x12
	and x12 ,  x14 ,  x26
	and x11 ,  x14 ,  x6
	sh x6 ,  18 ( x25 )
	add x11 ,  x12 ,  x11
	and x12 ,  x14 ,  x5
	add x15 ,  x12 ,  x17
	srli x17 ,  x7 ,  15&31
	or x19 ,  x17 ,  x29
	srli x17 ,  x7 ,  14&31
	srli x7 ,  x7 ,  13&31
	sw x15 ,  64 ( x2 )             //  4-byte Folded Spill
	andi x17 ,  x17 ,  1
	slli x29 ,  x19 ,  1&31
	andi x7 ,  x7 ,  1
	or x17 ,  x17 ,  x29
	srli x29 ,  x15 ,  16&31
	addi x15 ,  x2 ,  336
	andi x29 ,  x29 ,  1
	slli x17 ,  x17 ,  1&31
	add x20 ,  x29 ,  x11
	srli x29 ,  x8 ,  15&31
	addi x11 ,  x2 ,  336
	or x22 ,  x29 ,  x22
	or x29 ,  x7 ,  x17
	and x7 ,  x14 ,  x19
	and x17 ,  x14 ,  x29
	slli x24 ,  x22 ,  1&31
	sh x29 ,  16 ( x25 )
	add x7 ,  x7 ,  x17
	srli x17 ,  x8 ,  14&31
	srli x8 ,  x8 ,  13&31
	andi x17 ,  x17 ,  1
	andi x8 ,  x8 ,  1
	or x17 ,  x17 ,  x24
	lhu x24 ,  12 ( x15 )
	slli x17 ,  x17 ,  1&31
	lhu x15 ,  10 ( x15 )
	or x27 ,  x8 ,  x17
	srli x17 ,  x20 ,  16&31
	andi x17 ,  x17 ,  1
	and x8 ,  x14 ,  x27
	sh x27 ,  14 ( x25 )
	add x7 ,  x17 ,  x7
	and x17 ,  x14 ,  x22
	slli x18 ,  x24 ,  1&31
	add x17 ,  x17 ,  x8
	srli x8 ,  x21 ,  15&31
	slli x13 ,  x15 ,  1&31
	or x18 ,  x8 ,  x18
	srli x8 ,  x21 ,  14&31
	srli x21 ,  x21 ,  13&31
	andi x8 ,  x8 ,  1
	slli x23 ,  x18 ,  1&31
	andi x21 ,  x21 ,  1
	or x8 ,  x8 ,  x23
	srli x23 ,  x7 ,  16&31
	andi x23 ,  x23 ,  1
	slli x8 ,  x8 ,  1&31
	or x21 ,  x21 ,  x8
	add x17 ,  x23 ,  x17
	srli x23 ,  x24 ,  15&31
	and x8 ,  x14 ,  x18
	or x13 ,  x23 ,  x13
	and x23 ,  x14 ,  x21
	sh x21 ,  12 ( x25 )
	add x8 ,  x8 ,  x23
	srli x23 ,  x24 ,  14&31
	slli x12 ,  x13 ,  1&31
	andi x23 ,  x23 ,  1
	or x12 ,  x23 ,  x12
	srli x23 ,  x24 ,  13&31
	slli x12 ,  x12 ,  1&31
	andi x23 ,  x23 ,  1
	or x24 ,  x23 ,  x12
	lhu x23 ,  8 ( x11 )
	srli x12 ,  x17 ,  16&31
	andi x12 ,  x12 ,  1
	and x10 ,  x14 ,  x24
	sh x24 ,  10 ( x25 )
	add x8 ,  x12 ,  x8
	srli x12 ,  x15 ,  15&31
	slli x11 ,  x23 ,  1&31
	or x12 ,  x12 ,  x11
	and x11 ,  x14 ,  x13
	add x11 ,  x11 ,  x10
	addi x10 ,  x2 ,  336
	sh x22 ,  14 ( x10 )
	addi x22 ,  x2 ,  336
	sh x1 ,  20 ( x10 )
	sh x16 ,  22 ( x10 )
	sh x26 ,  18 ( x10 )
	sh x19 ,  16 ( x10 )
	slli x10 ,  x12 ,  1&31
	lhu x1 ,  6 ( x22 )
	sh x13 ,  10 ( x22 )
	srli x13 ,  x15 ,  14&31
	sh x18 ,  12 ( x22 )
	srli x15 ,  x15 ,  13&31
	sh x12 ,  8 ( x22 )
	and x12 ,  x14 ,  x12
	sh x20 ,  18 ( x22 )
	sh x7 ,  16 ( x22 )
	sh x17 ,  14 ( x22 )
	sh x8 ,  12 ( x22 )
	andi x13 ,  x13 ,  1
	andi x15 ,  x15 ,  1
	or x13 ,  x13 ,  x10
	srli x10 ,  x23 ,  15&31
	slli x13 ,  x13 ,  1&31
	slli x16 ,  x1 ,  1&31
	srli x18 ,  x1 ,  15&31
	or x15 ,  x15 ,  x13
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	or x10 ,  x10 ,  x16
	srli x16 ,  x8 ,  16&31
	sh x15 ,  8 ( x25 )
	andi x16 ,  x16 ,  1
	slli x19 ,  x10 ,  1&31
	sh x10 ,  6 ( x22 )
	add x16 ,  x16 ,  x11
	lh x11 ,  4 ( x22 )
	slli x13 ,  x13 ,  1&31
	sh x16 ,  10 ( x22 )
	sh x13 ,  24 ( x22 )
	sh x13 ,  24 ( x22 )
	slli x11 ,  x11 ,  1&31
	or x11 ,  x18 ,  x11
	lh x18 ,  336 ( x2 )
	sh x11 ,  4 ( x22 )
	sh x18 ,  284 ( x2 )
	and x18 ,  x14 ,  x15
	and x15 ,  x14 ,  x10
	slli x10 ,  x11 ,  1&31
	add x12 ,  x12 ,  x18
	srli x18 ,  x23 ,  14&31
	andi x18 ,  x18 ,  1
	or x18 ,  x18 ,  x19
	srli x19 ,  x16 ,  16&31
	andi x19 ,  x19 ,  1
	slli x18 ,  x18 ,  1&31
	add x12 ,  x19 ,  x12
	srli x19 ,  x23 ,  13&31
	andi x19 ,  x19 ,  1
	sh x12 ,  8 ( x22 )
	or x18 ,  x19 ,  x18
	lh x19 ,  338 ( x2 )
	and x14 ,  x14 ,  x18
	sh x18 ,  6 ( x25 )
	add x15 ,  x15 ,  x14
	srli x14 ,  x12 ,  16&31
	addi x12 ,  x2 ,  152
	andi x14 ,  x14 ,  1
	add x15 ,  x14 ,  x15
	srli x14 ,  x1 ,  14&31
	sh x19 ,  2 ( x25 )
	add x19 ,  x0 ,  x9
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	andi x14 ,  x14 ,  1
	sh x15 ,  6 ( x22 )
	or x14 ,  x14 ,  x10
	srli x10 ,  x1 ,  13&31
	slli x14 ,  x14 ,  1&31
	andi x10 ,  x10 ,  1
	or x14 ,  x10 ,  x14
	srli x10 ,  x15 ,  16&31
	sh x9 ,  22 ( x25 )
	add x11 ,  x11 ,  x14
	sh x14 ,  288 ( x2 )
	lw x14 ,  68 ( x2 )             //  4-byte Folded Reload
	andi x10 ,  x10 ,  1
	add x11 ,  x10 ,  x11
	addi x10 ,  x2 ,  310
	sh x11 ,  4 ( x22 )
	add x11 ,  x0 ,  x22
	sh x14 ,  22 ( x22 )
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	sh x14 ,  20 ( x22 )
	call eiremain
	lhu x15 ,  228 ( x2 )
	addi x19 ,  x19 ,  -1
	beq x0, x15, .LBB0_159
	jal x0, .LBB0_162
.LBB0_161:
	add x15 ,  x0 ,  x0
.LBB0_162:                              //  %while.end260.i
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	addi x12 ,  x0 ,  3
	add x14 ,  x0 ,  x19
	beq x25, x12, .LBB0_164
.LBB0_163:                              //  %while.end260.i
	add x14 ,  x0 ,  x13
.LBB0_164:                              //  %while.end260.i
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x0
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x12 ,  56 ( x2 )             //  4-byte Folded Reload
	beq x12, x13, .LBB0_166
.LBB0_165:                              //  %while.end260.i
	addi x13 ,  x0 ,  45
	jal x0, .LBB0_167
.LBB0_166:
	addi x13 ,  x0 ,  32
.LBB0_167:                              //  %while.end260.i
	lw x9 ,  44 ( x2 )              //  4-byte Folded Reload
	sb x13 ,  94 ( x2 )
	add x13 ,  x10 ,  x14
	addi x12 ,  x0 ,  42
	lui x20 ,  (32767>>12)&1048575
	add x14 ,  x0 ,  x13
	blt x13, x12, .LBB0_169
.LBB0_168:                              //  %while.end260.i
	add x14 ,  x0 ,  x12
.LBB0_169:                              //  %while.end260.i
	xori x12 ,  x15 ,  10
	addi x11 ,  x0 ,  46
	bltu x0, x12, .LBB0_174
.LBB0_170:                              //  %if.then277.i
	addi x12 ,  x2 ,  94
	sb x11 ,  2 ( x12 )
	addi x11 ,  x0 ,  49
	sb x11 ,  1 ( x12 )
	bge x0, x13, .LBB0_186
.LBB0_171:                              //  %if.end285.thread.i
	addi x13 ,  x0 ,  48
	addi x19 ,  x19 ,  1
	addi x14 ,  x14 ,  -1
	addi x24 ,  x12 ,  4
	sb x13 ,  97 ( x2 )
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	bge x14, x0, .LBB0_175
.LBB0_172:
	slti x19 ,  x0 ,  1
	addi x18 ,  x24 ,  -1
	sltiu x14 ,  x15 ,  5
	bltu x0, x14, .LBB0_173
.LBB0_179:                              //  %if.then326.i
	xori x15 ,  x15 ,  5
	bltu x0, x15, .LBB0_193
.LBB0_180:                              //  %if.then329.i
	lhu x14 ,  2 ( x22 )
	lui x30 ,  -32768&4095
	lui x15 ,  (-32768>>12)&1048575
	add x11 ,  x0 ,  x0
	lhu x12 ,  336 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	add x15 ,  x0 ,  x14
	beq x12, x11, .LBB0_182
.LBB0_181:                              //  %if.then329.i
	or x15 ,  x13 ,  x14
.LBB0_182:                              //  %if.then329.i
	lhu x13 ,  342 ( x2 )
	lui x30 ,  32767&4095
	sh x15 ,  328 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	bne x14, x12, .LBB0_188
.LBB0_183:                              //  %for.body.preheader.i.i.i
	lhu x14 ,  8 ( x22 )
	addi x12 ,  x2 ,  310
	sh x0 ,  324 ( x2 )
	sh x0 ,  310 ( x2 )
	sh x0 ,  12 ( x12 )
	sh x0 ,  10 ( x12 )
	sh x0 ,  8 ( x12 )
	sh x0 ,  6 ( x12 )
	sh x0 ,  4 ( x12 )
	sh x0 ,  2 ( x12 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  10 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  14 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  16 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  20 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x22 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  360 ( x2 )
	or x14 ,  x13 ,  x14
	beq x0, x14, .LBB0_190
.LBB0_184:                              //  %if.then11.i.i
	lui x30 ,  32767&4095
	lui x15 ,  (49152>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sh x15 ,  16 ( x12 )
	or x15 ,  x20 ,  x30
	jal x0, .LBB0_191
.LBB0_174:                              //  %if.else291.i
	addi x24 ,  x2 ,  97
	addi x13 ,  x2 ,  94
	addi x12 ,  x15 ,  48
	sb x11 ,  2 ( x13 )
	sb x12 ,  1 ( x13 )
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	bge x14, x0, .LBB0_175
	jal x0, .LBB0_172
.LBB0_185:                              //  %for.cond20.preheader.i982.i
	addi x13 ,  x2 ,  258
	add x6 ,  x0 ,  x0
	sh x0 ,  280 ( x2 )
	sh x0 ,  24 ( x13 )
	sh x0 ,  20 ( x13 )
	sh x0 ,  18 ( x13 )
	sh x0 ,  16 ( x13 )
	sh x0 ,  14 ( x13 )
	sh x0 ,  12 ( x13 )
	sh x0 ,  10 ( x13 )
	sh x0 ,  8 ( x13 )
	sh x0 ,  6 ( x13 )
	add x5 ,  x0 ,  x6
	add x10 ,  x0 ,  x6
	add x11 ,  x0 ,  x6
	add x12 ,  x0 ,  x6
	add x13 ,  x0 ,  x6
	add x7 ,  x0 ,  x6
	add x17 ,  x0 ,  x6
	add x16 ,  x0 ,  x6
	jal x0, .LBB0_157
.LBB0_186:                              //  %if.end285.i
	addi x24 ,  x2 ,  97
	addi x19 ,  x19 ,  1
	blt x14, x0, .LBB0_189
.LBB0_187:
	add x14 ,  x0 ,  x0
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
.LBB0_175:
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  44 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	addi x18 ,  x14 ,  1
	addi x25 ,  x2 ,  284
.LBB0_177:                              //  %for.body302.i
                                        //  =>This Inner Loop Header: Depth=1
	lhu x15 ,  24 ( x22 )
	lui x30 ,  65532&4095
	add x10 ,  x0 ,  x24
	sh x0 ,  24 ( x25 )
	lhu x12 ,  22 ( x22 )
	srli x30 ,  x30 ,  12&31
	lhu x6 ,  20 ( x22 )
	lhu x7 ,  18 ( x22 )
	sw x15 ,  60 ( x2 )             //  4-byte Folded Spill
	srli x15 ,  x15 ,  15&31
	lhu x19 ,  16 ( x22 )
	slli x14 ,  x12 ,  1&31
	lhu x21 ,  14 ( x22 )
	or x16 ,  x15 ,  x14
	lui x15 ,  (65532>>12)&1048575
	slli x5 ,  x6 ,  1&31
	slli x14 ,  x16 ,  2&31
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x14 ,  68 ( x2 )             //  4-byte Folded Spill
	and x15 ,  x15 ,  x14
	srli x30 ,  x30 ,  12&31
	lui x14 ,  (65535>>12)&1048575
	or x14 ,  x14 ,  x30
	slli x22 ,  x21 ,  1&31
	and x11 ,  x14 ,  x16
	add x15 ,  x11 ,  x15
	srli x11 ,  x12 ,  15&31
	or x1 ,  x11 ,  x5
	srli x11 ,  x6 ,  15&31
	slli x5 ,  x7 ,  1&31
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
	or x26 ,  x11 ,  x5
	srli x11 ,  x6 ,  14&31
	slli x17 ,  x1 ,  1&31
	and x29 ,  x14 ,  x1
	andi x11 ,  x11 ,  1
	slli x5 ,  x26 ,  1&31
	or x11 ,  x11 ,  x5
	srli x5 ,  x12 ,  14&31
	srli x12 ,  x12 ,  13&31
	andi x5 ,  x5 ,  1
	andi x12 ,  x12 ,  1
	or x5 ,  x5 ,  x17
	srli x17 ,  x15 ,  16&31
	slli x5 ,  x5 ,  1&31
	add x17 ,  x29 ,  x17
	slli x29 ,  x19 ,  1&31
	or x5 ,  x12 ,  x5
	slli x12 ,  x11 ,  1&31
	srli x11 ,  x6 ,  13&31
	andi x11 ,  x11 ,  1
	sh x5 ,  20 ( x25 )
	or x6 ,  x11 ,  x12
	and x12 ,  x14 ,  x26
	and x11 ,  x14 ,  x6
	sh x6 ,  18 ( x25 )
	add x11 ,  x12 ,  x11
	and x12 ,  x14 ,  x5
	add x15 ,  x12 ,  x17
	srli x17 ,  x7 ,  15&31
	or x24 ,  x17 ,  x29
	srli x17 ,  x7 ,  14&31
	srli x7 ,  x7 ,  13&31
	sw x15 ,  64 ( x2 )             //  4-byte Folded Spill
	andi x17 ,  x17 ,  1
	slli x29 ,  x24 ,  1&31
	andi x7 ,  x7 ,  1
	or x17 ,  x17 ,  x29
	srli x29 ,  x15 ,  16&31
	andi x29 ,  x29 ,  1
	slli x17 ,  x17 ,  1&31
	add x15 ,  x29 ,  x11
	srli x29 ,  x19 ,  15&31
	addi x11 ,  x2 ,  336
	or x23 ,  x29 ,  x22
	or x29 ,  x7 ,  x17
	and x7 ,  x14 ,  x24
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
	and x17 ,  x14 ,  x29
	slli x22 ,  x23 ,  1&31
	sh x29 ,  16 ( x25 )
	add x7 ,  x7 ,  x17
	srli x17 ,  x19 ,  14&31
	srli x19 ,  x19 ,  13&31
	andi x17 ,  x17 ,  1
	andi x19 ,  x19 ,  1
	or x17 ,  x17 ,  x22
	slli x17 ,  x17 ,  1&31
	or x27 ,  x19 ,  x17
	srli x17 ,  x15 ,  16&31
	addi x15 ,  x2 ,  336
	lhu x22 ,  12 ( x15 )
	andi x17 ,  x17 ,  1
	and x19 ,  x14 ,  x27
	sh x27 ,  14 ( x25 )
	add x7 ,  x17 ,  x7
	and x17 ,  x14 ,  x23
	lhu x15 ,  10 ( x15 )
	add x17 ,  x17 ,  x19
	srli x19 ,  x21 ,  15&31
	slli x20 ,  x22 ,  1&31
	or x20 ,  x19 ,  x20
	srli x19 ,  x21 ,  14&31
	slli x13 ,  x15 ,  1&31
	andi x19 ,  x19 ,  1
	slli x9 ,  x20 ,  1&31
	or x9 ,  x19 ,  x9
	srli x19 ,  x7 ,  16&31
	andi x19 ,  x19 ,  1
	slli x9 ,  x9 ,  1&31
	add x17 ,  x19 ,  x17
	srli x19 ,  x22 ,  15&31
	or x13 ,  x19 ,  x13
	srli x19 ,  x21 ,  13&31
	andi x19 ,  x19 ,  1
	slli x12 ,  x13 ,  1&31
	or x19 ,  x19 ,  x9
	and x9 ,  x14 ,  x20
	and x21 ,  x14 ,  x19
	sh x19 ,  12 ( x25 )
	add x9 ,  x9 ,  x21
	srli x21 ,  x22 ,  14&31
	andi x21 ,  x21 ,  1
	or x12 ,  x21 ,  x12
	srli x21 ,  x22 ,  13&31
	slli x12 ,  x12 ,  1&31
	andi x21 ,  x21 ,  1
	or x22 ,  x21 ,  x12
	srli x12 ,  x17 ,  16&31
	andi x12 ,  x12 ,  1
	sh x22 ,  10 ( x25 )
	add x21 ,  x12 ,  x9
	lhu x9 ,  8 ( x11 )
	srli x12 ,  x15 ,  15&31
	and x11 ,  x14 ,  x22
	addi x22 ,  x2 ,  336
	slli x8 ,  x9 ,  1&31
	or x12 ,  x12 ,  x8
	and x8 ,  x14 ,  x13
	add x11 ,  x8 ,  x11
	addi x8 ,  x2 ,  336
	sh x16 ,  22 ( x8 )
	addi x16 ,  x2 ,  336
	lhu x8 ,  6 ( x8 )
	sh x13 ,  10 ( x16 )
	srli x13 ,  x15 ,  14&31
	sh x24 ,  16 ( x16 )
	sh x1 ,  20 ( x16 )
	sh x23 ,  14 ( x16 )
	sh x20 ,  12 ( x16 )
	sh x26 ,  18 ( x16 )
	slli x16 ,  x12 ,  1&31
	srli x15 ,  x15 ,  13&31
	add x24 ,  x0 ,  x10
	sh x7 ,  16 ( x22 )
	sh x17 ,  14 ( x22 )
	sh x21 ,  12 ( x22 )
	andi x13 ,  x13 ,  1
	andi x15 ,  x15 ,  1
	or x13 ,  x13 ,  x16
	srli x16 ,  x9 ,  15&31
	slli x13 ,  x13 ,  1&31
	slli x1 ,  x8 ,  1&31
	srli x10 ,  x8 ,  15&31
	or x15 ,  x15 ,  x13
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	or x1 ,  x16 ,  x1
	srli x16 ,  x21 ,  16&31
	andi x16 ,  x16 ,  1
	slli x20 ,  x1 ,  1&31
	sh x15 ,  8 ( x25 )
	add x16 ,  x16 ,  x11
	addi x11 ,  x2 ,  336
	sh x12 ,  8 ( x11 )
	sh x1 ,  6 ( x11 )
	and x12 ,  x14 ,  x12
	sh x16 ,  10 ( x22 )
	slli x13 ,  x13 ,  1&31
	sh x13 ,  24 ( x11 )
	lh x11 ,  4 ( x11 )
	sh x13 ,  24 ( x22 )
	slli x11 ,  x11 ,  1&31
	or x11 ,  x10 ,  x11
	addi x10 ,  x2 ,  336
	sh x11 ,  4 ( x10 )
	lh x10 ,  336 ( x2 )
	sh x10 ,  284 ( x2 )
	and x10 ,  x14 ,  x15
	and x15 ,  x14 ,  x1
	add x12 ,  x12 ,  x10
	srli x10 ,  x9 ,  14&31
	srli x9 ,  x9 ,  13&31
	andi x10 ,  x10 ,  1
	andi x9 ,  x9 ,  1
	or x10 ,  x10 ,  x20
	srli x20 ,  x16 ,  16&31
	slli x10 ,  x10 ,  1&31
	andi x20 ,  x20 ,  1
	or x10 ,  x9 ,  x10
	add x12 ,  x20 ,  x12
	lh x9 ,  338 ( x2 )
	and x14 ,  x14 ,  x10
	sh x10 ,  6 ( x25 )
	slli x10 ,  x11 ,  1&31
	sh x12 ,  8 ( x22 )
	add x15 ,  x15 ,  x14
	srli x14 ,  x12 ,  16&31
	addi x12 ,  x2 ,  152
	andi x14 ,  x14 ,  1
	add x15 ,  x14 ,  x15
	srli x14 ,  x8 ,  14&31
	sh x9 ,  2 ( x25 )
	lw x9 ,  68 ( x2 )              //  4-byte Folded Reload
	andi x14 ,  x14 ,  1
	sh x15 ,  6 ( x22 )
	or x14 ,  x14 ,  x10
	srli x10 ,  x8 ,  13&31
	slli x14 ,  x14 ,  1&31
	andi x10 ,  x10 ,  1
	or x14 ,  x10 ,  x14
	srli x10 ,  x15 ,  16&31
	sh x9 ,  22 ( x25 )
	add x11 ,  x11 ,  x14
	sh x14 ,  288 ( x2 )
	lw x14 ,  72 ( x2 )             //  4-byte Folded Reload
	andi x10 ,  x10 ,  1
	add x11 ,  x10 ,  x11
	addi x10 ,  x2 ,  310
	sh x11 ,  4 ( x22 )
	add x11 ,  x0 ,  x22
	sh x14 ,  22 ( x22 )
	lw x14 ,  64 ( x2 )             //  4-byte Folded Reload
	sh x14 ,  20 ( x22 )
	lw x14 ,  56 ( x2 )             //  4-byte Folded Reload
	sh x14 ,  18 ( x22 )
	call eiremain
	lb x15 ,  228 ( x2 )
	addi x18 ,  x18 ,  -1
	addi x15 ,  x15 ,  48
	sb x15 ,  0 ( x24 )
	addi x24 ,  x24 ,  1
	bltu x0, x18, .LBB0_177
.LBB0_178:                              //  %for.end320.i.loopexit
	lhu x15 ,  228 ( x2 )
	add x19 ,  x0 ,  x0
	add x27 ,  x0 ,  x0
	lui x20 ,  (32767>>12)&1048575
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  44 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x18 ,  x24 ,  -1
	sltiu x14 ,  x15 ,  5
	beq x0, x14, .LBB0_179
.LBB0_173:
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_203
.LBB0_188:                              //  %if.end13.i.i
	addi x15 ,  x2 ,  310
	add x14 ,  x0 ,  x15
	lh x15 ,  8 ( x22 )
	sh x13 ,  16 ( x14 )
	sh x15 ,  14 ( x14 )
	lh x15 ,  10 ( x22 )
	sh x15 ,  12 ( x14 )
	lh x15 ,  12 ( x22 )
	sh x15 ,  10 ( x14 )
	lh x15 ,  14 ( x22 )
	sh x15 ,  8 ( x14 )
	lh x15 ,  16 ( x22 )
	sh x15 ,  6 ( x14 )
	lh x15 ,  18 ( x22 )
	sh x15 ,  4 ( x14 )
	lh x15 ,  20 ( x22 )
	sh x15 ,  312 ( x2 )
	lh x15 ,  358 ( x2 )
	sh x15 ,  310 ( x2 )
	jal x0, .LBB0_192
.LBB0_189:
	add x18 ,  x0 ,  x24
	jal x0, .LBB0_203
.LBB0_190:                              //  %if.end12.i.i
	lui x30 ,  32767&4095
	sh x0 ,  16 ( x12 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	or x15 ,  x14 ,  x15
.LBB0_191:                              //  %emovo.exit.i
	sh x15 ,  328 ( x2 )
.LBB0_192:                              //  %emovo.exit.i
	lui x30 ,  ezero&4095
	lui x15 ,  (ezero>>12)&1048575
	addi x10 ,  x2 ,  310
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call ecmp
	beq x0, x10, .LBB0_257
.LBB0_193:                              //  %roun.preheader.i
	addi x14 ,  x24 ,  -2
	beq x0, x19, .LBB0_195
.LBB0_194:                              //  %if.then358.i
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  49
	sb x15 ,  0 ( x14 )
	jal x0, .LBB0_202
.LBB0_195:                              //  %roun.preheader.i.if.else360.preheader.i_crit_edge
	lbu x15 ,  0 ( x14 )
.LBB0_196:                              //  %if.else360.preheader.i
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	andi x13 ,  x15 ,  127
	add x15 ,  x0 ,  x18
	xori x12 ,  x13 ,  46
	beq x0, x12, .LBB0_200
.LBB0_197:                              //  %if.end374.i.preheader
	addi x15 ,  x14 ,  1
	addi x14 ,  x0 ,  48
.LBB0_198:                              //  %if.end374.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x12 ,  x13 ,  1
	andi x13 ,  x13 ,  255
	sltiu x13 ,  x13 ,  57
	sb x12 ,  -1 ( x15 )
	bltu x0, x13, .LBB0_203
.LBB0_199:                              //  %if.then379.i
                                        //    in Loop: Header=BB0_198 Depth=1
	lbu x13 ,  -2 ( x15 )
	sb x14 ,  -1 ( x15 )
	addi x15 ,  x15 ,  -1
	andi x13 ,  x13 ,  127
	xori x12 ,  x13 ,  46
	bltu x0, x12, .LBB0_198
.LBB0_200:                              //  %if.then363.i
	lb x14 ,  -2 ( x15 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  57
	sb x13 ,  -2 ( x15 )
	bltu x0, x14, .LBB0_203
.LBB0_201:                              //  %if.then370.i
	addi x14 ,  x0 ,  49
	sb x14 ,  -2 ( x15 )
.LBB0_202:                              //  %doexp.i
	addi x19 ,  x19 ,  1
.LBB0_203:                              //  %doexp.i
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	sw x19 ,  8 ( x2 )
	sw x18 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call sprintf
.LBB0_204:                              //  %etoasc.exit
	addi x15 ,  x2 ,  152
	lui x30 ,  32767&4095
	addi x18 ,  x2 ,  94
	sw x19 ,  168 ( x2 )
	sw x8 ,  4 ( x15 )
	lhu x15 ,  250 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	and x15 ,  x14 ,  x15
	bne x15, x14, .LBB0_222
.LBB0_205:                              //  %for.body.preheader.i.i216
	lhu x15 ,  232 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_206:                              //  %for.inc.i.i219
	lhu x15 ,  234 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_207:                              //  %for.inc.1.i.i222
	lhu x15 ,  236 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_208:                              //  %for.inc.2.i.i225
	lhu x15 ,  238 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_209:                              //  %for.inc.3.i.i228
	lhu x15 ,  240 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_210:                              //  %for.inc.4.i.i231
	lhu x15 ,  242 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_211:                              //  %for.inc.5.i.i234
	lhu x15 ,  244 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_212:                              //  %for.inc.6.i.i237
	lhu x15 ,  246 ( x2 )
	bltu x0, x15, .LBB0_214
.LBB0_213:                              //  %eisinf.exit
	lhu x15 ,  248 ( x2 )
	beq x0, x15, .LBB0_221
.LBB0_214:                              //  %for.inc.1.i
	lhu x15 ,  236 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_215:                              //  %for.inc.2.i
	lhu x15 ,  238 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_216:                              //  %for.inc.3.i
	lhu x15 ,  240 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_217:                              //  %for.inc.4.i
	lhu x15 ,  242 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_218:                              //  %for.inc.5.i
	lhu x15 ,  244 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_219:                              //  %for.inc.6.i
	lhu x15 ,  246 ( x2 )
	bltu x0, x15, .LBB0_221
.LBB0_220:                              //  %eisnan.exit
	lhu x15 ,  248 ( x2 )
	beq x0, x15, .LBB0_222
.LBB0_221:                              //  %if.then28
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x23 )
	jal x0, .LBB0_229
.LBB0_222:                              //  %if.end29
	lw x10 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x19 ,  1
	sw x15 ,  0 ( x23 )
	add x15 ,  x27 ,  x18
	lbu x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_227
.LBB0_223:                              //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xori x15 ,  x15 ,  46
	beq x0, x15, .LBB0_225
.LBB0_224:                              //  %if.end37
                                        //    in Loop: Header=BB0_223 Depth=1
	addi x27 ,  x27 ,  1
	add x15 ,  x27 ,  x18
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_223
	jal x0, .LBB0_227
.LBB0_225:                              //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x27 ,  x18
	addi x27 ,  x27 ,  1
	lbu x14 ,  1 ( x15 )
	sb x14 ,  0 ( x15 )
	bltu x0, x14, .LBB0_225
	jal x0, .LBB0_227
.LBB0_226:                              //  %while.cond45
                                        //    in Loop: Header=BB0_227 Depth=1
	add x14 ,  x27 ,  x18
	add x27 ,  x0 ,  x15
	lbu x14 ,  0 ( x14 )
	xori x14 ,  x14 ,  69
	beq x0, x14, .LBB0_228
.LBB0_227:                              //  %while.cond45
                                        //  =>This Inner Loop Header: Depth=1
	addi x15 ,  x27 ,  -1
	blt x0, x27, .LBB0_226
.LBB0_228:                              //  %while.end54
	add x15 ,  x15 ,  x18
	sb x0 ,  1 ( x15 )
.LBB0_229:                              //  %while.cond56.preheader
	lw x19 ,  444 ( x2 )
	addi x15 ,  x2 ,  95
	lbu x14 ,  -1 ( x15 )
	xori x13 ,  x14 ,  32
	bltu x0, x13, .LBB0_231
.LBB0_230:                              //  %while.body63
                                        //  =>This Inner Loop Header: Depth=1
	addi x15 ,  x15 ,  1
	lbu x14 ,  -1 ( x15 )
	xori x13 ,  x14 ,  32
	beq x0, x13, .LBB0_230
.LBB0_231:                              //  %while.cond56
	xori x13 ,  x14 ,  45
	beq x0, x13, .LBB0_230
.LBB0_232:                              //  %while.cond67.preheader
	sb x14 ,  94 ( x2 )
	beq x0, x14, .LBB0_236
.LBB0_233:                              //  %while.cond67thread-pre-split.preheader
	add x14 ,  x0 ,  x0
	addi x13 ,  x2 ,  94
.LBB0_234:                              //  %while.cond67thread-pre-split
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x14 ,  x15
	add x12 ,  x14 ,  x13
	addi x14 ,  x14 ,  1
	lbu x11 ,  0 ( x11 )
	sb x11 ,  1 ( x12 )
	bltu x0, x11, .LBB0_234
.LBB0_235:                              //  %while.end74.loopexit
	add x18 ,  x14 ,  x13
.LBB0_236:                              //  %while.end74
	xori x15 ,  x25 ,  2
	bltu x0, x15, .LBB0_238
.LBB0_237:
	slti x15 ,  x0 ,  1
	lbu x14 ,  -1 ( x18 )
	xori x14 ,  x14 ,  48
	beq x0, x14, .LBB0_241
	jal x0, .LBB0_244
.LBB0_238:                              //  %if.else79
	lw x14 ,  168 ( x2 )
	add x15 ,  x0 ,  x10
	blt x14, x10, .LBB0_240
.LBB0_239:                              //  %if.else79
	add x15 ,  x0 ,  x14
.LBB0_240:                              //  %if.end87
	lbu x14 ,  -1 ( x18 )
	xori x14 ,  x14 ,  48
	bltu x0, x14, .LBB0_244
.LBB0_241:                              //  %land.rhs93.lr.ph
	addi x14 ,  x2 ,  94
.LBB0_242:                              //  %land.rhs93
                                        //  =>This Inner Loop Header: Depth=1
	sub x13 ,  x18 ,  x14
	bge x15, x13, .LBB0_244
.LBB0_243:                              //  %while.body98
                                        //    in Loop: Header=BB0_242 Depth=1
	lbu x13 ,  -2 ( x18 )
	sb x0 ,  -1 ( x18 )
	addi x18 ,  x18 ,  -1
	xori x13 ,  x13 ,  48
	beq x0, x13, .LBB0_242
.LBB0_244:                              //  %while.end100
	bltu x0, x26, .LBB0_247
.LBB0_245:                              //  %land.lhs.true
	lw x15 ,  168 ( x2 )
	add x15 ,  x10 ,  x15
	blt x15, x0, .LBB0_251
.LBB0_246:                              //  %land.lhs.true.if.then112_crit_edge
	lw x15 ,  0 ( x23 )
	jal x0, .LBB0_252
.LBB0_247:                              //  %if.else115
	addi x15 ,  x9 ,  9
	sltiu x14 ,  x15 ,  24
	sw x0 ,  68 ( x21 )
	bltu x0, x14, .LBB0_253
.LBB0_248:                              //  %for.body.preheader
	addi x14 ,  x0 ,  4
	add x11 ,  x0 ,  x0
.LBB0_249:                              //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x14 ,  x14 ,  1&31
	addi x11 ,  x11 ,  1
	addi x13 ,  x14 ,  20
	bgeu x15, x13, .LBB0_249
.LBB0_250:                              //  %for.cond.for.end_crit_edge
	sw x11 ,  68 ( x21 )
	add x10 ,  x0 ,  x21
	call _Balloc
	add x9 ,  x0 ,  x10
	bltu x0, x9, .LBB0_254
.LBB0_262:                              //  %if.then129
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  2926&4095
	lui x15 ,  (2926>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.LBB0_251:                              //  %if.then107
	add x15 ,  x0 ,  x0
	addi x18 ,  x2 ,  94
	sw x0 ,  0 ( x23 )
	sb x0 ,  94 ( x2 )
.LBB0_252:                              //  %if.then112
	add x15 ,  x15 ,  x9
	addi x15 ,  x15 ,  3
	sltiu x14 ,  x15 ,  24
	sw x0 ,  68 ( x21 )
	beq x0, x14, .LBB0_248
.LBB0_253:
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x21
	call _Balloc
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_262
.LBB0_254:                              //  %if.end130
	addi x8 ,  x2 ,  94
	add x10 ,  x0 ,  x9
	sw x9 ,  64 ( x21 )
	add x11 ,  x0 ,  x8
	call strcpy
	beq x0, x19, .LBB0_256
.LBB0_255:                              //  %if.then136
	sub x15 ,  x18 ,  x8
	add x15 ,  x15 ,  x9
	sw x15 ,  0 ( x19 )
.LBB0_256:                              //  %if.end142
	add x10 ,  x0 ,  x9
	lw x8 ,  388 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  392 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  396 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  400 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  404 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  408 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  412 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  416 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  420 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  424 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  428 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  432 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  436 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  440
	.cfi_def_cfa 2, 0
	ret
.LBB0_257:                              //  %if.end337.i
	bltu x0, x19, .LBB0_173
.LBB0_259:                              //  %lor.lhs.false.i
	lbu x15 ,  -2 ( x24 )
	addi x14 ,  x24 ,  -2
	xori x13 ,  x15 ,  46
	sltiu x13 ,  x13 ,  1
	sub x13 ,  x14 ,  x13
	lbu x13 ,  0 ( x13 )
	andi x13 ,  x13 ,  1
	beq x0, x13, .LBB0_173
	jal x0, .LBB0_196
.LBB0_261:
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	add x21 ,  x0 ,  x0
	add x12 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x26 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  44 ( x2 )              //  4-byte Folded Spill
	add x19 ,  x0 ,  x21
	add x8 ,  x0 ,  x21
	add x26 ,  x0 ,  x21
	add x27 ,  x0 ,  x21
	add x18 ,  x0 ,  x21
	add x25 ,  x0 ,  x21
	add x23 ,  x0 ,  x21
	jal x0, .LBB0_31
.Lfunc_end0:
	.size	_ldtoa_r, .Lfunc_end0-_ldtoa_r
	.cfi_endproc
                                        //  -- End function
	.type	e113toe,@function       //  -- Begin function e113toe
e113toe:                                //  @e113toe
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lh x15 ,  14 ( x10 )
	lui x30 ,  32767&4095
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9 ,  (32767>>12)&1048575
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	addi x18 ,  x2 ,  6
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sh x0 ,  30 ( x2 )
	srli x30 ,  x30 ,  12&31
	sh x0 ,  22 ( x18 )
	sh x0 ,  20 ( x18 )
	sh x0 ,  18 ( x18 )
	sh x0 ,  16 ( x18 )
	sh x0 ,  14 ( x18 )
	sh x0 ,  12 ( x18 )
	sh x0 ,  10 ( x18 )
	sh x0 ,  8 ( x18 )
	sh x0 ,  6 ( x18 )
	sh x0 ,  4 ( x18 )
	sh x0 ,  2 ( x18 )
	srli x14 ,  x15 ,  15&31
	sh x14 ,  6 ( x2 )
	or x14 ,  x9 ,  x30
	and x15 ,  x14 ,  x15
	bne x15, x14, .LBB1_9
.LBB1_1:                                //  %for.body.preheader
	lhu x15 ,  0 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_2:                                //  %for.cond
	lhu x15 ,  2 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_3:                                //  %for.cond.1
	lhu x15 ,  4 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_4:                                //  %for.cond.2
	lhu x15 ,  6 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_5:                                //  %for.cond.3
	lhu x15 ,  8 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_6:                                //  %for.cond.4
	lhu x15 ,  10 ( x10 )
	bltu x0, x15, .LBB1_8
.LBB1_7:                                //  %for.cond.5
	lhu x15 ,  12 ( x10 )
	beq x0, x15, .LBB1_21
.LBB1_8:                                //  %if.then14
	lui x30 ,  32767&4095
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	sh x0 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	jal x0, .LBB1_16
.LBB1_9:                                //  %if.end21
	lh x14 ,  12 ( x10 )
	sh x15 ,  2 ( x18 )
	sh x14 ,  6 ( x18 )
	lh x14 ,  10 ( x10 )
	sh x14 ,  8 ( x18 )
	lh x14 ,  8 ( x10 )
	sh x14 ,  10 ( x18 )
	lh x14 ,  6 ( x10 )
	sh x14 ,  12 ( x18 )
	lh x14 ,  4 ( x10 )
	sh x14 ,  14 ( x18 )
	lh x14 ,  2 ( x10 )
	sh x14 ,  16 ( x18 )
	lh x14 ,  0 ( x10 )
	sh x14 ,  24 ( x2 )
	beq x0, x15, .LBB1_11
.LBB1_10:                               //  %if.else
	slti x15 ,  x0 ,  1
	addi x10 ,  x2 ,  6
	addi x11 ,  x0 ,  -1
	sh x15 ,  10 ( x2 )
	call eshift
	jal x0, .LBB1_12
.LBB1_11:                               //  %if.then35
	sh x0 ,  10 ( x2 )
.LBB1_12:                               //  %if.end39
	lhu x14 ,  8 ( x2 )
	lui x30 ,  -32768&4095
	lui x15 ,  (-32768>>12)&1048575
	add x11 ,  x0 ,  x0
	lhu x12 ,  6 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	add x15 ,  x0 ,  x14
	beq x12, x11, .LBB1_14
.LBB1_13:                               //  %if.end39
	or x15 ,  x13 ,  x14
.LBB1_14:                               //  %if.end39
	lui x30 ,  32767&4095
	sh x15 ,  18 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x9 ,  x30
	bne x14, x13, .LBB1_17
.LBB1_15:                               //  %for.body.preheader.i.i
	lhu x14 ,  6 ( x18 )
	lui x30 ,  32767&4095
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	sh x0 ,  0 ( x8 )
	lhu x13 ,  8 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x13
	lhu x13 ,  10 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  14 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  16 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  20 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  30 ( x2 )
	or x14 ,  x13 ,  x14
	beq x0, x14, .LBB1_18
.LBB1_16:                               //  %if.then11.i
	or x15 ,  x9 ,  x30
	sh x15 ,  18 ( x8 )
	lui x15 ,  (49152>>12)&1048575
	sh x15 ,  16 ( x8 )
	jal x0, .LBB1_20
.LBB1_17:                               //  %if.end13.i
	lh x15 ,  6 ( x18 )
	sh x15 ,  16 ( x8 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  14 ( x8 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  12 ( x8 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  10 ( x8 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  8 ( x8 )
	lh x15 ,  16 ( x18 )
	sh x15 ,  6 ( x8 )
	lh x15 ,  18 ( x18 )
	sh x15 ,  4 ( x8 )
	lh x15 ,  20 ( x18 )
	sh x15 ,  2 ( x8 )
	lh x15 ,  28 ( x2 )
	sh x15 ,  0 ( x8 )
	jal x0, .LBB1_20
.LBB1_18:                               //  %if.end12.i
	or x14 ,  x9 ,  x30
	sh x0 ,  16 ( x8 )
	or x15 ,  x14 ,  x15
.LBB1_19:                               //  %cleanup
	sh x15 ,  18 ( x8 )
.LBB1_20:                               //  %cleanup
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB1_21:                               //  %for.cond.6
	lui x30 ,  32767&4095
	sh x0 ,  16 ( x8 )
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	sh x0 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	sh x15 ,  18 ( x8 )
	lh x14 ,  14 ( x10 )
	or x15 ,  x15 ,  x14
	jal x0, .LBB1_19
.Lfunc_end1:
	.size	e113toe, .Lfunc_end1-e113toe
	.cfi_endproc
                                        //  -- End function
	.globl	_ldcheck                //  -- Begin function _ldcheck
	.type	_ldcheck,@function
_ldcheck:                               //  @_ldcheck
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lw x14 ,  8 ( x10 )
	addi x15 ,  x2 ,  8
	addi x11 ,  x2 ,  26
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x14 ,  8 ( x15 )
	lw x14 ,  4 ( x10 )
	sw x14 ,  4 ( x15 )
	lw x14 ,  12 ( x10 )
	sw x14 ,  20 ( x2 )
	lw x14 ,  0 ( x10 )
	add x10 ,  x0 ,  x15
	sw x14 ,  8 ( x2 )
	call e113toe
	lhu x15 ,  44 ( x2 )
	lui x30 ,  32767&4095
	lui x14 ,  (32767>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	bne x15, x14, .LBB2_1
.LBB2_2:                                //  %for.body.preheader.i
	lhu x15 ,  26 ( x2 )
	slti x10 ,  x0 ,  1
	bltu x0, x15, .LBB2_13
.LBB2_3:                                //  %for.inc.i
	lhu x15 ,  28 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_4:                                //  %for.inc.1.i
	lhu x15 ,  30 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_5:                                //  %for.inc.2.i
	lhu x15 ,  32 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_6:                                //  %for.inc.3.i
	lhu x15 ,  34 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_7:                                //  %for.inc.4.i
	lhu x15 ,  36 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_8:                                //  %for.inc.5.i
	lhu x15 ,  38 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_9:                                //  %for.inc.6.i
	lhu x15 ,  40 ( x2 )
	bltu x0, x15, .LBB2_13
.LBB2_10:                               //  %eisnan.exit
	lhu x15 ,  42 ( x2 )
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB2_11
.LBB2_12:                               //  %eisnan.exit
	slti x10 ,  x0 ,  1
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.LBB2_1:
	add x10 ,  x0 ,  x0
.LBB2_13:                               //  %cleanup
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.LBB2_11:
	addi x10 ,  x0 ,  2
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_ldcheck, .Lfunc_end2-_ldcheck
	.cfi_endproc
                                        //  -- End function
	.type	eshift,@function        //  -- Begin function eshift
eshift:                                 //  @eshift
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	add x15 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	sw x9 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw x19 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x22 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -24
	sw x23 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	beq x0, x11, .LBB3_54
.LBB3_1:                                //  %if.end
	blt x11, x0, .LBB3_27
.LBB3_2:                                //  %while.cond29.preheader
	slti x14 ,  x11 ,  16
	bltu x0, x14, .LBB3_3
.LBB3_4:                                //  %while.body32.lr.ph
	lhu x5 ,  24 ( x15 )
	addi x14 ,  x11 ,  -16
	lhu x12 ,  22 ( x15 )
	slti x6 ,  x14 ,  16
	lhu x13 ,  20 ( x15 )
	lhu x17 ,  18 ( x15 )
	lhu x8 ,  16 ( x15 )
	lhu x19 ,  14 ( x15 )
	lhu x20 ,  12 ( x15 )
	lhu x21 ,  10 ( x15 )
	lhu x22 ,  8 ( x15 )
	bltu x0, x6, .LBB3_5
.LBB3_15:                               //  %while.body32.peel463
	addi x14 ,  x11 ,  -32
	slti x6 ,  x14 ,  16
	bltu x0, x6, .LBB3_16
.LBB3_17:                               //  %while.body32.peel467
	addi x14 ,  x11 ,  -48
	slti x6 ,  x14 ,  16
	bltu x0, x6, .LBB3_18
.LBB3_19:                               //  %while.body32.peel471
	addi x14 ,  x11 ,  -64
	slti x6 ,  x14 ,  16
	bltu x0, x6, .LBB3_20
.LBB3_21:                               //  %while.body32.peel475
	addi x14 ,  x11 ,  -80
	slti x6 ,  x14 ,  16
	bltu x0, x6, .LBB3_22
.LBB3_23:                               //  %while.body32.peel479
	addi x14 ,  x11 ,  -96
	slti x6 ,  x14 ,  16
	bltu x0, x6, .LBB3_24
.LBB3_25:                               //  %while.body32.peel483
	addi x14 ,  x11 ,  -112
	slti x11 ,  x14 ,  16
	bltu x0, x11, .LBB3_26
.LBB3_58:
	add x11 ,  x0 ,  x0
	addi x6 ,  x0 ,  15
.LBB3_59:                               //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	add x18 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x5
	addi x14 ,  x14 ,  -16
	add x5 ,  x0 ,  x11
	blt x6, x14, .LBB3_59
.LBB3_60:
	add x29 ,  x0 ,  x11
	add x7 ,  x0 ,  x11
	add x6 ,  x0 ,  x11
	add x16 ,  x0 ,  x11
	add x9 ,  x0 ,  x11
	add x5 ,  x0 ,  x11
	jal x0, .LBB3_6
.LBB3_27:                               //  %if.then3
	addi x14 ,  x0 ,  -16
	blt x14, x11, .LBB3_28
.LBB3_29:                               //  %while.body.lr.ph
	sub x13 ,  x14 ,  x11
	lhu x6 ,  4 ( x15 )
	lhu x12 ,  6 ( x15 )
	slti x16 ,  x13 ,  16
	lhu x5 ,  8 ( x15 )
	lhu x7 ,  10 ( x15 )
	lhu x18 ,  12 ( x15 )
	lhu x20 ,  14 ( x15 )
	lhu x21 ,  16 ( x15 )
	lhu x22 ,  18 ( x15 )
	lhu x8 ,  20 ( x15 )
	lhu x23 ,  22 ( x15 )
	lhu x14 ,  24 ( x15 )
	bltu x0, x16, .LBB3_30
.LBB3_31:                               //  %while.body.peel432
	addi x13 ,  x0 ,  -32
	or x14 ,  x14 ,  x23
	sub x13 ,  x13 ,  x11
	slti x16 ,  x13 ,  16
	bltu x0, x16, .LBB3_32
.LBB3_33:                               //  %while.body.peel437
	addi x13 ,  x0 ,  -48
	or x14 ,  x14 ,  x8
	sub x13 ,  x13 ,  x11
	slti x16 ,  x13 ,  16
	bltu x0, x16, .LBB3_34
.LBB3_35:                               //  %while.body.peel442
	addi x13 ,  x0 ,  -64
	or x14 ,  x14 ,  x22
	sub x13 ,  x13 ,  x11
	slti x16 ,  x13 ,  16
	bltu x0, x16, .LBB3_36
.LBB3_37:                               //  %while.body.peel447
	addi x13 ,  x0 ,  -80
	or x14 ,  x14 ,  x21
	sub x13 ,  x13 ,  x11
	slti x16 ,  x13 ,  16
	bltu x0, x16, .LBB3_38
.LBB3_39:                               //  %while.body.peel452
	addi x13 ,  x0 ,  -96
	or x14 ,  x14 ,  x20
	sub x13 ,  x13 ,  x11
	slti x16 ,  x13 ,  16
	bltu x0, x16, .LBB3_40
.LBB3_41:                               //  %while.body.peel457
	addi x13 ,  x0 ,  -112
	or x14 ,  x14 ,  x18
	sub x13 ,  x13 ,  x11
	slti x11 ,  x13 ,  16
	bltu x0, x11, .LBB3_42
.LBB3_55:
	add x11 ,  x0 ,  x0
	addi x16 ,  x0 ,  15
.LBB3_56:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x8 ,  x0 ,  x5
	add x5 ,  x0 ,  x12
	add x12 ,  x0 ,  x6
	or x14 ,  x14 ,  x7
	addi x13 ,  x13 ,  -16
	add x6 ,  x0 ,  x11
	add x7 ,  x0 ,  x8
	blt x16, x13, .LBB3_56
.LBB3_57:
	add x9 ,  x0 ,  x11
	add x17 ,  x0 ,  x11
	add x16 ,  x0 ,  x11
	add x29 ,  x0 ,  x11
	add x19 ,  x0 ,  x11
	add x6 ,  x0 ,  x11
	jal x0, .LBB3_43
.LBB3_3:
	add x14 ,  x0 ,  x11
	slti x13 ,  x14 ,  8
	beq x0, x13, .LBB3_8
	jal x0, .LBB3_11
.LBB3_28:
	add x14 ,  x0 ,  x0
	sub x13 ,  x0 ,  x11
	slti x12 ,  x13 ,  8
	beq x0, x12, .LBB3_45
	jal x0, .LBB3_48
.LBB3_5:
	lhu x18 ,  6 ( x15 )
	add x11 ,  x0 ,  x5
	add x6 ,  x0 ,  x12
	add x7 ,  x0 ,  x13
	add x16 ,  x0 ,  x17
	add x29 ,  x0 ,  x8
	add x9 ,  x0 ,  x19
	add x5 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	jal x0, .LBB3_6
.LBB3_30:
	add x11 ,  x0 ,  x6
	add x16 ,  x0 ,  x12
	add x17 ,  x0 ,  x5
	add x5 ,  x0 ,  x8
	add x29 ,  x0 ,  x7
	add x9 ,  x0 ,  x18
	add x19 ,  x0 ,  x20
	add x6 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x8 ,  x0 ,  x23
	jal x0, .LBB3_43
.LBB3_16:
	add x6 ,  x0 ,  x5
	add x7 ,  x0 ,  x12
	add x16 ,  x0 ,  x13
	add x11 ,  x0 ,  x0
	add x29 ,  x0 ,  x17
	add x9 ,  x0 ,  x8
	add x5 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	add x18 ,  x0 ,  x22
	jal x0, .LBB3_6
.LBB3_32:
	add x16 ,  x0 ,  x6
	add x17 ,  x0 ,  x12
	add x29 ,  x0 ,  x5
	add x11 ,  x0 ,  x0
	add x9 ,  x0 ,  x7
	add x19 ,  x0 ,  x18
	add x6 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x5 ,  x0 ,  x22
	jal x0, .LBB3_43
.LBB3_18:
	add x11 ,  x0 ,  x0
	add x7 ,  x0 ,  x5
	add x16 ,  x0 ,  x12
	add x29 ,  x0 ,  x13
	add x9 ,  x0 ,  x17
	add x5 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	add x18 ,  x0 ,  x21
	add x6 ,  x0 ,  x11
	jal x0, .LBB3_6
.LBB3_34:
	add x11 ,  x0 ,  x0
	add x17 ,  x0 ,  x6
	add x29 ,  x0 ,  x12
	add x9 ,  x0 ,  x5
	add x19 ,  x0 ,  x7
	add x6 ,  x0 ,  x18
	add x12 ,  x0 ,  x20
	add x5 ,  x0 ,  x21
	add x8 ,  x0 ,  x22
	add x16 ,  x0 ,  x11
	jal x0, .LBB3_43
.LBB3_20:
	add x6 ,  x0 ,  x0
	add x16 ,  x0 ,  x5
	add x29 ,  x0 ,  x12
	add x9 ,  x0 ,  x13
	add x5 ,  x0 ,  x17
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x19
	add x18 ,  x0 ,  x20
	add x11 ,  x0 ,  x6
	add x7 ,  x0 ,  x6
	jal x0, .LBB3_6
.LBB3_36:
	add x16 ,  x0 ,  x0
	add x29 ,  x0 ,  x6
	add x9 ,  x0 ,  x12
	add x19 ,  x0 ,  x5
	add x6 ,  x0 ,  x7
	add x12 ,  x0 ,  x18
	add x5 ,  x0 ,  x20
	add x8 ,  x0 ,  x21
	add x11 ,  x0 ,  x16
	add x17 ,  x0 ,  x16
	jal x0, .LBB3_43
.LBB3_22:
	add x7 ,  x0 ,  x0
	add x29 ,  x0 ,  x5
	add x9 ,  x0 ,  x12
	add x5 ,  x0 ,  x13
	add x12 ,  x0 ,  x17
	add x13 ,  x0 ,  x8
	add x18 ,  x0 ,  x19
	add x6 ,  x0 ,  x7
	add x11 ,  x0 ,  x7
	add x16 ,  x0 ,  x7
	jal x0, .LBB3_6
.LBB3_38:
	add x17 ,  x0 ,  x0
	add x9 ,  x0 ,  x6
	add x19 ,  x0 ,  x12
	add x6 ,  x0 ,  x5
	add x12 ,  x0 ,  x7
	add x5 ,  x0 ,  x18
	add x8 ,  x0 ,  x20
	add x16 ,  x0 ,  x17
	add x11 ,  x0 ,  x17
	add x29 ,  x0 ,  x17
	jal x0, .LBB3_43
.LBB3_24:
	add x16 ,  x0 ,  x0
	add x9 ,  x0 ,  x5
	add x5 ,  x0 ,  x12
	add x12 ,  x0 ,  x13
	add x13 ,  x0 ,  x17
	add x18 ,  x0 ,  x8
	add x7 ,  x0 ,  x16
	add x6 ,  x0 ,  x16
	add x11 ,  x0 ,  x16
	add x29 ,  x0 ,  x16
	jal x0, .LBB3_6
.LBB3_40:
	add x29 ,  x0 ,  x0
	add x19 ,  x0 ,  x6
	add x6 ,  x0 ,  x12
	add x12 ,  x0 ,  x5
	add x5 ,  x0 ,  x7
	add x8 ,  x0 ,  x18
	add x17 ,  x0 ,  x29
	add x16 ,  x0 ,  x29
	add x11 ,  x0 ,  x29
	add x9 ,  x0 ,  x29
	jal x0, .LBB3_43
.LBB3_26:
	add x29 ,  x0 ,  x0
	add x18 ,  x0 ,  x17
	add x16 ,  x0 ,  x29
	add x7 ,  x0 ,  x29
	add x6 ,  x0 ,  x29
	add x11 ,  x0 ,  x29
	add x9 ,  x0 ,  x29
.LBB3_6:                                //  %while.cond29.while.cond35.preheader_crit_edge
	sh x11 ,  22 ( x15 )
	sh x6 ,  20 ( x15 )
	sh x7 ,  18 ( x15 )
	sh x16 ,  16 ( x15 )
	sh x29 ,  14 ( x15 )
	sh x9 ,  12 ( x15 )
	sh x5 ,  10 ( x15 )
	sh x12 ,  8 ( x15 )
	sh x18 ,  4 ( x15 )
	sh x13 ,  6 ( x15 )
	sh x0 ,  24 ( x15 )
	slti x13 ,  x14 ,  8
	bltu x0, x13, .LBB3_11
.LBB3_8:                                //  %while.body38.lr.ph
	lhu x13 ,  4 ( x15 )
	lui x18 ,  (65280>>12)&1048575
	addi x19 ,  x0 ,  7
	lhu x12 ,  6 ( x15 )
	lhu x11 ,  8 ( x15 )
	lhu x5 ,  10 ( x15 )
	lhu x6 ,  12 ( x15 )
	lhu x7 ,  14 ( x15 )
	lhu x16 ,  16 ( x15 )
	lhu x17 ,  18 ( x15 )
	lhu x29 ,  20 ( x15 )
	lhu x9 ,  22 ( x15 )
	lhu x8 ,  24 ( x15 )
.LBB3_9:                                //  %while.body38
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65280&4095
	slli x13 ,  x13 ,  8&31
	addi x14 ,  x14 ,  -8
	srli x30 ,  x30 ,  12&31
	or x20 ,  x18 ,  x30
	and x21 ,  x20 ,  x12
	slli x12 ,  x12 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x13 ,  x21 ,  x13
	and x21 ,  x20 ,  x11
	slli x11 ,  x11 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x12 ,  x21 ,  x12
	and x21 ,  x20 ,  x5
	slli x5 ,  x5 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x11 ,  x21 ,  x11
	and x21 ,  x20 ,  x6
	slli x6 ,  x6 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x5 ,  x21 ,  x5
	and x21 ,  x20 ,  x7
	slli x7 ,  x7 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x6 ,  x21 ,  x6
	and x21 ,  x20 ,  x16
	slli x16 ,  x16 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x7 ,  x21 ,  x7
	and x21 ,  x20 ,  x17
	slli x17 ,  x17 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x16 ,  x21 ,  x16
	and x21 ,  x20 ,  x29
	slli x29 ,  x29 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x17 ,  x21 ,  x17
	and x21 ,  x20 ,  x9
	and x20 ,  x20 ,  x8
	slli x9 ,  x9 ,  8&31
	slli x8 ,  x8 ,  8&31
	srli x21 ,  x21 ,  8&31
	srli x20 ,  x20 ,  8&31
	or x29 ,  x21 ,  x29
	or x9 ,  x20 ,  x9
	blt x19, x14, .LBB3_9
.LBB3_10:                               //  %while.cond35.while.cond41.preheader_crit_edge
	sh x9 ,  22 ( x15 )
	sh x8 ,  24 ( x15 )
	sh x29 ,  20 ( x15 )
	sh x17 ,  18 ( x15 )
	sh x16 ,  16 ( x15 )
	sh x7 ,  14 ( x15 )
	sh x6 ,  12 ( x15 )
	sh x5 ,  10 ( x15 )
	sh x11 ,  8 ( x15 )
	sh x12 ,  6 ( x15 )
	sh x13 ,  4 ( x15 )
.LBB3_11:                               //  %while.cond41.preheader
	bge x0, x14, .LBB3_54
.LBB3_12:                               //  %while.body44.lr.ph
	lhu x13 ,  4 ( x15 )
	lui x18 ,  (32768>>12)&1048575
	lhu x12 ,  6 ( x15 )
	lhu x11 ,  8 ( x15 )
	lhu x5 ,  10 ( x15 )
	lhu x6 ,  12 ( x15 )
	lhu x7 ,  14 ( x15 )
	lhu x16 ,  16 ( x15 )
	lhu x17 ,  18 ( x15 )
	lhu x29 ,  20 ( x15 )
	lhu x9 ,  22 ( x15 )
	lhu x8 ,  24 ( x15 )
.LBB3_13:                               //  %while.body44
                                        //  =>This Inner Loop Header: Depth=1
	and x19 ,  x18 ,  x12
	slli x13 ,  x13 ,  1&31
	slli x12 ,  x12 ,  1&31
	addi x14 ,  x14 ,  -1
	srli x19 ,  x19 ,  15&31
	or x13 ,  x19 ,  x13
	and x19 ,  x18 ,  x11
	slli x11 ,  x11 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x12 ,  x19 ,  x12
	and x19 ,  x18 ,  x5
	slli x5 ,  x5 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x11 ,  x19 ,  x11
	and x19 ,  x18 ,  x6
	slli x6 ,  x6 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x5 ,  x19 ,  x5
	and x19 ,  x18 ,  x7
	slli x7 ,  x7 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x6 ,  x19 ,  x6
	and x19 ,  x18 ,  x16
	slli x16 ,  x16 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x7 ,  x19 ,  x7
	and x19 ,  x18 ,  x17
	slli x17 ,  x17 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x16 ,  x19 ,  x16
	and x19 ,  x18 ,  x29
	slli x29 ,  x29 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x17 ,  x19 ,  x17
	and x19 ,  x18 ,  x9
	slli x9 ,  x9 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x29 ,  x19 ,  x29
	and x19 ,  x18 ,  x8
	slli x8 ,  x8 ,  1&31
	srli x19 ,  x19 ,  15&31
	or x9 ,  x19 ,  x9
	blt x0, x14, .LBB3_13
.LBB3_14:                               //  %while.cond41.if.end47.thread.loopexit_crit_edge
	sh x9 ,  22 ( x15 )
	sh x8 ,  24 ( x15 )
	sh x29 ,  20 ( x15 )
	sh x17 ,  18 ( x15 )
	sh x16 ,  16 ( x15 )
	sh x7 ,  14 ( x15 )
	sh x6 ,  12 ( x15 )
	sh x5 ,  10 ( x15 )
	sh x11 ,  8 ( x15 )
	sh x12 ,  6 ( x15 )
	sh x13 ,  4 ( x15 )
	jal x0, .LBB3_54
.LBB3_42:
	add x9 ,  x0 ,  x0
	add x8 ,  x0 ,  x7
	add x29 ,  x0 ,  x9
	add x17 ,  x0 ,  x9
	add x16 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x19 ,  x0 ,  x9
.LBB3_43:                               //  %while.cond.while.cond8.preheader_crit_edge
	sh x5 ,  22 ( x15 )
	sh x8 ,  24 ( x15 )
	sh x12 ,  20 ( x15 )
	sh x6 ,  18 ( x15 )
	sh x19 ,  16 ( x15 )
	sh x9 ,  14 ( x15 )
	sh x29 ,  12 ( x15 )
	sh x17 ,  10 ( x15 )
	sh x16 ,  8 ( x15 )
	sh x11 ,  6 ( x15 )
	sh x0 ,  4 ( x15 )
	slti x12 ,  x13 ,  8
	bltu x0, x12, .LBB3_48
.LBB3_45:                               //  %while.body11.lr.ph
	lhu x11 ,  22 ( x15 )
	lui x18 ,  (65280>>12)&1048575
	addi x19 ,  x0 ,  7
	lhu x5 ,  20 ( x15 )
	lhu x6 ,  18 ( x15 )
	lhu x7 ,  16 ( x15 )
	lhu x16 ,  14 ( x15 )
	lhu x17 ,  12 ( x15 )
	lhu x29 ,  10 ( x15 )
	lhu x8 ,  8 ( x15 )
	lhu x9 ,  6 ( x15 )
	lhu x12 ,  4 ( x15 )
	lhu x20 ,  24 ( x15 )
.LBB3_46:                               //  %while.body11
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65280&4095
	slli x23 ,  x11 ,  8&31
	addi x13 ,  x13 ,  -8
	srli x30 ,  x30 ,  12&31
	or x22 ,  x18 ,  x30
	and x21 ,  x22 ,  x20
	and x11 ,  x22 ,  x11
	andi x20 ,  x20 ,  255
	srli x21 ,  x21 ,  8&31
	srli x11 ,  x11 ,  8&31
	or x14 ,  x14 ,  x20
	or x21 ,  x21 ,  x23
	slli x23 ,  x5 ,  8&31
	and x5 ,  x22 ,  x5
	or x11 ,  x23 ,  x11
	slli x23 ,  x6 ,  8&31
	and x6 ,  x22 ,  x6
	srli x5 ,  x5 ,  8&31
	add x20 ,  x0 ,  x21
	or x5 ,  x23 ,  x5
	slli x23 ,  x7 ,  8&31
	and x7 ,  x22 ,  x7
	srli x6 ,  x6 ,  8&31
	or x6 ,  x23 ,  x6
	slli x23 ,  x16 ,  8&31
	and x16 ,  x22 ,  x16
	srli x7 ,  x7 ,  8&31
	or x7 ,  x23 ,  x7
	slli x23 ,  x17 ,  8&31
	and x17 ,  x22 ,  x17
	srli x16 ,  x16 ,  8&31
	or x16 ,  x23 ,  x16
	slli x23 ,  x29 ,  8&31
	and x29 ,  x22 ,  x29
	srli x17 ,  x17 ,  8&31
	or x17 ,  x23 ,  x17
	slli x23 ,  x8 ,  8&31
	and x8 ,  x22 ,  x8
	srli x29 ,  x29 ,  8&31
	or x29 ,  x23 ,  x29
	slli x23 ,  x9 ,  8&31
	and x9 ,  x22 ,  x9
	srli x8 ,  x8 ,  8&31
	or x8 ,  x23 ,  x8
	slli x23 ,  x12 ,  8&31
	and x12 ,  x22 ,  x12
	srli x9 ,  x9 ,  8&31
	or x9 ,  x23 ,  x9
	srli x12 ,  x12 ,  8&31
	blt x19, x13, .LBB3_46
.LBB3_47:                               //  %while.cond8.while.cond18.preheader_crit_edge
	sh x11 ,  22 ( x15 )
	sh x5 ,  20 ( x15 )
	sh x6 ,  18 ( x15 )
	sh x7 ,  16 ( x15 )
	sh x16 ,  14 ( x15 )
	sh x17 ,  12 ( x15 )
	sh x29 ,  10 ( x15 )
	sh x8 ,  8 ( x15 )
	sh x9 ,  6 ( x15 )
	sh x12 ,  4 ( x15 )
	sh x21 ,  24 ( x15 )
.LBB3_48:                               //  %while.cond18.preheader
	bge x0, x13, .LBB3_52
.LBB3_49:                               //  %while.body21.lr.ph
	lhu x11 ,  22 ( x15 )
	lui x18 ,  (65534>>12)&1048575
	lhu x5 ,  20 ( x15 )
	lhu x6 ,  18 ( x15 )
	lhu x7 ,  16 ( x15 )
	lhu x16 ,  14 ( x15 )
	lhu x17 ,  12 ( x15 )
	lhu x29 ,  10 ( x15 )
	lhu x8 ,  8 ( x15 )
	lhu x9 ,  6 ( x15 )
	lhu x12 ,  4 ( x15 )
	lhu x19 ,  24 ( x15 )
.LBB3_50:                               //  %while.body21
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65534&4095
	slli x22 ,  x11 ,  15&31
	addi x13 ,  x13 ,  -1
	srli x30 ,  x30 ,  12&31
	or x21 ,  x18 ,  x30
	and x20 ,  x21 ,  x19
	and x11 ,  x21 ,  x11
	andi x19 ,  x19 ,  1
	srli x20 ,  x20 ,  1&31
	srli x11 ,  x11 ,  1&31
	or x14 ,  x14 ,  x19
	or x20 ,  x20 ,  x22
	slli x22 ,  x5 ,  15&31
	and x5 ,  x21 ,  x5
	or x11 ,  x22 ,  x11
	slli x22 ,  x6 ,  15&31
	and x6 ,  x21 ,  x6
	srli x5 ,  x5 ,  1&31
	add x19 ,  x0 ,  x20
	or x5 ,  x22 ,  x5
	slli x22 ,  x7 ,  15&31
	and x7 ,  x21 ,  x7
	srli x6 ,  x6 ,  1&31
	or x6 ,  x22 ,  x6
	slli x22 ,  x16 ,  15&31
	and x16 ,  x21 ,  x16
	srli x7 ,  x7 ,  1&31
	or x7 ,  x22 ,  x7
	slli x22 ,  x17 ,  15&31
	and x17 ,  x21 ,  x17
	srli x16 ,  x16 ,  1&31
	or x16 ,  x22 ,  x16
	slli x22 ,  x29 ,  15&31
	and x29 ,  x21 ,  x29
	srli x17 ,  x17 ,  1&31
	or x17 ,  x22 ,  x17
	slli x22 ,  x8 ,  15&31
	and x8 ,  x21 ,  x8
	srli x29 ,  x29 ,  1&31
	or x29 ,  x22 ,  x29
	slli x22 ,  x9 ,  15&31
	and x9 ,  x21 ,  x9
	srli x8 ,  x8 ,  1&31
	or x8 ,  x22 ,  x8
	slli x22 ,  x12 ,  15&31
	and x12 ,  x21 ,  x12
	srli x9 ,  x9 ,  1&31
	or x9 ,  x22 ,  x9
	srli x12 ,  x12 ,  1&31
	blt x0, x13, .LBB3_50
.LBB3_51:                               //  %while.cond18.if.end47_crit_edge
	sh x11 ,  22 ( x15 )
	sh x5 ,  20 ( x15 )
	sh x6 ,  18 ( x15 )
	sh x7 ,  16 ( x15 )
	sh x16 ,  14 ( x15 )
	sh x17 ,  12 ( x15 )
	sh x29 ,  10 ( x15 )
	sh x8 ,  8 ( x15 )
	sh x9 ,  6 ( x15 )
	sh x12 ,  4 ( x15 )
	sh x20 ,  24 ( x15 )
.LBB3_52:                               //  %if.end47
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x14
	beq x0, x15, .LBB3_54
.LBB3_53:
	slti x10 ,  x0 ,  1
.LBB3_54:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	eshift, .Lfunc_end3-eshift
	.cfi_endproc
                                        //  -- End function
	.type	ecmp,@function          //  -- Begin function ecmp
ecmp:                                   //  @ecmp
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	add x15 ,  x0 ,  x10
	lui x30 ,  32767&4095
	lui x12 ,  (32767>>12)&1048575
	sw x9 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw x19 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x22 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -24
	sw x23 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -28
	sw x24 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -32
	sw x25 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -36
	sw x26 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -40
	sw x27 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -44
	sw x8 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -48
	lhu x5 ,  18 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x13 ,  x12 ,  x30
	and x14 ,  x13 ,  x5
	bne x14, x13, .LBB4_10
.LBB4_1:                                //  %for.body.preheader.i
	lhu x13 ,  0 ( x15 )
	addi x10 ,  x0 ,  -2
	bltu x0, x13, .LBB4_55
.LBB4_2:                                //  %for.inc.i
	lhu x13 ,  2 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_3:                                //  %for.inc.1.i
	lhu x13 ,  4 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_4:                                //  %for.inc.2.i
	lhu x13 ,  6 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_5:                                //  %for.inc.3.i
	lhu x13 ,  8 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_6:                                //  %for.inc.4.i
	lhu x13 ,  10 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_7:                                //  %for.inc.5.i
	lhu x13 ,  12 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_8:                                //  %for.inc.6.i
	lhu x13 ,  14 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_9:                                //  %eisnan.exit
	lhu x13 ,  16 ( x15 )
	bltu x0, x13, .LBB4_55
.LBB4_10:                               //  %lor.lhs.false
	lhu x6 ,  18 ( x11 )
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x12 ,  x30
	and x8 ,  x13 ,  x6
	bne x8, x13, .LBB4_20
.LBB4_11:                               //  %for.body.preheader.i162
	lhu x13 ,  0 ( x11 )
	addi x10 ,  x0 ,  -2
	bltu x0, x13, .LBB4_55
.LBB4_12:                               //  %for.inc.i165
	lhu x13 ,  2 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_13:                               //  %for.inc.1.i170
	lhu x13 ,  4 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_14:                               //  %for.inc.2.i173
	lhu x13 ,  6 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_15:                               //  %for.inc.3.i176
	lhu x13 ,  8 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_16:                               //  %for.inc.4.i179
	lhu x13 ,  10 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_17:                               //  %for.inc.5.i182
	lhu x13 ,  12 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_18:                               //  %for.inc.6.i185
	lhu x13 ,  14 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_19:                               //  %eisnan.exit190
	lhu x13 ,  16 ( x11 )
	bltu x0, x13, .LBB4_55
.LBB4_20:                               //  %if.end
	lui x30 ,  32767&4095
	slli x13 ,  x5 ,  16&31
	sh x14 ,  48 ( x2 )
	srli x30 ,  x30 ,  12&31
	srai x7 ,  x13 ,  31&31
	or x13 ,  x12 ,  x30
	sh x7 ,  46 ( x2 )
	bne x14, x13, .LBB4_30
.LBB4_21:                               //  %for.body.preheader.i.i96
	lhu x10 ,  2 ( x15 )
	lhu x9 ,  0 ( x15 )
	or x13 ,  x10 ,  x9
	bltu x0, x13, .LBB4_29
.LBB4_22:                               //  %for.inc.1.i.i102
	lhu x13 ,  4 ( x15 )
	add x10 ,  x0 ,  x0
	bltu x0, x13, .LBB4_29
.LBB4_23:                               //  %for.inc.2.i.i105
	lhu x13 ,  6 ( x15 )
	bltu x0, x13, .LBB4_29
.LBB4_24:                               //  %for.inc.3.i.i108
	lhu x13 ,  8 ( x15 )
	bltu x0, x13, .LBB4_29
.LBB4_25:                               //  %for.inc.4.i.i111
	lhu x13 ,  10 ( x15 )
	bltu x0, x13, .LBB4_29
.LBB4_26:                               //  %for.inc.5.i.i114
	lhu x13 ,  12 ( x15 )
	bltu x0, x13, .LBB4_29
.LBB4_27:                               //  %for.inc.6.i.i117
	lhu x13 ,  14 ( x15 )
	bltu x0, x13, .LBB4_29
.LBB4_28:                               //  %for.inc.7.i.i119
	lhu x13 ,  16 ( x15 )
	beq x0, x13, .LBB4_65
.LBB4_29:                               //  %if.then13.i138
	lhu x16 ,  6 ( x15 )
	addi x13 ,  x2 ,  46
	lhu x29 ,  16 ( x15 )
	sh x9 ,  22 ( x13 )
	sh x10 ,  20 ( x13 )
	sh x0 ,  4 ( x13 )
	lhu x17 ,  14 ( x15 )
	lhu x20 ,  12 ( x15 )
	lhu x19 ,  10 ( x15 )
	sw x16 ,  12 ( x2 )             //  4-byte Folded Spill
	sh x16 ,  16 ( x13 )
	lhu x16 ,  4 ( x15 )
	sh x29 ,  6 ( x13 )
	lhu x18 ,  8 ( x15 )
	sh x17 ,  8 ( x13 )
	lh x15 ,  -2 ( x15 )
	sh x20 ,  10 ( x13 )
	sh x19 ,  12 ( x13 )
	sw x16 ,  16 ( x2 )             //  4-byte Folded Spill
	sh x16 ,  18 ( x13 )
	sh x18 ,  14 ( x13 )
	sh x15 ,  70 ( x2 )
	jal x0, .LBB4_31
.LBB4_30:                               //  %if.end28.i156
	lhu x13 ,  4 ( x15 )
	sh x0 ,  70 ( x2 )
	lhu x16 ,  6 ( x15 )
	lhu x10 ,  2 ( x15 )
	lhu x18 ,  8 ( x15 )
	lhu x19 ,  10 ( x15 )
	sw x13 ,  16 ( x2 )             //  4-byte Folded Spill
	lhu x20 ,  12 ( x15 )
	sw x16 ,  12 ( x2 )             //  4-byte Folded Spill
	lhu x17 ,  14 ( x15 )
	lhu x29 ,  16 ( x15 )
	lhu x9 ,  0 ( x15 )
	addi x15 ,  x2 ,  46
	sh x20 ,  10 ( x15 )
	sh x19 ,  12 ( x15 )
	sh x18 ,  14 ( x15 )
	sh x16 ,  16 ( x15 )
	sh x13 ,  18 ( x15 )
	sh x10 ,  20 ( x15 )
	sh x0 ,  4 ( x15 )
	sh x17 ,  8 ( x15 )
	sh x29 ,  6 ( x15 )
	sh x9 ,  22 ( x15 )
.LBB4_31:                               //  %emovi.exit158
	lui x30 ,  32767&4095
	slli x15 ,  x6 ,  16&31
	sh x8 ,  22 ( x2 )
	srli x30 ,  x30 ,  12&31
	srai x15 ,  x15 ,  31&31
	or x13 ,  x12 ,  x30
	sh x15 ,  20 ( x2 )
	bne x8, x13, .LBB4_41
.LBB4_32:                               //  %for.body.preheader.i.i
	lhu x21 ,  2 ( x11 )
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	lhu x22 ,  0 ( x11 )
	or x13 ,  x21 ,  x22
	bltu x0, x13, .LBB4_40
.LBB4_33:                               //  %for.inc.1.i.i
	lhu x13 ,  4 ( x11 )
	add x21 ,  x0 ,  x0
	bltu x0, x13, .LBB4_40
.LBB4_34:                               //  %for.inc.2.i.i
	lhu x13 ,  6 ( x11 )
	bltu x0, x13, .LBB4_40
.LBB4_35:                               //  %for.inc.3.i.i
	lhu x13 ,  8 ( x11 )
	bltu x0, x13, .LBB4_40
.LBB4_36:                               //  %for.inc.4.i.i
	lhu x13 ,  10 ( x11 )
	bltu x0, x13, .LBB4_40
.LBB4_37:                               //  %for.inc.5.i.i
	lhu x13 ,  12 ( x11 )
	bltu x0, x13, .LBB4_40
.LBB4_38:                               //  %for.inc.6.i.i
	lhu x13 ,  14 ( x11 )
	bltu x0, x13, .LBB4_40
.LBB4_39:                               //  %for.inc.7.i.i
	lhu x13 ,  16 ( x11 )
	beq x0, x13, .LBB4_66
.LBB4_40:                               //  %if.then13.i
	lhu x24 ,  16 ( x11 )
	addi x9 ,  x2 ,  20
	lhu x16 ,  14 ( x11 )
	sh x22 ,  22 ( x9 )
	sh x21 ,  20 ( x9 )
	sh x0 ,  4 ( x9 )
	lhu x13 ,  12 ( x11 )
	lhu x23 ,  10 ( x11 )
	lhu x27 ,  8 ( x11 )
	sh x24 ,  6 ( x9 )
	lhu x26 ,  6 ( x11 )
	sh x16 ,  8 ( x9 )
	lhu x25 ,  4 ( x11 )
	sh x13 ,  10 ( x9 )
	lh x11 ,  -2 ( x11 )
	sh x23 ,  12 ( x9 )
	sh x27 ,  14 ( x9 )
	sh x26 ,  16 ( x9 )
	sh x25 ,  18 ( x9 )
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	sh x11 ,  44 ( x2 )
	beq x7, x15, .LBB4_48
.LBB4_43:                               //  %for.body.preheader
	lui x30 ,  32767&4095
	or x15 ,  x6 ,  x5
	srli x30 ,  x30 ,  12&31
	or x14 ,  x12 ,  x30
	lui x30 ,  65535&4095
	and x15 ,  x14 ,  x15
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x15 ,  x29 ,  x15
	or x15 ,  x24 ,  x15
	or x15 ,  x17 ,  x15
	or x15 ,  x16 ,  x15
	or x15 ,  x20 ,  x15
	or x15 ,  x13 ,  x15
	or x15 ,  x19 ,  x15
	or x15 ,  x23 ,  x15
	or x15 ,  x18 ,  x15
	or x15 ,  x27 ,  x15
	or x15 ,  x14 ,  x15
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	or x15 ,  x26 ,  x15
	or x15 ,  x14 ,  x15
	lui x14 ,  (65535>>12)&1048575
	or x15 ,  x25 ,  x15
	or x14 ,  x14 ,  x30
	or x15 ,  x10 ,  x15
	or x15 ,  x21 ,  x15
	or x15 ,  x9 ,  x15
	or x15 ,  x22 ,  x15
	and x15 ,  x14 ,  x15
	beq x0, x15, .LBB4_44
.LBB4_45:                               //  %nzro
	add x15 ,  x0 ,  x0
	beq x7, x15, .LBB4_46
.LBB4_47:                               //  %nzro
	addi x10 ,  x0 ,  -1
	jal x0, .LBB4_55
.LBB4_41:                               //  %if.end28.i
	lhu x21 ,  2 ( x11 )
	sh x0 ,  44 ( x2 )
	lhu x25 ,  4 ( x11 )
	lhu x26 ,  6 ( x11 )
	lhu x27 ,  8 ( x11 )
	lhu x23 ,  10 ( x11 )
	lhu x13 ,  12 ( x11 )
	lhu x16 ,  14 ( x11 )
	lhu x24 ,  16 ( x11 )
	lhu x22 ,  0 ( x11 )
	addi x11 ,  x2 ,  20
	sh x13 ,  10 ( x11 )
	sh x23 ,  12 ( x11 )
	sh x27 ,  14 ( x11 )
	sh x26 ,  16 ( x11 )
	sh x25 ,  18 ( x11 )
	sh x21 ,  20 ( x11 )
	sh x0 ,  4 ( x11 )
	sh x16 ,  8 ( x11 )
	sh x24 ,  6 ( x11 )
	sh x22 ,  22 ( x11 )
	bne x7, x15, .LBB4_43
.LBB4_48:                               //  %do.cond
	add x10 ,  x0 ,  x0
	beq x7, x10, .LBB4_49
.LBB4_50:                               //  %do.cond
	addi x15 ,  x0 ,  -1
	bne x14, x8, .LBB4_52
.LBB4_56:                               //  %do.cond.2
	add x14 ,  x0 ,  x29
	add x8 ,  x0 ,  x24
	bne x29, x24, .LBB4_52
.LBB4_57:                               //  %do.cond.3
	add x14 ,  x0 ,  x17
	add x8 ,  x0 ,  x16
	bne x17, x16, .LBB4_52
.LBB4_58:                               //  %do.cond.4
	lhu x8 ,  30 ( x2 )
	lhu x14 ,  56 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_59:                               //  %do.cond.5
	lhu x8 ,  32 ( x2 )
	lhu x14 ,  58 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_60:                               //  %do.cond.6
	lhu x8 ,  34 ( x2 )
	lhu x14 ,  60 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_61:                               //  %do.cond.7
	lhu x8 ,  36 ( x2 )
	lhu x14 ,  62 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_62:                               //  %do.cond.8
	lhu x8 ,  38 ( x2 )
	lhu x14 ,  64 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_63:                               //  %do.cond.9
	lhu x8 ,  40 ( x2 )
	lhu x14 ,  66 ( x2 )
	bne x14, x8, .LBB4_52
.LBB4_64:                               //  %do.cond.10
	lhu x8 ,  42 ( x2 )
	lhu x14 ,  68 ( x2 )
	bne x14, x8, .LBB4_52
	jal x0, .LBB4_55
.LBB4_49:
	slti x15 ,  x0 ,  1
	beq x14, x8, .LBB4_56
.LBB4_52:                               //  %__mdiff
	bltu x8, x14, .LBB4_53
.LBB4_54:                               //  %__mdiff
	sub x10 ,  x0 ,  x15
	jal x0, .LBB4_55
.LBB4_53:
	add x10 ,  x0 ,  x15
	jal x0, .LBB4_55
.LBB4_44:
	add x10 ,  x0 ,  x0
	jal x0, .LBB4_55
.LBB4_46:
	slti x10 ,  x0 ,  1
.LBB4_55:                               //  %cleanup
	lw x8 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.LBB4_65:                               //  %for.cond20.preheader.i94
	addi x15 ,  x2 ,  46
	add x17 ,  x0 ,  x0
	sh x0 ,  70 ( x2 )
	sh x0 ,  22 ( x15 )
	sh x0 ,  20 ( x15 )
	sh x0 ,  18 ( x15 )
	sh x0 ,  16 ( x15 )
	sh x0 ,  14 ( x15 )
	sh x0 ,  12 ( x15 )
	sh x0 ,  10 ( x15 )
	sh x0 ,  8 ( x15 )
	sh x0 ,  6 ( x15 )
	sh x0 ,  4 ( x15 )
	add x20 ,  x0 ,  x17
	add x19 ,  x0 ,  x17
	add x18 ,  x0 ,  x17
	sw x17 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x17 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x17
	add x9 ,  x0 ,  x17
	add x29 ,  x0 ,  x17
	jal x0, .LBB4_31
.LBB4_66:                               //  %for.cond20.preheader.i
	addi x13 ,  x2 ,  20
	add x16 ,  x0 ,  x0
	sh x0 ,  44 ( x2 )
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	sh x0 ,  22 ( x13 )
	sh x0 ,  20 ( x13 )
	sh x0 ,  18 ( x13 )
	sh x0 ,  16 ( x13 )
	sh x0 ,  14 ( x13 )
	sh x0 ,  12 ( x13 )
	sh x0 ,  10 ( x13 )
	sh x0 ,  8 ( x13 )
	sh x0 ,  6 ( x13 )
	sh x0 ,  4 ( x13 )
	add x13 ,  x0 ,  x16
	add x23 ,  x0 ,  x16
	add x27 ,  x0 ,  x16
	add x26 ,  x0 ,  x16
	add x25 ,  x0 ,  x16
	add x21 ,  x0 ,  x16
	add x22 ,  x0 ,  x16
	add x24 ,  x0 ,  x16
	bne x7, x15, .LBB4_43
	jal x0, .LBB4_48
.Lfunc_end4:
	.size	ecmp, .Lfunc_end4-ecmp
	.cfi_endproc
                                        //  -- End function
	.type	ediv,@function          //  -- Begin function ediv
ediv:                                   //  @ediv
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -184
	.cfi_adjust_cfa_offset 184
	sw x18 ,  172 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x19 ,  168 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x30 ,  32767&4095
	sw x22 ,  156 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	lui x22 ,  (32767>>12)&1048575
	sw x9 ,  176 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  164 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x25 ,  144 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x23 ,  152 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x25 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	sw x1 ,  180 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  160 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  148 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	lhu x19 ,  18 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	and x23 ,  x15 ,  x19
	bne x23, x15, .LBB5_11
.LBB5_1:                                //  %for.body.preheader.i
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB5_10
.LBB5_2:                                //  %for.inc.i
	lhu x14 ,  2 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_3:                                //  %for.inc.1.i
	lhu x14 ,  4 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_4:                                //  %for.inc.2.i
	lhu x14 ,  6 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_5:                                //  %for.inc.3.i
	lhu x14 ,  8 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_6:                                //  %for.inc.4.i
	lhu x14 ,  10 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_7:                                //  %for.inc.5.i
	lhu x14 ,  12 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_8:                                //  %for.inc.6.i
	lhu x14 ,  14 ( x18 )
	bltu x0, x14, .LBB5_10
.LBB5_9:                                //  %eisnan.exit
	lhu x14 ,  16 ( x18 )
	beq x0, x14, .LBB5_11
.LBB5_10:                               //  %if.then
	sh x15 ,  0 ( x9 )
	lh x15 ,  2 ( x18 )
	sh x15 ,  2 ( x9 )
	lh x15 ,  4 ( x18 )
	sh x15 ,  4 ( x9 )
	lh x15 ,  6 ( x18 )
	sh x15 ,  6 ( x9 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  8 ( x9 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  10 ( x9 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  12 ( x9 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  14 ( x9 )
	lh x15 ,  16 ( x18 )
	sh x15 ,  16 ( x9 )
	lh x15 ,  18 ( x18 )
	sh x15 ,  18 ( x9 )
	jal x0, .LBB5_160
.LBB5_11:                               //  %if.end
	lhu x21 ,  18 ( x20 )
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	and x24 ,  x15 ,  x21
	bne x24, x15, .LBB5_22
.LBB5_12:                               //  %for.body.preheader.i169
	lhu x15 ,  0 ( x20 )
	bltu x0, x15, .LBB5_21
.LBB5_13:                               //  %for.inc.i172
	lhu x14 ,  2 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_14:                               //  %for.inc.1.i177
	lhu x14 ,  4 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_15:                               //  %for.inc.2.i180
	lhu x14 ,  6 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_16:                               //  %for.inc.3.i183
	lhu x14 ,  8 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_17:                               //  %for.inc.4.i186
	lhu x14 ,  10 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_18:                               //  %for.inc.5.i189
	lhu x14 ,  12 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_19:                               //  %for.inc.6.i192
	lhu x14 ,  14 ( x20 )
	bltu x0, x14, .LBB5_21
.LBB5_20:                               //  %eisnan.exit197
	lhu x14 ,  16 ( x20 )
	beq x0, x14, .LBB5_22
.LBB5_21:                               //  %if.then3
	sh x15 ,  0 ( x9 )
	lh x15 ,  2 ( x20 )
	sh x15 ,  2 ( x9 )
	lh x15 ,  4 ( x20 )
	sh x15 ,  4 ( x9 )
	lh x15 ,  6 ( x20 )
	sh x15 ,  6 ( x9 )
	lh x15 ,  8 ( x20 )
	sh x15 ,  8 ( x9 )
	lh x15 ,  10 ( x20 )
	sh x15 ,  10 ( x9 )
	lh x15 ,  12 ( x20 )
	sh x15 ,  12 ( x9 )
	lh x15 ,  14 ( x20 )
	sh x15 ,  14 ( x9 )
	lh x15 ,  16 ( x20 )
	sh x15 ,  16 ( x9 )
	lh x15 ,  18 ( x20 )
	sh x15 ,  18 ( x9 )
	jal x0, .LBB5_160
.LBB5_22:                               //  %if.end4
	lui x30 ,  ezero&4095
	lui x8 ,  (ezero>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x8 ,  x30
	call ecmp
	bltu x0, x10, .LBB5_24
.LBB5_23:                               //  %land.lhs.true
	lui x30 ,  ezero&4095
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x8 ,  x30
	call ecmp
	beq x0, x10, .LBB5_44
.LBB5_24:                               //  %lor.lhs.false
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x23, x15, .LBB5_45
.LBB5_25:                               //  %for.body.preheader.i.i237
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_26:                               //  %for.inc.i.i239
	lhu x15 ,  2 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_27:                               //  %for.inc.1.i.i241
	lhu x15 ,  4 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_28:                               //  %for.inc.2.i.i243
	lhu x15 ,  6 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_29:                               //  %for.inc.3.i.i245
	lhu x15 ,  8 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_30:                               //  %for.inc.4.i.i247
	lhu x15 ,  10 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_31:                               //  %for.inc.5.i.i249
	lhu x15 ,  12 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_32:                               //  %for.inc.6.i.i251
	lhu x15 ,  14 ( x18 )
	bltu x0, x15, .LBB5_45
.LBB5_33:                               //  %eisinf.exit
	lhu x15 ,  16 ( x18 )
	beq x0, x15, .LBB5_34
.LBB5_45:                               //  %if.end14
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x24, x15, .LBB5_71
.LBB5_46:                               //  %for.body.preheader.i.i494
	lhu x15 ,  0 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_47:                               //  %for.inc.i.i497
	lhu x15 ,  2 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_48:                               //  %for.inc.1.i.i500
	lhu x15 ,  4 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_49:                               //  %for.inc.2.i.i503
	lhu x15 ,  6 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_50:                               //  %for.inc.3.i.i506
	lhu x15 ,  8 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_51:                               //  %for.inc.4.i.i509
	lhu x15 ,  10 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_52:                               //  %for.inc.5.i.i512
	lhu x15 ,  12 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_53:                               //  %for.inc.6.i.i515
	lhu x15 ,  14 ( x20 )
	bltu x0, x15, .LBB5_71
.LBB5_54:                               //  %eisinf.exit521
	lhu x15 ,  16 ( x20 )
	beq x0, x15, .LBB5_55
.LBB5_71:                               //  %if.end24
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x23, x15, .LBB5_83
.LBB5_72:                               //  %for.body.preheader.i.i389
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_73:                               //  %for.inc.i.i392
	lhu x15 ,  2 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_74:                               //  %for.inc.1.i.i395
	lhu x15 ,  4 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_75:                               //  %for.inc.2.i.i398
	lhu x15 ,  6 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_76:                               //  %for.inc.3.i.i401
	lhu x15 ,  8 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_77:                               //  %for.inc.4.i.i404
	lhu x15 ,  10 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_78:                               //  %for.inc.5.i.i407
	lhu x15 ,  12 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_79:                               //  %for.inc.6.i.i410
	lhu x15 ,  14 ( x18 )
	bltu x0, x15, .LBB5_83
.LBB5_80:                               //  %eisinf.exit416
	lhu x15 ,  16 ( x18 )
	beq x0, x15, .LBB5_81
.LBB5_83:                               //  %if.end28
	slli x15 ,  x19 ,  16&31
	lui x30 ,  32767&4095
	addi x19 ,  x2 ,  78
	sh x23 ,  80 ( x2 )
	srai x15 ,  x15 ,  16&31
	srli x30 ,  x30 ,  12&31
	srli x15 ,  x15 ,  15&31
	sh x15 ,  78 ( x2 )
	or x15 ,  x22 ,  x30
	bne x23, x15, .LBB5_93
.LBB5_84:                               //  %for.body.preheader.i.i314
	lhu x15 ,  2 ( x18 )
	lhu x14 ,  0 ( x18 )
	or x13 ,  x15 ,  x14
	bltu x0, x13, .LBB5_92
.LBB5_85:                               //  %for.inc.1.i.i320
	lhu x13 ,  4 ( x18 )
	add x15 ,  x0 ,  x0
	bltu x0, x13, .LBB5_92
.LBB5_86:                               //  %for.inc.2.i.i323
	lhu x13 ,  6 ( x18 )
	bltu x0, x13, .LBB5_92
.LBB5_87:                               //  %for.inc.3.i.i326
	lhu x13 ,  8 ( x18 )
	bltu x0, x13, .LBB5_92
.LBB5_88:                               //  %for.inc.4.i.i329
	lhu x13 ,  10 ( x18 )
	bltu x0, x13, .LBB5_92
.LBB5_89:                               //  %for.inc.5.i.i332
	lhu x13 ,  12 ( x18 )
	bltu x0, x13, .LBB5_92
.LBB5_90:                               //  %for.inc.6.i.i335
	lhu x13 ,  14 ( x18 )
	bltu x0, x13, .LBB5_92
.LBB5_91:                               //  %for.inc.7.i.i337
	lhu x13 ,  16 ( x18 )
	beq x0, x13, .LBB5_82
.LBB5_92:                               //  %if.then13.i356
	sh x15 ,  20 ( x19 )
	lh x15 ,  16 ( x18 )
	sh x14 ,  22 ( x19 )
	sh x0 ,  4 ( x19 )
	sh x15 ,  6 ( x19 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  8 ( x19 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  10 ( x19 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  12 ( x19 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  14 ( x19 )
	lh x15 ,  6 ( x18 )
	sh x15 ,  16 ( x19 )
	lh x15 ,  4 ( x18 )
	sh x15 ,  18 ( x19 )
	lh x15 ,  -2 ( x18 )
	sh x15 ,  102 ( x2 )
	jal x0, .LBB5_95
.LBB5_93:                               //  %if.end28.i374
	lh x15 ,  16 ( x18 )
	sh x15 ,  6 ( x19 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  8 ( x19 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  10 ( x19 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  12 ( x19 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  14 ( x19 )
	lh x15 ,  6 ( x18 )
	sh x15 ,  16 ( x19 )
	lh x15 ,  4 ( x18 )
	sh x15 ,  18 ( x19 )
	lh x15 ,  2 ( x18 )
	sh x15 ,  20 ( x19 )
	lh x15 ,  0 ( x18 )
	sh x15 ,  22 ( x19 )
.LBB5_94:                               //  %emovi.exit376
	sh x0 ,  4 ( x19 )
	sh x0 ,  102 ( x2 )
.LBB5_95:                               //  %emovi.exit376
	slli x15 ,  x21 ,  16&31
	lui x30 ,  32767&4095
	addi x18 ,  x2 ,  52
	lui x26 ,  (65535>>12)&1048575
	sh x24 ,  54 ( x2 )
	srai x15 ,  x15 ,  16&31
	srli x30 ,  x30 ,  12&31
	srli x15 ,  x15 ,  15&31
	sh x15 ,  52 ( x2 )
	or x15 ,  x22 ,  x30
	bne x24, x15, .LBB5_173
.LBB5_96:                               //  %for.body.preheader.i.i260
	lhu x15 ,  2 ( x20 )
	lhu x14 ,  0 ( x20 )
	or x13 ,  x15 ,  x14
	bltu x0, x13, .LBB5_104
.LBB5_97:                               //  %for.inc.1.i.i266
	lhu x13 ,  4 ( x20 )
	add x15 ,  x0 ,  x0
	bltu x0, x13, .LBB5_104
.LBB5_98:                               //  %for.inc.2.i.i269
	lhu x13 ,  6 ( x20 )
	bltu x0, x13, .LBB5_104
.LBB5_99:                               //  %for.inc.3.i.i272
	lhu x13 ,  8 ( x20 )
	bltu x0, x13, .LBB5_104
.LBB5_100:                              //  %for.inc.4.i.i275
	lhu x13 ,  10 ( x20 )
	bltu x0, x13, .LBB5_104
.LBB5_101:                              //  %for.inc.5.i.i278
	lhu x13 ,  12 ( x20 )
	bltu x0, x13, .LBB5_104
.LBB5_102:                              //  %for.inc.6.i.i281
	lhu x13 ,  14 ( x20 )
	bltu x0, x13, .LBB5_104
.LBB5_103:                              //  %for.inc.7.i.i283
	lhu x13 ,  16 ( x20 )
	beq x0, x13, .LBB5_175
.LBB5_104:                              //  %if.then13.i
	sh x15 ,  20 ( x18 )
	lh x15 ,  16 ( x20 )
	sh x14 ,  22 ( x18 )
	sh x0 ,  4 ( x18 )
	sh x15 ,  6 ( x18 )
	lh x15 ,  14 ( x20 )
	sh x15 ,  8 ( x18 )
	lh x15 ,  12 ( x20 )
	sh x15 ,  10 ( x18 )
	lh x15 ,  10 ( x20 )
	sh x15 ,  12 ( x18 )
	lh x15 ,  8 ( x20 )
	sh x15 ,  14 ( x18 )
	lh x15 ,  6 ( x20 )
	sh x15 ,  16 ( x18 )
	lh x15 ,  4 ( x20 )
	sh x15 ,  18 ( x18 )
	lh x15 ,  -2 ( x20 )
	sh x15 ,  76 ( x2 )
.LBB5_105:                              //  %emovi.exit.thread
	lui x30 ,  32767&4095
	add x16 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x24 ,  x22 ,  x30
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x16, .LBB5_110
	jal x0, .LBB5_108
.LBB5_173:                              //  %emovi.exit
	lhu x15 ,  0 ( x20 )
	add x16 ,  x0 ,  x23
	sh x0 ,  4 ( x18 )
	sh x0 ,  76 ( x2 )
	lhu x14 ,  2 ( x20 )
	lhu x13 ,  4 ( x20 )
	lhu x12 ,  6 ( x20 )
	lhu x11 ,  8 ( x20 )
	sh x15 ,  22 ( x18 )
	lhu x10 ,  10 ( x20 )
	sh x14 ,  20 ( x18 )
	lhu x5 ,  12 ( x20 )
	sh x13 ,  18 ( x18 )
	lhu x6 ,  14 ( x20 )
	sh x12 ,  16 ( x18 )
	lhu x7 ,  16 ( x20 )
	sh x11 ,  14 ( x18 )
	sh x10 ,  12 ( x18 )
	sh x5 ,  10 ( x18 )
	sh x6 ,  8 ( x18 )
	sh x7 ,  6 ( x18 )
	beq x0, x24, .LBB5_174
.LBB5_107:                              //  %dnzro1
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x16, .LBB5_110
.LBB5_108:                              //  %for.cond53
	lhu x15 ,  82 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_161:                              //  %for.cond53.1
	lhu x15 ,  84 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_162:                              //  %for.cond53.2
	lhu x15 ,  86 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_163:                              //  %for.cond53.3
	lhu x15 ,  88 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_164:                              //  %for.cond53.4
	lhu x15 ,  90 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_165:                              //  %for.cond53.5
	lhu x15 ,  92 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_166:                              //  %for.cond53.6
	lhu x15 ,  94 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_167:                              //  %for.cond53.7
	lhu x15 ,  96 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_168:                              //  %for.cond53.8
	lhu x15 ,  98 ( x2 )
	bltu x0, x15, .LBB5_109
.LBB5_169:                              //  %for.cond53.9
	lhu x15 ,  100 ( x2 )
	beq x0, x15, .LBB5_170
.LBB5_109:                              //  %if.then61
	addi x10 ,  x2 ,  78
	call enormlz
	sub x23 ,  x23 ,  x10
.LBB5_110:                              //  %dnzro2
	lhu x13 ,  20 ( x18 )
	lui x30 ,  65535&4095
	sw x23 ,  4 ( x2 )              //  4-byte Folded Spill
	sh x0 ,  76 ( x25 )
	sh x0 ,  74 ( x25 )
	sh x0 ,  72 ( x25 )
	sh x0 ,  70 ( x25 )
	sh x0 ,  68 ( x25 )
	sh x0 ,  66 ( x25 )
	sh x0 ,  64 ( x25 )
	sh x0 ,  62 ( x25 )
	sh x0 ,  60 ( x25 )
	sh x0 ,  58 ( x25 )
	sh x0 ,  56 ( x25 )
	lhu x11 ,  22 ( x18 )
	srli x30 ,  x30 ,  12&31
	lh x15 ,  52 ( x2 )
	lhu x14 ,  6 ( x18 )
	slli x12 ,  x13 ,  15&31
	srli x13 ,  x13 ,  1&31
	srli x10 ,  x11 ,  1&31
	or x12 ,  x12 ,  x10
	lhu x10 ,  18 ( x18 )
	sh x15 ,  52 ( x25 )
	lh x15 ,  2 ( x18 )
	sh x12 ,  22 ( x18 )
	slli x5 ,  x10 ,  15&31
	srli x10 ,  x10 ,  1&31
	or x13 ,  x5 ,  x13
	lhu x5 ,  16 ( x18 )
	sh x15 ,  54 ( x25 )
	lhu x15 ,  4 ( x18 )
	sh x13 ,  20 ( x18 )
	slli x6 ,  x5 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x10 ,  x6 ,  x10
	lhu x6 ,  14 ( x18 )
	srli x8 ,  x15 ,  1&31
	slli x15 ,  x15 ,  15&31
	sh x10 ,  18 ( x18 )
	lhu x10 ,  84 ( x2 )
	sh x8 ,  4 ( x18 )
	slli x7 ,  x6 ,  15&31
	srli x6 ,  x6 ,  1&31
	or x5 ,  x7 ,  x5
	lhu x7 ,  12 ( x18 )
	sw x10 ,  24 ( x2 )             //  4-byte Folded Spill
	sh x5 ,  16 ( x18 )
	slli x16 ,  x7 ,  15&31
	srli x7 ,  x7 ,  1&31
	or x6 ,  x16 ,  x6
	lhu x16 ,  10 ( x18 )
	sh x6 ,  14 ( x18 )
	slli x17 ,  x16 ,  15&31
	srli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  8 ( x18 )
	sh x7 ,  12 ( x18 )
	slli x29 ,  x17 ,  15&31
	srli x17 ,  x17 ,  1&31
	or x16 ,  x29 ,  x16
	slli x29 ,  x14 ,  15&31
	srli x14 ,  x14 ,  1&31
	or x9 ,  x15 ,  x14
	lhu x14 ,  76 ( x2 )
	slli x15 ,  x11 ,  15&31
	or x17 ,  x29 ,  x17
	or x11 ,  x26 ,  x30
	sh x16 ,  10 ( x18 )
	sh x17 ,  8 ( x18 )
	sh x9 ,  6 ( x18 )
	srli x14 ,  x14 ,  1&31
	or x15 ,  x15 ,  x14
	sh x15 ,  76 ( x2 )
	call __mulsi3
	add x21 ,  x0 ,  x10
	addi x20 ,  x0 ,  56
	addi x23 ,  x2 ,  104
	sw x25 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB5_111
.LBB5_117:                              //  %difrnt.i355.if.end36_crit_edge.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x15 ,  110 ( x2 )
	lhu x14 ,  8 ( x23 )
	lhu x13 ,  10 ( x23 )
	lhu x11 ,  12 ( x23 )
	lhu x12 ,  14 ( x23 )
	lhu x10 ,  16 ( x23 )
	lhu x5 ,  18 ( x23 )
	lhu x6 ,  20 ( x23 )
	lhu x7 ,  22 ( x23 )
.LBB5_150:                              //  %if.end36.i
                                        //    in Loop: Header=BB5_111 Depth=1
	add x16 ,  x20 ,  x25
	lui x30 ,  65535&4095
	lhu x29 ,  128 ( x2 )
	addi x20 ,  x20 ,  2
	sh x24 ,  0 ( x16 )
	lhu x16 ,  22 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x17 ,  x26 ,  x30
	and x7 ,  x17 ,  x7
	and x6 ,  x17 ,  x6
	and x5 ,  x17 ,  x5
	and x10 ,  x17 ,  x10
	and x12 ,  x17 ,  x12
	and x11 ,  x17 ,  x11
	and x13 ,  x17 ,  x13
	and x14 ,  x17 ,  x14
	and x15 ,  x17 ,  x15
	sub x16 ,  x16 ,  x7
	lhu x7 ,  24 ( x18 )
	sh x0 ,  24 ( x18 )
	sub x7 ,  x7 ,  x29
	srli x29 ,  x7 ,  16&31
	sh x7 ,  22 ( x18 )
	andi x29 ,  x29 ,  1
	sub x16 ,  x16 ,  x29
	lhu x29 ,  20 ( x18 )
	sh x16 ,  20 ( x18 )
	sub x6 ,  x29 ,  x6
	srli x29 ,  x16 ,  16&31
	andi x29 ,  x29 ,  1
	sub x6 ,  x6 ,  x29
	lhu x29 ,  18 ( x18 )
	sh x6 ,  18 ( x18 )
	sub x5 ,  x29 ,  x5
	srli x29 ,  x6 ,  16&31
	andi x29 ,  x29 ,  1
	sub x5 ,  x5 ,  x29
	lhu x29 ,  16 ( x18 )
	sh x5 ,  16 ( x18 )
	sub x10 ,  x29 ,  x10
	srli x29 ,  x5 ,  16&31
	andi x29 ,  x29 ,  1
	sub x10 ,  x10 ,  x29
	lhu x29 ,  14 ( x18 )
	sh x10 ,  14 ( x18 )
	sub x12 ,  x29 ,  x12
	srli x29 ,  x10 ,  16&31
	andi x29 ,  x29 ,  1
	sub x12 ,  x12 ,  x29
	lhu x29 ,  12 ( x18 )
	sh x12 ,  12 ( x18 )
	sub x11 ,  x29 ,  x11
	srli x29 ,  x12 ,  16&31
	andi x29 ,  x29 ,  1
	sub x11 ,  x11 ,  x29
	lhu x29 ,  10 ( x18 )
	sh x11 ,  10 ( x18 )
	sub x13 ,  x29 ,  x13
	srli x29 ,  x11 ,  16&31
	andi x29 ,  x29 ,  1
	sub x13 ,  x13 ,  x29
	lhu x29 ,  8 ( x18 )
	sh x13 ,  8 ( x18 )
	sub x14 ,  x29 ,  x14
	srli x29 ,  x13 ,  16&31
	andi x29 ,  x29 ,  1
	sub x9 ,  x14 ,  x29
	lhu x14 ,  6 ( x18 )
	sh x9 ,  6 ( x18 )
	sub x15 ,  x14 ,  x15
	srli x14 ,  x9 ,  16&31
	andi x14 ,  x14 ,  1
	sub x8 ,  x15 ,  x14
	xori x15 ,  x20 ,  78
	sh x8 ,  56 ( x2 )
	beq x0, x15, .LBB5_151
.LBB5_111:                              //  %for.body9.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	slli x14 ,  x8 ,  16&31
	srli x30 ,  x30 ,  12&31
	or x24 ,  x26 ,  x30
	and x15 ,  x24 ,  x9
	or x10 ,  x15 ,  x14
	bltu x21, x10, .LBB5_113
.LBB5_112:                              //  %if.else.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lw x11 ,  24 ( x2 )             //  4-byte Folded Reload
	call __udivsi3
	add x24 ,  x0 ,  x10
.LBB5_113:                              //  %if.end.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	and x10 ,  x15 ,  x24
	call m16m
	lhu x16 ,  56 ( x2 )
	lhu x29 ,  108 ( x2 )
	add x17 ,  x0 ,  x16
	add x8 ,  x0 ,  x29
	bne x29, x16, .LBB5_116
.LBB5_114:                              //  %for.inc.i350.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  58 ( x2 )
	lhu x15 ,  110 ( x2 )
	bne x15, x17, .LBB5_115
.LBB5_118:                              //  %for.inc.1.i360.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  60 ( x2 )
	lhu x14 ,  112 ( x2 )
	bne x14, x17, .LBB5_119
.LBB5_120:                              //  %for.inc.2.i364.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  62 ( x2 )
	lhu x13 ,  114 ( x2 )
	bne x13, x17, .LBB5_121
.LBB5_122:                              //  %for.inc.3.i368.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  64 ( x2 )
	lhu x11 ,  116 ( x2 )
	bne x11, x17, .LBB5_123
.LBB5_124:                              //  %for.inc.4.i372.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  66 ( x2 )
	lhu x12 ,  118 ( x2 )
	bne x12, x17, .LBB5_125
.LBB5_126:                              //  %for.inc.5.i376.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  68 ( x2 )
	lhu x10 ,  120 ( x2 )
	bne x10, x17, .LBB5_127
.LBB5_128:                              //  %for.inc.6.i380.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  70 ( x2 )
	lhu x5 ,  122 ( x2 )
	bne x5, x17, .LBB5_129
.LBB5_130:                              //  %for.inc.7.i384.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  72 ( x2 )
	lhu x6 ,  124 ( x2 )
	bne x6, x17, .LBB5_131
.LBB5_132:                              //  %for.inc.8.i388.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  74 ( x2 )
	lhu x7 ,  126 ( x2 )
	bne x7, x17, .LBB5_133
.LBB5_134:                              //  %for.inc.9.i392.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x17 ,  76 ( x2 )
	lhu x8 ,  128 ( x2 )
	beq x8, x17, .LBB5_150
	jal x0, .LBB5_116
.LBB5_115:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x15
.LBB5_116:                              //  %difrnt.i355.i
                                        //    in Loop: Header=BB5_111 Depth=1
	bgeu x17, x8, .LBB5_117
.LBB5_135:                              //  %if.then22.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lhu x14 ,  22 ( x19 )
	lui x30 ,  65535&4095
	addi x21 ,  x24 ,  -1
	lhu x15 ,  22 ( x23 )
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	add x21 ,  x0 ,  x26
	lhu x13 ,  24 ( x19 )
	or x26 ,  x21 ,  x30
	lhu x8 ,  14 ( x19 )
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	lhu x9 ,  12 ( x19 )
	sub x15 ,  x15 ,  x14
	lhu x14 ,  24 ( x23 )
	sw x13 ,  40 ( x2 )             //  4-byte Folded Spill
	lhu x22 ,  10 ( x19 )
	lhu x25 ,  8 ( x19 )
	lhu x17 ,  6 ( x23 )
	sub x1 ,  x14 ,  x13
	lhu x13 ,  20 ( x19 )
	srli x14 ,  x1 ,  16&31
	sh x1 ,  24 ( x23 )
	andi x14 ,  x14 ,  1
	sub x7 ,  x15 ,  x14
	lhu x14 ,  20 ( x23 )
	srli x15 ,  x7 ,  16&31
	sw x13 ,  36 ( x2 )             //  4-byte Folded Spill
	sh x7 ,  22 ( x23 )
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x13
	lhu x13 ,  18 ( x19 )
	sub x6 ,  x14 ,  x15
	lhu x14 ,  18 ( x23 )
	srli x15 ,  x6 ,  16&31
	sh x6 ,  20 ( x23 )
	andi x15 ,  x15 ,  1
	sw x13 ,  32 ( x2 )             //  4-byte Folded Spill
	sub x14 ,  x14 ,  x13
	lhu x13 ,  16 ( x19 )
	sub x5 ,  x14 ,  x15
	lhu x14 ,  16 ( x23 )
	srli x15 ,  x5 ,  16&31
	lhu x19 ,  6 ( x19 )
	sh x5 ,  18 ( x23 )
	andi x15 ,  x15 ,  1
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	sub x14 ,  x14 ,  x13
	sub x10 ,  x14 ,  x15
	lhu x14 ,  14 ( x23 )
	sub x17 ,  x17 ,  x19
	srli x15 ,  x10 ,  16&31
	sh x10 ,  16 ( x23 )
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x8
	sub x12 ,  x14 ,  x15
	lhu x14 ,  12 ( x23 )
	srli x15 ,  x12 ,  16&31
	sh x12 ,  14 ( x23 )
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x9
	sub x11 ,  x14 ,  x15
	lhu x14 ,  10 ( x23 )
	srli x15 ,  x11 ,  16&31
	sh x11 ,  12 ( x23 )
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x22
	sub x13 ,  x14 ,  x15
	lhu x14 ,  8 ( x23 )
	srli x15 ,  x13 ,  16&31
	sh x13 ,  10 ( x23 )
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x25
	sub x14 ,  x14 ,  x15
	srli x15 ,  x14 ,  16&31
	sh x14 ,  8 ( x23 )
	andi x15 ,  x15 ,  1
	sub x15 ,  x17 ,  x15
	srli x17 ,  x15 ,  16&31
	sh x15 ,  6 ( x23 )
	andi x27 ,  x17 ,  1
	lhu x17 ,  82 ( x2 )
	sub x29 ,  x29 ,  x17
	sub x27 ,  x29 ,  x27
	add x29 ,  x0 ,  x27
	and x26 ,  x26 ,  x27
	sh x27 ,  108 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_136:                              //  %for.inc.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x15
	lhu x16 ,  58 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_139:                              //  %for.inc.1.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x14
	lhu x16 ,  60 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_140:                              //  %for.inc.2.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x13
	lhu x16 ,  62 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_141:                              //  %for.inc.3.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x11
	lhu x16 ,  64 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_142:                              //  %for.inc.4.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x12
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x12
	lhu x16 ,  66 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_143:                              //  %for.inc.5.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x10
	lhu x16 ,  68 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_144:                              //  %for.inc.6.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x5
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x5
	lhu x16 ,  70 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_145:                              //  %for.inc.7.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x6
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x6
	lhu x16 ,  72 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_146:                              //  %for.inc.8.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x7
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x7
	lhu x16 ,  74 ( x2 )
	bne x16, x26, .LBB5_137
.LBB5_147:                              //  %for.inc.9.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	add x29 ,  x0 ,  x1
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x26 ,  x16 ,  x1
	lhu x16 ,  76 ( x2 )
	beq x16, x26, .LBB5_138
.LBB5_137:                              //  %difrnt.i.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x26 ,  x21 ,  x30
	and x29 ,  x26 ,  x29
	bgeu x16, x29, .LBB5_138
.LBB5_148:                              //  %if.then30.i
                                        //    in Loop: Header=BB5_111 Depth=1
	lui x30 ,  65535&4095
	lw x29 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x24 ,  x24 ,  -2
	srli x30 ,  x30 ,  12&31
	or x16 ,  x21 ,  x30
	and x7 ,  x16 ,  x7
	and x6 ,  x16 ,  x6
	and x5 ,  x16 ,  x5
	and x10 ,  x16 ,  x10
	and x12 ,  x16 ,  x12
	and x11 ,  x16 ,  x11
	and x13 ,  x16 ,  x13
	and x14 ,  x16 ,  x14
	and x15 ,  x16 ,  x15
	sub x7 ,  x7 ,  x29
	and x29 ,  x16 ,  x1
	lw x1 ,  40 ( x2 )              //  4-byte Folded Reload
	sub x12 ,  x12 ,  x8
	sub x11 ,  x11 ,  x9
	sub x13 ,  x13 ,  x22
	sub x14 ,  x14 ,  x25
	sub x15 ,  x15 ,  x19
	sub x29 ,  x29 ,  x1
	srli x1 ,  x29 ,  16&31
	sh x29 ,  24 ( x23 )
	andi x1 ,  x1 ,  1
	sub x7 ,  x7 ,  x1
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	sh x7 ,  22 ( x23 )
	sub x6 ,  x6 ,  x1
	srli x1 ,  x7 ,  16&31
	andi x1 ,  x1 ,  1
	sub x6 ,  x6 ,  x1
	lw x1 ,  32 ( x2 )              //  4-byte Folded Reload
	sh x6 ,  20 ( x23 )
	sub x5 ,  x5 ,  x1
	srli x1 ,  x6 ,  16&31
	andi x1 ,  x1 ,  1
	sub x5 ,  x5 ,  x1
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	sh x5 ,  18 ( x23 )
	sub x10 ,  x10 ,  x1
	srli x1 ,  x5 ,  16&31
	andi x1 ,  x1 ,  1
	sub x10 ,  x10 ,  x1
	srli x8 ,  x10 ,  16&31
	sh x10 ,  16 ( x23 )
	andi x8 ,  x8 ,  1
	sub x12 ,  x12 ,  x8
	srli x8 ,  x12 ,  16&31
	sh x12 ,  14 ( x23 )
	andi x8 ,  x8 ,  1
	sub x11 ,  x11 ,  x8
	srli x8 ,  x11 ,  16&31
	sh x11 ,  12 ( x23 )
	andi x8 ,  x8 ,  1
	sub x13 ,  x13 ,  x8
	srli x8 ,  x13 ,  16&31
	sh x13 ,  10 ( x23 )
	andi x8 ,  x8 ,  1
	sub x14 ,  x14 ,  x8
	srli x16 ,  x14 ,  16&31
	sh x14 ,  8 ( x23 )
	andi x16 ,  x16 ,  1
	sub x15 ,  x15 ,  x16
	sub x16 ,  x27 ,  x17
	srli x17 ,  x15 ,  16&31
	sh x15 ,  6 ( x23 )
	andi x17 ,  x17 ,  1
	sub x16 ,  x16 ,  x17
	sh x16 ,  108 ( x2 )
	jal x0, .LBB5_149
.LBB5_138:                              //    in Loop: Header=BB5_111 Depth=1
	lw x24 ,  48 ( x2 )             //  4-byte Folded Reload
.LBB5_149:                              //  %if.end36.i
                                        //    in Loop: Header=BB5_111 Depth=1
	add x26 ,  x0 ,  x21
	lw x25 ,  20 ( x2 )             //  4-byte Folded Reload
	addi x19 ,  x2 ,  78
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB5_150
.LBB5_119:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x14
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_121:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x13
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_123:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x11
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_125:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x12
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_127:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x10
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_129:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x5
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_131:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x6
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_133:                              //    in Loop: Header=BB5_111 Depth=1
	add x8 ,  x0 ,  x7
	bgeu x17, x8, .LBB5_117
	jal x0, .LBB5_135
.LBB5_151:                              //  %edivm.exit
	lh x14 ,  54 ( x25 )
	or x15 ,  x7 ,  x16
	lui x30 ,  16383&4095
	or x15 ,  x6 ,  x15
	srli x30 ,  x30 ,  12&31
	or x15 ,  x5 ,  x15
	or x15 ,  x10 ,  x15
	add x10 ,  x0 ,  x18
	sh x14 ,  2 ( x18 )
	lh x14 ,  56 ( x25 )
	or x15 ,  x12 ,  x15
	or x15 ,  x11 ,  x15
	or x15 ,  x13 ,  x15
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	or x15 ,  x9 ,  x15
	sh x14 ,  4 ( x18 )
	lh x14 ,  58 ( x25 )
	or x15 ,  x8 ,  x15
	add x8 ,  x0 ,  x0
	add x12 ,  x0 ,  x8
	sh x14 ,  6 ( x18 )
	lh x14 ,  60 ( x25 )
	sh x14 ,  8 ( x18 )
	lh x14 ,  62 ( x25 )
	sh x14 ,  10 ( x18 )
	lh x14 ,  64 ( x25 )
	sh x14 ,  12 ( x18 )
	lh x14 ,  66 ( x25 )
	sh x14 ,  14 ( x18 )
	lh x14 ,  68 ( x25 )
	sh x14 ,  16 ( x18 )
	lh x14 ,  52 ( x25 )
	sh x14 ,  52 ( x2 )
	lh x14 ,  70 ( x25 )
	sh x14 ,  18 ( x18 )
	lh x14 ,  72 ( x25 )
	sh x14 ,  20 ( x18 )
	lh x14 ,  74 ( x25 )
	sh x14 ,  22 ( x18 )
	lh x14 ,  76 ( x25 )
	sh x14 ,  76 ( x2 )
	lw x14 ,  4 ( x2 )              //  4-byte Folded Reload
	sub x14 ,  x13 ,  x14
	lui x13 ,  (16383>>12)&1048575
	or x13 ,  x13 ,  x30
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	add x13 ,  x13 ,  x14
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  64
	sltu x11 ,  x0 ,  x15
	add x15 ,  x0 ,  x25
	call emdnorm
	lhu x14 ,  52 ( x2 )
	lui x5 ,  (32767>>12)&1048575
	lhu x12 ,  78 ( x2 )
	beq x12, x14, .LBB5_153
.LBB5_152:
	addi x8 ,  x0 ,  -1
.LBB5_153:                              //  %edivm.exit
	lhu x13 ,  2 ( x18 )
	lui x30 ,  -32768&4095
	lui x15 ,  (-32768>>12)&1048575
	lw x10 ,  12 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	add x15 ,  x0 ,  x13
	beq x12, x14, .LBB5_155
.LBB5_154:                              //  %edivm.exit
	or x15 ,  x11 ,  x13
.LBB5_155:                              //  %edivm.exit
	lui x30 ,  32767&4095
	sh x15 ,  18 ( x10 )
	sh x8 ,  52 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x5 ,  x30
	bne x13, x14, .LBB5_159
.LBB5_156:                              //  %for.body.preheader.i.i
	lhu x14 ,  6 ( x18 )
	lui x30 ,  32767&4095
	sh x0 ,  14 ( x10 )
	sh x0 ,  12 ( x10 )
	sh x0 ,  10 ( x10 )
	sh x0 ,  8 ( x10 )
	sh x0 ,  6 ( x10 )
	sh x0 ,  4 ( x10 )
	sh x0 ,  2 ( x10 )
	sh x0 ,  0 ( x10 )
	lhu x13 ,  8 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x13
	lhu x13 ,  10 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  14 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  16 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  20 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  76 ( x2 )
	or x14 ,  x13 ,  x14
	beq x0, x14, .LBB5_158
.LBB5_157:                              //  %if.then11.i
	or x15 ,  x5 ,  x30
	sh x15 ,  18 ( x10 )
	lui x15 ,  (49152>>12)&1048575
	sh x15 ,  16 ( x10 )
	jal x0, .LBB5_160
.LBB5_159:                              //  %if.end13.i
	lh x15 ,  6 ( x18 )
	sh x15 ,  16 ( x10 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  14 ( x10 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  12 ( x10 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  10 ( x10 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  8 ( x10 )
	lh x15 ,  16 ( x18 )
	sh x15 ,  6 ( x10 )
	lh x15 ,  18 ( x18 )
	sh x15 ,  4 ( x10 )
	lh x15 ,  20 ( x18 )
	sh x15 ,  2 ( x10 )
	lh x15 ,  74 ( x2 )
	sh x15 ,  0 ( x10 )
	jal x0, .LBB5_160
.LBB5_174:                              //  %for.cond.1
	or x6 ,  x6 ,  x7
	lui x30 ,  65535&4095
	or x5 ,  x5 ,  x6
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x5
	or x11 ,  x11 ,  x10
	or x12 ,  x12 ,  x11
	or x13 ,  x13 ,  x12
	or x14 ,  x14 ,  x13
	or x15 ,  x15 ,  x14
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	beq x0, x15, .LBB5_81
.LBB5_106:                              //  %if.then43
	addi x10 ,  x2 ,  52
	call enormlz
	lhu x16 ,  80 ( x2 )
	sub x24 ,  x0 ,  x10
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  8 ( x2 )              //  4-byte Folded Spill
	bltu x0, x16, .LBB5_110
	jal x0, .LBB5_108
.LBB5_158:                              //  %if.end12.i
	or x14 ,  x5 ,  x30
	sh x0 ,  16 ( x10 )
	or x15 ,  x14 ,  x15
	sh x15 ,  18 ( x10 )
	jal x0, .LBB5_160
.LBB5_81:                               //  %if.then27
	sh x0 ,  18 ( x9 )
.LBB5_69:                               //  %cleanup
	sh x0 ,  16 ( x9 )
	jal x0, .LBB5_70
.LBB5_82:                               //  %for.cond20.preheader.i312
	sh x0 ,  22 ( x19 )
	sh x0 ,  20 ( x19 )
	sh x0 ,  18 ( x19 )
	sh x0 ,  16 ( x19 )
	sh x0 ,  14 ( x19 )
	sh x0 ,  12 ( x19 )
	sh x0 ,  10 ( x19 )
	sh x0 ,  8 ( x19 )
	sh x0 ,  6 ( x19 )
	jal x0, .LBB5_94
.LBB5_175:                              //  %for.cond20.preheader.i
	sh x0 ,  22 ( x18 )
	sh x0 ,  20 ( x18 )
	sh x0 ,  18 ( x18 )
	sh x0 ,  16 ( x18 )
	sh x0 ,  14 ( x18 )
	sh x0 ,  12 ( x18 )
	sh x0 ,  10 ( x18 )
	sh x0 ,  8 ( x18 )
	sh x0 ,  6 ( x18 )
	sh x0 ,  4 ( x18 )
	sh x0 ,  76 ( x2 )
	jal x0, .LBB5_105
.LBB5_34:                               //  %land.lhs.true10
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x24, x15, .LBB5_73
.LBB5_35:                               //  %for.body.preheader.i.i535
	lhu x15 ,  0 ( x20 )
	bltu x0, x15, .LBB5_73
.LBB5_36:                               //  %for.inc.i.i538
	lhu x15 ,  2 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_37:                               //  %for.inc.1.i.i541
	lhu x15 ,  4 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_38:                               //  %for.inc.2.i.i544
	lhu x15 ,  6 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_39:                               //  %for.inc.3.i.i547
	lhu x15 ,  8 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_40:                               //  %for.inc.4.i.i550
	lhu x15 ,  10 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_41:                               //  %for.inc.5.i.i553
	lhu x15 ,  12 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_42:                               //  %for.inc.6.i.i556
	lhu x15 ,  14 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_43:                               //  %eisinf.exit562
	lhu x15 ,  16 ( x20 )
	bltu x0, x15, .LBB5_47
.LBB5_44:                               //  %if.then13
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	sh x15 ,  18 ( x9 )
	lui x15 ,  (49152>>12)&1048575
	sh x15 ,  16 ( x9 )
.LBB5_70:                               //  %cleanup
	sh x0 ,  14 ( x9 )
	sh x0 ,  12 ( x9 )
	sh x0 ,  10 ( x9 )
	sh x0 ,  8 ( x9 )
	sh x0 ,  6 ( x9 )
	sh x0 ,  4 ( x9 )
	sh x0 ,  2 ( x9 )
	sh x0 ,  0 ( x9 )
.LBB5_160:                              //  %cleanup
	lw x8 ,  132 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  136 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  140 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  144 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  148 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  152 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  156 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  160 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  164 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  168 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  172 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  176 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  180 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  184
	.cfi_def_cfa 2, 0
	ret
.LBB5_55:                               //  %if.then17
	lui x30 ,  32767&4095
	add x12 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x23, x15, .LBB5_65
.LBB5_56:                               //  %for.body.preheader.i.i461
	lhu x14 ,  0 ( x18 )
	add x15 ,  x0 ,  x0
	bltu x0, x14, .LBB5_66
.LBB5_57:                               //  %for.inc.i.i464
	lhu x14 ,  2 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_58:                               //  %for.inc.1.i.i467
	lhu x14 ,  4 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_59:                               //  %for.inc.2.i.i470
	lhu x14 ,  6 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_60:                               //  %for.inc.3.i.i473
	lhu x14 ,  8 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_61:                               //  %for.inc.4.i.i476
	lhu x14 ,  10 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_62:                               //  %for.inc.5.i.i479
	lhu x14 ,  12 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_63:                               //  %for.inc.6.i.i482
	lhu x14 ,  14 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_64:                               //  %eisnan.exit.i485
	lhu x14 ,  16 ( x18 )
	bltu x0, x14, .LBB5_66
.LBB5_65:                               //  %if.end.i487
	srli x15 ,  x19 ,  15&31
.LBB5_66:                               //  %eisneg.exit
	lui x30 ,  32767&4095
	srli x13 ,  x21 ,  15&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x12 ,  x30
	beq x15, x13, .LBB5_68
.LBB5_67:                               //  %eisneg.exit
	addi x14 ,  x0 ,  -1
.LBB5_68:                               //  %eisneg.exit
	sh x14 ,  18 ( x9 )
	jal x0, .LBB5_69
.LBB5_170:                              //  %for.cond53.10
	lhu x14 ,  52 ( x2 )
	lui x30 ,  32767&4095
	lhu x13 ,  78 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	beq x13, x14, .LBB5_172
.LBB5_171:                              //  %for.cond53.10
	addi x15 ,  x0 ,  -1
.LBB5_172:                              //  %for.cond53.10
	sh x15 ,  18 ( x9 )
	jal x0, .LBB5_69
.Lfunc_end5:
	.size	ediv, .Lfunc_end5-ediv
	.cfi_endproc
                                        //  -- End function
	.type	emul,@function          //  -- Begin function emul
emul:                                   //  @emul
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x24 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x30 ,  32767&4095
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	lui x21 ,  (32767>>12)&1048575
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x9 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	lhu x24 ,  18 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	and x23 ,  x15 ,  x24
	bne x23, x15, .LBB6_11
.LBB6_1:                                //  %for.body.preheader.i
	lhu x15 ,  0 ( x19 )
	bltu x0, x15, .LBB6_10
.LBB6_2:                                //  %for.inc.i
	lhu x14 ,  2 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_3:                                //  %for.inc.1.i
	lhu x14 ,  4 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_4:                                //  %for.inc.2.i
	lhu x14 ,  6 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_5:                                //  %for.inc.3.i
	lhu x14 ,  8 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_6:                                //  %for.inc.4.i
	lhu x14 ,  10 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_7:                                //  %for.inc.5.i
	lhu x14 ,  12 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_8:                                //  %for.inc.6.i
	lhu x14 ,  14 ( x19 )
	bltu x0, x14, .LBB6_10
.LBB6_9:                                //  %eisnan.exit
	lhu x14 ,  16 ( x19 )
	beq x0, x14, .LBB6_11
.LBB6_10:                               //  %if.then
	sh x15 ,  0 ( x8 )
	lh x15 ,  2 ( x19 )
	sh x15 ,  2 ( x8 )
	lh x15 ,  4 ( x19 )
	sh x15 ,  4 ( x8 )
	lh x15 ,  6 ( x19 )
	sh x15 ,  6 ( x8 )
	lh x15 ,  8 ( x19 )
	sh x15 ,  8 ( x8 )
	lh x15 ,  10 ( x19 )
	sh x15 ,  10 ( x8 )
	lh x15 ,  12 ( x19 )
	sh x15 ,  12 ( x8 )
	lh x15 ,  14 ( x19 )
	sh x15 ,  14 ( x8 )
	lh x15 ,  16 ( x19 )
	sh x15 ,  16 ( x8 )
	lh x15 ,  18 ( x19 )
	sh x15 ,  18 ( x8 )
	jal x0, .LBB6_136
.LBB6_11:                               //  %if.end
	lhu x20 ,  18 ( x18 )
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	and x22 ,  x15 ,  x20
	bne x22, x15, .LBB6_22
.LBB6_12:                               //  %for.body.preheader.i152
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB6_21
.LBB6_13:                               //  %for.inc.i155
	lhu x14 ,  2 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_14:                               //  %for.inc.1.i160
	lhu x14 ,  4 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_15:                               //  %for.inc.2.i163
	lhu x14 ,  6 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_16:                               //  %for.inc.3.i166
	lhu x14 ,  8 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_17:                               //  %for.inc.4.i169
	lhu x14 ,  10 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_18:                               //  %for.inc.5.i172
	lhu x14 ,  12 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_19:                               //  %for.inc.6.i175
	lhu x14 ,  14 ( x18 )
	bltu x0, x14, .LBB6_21
.LBB6_20:                               //  %eisnan.exit180
	lhu x14 ,  16 ( x18 )
	beq x0, x14, .LBB6_22
.LBB6_21:                               //  %if.then3
	sh x15 ,  0 ( x8 )
	lh x15 ,  2 ( x18 )
	sh x15 ,  2 ( x8 )
	lh x15 ,  4 ( x18 )
	sh x15 ,  4 ( x8 )
	lh x15 ,  6 ( x18 )
	sh x15 ,  6 ( x8 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  8 ( x8 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  10 ( x8 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  12 ( x8 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  14 ( x8 )
	lh x15 ,  16 ( x18 )
	sh x15 ,  16 ( x8 )
	lh x15 ,  18 ( x18 )
	sh x15 ,  18 ( x8 )
	jal x0, .LBB6_136
.LBB6_22:                               //  %if.end4
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x23, x15, .LBB6_33
.LBB6_23:                               //  %for.body.preheader.i.i220
	lhu x15 ,  0 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_24:                               //  %for.inc.i.i
	lhu x15 ,  2 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_25:                               //  %for.inc.1.i.i
	lhu x15 ,  4 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_26:                               //  %for.inc.2.i.i
	lhu x15 ,  6 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_27:                               //  %for.inc.3.i.i
	lhu x15 ,  8 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_28:                               //  %for.inc.4.i.i
	lhu x15 ,  10 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_29:                               //  %for.inc.5.i.i
	lhu x15 ,  12 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_30:                               //  %for.inc.6.i.i
	lhu x15 ,  14 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_31:                               //  %eisinf.exit
	lhu x15 ,  16 ( x19 )
	bltu x0, x15, .LBB6_33
.LBB6_32:                               //  %land.lhs.true
	lui x30 ,  ezero&4095
	lui x15 ,  (ezero>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call ecmp
	beq x0, x10, .LBB6_44
.LBB6_33:                               //  %lor.lhs.false
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x22, x15, .LBB6_45
.LBB6_34:                               //  %for.body.preheader.i.i501
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_35:                               //  %for.inc.i.i504
	lhu x15 ,  2 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_36:                               //  %for.inc.1.i.i507
	lhu x15 ,  4 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_37:                               //  %for.inc.2.i.i510
	lhu x15 ,  6 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_38:                               //  %for.inc.3.i.i513
	lhu x15 ,  8 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_39:                               //  %for.inc.4.i.i516
	lhu x15 ,  10 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_40:                               //  %for.inc.5.i.i519
	lhu x15 ,  12 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_41:                               //  %for.inc.6.i.i522
	lhu x15 ,  14 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_42:                               //  %eisinf.exit528
	lhu x15 ,  16 ( x18 )
	bltu x0, x15, .LBB6_45
.LBB6_43:                               //  %land.lhs.true10
	lui x30 ,  ezero&4095
	lui x15 ,  (ezero>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call ecmp
	beq x0, x10, .LBB6_44
.LBB6_45:                               //  %if.end14
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x23, x15, .LBB6_55
.LBB6_46:                               //  %for.body.preheader.i.i460
	lhu x15 ,  0 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_47:                               //  %for.inc.i.i463
	lhu x15 ,  2 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_48:                               //  %for.inc.1.i.i466
	lhu x15 ,  4 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_49:                               //  %for.inc.2.i.i469
	lhu x15 ,  6 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_50:                               //  %for.inc.3.i.i472
	lhu x15 ,  8 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_51:                               //  %for.inc.4.i.i475
	lhu x15 ,  10 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_52:                               //  %for.inc.5.i.i478
	lhu x15 ,  12 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_53:                               //  %for.inc.6.i.i481
	lhu x15 ,  14 ( x19 )
	bltu x0, x15, .LBB6_55
.LBB6_54:                               //  %eisinf.exit487
	lhu x15 ,  16 ( x19 )
	beq x0, x15, .LBB6_68
.LBB6_55:                               //  %lor.lhs.false17
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x22, x15, .LBB6_94
.LBB6_56:                               //  %for.body.preheader.i.i428
	lhu x15 ,  0 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_57:                               //  %for.inc.i.i431
	lhu x15 ,  2 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_58:                               //  %for.inc.1.i.i434
	lhu x15 ,  4 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_59:                               //  %for.inc.2.i.i437
	lhu x15 ,  6 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_60:                               //  %for.inc.3.i.i440
	lhu x15 ,  8 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_61:                               //  %for.inc.4.i.i443
	lhu x15 ,  10 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_62:                               //  %for.inc.5.i.i446
	lhu x15 ,  12 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_63:                               //  %for.inc.6.i.i449
	lhu x15 ,  14 ( x18 )
	bltu x0, x15, .LBB6_94
.LBB6_64:                               //  %eisinf.exit455
	lhu x15 ,  16 ( x18 )
	beq x0, x15, .LBB6_65
.LBB6_94:                               //  %if.end27
	slli x15 ,  x24 ,  16&31
	lui x30 ,  32767&4095
	addi x24 ,  x2 ,  32
	sh x23 ,  34 ( x2 )
	srai x15 ,  x15 ,  16&31
	srli x30 ,  x30 ,  12&31
	srli x15 ,  x15 ,  15&31
	sh x15 ,  32 ( x2 )
	or x15 ,  x21 ,  x30
	bne x23, x15, .LBB6_104
.LBB6_95:                               //  %for.body.preheader.i.i289
	lhu x15 ,  2 ( x19 )
	lhu x14 ,  0 ( x19 )
	or x13 ,  x15 ,  x14
	bltu x0, x13, .LBB6_103
.LBB6_96:                               //  %for.inc.1.i.i295
	lhu x13 ,  4 ( x19 )
	add x15 ,  x0 ,  x0
	bltu x0, x13, .LBB6_103
.LBB6_97:                               //  %for.inc.2.i.i298
	lhu x13 ,  6 ( x19 )
	bltu x0, x13, .LBB6_103
.LBB6_98:                               //  %for.inc.3.i.i301
	lhu x13 ,  8 ( x19 )
	bltu x0, x13, .LBB6_103
.LBB6_99:                               //  %for.inc.4.i.i304
	lhu x13 ,  10 ( x19 )
	bltu x0, x13, .LBB6_103
.LBB6_100:                              //  %for.inc.5.i.i307
	lhu x13 ,  12 ( x19 )
	bltu x0, x13, .LBB6_103
.LBB6_101:                              //  %for.inc.6.i.i310
	lhu x13 ,  14 ( x19 )
	bltu x0, x13, .LBB6_103
.LBB6_102:                              //  %for.inc.7.i.i312
	lhu x13 ,  16 ( x19 )
	beq x0, x13, .LBB6_93
.LBB6_103:                              //  %if.then13.i331
	lhu x7 ,  16 ( x19 )
	sh x14 ,  22 ( x24 )
	sh x15 ,  20 ( x24 )
	sh x0 ,  4 ( x24 )
	lhu x13 ,  14 ( x19 )
	lhu x12 ,  12 ( x19 )
	lhu x11 ,  10 ( x19 )
	lhu x10 ,  8 ( x19 )
	sh x7 ,  6 ( x24 )
	lhu x5 ,  6 ( x19 )
	sh x13 ,  8 ( x24 )
	lhu x6 ,  4 ( x19 )
	sh x12 ,  10 ( x24 )
	lh x16 ,  -2 ( x19 )
	sh x11 ,  12 ( x24 )
	sh x10 ,  14 ( x24 )
	sh x5 ,  16 ( x24 )
	sh x6 ,  18 ( x24 )
	sh x16 ,  56 ( x2 )
	jal x0, .LBB6_105
.LBB6_104:                              //  %if.end28.i349
	lhu x15 ,  2 ( x19 )
	sh x0 ,  4 ( x24 )
	sh x0 ,  56 ( x2 )
	lhu x6 ,  4 ( x19 )
	lhu x5 ,  6 ( x19 )
	lhu x10 ,  8 ( x19 )
	lhu x11 ,  10 ( x19 )
	sh x15 ,  20 ( x24 )
	lhu x12 ,  12 ( x19 )
	sh x6 ,  18 ( x24 )
	lhu x13 ,  14 ( x19 )
	sh x5 ,  16 ( x24 )
	lhu x7 ,  16 ( x19 )
	sh x10 ,  14 ( x24 )
	lhu x14 ,  0 ( x19 )
	sh x11 ,  12 ( x24 )
	sh x12 ,  10 ( x24 )
	sh x13 ,  8 ( x24 )
	sh x7 ,  6 ( x24 )
	sh x14 ,  22 ( x24 )
.LBB6_105:                              //  %emovi.exit351
	slli x16 ,  x20 ,  16&31
	lui x30 ,  32767&4095
	sh x22 ,  8 ( x2 )
	srai x16 ,  x16 ,  16&31
	srli x30 ,  x30 ,  12&31
	srli x16 ,  x16 ,  15&31
	or x17 ,  x21 ,  x30
	sh x16 ,  6 ( x2 )
	addi x16 ,  x2 ,  6
	bne x22, x17, .LBB6_115
.LBB6_106:                              //  %for.body.preheader.i.i236
	lhu x17 ,  2 ( x18 )
	lhu x29 ,  0 ( x18 )
	or x1 ,  x17 ,  x29
	bltu x0, x1, .LBB6_114
.LBB6_107:                              //  %for.inc.1.i.i242
	lhu x1 ,  4 ( x18 )
	add x17 ,  x0 ,  x0
	bltu x0, x1, .LBB6_114
.LBB6_108:                              //  %for.inc.2.i.i245
	lhu x1 ,  6 ( x18 )
	bltu x0, x1, .LBB6_114
.LBB6_109:                              //  %for.inc.3.i.i248
	lhu x1 ,  8 ( x18 )
	bltu x0, x1, .LBB6_114
.LBB6_110:                              //  %for.inc.4.i.i251
	lhu x1 ,  10 ( x18 )
	bltu x0, x1, .LBB6_114
.LBB6_111:                              //  %for.inc.5.i.i254
	lhu x1 ,  12 ( x18 )
	bltu x0, x1, .LBB6_114
.LBB6_112:                              //  %for.inc.6.i.i257
	lhu x1 ,  14 ( x18 )
	bltu x0, x1, .LBB6_114
.LBB6_113:                              //  %for.inc.7.i.i
	lhu x1 ,  16 ( x18 )
	beq x0, x1, .LBB6_147
.LBB6_114:                              //  %if.then13.i
	sh x17 ,  20 ( x16 )
	lh x17 ,  16 ( x18 )
	sh x29 ,  22 ( x16 )
	sh x0 ,  4 ( x16 )
	sh x17 ,  6 ( x16 )
	lh x17 ,  14 ( x18 )
	sh x17 ,  8 ( x16 )
	lh x17 ,  12 ( x18 )
	sh x17 ,  10 ( x16 )
	lh x17 ,  10 ( x18 )
	sh x17 ,  12 ( x16 )
	lh x17 ,  8 ( x18 )
	sh x17 ,  14 ( x16 )
	lh x17 ,  6 ( x18 )
	sh x17 ,  16 ( x16 )
	lh x17 ,  4 ( x18 )
	sh x17 ,  18 ( x16 )
	lh x16 ,  -2 ( x18 )
	sh x16 ,  30 ( x2 )
	lui x25 ,  (65535>>12)&1048575
	add x16 ,  x0 ,  x22
	beq x0, x23, .LBB6_118
.LBB6_120:                              //  %mnzer1
	bltu x0, x16, .LBB6_123
.LBB6_121:                              //  %for.cond52
	lhu x15 ,  10 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_137:                              //  %for.cond52.1
	lhu x15 ,  12 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_138:                              //  %for.cond52.2
	lhu x15 ,  14 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_139:                              //  %for.cond52.3
	lhu x15 ,  16 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_140:                              //  %for.cond52.4
	lhu x15 ,  18 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_141:                              //  %for.cond52.5
	lhu x15 ,  20 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_142:                              //  %for.cond52.6
	lhu x15 ,  22 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_143:                              //  %for.cond52.7
	lhu x15 ,  24 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_144:                              //  %for.cond52.8
	lhu x15 ,  26 ( x2 )
	bltu x0, x15, .LBB6_122
.LBB6_145:                              //  %for.cond52.9
	lhu x15 ,  28 ( x2 )
	beq x0, x15, .LBB6_146
.LBB6_122:                              //  %if.then60
	addi x10 ,  x2 ,  6
	call enormlz
	lhu x16 ,  8 ( x2 )
	sub x22 ,  x22 ,  x10
	jal x0, .LBB6_123
.LBB6_115:                              //  %if.end28.i
	lh x17 ,  16 ( x18 )
	sh x17 ,  6 ( x16 )
	lh x17 ,  14 ( x18 )
	sh x17 ,  8 ( x16 )
	lh x17 ,  12 ( x18 )
	sh x17 ,  10 ( x16 )
	lh x17 ,  10 ( x18 )
	sh x17 ,  12 ( x16 )
	lh x17 ,  8 ( x18 )
	sh x17 ,  14 ( x16 )
	lh x17 ,  6 ( x18 )
	sh x17 ,  16 ( x16 )
	lh x17 ,  4 ( x18 )
	sh x17 ,  18 ( x16 )
	lh x17 ,  2 ( x18 )
	sh x17 ,  20 ( x16 )
	lh x17 ,  0 ( x18 )
	sh x17 ,  22 ( x16 )
.LBB6_116:                              //  %emovi.exit
	sh x0 ,  4 ( x16 )
	sh x0 ,  30 ( x2 )
	lui x25 ,  (65535>>12)&1048575
	add x16 ,  x0 ,  x22
	bltu x0, x23, .LBB6_120
.LBB6_118:                              //  %for.cond.1
	or x13 ,  x13 ,  x7
	lui x30 ,  65535&4095
	or x13 ,  x12 ,  x13
	srli x30 ,  x30 ,  12&31
	or x13 ,  x11 ,  x13
	or x13 ,  x10 ,  x13
	or x13 ,  x5 ,  x13
	or x13 ,  x6 ,  x13
	or x15 ,  x15 ,  x13
	or x15 ,  x14 ,  x15
	or x14 ,  x25 ,  x30
	and x15 ,  x14 ,  x15
	beq x0, x15, .LBB6_146
.LBB6_119:                              //  %if.then42
	addi x10 ,  x2 ,  32
	call enormlz
	lhu x16 ,  8 ( x2 )
	sub x23 ,  x0 ,  x10
	beq x0, x16, .LBB6_121
.LBB6_123:                              //  %mnzer2
	lh x15 ,  6 ( x2 )
	add x26 ,  x0 ,  x0
	sh x16 ,  54 ( x9 )
	addi x27 ,  x0 ,  24
	addi x18 ,  x2 ,  6
	addi x20 ,  x2 ,  58
	sh x0 ,  76 ( x9 )
	sh x0 ,  74 ( x9 )
	sh x0 ,  72 ( x9 )
	sh x0 ,  70 ( x9 )
	sh x0 ,  68 ( x9 )
	sh x0 ,  66 ( x9 )
	sh x0 ,  64 ( x9 )
	sh x0 ,  62 ( x9 )
	sh x0 ,  60 ( x9 )
	sh x0 ,  58 ( x9 )
	sh x0 ,  56 ( x9 )
	add x19 ,  x0 ,  x26
	add x17 ,  x0 ,  x26
	add x16 ,  x0 ,  x26
	add x7 ,  x0 ,  x26
	add x6 ,  x0 ,  x26
	add x5 ,  x0 ,  x26
	add x11 ,  x0 ,  x26
	add x13 ,  x0 ,  x26
	add x14 ,  x0 ,  x26
	add x12 ,  x0 ,  x26
	sh x15 ,  52 ( x9 )
	add x15 ,  x0 ,  x26
	add x10 ,  x27 ,  x24
	add x29 ,  x0 ,  x26
	lhu x10 ,  0 ( x10 )
	bltu x0, x10, .LBB6_125
.LBB6_126:                              //  %if.end.i
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	add x10 ,  x0 ,  x15
	add x15 ,  x0 ,  x14
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x11
	add x11 ,  x0 ,  x5
	add x5 ,  x0 ,  x6
	add x6 ,  x0 ,  x7
	add x7 ,  x0 ,  x16
	add x16 ,  x0 ,  x17
	addi x27 ,  x27 ,  -2
	sh x29 ,  58 ( x9 )
	sh x0 ,  56 ( x9 )
	srli x30 ,  x30 ,  12&31
	xori x1 ,  x27 ,  4
	sh x15 ,  74 ( x9 )
	sh x10 ,  76 ( x9 )
	sh x14 ,  72 ( x9 )
	sh x13 ,  70 ( x9 )
	sh x11 ,  68 ( x9 )
	sh x5 ,  66 ( x9 )
	sh x6 ,  64 ( x9 )
	sh x7 ,  62 ( x9 )
	sh x16 ,  60 ( x9 )
	or x17 ,  x25 ,  x30
	and x12 ,  x17 ,  x12
	add x17 ,  x0 ,  x29
	or x19 ,  x12 ,  x19
	add x12 ,  x0 ,  x10
	beq x0, x1, .LBB6_127
.LBB6_124:                              //  %for.body10.i
                                        //    in Loop: Header=BB6_126 Depth=1
	add x10 ,  x27 ,  x24
	add x29 ,  x0 ,  x26
	lhu x10 ,  0 ( x10 )
	beq x0, x10, .LBB6_126
.LBB6_125:                              //  %if.else.i
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x20
	call m16m
	lhu x15 ,  24 ( x20 )
	lhu x14 ,  76 ( x9 )
	lhu x13 ,  70 ( x9 )
	lhu x11 ,  20 ( x20 )
	lhu x10 ,  68 ( x9 )
	add x12 ,  x15 ,  x14
	lhu x14 ,  22 ( x20 )
	srli x15 ,  x12 ,  16&31
	lhu x5 ,  66 ( x9 )
	sh x12 ,  76 ( x9 )
	lhu x6 ,  64 ( x9 )
	lhu x7 ,  62 ( x9 )
	add x15 ,  x14 ,  x15
	lhu x14 ,  74 ( x9 )
	lhu x16 ,  60 ( x9 )
	lhu x17 ,  58 ( x9 )
	lh x29 ,  62 ( x2 )
	add x15 ,  x14 ,  x15
	lhu x14 ,  18 ( x20 )
	sh x15 ,  74 ( x9 )
	add x13 ,  x14 ,  x13
	srli x14 ,  x15 ,  16&31
	andi x14 ,  x14 ,  1
	add x14 ,  x11 ,  x14
	lhu x11 ,  72 ( x9 )
	add x14 ,  x11 ,  x14
	srli x11 ,  x14 ,  16&31
	sh x14 ,  72 ( x9 )
	andi x11 ,  x11 ,  1
	add x13 ,  x11 ,  x13
	lhu x11 ,  16 ( x20 )
	sh x13 ,  70 ( x9 )
	add x11 ,  x11 ,  x10
	srli x10 ,  x13 ,  16&31
	andi x10 ,  x10 ,  1
	add x11 ,  x10 ,  x11
	lhu x10 ,  14 ( x20 )
	sh x11 ,  68 ( x9 )
	add x10 ,  x10 ,  x5
	srli x5 ,  x11 ,  16&31
	andi x5 ,  x5 ,  1
	add x5 ,  x5 ,  x10
	lhu x10 ,  12 ( x20 )
	sh x5 ,  66 ( x9 )
	add x10 ,  x10 ,  x6
	srli x6 ,  x5 ,  16&31
	andi x6 ,  x6 ,  1
	add x6 ,  x6 ,  x10
	lhu x10 ,  10 ( x20 )
	sh x6 ,  64 ( x9 )
	add x10 ,  x10 ,  x7
	srli x7 ,  x6 ,  16&31
	andi x7 ,  x7 ,  1
	add x7 ,  x7 ,  x10
	lhu x10 ,  8 ( x20 )
	sh x7 ,  62 ( x9 )
	add x10 ,  x10 ,  x16
	srli x16 ,  x7 ,  16&31
	andi x16 ,  x16 ,  1
	add x16 ,  x16 ,  x10
	lhu x10 ,  6 ( x20 )
	sh x16 ,  60 ( x9 )
	add x10 ,  x10 ,  x17
	srli x17 ,  x16 ,  16&31
	andi x17 ,  x17 ,  1
	add x17 ,  x17 ,  x10
	lh x10 ,  56 ( x9 )
	sh x17 ,  58 ( x9 )
	add x10 ,  x29 ,  x10
	srli x29 ,  x17 ,  16&31
	andi x29 ,  x29 ,  1
	add x29 ,  x29 ,  x10
	sh x29 ,  56 ( x9 )
	jal x0, .LBB6_126
.LBB6_127:                              //  %emulm.exit
	sh x15 ,  22 ( x18 )
	lh x15 ,  54 ( x9 )
	lui x30 ,  -16382&4095
	sh x14 ,  20 ( x18 )
	lui x14 ,  (-16382>>12)&1048575
	add x20 ,  x0 ,  x0
	sh x11 ,  16 ( x18 )
	sh x10 ,  30 ( x2 )
	sh x13 ,  18 ( x18 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	sh x5 ,  14 ( x18 )
	sh x6 ,  12 ( x18 )
	sh x7 ,  10 ( x18 )
	sh x16 ,  8 ( x18 )
	sh x29 ,  6 ( x18 )
	sh x0 ,  4 ( x18 )
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x20
	or x14 ,  x14 ,  x30
	sh x15 ,  2 ( x18 )
	lh x15 ,  52 ( x9 )
	sh x15 ,  6 ( x2 )
	add x15 ,  x22 ,  x23
	add x13 ,  x14 ,  x15
	addi x14 ,  x0 ,  64
	add x15 ,  x0 ,  x9
	call emdnorm
	lhu x14 ,  6 ( x2 )
	lhu x12 ,  32 ( x2 )
	beq x12, x14, .LBB6_129
.LBB6_128:
	addi x20 ,  x0 ,  -1
.LBB6_129:                              //  %emulm.exit
	lhu x13 ,  2 ( x18 )
	lui x30 ,  -32768&4095
	lui x15 ,  (-32768>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	add x15 ,  x0 ,  x13
	beq x12, x14, .LBB6_131
.LBB6_130:                              //  %emulm.exit
	or x15 ,  x11 ,  x13
.LBB6_131:                              //  %emulm.exit
	lui x30 ,  32767&4095
	sh x15 ,  18 ( x8 )
	sh x20 ,  6 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	bne x13, x14, .LBB6_135
.LBB6_132:                              //  %for.body.preheader.i.i
	lhu x14 ,  6 ( x18 )
	lui x30 ,  32767&4095
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	sh x0 ,  0 ( x8 )
	lhu x13 ,  8 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x13
	lhu x13 ,  10 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  12 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  14 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  16 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  18 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  20 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  22 ( x18 )
	or x14 ,  x13 ,  x14
	lhu x13 ,  30 ( x2 )
	or x14 ,  x13 ,  x14
	beq x0, x14, .LBB6_134
.LBB6_133:                              //  %if.then11.i
	or x15 ,  x21 ,  x30
	sh x15 ,  18 ( x8 )
	lui x15 ,  (49152>>12)&1048575
	sh x15 ,  16 ( x8 )
	jal x0, .LBB6_136
.LBB6_135:                              //  %if.end13.i
	lh x15 ,  6 ( x18 )
	sh x15 ,  16 ( x8 )
	lh x15 ,  8 ( x18 )
	sh x15 ,  14 ( x8 )
	lh x15 ,  10 ( x18 )
	sh x15 ,  12 ( x8 )
	lh x15 ,  12 ( x18 )
	sh x15 ,  10 ( x8 )
	lh x15 ,  14 ( x18 )
	sh x15 ,  8 ( x8 )
	lh x15 ,  16 ( x18 )
	sh x15 ,  6 ( x8 )
	lh x15 ,  18 ( x18 )
	sh x15 ,  4 ( x8 )
	lh x15 ,  20 ( x18 )
	sh x15 ,  2 ( x8 )
	lh x15 ,  28 ( x2 )
	sh x15 ,  0 ( x8 )
	jal x0, .LBB6_136
.LBB6_134:                              //  %if.end12.i
	or x14 ,  x21 ,  x30
	sh x0 ,  16 ( x8 )
	or x15 ,  x14 ,  x15
	sh x15 ,  18 ( x8 )
	jal x0, .LBB6_136
.LBB6_146:                              //  %for.cond52.10
	sh x0 ,  18 ( x8 )
.LBB6_91:                               //  %cleanup
	sh x0 ,  16 ( x8 )
.LBB6_92:                               //  %cleanup
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	sh x0 ,  0 ( x8 )
.LBB6_136:                              //  %cleanup
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  128 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  132 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  136
	.cfi_def_cfa 2, 0
	ret
.LBB6_93:                               //  %for.cond20.preheader.i287
	add x13 ,  x0 ,  x0
	sh x0 ,  22 ( x24 )
	sh x0 ,  20 ( x24 )
	sh x0 ,  18 ( x24 )
	sh x0 ,  16 ( x24 )
	sh x0 ,  14 ( x24 )
	sh x0 ,  12 ( x24 )
	sh x0 ,  10 ( x24 )
	sh x0 ,  8 ( x24 )
	sh x0 ,  6 ( x24 )
	sh x0 ,  4 ( x24 )
	sh x0 ,  56 ( x2 )
	add x12 ,  x0 ,  x13
	add x11 ,  x0 ,  x13
	add x10 ,  x0 ,  x13
	add x5 ,  x0 ,  x13
	add x6 ,  x0 ,  x13
	add x15 ,  x0 ,  x13
	add x14 ,  x0 ,  x13
	add x7 ,  x0 ,  x13
	jal x0, .LBB6_105
.LBB6_147:                              //  %for.cond20.preheader.i
	sh x0 ,  22 ( x16 )
	sh x0 ,  20 ( x16 )
	sh x0 ,  18 ( x16 )
	sh x0 ,  16 ( x16 )
	sh x0 ,  14 ( x16 )
	sh x0 ,  12 ( x16 )
	sh x0 ,  10 ( x16 )
	sh x0 ,  8 ( x16 )
	sh x0 ,  6 ( x16 )
	jal x0, .LBB6_116
.LBB6_65:                               //  %if.then20
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x23, x15, .LBB6_76
.LBB6_66:                               //  %for.body.preheader.i.i395
	lhu x15 ,  0 ( x19 )
	beq x0, x15, .LBB6_68
.LBB6_67:
	add x15 ,  x0 ,  x0
	lhu x13 ,  0 ( x18 )
	add x14 ,  x0 ,  x0
	bltu x0, x13, .LBB6_88
	jal x0, .LBB6_79
.LBB6_68:                               //  %for.inc.i.i398
	lhu x14 ,  2 ( x19 )
	add x15 ,  x0 ,  x0
	bltu x0, x14, .LBB6_77
.LBB6_69:                               //  %for.inc.1.i.i401
	lhu x14 ,  4 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_70:                               //  %for.inc.2.i.i404
	lhu x14 ,  6 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_71:                               //  %for.inc.3.i.i407
	lhu x14 ,  8 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_72:                               //  %for.inc.4.i.i410
	lhu x14 ,  10 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_73:                               //  %for.inc.5.i.i413
	lhu x14 ,  12 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_74:                               //  %for.inc.6.i.i416
	lhu x14 ,  14 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_75:                               //  %eisnan.exit.i419
	lhu x14 ,  16 ( x19 )
	bltu x0, x14, .LBB6_77
.LBB6_76:                               //  %if.end.i421
	srli x15 ,  x24 ,  15&31
.LBB6_77:                               //  %eisneg.exit424
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	bne x22, x14, .LBB6_87
.LBB6_78:                               //  %for.body.preheader.i.i363
	lhu x13 ,  0 ( x18 )
	add x14 ,  x0 ,  x0
	bltu x0, x13, .LBB6_88
.LBB6_79:                               //  %for.inc.i.i366
	lhu x13 ,  2 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_80:                               //  %for.inc.1.i.i369
	lhu x13 ,  4 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_81:                               //  %for.inc.2.i.i372
	lhu x13 ,  6 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_82:                               //  %for.inc.3.i.i375
	lhu x13 ,  8 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_83:                               //  %for.inc.4.i.i378
	lhu x13 ,  10 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_84:                               //  %for.inc.5.i.i381
	lhu x13 ,  12 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_85:                               //  %for.inc.6.i.i384
	lhu x13 ,  14 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_86:                               //  %eisnan.exit.i387
	lhu x13 ,  16 ( x18 )
	bltu x0, x13, .LBB6_88
.LBB6_87:                               //  %if.end.i389
	srli x14 ,  x20 ,  15&31
.LBB6_88:                               //  %eisneg.exit
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x21 ,  x30
	beq x15, x14, .LBB6_90
.LBB6_89:                               //  %eisneg.exit
	addi x13 ,  x0 ,  -1
.LBB6_90:                               //  %eisneg.exit
	sh x13 ,  18 ( x8 )
	jal x0, .LBB6_91
.LBB6_44:                               //  %if.then13
	lui x30 ,  32767&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	sh x15 ,  18 ( x8 )
	lui x15 ,  (49152>>12)&1048575
	sh x15 ,  16 ( x8 )
	jal x0, .LBB6_92
.Lfunc_end6:
	.size	emul, .Lfunc_end6-emul
	.cfi_endproc
                                        //  -- End function
	.type	eiremain,@function      //  -- Begin function eiremain
eiremain:                               //  @eiremain
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	lhu x20 ,  2 ( x18 )
	call enormlz
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	lhu x21 ,  2 ( x9 )
	call enormlz
	sub x15 ,  x20 ,  x19
	sub x13 ,  x21 ,  x10
	sh x0 ,  76 ( x8 )
	sh x0 ,  74 ( x8 )
	sh x0 ,  72 ( x8 )
	sh x0 ,  70 ( x8 )
	sh x0 ,  68 ( x8 )
	sh x0 ,  66 ( x8 )
	sh x0 ,  64 ( x8 )
	sh x0 ,  62 ( x8 )
	sh x0 ,  60 ( x8 )
	sh x0 ,  58 ( x8 )
	sh x0 ,  56 ( x8 )
	sh x0 ,  54 ( x8 )
	sh x0 ,  52 ( x8 )
	blt x13, x15, .LBB7_26
.LBB7_1:                                //  %while.body.lr.ph
	lhu x5 ,  4 ( x9 )
	lui x14 ,  (65535>>12)&1048575
	slti x12 ,  x0 ,  1
	add x11 ,  x0 ,  x0
	jal x0, .LBB7_2
.LBB7_24:                               //  %if.then
                                        //    in Loop: Header=BB7_2 Depth=1
	sub x29 ,  x19 ,  x23
	sh x29 ,  24 ( x9 )
	srli x29 ,  x29 ,  16&31
	lhu x19 ,  22 ( x18 )
	andi x29 ,  x29 ,  1
	sub x19 ,  x22 ,  x19
	sub x29 ,  x19 ,  x29
	sh x29 ,  22 ( x9 )
	srli x29 ,  x29 ,  16&31
	lhu x19 ,  20 ( x18 )
	andi x29 ,  x29 ,  1
	sub x19 ,  x21 ,  x19
	sub x29 ,  x19 ,  x29
	sh x29 ,  20 ( x9 )
	srli x29 ,  x29 ,  16&31
	lhu x19 ,  18 ( x18 )
	andi x29 ,  x29 ,  1
	sub x19 ,  x20 ,  x19
	sub x29 ,  x19 ,  x29
	sh x29 ,  18 ( x9 )
	srli x29 ,  x29 ,  16&31
	lhu x19 ,  16 ( x18 )
	andi x29 ,  x29 ,  1
	sub x1 ,  x1 ,  x19
	sub x29 ,  x1 ,  x29
	sh x29 ,  16 ( x9 )
	srli x29 ,  x29 ,  16&31
	lhu x1 ,  14 ( x18 )
	andi x29 ,  x29 ,  1
	sub x17 ,  x17 ,  x1
	sub x17 ,  x17 ,  x29
	sh x17 ,  14 ( x9 )
	srli x17 ,  x17 ,  16&31
	lhu x29 ,  12 ( x18 )
	andi x17 ,  x17 ,  1
	sub x16 ,  x16 ,  x29
	sub x16 ,  x16 ,  x17
	sh x16 ,  12 ( x9 )
	srli x16 ,  x16 ,  16&31
	lhu x17 ,  10 ( x18 )
	andi x16 ,  x16 ,  1
	sub x7 ,  x7 ,  x17
	sub x7 ,  x7 ,  x16
	sh x7 ,  10 ( x9 )
	srli x7 ,  x7 ,  16&31
	lhu x16 ,  8 ( x18 )
	andi x7 ,  x7 ,  1
	sub x6 ,  x6 ,  x16
	sub x6 ,  x6 ,  x7
	sh x6 ,  8 ( x9 )
	srli x6 ,  x6 ,  16&31
	lhu x7 ,  6 ( x18 )
	andi x6 ,  x6 ,  1
	sub x13 ,  x13 ,  x7
	sub x13 ,  x13 ,  x6
	sh x13 ,  6 ( x9 )
	srli x13 ,  x13 ,  16&31
	lh x6 ,  4 ( x18 )
	andi x13 ,  x13 ,  1
	sub x5 ,  x5 ,  x6
	sub x13 ,  x5 ,  x13
	sh x13 ,  4 ( x9 )
	add x13 ,  x0 ,  x12
.LBB7_25:                               //  %if.end
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x5 ,  62 ( x8 )
	lhu x7 ,  60 ( x8 )
	srli x6 ,  x5 ,  15&31
	slli x5 ,  x5 ,  1&31
	slli x16 ,  x7 ,  1&31
	or x6 ,  x6 ,  x16
	lhu x16 ,  64 ( x8 )
	sh x6 ,  60 ( x8 )
	lhu x6 ,  58 ( x8 )
	srli x17 ,  x16 ,  15&31
	slli x16 ,  x16 ,  1&31
	or x5 ,  x17 ,  x5
	lhu x17 ,  66 ( x8 )
	sh x5 ,  62 ( x8 )
	srli x5 ,  x7 ,  15&31
	slli x7 ,  x6 ,  1&31
	or x5 ,  x5 ,  x7
	sh x5 ,  58 ( x8 )
	srli x29 ,  x17 ,  15&31
	slli x17 ,  x17 ,  1&31
	or x16 ,  x29 ,  x16
	lhu x29 ,  68 ( x8 )
	sh x16 ,  64 ( x8 )
	srli x1 ,  x29 ,  15&31
	slli x29 ,  x29 ,  1&31
	or x17 ,  x1 ,  x17
	lhu x1 ,  70 ( x8 )
	sh x17 ,  66 ( x8 )
	srli x19 ,  x1 ,  15&31
	slli x1 ,  x1 ,  1&31
	or x29 ,  x19 ,  x29
	lhu x19 ,  72 ( x8 )
	sh x29 ,  68 ( x8 )
	srli x20 ,  x19 ,  15&31
	slli x19 ,  x19 ,  1&31
	or x1 ,  x20 ,  x1
	lhu x20 ,  74 ( x8 )
	sh x1 ,  70 ( x8 )
	srli x21 ,  x20 ,  15&31
	slli x20 ,  x20 ,  1&31
	or x19 ,  x21 ,  x19
	lhu x21 ,  76 ( x8 )
	sh x19 ,  72 ( x8 )
	slli x5 ,  x21 ,  1&31
	srli x22 ,  x21 ,  15&31
	or x13 ,  x13 ,  x5
	lh x5 ,  56 ( x8 )
	or x20 ,  x22 ,  x20
	sh x13 ,  76 ( x8 )
	srli x13 ,  x6 ,  15&31
	sh x20 ,  74 ( x8 )
	slli x5 ,  x5 ,  1&31
	or x13 ,  x13 ,  x5
	sh x13 ,  56 ( x8 )
	lhu x13 ,  12 ( x9 )
	lhu x6 ,  10 ( x9 )
	srli x5 ,  x13 ,  15&31
	slli x13 ,  x13 ,  1&31
	slli x7 ,  x6 ,  1&31
	or x5 ,  x5 ,  x7
	lhu x7 ,  14 ( x9 )
	sh x5 ,  10 ( x9 )
	lhu x5 ,  8 ( x9 )
	srli x16 ,  x7 ,  15&31
	slli x7 ,  x7 ,  1&31
	or x13 ,  x16 ,  x13
	lhu x16 ,  16 ( x9 )
	sh x13 ,  12 ( x9 )
	srli x13 ,  x6 ,  15&31
	slli x6 ,  x5 ,  1&31
	or x13 ,  x13 ,  x6
	sh x13 ,  8 ( x9 )
	srli x13 ,  x5 ,  15&31
	lhu x5 ,  6 ( x9 )
	srli x17 ,  x16 ,  15&31
	slli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  18 ( x9 )
	sh x7 ,  14 ( x9 )
	slli x6 ,  x5 ,  1&31
	or x13 ,  x13 ,  x6
	srli x29 ,  x17 ,  15&31
	slli x17 ,  x17 ,  1&31
	sh x13 ,  6 ( x9 )
	srli x13 ,  x5 ,  15&31
	lh x5 ,  4 ( x9 )
	or x16 ,  x29 ,  x16
	lhu x29 ,  20 ( x9 )
	sh x16 ,  16 ( x9 )
	slli x5 ,  x5 ,  1&31
	srli x1 ,  x29 ,  15&31
	slli x29 ,  x29 ,  1&31
	or x5 ,  x13 ,  x5
	addi x13 ,  x10 ,  -1
	or x17 ,  x1 ,  x17
	lhu x1 ,  22 ( x9 )
	sh x5 ,  4 ( x9 )
	sh x17 ,  18 ( x9 )
	srli x19 ,  x1 ,  15&31
	slli x1 ,  x1 ,  1&31
	or x29 ,  x19 ,  x29
	lhu x19 ,  24 ( x9 )
	sh x29 ,  20 ( x9 )
	srli x20 ,  x19 ,  15&31
	slli x19 ,  x19 ,  1&31
	or x1 ,  x20 ,  x1
	sh x19 ,  24 ( x9 )
	sh x1 ,  22 ( x9 )
	bge x15, x10, .LBB7_26
.LBB7_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	lhu x19 ,  4 ( x18 )
	add x10 ,  x0 ,  x13
	add x29 ,  x0 ,  x5
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	and x13 ,  x13 ,  x5
	bne x19, x13, .LBB7_5
.LBB7_3:                                //  %for.inc.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  6 ( x9 )
	lhu x13 ,  6 ( x18 )
	bne x13, x29, .LBB7_4
.LBB7_7:                                //  %for.inc.1.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  8 ( x9 )
	lhu x6 ,  8 ( x18 )
	bne x6, x29, .LBB7_8
.LBB7_9:                                //  %for.inc.2.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  10 ( x9 )
	lhu x7 ,  10 ( x18 )
	bne x7, x29, .LBB7_10
.LBB7_11:                               //  %for.inc.3.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  12 ( x9 )
	lhu x16 ,  12 ( x18 )
	bne x16, x29, .LBB7_12
.LBB7_13:                               //  %for.inc.4.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  14 ( x9 )
	lhu x17 ,  14 ( x18 )
	bne x17, x29, .LBB7_14
.LBB7_15:                               //  %for.inc.5.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  16 ( x9 )
	lhu x1 ,  16 ( x18 )
	bne x1, x29, .LBB7_16
.LBB7_17:                               //  %for.inc.6.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  18 ( x9 )
	lhu x20 ,  18 ( x18 )
	bne x20, x29, .LBB7_18
.LBB7_19:                               //  %for.inc.7.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  20 ( x9 )
	lhu x21 ,  20 ( x18 )
	bne x21, x29, .LBB7_20
.LBB7_21:                               //  %for.inc.8.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x29 ,  22 ( x9 )
	lhu x22 ,  22 ( x18 )
	bne x22, x29, .LBB7_22
.LBB7_23:                               //  %for.inc.9.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x19 ,  24 ( x18 )
	lhu x29 ,  24 ( x9 )
	add x23 ,  x0 ,  x19
	beq x19, x29, .LBB7_24
	jal x0, .LBB7_5
.LBB7_4:                                //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x13
	jal x0, .LBB7_5
.LBB7_8:                                //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x6
	jal x0, .LBB7_5
.LBB7_10:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x7
	jal x0, .LBB7_5
.LBB7_12:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x16
	jal x0, .LBB7_5
.LBB7_14:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x17
	jal x0, .LBB7_5
.LBB7_16:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x1
	jal x0, .LBB7_5
.LBB7_18:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x20
	jal x0, .LBB7_5
.LBB7_20:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x21
	jal x0, .LBB7_5
.LBB7_22:                               //    in Loop: Header=BB7_2 Depth=1
	add x19 ,  x0 ,  x22
.LBB7_5:                                //  %difrnt.i
                                        //    in Loop: Header=BB7_2 Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	and x6 ,  x13 ,  x29
	add x13 ,  x0 ,  x11
	bltu x6, x19, .LBB7_25
.LBB7_6:                                //  %difrnt.i.if.then_crit_edge
                                        //    in Loop: Header=BB7_2 Depth=1
	lhu x13 ,  6 ( x9 )
	lhu x6 ,  8 ( x9 )
	lhu x7 ,  10 ( x9 )
	lhu x16 ,  12 ( x9 )
	lhu x17 ,  14 ( x9 )
	lhu x1 ,  16 ( x9 )
	lhu x20 ,  18 ( x9 )
	lhu x21 ,  20 ( x9 )
	lhu x22 ,  22 ( x9 )
	lhu x23 ,  24 ( x18 )
	lhu x19 ,  24 ( x9 )
	jal x0, .LBB7_24
.LBB7_26:                               //  %while.end
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x15 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	add x12 ,  x0 ,  x11
	add x14 ,  x0 ,  x11
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
	jal x0, emdnorm
.Lfunc_end7:
	.size	eiremain, .Lfunc_end7-eiremain
	.cfi_endproc
                                        //  -- End function
	.type	enormlz,@function       //  -- Begin function enormlz
enormlz:                                //  @enormlz
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lhu x14 ,  4 ( x10 )
	sw x9 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -4
	sw x18 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -8
	sw x19 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -12
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -16
	sw x21 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	beq x0, x14, .LBB8_1
.LBB8_17:                               //  %normdn
	sltiu x15 ,  x14 ,  256
	bltu x0, x15, .LBB8_18
.LBB8_19:                               //  %if.then35
	lhu x15 ,  18 ( x10 )
	lhu x12 ,  20 ( x10 )
	slli x13 ,  x15 ,  8&31
	srli x15 ,  x15 ,  8&31
	srli x11 ,  x12 ,  8&31
	or x13 ,  x13 ,  x11
	lhu x11 ,  16 ( x10 )
	sh x13 ,  20 ( x10 )
	lhu x13 ,  22 ( x10 )
	slli x5 ,  x11 ,  8&31
	srli x11 ,  x11 ,  8&31
	or x15 ,  x5 ,  x15
	lhu x5 ,  14 ( x10 )
	sh x15 ,  18 ( x10 )
	slli x15 ,  x12 ,  8&31
	srli x12 ,  x13 ,  8&31
	or x15 ,  x15 ,  x12
	sh x15 ,  22 ( x10 )
	slli x15 ,  x13 ,  8&31
	lbu x13 ,  25 ( x10 )
	slli x6 ,  x5 ,  8&31
	srli x5 ,  x5 ,  8&31
	or x11 ,  x6 ,  x11
	lhu x6 ,  12 ( x10 )
	sh x11 ,  16 ( x10 )
	or x15 ,  x15 ,  x13
	sh x15 ,  24 ( x10 )
	addi x15 ,  x0 ,  -8
	slli x7 ,  x6 ,  8&31
	srli x6 ,  x6 ,  8&31
	or x5 ,  x7 ,  x5
	lhu x7 ,  10 ( x10 )
	sh x5 ,  14 ( x10 )
	slli x16 ,  x7 ,  8&31
	srli x7 ,  x7 ,  8&31
	or x6 ,  x16 ,  x6
	lhu x16 ,  8 ( x10 )
	sh x6 ,  12 ( x10 )
	slli x17 ,  x16 ,  8&31
	srli x16 ,  x16 ,  8&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  6 ( x10 )
	sh x7 ,  10 ( x10 )
	slli x29 ,  x17 ,  8&31
	srli x17 ,  x17 ,  8&31
	or x16 ,  x29 ,  x16
	slli x29 ,  x14 ,  8&31
	srli x14 ,  x14 ,  8&31
	or x17 ,  x29 ,  x17
	sh x16 ,  8 ( x10 )
	sh x14 ,  4 ( x10 )
	sh x17 ,  6 ( x10 )
	jal x0, .LBB8_20
.LBB8_1:                                //  %if.end
	lh x13 ,  6 ( x10 )
	blt x13, x0, .LBB8_2
.LBB8_3:                                //  %while.cond.preheader
	add x14 ,  x0 ,  x0
	add x15 ,  x0 ,  x14
	bltu x0, x13, .LBB8_8
.LBB8_4:                                //  %while.body.lr.ph
	lhu x18 ,  24 ( x10 )
	add x29 ,  x0 ,  x0
	addi x9 ,  x0 ,  144
	lui x19 ,  (65535>>12)&1048575
	lhu x17 ,  22 ( x10 )
	add x20 ,  x0 ,  x29
	lhu x16 ,  20 ( x10 )
	lhu x7 ,  18 ( x10 )
	lhu x6 ,  16 ( x10 )
	lhu x5 ,  14 ( x10 )
	lhu x11 ,  12 ( x10 )
	lhu x12 ,  10 ( x10 )
	lhu x8 ,  8 ( x10 )
.LBB8_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x13 ,  x0 ,  x8
	add x8 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x5
	add x5 ,  x0 ,  x6
	add x6 ,  x0 ,  x7
	add x7 ,  x0 ,  x16
	add x16 ,  x0 ,  x17
	add x17 ,  x0 ,  x18
	addi x15 ,  x20 ,  16
	bltu x9, x15, .LBB8_23
.LBB8_6:                                //  %while.condthread-pre-split
                                        //    in Loop: Header=BB8_5 Depth=1
	lui x30 ,  65535&4095
	add x20 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x18 ,  x19 ,  x30
	and x21 ,  x18 ,  x13
	add x18 ,  x0 ,  x29
	beq x0, x21, .LBB8_5
.LBB8_7:                                //  %while.cond.while.cond12.preheader_crit_edge
	sh x8 ,  8 ( x10 )
	sh x17 ,  22 ( x10 )
	sh x16 ,  20 ( x10 )
	sh x7 ,  18 ( x10 )
	sh x6 ,  16 ( x10 )
	sh x5 ,  14 ( x10 )
	sh x11 ,  12 ( x10 )
	sh x12 ,  10 ( x10 )
	sh x13 ,  6 ( x10 )
	sh x0 ,  4 ( x10 )
	sh x0 ,  24 ( x10 )
.LBB8_8:                                //  %while.cond12.preheader
	lui x30 ,  65535&4095
	lui x12 ,  (65535>>12)&1048575
	addi x5 ,  x0 ,  255
	srli x30 ,  x30 ,  12&31
	or x11 ,  x12 ,  x30
	and x11 ,  x11 ,  x13
	bltu x5, x11, .LBB8_12
.LBB8_9:                                //  %while.body17.lr.ph
	lhu x18 ,  8 ( x10 )
	add x14 ,  x0 ,  x0
	lui x9 ,  (65280>>12)&1048575
	lhu x11 ,  10 ( x10 )
	lhu x5 ,  12 ( x10 )
	lhu x6 ,  14 ( x10 )
	lhu x7 ,  16 ( x10 )
	lhu x16 ,  18 ( x10 )
	lhu x17 ,  20 ( x10 )
	lhu x8 ,  22 ( x10 )
	lhu x29 ,  24 ( x10 )
.LBB8_10:                               //  %while.body17
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65280&4095
	slli x14 ,  x14 ,  8&31
	slli x21 ,  x18 ,  8&31
	addi x15 ,  x15 ,  8
	srli x30 ,  x30 ,  12&31
	or x20 ,  x9 ,  x30
	lui x30 ,  65535&4095
	and x19 ,  x20 ,  x13
	and x18 ,  x20 ,  x18
	slli x13 ,  x13 ,  8&31
	srli x30 ,  x30 ,  12&31
	srli x19 ,  x19 ,  8&31
	srli x18 ,  x18 ,  8&31
	or x14 ,  x19 ,  x14
	and x19 ,  x20 ,  x11
	slli x11 ,  x11 ,  8&31
	or x13 ,  x13 ,  x18
	and x18 ,  x20 ,  x17
	slli x17 ,  x17 ,  8&31
	srli x19 ,  x19 ,  8&31
	srli x18 ,  x18 ,  8&31
	or x19 ,  x19 ,  x21
	and x21 ,  x20 ,  x5
	slli x5 ,  x5 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x11 ,  x21 ,  x11
	and x21 ,  x20 ,  x6
	slli x6 ,  x6 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x5 ,  x21 ,  x5
	and x21 ,  x20 ,  x7
	slli x7 ,  x7 ,  8&31
	srli x21 ,  x21 ,  8&31
	or x6 ,  x21 ,  x6
	and x21 ,  x20 ,  x16
	slli x16 ,  x16 ,  8&31
	or x16 ,  x18 ,  x16
	and x18 ,  x20 ,  x8
	slli x8 ,  x8 ,  8&31
	srli x21 ,  x21 ,  8&31
	srli x18 ,  x18 ,  8&31
	or x7 ,  x21 ,  x7
	or x17 ,  x18 ,  x17
	and x18 ,  x20 ,  x29
	slli x29 ,  x29 ,  8&31
	srli x18 ,  x18 ,  8&31
	or x8 ,  x18 ,  x8
	or x18 ,  x12 ,  x30
	and x18 ,  x18 ,  x13
	sltiu x20 ,  x18 ,  256
	add x18 ,  x0 ,  x19
	bltu x0, x20, .LBB8_10
.LBB8_11:                               //  %while.cond12.while.cond20.preheader_crit_edge
	sh x8 ,  22 ( x10 )
	sh x29 ,  24 ( x10 )
	sh x17 ,  20 ( x10 )
	sh x16 ,  18 ( x10 )
	sh x7 ,  16 ( x10 )
	sh x6 ,  14 ( x10 )
	sh x5 ,  12 ( x10 )
	sh x11 ,  10 ( x10 )
	sh x19 ,  8 ( x10 )
	sh x13 ,  6 ( x10 )
	sh x14 ,  4 ( x10 )
.LBB8_12:                               //  %while.cond20.preheader
	slli x12 ,  x13 ,  16&31
	srai x12 ,  x12 ,  16&31
	blt x12, x0, .LBB8_24
.LBB8_13:                               //  %while.body25.lr.ph
	lhu x20 ,  8 ( x10 )
	lui x9 ,  (32768>>12)&1048575
	addi x18 ,  x0 ,  159
	lhu x12 ,  10 ( x10 )
	lhu x11 ,  12 ( x10 )
	lhu x5 ,  14 ( x10 )
	lhu x6 ,  16 ( x10 )
	lhu x7 ,  18 ( x10 )
	lhu x16 ,  20 ( x10 )
	lhu x8 ,  22 ( x10 )
	lhu x29 ,  24 ( x10 )
.LBB8_15:                               //  %while.body25
                                        //  =>This Inner Loop Header: Depth=1
	add x17 ,  x0 ,  x15
	and x15 ,  x9 ,  x13
	slli x14 ,  x14 ,  1&31
	slli x19 ,  x20 ,  1&31
	slli x13 ,  x13 ,  1&31
	srli x15 ,  x15 ,  15&31
	or x14 ,  x15 ,  x14
	and x15 ,  x9 ,  x12
	slli x12 ,  x12 ,  1&31
	srli x15 ,  x15 ,  15&31
	or x19 ,  x15 ,  x19
	and x15 ,  x9 ,  x11
	slli x11 ,  x11 ,  1&31
	srli x15 ,  x15 ,  15&31
	or x12 ,  x15 ,  x12
	and x15 ,  x9 ,  x5
	slli x5 ,  x5 ,  1&31
	srli x15 ,  x15 ,  15&31
	or x11 ,  x15 ,  x11
	and x15 ,  x9 ,  x6
	slli x6 ,  x6 ,  1&31
	srli x15 ,  x15 ,  15&31
	or x5 ,  x15 ,  x5
	and x15 ,  x9 ,  x20
	srli x15 ,  x15 ,  15&31
	or x15 ,  x13 ,  x15
	and x13 ,  x9 ,  x7
	slli x7 ,  x7 ,  1&31
	srli x13 ,  x13 ,  15&31
	slli x15 ,  x15 ,  16&31
	or x6 ,  x13 ,  x6
	and x13 ,  x9 ,  x16
	slli x16 ,  x16 ,  1&31
	srli x13 ,  x13 ,  15&31
	or x7 ,  x13 ,  x7
	and x13 ,  x9 ,  x8
	slli x8 ,  x8 ,  1&31
	srli x13 ,  x13 ,  15&31
	or x16 ,  x13 ,  x16
	and x13 ,  x9 ,  x29
	slli x29 ,  x29 ,  1&31
	srli x13 ,  x13 ,  15&31
	or x8 ,  x13 ,  x8
	srai x13 ,  x15 ,  16&31
	bltu x18, x17, .LBB8_16
.LBB8_14:                               //  %while.cond20thread-pre-split
                                        //    in Loop: Header=BB8_15 Depth=1
	addi x15 ,  x17 ,  1
	add x20 ,  x0 ,  x19
	bge x13, x0, .LBB8_15
.LBB8_16:                               //  %while.cond20.cleanup.loopexit_crit_edge
	sh x8 ,  22 ( x10 )
	sh x29 ,  24 ( x10 )
	sh x16 ,  20 ( x10 )
	sh x7 ,  18 ( x10 )
	sh x6 ,  16 ( x10 )
	sh x5 ,  14 ( x10 )
	sh x11 ,  12 ( x10 )
	sh x12 ,  10 ( x10 )
	sh x19 ,  8 ( x10 )
	sh x13 ,  6 ( x10 )
	sh x14 ,  4 ( x10 )
	addi x15 ,  x17 ,  1
	jal x0, .LBB8_24
.LBB8_18:
	add x15 ,  x0 ,  x0
.LBB8_20:                               //  %if.end36
	lui x13 ,  (65535>>12)&1048575
	lui x12 ,  (32767>>12)&1048575
.LBB8_21:                               //  %while.cond37
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x13 ,  x30
	and x11 ,  x11 ,  x14
	beq x0, x11, .LBB8_24
.LBB8_22:                               //  %while.body41
                                        //    in Loop: Header=BB8_21 Depth=1
	lhu x11 ,  18 ( x10 )
	lui x30 ,  32767&4095
	lhu x6 ,  20 ( x10 )
	srli x30 ,  x30 ,  12&31
	slli x5 ,  x11 ,  15&31
	srli x11 ,  x11 ,  1&31
	srli x7 ,  x6 ,  1&31
	or x5 ,  x5 ,  x7
	lhu x7 ,  16 ( x10 )
	sh x5 ,  20 ( x10 )
	lhu x5 ,  22 ( x10 )
	slli x16 ,  x7 ,  15&31
	srli x7 ,  x7 ,  1&31
	or x11 ,  x16 ,  x11
	lhu x16 ,  14 ( x10 )
	sh x11 ,  18 ( x10 )
	slli x11 ,  x6 ,  15&31
	srli x6 ,  x5 ,  1&31
	or x11 ,  x11 ,  x6
	sh x11 ,  22 ( x10 )
	or x11 ,  x12 ,  x30
	slli x17 ,  x16 ,  15&31
	srli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  12 ( x10 )
	sh x7 ,  16 ( x10 )
	slli x29 ,  x17 ,  15&31
	srli x17 ,  x17 ,  1&31
	or x16 ,  x29 ,  x16
	lhu x29 ,  10 ( x10 )
	sh x16 ,  14 ( x10 )
	slli x8 ,  x29 ,  15&31
	srli x29 ,  x29 ,  1&31
	or x17 ,  x8 ,  x17
	lhu x8 ,  8 ( x10 )
	sh x17 ,  12 ( x10 )
	slli x9 ,  x8 ,  15&31
	srli x8 ,  x8 ,  1&31
	or x29 ,  x9 ,  x29
	lhu x9 ,  6 ( x10 )
	sh x29 ,  10 ( x10 )
	slli x18 ,  x9 ,  15&31
	srli x9 ,  x9 ,  1&31
	or x8 ,  x18 ,  x8
	slli x18 ,  x14 ,  15&31
	srli x14 ,  x14 ,  1&31
	and x14 ,  x11 ,  x14
	slli x11 ,  x5 ,  15&31
	lhu x5 ,  24 ( x10 )
	or x9 ,  x18 ,  x9
	sh x8 ,  8 ( x10 )
	sh x9 ,  6 ( x10 )
	sh x14 ,  4 ( x10 )
	srli x5 ,  x5 ,  1&31
	or x11 ,  x11 ,  x5
	sh x11 ,  24 ( x10 )
	slti x11 ,  x15 ,  -143
	addi x15 ,  x15 ,  -1
	beq x0, x11, .LBB8_21
	jal x0, .LBB8_24
.LBB8_2:
	add x15 ,  x0 ,  x0
	jal x0, .LBB8_24
.LBB8_23:                               //  %cleanup.loopexit150
	addi x15 ,  x20 ,  16
	sh x8 ,  8 ( x10 )
	sh x17 ,  22 ( x10 )
	sh x16 ,  20 ( x10 )
	sh x7 ,  18 ( x10 )
	sh x6 ,  16 ( x10 )
	sh x5 ,  14 ( x10 )
	sh x11 ,  12 ( x10 )
	sh x12 ,  10 ( x10 )
	sh x13 ,  6 ( x10 )
	sh x0 ,  4 ( x10 )
	sh x0 ,  24 ( x10 )
.LBB8_24:                               //  %cleanup
	add x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end8:
	.size	enormlz, .Lfunc_end8-enormlz
	.cfi_endproc
                                        //  -- End function
	.type	emdnorm,@function       //  -- Begin function emdnorm
emdnorm:                                //  @emdnorm
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x18 ,  x0 ,  x15
	add x21 ,  x0 ,  x14
	add x9 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call enormlz
	sub x9 ,  x9 ,  x10
	slti x15 ,  x10 ,  145
	bltu x0, x15, .LBB9_3
.LBB9_1:                                //  %entry
	lui x30 ,  32766&4095
	lui x15 ,  (32766>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x9, .LBB9_3
.LBB9_2:                                //  %if.then
	sh x0 ,  22 ( x8 )
	sh x0 ,  20 ( x8 )
	sh x0 ,  18 ( x8 )
	sh x0 ,  16 ( x8 )
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	sh x0 ,  2 ( x8 )
	add x9 ,  x0 ,  x0
	addi x15 ,  x0 ,  12
	jal x0, .LBB9_48
.LBB9_3:                                //  %if.end
	blt x9, x0, .LBB9_4
.LBB9_7:                                //  %if.end10
	lui x15 ,  (32767>>12)&1048575
	beq x0, x21, .LBB9_43
.LBB9_8:                                //  %if.end13
	lw x12 ,  4 ( x18 )
	lui x14 ,  (65535>>12)&1048575
	lw x13 ,  0 ( x18 )
	beq x12, x13, .LBB9_23
.LBB9_9:                                //  %if.then15
	lui x30 ,  65535&4095
	addi x6 ,  x0 ,  11
	slti x13 ,  x0 ,  1
	lui x11 ,  (32768>>12)&1048575
	addi x5 ,  x0 ,  12
	addi x7 ,  x0 ,  55
	sh x0 ,  50 ( x18 )
	sh x0 ,  48 ( x18 )
	sh x0 ,  46 ( x18 )
	sh x0 ,  44 ( x18 )
	sh x0 ,  42 ( x18 )
	sh x0 ,  40 ( x18 )
	sh x0 ,  38 ( x18 )
	sh x0 ,  36 ( x18 )
	sh x0 ,  34 ( x18 )
	sh x0 ,  32 ( x18 )
	sh x0 ,  30 ( x18 )
	sh x0 ,  28 ( x18 )
	sh x0 ,  26 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	bge x7, x12, .LBB9_10
.LBB9_13:                               //  %if.then15
	xori x7 ,  x12 ,  56
	beq x0, x7, .LBB9_18
.LBB9_14:                               //  %if.then15
	xori x7 ,  x12 ,  64
	beq x0, x7, .LBB9_17
.LBB9_15:                               //  %if.then15
	xori x7 ,  x12 ,  113
	bltu x0, x7, .LBB9_22
.LBB9_16:                               //  %sw.bb19
	lui x30 ,  32767&4095
	lui x13 ,  (32768>>12)&1048575
	lui x11 ,  (16384>>12)&1048575
	addi x5 ,  x0 ,  10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	jal x0, .LBB9_21
.LBB9_4:                                //  %if.then3
	slti x15 ,  x9 ,  -144
	bltu x0, x15, .LBB9_2
.LBB9_5:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call eshift
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB9_7
.LBB9_6:                                //  %if.then5
	slti x20 ,  x0 ,  1
	lui x15 ,  (32767>>12)&1048575
	bltu x0, x21, .LBB9_8
	jal x0, .LBB9_43
.LBB9_10:                               //  %if.then15
	xori x7 ,  x12 ,  24
	beq x0, x7, .LBB9_20
.LBB9_11:                               //  %if.then15
	xori x7 ,  x12 ,  53
	bltu x0, x7, .LBB9_22
.LBB9_12:                               //  %sw.bb41
	lui x30 ,  2048&4095
	lui x13 ,  (2048>>12)&1048575
	addi x11 ,  x0 ,  1024
	addi x10 ,  x0 ,  2047
	addi x5 ,  x0 ,  6
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	jal x0, .LBB9_21
.LBB9_18:                               //  %sw.bb34
	addi x13 ,  x0 ,  256
	addi x11 ,  x0 ,  128
	addi x10 ,  x0 ,  255
	addi x5 ,  x0 ,  6
	jal x0, .LBB9_21
.LBB9_17:                               //  %sw.bb26
	lui x30 ,  65535&4095
	addi x6 ,  x0 ,  6
	addi x5 ,  x0 ,  7
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	jal x0, .LBB9_22
.LBB9_20:                               //  %sw.bb48
	addi x13 ,  x0 ,  256
	addi x11 ,  x0 ,  128
	addi x10 ,  x0 ,  255
	addi x5 ,  x0 ,  4
.LBB9_21:                               //  %sw.epilog
	add x6 ,  x0 ,  x5
.LBB9_22:                               //  %sw.epilog
	slli x7 ,  x6 ,  1&31
	sh x13 ,  24 ( x18 )
	sh x11 ,  22 ( x18 )
	sh x10 ,  20 ( x18 )
	sw x5 ,  8 ( x18 )
	sw x6 ,  12 ( x18 )
	sw x12 ,  0 ( x18 )
	add x7 ,  x7 ,  x18
	sh x13 ,  26 ( x7 )
.LBB9_23:                               //  %if.end60
	xori x13 ,  x12 ,  144
	beq x0, x13, .LBB9_26
.LBB9_24:                               //  %if.end60
	blt x0, x9, .LBB9_26
.LBB9_25:                               //  %if.then65
	lhu x11 ,  16 ( x8 )
	lhu x5 ,  18 ( x8 )
	slli x10 ,  x11 ,  15&31
	srli x11 ,  x11 ,  1&31
	srli x6 ,  x5 ,  1&31
	or x10 ,  x10 ,  x6
	lhu x6 ,  14 ( x8 )
	sh x10 ,  18 ( x8 )
	lhu x10 ,  20 ( x8 )
	slli x7 ,  x6 ,  15&31
	srli x6 ,  x6 ,  1&31
	or x11 ,  x7 ,  x11
	lhu x7 ,  12 ( x8 )
	sh x11 ,  16 ( x8 )
	slli x11 ,  x5 ,  15&31
	srli x5 ,  x10 ,  1&31
	slli x10 ,  x10 ,  15&31
	or x11 ,  x11 ,  x5
	sh x11 ,  20 ( x8 )
	lhu x11 ,  24 ( x8 )
	slli x16 ,  x7 ,  15&31
	srli x7 ,  x7 ,  1&31
	or x6 ,  x16 ,  x6
	lhu x16 ,  10 ( x8 )
	sh x6 ,  14 ( x8 )
	lhu x6 ,  22 ( x8 )
	srli x5 ,  x11 ,  1&31
	andi x11 ,  x11 ,  1
	or x20 ,  x11 ,  x20
	slli x17 ,  x16 ,  15&31
	srli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  8 ( x8 )
	sh x7 ,  12 ( x8 )
	slli x7 ,  x6 ,  15&31
	or x5 ,  x5 ,  x7
	sh x5 ,  24 ( x8 )
	srli x5 ,  x6 ,  1&31
	slli x29 ,  x17 ,  15&31
	srli x17 ,  x17 ,  1&31
	or x10 ,  x10 ,  x5
	or x16 ,  x29 ,  x16
	lhu x29 ,  6 ( x8 )
	sh x10 ,  22 ( x8 )
	sh x16 ,  10 ( x8 )
	slli x1 ,  x29 ,  15&31
	srli x29 ,  x29 ,  1&31
	or x17 ,  x1 ,  x17
	lhu x1 ,  4 ( x8 )
	sh x17 ,  8 ( x8 )
	slli x21 ,  x1 ,  15&31
	srli x1 ,  x1 ,  1&31
	or x29 ,  x21 ,  x29
	sh x1 ,  4 ( x8 )
	sh x29 ,  6 ( x8 )
.LBB9_26:                               //  %if.end67
	lw x7 ,  8 ( x18 )
	addi x16 ,  x0 ,  143
	lhu x6 ,  20 ( x18 )
	slli x11 ,  x7 ,  1&31
	add x10 ,  x11 ,  x8
	lhu x5 ,  0 ( x10 )
	and x11 ,  x5 ,  x6
	blt x16, x12, .LBB9_31
.LBB9_27:                               //  %while.cond.preheader
	addi x12 ,  x7 ,  1
	addi x16 ,  x0 ,  12
	blt x16, x12, .LBB9_31
.LBB9_28:                               //  %while.body.preheader
	addi x12 ,  x10 ,  2
	addi x5 ,  x7 ,  -12
.LBB9_29:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x6 ,  x0 ,  x5
	lhu x5 ,  0 ( x12 )
	sh x0 ,  0 ( x12 )
	addi x12 ,  x12 ,  2
	sltu x5 ,  x0 ,  x5
	or x11 ,  x5 ,  x11
	addi x5 ,  x6 ,  1
	bgeu x5, x6, .LBB9_29
.LBB9_30:                               //  %if.end90.loopexit
	lhu x5 ,  0 ( x10 )
	lhu x6 ,  20 ( x18 )
.LBB9_31:                               //  %if.end90
	xori x12 ,  x6 ,  -1
	and x12 ,  x12 ,  x5
	sh x12 ,  0 ( x10 )
	lhu x12 ,  22 ( x18 )
	and x10 ,  x11 ,  x12
	beq x0, x10, .LBB9_37
.LBB9_32:                               //  %if.then104
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	and x11 ,  x10 ,  x11
	bne x11, x12, .LBB9_36
.LBB9_33:                               //  %if.then110
	beq x0, x20, .LBB9_34
.LBB9_35:                               //  %if.else124
	bltu x0, x19, .LBB9_37
.LBB9_36:                               //  %if.end130
	lhu x12 ,  50 ( x18 )
	lhu x11 ,  24 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  24 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  48 ( x18 )
	add x12 ,  x11 ,  x12
	lhu x11 ,  22 ( x8 )
	add x12 ,  x11 ,  x12
	sh x12 ,  22 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  46 ( x18 )
	andi x12 ,  x12 ,  1
	add x12 ,  x11 ,  x12
	lhu x11 ,  20 ( x8 )
	add x12 ,  x11 ,  x12
	lhu x11 ,  18 ( x8 )
	sh x12 ,  20 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x10 ,  44 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x10 ,  x11
	add x12 ,  x12 ,  x11
	lhu x11 ,  16 ( x8 )
	sh x12 ,  18 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x10 ,  42 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x10 ,  x11
	lhu x10 ,  14 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  16 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  40 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	lhu x10 ,  12 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  14 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  38 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	lhu x10 ,  10 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  12 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  36 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	lhu x10 ,  8 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  10 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  34 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	lhu x10 ,  6 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  8 ( x8 )
	srli x12 ,  x12 ,  16&31
	lhu x11 ,  32 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	lh x10 ,  4 ( x8 )
	add x12 ,  x12 ,  x11
	sh x12 ,  6 ( x8 )
	srli x12 ,  x12 ,  16&31
	lh x11 ,  30 ( x18 )
	andi x12 ,  x12 ,  1
	add x11 ,  x11 ,  x10
	add x12 ,  x12 ,  x11
	sh x12 ,  4 ( x8 )
.LBB9_37:                               //  %mddone
	beq x0, x13, .LBB9_39
.LBB9_38:                               //  %mddone
	blt x0, x9, .LBB9_39
.LBB9_40:                               //  %if.then140
	lhu x13 ,  12 ( x8 )
	lhu x11 ,  10 ( x8 )
	srli x12 ,  x13 ,  15&31
	slli x13 ,  x13 ,  1&31
	slli x10 ,  x11 ,  1&31
	or x12 ,  x12 ,  x10
	lhu x10 ,  14 ( x8 )
	sh x12 ,  10 ( x8 )
	lhu x12 ,  8 ( x8 )
	srli x5 ,  x10 ,  15&31
	slli x10 ,  x10 ,  1&31
	or x13 ,  x5 ,  x13
	lhu x5 ,  16 ( x8 )
	sh x13 ,  12 ( x8 )
	srli x13 ,  x11 ,  15&31
	slli x11 ,  x12 ,  1&31
	or x13 ,  x13 ,  x11
	sh x13 ,  8 ( x8 )
	srli x13 ,  x12 ,  15&31
	lhu x12 ,  6 ( x8 )
	srli x6 ,  x5 ,  15&31
	slli x5 ,  x5 ,  1&31
	or x10 ,  x6 ,  x10
	lhu x6 ,  18 ( x8 )
	sh x10 ,  14 ( x8 )
	slli x11 ,  x12 ,  1&31
	or x13 ,  x13 ,  x11
	srli x7 ,  x6 ,  15&31
	slli x6 ,  x6 ,  1&31
	sh x13 ,  6 ( x8 )
	srli x13 ,  x12 ,  15&31
	lh x12 ,  4 ( x8 )
	or x5 ,  x7 ,  x5
	lhu x7 ,  20 ( x8 )
	sh x5 ,  16 ( x8 )
	slli x12 ,  x12 ,  1&31
	srli x16 ,  x7 ,  15&31
	slli x7 ,  x7 ,  1&31
	or x13 ,  x13 ,  x12
	or x6 ,  x16 ,  x6
	lhu x16 ,  22 ( x8 )
	sh x13 ,  4 ( x8 )
	sh x6 ,  18 ( x8 )
	srli x17 ,  x16 ,  15&31
	slli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	lhu x17 ,  24 ( x8 )
	sh x7 ,  20 ( x8 )
	srli x29 ,  x17 ,  15&31
	slli x17 ,  x17 ,  1&31
	or x16 ,  x29 ,  x16
	sh x17 ,  24 ( x8 )
	sh x16 ,  22 ( x8 )
	jal x0, .LBB9_41
.LBB9_39:                               //  %mddone.if.end141_crit_edge
	lhu x13 ,  4 ( x8 )
.LBB9_41:                               //  %if.end141
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x13
	beq x0, x14, .LBB9_43
.LBB9_42:                               //  %if.then146
	lhu x14 ,  16 ( x8 )
	lui x30 ,  65534&4095
	addi x9 ,  x9 ,  1
	lhu x11 ,  18 ( x8 )
	srli x30 ,  x30 ,  12&31
	slli x12 ,  x14 ,  15&31
	srli x14 ,  x14 ,  1&31
	srli x10 ,  x11 ,  1&31
	or x12 ,  x12 ,  x10
	lhu x10 ,  14 ( x8 )
	sh x12 ,  18 ( x8 )
	slli x5 ,  x10 ,  15&31
	srli x10 ,  x10 ,  1&31
	or x14 ,  x5 ,  x14
	lhu x5 ,  12 ( x8 )
	sh x14 ,  16 ( x8 )
	slli x14 ,  x11 ,  15&31
	slli x6 ,  x5 ,  15&31
	srli x5 ,  x5 ,  1&31
	or x10 ,  x6 ,  x10
	lhu x6 ,  10 ( x8 )
	sh x10 ,  14 ( x8 )
	slli x7 ,  x6 ,  15&31
	srli x6 ,  x6 ,  1&31
	or x5 ,  x7 ,  x5
	lhu x7 ,  8 ( x8 )
	sh x5 ,  12 ( x8 )
	slli x16 ,  x7 ,  15&31
	srli x7 ,  x7 ,  1&31
	or x6 ,  x16 ,  x6
	lhu x16 ,  6 ( x8 )
	sh x6 ,  10 ( x8 )
	slli x17 ,  x16 ,  15&31
	srli x16 ,  x16 ,  1&31
	or x7 ,  x17 ,  x7
	slli x17 ,  x13 ,  15&31
	or x16 ,  x17 ,  x16
	lui x17 ,  (65534>>12)&1048575
	sh x7 ,  8 ( x8 )
	or x17 ,  x17 ,  x30
	sh x16 ,  6 ( x8 )
	and x13 ,  x17 ,  x13
	srli x13 ,  x13 ,  1&31
	sh x13 ,  4 ( x8 )
	lhu x13 ,  20 ( x8 )
	srli x12 ,  x13 ,  1&31
	or x14 ,  x14 ,  x12
	sh x14 ,  20 ( x8 )
	slli x14 ,  x13 ,  15&31
	lhu x13 ,  22 ( x8 )
	srli x12 ,  x13 ,  1&31
	or x14 ,  x14 ,  x12
	sh x14 ,  22 ( x8 )
	slli x14 ,  x13 ,  15&31
	lhu x13 ,  24 ( x8 )
	srli x13 ,  x13 ,  1&31
	or x14 ,  x14 ,  x13
	sh x14 ,  24 ( x8 )
.LBB9_43:                               //  %mdfin
	lui x30 ,  32767&4095
	sh x0 ,  24 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	blt x9, x14, .LBB9_45
.LBB9_44:                               //  %if.then152
	lui x30 ,  32767&4095
	sh x0 ,  20 ( x8 )
	sh x0 ,  18 ( x8 )
	sh x0 ,  16 ( x8 )
	sh x0 ,  14 ( x8 )
	sh x0 ,  12 ( x8 )
	sh x0 ,  10 ( x8 )
	sh x0 ,  8 ( x8 )
	sh x0 ,  6 ( x8 )
	sh x0 ,  4 ( x8 )
	add x9 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  2 ( x8 )
	addi x15 ,  x0 ,  11
	jal x0, .LBB9_48
.LBB9_45:                               //  %if.end158
	add x15 ,  x0 ,  x0
	blt x15, x9, .LBB9_47
.LBB9_46:                               //  %if.end158
	add x9 ,  x0 ,  x15
.LBB9_47:                               //  %if.end158
	slti x15 ,  x0 ,  1
.LBB9_48:                               //  %cleanup
	slli x15 ,  x15 ,  1&31
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x15 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	sh x9 ,  0 ( x15 )
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB9_34:                               //  %if.then113
	lw x12 ,  12 ( x18 )
	lhu x11 ,  24 ( x18 )
	slli x12 ,  x12 ,  1&31
	add x12 ,  x12 ,  x8
	lhu x12 ,  0 ( x12 )
	and x12 ,  x12 ,  x11
	bltu x0, x12, .LBB9_36
	jal x0, .LBB9_37
.Lfunc_end9:
	.size	emdnorm, .Lfunc_end9-emdnorm
	.cfi_endproc
                                        //  -- End function
	.type	m16m,@function          //  -- Begin function m16m
m16m:                                   //  @m16m
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	addi x19 ,  x2 ,  10
	add x8 ,  x0 ,  x12
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sh x0 ,  34 ( x2 )
	lhu x10 ,  24 ( x18 )
	sh x0 ,  22 ( x19 )
	beq x0, x10, .LBB10_1
.LBB10_2:                               //  %if.else
	add x11 ,  x0 ,  x9
	call __mulsi3
	srli x21 ,  x10 ,  16&31
	sh x10 ,  34 ( x2 )
	sh x21 ,  22 ( x19 )
	lhu x10 ,  22 ( x18 )
	lui x20 ,  (65535>>12)&1048575
	sh x0 ,  30 ( x2 )
	beq x0, x10, .LBB10_5
.LBB10_4:                               //  %if.else.1
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	srli x14 ,  x10 ,  16&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x21 ,  x15
	srli x13 ,  x15 ,  16&31
	sh x15 ,  32 ( x2 )
	add x14 ,  x14 ,  x13
	lhu x13 ,  20 ( x19 )
	add x14 ,  x13 ,  x14
	sh x14 ,  20 ( x19 )
	srli x15 ,  x14 ,  16&31
	lhu x10 ,  20 ( x18 )
	sh x15 ,  28 ( x2 )
	beq x0, x10, .LBB10_8
.LBB10_7:                               //  %if.else.2
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  20 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  20 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  28 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  28 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  18 ( x18 )
	sh x15 ,  26 ( x2 )
	beq x0, x10, .LBB10_11
.LBB10_10:                              //  %if.else.3
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  18 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  18 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  26 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  26 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  16 ( x18 )
	sh x15 ,  24 ( x2 )
	beq x0, x10, .LBB10_14
.LBB10_13:                              //  %if.else.4
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  16 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  16 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  24 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  24 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  14 ( x18 )
	sh x15 ,  22 ( x2 )
	beq x0, x10, .LBB10_17
.LBB10_16:                              //  %if.else.5
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  14 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  14 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  22 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  22 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  12 ( x18 )
	sh x15 ,  20 ( x2 )
	beq x0, x10, .LBB10_20
.LBB10_19:                              //  %if.else.6
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  12 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  12 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  20 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  20 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  10 ( x18 )
	sh x15 ,  18 ( x2 )
	beq x0, x10, .LBB10_23
.LBB10_22:                              //  %if.else.7
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  10 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  10 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  18 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  18 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  8 ( x18 )
	sh x15 ,  16 ( x2 )
	beq x0, x10, .LBB10_26
.LBB10_25:                              //  %if.else.8
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  8 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  8 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  16 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  16 ( x2 )
	srli x15 ,  x15 ,  16&31
	lhu x10 ,  6 ( x18 )
	sh x15 ,  14 ( x2 )
	beq x0, x10, .LBB10_28
.LBB10_29:                              //  %if.else.9
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  65535&4095
	lhu x14 ,  6 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x10
	add x15 ,  x14 ,  x15
	srli x14 ,  x10 ,  16&31
	sh x15 ,  6 ( x19 )
	srli x15 ,  x15 ,  16&31
	add x15 ,  x14 ,  x15
	lhu x14 ,  14 ( x2 )
	add x15 ,  x14 ,  x15
	sh x15 ,  14 ( x2 )
	srli x15 ,  x15 ,  16&31
	jal x0, .LBB10_30
.LBB10_1:                               //  %if.then
	add x21 ,  x0 ,  x0
	lhu x10 ,  22 ( x18 )
	lui x20 ,  (65535>>12)&1048575
	sh x0 ,  30 ( x2 )
	bltu x0, x10, .LBB10_4
.LBB10_5:                               //  %if.then.1
	add x15 ,  x0 ,  x0
	lhu x10 ,  20 ( x18 )
	sh x15 ,  28 ( x2 )
	bltu x0, x10, .LBB10_7
.LBB10_8:                               //  %if.then.2
	add x15 ,  x0 ,  x0
	lhu x10 ,  18 ( x18 )
	sh x15 ,  26 ( x2 )
	bltu x0, x10, .LBB10_10
.LBB10_11:                              //  %if.then.3
	add x15 ,  x0 ,  x0
	lhu x10 ,  16 ( x18 )
	sh x15 ,  24 ( x2 )
	bltu x0, x10, .LBB10_13
.LBB10_14:                              //  %if.then.4
	add x15 ,  x0 ,  x0
	lhu x10 ,  14 ( x18 )
	sh x15 ,  22 ( x2 )
	bltu x0, x10, .LBB10_16
.LBB10_17:                              //  %if.then.5
	add x15 ,  x0 ,  x0
	lhu x10 ,  12 ( x18 )
	sh x15 ,  20 ( x2 )
	bltu x0, x10, .LBB10_19
.LBB10_20:                              //  %if.then.6
	add x15 ,  x0 ,  x0
	lhu x10 ,  10 ( x18 )
	sh x15 ,  18 ( x2 )
	bltu x0, x10, .LBB10_22
.LBB10_23:                              //  %if.then.7
	add x15 ,  x0 ,  x0
	lhu x10 ,  8 ( x18 )
	sh x15 ,  16 ( x2 )
	bltu x0, x10, .LBB10_25
.LBB10_26:                              //  %if.then.8
	add x15 ,  x0 ,  x0
	lhu x10 ,  6 ( x18 )
	sh x15 ,  14 ( x2 )
	bltu x0, x10, .LBB10_29
.LBB10_28:
	add x15 ,  x0 ,  x0
.LBB10_30:                              //  %for.inc.9
	sh x15 ,  2 ( x19 )
	lh x15 ,  4 ( x19 )
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	sh x15 ,  4 ( x8 )
	lh x15 ,  6 ( x19 )
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	sh x15 ,  6 ( x8 )
	lh x15 ,  8 ( x19 )
	sh x15 ,  8 ( x8 )
	lh x15 ,  10 ( x19 )
	sh x15 ,  10 ( x8 )
	lh x15 ,  12 ( x19 )
	sh x15 ,  12 ( x8 )
	lh x15 ,  14 ( x19 )
	sh x15 ,  14 ( x8 )
	lh x15 ,  16 ( x19 )
	sh x15 ,  16 ( x8 )
	lh x15 ,  18 ( x19 )
	sh x15 ,  18 ( x8 )
	lh x15 ,  20 ( x19 )
	sh x15 ,  20 ( x8 )
	lh x15 ,  22 ( x19 )
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	sh x15 ,  22 ( x8 )
	lh x15 ,  34 ( x2 )
	sh x15 ,  24 ( x8 )
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end10:
	.size	m16m, .Lfunc_end10-m16m
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/ldtoa.c"
	.size	.str, 51

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"Balloc succeeded"
	.size	.str.1, 17

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	" NaN "
	.size	.str.2, 6

	.address_space	0
	.type	etens,@object           //  @etens
	.section	.rodata,"a",@progbits
	.p2align	1
etens:
	.short	25974                   //  0x6576
	.short	19090                   //  0x4a92
	.short	32842                   //  0x804a
	.short	5439                    //  0x153f
	.short	51532                   //  0xc94c
	.short	38810                   //  0x979a
	.short	35360                   //  0x8a20
	.short	20994                   //  0x5202
	.short	50272                   //  0xc460
	.short	29989                   //  0x7525
	.short	27186                   //  0x6a32
	.short	52818                   //  0xce52
	.short	12954                   //  0x329a
	.short	10446                   //  0x28ce
	.short	42829                   //  0xa74d
	.short	24036                   //  0x5de4
	.short	50493                   //  0xc53d
	.short	15197                   //  0x3b5d
	.short	40587                   //  0x9e8b
	.short	23186                   //  0x5a92
	.short	21100                   //  0x526c
	.short	20686                   //  0x50ce
	.short	61835                   //  0xf18b
	.short	15656                   //  0x3d28
	.short	25869                   //  0x650d
	.short	3095                    //  0xc17
	.short	33141                   //  0x8175
	.short	30086                   //  0x7586
	.short	51574                   //  0xc976
	.short	19784                   //  0x4d48
	.short	40038                   //  0x9c66
	.short	22776                   //  0x58f8
	.short	48208                   //  0xbc50
	.short	23636                   //  0x5c54
	.short	52325                   //  0xcc65
	.short	37318                   //  0x91c6
	.short	42510                   //  0xa60e
	.short	41134                   //  0xa0ae
	.short	58137                   //  0xe319
	.short	18083                   //  0x46a3
	.short	34078                   //  0x851e
	.short	60087                   //  0xeab7
	.short	39166                   //  0x98fe
	.short	36891                   //  0x901b
	.short	56763                   //  0xddbb
	.short	56973                   //  0xde8d
	.short	40441                   //  0x9df9
	.short	60411                   //  0xebfb
	.short	43646                   //  0xaa7e
	.short	17233                   //  0x4351
	.short	565                     //  0x235
	.short	311                     //  0x137
	.short	14001                   //  0x36b1
	.short	13164                   //  0x336c
	.short	50799                   //  0xc66f
	.short	36063                   //  0x8cdf
	.short	33001                   //  0x80e9
	.short	18377                   //  0x47c9
	.short	37818                   //  0x93ba
	.short	16808                   //  0x41a8
	.short	20728                   //  0x50f8
	.short	9723                    //  0x25fb
	.short	51051                   //  0xc76b
	.short	27505                   //  0x6b71
	.short	15551                   //  0x3cbf
	.short	42709                   //  0xa6d5
	.short	65487                   //  0xffcf
	.short	8009                    //  0x1f49
	.short	49784                   //  0xc278
	.short	16595                   //  0x40d3
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	61472                   //  0xf020
	.short	46493                   //  0xb59d
	.short	11120                   //  0x2b70
	.short	44456                   //  0xada8
	.short	40389                   //  0x9dc5
	.short	16489                   //  0x4069
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	1024                    //  0x400
	.short	51647                   //  0xc9bf
	.short	36379                   //  0x8e1b
	.short	16436                   //  0x4034
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	8192                    //  0x2000
	.short	48828                   //  0xbebc
	.short	16409                   //  0x4019
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40000                   //  0x9c40
	.short	16396                   //  0x400c
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	51200                   //  0xc800
	.short	16389                   //  0x4005
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40960                   //  0xa000
	.short	16386                   //  0x4002
	.size	etens, 260

	.address_space	0
	.type	eone,@object            //  @eone
	.p2align	1
eone:
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	32768                   //  0x8000
	.short	16383                   //  0x3fff
	.size	eone, 20

	.address_space	0
	.type	.str.3,@object          //  @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.3:
	.asciz	" -Infinity "
	.size	.str.3, 12

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	" Infinity "
	.size	.str.4, 11

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"NaN"
	.size	.str.5, 4

	.address_space	0
	.type	emtens,@object          //  @emtens
	.section	.rodata,"a",@progbits
	.p2align	1
emtens:
	.short	8240                    //  0x2030
	.short	53244                   //  0xcffc
	.short	41411                   //  0xa1c3
	.short	33059                   //  0x8123
	.short	11747                   //  0x2de3
	.short	40926                   //  0x9fde
	.short	53966                   //  0xd2ce
	.short	1224                    //  0x4c8
	.short	42717                   //  0xa6dd
	.short	2776                    //  0xad8
	.short	33380                   //  0x8264
	.short	53963                   //  0xd2cb
	.short	62186                   //  0xf2ea
	.short	4820                    //  0x12d4
	.short	18725                   //  0x4925
	.short	11748                   //  0x2de4
	.short	13366                   //  0x3436
	.short	21327                   //  0x534f
	.short	52910                   //  0xceae
	.short	9579                    //  0x256b
	.short	62783                   //  0xf53f
	.short	63128                   //  0xf698
	.short	27603                   //  0x6bd3
	.short	344                     //  0x158
	.short	34726                   //  0x87a6
	.short	49341                   //  0xc0bd
	.short	55895                   //  0xda57
	.short	33445                   //  0x82a5
	.short	41638                   //  0xa2a6
	.short	12981                   //  0x32b5
	.short	59185                   //  0xe731
	.short	1236                    //  0x4d4
	.short	58354                   //  0xe3f2
	.short	54066                   //  0xd332
	.short	28978                   //  0x7132
	.short	53788                   //  0xd21c
	.short	56099                   //  0xdb23
	.short	60978                   //  0xee32
	.short	36937                   //  0x9049
	.short	14682                   //  0x395a
	.short	41534                   //  0xa23e
	.short	21256                   //  0x5308
	.short	65275                   //  0xfefb
	.short	4437                    //  0x1155
	.short	64145                   //  0xfa91
	.short	6457                    //  0x1939
	.short	25466                   //  0x637a
	.short	17189                   //  0x4325
	.short	49201                   //  0xc031
	.short	15532                   //  0x3cac
	.short	57965                   //  0xe26d
	.short	56286                   //  0xdbde
	.short	53341                   //  0xd05d
	.short	46070                   //  0xb3f6
	.short	44156                   //  0xac7c
	.short	58528                   //  0xe4a0
	.short	25788                   //  0x64bc
	.short	18044                   //  0x467c
	.short	56784                   //  0xddd0
	.short	15957                   //  0x3e55
	.short	10784                   //  0x2a20
	.short	25124                   //  0x6224
	.short	18355                   //  0x47b3
	.short	39127                   //  0x98d7
	.short	16163                   //  0x3f23
	.short	59813                   //  0xe9a5
	.short	42297                   //  0xa539
	.short	59943                   //  0xea27
	.short	43135                   //  0xa87f
	.short	16170                   //  0x3f2a
	.short	2907                    //  0xb5b
	.short	19186                   //  0x4af2
	.short	42369                   //  0xa581
	.short	6381                    //  0x18ed
	.short	26590                   //  0x67de
	.short	38074                   //  0x94ba
	.short	17721                   //  0x4539
	.short	7853                    //  0x1ead
	.short	53169                   //  0xcfb1
	.short	16276                   //  0x3f94
	.short	49009                   //  0xbf71
	.short	43443                   //  0xa9b3
	.short	31113                   //  0x7989
	.short	48744                   //  0xbe68
	.short	19502                   //  0x4c2e
	.short	57691                   //  0xe15b
	.short	50253                   //  0xc44d
	.short	38078                   //  0x94be
	.short	59029                   //  0xe695
	.short	16329                   //  0x3fc9
	.short	15693                   //  0x3d4d
	.short	31805                   //  0x7c3d
	.short	14010                   //  0x36ba
	.short	3371                    //  0xd2b
	.short	64962                   //  0xfdc2
	.short	52988                   //  0xcefc
	.short	33889                   //  0x8461
	.short	30481                   //  0x7711
	.short	43980                   //  0xabcc
	.short	16356                   //  0x3fe4
	.short	49493                   //  0xc155
	.short	42152                   //  0xa4a8
	.short	16462                   //  0x404e
	.short	24851                   //  0x6113
	.short	54211                   //  0xd3c3
	.short	25899                   //  0x652b
	.short	57881                   //  0xe219
	.short	5976                    //  0x1758
	.short	53687                   //  0xd1b7
	.short	16369                   //  0x3ff1
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	15728                   //  0x3d70
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	16376                   //  0x3ff8
	.short	52429                   //  0xcccd
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	16379                   //  0x3ffb
	.size	emtens, 260

	.address_space	0
	.type	ezero,@object           //  @ezero
	.p2align	1
ezero:
	.zero	20
	.size	ezero, 20

	.address_space	0
	.type	.str.6,@object          //  @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.6:
	.asciz	"E%d"
	.size	.str.6, 4

	.address_space	0
	.type	bmask,@object           //  @bmask
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
bmask:
	.short	65535                   //  0xffff
	.short	65534                   //  0xfffe
	.short	65532                   //  0xfffc
	.short	65528                   //  0xfff8
	.short	65520                   //  0xfff0
	.short	65504                   //  0xffe0
	.short	65472                   //  0xffc0
	.short	65408                   //  0xff80
	.short	65280                   //  0xff00
	.short	65024                   //  0xfe00
	.short	64512                   //  0xfc00
	.short	63488                   //  0xf800
	.short	61440                   //  0xf000
	.short	57344                   //  0xe000
	.short	49152                   //  0xc000
	.short	32768                   //  0x8000
	.short	0                       //  0x0
	.size	bmask, 34


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
