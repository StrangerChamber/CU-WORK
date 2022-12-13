	.text
	.file	"qsort.c"
	.globl	qsort                   //  -- Begin function qsort
	.type	qsort,@function
qsort:                                  //  @qsort
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -144
	.cfi_adjust_cfa_offset 144
	sw x9 ,  136 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	sw x19 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x27 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x27 ,  x0 ,  x0
	sw x23 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x8 ,  x0 ,  x13
	add x19 ,  x0 ,  x11
	sw x1 ,  140 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	or x15 ,  x9 ,  x18
	sub x23 ,  x0 ,  x9
	sw x27 ,  12 ( x2 )             //  4-byte Folded Spill
	andi x14 ,  x15 ,  3
	xori x15 ,  x9 ,  4
	sltu x15 ,  x0 ,  x15
	sw x14 ,  16 ( x2 )             //  4-byte Folded Spill
	or x15 ,  x15 ,  x14
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	srli x15 ,  x9 ,  2&31
	sw x15 ,  24 ( x2 )             //  4-byte Folded Spill
	sltiu x15 ,  x19 ,  7
	beq x0, x15, .LBB0_20
	jal x0, .LBB0_2
.LBB0_152:                              //  %if.then209
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x2 ,  28
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	slli x15 ,  x24 ,  3&31
	add x22 ,  x15 ,  x14
	sw x18 ,  0 ( x22 )
	call __udivsi3
	sw x10 ,  4 ( x22 )
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __udivsi3
	addi x24 ,  x24 ,  1
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x20
	add x27 ,  x0 ,  x0
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	sltiu x15 ,  x19 ,  7
	beq x0, x15, .LBB0_20
.LBB0_2:                                //  %for.cond.preheader
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __mulsi3
	bge x9, x10, .LBB0_130
.LBB0_3:                                //  %for.cond8.preheader.preheader
	add x24 ,  x9 ,  x18
	add x21 ,  x10 ,  x18
	add x22 ,  x0 ,  x18
	add x25 ,  x0 ,  x0
	add x26 ,  x0 ,  x24
	bltu x18, x26, .LBB0_5
.LBB0_19:                               //  %for.inc23
                                        //  =>This Inner Loop Header: Depth=1
	add x25 ,  x9 ,  x25
	add x22 ,  x9 ,  x22
	add x26 ,  x9 ,  x26
	bgeu x26, x21, .LBB0_130
.LBB0_4:                                //  %for.cond8.preheader
                                        //    in Loop: Header=BB0_19 Depth=1
	bgeu x18, x26, .LBB0_19
.LBB0_5:                                //  %land.rhs.lr.ph
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_6
.LBB0_9:                                //  %land.rhs.lr.ph.split
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x22
	add x19 ,  x0 ,  x26
	beq x0, x15, .LBB0_10
.LBB0_15:                               //  %land.rhs
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
	add x20 ,  x23 ,  x19
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_19
.LBB0_16:                               //  %do.body7.i.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x9
.LBB0_17:                               //  %do.body7.i
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x27
	add x12 ,  x15 ,  x19
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	lb x11 ,  0 ( x12 )
	lb x10 ,  0 ( x13 )
	sb x10 ,  0 ( x12 )
	sb x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_17
.LBB0_18:                               //  %for.inc
                                        //    in Loop: Header=BB0_15 Depth=1
	add x27 ,  x23 ,  x27
	add x19 ,  x0 ,  x20
	bltu x18, x20, .LBB0_15
	jal x0, .LBB0_19
.LBB0_6:                                //  %land.rhs.us.preheader
	add x27 ,  x0 ,  x0
.LBB0_7:                                //  %land.rhs.us
                                        //  =>This Inner Loop Header: Depth=1
	add x19 ,  x27 ,  x22
	add x20 ,  x27 ,  x26
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_19
.LBB0_8:                                //  %if.then14.us
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x15 ,  0 ( x20 )
	sub x27 ,  x27 ,  x9
	lw x14 ,  0 ( x19 )
	sw x14 ,  0 ( x20 )
	sw x15 ,  0 ( x19 )
	add x15 ,  x27 ,  x26
	bltu x18, x15, .LBB0_7
	jal x0, .LBB0_19
.LBB0_10:                               //  %land.rhs.us839.preheader
	add x20 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
.LBB0_11:                               //  %land.rhs.us839
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
	add x19 ,  x23 ,  x11
	add x10 ,  x0 ,  x19
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_19
.LBB0_12:                               //  %if.then.i.us854
                                        //    in Loop: Header=BB0_11 Depth=1
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x20
.LBB0_13:                               //  %do.body.i.us855
                                        //    Parent Loop BB0_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x18
	add x12 ,  x15 ,  x24
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	lw x11 ,  0 ( x12 )
	lw x10 ,  0 ( x13 )
	sw x10 ,  0 ( x12 )
	sw x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_13
.LBB0_14:                               //  %for.inc.loopexit.us866
                                        //    in Loop: Header=BB0_11 Depth=1
	sub x20 ,  x20 ,  x9
	add x11 ,  x0 ,  x19
	bltu x18, x19, .LBB0_11
	jal x0, .LBB0_19
.LBB0_20:                               //  %if.end26
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_62 Depth 2
                                        //      Child Loop BB0_64 Depth 2
                                        //      Child Loop BB0_85 Depth 2
                                        //        Child Loop BB0_98 Depth 3
                                        //          Child Loop BB0_101 Depth 4
                                        //        Child Loop BB0_92 Depth 3
                                        //          Child Loop BB0_95 Depth 4
                                        //        Child Loop BB0_87 Depth 3
                                        //        Child Loop BB0_117 Depth 3
                                        //        Child Loop BB0_116 Depth 3
                                        //      Child Loop BB0_79 Depth 2
                                        //        Child Loop BB0_82 Depth 3
                                        //      Child Loop BB0_73 Depth 2
                                        //        Child Loop BB0_76 Depth 3
                                        //      Child Loop BB0_68 Depth 2
                                        //      Child Loop BB0_137 Depth 2
                                        //      Child Loop BB0_139 Depth 2
                                        //      Child Loop BB0_146 Depth 2
                                        //      Child Loop BB0_145 Depth 2
	srli x10 ,  x19 ,  1&31
	add x11 ,  x0 ,  x9
	call __mulsi3
	add x21 ,  x10 ,  x18
	xori x15 ,  x19 ,  7
	addi x25 ,  x19 ,  -1
	beq x0, x15, .LBB0_58
.LBB0_21:                               //  %if.then30
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x9
	call __mulsi3
	add x22 ,  x10 ,  x18
	sltiu x15 ,  x19 ,  41
	bltu x0, x15, .LBB0_22
.LBB0_23:                               //  %if.then34
                                        //    in Loop: Header=BB0_20 Depth=1
	srli x10 ,  x19 ,  3&31
	add x11 ,  x0 ,  x9
	sw x25 ,  4 ( x2 )              //  4-byte Folded Spill
	call __mulsi3
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x20 ,  x24 ,  x18
	slli x25 ,  x24 ,  1&31
	add x11 ,  x0 ,  x20
	call_reg, 0 ( x8 )
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	add x25 ,  x25 ,  x18
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	call_reg, 0 ( x8 )
	blt x26, x0, .LBB0_24
.LBB0_27:                               //  %cond.false11.i
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_30
.LBB0_28:                               //  %cond.false15.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	call_reg, 0 ( x8 )
	add x20 ,  x0 ,  x18
	bge x10, x27, .LBB0_29
	jal x0, .LBB0_30
.LBB0_22:                               //    in Loop: Header=BB0_20 Depth=1
	add x20 ,  x0 ,  x18
	jal x0, .LBB0_49
.LBB0_24:                               //  %cond.true.i
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_30
.LBB0_25:                               //  %cond.false.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_29
.LBB0_26:                               //  %cond.false.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x25 ,  x0 ,  x18
.LBB0_29:                               //  %cond.false15.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x20 ,  x0 ,  x25
.LBB0_30:                               //  %med3.exit
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x25 ,  x21 ,  x24
	add x11 ,  x0 ,  x21
	add x10 ,  x0 ,  x25
	call_reg, 0 ( x8 )
	add x26 ,  x24 ,  x21
	add x27 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x26
	call_reg, 0 ( x8 )
	sub x14 ,  x0 ,  x24
	blt x27, x0, .LBB0_31
.LBB0_35:                               //  %cond.false11.i476
                                        //    in Loop: Header=BB0_20 Depth=1
	add x27 ,  x0 ,  x0
	blt x0, x10, .LBB0_40
.LBB0_36:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x24 ,  x0 ,  x14
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_38
.LBB0_37:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	add x25 ,  x0 ,  x26
.LBB0_38:                               //  %cond.false15.i480
                                        //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x25
	jal x0, .LBB0_39
.LBB0_31:                               //  %cond.true.i470
                                        //    in Loop: Header=BB0_20 Depth=1
	add x27 ,  x0 ,  x0
	blt x10, x0, .LBB0_40
.LBB0_32:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x24 ,  x0 ,  x14
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_34
.LBB0_33:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	add x26 ,  x0 ,  x25
.LBB0_34:                               //  %cond.false.i474
                                        //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x26
.LBB0_39:                               //  %med3.exit482
                                        //    in Loop: Header=BB0_20 Depth=1
	add x14 ,  x0 ,  x24
.LBB0_40:                               //  %med3.exit482
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	add x25 ,  x14 ,  x22
	add x11 ,  x0 ,  x25
	sub x24 ,  x22 ,  x15
	add x10 ,  x0 ,  x24
	call_reg, 0 ( x8 )
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x26, x0, .LBB0_41
.LBB0_43:                               //  %cond.false11.i493
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_44
.LBB0_45:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_47
.LBB0_46:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	add x24 ,  x0 ,  x22
	jal x0, .LBB0_47
.LBB0_41:                               //  %cond.true.i487
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_44
.LBB0_42:                               //  %cond.false.i491
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_48
.LBB0_47:                               //  %cond.false15.i497
                                        //    in Loop: Header=BB0_20 Depth=1
	add x22 ,  x0 ,  x24
	jal x0, .LBB0_48
.LBB0_44:                               //    in Loop: Header=BB0_20 Depth=1
	add x22 ,  x0 ,  x25
.LBB0_48:                               //  %if.end51
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_49:                               //  %if.end51
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call_reg, 0 ( x8 )
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x24, x0, .LBB0_50
.LBB0_54:                               //  %cond.false11.i510
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x0, x10, .LBB0_58
.LBB0_55:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_57
.LBB0_56:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	add x20 ,  x0 ,  x22
.LBB0_57:                               //  %cond.false15.i514
                                        //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x20
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_60
	jal x0, .LBB0_59
.LBB0_50:                               //  %cond.true.i504
                                        //    in Loop: Header=BB0_20 Depth=1
	blt x10, x0, .LBB0_58
.LBB0_51:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x22
	call_reg, 0 ( x8 )
	blt x10, x27, .LBB0_53
.LBB0_52:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	add x22 ,  x0 ,  x20
.LBB0_53:                               //  %cond.false.i508
                                        //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x22
.LBB0_58:                               //  %if.end53
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_59
.LBB0_60:                               //  %if.else57
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_63
.LBB0_61:                               //    in Loop: Header=BB0_20 Depth=1
	add x15 ,  x0 ,  x9
	add x14 ,  x0 ,  x18
.LBB0_62:                               //  %do.body7.i534
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x13 ,  0 ( x14 )
	addi x15 ,  x15 ,  -1
	lb x12 ,  0 ( x21 )
	sb x12 ,  0 ( x14 )
	sb x13 ,  0 ( x21 )
	addi x21 ,  x21 ,  1
	addi x14 ,  x14 ,  1
	blt x0, x15, .LBB0_62
	jal x0, .LBB0_65
.LBB0_59:                               //  %if.then55
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  0 ( x18 )
	lw x14 ,  0 ( x21 )
	sw x14 ,  0 ( x18 )
	sw x15 ,  0 ( x21 )
	jal x0, .LBB0_65
.LBB0_63:                               //  %if.then.i518
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x18
.LBB0_64:                               //  %do.body.i526
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x13 ,  0 ( x15 )
	addi x14 ,  x14 ,  -1
	lw x12 ,  0 ( x21 )
	sw x12 ,  0 ( x15 )
	sw x13 ,  0 ( x21 )
	addi x21 ,  x21 ,  4
	addi x15 ,  x15 ,  4
	blt x0, x14, .LBB0_64
.LBB0_65:                               //  %if.end58
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x9
	add x22 ,  x9 ,  x18
	call __mulsi3
	add x24 ,  x10 ,  x18
	add x26 ,  x0 ,  x27
	add x20 ,  x0 ,  x22
	add x25 ,  x0 ,  x22
	add x21 ,  x0 ,  x24
	bgeu x21, x20, .LBB0_67
.LBB0_85:                               //  %while.end
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_98 Depth 3
                                        //          Child Loop BB0_101 Depth 4
                                        //        Child Loop BB0_92 Depth 3
                                        //          Child Loop BB0_95 Depth 4
                                        //        Child Loop BB0_87 Depth 3
                                        //        Child Loop BB0_117 Depth 3
                                        //        Child Loop BB0_116 Depth 3
	bltu x21, x20, .LBB0_104
.LBB0_86:                               //  %land.rhs81.lr.ph
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_87
.LBB0_91:                               //  %land.rhs81.lr.ph.split
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_98
	jal x0, .LBB0_92
.LBB0_103:                              //  %if.end95
                                        //    in Loop: Header=BB0_98 Depth=3
	add x21 ,  x23 ,  x21
	bltu x21, x20, .LBB0_104
.LBB0_98:                               //  %land.rhs81
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_101 Depth 4
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x10, x0, .LBB0_112
.LBB0_99:                               //  %while.body85
                                        //    in Loop: Header=BB0_98 Depth=3
	bltu x0, x10, .LBB0_103
.LBB0_100:                              //  %do.body7.i572.preheader
                                        //    in Loop: Header=BB0_98 Depth=3
	add x15 ,  x0 ,  x27
	add x14 ,  x0 ,  x9
.LBB0_101:                              //  %do.body7.i572
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //        Parent Loop BB0_98 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x13 ,  x15 ,  x24
	add x12 ,  x15 ,  x21
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	lb x11 ,  0 ( x12 )
	lb x10 ,  0 ( x13 )
	sb x10 ,  0 ( x12 )
	sb x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_101
.LBB0_102:                              //  %if.end92
                                        //    in Loop: Header=BB0_98 Depth=3
	add x24 ,  x23 ,  x24
	slti x26 ,  x0 ,  1
	jal x0, .LBB0_103
.LBB0_90:                               //  %if.end95.us
                                        //    in Loop: Header=BB0_87 Depth=3
	add x21 ,  x23 ,  x21
	bltu x21, x20, .LBB0_104
.LBB0_87:                               //  %land.rhs81.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x10, x0, .LBB0_112
.LBB0_88:                               //  %while.body85.us
                                        //    in Loop: Header=BB0_87 Depth=3
	bltu x0, x10, .LBB0_90
.LBB0_89:                               //  %if.then89.us
                                        //    in Loop: Header=BB0_87 Depth=3
	lw x15 ,  0 ( x21 )
	slti x26 ,  x0 ,  1
	lw x14 ,  0 ( x24 )
	sw x14 ,  0 ( x21 )
	sw x15 ,  0 ( x24 )
	add x24 ,  x23 ,  x24
	jal x0, .LBB0_90
.LBB0_97:                               //  %if.end95.us780
                                        //    in Loop: Header=BB0_92 Depth=3
	add x21 ,  x23 ,  x21
	bltu x21, x20, .LBB0_104
.LBB0_92:                               //  %land.rhs81.us748
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_95 Depth 4
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x10, x0, .LBB0_112
.LBB0_93:                               //  %while.body85.us754
                                        //    in Loop: Header=BB0_92 Depth=3
	bltu x0, x10, .LBB0_97
.LBB0_94:                               //  %if.then.i556.us766
                                        //    in Loop: Header=BB0_92 Depth=3
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x27
.LBB0_95:                               //  %do.body.i564.us767
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //        Parent Loop BB0_92 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x13 ,  x15 ,  x24
	add x12 ,  x15 ,  x21
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	lw x11 ,  0 ( x12 )
	lw x10 ,  0 ( x13 )
	sw x10 ,  0 ( x12 )
	sw x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_95
.LBB0_96:                               //  %if.end92.loopexit.us786
                                        //    in Loop: Header=BB0_92 Depth=3
	add x24 ,  x23 ,  x24
	slti x26 ,  x0 ,  1
	jal x0, .LBB0_97
.LBB0_67:                               //  %land.rhs65.lr.ph
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_68
.LBB0_72:                               //  %land.rhs65.lr.ph.split
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_79
	jal x0, .LBB0_73
.LBB0_84:                               //  %if.end77
                                        //    in Loop: Header=BB0_79 Depth=2
	add x20 ,  x9 ,  x20
	bltu x21, x20, .LBB0_85
.LBB0_79:                               //  %land.rhs65
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_82 Depth 3
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x0, x10, .LBB0_85
.LBB0_80:                               //  %while.body
                                        //    in Loop: Header=BB0_79 Depth=2
	bltu x0, x10, .LBB0_84
.LBB0_81:                               //  %do.body7.i553.preheader
                                        //    in Loop: Header=BB0_79 Depth=2
	add x15 ,  x0 ,  x27
	add x14 ,  x0 ,  x9
.LBB0_82:                               //  %do.body7.i553
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_79 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x13 ,  x15 ,  x20
	add x12 ,  x15 ,  x25
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	lb x11 ,  0 ( x12 )
	lb x10 ,  0 ( x13 )
	sb x10 ,  0 ( x12 )
	sb x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_82
.LBB0_83:                               //  %if.end75
                                        //    in Loop: Header=BB0_79 Depth=2
	add x25 ,  x9 ,  x25
	slti x26 ,  x0 ,  1
	jal x0, .LBB0_84
.LBB0_71:                               //  %if.end77.us
                                        //    in Loop: Header=BB0_68 Depth=2
	add x20 ,  x9 ,  x20
	bltu x21, x20, .LBB0_85
.LBB0_68:                               //  %land.rhs65.us
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x0, x10, .LBB0_85
.LBB0_69:                               //  %while.body.us
                                        //    in Loop: Header=BB0_68 Depth=2
	bltu x0, x10, .LBB0_71
.LBB0_70:                               //  %if.then72.us
                                        //    in Loop: Header=BB0_68 Depth=2
	lw x14 ,  0 ( x20 )
	slti x26 ,  x0 ,  1
	lw x15 ,  0 ( x25 )
	sw x14 ,  0 ( x25 )
	add x25 ,  x9 ,  x25
	sw x15 ,  0 ( x20 )
	jal x0, .LBB0_71
.LBB0_78:                               //  %if.end77.us722
                                        //    in Loop: Header=BB0_73 Depth=2
	add x20 ,  x9 ,  x20
	bltu x21, x20, .LBB0_85
.LBB0_73:                               //  %land.rhs65.us690
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_76 Depth 3
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	blt x0, x10, .LBB0_85
.LBB0_74:                               //  %while.body.us696
                                        //    in Loop: Header=BB0_73 Depth=2
	bltu x0, x10, .LBB0_78
.LBB0_75:                               //  %if.then.i537.us708
                                        //    in Loop: Header=BB0_73 Depth=2
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x27
.LBB0_76:                               //  %do.body.i545.us709
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_73 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x13 ,  x15 ,  x20
	add x12 ,  x15 ,  x25
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	lw x11 ,  0 ( x12 )
	lw x10 ,  0 ( x13 )
	sw x10 ,  0 ( x12 )
	sw x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_76
.LBB0_77:                               //  %if.end75.loopexit.us728
                                        //    in Loop: Header=BB0_73 Depth=2
	add x25 ,  x9 ,  x25
	slti x26 ,  x0 ,  1
	jal x0, .LBB0_78
.LBB0_112:                              //  %if.end101
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_113
.LBB0_114:                              //  %if.else105
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x9
	add x14 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	beq x0, x12, .LBB0_115
.LBB0_117:                              //  %do.body7.i591
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x12 ,  0 ( x14 )
	addi x15 ,  x15 ,  -1
	lb x11 ,  0 ( x13 )
	sb x11 ,  0 ( x14 )
	sb x12 ,  0 ( x13 )
	addi x13 ,  x13 ,  1
	addi x14 ,  x14 ,  1
	blt x0, x15, .LBB0_117
	jal x0, .LBB0_118
.LBB0_113:                              //  %if.then103
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x15 ,  0 ( x20 )
	lw x14 ,  0 ( x21 )
	sw x14 ,  0 ( x20 )
	sw x15 ,  0 ( x21 )
	jal x0, .LBB0_118
.LBB0_115:                              //  %if.then.i575
                                        //    in Loop: Header=BB0_85 Depth=2
	lw x13 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x21
	add x14 ,  x0 ,  x20
.LBB0_116:                              //  %do.body.i583
                                        //    Parent Loop BB0_20 Depth=1
                                        //      Parent Loop BB0_85 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x12 ,  0 ( x14 )
	addi x13 ,  x13 ,  -1
	lw x11 ,  0 ( x15 )
	sw x11 ,  0 ( x14 )
	sw x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  4
	blt x0, x13, .LBB0_116
.LBB0_118:                              //  %if.end106
                                        //    in Loop: Header=BB0_85 Depth=2
	add x21 ,  x23 ,  x21
	add x20 ,  x9 ,  x20
	slti x26 ,  x0 ,  1
	bgeu x21, x20, .LBB0_67
	jal x0, .LBB0_85
.LBB0_104:                              //  %for.end110
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __mulsi3
	add x27 ,  x10 ,  x18
	beq x0, x26, .LBB0_105
.LBB0_132:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x14 ,  x25 ,  x18
	sub x19 ,  x20 ,  x25
	blt x14, x19, .LBB0_134
.LBB0_133:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	add x14 ,  x0 ,  x19
.LBB0_134:                              //  %if.end146
                                        //    in Loop: Header=BB0_20 Depth=1
	beq x0, x14, .LBB0_140
.LBB0_135:                              //  %if.then166
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x13 ,  16 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x20 ,  x14
	beq x0, x13, .LBB0_138
.LBB0_136:                              //    in Loop: Header=BB0_20 Depth=1
	add x13 ,  x0 ,  x18
.LBB0_137:                              //  %do.body7.i629
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x12 ,  0 ( x13 )
	addi x14 ,  x14 ,  -1
	lb x11 ,  0 ( x15 )
	sb x11 ,  0 ( x13 )
	sb x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	addi x13 ,  x13 ,  1
	blt x0, x14, .LBB0_137
	jal x0, .LBB0_140
.LBB0_138:                              //  %if.then.i613
                                        //    in Loop: Header=BB0_20 Depth=1
	srli x14 ,  x14 ,  2&31
	add x13 ,  x0 ,  x18
.LBB0_139:                              //  %do.body.i621
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x13 )
	addi x14 ,  x14 ,  -1
	lw x11 ,  0 ( x15 )
	sw x11 ,  0 ( x13 )
	sw x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	addi x13 ,  x13 ,  4
	blt x0, x14, .LBB0_139
.LBB0_140:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x15 ,  x27 ,  x24
	sub x14 ,  x15 ,  x9
	sub x15 ,  x24 ,  x21
	add x13 ,  x0 ,  x15
	bltu x15, x14, .LBB0_142
.LBB0_141:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	add x13 ,  x0 ,  x14
.LBB0_142:                              //  %if.end169
                                        //    in Loop: Header=BB0_20 Depth=1
	beq x0, x13, .LBB0_147
.LBB0_143:                              //  %if.then190
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x12 ,  16 ( x2 )             //  4-byte Folded Reload
	sub x14 ,  x27 ,  x13
	beq x0, x12, .LBB0_144
.LBB0_146:                              //  %do.body7.i648
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x12 ,  0 ( x20 )
	addi x13 ,  x13 ,  -1
	lb x11 ,  0 ( x14 )
	sb x11 ,  0 ( x20 )
	sb x12 ,  0 ( x14 )
	addi x14 ,  x14 ,  1
	addi x20 ,  x20 ,  1
	blt x0, x13, .LBB0_146
	jal x0, .LBB0_147
.LBB0_144:                              //  %if.then.i632
                                        //    in Loop: Header=BB0_20 Depth=1
	srli x13 ,  x13 ,  2&31
.LBB0_145:                              //  %do.body.i640
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12 ,  0 ( x20 )
	addi x13 ,  x13 ,  -1
	lw x11 ,  0 ( x14 )
	sw x11 ,  0 ( x20 )
	sw x12 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	addi x20 ,  x20 ,  4
	blt x0, x13, .LBB0_145
.LBB0_147:                              //  %if.end193
                                        //    in Loop: Header=BB0_20 Depth=1
	sub x14 ,  x27 ,  x15
	bltu x19, x15, .LBB0_148
.LBB0_149:                              //  %if.end193
                                        //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x15
	add x20 ,  x0 ,  x14
	bgeu x9, x21, .LBB0_154
.LBB0_151:                              //  %if.then207
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x14 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  7
	bgeu x15, x14, .LBB0_152
.LBB0_153:                              //  %if.else215
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __udivsi3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call qsort
	bltu x9, x19, .LBB0_155
	jal x0, .LBB0_130
.LBB0_148:                              //    in Loop: Header=BB0_20 Depth=1
	add x21 ,  x0 ,  x19
	add x20 ,  x0 ,  x18
	add x19 ,  x0 ,  x15
	add x18 ,  x0 ,  x14
	bltu x9, x21, .LBB0_151
.LBB0_154:                              //  %if.end218
                                        //    in Loop: Header=BB0_20 Depth=1
	bgeu x9, x19, .LBB0_130
.LBB0_155:                              //  %if.then220
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __udivsi3
	add x19 ,  x0 ,  x10
	add x27 ,  x0 ,  x0
	sltiu x15 ,  x19 ,  7
	beq x0, x15, .LBB0_20
	jal x0, .LBB0_2
.LBB0_105:                              //  %for.cond114.preheader
	bge x9, x10, .LBB0_130
.LBB0_106:                              //  %for.cond119.preheader.preheader
	add x21 ,  x9 ,  x18
	add x24 ,  x0 ,  x0
	add x25 ,  x0 ,  x18
	bltu x18, x22, .LBB0_108
.LBB0_129:                              //  %for.inc143
                                        //  =>This Inner Loop Header: Depth=1
	add x24 ,  x9 ,  x24
	add x25 ,  x9 ,  x25
	add x22 ,  x9 ,  x22
	bgeu x22, x27, .LBB0_130
.LBB0_107:                              //  %for.cond119.preheader
                                        //    in Loop: Header=BB0_129 Depth=1
	bgeu x18, x22, .LBB0_129
.LBB0_108:                              //  %land.rhs121.lr.ph
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_109
.LBB0_119:                              //  %land.rhs121.lr.ph.split
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x0 ,  x25
	add x19 ,  x0 ,  x22
	beq x0, x15, .LBB0_120
.LBB0_125:                              //  %land.rhs121
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_127 Depth 2
	add x20 ,  x23 ,  x19
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_129
.LBB0_126:                              //  %do.body7.i610.preheader
                                        //    in Loop: Header=BB0_125 Depth=1
	add x15 ,  x0 ,  x0
	add x14 ,  x0 ,  x9
.LBB0_127:                              //  %do.body7.i610
                                        //    Parent Loop BB0_125 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x26
	add x12 ,  x15 ,  x19
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  -1
	lb x11 ,  0 ( x12 )
	lb x10 ,  0 ( x13 )
	sb x10 ,  0 ( x12 )
	sb x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_127
.LBB0_128:                              //  %for.inc139
                                        //    in Loop: Header=BB0_125 Depth=1
	add x26 ,  x23 ,  x26
	add x19 ,  x0 ,  x20
	bltu x18, x20, .LBB0_125
	jal x0, .LBB0_129
.LBB0_109:                              //  %land.rhs121.us.preheader
	add x26 ,  x0 ,  x0
.LBB0_110:                              //  %land.rhs121.us
                                        //  =>This Inner Loop Header: Depth=1
	add x19 ,  x26 ,  x25
	add x20 ,  x26 ,  x22
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_129
.LBB0_111:                              //  %if.then129.us
                                        //    in Loop: Header=BB0_110 Depth=1
	lw x15 ,  0 ( x20 )
	sub x26 ,  x26 ,  x9
	lw x14 ,  0 ( x19 )
	sw x14 ,  0 ( x20 )
	sw x15 ,  0 ( x19 )
	add x15 ,  x26 ,  x22
	bltu x18, x15, .LBB0_110
	jal x0, .LBB0_129
.LBB0_120:                              //  %land.rhs121.us800.preheader
	add x20 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
.LBB0_121:                              //  %land.rhs121.us800
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_123 Depth 2
	add x19 ,  x23 ,  x11
	add x10 ,  x0 ,  x19
	call_reg, 0 ( x8 )
	bge x0, x10, .LBB0_129
.LBB0_122:                              //  %if.then.i594.us815
                                        //    in Loop: Header=BB0_121 Depth=1
	lw x14 ,  24 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x20
.LBB0_123:                              //  %do.body.i602.us816
                                        //    Parent Loop BB0_121 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13 ,  x15 ,  x18
	add x12 ,  x15 ,  x21
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  -1
	lw x11 ,  0 ( x12 )
	lw x10 ,  0 ( x13 )
	sw x10 ,  0 ( x12 )
	sw x11 ,  0 ( x13 )
	blt x0, x14, .LBB0_123
.LBB0_124:                              //  %for.inc139.loopexit.us827
                                        //    in Loop: Header=BB0_121 Depth=1
	sub x20 ,  x20 ,  x9
	add x11 ,  x0 ,  x19
	bltu x18, x19, .LBB0_121
	jal x0, .LBB0_129
.LBB0_130:                              //  %pop
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_156
.LBB0_131:                              //  %if.then224
	addi x15 ,  x15 ,  -1
	addi x14 ,  x2 ,  28
	add x27 ,  x0 ,  x0
	sw x15 ,  12 ( x2 )             //  4-byte Folded Spill
	slli x15 ,  x15 ,  3&31
	add x15 ,  x15 ,  x14
	lw x19 ,  4 ( x15 )
	lw x18 ,  0 ( x15 )
	sltiu x15 ,  x19 ,  7
	beq x0, x15, .LBB0_20
	jal x0, .LBB0_2
.LBB0_156:                              //  %if.end229
	lw x8 ,  92 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  136 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  140 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  144
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	qsort, .Lfunc_end0-qsort
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
