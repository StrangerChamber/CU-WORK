	.text
	.file	"strftime.c"
	.globl	strftime                //  -- Begin function strftime
	.type	strftime,@function
strftime:                               //  @strftime
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __strftime
.Lfunc_end0:
	.size	strftime, .Lfunc_end0-strftime
	.cfi_endproc
                                        //  -- End function
	.type	__strftime,@function    //  -- Begin function __strftime
__strftime:                             //  @__strftime
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -152
	.cfi_adjust_cfa_offset 152
	lui x30 ,  _C_time_locale&4095
	lui x15 ,  (_C_time_locale>>12)&1048575
	sw x23 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x9 ,  144 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x0
	sw x22 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x24 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x8 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	sw x25 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	addi x10 ,  x0 ,  8
	addi x11 ,  x2 ,  68
	addi x6 ,  x0 ,  10
	addi x22 ,  x0 ,  85
	lui x24 ,  (JTI1_0>>12)&1048575
	sw x1 ,  148 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  136 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x26 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	srli x30 ,  x30 ,  12&31
	add x25 ,  x0 ,  x18
	addi x27 ,  x9 ,  -1
	add x29 ,  x0 ,  x18
	or x15 ,  x15 ,  x30
	lw x7 ,  160 ( x15 )
	lw x23 ,  228 ( x15 )
	lw x16 ,  156 ( x15 )
	lw x17 ,  152 ( x15 )
.LBB1_1:                                //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_2 Depth 2
                                        //      Child Loop BB1_42 Depth 2
                                        //      Child Loop BB1_99 Depth 2
                                        //      Child Loop BB1_94 Depth 2
                                        //      Child Loop BB1_37 Depth 2
                                        //      Child Loop BB1_55 Depth 2
                                        //      Child Loop BB1_51 Depth 2
	add x19 ,  x25 ,  x8
	add x20 ,  x0 ,  x18
	add x15 ,  x20 ,  x12
	lbu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB1_2
.LBB1_230:                              //  %for.cond
	jal x0, .LBB1_5
.LBB1_2:                                //  %while.cond
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x26 ,  x20 ,  x25
	xori x5 ,  x14 ,  37
	beq x0, x5, .LBB1_6
.LBB1_3:                                //  %while.body
                                        //    in Loop: Header=BB1_2 Depth=2
	bltu x26, x27, .LBB1_4
.LBB1_231:                              //  %while.body
	jal x0, .LBB1_229
.LBB1_4:                                //  %if.then
                                        //    in Loop: Header=BB1_2 Depth=2
	add x15 ,  x20 ,  x19
	addi x20 ,  x20 ,  1
	sb x14 ,  0 ( x15 )
	add x15 ,  x20 ,  x12
	lbu x14 ,  0 ( x15 )
	bltu x0, x14, .LBB1_2
	jal x0, .LBB1_5
.LBB1_6:                                //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	lbu x12 ,  1 ( x15 )
	xori x14 ,  x12 ,  43
	beq x0, x14, .LBB1_8
.LBB1_7:                                //  %if.end9
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x14 ,  x12 ,  48
	bltu x0, x14, .LBB1_9
.LBB1_8:                                //  %if.then17
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x5 ,  x15 ,  2
	lbu x15 ,  2 ( x15 )
	jal x0, .LBB1_10
.LBB1_9:                                //  %if.end9.if.end19_crit_edge
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x5 ,  x15 ,  1
	add x15 ,  x0 ,  x12
	add x12 ,  x0 ,  x18
.LBB1_10:                               //  %if.end19
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x15 ,  -49
	sw x29 ,  64 ( x2 )             //  4-byte Folded Spill
	sw x12 ,  52 ( x2 )             //  4-byte Folded Spill
	andi x14 ,  x14 ,  255
	bltu x10, x14, .LBB1_13
.LBB1_11:                               //  %if.then26
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x5
	add x12 ,  x0 ,  x6
	sw x27 ,  60 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x8 ,  48 ( x2 )              //  4-byte Folded Spill
	add x8 ,  x0 ,  x9
	add x9 ,  x0 ,  x18
	add x21 ,  x0 ,  x13
	add x18 ,  x0 ,  x7
	add x27 ,  x0 ,  x16
	add x23 ,  x0 ,  x17
	call strtoul
	lw x5 ,  68 ( x2 )
	add x17 ,  x0 ,  x23
	add x16 ,  x0 ,  x27
	add x7 ,  x0 ,  x18
	add x18 ,  x0 ,  x9
	add x9 ,  x0 ,  x8
	add x13 ,  x0 ,  x21
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  60 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  0 ( x5 )
	xori x14 ,  x15 ,  79
	beq x0, x14, .LBB1_14
.LBB1_12:                               //  %if.end28
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x15 ,  x15 ,  69
	beq x0, x15, .LBB1_14
	jal x0, .LBB1_15
.LBB1_13:                               //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x18
	xori x14 ,  x15 ,  79
	bltu x0, x14, .LBB1_12
.LBB1_14:                               //  %if.then38
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x5 ,  x5 ,  1
.LBB1_15:                               //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	lb x14 ,  0 ( x5 )
	addi x15 ,  x14 ,  -37
	bgeu x22, x15, .LBB1_16
.LBB1_232:                              //  %if.end41
	jal x0, .LBB1_229
.LBB1_16:                               //  %if.end41
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  JTI1_0&4095
	andi x21 ,  x14 ,  255
	slli x15 ,  x15 ,  2&31
	add x22 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x14 ,  x24 ,  x30
	add x24 ,  x0 ,  x7
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_17:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	lui x14 ,  (.str.6>>12)&1048575
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	addi x12 ,  x0 ,  107
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.6&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x21, x12, .LBB1_19
.LBB1_18:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_19:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  8 ( x13 )
	jal x0, .LBB1_20
.LBB1_26:                               //  %sw.bb447
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  8 ( x13 )
	addi x10 ,  x0 ,  12
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB1_29
.LBB1_27:                               //  %sw.bb447
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x14 ,  x15 ,  12
	beq x0, x14, .LBB1_29
.LBB1_28:                               //  %cond.false456
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  12
	add x10 ,  x0 ,  x15
	sw x8 ,  48 ( x2 )              //  4-byte Folded Spill
	add x8 ,  x0 ,  x9
	add x9 ,  x0 ,  x18
	add x22 ,  x0 ,  x13
	add x18 ,  x0 ,  x7
	add x26 ,  x0 ,  x16
	add x24 ,  x0 ,  x17
	add x23 ,  x0 ,  x5
	call __modsi3
	add x7 ,  x0 ,  x18
	add x18 ,  x0 ,  x9
	add x9 ,  x0 ,  x8
	lw x8 ,  48 ( x2 )              //  4-byte Folded Reload
	add x5 ,  x0 ,  x23
	add x17 ,  x0 ,  x24
	add x16 ,  x0 ,  x26
	add x13 ,  x0 ,  x22
.LBB1_29:                               //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.5>>12)&1048575
	add x23 ,  x0 ,  x13
	add x22 ,  x0 ,  x5
	add x24 ,  x0 ,  x17
	add x26 ,  x0 ,  x16
	addi x13 ,  x0 ,  73
	sw x7 ,  36 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.5&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x21, x13, .LBB1_31
.LBB1_30:                               //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_31:                               //  %cond.end459
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x15 ,  x9 ,  x25
	sw x14 ,  8 ( x2 )
	sw x10 ,  12 ( x2 )
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	bge x10, x0, .LBB1_32
.LBB1_233:                              //  %cond.end459
	jal x0, .LBB1_229
.LBB1_32:                               //  %cleanup476
                                        //    in Loop: Header=BB1_1 Depth=1
	add x13 ,  x0 ,  x23
	lw x7 ,  36 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x16 ,  x0 ,  x26
	add x17 ,  x0 ,  x24
	add x5 ,  x0 ,  x22
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	bgeu x25, x9, .LBB1_234
.LBB1_235:                              //  %cleanup476
                                        //    in Loop: Header=BB1_1 Depth=1
	jal x0, .LBB1_222
.LBB1_234:                              //  %cleanup476
	jal x0, .LBB1_229
.LBB1_33:                               //  %sw.bb527
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  8 ( x13 )
	lui x30 ,  _C_time_locale&4095
	addi x14 ,  x0 ,  11
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x17
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	slt x15 ,  x14 ,  x15
	lui x14 ,  (_C_time_locale>>12)&1048575
	slli x15 ,  x15 ,  2&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x22 ,  164 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	beq x0, x10, .LBB1_102
.LBB1_34:                               //  %for.body537.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x26, x27, .LBB1_37
	jal x0, .LBB1_229
.LBB1_35:                               //  %cond.end561
                                        //    in Loop: Header=BB1_37 Depth=2
	add x14 ,  x26 ,  x8
	addi x22 ,  x22 ,  1
	addi x26 ,  x26 ,  1
	addi x10 ,  x10 ,  -1
	sb x15 ,  0 ( x14 )
	beq x0, x10, .LBB1_101
.LBB1_36:                               //  %for.body537
                                        //    in Loop: Header=BB1_37 Depth=2
	bltu x26, x27, .LBB1_37
.LBB1_236:                              //  %for.body537
	jal x0, .LBB1_229
.LBB1_37:                               //  %if.then541
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x14 ,  0 ( x5 )
	lbu x15 ,  0 ( x22 )
	xori x14 ,  x14 ,  80
	bltu x0, x14, .LBB1_35
.LBB1_38:                               //  %cond.true545
                                        //    in Loop: Header=BB1_37 Depth=2
	lui x30 ,  _ctype_&4095
	lui x14 ,  (_ctype_>>12)&1048575
	slti x12 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x14 ,  x15 ,  x14
	lbu x14 ,  1 ( x14 )
	andi x14 ,  x14 ,  3
	bne x14, x12, .LBB1_35
.LBB1_39:                               //    in Loop: Header=BB1_37 Depth=2
	addi x15 ,  x15 ,  32
	jal x0, .LBB1_35
.LBB1_40:                               //  %sw.bb78
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  16 ( x13 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x17
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x22 ,  0 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	beq x0, x10, .LBB1_102
.LBB1_41:                               //  %for.body84.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
.LBB1_42:                               //  %for.body84
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_43
.LBB1_237:                              //  %for.body84
	jal x0, .LBB1_229
.LBB1_43:                               //  %if.then88
                                        //    in Loop: Header=BB1_42 Depth=2
	lb x14 ,  0 ( x22 )
	add x15 ,  x26 ,  x8
	addi x22 ,  x22 ,  1
	addi x26 ,  x26 ,  1
	addi x10 ,  x10 ,  -1
	sb x14 ,  0 ( x15 )
	bltu x0, x10, .LBB1_42
	jal x0, .LBB1_101
.LBB1_44:                               //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	lui x14 ,  (.str.5>>12)&1048575
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	addi x12 ,  x0 ,  100
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.5&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x21, x12, .LBB1_46
.LBB1_45:                               //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_46:                               //  %sw.bb180
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  12 ( x13 )
.LBB1_20:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	add x21 ,  x0 ,  x13
	jal x0, .LBB1_21
.LBB1_47:                               //  %sw.bb999
                                        //    in Loop: Header=BB1_1 Depth=1
	bltu x26, x27, .LBB1_48
.LBB1_238:                              //  %sw.bb999
	jal x0, .LBB1_229
.LBB1_48:                               //  %if.then1003
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x20 ,  x19
	addi x14 ,  x0 ,  37
	jal x0, .LBB1_184
.LBB1_49:                               //  %sw.bb58
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  24 ( x13 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x17
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x22 ,  124 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	beq x0, x10, .LBB1_102
.LBB1_50:                               //  %for.body65.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
.LBB1_51:                               //  %for.body65
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_52
.LBB1_239:                              //  %for.body65
	jal x0, .LBB1_229
.LBB1_52:                               //  %if.then69
                                        //    in Loop: Header=BB1_51 Depth=2
	lb x14 ,  0 ( x22 )
	add x15 ,  x26 ,  x8
	addi x22 ,  x22 ,  1
	addi x26 ,  x26 ,  1
	addi x10 ,  x10 ,  -1
	sb x14 ,  0 ( x15 )
	bltu x0, x10, .LBB1_51
	jal x0, .LBB1_101
.LBB1_53:                               //  %sw.bb97
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  16 ( x13 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x17
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x22 ,  48 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	beq x0, x10, .LBB1_102
.LBB1_54:                               //  %for.body104.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
.LBB1_55:                               //  %for.body104
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bltu x26, x27, .LBB1_56
.LBB1_240:                              //  %for.body104
	jal x0, .LBB1_229
.LBB1_56:                               //  %if.then108
                                        //    in Loop: Header=BB1_55 Depth=2
	lb x14 ,  0 ( x22 )
	add x15 ,  x26 ,  x8
	addi x22 ,  x22 ,  1
	addi x26 ,  x26 ,  1
	addi x10 ,  x10 ,  -1
	sb x14 ,  0 ( x15 )
	bltu x0, x10, .LBB1_55
	jal x0, .LBB1_101
.LBB1_57:                               //  %sw.bb136
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x22 ,  20 ( x13 )
	add x26 ,  x0 ,  x10
	add x24 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	blt x22, x0, .LBB1_148
.LBB1_58:                               //  %cond.true
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x22
	call __udivsi3
	addi x10 ,  x10 ,  19
	jal x0, .LBB1_149
.LBB1_59:                               //  %sw.bb196
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x15 ,  x9 ,  x25
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	lw x23 ,  12 ( x13 )
	add x19 ,  x20 ,  x19
	add x24 ,  x0 ,  x16
	add x26 ,  x0 ,  x7
	sw x13 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sub x21 ,  x15 ,  x20
	lw x15 ,  16 ( x13 )
	lw x10 ,  20 ( x13 )
	addi x22 ,  x15 ,  1
	bge x10, x0, .LBB1_61
.LBB1_60:                               //  %cond.false207
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x10 ,  1900
	call abs
.LBB1_61:                               //  %cond.end212
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	sw x23 ,  16 ( x2 )
	sw x10 ,  20 ( x2 )
	sw x22 ,  12 ( x2 )
	sw x21 ,  4 ( x2 )
	sw x19 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_62:                               //  %lor.lhs.false217
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x13 ,  52 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x7 ,  x0 ,  x26
	add x16 ,  x0 ,  x24
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_195
.LBB1_63:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x14 ,  52 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	bne x14, x22, .LBB1_65
.LBB1_64:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  10
	addi x14 ,  x0 ,  43
	add x10 ,  x0 ,  x15
.LBB1_65:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  37
	addi x23 ,  x2 ,  70
	sb x14 ,  69 ( x2 )
	sb x15 ,  68 ( x2 )
	addi x15 ,  x0 ,  6
	bltu x15, x10, .LBB1_67
.LBB1_66:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x15
.LBB1_67:                               //  %sw.bb223
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x10 ,  -6
	add x26 ,  x0 ,  x16
	add x24 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	add x10 ,  x0 ,  x23
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB1_197
.LBB1_68:                               //  %if.then241
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.8&4095
	lui x14 ,  (.str.8>>12)&1048575
	sw x15 ,  12 ( x2 )
	addi x15 ,  x0 ,  30
	sw x23 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  4 ( x2 )
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	call sniprintf
	blt x22, x10, .LBB1_196
.LBB1_69:                               //  %if.then241
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x23
	jal x0, .LBB1_197
.LBB1_70:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x10 ,  48 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x13
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x7 ,  36 ( x2 )              //  4-byte Folded Spill
	lw x24 ,  20 ( x13 )
	add x26 ,  x0 ,  x13
	call iso_year_adjust
	add x22 ,  x0 ,  x10
	blt x24, x0, .LBB1_162
.LBB1_71:                               //  %cond.end332.thread
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x24
	add x21 ,  x0 ,  x26
	call __udivsi3
	addi x26 ,  x10 ,  19
	add x10 ,  x0 ,  x24
	addi x11 ,  x0 ,  100
	call __modsi3
	add x13 ,  x0 ,  x21
	bge x22, x0, .LBB1_72
	jal x0, .LBB1_165
.LBB1_74:                               //  %sw.bb506
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  4 ( x13 )
	jal x0, .LBB1_75
.LBB1_76:                               //  %sw.bb571
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  4 ( x13 )
	lui x30 ,  .str.12&4095
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	lw x14 ,  8 ( x13 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x2 )
	lui x15 ,  (.str.12>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x14 ,  12 ( x2 )
	jal x0, .LBB1_77
.LBB1_78:                               //  %sw.bb649
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  0 ( x13 )
.LBB1_75:                               //  %sw.bb506
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x14 ,  (.str.5>>12)&1048575
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
.LBB1_21:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x14 ,  8 ( x2 )
	jal x0, .LBB1_22
.LBB1_79:                               //  %sw.bb671
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  8 ( x13 )
	lui x30 ,  .str.14&4095
	add x21 ,  x0 ,  x13
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	lw x14 ,  0 ( x13 )
	srli x30 ,  x30 ,  12&31
	lw x13 ,  4 ( x13 )
	sw x15 ,  12 ( x2 )
	lui x15 ,  (.str.14>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x14 ,  20 ( x2 )
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sw x13 ,  16 ( x2 )
	jal x0, .LBB1_24
.LBB1_80:                               //  %sw.bb706
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  24 ( x13 )
	addi x11 ,  x0 ,  7
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	lw x14 ,  28 ( x13 )
	sub x15 ,  x14 ,  x15
	addi x10 ,  x15 ,  7
	call __divsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
.LBB1_77:                               //  %sw.bb571
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x15 ,  8 ( x2 )
	jal x0, .LBB1_23
.LBB1_81:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x13
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x7 ,  36 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x13
	call iso_year_adjust
	add x14 ,  x0 ,  x26
	add x23 ,  x0 ,  x10
	add x22 ,  x0 ,  x0
	lw x15 ,  24 ( x14 )
	beq x15, x22, .LBB1_140
.LBB1_82:                               //  %sw.bb723
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x21 ,  x15 ,  -1
	bge x0, x23, .LBB1_83
.LBB1_141:                              //    in Loop: Header=BB1_1 Depth=1
	slti x10 ,  x0 ,  1
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_219
.LBB1_85:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  24 ( x13 )
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	add x22 ,  x0 ,  x0
	add x24 ,  x0 ,  x17
	add x26 ,  x0 ,  x16
	add x23 ,  x0 ,  x7
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	beq x15, x22, .LBB1_142
.LBB1_86:                               //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x14 ,  x0 ,  1
	sub x15 ,  x14 ,  x15
	jal x0, .LBB1_143
.LBB1_87:                               //  %sw.bb123
                                        //    in Loop: Header=BB1_1 Depth=1
	add x24 ,  x0 ,  x17
	jal x0, .LBB1_126
.LBB1_88:                               //  %sw.bb867
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  20 ( x13 )
	addi x14 ,  x0 ,  -1901
	blt x14, x15, .LBB1_145
.LBB1_89:                               //  %if.then879
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x0 ,  45
	lw x6 ,  52 ( x2 )              //  4-byte Folded Reload
	sb x14 ,  68 ( x2 )
	addi x14 ,  x0 ,  -1900
	sub x15 ,  x14 ,  x15
	addi x14 ,  x2 ,  69
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
	slti x15 ,  x0 ,  1
	jal x0, .LBB1_207
.LBB1_90:                               //  %sw.bb962
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  32 ( x13 )
	blt x15, x0, .LBB1_139
.LBB1_91:                               //  %if.then966
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	call __tz_lock
	lw x24 ,  64 ( x2 )             //  4-byte Folded Reload
	bltu x0, x24, .LBB1_93
.LBB1_92:                               //  %if.then968
                                        //    in Loop: Header=BB1_1 Depth=1
	call _tzset_unlocked
	slti x24 ,  x0 ,  1
.LBB1_93:                               //  %if.then971
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  32 ( x19 )
	lui x30 ,  _tzname&4095
	lui x14 ,  (_tzname>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x22 ,  0 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	add x25 ,  x0 ,  x26
	beq x0, x10, .LBB1_96
.LBB1_94:                               //  %for.body981
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgeu x25, x27, .LBB1_228
.LBB1_95:                               //  %if.then985
                                        //    in Loop: Header=BB1_94 Depth=2
	lb x14 ,  0 ( x22 )
	add x15 ,  x25 ,  x8
	addi x22 ,  x22 ,  1
	addi x25 ,  x25 ,  1
	addi x10 ,  x10 ,  -1
	sb x14 ,  0 ( x15 )
	bltu x0, x10, .LBB1_94
.LBB1_96:                               //  %for.end993
                                        //    in Loop: Header=BB1_1 Depth=1
	call __tz_unlock
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	add x29 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_222
.LBB1_97:                               //  %sw.bb
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  24 ( x13 )
	lui x30 ,  _C_time_locale&4095
	lui x14 ,  (_C_time_locale>>12)&1048575
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x17
	add x21 ,  x0 ,  x16
	add x20 ,  x0 ,  x7
	add x19 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x22 ,  96 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	beq x0, x10, .LBB1_102
.LBB1_98:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
.LBB1_99:                               //  %for.body
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgeu x26, x27, .LBB1_229
.LBB1_100:                              //  %if.then51
                                        //    in Loop: Header=BB1_99 Depth=2
	lb x14 ,  0 ( x22 )
	add x15 ,  x26 ,  x8
	addi x22 ,  x22 ,  1
	addi x26 ,  x26 ,  1
	addi x10 ,  x10 ,  -1
	sb x14 ,  0 ( x15 )
	bltu x0, x10, .LBB1_99
.LBB1_101:                              //    in Loop: Header=BB1_1 Depth=1
	add x25 ,  x0 ,  x26
	jal x0, .LBB1_222
.LBB1_102:                              //    in Loop: Header=BB1_1 Depth=1
	add x25 ,  x0 ,  x26
	add x13 ,  x0 ,  x19
	add x7 ,  x0 ,  x20
	add x16 ,  x0 ,  x21
	add x17 ,  x0 ,  x24
	jal x0, .LBB1_131
.LBB1_103:                              //  %sw.bb262
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x13
	add x26 ,  x0 ,  x23
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	add x24 ,  x0 ,  x7
	add x23 ,  x0 ,  x13
	call iso_year_adjust
	add x22 ,  x0 ,  x10
	lw x10 ,  20 ( x23 )
	add x21 ,  x0 ,  x23
	bge x10, x0, .LBB1_105
.LBB1_104:                              //  %cond.false270
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x10 ,  1900
	call abs
.LBB1_105:                              //  %cond.end275
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	add x23 ,  x0 ,  x26
	blt x22, x0, .LBB1_175
.LBB1_106:                              //  %if.else284
                                        //    in Loop: Header=BB1_1 Depth=1
	add x13 ,  x0 ,  x21
	beq x0, x22, .LBB1_201
.LBB1_107:                              //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  -1
	addi x14 ,  x0 ,  -1900
	lw x13 ,  20 ( x13 )
	bge x13, x14, .LBB1_176
	jal x0, .LBB1_202
.LBB1_108:                              //  %sw.bb479
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  28 ( x13 )
	lui x30 ,  .str.11&4095
	lui x14 ,  (.str.11>>12)&1048575
	jal x0, .LBB1_109
.LBB1_110:                              //  %sw.bb492
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  16 ( x13 )
	lui x30 ,  .str.5&4095
	lui x14 ,  (.str.5>>12)&1048575
.LBB1_109:                              //  %sw.bb479
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  8 ( x2 )
	addi x15 ,  x15 ,  1
.LBB1_22:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x15 ,  12 ( x2 )
.LBB1_23:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x15 ,  x9 ,  x25
.LBB1_24:                               //  %sw.bb425
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_25:                               //  %lor.lhs.false435
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x21
	add x7 ,  x0 ,  x22
	add x16 ,  x0 ,  x24
	add x17 ,  x0 ,  x26
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_111:                              //  %sw.bb518
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_229
.LBB1_112:                              //  %if.then522
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x20 ,  x19
	addi x14 ,  x0 ,  10
	jal x0, .LBB1_184
.LBB1_113:                              //  %sw.bb119
                                        //    in Loop: Header=BB1_1 Depth=1
	add x24 ,  x0 ,  x23
	jal x0, .LBB1_126
.LBB1_114:                              //  %sw.bb585
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  32 ( x13 )
	add x22 ,  x0 ,  x0
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x7 ,  36 ( x2 )              //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x15, x0, .LBB1_177
.LBB1_115:                              //  %if.then588
                                        //    in Loop: Header=BB1_1 Depth=1
	add x21 ,  x0 ,  x13
	call __tz_lock
	lw x15 ,  64 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB1_117
.LBB1_116:                              //  %if.then590
                                        //    in Loop: Header=BB1_1 Depth=1
	call _tzset_unlocked
	slti x15 ,  x0 ,  1
.LBB1_117:                              //  %if.end591
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x15 ,  64 ( x2 )             //  4-byte Folded Spill
	call __gettzinfo
	lw x15 ,  32 ( x21 )
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  5&31
	add x15 ,  x15 ,  x10
	lw x15 ,  36 ( x15 )
	sub x15 ,  x0 ,  x15
	sw x15 ,  52 ( x2 )             //  4-byte Folded Spill
	call __tz_unlock
	add x13 ,  x0 ,  x21
	jal x0, .LBB1_178
.LBB1_118:                              //  %sw.bb662
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_229
.LBB1_119:                              //  %if.then666
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x20 ,  x19
	addi x14 ,  x0 ,  9
	jal x0, .LBB1_184
.LBB1_120:                              //  %sw.bb686
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_229
.LBB1_121:                              //  %if.then690
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  24 ( x13 )
	beq x0, x15, .LBB1_183
.LBB1_122:                              //  %if.else697
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x20 ,  x19
	addi x15 ,  x15 ,  48
	sb x15 ,  0 ( x14 )
	jal x0, .LBB1_185
.LBB1_123:                              //  %sw.bb801
                                        //    in Loop: Header=BB1_1 Depth=1
	bgeu x26, x27, .LBB1_229
.LBB1_124:                              //  %if.then805
                                        //    in Loop: Header=BB1_1 Depth=1
	lb x14 ,  24 ( x13 )
	add x15 ,  x20 ,  x19
	addi x14 ,  x14 ,  48
	jal x0, .LBB1_184
.LBB1_125:                              //  %sw.bb121
                                        //    in Loop: Header=BB1_1 Depth=1
	add x24 ,  x0 ,  x16
.LBB1_126:                              //  %recurse
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x0 ,  x24
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	add x22 ,  x0 ,  x7
	add x21 ,  x0 ,  x13
	call strlen
	lbu x15 ,  0 ( x24 )
	beq x0, x15, .LBB1_129
.LBB1_127:                              //  %if.then126
                                        //    in Loop: Header=BB1_1 Depth=1
	sub x15 ,  x9 ,  x25
	add x10 ,  x20 ,  x19
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x21
	sub x11 ,  x15 ,  x20
	call __strftime
	bge x0, x10, .LBB1_229
.LBB1_128:                              //  %if.then132
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x25 ,  x10
	add x25 ,  x20 ,  x15
	jal x0, .LBB1_130
.LBB1_129:                              //    in Loop: Header=BB1_1 Depth=1
	add x25 ,  x0 ,  x26
.LBB1_130:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	add x13 ,  x0 ,  x21
	add x7 ,  x0 ,  x22
	lw x16 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
.LBB1_131:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB1_222
.LBB1_132:                              //  %sw.bb841
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x10 ,  20 ( x13 )
	sw x13 ,  52 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB1_180
.LBB1_133:                              //    in Loop: Header=BB1_1 Depth=1
	add x21 ,  x0 ,  x5
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	jal x0, .LBB1_181
.LBB1_134:                              //  %sw.bb924
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  32 ( x13 )
	blt x15, x0, .LBB1_139
.LBB1_135:                              //  %if.then928
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sw x17 ,  44 ( x2 )             //  4-byte Folded Spill
	sw x16 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	sw x7 ,  36 ( x2 )              //  4-byte Folded Spill
	add x24 ,  x0 ,  x13
	call __tz_lock
	lw x26 ,  64 ( x2 )             //  4-byte Folded Reload
	bltu x0, x26, .LBB1_137
.LBB1_136:                              //  %if.then931
                                        //    in Loop: Header=BB1_1 Depth=1
	call _tzset_unlocked
	slti x26 ,  x0 ,  1
.LBB1_137:                              //  %if.end932
                                        //    in Loop: Header=BB1_1 Depth=1
	call __gettzinfo
	lw x15 ,  32 ( x24 )
	lui x30 ,  -3600&4095
	sub x14 ,  x9 ,  x25
	add x21 ,  x20 ,  x19
	srli x30 ,  x30 ,  12&31
	sub x23 ,  x14 ,  x20
	slt x15 ,  x0 ,  x15
	slli x15 ,  x15 ,  5&31
	add x15 ,  x15 ,  x10
	lw x22 ,  36 ( x15 )
	lui x15 ,  (-3600>>12)&1048575
	or x11 ,  x15 ,  x30
	add x10 ,  x0 ,  x22
	call __divsi3
	add x19 ,  x0 ,  x10
	call __tz_unlock
	addi x11 ,  x0 ,  -60
	add x10 ,  x0 ,  x22
	call __divsi3
	call labs
	addi x11 ,  x0 ,  60
	call __modsi3
	lui x30 ,  .str.15&4095
	lui x15 ,  (.str.15>>12)&1048575
	sw x19 ,  12 ( x2 )
	sw x10 ,  16 ( x2 )
	sw x23 ,  4 ( x2 )
	sw x21 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_138:                              //  %cleanup957
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7 ,  36 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x24
	add x29 ,  x0 ,  x26
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	lw x16 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_139:                              //    in Loop: Header=BB1_1 Depth=1
	add x25 ,  x0 ,  x26
	jal x0, .LBB1_223
.LBB1_140:                              //    in Loop: Header=BB1_1 Depth=1
	addi x21 ,  x0 ,  6
	blt x0, x23, .LBB1_141
.LBB1_83:                               //  %if.else742
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x24 ,  28 ( x14 )
	addi x11 ,  x0 ,  7
	sw x14 ,  52 ( x2 )             //  4-byte Folded Spill
	sub x15 ,  x24 ,  x21
	addi x10 ,  x15 ,  10
	call __divsi3
	blt x23, x0, .LBB1_203
.LBB1_84:                               //    in Loop: Header=BB1_1 Depth=1
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_219
.LBB1_142:                              //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  -6
.LBB1_143:                              //  %sw.bb813
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x14 ,  28 ( x13 )
	addi x11 ,  x0 ,  7
	add x21 ,  x0 ,  x13
	add x15 ,  x15 ,  x14
	addi x10 ,  x15 ,  7
	call __divsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_227
.LBB1_144:                              //  %cleanup838
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x25 ,  x10
	add x7 ,  x0 ,  x23
	add x13 ,  x0 ,  x21
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	add x16 ,  x0 ,  x26
	add x17 ,  x0 ,  x24
	add x25 ,  x20 ,  x15
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_227
.LBB1_145:                              //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x6 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x29 ,  x15 ,  1900
	add x15 ,  x0 ,  x0
	addi x12 ,  x2 ,  69
	sw x29 ,  48 ( x2 )             //  4-byte Folded Spill
	xori x14 ,  x6 ,  43
	bltu x0, x14, .LBB1_205
.LBB1_146:                              //  %if.else883
                                        //    in Loop: Header=BB1_1 Depth=1
	srli x14 ,  x29 ,  4&31
	addi x11 ,  x2 ,  68
	sltiu x14 ,  x14 ,  625
	bltu x0, x14, .LBB1_206
.LBB1_147:                              //  %if.then890
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  43
	add x14 ,  x0 ,  x12
	sb x15 ,  68 ( x2 )
	slti x15 ,  x0 ,  1
	jal x0, .LBB1_207
.LBB1_148:                              //  %cond.false
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x22 ,  1900
	call abs
	addi x11 ,  x0 ,  100
	call __divsi3
.LBB1_149:                              //  %cond.end
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	lw x12 ,  52 ( x2 )             //  4-byte Folded Reload
	lui x13 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x13 ,  x30
	beq x0, x12, .LBB1_155
.LBB1_150:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.1&4095
	lui x14 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x13 ,  x30
	lui x30 ,  .str.3&4095
	addi x13 ,  x0 ,  99
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x13, x10, .LBB1_152
.LBB1_151:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_152:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x13 ,  x0 ,  43
	beq x12, x13, .LBB1_154
.LBB1_153:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x15
.LBB1_154:                              //  %if.then149
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
.LBB1_155:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.4&4095
	lui x13 ,  (.str.4>>12)&1048575
	addi x12 ,  x0 ,  -1900
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	blt x22, x12, .LBB1_157
.LBB1_156:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	add x13 ,  x0 ,  x14
.LBB1_157:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x14 ,  x22 ,  -1900
	addi x12 ,  x0 ,  2
	bltu x12, x26, .LBB1_159
.LBB1_158:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	add x26 ,  x0 ,  x12
.LBB1_159:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x14 ,  x26 ,  x14
	sw x10 ,  20 ( x2 )
	sw x13 ,  12 ( x2 )
	sub x15 ,  x15 ,  x20
	sw x14 ,  16 ( x2 )
	jal x0, .LBB1_160
.LBB1_162:                              //  %cond.end332
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x24 ,  1900
	call abs
	addi x11 ,  x0 ,  100
	call __divsi3
	sw x10 ,  32 ( x2 )             //  4-byte Folded Spill
	lw x10 ,  20 ( x26 )
	add x21 ,  x0 ,  x26
	bge x10, x0, .LBB1_164
.LBB1_163:                              //  %cond.false341
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x10 ,  1900
	call abs
.LBB1_164:                              //  %cond.end346
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x26 ,  32 ( x2 )             //  4-byte Folded Reload
	addi x11 ,  x0 ,  100
	call __modsi3
	add x13 ,  x0 ,  x21
	bge x22, x0, .LBB1_72
.LBB1_165:                              //  %land.lhs.true350
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  20 ( x13 )
	slti x15 ,  x15 ,  -1899
	beq x0, x15, .LBB1_72
.LBB1_166:                              //    in Loop: Header=BB1_1 Depth=1
	slti x22 ,  x0 ,  1
	add x15 ,  x0 ,  x22
	add x21 ,  x10 ,  x15
	add x24 ,  x0 ,  x13
	xori x15 ,  x21 ,  100
	bltu x0, x15, .LBB1_173
.LBB1_167:                              //  %if.then370
                                        //    in Loop: Header=BB1_1 Depth=1
	add x21 ,  x0 ,  x0
	addi x26 ,  x26 ,  1
	jal x0, .LBB1_168
.LBB1_72:                               //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x0
	blt x15, x22, .LBB1_170
.LBB1_73:                               //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x22
	addi x14 ,  x0 ,  -1900
	blt x24, x14, .LBB1_172
.LBB1_171:                              //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x22
.LBB1_172:                              //  %if.else355
                                        //    in Loop: Header=BB1_1 Depth=1
	slti x22 ,  x24 ,  -1900
	add x21 ,  x10 ,  x15
	add x24 ,  x0 ,  x13
	xori x15 ,  x21 ,  100
	beq x0, x15, .LBB1_167
.LBB1_173:                              //  %if.end362
                                        //    in Loop: Header=BB1_1 Depth=1
	xori x15 ,  x21 ,  -1
	bltu x0, x15, .LBB1_168
.LBB1_174:                              //  %if.then366
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x21 ,  x0 ,  99
	addi x26 ,  x26 ,  -1
.LBB1_168:                              //  %if.end373
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x26
	call __mulsi3
	add x21 ,  x21 ,  x10
	beq x0, x22, .LBB1_186
.LBB1_169:                              //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  45
	addi x13 ,  x2 ,  69
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  52 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_189
.LBB1_170:                              //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  -1
	addi x14 ,  x0 ,  -1900
	blt x24, x14, .LBB1_172
	jal x0, .LBB1_171
.LBB1_175:                              //    in Loop: Header=BB1_1 Depth=1
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1899
	add x13 ,  x0 ,  x21
	lw x13 ,  20 ( x13 )
	blt x13, x14, .LBB1_202
.LBB1_176:                              //  %if.end293.sink.split
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x22
	jal x0, .LBB1_202
.LBB1_177:                              //    in Loop: Header=BB1_1 Depth=1
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
.LBB1_178:                              //  %if.end599
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x23 ,  20 ( x13 )
	addi x11 ,  x0 ,  -100
	add x24 ,  x0 ,  x13
	addi x21 ,  x23 ,  -69
	addi x10 ,  x23 ,  -1
	srai x14 ,  x23 ,  31&31
	sltu x15 ,  x21 ,  x23
	add x26 ,  x15 ,  x14
	call __divsi3
	lw x14 ,  28 ( x24 )
	srai x15 ,  x10 ,  31&31
	srai x13 ,  x14 ,  31&31
	add x14 ,  x14 ,  x10
	add x15 ,  x13 ,  x15
	sltu x13 ,  x14 ,  x10
	addi x10 ,  x23 ,  299
	add x15 ,  x13 ,  x15
	addi x13 ,  x26 ,  -1
	srai x12 ,  x13 ,  31&31
	srli x12 ,  x12 ,  30&31
	add x12 ,  x12 ,  x21
	sltu x11 ,  x12 ,  x21
	srli x12 ,  x12 ,  2&31
	add x13 ,  x11 ,  x13
	srai x11 ,  x13 ,  2&31
	slli x13 ,  x13 ,  30&31
	or x13 ,  x13 ,  x12
	add x15 ,  x11 ,  x15
	addi x11 ,  x0 ,  400
	add x21 ,  x13 ,  x14
	sltu x14 ,  x21 ,  x14
	add x26 ,  x14 ,  x15
	call __divsi3
	srai x15 ,  x10 ,  31&31
	addi x11 ,  x0 ,  365
	add x15 ,  x15 ,  x26
	add x26 ,  x10 ,  x21
	add x10 ,  x0 ,  x23
	sltu x14 ,  x26 ,  x21
	add x21 ,  x14 ,  x15
	call __mulsi3
	lui x30 ,  -25550&4095
	lui x15 ,  (-25550>>12)&1048575
	addi x12 ,  x0 ,  24
	add x13 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x10
	srai x14 ,  x15 ,  31&31
	add x10 ,  x15 ,  x26
	add x14 ,  x14 ,  x21
	sltu x15 ,  x10 ,  x26
	add x11 ,  x15 ,  x14
	call __muldi3
	lw x15 ,  8 ( x24 )
	addi x23 ,  x0 ,  60
	add x12 ,  x0 ,  x23
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	sltu x13 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	add x10 ,  x0 ,  x15
	add x11 ,  x13 ,  x14
	add x13 ,  x0 ,  x22
	call __muldi3
	lw x15 ,  4 ( x24 )
	add x12 ,  x0 ,  x23
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	sltu x13 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	add x10 ,  x0 ,  x15
	add x11 ,  x13 ,  x14
	add x13 ,  x0 ,  x22
	call __muldi3
	lw x15 ,  0 ( x24 )
	lui x30 ,  .str.13&4095
	add x21 ,  x0 ,  x24
	lw x12 ,  52 ( x2 )             //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	srai x13 ,  x15 ,  31&31
	srai x14 ,  x12 ,  31&31
	sub x14 ,  x13 ,  x14
	sltu x13 ,  x15 ,  x12
	sub x15 ,  x15 ,  x12
	sub x14 ,  x14 ,  x13
	add x13 ,  x10 ,  x15
	add x14 ,  x11 ,  x14
	sltu x15 ,  x13 ,  x15
	sw x13 ,  12 ( x2 )
	add x15 ,  x15 ,  x14
	sw x15 ,  16 ( x2 )
	lui x15 ,  (.str.13>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_227
.LBB1_179:                              //  %cleanup646
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x21
	lw x7 ,  36 ( x2 )              //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_221
.LBB1_180:                              //  %cond.false849
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x10 ,  1900
	add x21 ,  x0 ,  x5
	add x26 ,  x0 ,  x17
	add x24 ,  x0 ,  x16
	add x22 ,  x0 ,  x7
	call abs
.LBB1_181:                              //  %cond.end854
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  100
	call __modsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_182:                              //  %lor.lhs.false861
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x13 ,  52 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x7 ,  x0 ,  x22
	add x16 ,  x0 ,  x24
	add x17 ,  x0 ,  x26
	add x5 ,  x0 ,  x21
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_186:                              //  %if.else381
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x11 ,  52 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	addi x15 ,  x2 ,  68
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	xori x13 ,  x11 ,  43
	bltu x0, x13, .LBB1_190
.LBB1_187:                              //  %if.else381
                                        //    in Loop: Header=BB1_1 Depth=1
	srli x13 ,  x21 ,  4&31
	sltiu x13 ,  x13 ,  625
	bltu x0, x13, .LBB1_190
.LBB1_188:                              //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  43
	addi x13 ,  x2 ,  69
.LBB1_189:                              //  %if.end391.sink.split
                                        //    in Loop: Header=BB1_1 Depth=1
	sb x15 ,  68 ( x2 )
	slti x14 ,  x0 ,  1
	add x15 ,  x0 ,  x13
.LBB1_190:                              //  %if.end391
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x13 ,  x0 ,  37
	sb x13 ,  0 ( x15 )
	sltu x13 ,  x0 ,  x12
	and x14 ,  x14 ,  x13
	sub x22 ,  x12 ,  x14
	beq x0, x11, .LBB1_192
.LBB1_191:                              //  %if.then400
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x0 ,  48
	addi x10 ,  x15 ,  2
	sb x14 ,  1 ( x15 )
	jal x0, .LBB1_193
.LBB1_192:                              //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x15 ,  1
.LBB1_193:                              //  %if.end402
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.10&4095
	lui x15 ,  (.str.10>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcpy
	addi x15 ,  x2 ,  68
	sw x22 ,  12 ( x2 )
	sw x21 ,  16 ( x2 )
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_194:                              //  %cleanup416
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7 ,  36 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x24
	lw x16 ,  40 ( x2 )             //  4-byte Folded Reload
.LBB1_195:                              //  %cleanup416
                                        //    in Loop: Header=BB1_1 Depth=1
	add x25 ,  x20 ,  x15
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_183:                              //  %if.then694
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x20 ,  x19
	addi x14 ,  x0 ,  55
.LBB1_184:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	sb x14 ,  0 ( x15 )
.LBB1_185:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x20 ,  x25
	addi x25 ,  x15 ,  1
	jal x0, .LBB1_222
.LBB1_196:                              //    in Loop: Header=BB1_1 Depth=1
	add x10 ,  x10 ,  x23
.LBB1_197:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.9&4095
	lui x15 ,  (.str.9>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcpy
	sub x15 ,  x9 ,  x25
	add x10 ,  x20 ,  x19
	addi x12 ,  x2 ,  68
	add x13 ,  x0 ,  x21
	sub x11 ,  x15 ,  x20
	call __strftime
	add x15 ,  x0 ,  x10
	blt x22, x10, .LBB1_199
.LBB1_198:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x22
.LBB1_199:                              //  %if.end249
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x21
	add x7 ,  x0 ,  x24
	add x16 ,  x0 ,  x26
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bge x0, x10, .LBB1_227
.LBB1_200:                              //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x25 ,  x15
	add x25 ,  x20 ,  x15
	jal x0, .LBB1_222
.LBB1_201:                              //    in Loop: Header=BB1_1 Depth=1
	add x15 ,  x0 ,  x0
.LBB1_202:                              //  %if.end293
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x22 ,  x0 ,  100
	add x10 ,  x10 ,  x15
	add x11 ,  x0 ,  x22
	call __modsi3
	addi x10 ,  x10 ,  100
	add x11 ,  x0 ,  x22
	call __modsi3
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
.LBB1_160:                              //  %if.end158
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_161:                              //  %lor.lhs.false174
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x16 ,  40 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x21
	add x7 ,  x0 ,  x24
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_203:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  52 ( x2 )             //  4-byte Folded Reload
	sw x24 ,  48 ( x2 )             //  4-byte Folded Spill
	lw x15 ,  20 ( x15 )
	blt x15, x22, .LBB1_212
.LBB1_204:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x0 ,  -101
	jal x0, .LBB1_213
.LBB1_205:                              //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x2 ,  68
	jal x0, .LBB1_207
.LBB1_206:                              //    in Loop: Header=BB1_1 Depth=1
	add x14 ,  x0 ,  x11
.LBB1_207:                              //  %if.end893
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x12 ,  x0 ,  37
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	add x21 ,  x0 ,  x17
	add x26 ,  x0 ,  x16
	add x24 ,  x0 ,  x7
	add x23 ,  x0 ,  x13
	sw x5 ,  60 ( x2 )              //  4-byte Folded Spill
	sb x12 ,  0 ( x14 )
	sltu x12 ,  x0 ,  x10
	and x15 ,  x15 ,  x12
	sub x22 ,  x10 ,  x15
	beq x0, x6, .LBB1_209
.LBB1_208:                              //  %if.then902
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x15 ,  x0 ,  48
	addi x10 ,  x14 ,  2
	sb x15 ,  1 ( x14 )
	jal x0, .LBB1_210
.LBB1_209:                              //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x14 ,  1
.LBB1_210:                              //  %if.end904
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.10&4095
	lui x15 ,  (.str.10>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcpy
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	sw x22 ,  12 ( x2 )
	sw x15 ,  16 ( x2 )
	addi x15 ,  x2 ,  68
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_229
.LBB1_211:                              //  %cleanup918
                                        //    in Loop: Header=BB1_1 Depth=1
	add x13 ,  x0 ,  x23
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x7 ,  x0 ,  x24
	add x16 ,  x0 ,  x26
	add x17 ,  x0 ,  x21
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x20 ,  x15
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bltu x25, x9, .LBB1_222
	jal x0, .LBB1_229
.LBB1_212:                              //    in Loop: Header=BB1_1 Depth=1
	addi x14 ,  x0 ,  1899
.LBB1_213:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	add x23 ,  x15 ,  x14
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x23
	call __modsi3
	lw x15 ,  48 ( x2 )             //  4-byte Folded Reload
	sub x21 ,  x21 ,  x15
	andi x15 ,  x23 ,  3
	bltu x0, x15, .LBB1_217
.LBB1_214:                              //  %if.then745
                                        //    in Loop: Header=BB1_1 Depth=1
	beq x0, x10, .LBB1_217
.LBB1_215:                              //    in Loop: Header=BB1_1 Depth=1
	slti x15 ,  x0 ,  1
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x21 ,  x15
	addi x14 ,  x0 ,  5
	blt x15, x14, .LBB1_216
.LBB1_218:                              //  %lor.end
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x0 ,  52
	jal x0, .LBB1_219
.LBB1_217:                              //  %lor.rhs
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x23
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x21 ,  x15
	addi x14 ,  x0 ,  5
	bge x15, x14, .LBB1_218
.LBB1_216:                              //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x0 ,  53
.LBB1_219:                              //  %if.end784
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x10 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  8 ( x2 )
	sub x15 ,  x9 ,  x25
	sub x15 ,  x15 ,  x20
	sw x15 ,  4 ( x2 )
	add x15 ,  x20 ,  x19
	sw x15 ,  0 ( x2 )
	call sniprintf
	blt x10, x0, .LBB1_227
.LBB1_220:                              //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x7 ,  36 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x25 ,  x10
	add x13 ,  x0 ,  x26
	add x25 ,  x20 ,  x15
.LBB1_221:                              //  %cleanup796
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x16 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x17 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x29 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x5 ,  60 ( x2 )              //  4-byte Folded Reload
	bgeu x25, x9, .LBB1_227
.LBB1_222:                              //  %sw.epilogthread-pre-split
                                        //    in Loop: Header=BB1_1 Depth=1
	lbu x21 ,  0 ( x5 )
.LBB1_223:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x10 ,  x0 ,  8
	addi x11 ,  x2 ,  68
	addi x6 ,  x0 ,  10
	addi x22 ,  x0 ,  85
	lui x24 ,  (JTI1_0>>12)&1048575
	addi x12 ,  x5 ,  1
	beq x0, x21, .LBB1_241
.LBB1_242:                              //  %sw.epilog
                                        //    in Loop: Header=BB1_1 Depth=1
	jal x0, .LBB1_1
.LBB1_241:                              //  %sw.epilog
	jal x0, .LBB1_224
.LBB1_5:                                //  %for.end1013.loopexit
	add x25 ,  x20 ,  x25
.LBB1_224:                              //  %for.end1013
	beq x0, x9, .LBB1_226
.LBB1_225:                              //  %if.then1015
	add x15 ,  x25 ,  x8
	sb x0 ,  0 ( x15 )
.LBB1_226:                              //  %cleanup1018
	add x22 ,  x0 ,  x25
	jal x0, .LBB1_227
.LBB1_228:                              //  %if.else989
	call __tz_unlock
.LBB1_229:
	add x22 ,  x0 ,  x18
.LBB1_227:                              //  %cleanup1018
	add x10 ,  x0 ,  x22
	lw x8 ,  100 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  136 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  140 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  144 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  148 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  152
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__strftime, .Lfunc_end1-__strftime
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_47
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_49
	.long	.LBB1_53
	.long	.LBB1_57
	.long	.LBB1_59
	.long	.LBB1_227
	.long	.LBB1_63
	.long	.LBB1_70
	.long	.LBB1_17
	.long	.LBB1_26
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_74
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_33
	.long	.LBB1_227
	.long	.LBB1_76
	.long	.LBB1_78
	.long	.LBB1_79
	.long	.LBB1_80
	.long	.LBB1_81
	.long	.LBB1_85
	.long	.LBB1_87
	.long	.LBB1_88
	.long	.LBB1_90
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_227
	.long	.LBB1_97
	.long	.LBB1_40
	.long	.LBB1_126
	.long	.LBB1_44
	.long	.LBB1_44
	.long	.LBB1_227
	.long	.LBB1_103
	.long	.LBB1_40
	.long	.LBB1_227
	.long	.LBB1_108
	.long	.LBB1_17
	.long	.LBB1_26
	.long	.LBB1_110
	.long	.LBB1_111
	.long	.LBB1_227
	.long	.LBB1_33
	.long	.LBB1_227
	.long	.LBB1_113
	.long	.LBB1_114
	.long	.LBB1_118
	.long	.LBB1_120
	.long	.LBB1_227
	.long	.LBB1_123
	.long	.LBB1_125
	.long	.LBB1_132
	.long	.LBB1_134
                                        //  -- End function
	.text
	.globl	strftime_l              //  -- Begin function strftime_l
	.type	strftime_l,@function
strftime_l:                             //  @strftime_l
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	jal x0, __strftime
.Lfunc_end2:
	.size	strftime_l, .Lfunc_end2-strftime_l
	.cfi_endproc
                                        //  -- End function
	.type	iso_year_adjust,@function //  -- Begin function iso_year_adjust
iso_year_adjust:                        //  @iso_year_adjust
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x0
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x15 ,  20 ( x8 )
	blt x15, x18, .LBB3_1
.LBB3_2:                                //  %entry
	addi x14 ,  x0 ,  -100
	jal x0, .LBB3_3
.LBB3_1:
	addi x14 ,  x0 ,  1900
.LBB3_3:                                //  %entry
	add x9 ,  x15 ,  x14
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	andi x15 ,  x9 ,  3
	bltu x0, x15, .LBB3_6
.LBB3_4:                                //  %entry
	beq x0, x10, .LBB3_6
.LBB3_5:
	slti x15 ,  x0 ,  1
	jal x0, .LBB3_7
.LBB3_6:                                //  %lor.rhs
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x9
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
.LBB3_7:                                //  %lor.end
	lw x14 ,  28 ( x8 )
	lw x13 ,  24 ( x8 )
	slli x14 ,  x14 ,  4&31
	slli x13 ,  x13 ,  1&31
	add x14 ,  x14 ,  x13
	or x15 ,  x15 ,  x14
	addi x14 ,  x0 ,  33
	bltu x14, x15, .LBB3_8
.LBB3_13:                               //  %lor.end
	lui x30 ,  JTI3_0&4095
	lui x14 ,  (JTI3_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	addi x10 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB3_8:                                //  %lor.end
	lui x30 ,  -5794&4095
	lui x14 ,  (-5794>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	addi x14 ,  x0 ,  53
	bltu x14, x15, .LBB3_11
.LBB3_9:                                //  %lor.end
	lui x30 ,  JTI3_1&4095
	lui x14 ,  (JTI3_1>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB3_10:                               //  %sw.bb22
	slti x10 ,  x0 ,  1
.LBB3_12:                               //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB3_11:                               //  %sw.epilog
	add x10 ,  x0 ,  x18
	jal x0, .LBB3_12
.Lfunc_end3:
	.size	iso_year_adjust, .Lfunc_end3-iso_year_adjust
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI3_0:
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_12
	.long	.LBB3_12
JTI3_1:
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_10
	.long	.LBB3_11
	.long	.LBB3_10
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"%s%.*d"
	.size	.str, 7

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.zero	1
	.size	.str.1, 1

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%s%0.*d"
	.size	.str.2, 8

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"+"
	.size	.str.3, 2

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"-"
	.size	.str.4, 2

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"%.2d"
	.size	.str.5, 5

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"%2d"
	.size	.str.6, 4

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"%.2d/%.2d/%.2d"
	.size	.str.7, 15

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"%lu"
	.size	.str.8, 4

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"Y-%m-%d"
	.size	.str.9, 8

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	".*u"
	.size	.str.10, 4

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"%.3d"
	.size	.str.11, 5

	.address_space	0
	.address_space	0
	.type	.str.12,@object         //  @.str.12
.str.12:
	.asciz	"%.2d:%.2d"
	.size	.str.12, 10

	.address_space	0
	.type	.str.13,@object         //  @.str.13
.str.13:
	.asciz	"%lld"
	.size	.str.13, 5

	.address_space	0
	.type	.str.14,@object         //  @.str.14
.str.14:
	.asciz	"%.2d:%.2d:%.2d"
	.size	.str.14, 15

	.address_space	0
	.type	.str.15,@object         //  @.str.15
.str.15:
	.asciz	"%+03ld%.2ld"
	.size	.str.15, 12

	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
