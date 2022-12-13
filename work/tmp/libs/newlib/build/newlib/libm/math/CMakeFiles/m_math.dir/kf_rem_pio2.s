	.text
	.file	"kf_rem_pio2.c"
	.globl	__kernel_rem_pio2f      //  -- Begin function __kernel_rem_pio2f
	.type	__kernel_rem_pio2f,@function
__kernel_rem_pio2f:                     //  @__kernel_rem_pio2f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -424
	.cfi_adjust_cfa_offset 424
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x12 ,  -3
	sw x9 ,  416 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x14
	sw x20 ,  404 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  392 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x22 ,  396 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x20 ,  x0 ,  x13
	add x23 ,  x0 ,  x10
	sw x1 ,  420 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  412 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  408 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  400 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  388 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  384 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  380 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  376 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  372 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x11 ,  16 ( x2 )             //  4-byte Folded Spill
	srai x14 ,  x15 ,  31&31
	srli x14 ,  x14 ,  29&31
	add x15 ,  x14 ,  x15
	srai x22 ,  x15 ,  3&31
	add x15 ,  x0 ,  x0
	blt x15, x22, .LBB0_2
.LBB0_1:                                //  %entry
	add x22 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	lui x30 ,  init_jk&4095
	lui x14 ,  (init_jk>>12)&1048575
	slli x15 ,  x9 ,  2&31
	slli x21 ,  x22 ,  3&31
	sw x12 ,  8 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	sub x8 ,  x12 ,  x21
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x25 ,  0 ( x15 )
	addi x15 ,  x20 ,  -1
	add x14 ,  x15 ,  x25
	blt x14, x0, .LBB0_7
.LBB0_3:                                //  %for.body.preheader
	sub x14 ,  x22 ,  x20
	sub x24 ,  x22 ,  x15
	addi x18 ,  x2 ,  212
	add x19 ,  x20 ,  x25
	add x27 ,  x0 ,  x0
	slli x15 ,  x14 ,  2&31
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x14 ,  x15
	addi x26 ,  x15 ,  4
	add x10 ,  x0 ,  x27
	bge x24, x0, .LBB0_5
.LBB0_6:                                //  %cond.end
                                        //  =>This Inner Loop Header: Depth=1
	sw x10 ,  0 ( x18 )
	addi x18 ,  x18 ,  4
	addi x26 ,  x26 ,  4
	addi x24 ,  x24 ,  1
	addi x19 ,  x19 ,  -1
	beq x0, x19, .LBB0_7
.LBB0_4:                                //  %for.body
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10 ,  x0 ,  x27
	blt x24, x0, .LBB0_6
.LBB0_5:                                //  %cond.false
	lw x10 ,  0 ( x26 )
	call __floatsisf
	jal x0, .LBB0_6
.LBB0_7:                                //  %for.cond14.preheader.lr.ph
	addi x15 ,  x8 ,  -8
	sw x9 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x21 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x15 ,  40 ( x2 )             //  4-byte Folded Spill
	bge x0, x20, .LBB0_8
.LBB0_10:                               //  %for.cond14.preheader.us.preheader
	slli x15 ,  x20 ,  2&31
	addi x14 ,  x2 ,  212
	add x18 ,  x0 ,  x0
	addi x24 ,  x2 ,  52
	add x15 ,  x14 ,  x15
	addi x9 ,  x15 ,  -4
	add x15 ,  x0 ,  x18
.LBB0_11:                               //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_12 Depth 2
	add x26 ,  x0 ,  x15
	add x27 ,  x0 ,  x23
	add x21 ,  x0 ,  x20
	add x19 ,  x0 ,  x9
	add x8 ,  x0 ,  x18
.LBB0_12:                               //  %for.body17.us
                                        //    Parent Loop BB0_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x27 )
	lw x11 ,  0 ( x19 )
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	add x8 ,  x0 ,  x10
	addi x27 ,  x27 ,  4
	addi x19 ,  x19 ,  -4
	addi x21 ,  x21 ,  -1
	bltu x0, x21, .LBB0_12
.LBB0_13:                               //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_11 Depth=1
	slli x15 ,  x26 ,  2&31
	addi x9 ,  x9 ,  4
	add x15 ,  x15 ,  x24
	sw x8 ,  0 ( x15 )
	addi x15 ,  x26 ,  1
	blt x26, x25, .LBB0_11
	jal x0, .LBB0_14
.LBB0_8:                                //  %for.cond14.preheader.preheader
	addi x15 ,  x2 ,  52
	addi x14 ,  x0 ,  -1
.LBB0_9:                                //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  1
	blt x14, x25, .LBB0_9
.LBB0_14:                               //  %recompute.preheader
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x2 ,  292
	add x19 ,  x0 ,  x25
	lui x26 ,  (998244352>>12)&1048575
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  4 ( x2 )              //  4-byte Folded Spill
	slli x15 ,  x25 ,  2&31
	add x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  7
	sub x14 ,  x14 ,  x13
	addi x15 ,  x15 ,  -4
	sw x14 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x0 ,  8
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  52
	sub x14 ,  x14 ,  x13
	addi x15 ,  x15 ,  -4
	sw x14 ,  28 ( x2 )             //  4-byte Folded Spill
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x14 ,  4
	sw x14 ,  20 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_15
.LBB0_57:                               //    in Loop: Header=BB0_15 Depth=1
	add x19 ,  x0 ,  x18
.LBB0_15:                               //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
                                        //      Child Loop BB0_44 Depth 2
                                        //      Child Loop BB0_49 Depth 2
                                        //      Child Loop BB0_52 Depth 2
                                        //      Child Loop BB0_54 Depth 2
                                        //        Child Loop BB0_55 Depth 3
	slli x14 ,  x19 ,  2&31
	addi x15 ,  x2 ,  52
	lui x21 ,  (-1015021568>>12)&1048575
	add x15 ,  x14 ,  x15
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	lw x9 ,  0 ( x15 )
	bge x0, x19, .LBB0_18
.LBB0_16:                               //  %for.body35.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	addi x24 ,  x2 ,  292
	add x27 ,  x0 ,  x19
	add x8 ,  x14 ,  x15
.LBB0_17:                               //  %for.body35
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x26
	call __mulsf3
	call __fixsfsi
	call __floatsisf
	lui x30 ,  -1015021568&4095
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	call __fixsfsi
	sw x10 ,  0 ( x24 )
	lw x10 ,  0 ( x8 )
	add x11 ,  x0 ,  x18
	call __addsf3
	add x9 ,  x0 ,  x10
	addi x24 ,  x24 ,  4
	addi x8 ,  x8 ,  -4
	addi x27 ,  x27 ,  -1
	bltu x0, x27, .LBB0_17
.LBB0_18:                               //  %for.end48
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x24 ,  40 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x24
	call scalbnf
	lui x11 ,  (1040187392>>12)&1048575
	add x9 ,  x0 ,  x10
	call __mulsf3
	call floorf
	lui x30 ,  -1056964608&4095
	lui x15 ,  (-1056964608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x9 ,  x0 ,  x10
	call __fixsfsi
	add x18 ,  x0 ,  x10
	call __floatsisf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	add x9 ,  x0 ,  x10
	bge x0, x24, .LBB0_20
.LBB0_19:                               //  %if.then58
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x27 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  292
	lw x12 ,  28 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x27
	lw x14 ,  -4 ( x15 )
	sra x13 ,  x14 ,  x12
	sll x12 ,  x13 ,  x12
	add x18 ,  x18 ,  x13
	sub x14 ,  x14 ,  x12
	sw x14 ,  -4 ( x15 )
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	sra x21 ,  x14 ,  x15
	blt x0, x21, .LBB0_23
	jal x0, .LBB0_41
.LBB0_20:                               //  %if.else
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x27 ,  44 ( x2 )             //  4-byte Folded Reload
	beq x0, x24, .LBB0_21
.LBB0_33:                               //  %if.else77
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10 ,  x0 ,  x9
	lui x11 ,  (1056964608>>12)&1048575
	call __gesf2
	addi x21 ,  x0 ,  2
	bge x10, x0, .LBB0_23
.LBB0_34:                               //    in Loop: Header=BB0_15 Depth=1
	add x21 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x0
	call __nesf2
	beq x0, x10, .LBB0_42
	jal x0, .LBB0_58
.LBB0_21:                               //  %if.then73
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x2 ,  292
	add x15 ,  x15 ,  x27
	lw x15 ,  -4 ( x15 )
	srai x21 ,  x15 ,  7&31
	bge x0, x21, .LBB0_41
.LBB0_23:                               //  %if.then86
                                        //    in Loop: Header=BB0_15 Depth=1
	add x8 ,  x0 ,  x0
	addi x10 ,  x0 ,  255
	slti x5 ,  x0 ,  1
	addi x6 ,  x0 ,  256
	bge x0, x19, .LBB0_29
.LBB0_24:                               //  %for.body91.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x2 ,  292
	add x14 ,  x0 ,  x19
	add x13 ,  x0 ,  x0
	lw x12 ,  0 ( x15 )
	add x11 ,  x0 ,  x10
	beq x0, x13, .LBB0_26
.LBB0_27:                               //  %for.inc106.sink.split
                                        //    in Loop: Header=BB0_15 Depth=1
	sub x12 ,  x11 ,  x12
	add x8 ,  x0 ,  x13
	sw x12 ,  0 ( x15 )
.LBB0_28:                               //  %for.inc106
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	add x13 ,  x0 ,  x8
	beq x0, x14, .LBB0_29
.LBB0_25:                               //  %for.body91
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x12 ,  0 ( x15 )
	add x11 ,  x0 ,  x10
	bltu x0, x13, .LBB0_27
.LBB0_26:                               //  %if.then95
                                        //    in Loop: Header=BB0_15 Depth=1
	add x11 ,  x0 ,  x6
	add x13 ,  x0 ,  x5
	add x8 ,  x0 ,  x0
	bltu x0, x12, .LBB0_27
	jal x0, .LBB0_28
.LBB0_29:                               //  %for.end108
                                        //    in Loop: Header=BB0_15 Depth=1
	bge x0, x24, .LBB0_37
.LBB0_30:                               //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xori x15 ,  x24 ,  2
	beq x0, x15, .LBB0_35
.LBB0_31:                               //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xori x15 ,  x24 ,  1
	bltu x0, x15, .LBB0_37
.LBB0_32:                               //  %sw.bb
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x2 ,  292
	add x15 ,  x15 ,  x27
	lw x14 ,  -4 ( x15 )
	andi x14 ,  x14 ,  127
	jal x0, .LBB0_36
.LBB0_35:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x2 ,  292
	add x15 ,  x15 ,  x27
	lw x14 ,  -4 ( x15 )
	andi x14 ,  x14 ,  63
.LBB0_36:                               //  %if.end118
                                        //    in Loop: Header=BB0_15 Depth=1
	sw x14 ,  -4 ( x15 )
.LBB0_37:                               //  %if.end118
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x18 ,  x18 ,  1
	xori x15 ,  x21 ,  2
	bltu x0, x15, .LBB0_41
.LBB0_38:                               //  %if.then121
                                        //    in Loop: Header=BB0_15 Depth=1
	lui x21 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x21
	call __subsf3
	add x9 ,  x0 ,  x10
	beq x0, x8, .LBB0_40
.LBB0_39:                               //  %if.then125
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x24
	call scalbnf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	add x9 ,  x0 ,  x10
.LBB0_40:                               //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x21 ,  x0 ,  2
.LBB0_41:                               //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x0
	call __nesf2
	bltu x0, x10, .LBB0_58
.LBB0_42:                               //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	bge x25, x19, .LBB0_48
.LBB0_43:                               //  %for.body138.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x15 ,  x2 ,  288
	add x13 ,  x0 ,  x19
	add x14 ,  x0 ,  x0
	add x15 ,  x27 ,  x15
.LBB0_44:                               //  %for.body138
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  -4
	addi x13 ,  x13 ,  -1
	or x14 ,  x14 ,  x12
	blt x25, x13, .LBB0_44
.LBB0_45:                               //  %for.end142
                                        //    in Loop: Header=BB0_15 Depth=1
	bltu x0, x14, .LBB0_46
.LBB0_48:                               //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x19
.LBB0_49:                               //  %for.cond146
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  -4
	addi x18 ,  x18 ,  1
	add x15 ,  x0 ,  x14
	beq x0, x13, .LBB0_49
.LBB0_50:                               //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x14 ,  x19 ,  x20
	bge x0, x20, .LBB0_51
.LBB0_53:                               //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	slli x14 ,  x14 ,  2&31
	addi x13 ,  x2 ,  212
	addi x15 ,  x19 ,  1
	add x8 ,  x14 ,  x13
.LBB0_54:                               //  %for.body160.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_55 Depth 3
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x15
	add x15 ,  x22 ,  x24
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
	call __floatsisf
	add x15 ,  x20 ,  x19
	addi x14 ,  x2 ,  212
	add x27 ,  x0 ,  x20
	add x19 ,  x0 ,  x23
	add x21 ,  x0 ,  x8
	add x9 ,  x0 ,  x0
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	sw x10 ,  0 ( x15 )
.LBB0_55:                               //  %for.body169.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //      Parent Loop BB0_54 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10 ,  0 ( x19 )
	lw x11 ,  0 ( x21 )
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x9 ,  x0 ,  x10
	addi x19 ,  x19 ,  4
	addi x21 ,  x21 ,  -4
	addi x27 ,  x27 ,  -1
	bltu x0, x27, .LBB0_55
.LBB0_56:                               //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_54 Depth=2
	slli x15 ,  x24 ,  2&31
	addi x14 ,  x2 ,  52
	add x19 ,  x0 ,  x24
	addi x8 ,  x8 ,  4
	add x15 ,  x15 ,  x14
	sw x9 ,  0 ( x15 )
	addi x15 ,  x24 ,  1
	blt x24, x18, .LBB0_54
	jal x0, .LBB0_57
.LBB0_51:                               //  %for.body160.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x19 ,  x22
	slli x15 ,  x15 ,  2&31
	add x8 ,  x15 ,  x13
	addi x15 ,  x2 ,  56
	add x9 ,  x27 ,  x15
	slli x15 ,  x14 ,  2&31
	addi x14 ,  x2 ,  212
	add x21 ,  x15 ,  x14
.LBB0_52:                               //  %for.body160
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x8 )
	call __floatsisf
	sw x10 ,  0 ( x21 )
	sw x0 ,  0 ( x9 )
	addi x8 ,  x8 ,  4
	addi x9 ,  x9 ,  4
	addi x21 ,  x21 ,  4
	addi x19 ,  x19 ,  1
	blt x19, x18, .LBB0_52
	jal x0, .LBB0_57
.LBB0_58:                               //  %if.else196
	sub x11 ,  x0 ,  x24
	add x10 ,  x0 ,  x9
	call scalbnf
	lui x11 ,  (1132462080>>12)&1048575
	add x9 ,  x0 ,  x10
	call __gesf2
	bge x10, x0, .LBB0_60
.LBB0_59:
	add x20 ,  x0 ,  x9
	jal x0, .LBB0_61
.LBB0_60:                               //  %if.then201
	lui x11 ,  (998244352>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	call __fixsfsi
	call __floatsisf
	lui x30 ,  -1015021568&4095
	lui x15 ,  (-1015021568>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	call __fixsfsi
	addi x15 ,  x2 ,  292
	lw x14 ,  4 ( x2 )              //  4-byte Folded Reload
	addi x19 ,  x19 ,  1
	add x15 ,  x27 ,  x15
	sw x10 ,  0 ( x15 )
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	add x24 ,  x15 ,  x14
.LBB0_61:                               //  %if.end217.sink.split
	add x10 ,  x0 ,  x20
	slli x15 ,  x19 ,  2&31
	addi x14 ,  x2 ,  292
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	add x8 ,  x15 ,  x14
	call __fixsfsi
	sw x10 ,  0 ( x8 )
	jal x0, .LBB0_62
.LBB0_46:                               //  %while.cond.preheader
	addi x15 ,  x2 ,  292
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x27 ,  x15
	addi x15 ,  x15 ,  -4
.LBB0_47:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  -4
	addi x19 ,  x19 ,  -1
	addi x24 ,  x24 ,  -8
	add x15 ,  x0 ,  x14
	beq x0, x13, .LBB0_47
.LBB0_62:                               //  %if.end217
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x24
	call scalbnf
	add x8 ,  x0 ,  x10
	blt x19, x0, .LBB0_71
.LBB0_63:                               //  %for.body222.preheader
	slli x20 ,  x19 ,  2&31
	addi x15 ,  x2 ,  292
	addi x23 ,  x19 ,  1
	lui x9 ,  (998244352>>12)&1048575
	add x21 ,  x20 ,  x15
	addi x15 ,  x2 ,  52
	add x22 ,  x20 ,  x15
.LBB0_64:                               //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x21 )
	call __floatsisf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	sw x10 ,  0 ( x22 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x8 ,  x0 ,  x10
	addi x21 ,  x21 ,  -4
	addi x22 ,  x22 ,  -4
	addi x23 ,  x23 ,  -1
	blt x0, x23, .LBB0_64
.LBB0_65:                               //  %for.cond231.preheader
	blt x19, x0, .LBB0_71
.LBB0_66:                               //  %for.body241.preheader.preheader
	addi x15 ,  x2 ,  52
	addi x22 ,  x2 ,  132
	add x9 ,  x20 ,  x15
	add x20 ,  x0 ,  x0
	add x15 ,  x0 ,  x19
	jal x0, .LBB0_67
.LBB0_70:                               //  %for.end249
                                        //    in Loop: Header=BB0_67 Depth=1
	slli x15 ,  x24 ,  2&31
	addi x9 ,  x9 ,  -4
	add x15 ,  x15 ,  x22
	sw x8 ,  0 ( x15 )
	addi x15 ,  x23 ,  -1
	bge x0, x23, .LBB0_71
.LBB0_67:                               //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_68 Depth 2
	lui x30 ,  PIo2&4095
	add x23 ,  x0 ,  x15
	lui x14 ,  (PIo2>>12)&1048575
	add x15 ,  x0 ,  x20
	add x27 ,  x0 ,  x9
	add x8 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	sub x24 ,  x19 ,  x23
	or x26 ,  x14 ,  x30
.LBB0_68:                               //  %for.body241
                                        //    Parent Loop BB0_67 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x26 )
	add x21 ,  x0 ,  x15
	lw x11 ,  0 ( x27 )
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	add x8 ,  x0 ,  x10
	bge x21, x25, .LBB0_70
.LBB0_69:                               //  %for.body241
                                        //    in Loop: Header=BB0_68 Depth=2
	addi x27 ,  x27 ,  4
	addi x26 ,  x26 ,  4
	addi x15 ,  x21 ,  1
	bltu x21, x24, .LBB0_68
	jal x0, .LBB0_70
.LBB0_71:                               //  %for.end254
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  -1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_91
.LBB0_72:                               //  %for.end254
	lw x27 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_85
.LBB0_73:                               //  %for.end254
	xori x15 ,  x14 ,  3
	bltu x0, x15, .LBB0_104
.LBB0_74:                               //  %for.cond311.preheader
	add x8 ,  x0 ,  x0
	bge x0, x19, .LBB0_83
.LBB0_75:                               //  %for.body314.preheader
	slli x15 ,  x19 ,  2&31
	addi x14 ,  x2 ,  132
	add x24 ,  x0 ,  x19
	add x21 ,  x15 ,  x14
	lw x9 ,  0 ( x21 )
	addi x23 ,  x21 ,  -4
.LBB0_76:                               //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	lw x22 ,  0 ( x23 )
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x22
	call __addsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  4 ( x23 )
	sw x20 ,  0 ( x23 )
	addi x23 ,  x23 ,  -4
	addi x24 ,  x24 ,  -1
	add x9 ,  x0 ,  x20
	blt x0, x24, .LBB0_76
.LBB0_77:                               //  %for.cond329.preheader
	slti x24 ,  x19 ,  2
	bltu x0, x24, .LBB0_83
.LBB0_78:                               //  %for.body332.preheader
	lw x9 ,  0 ( x21 )
	addi x25 ,  x21 ,  -4
	slti x22 ,  x0 ,  1
	add x26 ,  x0 ,  x19
.LBB0_79:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	lw x23 ,  0 ( x25 )
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x23
	call __addsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  4 ( x25 )
	sw x20 ,  0 ( x25 )
	addi x25 ,  x25 ,  -4
	addi x26 ,  x26 ,  -1
	add x9 ,  x0 ,  x20
	blt x22, x26, .LBB0_79
.LBB0_80:                               //  %for.cond347.preheader
	bltu x0, x24, .LBB0_83
.LBB0_81:                               //  %for.body350.preheader
	add x8 ,  x0 ,  x0
.LBB0_82:                               //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x21 )
	add x10 ,  x0 ,  x8
	call __addsf3
	add x8 ,  x0 ,  x10
	addi x21 ,  x21 ,  -4
	addi x19 ,  x19 ,  -1
	blt x22, x19, .LBB0_82
.LBB0_83:                               //  %for.end355
	lw x15 ,  132 ( x2 )
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_84
.LBB0_102:                              //  %if.else364
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	xor x15 ,  x14 ,  x15
	sw x15 ,  0 ( x27 )
	xor x15 ,  x14 ,  x8
	sw x15 ,  8 ( x27 )
	lw x15 ,  136 ( x2 )
	xor x15 ,  x14 ,  x15
	jal x0, .LBB0_103
.LBB0_91:                               //  %sw.bb273
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
	blt x19, x0, .LBB0_94
.LBB0_92:                               //  %for.body277.preheader
	slli x15 ,  x19 ,  2&31
	addi x14 ,  x2 ,  132
	addi x20 ,  x19 ,  1
	add x8 ,  x15 ,  x14
	add x15 ,  x0 ,  x0
.LBB0_93:                               //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x8 )
	add x10 ,  x0 ,  x15
	call __addsf3
	add x15 ,  x0 ,  x10
	addi x8 ,  x8 ,  -4
	addi x20 ,  x20 ,  -1
	blt x0, x20, .LBB0_93
.LBB0_94:                               //  %for.end282
	lw x20 ,  48 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  -2147483648&4095
	lui x8 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x8 ,  x30
	beq x20, x9, .LBB0_96
.LBB0_95:                               //  %for.end282
	xor x14 ,  x13 ,  x15
.LBB0_96:                               //  %for.end282
	lw x10 ,  132 ( x2 )
	add x11 ,  x0 ,  x15
	sw x14 ,  0 ( x21 )
	call __subsf3
	bge x0, x19, .LBB0_99
.LBB0_97:                               //  %for.body296.preheader
	addi x9 ,  x2 ,  136
.LBB0_98:                               //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x9 )
	call __addsf3
	addi x9 ,  x9 ,  4
	addi x19 ,  x19 ,  -1
	bltu x0, x19, .LBB0_98
.LBB0_99:                               //  %for.end301
	lui x30 ,  -2147483648&4095
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x8 ,  x30
	beq x20, x14, .LBB0_101
.LBB0_100:                              //  %for.end301
	xor x10 ,  x15 ,  x10
.LBB0_101:                              //  %for.end301
	sw x10 ,  4 ( x21 )
	jal x0, .LBB0_104
.LBB0_85:                               //  %for.cond256.preheader
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	blt x19, x0, .LBB0_88
.LBB0_86:                               //  %for.body259.preheader
	slli x15 ,  x19 ,  2&31
	addi x14 ,  x2 ,  132
	add x10 ,  x0 ,  x0
	addi x19 ,  x19 ,  1
	add x9 ,  x15 ,  x14
.LBB0_87:                               //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	lw x11 ,  0 ( x9 )
	call __addsf3
	addi x9 ,  x9 ,  -4
	addi x19 ,  x19 ,  -1
	blt x0, x19, .LBB0_87
.LBB0_88:                               //  %for.end264
	lw x14 ,  48 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x14, x8, .LBB0_90
.LBB0_89:                               //  %for.end264
	xor x10 ,  x15 ,  x10
.LBB0_90:                               //  %for.end264
	sw x10 ,  0 ( x27 )
	jal x0, .LBB0_104
.LBB0_84:                               //  %if.then358
	sw x15 ,  0 ( x27 )
	sw x8 ,  8 ( x27 )
	lw x15 ,  136 ( x2 )
.LBB0_103:                              //  %sw.epilog374
	sw x15 ,  4 ( x27 )
.LBB0_104:                              //  %sw.epilog374
	andi x10 ,  x18 ,  7
	lw x8 ,  372 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  376 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  380 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  384 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  388 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  392 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  396 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  400 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  404 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  408 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  412 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  416 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  420 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  424
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__kernel_rem_pio2f, .Lfunc_end0-__kernel_rem_pio2f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	init_jk,@object         //  @init_jk
	.section	.rodata,"a",@progbits
	.p2align	2
init_jk:
	.long	4                       //  0x4
	.long	7                       //  0x7
	.long	9                       //  0x9
	.size	init_jk, 12

	.address_space	0
	.type	PIo2,@object            //  @PIo2
	.p2align	2
PIo2:
	.long	1070137344              //  float 1.5703125
	.long	972029952               //  float 4.57763672E-4
	.long	937033728               //  float 2.59876251E-5
	.long	866254848               //  float 7.54371285E-8
	.long	780402688               //  float 6.00266503E-11
	.long	726663168               //  float 7.38964445E-13
	.long	667025408               //  float 5.38458167E-15
	.long	584056832               //  float 5.6378513E-18
	.long	532938752               //  float 8.30092288E-20
	.long	465960960               //  float 3.27563523E-22
	.long	390332416               //  float 6.33310156E-25
	.size	PIo2, 44


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
