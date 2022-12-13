	.text
	.file	"k_rem_pio2.c"
	.globl	__kernel_rem_pio2       //  -- Begin function __kernel_rem_pio2
	.type	__kernel_rem_pio2,@function
__kernel_rem_pio2:                      //  @__kernel_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -680
	.cfi_adjust_cfa_offset 680
	lui x30 ,  init_jk&4095
	sw x9 ,  672 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x25 ,  640 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x25 ,  x0 ,  x14
	add x9 ,  x0 ,  x12
	lui x14 ,  (init_jk>>12)&1048575
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  60 ( x2 )             //  4-byte Folded Spill
	addi x11 ,  x0 ,  24
	sw x20 ,  660 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x1 ,  676 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  668 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  664 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  656 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  652 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  648 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  644 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  636 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  632 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  628 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x20 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	addi x10 ,  x9 ,  -3
	slli x15 ,  x25 ,  2&31
	or x14 ,  x14 ,  x30
	add x8 ,  x15 ,  x14
	call __divsi3
	add x15 ,  x0 ,  x0
	blt x15, x10, .LBB0_2
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	addi x11 ,  x0 ,  -24
	sw x10 ,  56 ( x2 )             //  4-byte Folded Spill
	call __mulsi3
	lw x23 ,  0 ( x8 )
	add x15 ,  x10 ,  x9
	sw x15 ,  16 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x20 ,  -1
	add x14 ,  x15 ,  x23
	blt x14, x0, .LBB0_8
.LBB0_3:                                //  %for.body.preheader
	lw x13 ,  56 ( x2 )             //  4-byte Folded Reload
	addi x9 ,  x2 ,  384
	add x18 ,  x20 ,  x23
	add x24 ,  x0 ,  x0
	sub x14 ,  x13 ,  x20
	sub x19 ,  x13 ,  x15
	slli x15 ,  x14 ,  2&31
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x14 ,  x15
	addi x22 ,  x15 ,  4
	blt x19, x0, .LBB0_7
.LBB0_4:                                //  %cond.false
	lw x10 ,  0 ( x22 )
	call __floatsidf
.LBB0_5:                                //  %cond.end
	sw x10 ,  0 ( x9 )
	sw x11 ,  4 ( x9 )
	addi x9 ,  x9 ,  8
	addi x22 ,  x22 ,  4
	addi x19 ,  x19 ,  1
	addi x18 ,  x18 ,  -1
	beq x0, x18, .LBB0_8
.LBB0_6:                                //  %for.body
	bge x19, x0, .LBB0_4
.LBB0_7:
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x24
	jal x0, .LBB0_5
.LBB0_8:                                //  %for.cond14.preheader.lr.ph
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x25 ,  12 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  -24
	sw x15 ,  40 ( x2 )             //  4-byte Folded Spill
	bge x0, x20, .LBB0_13
.LBB0_9:                                //  %for.cond14.preheader.us.preheader
	slli x15 ,  x20 ,  3&31
	addi x14 ,  x2 ,  384
	add x19 ,  x0 ,  x0
	addi x24 ,  x2 ,  64
	add x15 ,  x14 ,  x15
	addi x8 ,  x15 ,  -8
	add x15 ,  x0 ,  x19
.LBB0_10:                               //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_11 Depth 2
	lw x26 ,  60 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x15
	add x9 ,  x0 ,  x19
	add x27 ,  x0 ,  x20
	add x22 ,  x0 ,  x8
	add x18 ,  x0 ,  x19
.LBB0_11:                               //  %for.body17.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x26 )
	lw x11 ,  4 ( x26 )
	lw x12 ,  0 ( x22 )
	lw x13 ,  4 ( x22 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __adddf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	addi x26 ,  x26 ,  8
	addi x22 ,  x22 ,  -8
	addi x27 ,  x27 ,  -1
	bltu x0, x27, .LBB0_11
.LBB0_12:                               //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_10 Depth=1
	slli x15 ,  x25 ,  3&31
	addi x8 ,  x8 ,  8
	add x15 ,  x15 ,  x24
	sw x18 ,  0 ( x15 )
	ori x15 ,  x15 ,  4
	sw x9 ,  0 ( x15 )
	addi x15 ,  x25 ,  1
	blt x25, x23, .LBB0_10
	jal x0, .LBB0_15
.LBB0_13:                               //  %for.cond14.preheader.preheader
	addi x15 ,  x2 ,  64
	addi x14 ,  x0 ,  -1
.LBB0_14:                               //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	sw x0 ,  4 ( x15 )
	sw x0 ,  0 ( x15 )
	addi x15 ,  x15 ,  8
	addi x14 ,  x14 ,  1
	blt x14, x23, .LBB0_14
.LBB0_15:                               //  %recompute.preheader
	lw x13 ,  40 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x0 ,  23
	slli x15 ,  x23 ,  2&31
	addi x21 ,  x2 ,  548
	add x22 ,  x0 ,  x23
	add x24 ,  x0 ,  x0
	lui x23 ,  (1047527424>>12)&1048575
	add x15 ,  x21 ,  x15
	sw x22 ,  48 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x15 ,  -4
	sw x15 ,  36 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x2 ,  64
	sub x14 ,  x14 ,  x13
	addi x15 ,  x15 ,  -8
	sw x14 ,  32 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x0 ,  24
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	sub x14 ,  x14 ,  x13
	sw x14 ,  28 ( x2 )             //  4-byte Folded Spill
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  4
	sw x14 ,  20 ( x2 )             //  4-byte Folded Spill
.LBB0_16:                               //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_18 Depth 2
                                        //      Child Loop BB0_29 Depth 2
                                        //      Child Loop BB0_45 Depth 2
                                        //      Child Loop BB0_48 Depth 2
                                        //      Child Loop BB0_56 Depth 2
                                        //      Child Loop BB0_51 Depth 2
                                        //        Child Loop BB0_52 Depth 3
	slli x13 ,  x22 ,  3&31
	addi x15 ,  x2 ,  64
	add x15 ,  x13 ,  x15
	sw x13 ,  44 ( x2 )             //  4-byte Folded Spill
	ori x14 ,  x15 ,  4
	lw x9 ,  0 ( x15 )
	lw x8 ,  0 ( x14 )
	bge x0, x22, .LBB0_19
.LBB0_17:                               //  %for.body35.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x15 ,  24 ( x2 )             //  4-byte Folded Reload
	add x19 ,  x0 ,  x21
	add x26 ,  x0 ,  x22
	lui x21 ,  (-1049624576>>12)&1048575
	add x25 ,  x13 ,  x15
.LBB0_18:                               //  %for.body35
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __muldf3
	call __fixdfsi
	call __floatsidf
	lui x30 ,  -1049624576&4095
	add x12 ,  x0 ,  x24
	add x18 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x21 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	call __fixdfsi
	sw x10 ,  0 ( x19 )
	lw x10 ,  0 ( x25 )
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x27
	lw x11 ,  4 ( x25 )
	call __adddf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	addi x19 ,  x19 ,  4
	addi x25 ,  x25 ,  -8
	addi x26 ,  x26 ,  -1
	bltu x0, x26, .LBB0_18
.LBB0_19:                               //  %for.end48
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x26 ,  40 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x26
	call scalbn
	add x12 ,  x0 ,  x24
	lui x13 ,  (1069547520>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __muldf3
	call floor
	lui x30 ,  -1071644672&4095
	lui x15 ,  (-1071644672>>12)&1048575
	add x12 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __fixdfsi
	add x18 ,  x0 ,  x10
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	bge x0, x26, .LBB0_21
.LBB0_20:                               //  %if.then58
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x15 ,  x22 ,  2&31
	addi x21 ,  x2 ,  548
	lw x12 ,  28 ( x2 )             //  4-byte Folded Reload
	lui x27 ,  (-1049624576>>12)&1048575
	add x15 ,  x21 ,  x15
	lw x14 ,  -4 ( x15 )
	sra x13 ,  x14 ,  x12
	sll x12 ,  x13 ,  x12
	add x18 ,  x18 ,  x13
	sub x14 ,  x14 ,  x12
	sw x14 ,  -4 ( x15 )
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	sra x25 ,  x14 ,  x15
	blt x0, x25, .LBB0_25
	jal x0, .LBB0_42
.LBB0_21:                               //  %if.else
                                        //    in Loop: Header=BB0_16 Depth=1
	lui x27 ,  (-1049624576>>12)&1048575
	addi x21 ,  x2 ,  548
	beq x0, x26, .LBB0_24
.LBB0_22:                               //  %if.else77
                                        //    in Loop: Header=BB0_16 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	lui x13 ,  (1071644672>>12)&1048575
	call __gedf2
	addi x25 ,  x0 ,  2
	bge x10, x0, .LBB0_25
.LBB0_23:                               //    in Loop: Header=BB0_16 Depth=1
	add x25 ,  x0 ,  x24
	jal x0, .LBB0_42
.LBB0_24:                               //  %if.then73
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x15 ,  x22 ,  2&31
	add x15 ,  x21 ,  x15
	lw x15 ,  -4 ( x15 )
	srai x25 ,  x15 ,  23&31
	bge x0, x25, .LBB0_42
.LBB0_25:                               //  %if.then86
                                        //    in Loop: Header=BB0_16 Depth=1
	add x19 ,  x0 ,  x24
	lui x10 ,  (16777215>>12)&1048575
	slti x5 ,  x0 ,  1
	lui x6 ,  (16777216>>12)&1048575
	bge x0, x22, .LBB0_31
.LBB0_26:                               //  %for.body91.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x22
	add x13 ,  x0 ,  x24
	jal x0, .LBB0_29
.LBB0_27:                               //  %for.inc106.sink.split
                                        //    in Loop: Header=BB0_29 Depth=2
	sub x12 ,  x11 ,  x12
	add x19 ,  x0 ,  x13
	sw x12 ,  0 ( x15 )
.LBB0_28:                               //  %for.inc106
                                        //    in Loop: Header=BB0_29 Depth=2
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	add x13 ,  x0 ,  x19
	beq x0, x14, .LBB0_31
.LBB0_29:                               //  %for.body91
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x15 )
	lui x30 ,  16777215&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x10 ,  x30
	bltu x0, x13, .LBB0_27
.LBB0_30:                               //  %if.then95
                                        //    in Loop: Header=BB0_29 Depth=2
	add x11 ,  x0 ,  x6
	add x13 ,  x0 ,  x5
	add x19 ,  x0 ,  x24
	bltu x0, x12, .LBB0_27
	jal x0, .LBB0_28
.LBB0_31:                               //  %for.end108
                                        //    in Loop: Header=BB0_16 Depth=1
	bge x0, x26, .LBB0_38
.LBB0_32:                               //  %if.then111
                                        //    in Loop: Header=BB0_16 Depth=1
	xori x15 ,  x26 ,  2
	beq x0, x15, .LBB0_35
.LBB0_33:                               //  %if.then111
                                        //    in Loop: Header=BB0_16 Depth=1
	xori x15 ,  x26 ,  1
	bltu x0, x15, .LBB0_38
.LBB0_34:                               //  %sw.bb
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x15 ,  x22 ,  2&31
	lui x30 ,  8388607&4095
	lui x13 ,  (8388607>>12)&1048575
	jal x0, .LBB0_36
.LBB0_35:                               //  %sw.bb114
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x15 ,  x22 ,  2&31
	lui x30 ,  4194303&4095
	lui x13 ,  (4194303>>12)&1048575
.LBB0_36:                               //  %if.end118
                                        //    in Loop: Header=BB0_16 Depth=1
	add x15 ,  x21 ,  x15
	srli x30 ,  x30 ,  12&31
	lw x14 ,  -4 ( x15 )
	or x13 ,  x13 ,  x30
	and x14 ,  x13 ,  x14
	sw x14 ,  -4 ( x15 )
.LBB0_38:                               //  %if.end118
                                        //    in Loop: Header=BB0_16 Depth=1
	addi x18 ,  x18 ,  1
	xori x15 ,  x25 ,  2
	bltu x0, x15, .LBB0_42
.LBB0_39:                               //  %if.then121
                                        //    in Loop: Header=BB0_16 Depth=1
	lui x25 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x24
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x25
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	beq x0, x19, .LBB0_41
.LBB0_40:                               //  %if.then125
                                        //    in Loop: Header=BB0_16 Depth=1
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	call scalbn
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_41:                               //  %if.end130
                                        //    in Loop: Header=BB0_16 Depth=1
	addi x25 ,  x0 ,  2
.LBB0_42:                               //  %if.end130
                                        //    in Loop: Header=BB0_16 Depth=1
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x24
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	call __nedf2
	bltu x0, x10, .LBB0_58
.LBB0_43:                               //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	bge x15, x22, .LBB0_47
.LBB0_44:                               //  %for.body138.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x10 ,  48 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x2 ,  544
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x24
	add x14 ,  x15 ,  x14
.LBB0_45:                               //  %for.body138
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11 ,  0 ( x14 )
	addi x14 ,  x14 ,  -4
	addi x12 ,  x12 ,  -1
	or x13 ,  x13 ,  x11
	blt x10, x12, .LBB0_45
.LBB0_46:                               //  %for.end142
                                        //    in Loop: Header=BB0_16 Depth=1
	bltu x0, x13, .LBB0_62
.LBB0_47:                               //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x15 ,  36 ( x2 )             //  4-byte Folded Reload
	add x18 ,  x0 ,  x22
.LBB0_48:                               //  %for.cond146
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  -4
	addi x18 ,  x18 ,  1
	add x15 ,  x0 ,  x14
	beq x0, x13, .LBB0_48
.LBB0_49:                               //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	add x14 ,  x22 ,  x20
	bge x0, x20, .LBB0_55
.LBB0_50:                               //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x14 ,  x14 ,  3&31
	addi x13 ,  x2 ,  384
	addi x15 ,  x22 ,  1
	add x19 ,  x14 ,  x13
.LBB0_51:                               //  %for.body160.us
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_52 Depth 3
	add x25 ,  x0 ,  x15
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x25
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x10 ,  0 ( x15 )
	call __floatsidf
	add x15 ,  x20 ,  x22
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x2 ,  384
	add x8 ,  x0 ,  x24
	add x26 ,  x0 ,  x20
	add x27 ,  x0 ,  x19
	add x9 ,  x0 ,  x24
	slli x15 ,  x15 ,  3&31
	add x15 ,  x15 ,  x14
	ori x14 ,  x15 ,  4
	sw x10 ,  0 ( x15 )
	sw x11 ,  0 ( x14 )
.LBB0_52:                               //  %for.body169.us
                                        //    Parent Loop BB0_16 Depth=1
                                        //      Parent Loop BB0_51 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x10 ,  0 ( x22 )
	lw x11 ,  4 ( x22 )
	lw x12 ,  0 ( x27 )
	lw x13 ,  4 ( x27 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	addi x22 ,  x22 ,  8
	addi x27 ,  x27 ,  -8
	addi x26 ,  x26 ,  -1
	bltu x0, x26, .LBB0_52
.LBB0_53:                               //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_51 Depth=2
	slli x15 ,  x25 ,  3&31
	addi x14 ,  x2 ,  64
	add x22 ,  x0 ,  x25
	addi x19 ,  x19 ,  8
	add x15 ,  x15 ,  x14
	sw x9 ,  0 ( x15 )
	ori x15 ,  x15 ,  4
	sw x8 ,  0 ( x15 )
	addi x15 ,  x25 ,  1
	blt x25, x18, .LBB0_51
.LBB0_54:                               //    in Loop: Header=BB0_16 Depth=1
	add x22 ,  x0 ,  x18
	jal x0, .LBB0_16
.LBB0_55:                               //  %for.body160.preheader
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  20 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x22 ,  x15
	slli x15 ,  x15 ,  2&31
	add x8 ,  x15 ,  x13
	lw x13 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x2 ,  72
	add x9 ,  x13 ,  x15
	slli x15 ,  x14 ,  3&31
	addi x14 ,  x2 ,  384
	add x19 ,  x15 ,  x14
.LBB0_56:                               //  %for.body160
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x8 )
	call __floatsidf
	sw x11 ,  4 ( x19 )
	sw x10 ,  0 ( x19 )
	addi x8 ,  x8 ,  4
	sw x0 ,  4 ( x9 )
	sw x0 ,  0 ( x9 )
	addi x9 ,  x9 ,  8
	addi x19 ,  x19 ,  8
	addi x22 ,  x22 ,  1
	blt x22, x18, .LBB0_56
.LBB0_57:                               //    in Loop: Header=BB0_16 Depth=1
	add x22 ,  x0 ,  x18
	jal x0, .LBB0_16
.LBB0_58:                               //  %if.else196
	sub x12 ,  x0 ,  x26
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call scalbn
	add x12 ,  x0 ,  x0
	lui x13 ,  (1097859072>>12)&1048575
	add x19 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	call __gedf2
	bge x10, x0, .LBB0_60
.LBB0_59:                               //  %if.else213
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __fixdfsi
	add x9 ,  x0 ,  x10
	jal x0, .LBB0_61
.LBB0_60:                               //  %if.then201
	add x20 ,  x0 ,  x0
	lui x13 ,  (1047527424>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call __muldf3
	call __fixdfsi
	add x9 ,  x0 ,  x10
	call __floatsidf
	lui x30 ,  -1049624576&4095
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x13 ,  x27 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __adddf3
	call __fixdfsi
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x2 ,  548
	addi x22 ,  x22 ,  1
	lw x26 ,  16 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x15 ,  x14
	sw x10 ,  0 ( x15 )
.LBB0_61:                               //  %if.end217.sink.split
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x2 ,  548
	sw x25 ,  60 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x15 ,  x14
	sw x9 ,  0 ( x15 )
	jal x0, .LBB0_64
.LBB0_62:                               //  %while.cond.preheader
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x2 ,  548
	sw x25 ,  60 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x15 ,  x14
	addi x15 ,  x15 ,  -4
.LBB0_63:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  -4
	addi x22 ,  x22 ,  -1
	addi x26 ,  x26 ,  -24
	add x15 ,  x0 ,  x14
	beq x0, x13, .LBB0_63
.LBB0_64:                               //  %if.end217
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x26
	call scalbn
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	blt x22, x0, .LBB0_73
.LBB0_65:                               //  %for.body222.preheader
	slli x15 ,  x22 ,  2&31
	addi x14 ,  x2 ,  548
	slli x24 ,  x22 ,  3&31
	addi x8 ,  x22 ,  1
	add x9 ,  x0 ,  x0
	lui x21 ,  (1047527424>>12)&1048575
	add x25 ,  x15 ,  x14
	addi x15 ,  x2 ,  64
	add x26 ,  x24 ,  x15
.LBB0_66:                               //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x25 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	sw x11 ,  4 ( x26 )
	sw x10 ,  0 ( x26 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x25 ,  x25 ,  -4
	addi x26 ,  x26 ,  -8
	addi x8 ,  x8 ,  -1
	blt x0, x8, .LBB0_66
.LBB0_67:                               //  %for.cond231.preheader
	blt x22, x0, .LBB0_73
.LBB0_68:                               //  %for.body241.preheader.preheader
	addi x15 ,  x2 ,  64
	add x25 ,  x24 ,  x15
	add x15 ,  x0 ,  x22
	jal x0, .LBB0_70
.LBB0_69:                               //  %for.end249
                                        //    in Loop: Header=BB0_70 Depth=1
	slli x15 ,  x8 ,  3&31
	addi x14 ,  x2 ,  224
	addi x25 ,  x25 ,  -8
	add x15 ,  x15 ,  x14
	sw x20 ,  0 ( x15 )
	ori x15 ,  x15 ,  4
	sw x19 ,  0 ( x15 )
	addi x15 ,  x26 ,  -1
	bge x0, x26, .LBB0_73
.LBB0_70:                               //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_71 Depth 2
	lui x30 ,  PIo2&4095
	add x26 ,  x0 ,  x15
	lui x14 ,  (PIo2>>12)&1048575
	add x15 ,  x0 ,  x9
	add x21 ,  x0 ,  x25
	add x20 ,  x0 ,  x9
	add x19 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	sub x8 ,  x22 ,  x26
	or x24 ,  x14 ,  x30
.LBB0_71:                               //  %for.body241
                                        //    Parent Loop BB0_70 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10 ,  0 ( x24 )
	add x27 ,  x0 ,  x15
	lw x11 ,  4 ( x24 )
	lw x12 ,  0 ( x21 )
	lw x13 ,  4 ( x21 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __adddf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	bge x27, x23, .LBB0_69
.LBB0_72:                               //  %for.body241
                                        //    in Loop: Header=BB0_71 Depth=2
	addi x21 ,  x21 ,  8
	addi x24 ,  x24 ,  8
	addi x15 ,  x27 ,  1
	bltu x27, x8, .LBB0_71
	jal x0, .LBB0_69
.LBB0_73:                               //  %for.end254
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  -1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_85
.LBB0_74:                               //  %for.end254
	lw x27 ,  60 ( x2 )             //  4-byte Folded Reload
	beq x0, x14, .LBB0_88
.LBB0_75:                               //  %for.end254
	xori x15 ,  x14 ,  3
	bltu x0, x15, .LBB0_109
.LBB0_76:                               //  %for.cond311.preheader
	addi x8 ,  x2 ,  224
	bge x0, x22, .LBB0_100
.LBB0_77:                               //  %for.body314.preheader
	slli x15 ,  x22 ,  3&31
	add x26 ,  x0 ,  x22
	add x24 ,  x15 ,  x8
	ori x15 ,  x24 ,  4
	lw x9 ,  0 ( x24 )
	addi x23 ,  x24 ,  -8
	lw x8 ,  0 ( x15 )
	sw x15 ,  56 ( x2 )             //  4-byte Folded Spill
.LBB0_78:                               //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	lw x19 ,  0 ( x23 )
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lw x20 ,  4 ( x23 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	sw x11 ,  12 ( x23 )
	sw x10 ,  8 ( x23 )
	sw x21 ,  0 ( x23 )
	sw x25 ,  4 ( x23 )
	addi x23 ,  x23 ,  -8
	addi x26 ,  x26 ,  -1
	add x9 ,  x0 ,  x21
	add x8 ,  x0 ,  x25
	blt x0, x26, .LBB0_78
.LBB0_79:                               //  %for.cond329.preheader
	add x10 ,  x0 ,  x0
	slti x15 ,  x22 ,  2
	addi x8 ,  x2 ,  224
	add x11 ,  x0 ,  x10
	bltu x0, x15, .LBB0_101
.LBB0_80:                               //  %for.body332.preheader
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  56 ( x2 )             //  4-byte Folded Reload
	addi x23 ,  x24 ,  -8
	slti x19 ,  x0 ,  1
	add x25 ,  x0 ,  x22
	sw x27 ,  60 ( x2 )             //  4-byte Folded Spill
	lw x9 ,  0 ( x24 )
	lw x8 ,  0 ( x15 )
.LBB0_81:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	add x27 ,  x0 ,  x19
	lw x19 ,  0 ( x23 )
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lw x20 ,  4 ( x23 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x19 ,  x0 ,  x27
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x26
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	sw x11 ,  12 ( x23 )
	sw x10 ,  8 ( x23 )
	sw x21 ,  0 ( x23 )
	sw x26 ,  4 ( x23 )
	addi x23 ,  x23 ,  -8
	addi x25 ,  x25 ,  -1
	add x9 ,  x0 ,  x21
	add x8 ,  x0 ,  x26
	blt x19, x25, .LBB0_81
.LBB0_82:                               //  %for.cond347.preheader
	lw x27 ,  60 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x0
	addi x8 ,  x2 ,  224
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x10
	bltu x0, x15, .LBB0_101
.LBB0_83:                               //  %for.body350.preheader
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
.LBB0_84:                               //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x24 )
	lw x13 ,  4 ( x24 )
	call __adddf3
	addi x24 ,  x24 ,  -8
	addi x22 ,  x22 ,  -1
	blt x19, x22, .LBB0_84
	jal x0, .LBB0_101
.LBB0_85:                               //  %sw.bb273
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x0
	blt x22, x0, .LBB0_91
.LBB0_86:                               //  %for.body277.preheader
	slli x15 ,  x22 ,  3&31
	addi x14 ,  x2 ,  224
	addi x19 ,  x22 ,  1
	add x8 ,  x15 ,  x14
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x15
.LBB0_87:                               //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x8 )
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	lw x13 ,  4 ( x8 )
	call __adddf3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	addi x8 ,  x8 ,  -8
	addi x19 ,  x19 ,  -1
	blt x0, x19, .LBB0_87
	jal x0, .LBB0_92
.LBB0_88:                               //  %for.cond256.preheader
	add x8 ,  x0 ,  x0
	blt x22, x0, .LBB0_103
.LBB0_89:                               //  %for.body259.preheader
	add x10 ,  x0 ,  x0
	slli x15 ,  x22 ,  3&31
	addi x14 ,  x2 ,  224
	addi x19 ,  x22 ,  1
	add x9 ,  x15 ,  x14
	add x11 ,  x0 ,  x10
.LBB0_90:                               //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x9 )
	lw x13 ,  4 ( x9 )
	call __adddf3
	addi x9 ,  x9 ,  -8
	addi x19 ,  x19 ,  -1
	blt x0, x19, .LBB0_90
	jal x0, .LBB0_104
.LBB0_91:
	add x15 ,  x0 ,  x9
	add x14 ,  x0 ,  x9
.LBB0_92:                               //  %for.end282
	lui x30 ,  -2147483648&4095
	lui x8 ,  (-2147483648>>12)&1048575
	add x13 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x12 ,  x8 ,  x30
	beq x20, x9, .LBB0_94
.LBB0_93:                               //  %for.end282
	xor x13 ,  x12 ,  x14
.LBB0_94:                               //  %for.end282
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	add x12 ,  x0 ,  x15
	lw x10 ,  224 ( x2 )
	sw x13 ,  4 ( x19 )
	addi x13 ,  x2 ,  224
	sw x15 ,  0 ( x19 )
	ori x13 ,  x13 ,  4
	lw x11 ,  0 ( x13 )
	add x13 ,  x0 ,  x14
	call __subdf3
	bge x0, x22, .LBB0_97
.LBB0_95:                               //  %for.body296.preheader
	addi x9 ,  x2 ,  232
.LBB0_96:                               //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x9 )
	lw x13 ,  4 ( x9 )
	call __adddf3
	addi x9 ,  x9 ,  8
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB0_96
.LBB0_97:                               //  %for.end301
	lui x30 ,  -2147483648&4095
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x8 ,  x30
	beq x20, x14, .LBB0_99
.LBB0_98:                               //  %for.end301
	xor x11 ,  x15 ,  x11
.LBB0_99:                               //  %for.end301
	sw x10 ,  8 ( x19 )
	sw x11 ,  12 ( x19 )
	jal x0, .LBB0_109
.LBB0_100:
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
.LBB0_101:                              //  %for.end355
	ori x15 ,  x8 ,  4
	lw x14 ,  224 ( x2 )
	lw x15 ,  0 ( x15 )
	beq x0, x27, .LBB0_107
.LBB0_102:                              //  %if.else364
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	sw x14 ,  0 ( x13 )
	lui x14 ,  (-2147483648>>12)&1048575
	sw x10 ,  16 ( x13 )
	or x14 ,  x14 ,  x30
	xor x15 ,  x14 ,  x15
	sw x15 ,  4 ( x13 )
	xor x15 ,  x14 ,  x11
	sw x15 ,  20 ( x13 )
	lw x15 ,  236 ( x2 )
	xor x15 ,  x14 ,  x15
	jal x0, .LBB0_108
.LBB0_103:
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
.LBB0_104:                              //  %for.end264
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x27, x8, .LBB0_106
.LBB0_105:                              //  %for.end264
	xor x11 ,  x15 ,  x11
.LBB0_106:                              //  %for.end264
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x10 ,  0 ( x15 )
	sw x11 ,  4 ( x15 )
	jal x0, .LBB0_109
.LBB0_107:                              //  %if.then358
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	sw x15 ,  4 ( x13 )
	sw x14 ,  0 ( x13 )
	sw x10 ,  16 ( x13 )
	sw x11 ,  20 ( x13 )
	lw x15 ,  236 ( x2 )
.LBB0_108:                              //  %sw.epilog374
	sw x15 ,  12 ( x13 )
	lw x15 ,  8 ( x8 )
	sw x15 ,  8 ( x13 )
.LBB0_109:                              //  %sw.epilog374
	andi x10 ,  x18 ,  7
	lw x8 ,  628 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  632 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  636 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  640 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  644 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  648 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  652 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  656 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  660 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  664 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  668 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  672 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  676 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  680
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__kernel_rem_pio2, .Lfunc_end0-__kernel_rem_pio2
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	init_jk,@object         //  @init_jk
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
init_jk:
	.long	2                       //  0x2
	.long	3                       //  0x3
	.long	4                       //  0x4
	.long	6                       //  0x6
	.size	init_jk, 16

	.address_space	0
	.type	PIo2,@object            //  @PIo2
	.section	.rodata,"a",@progbits
	.p2align	3
PIo2:
	.quad	4609753056584663040     //  double 1.5707962512969971
	.quad	4500296887714185216     //  double 7.5497894158615964E-8
	.quad	4393339057296375808     //  double 5.3903025299577648E-15
	.quad	4285399695318056960     //  double 3.2820034158079129E-22
	.quad	4174867106174599168     //  double 1.2706557530806761E-29
	.quad	4069606033725587456     //  double 1.2293330898111133E-36
	.quad	3955147982449410048     //  double 2.7337005381646456E-44
	.quad	3848874662444400640     //  double 2.1674168387780482E-51
	.size	PIo2, 64


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
