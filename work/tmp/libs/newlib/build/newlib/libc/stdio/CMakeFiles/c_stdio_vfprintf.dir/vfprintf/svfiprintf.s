	.text
	.file	"svfiprintf.c"
	.globl	__ssprint_r             //  -- Begin function __ssprint_r
	.type	__ssprint_r,@function
__ssprint_r:                            //  @__ssprint_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x15 ,  8 ( x8 )
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %do.body.preheader
	lw x15 ,  0 ( x8 )
	add x19 ,  x0 ,  x0
	addi x20 ,  x0 ,  3
	lui x26 ,  (64383>>12)&1048575
	addi x25 ,  x15 ,  4
	lw x27 ,  0 ( x25 )
	bltu x0, x27, .LBB0_5
	jal x0, .LBB0_4
.LBB0_15:                               //  %if.end46
	lw x10 ,  0 ( x9 )
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	call memmove
	lw x15 ,  8 ( x9 )
	sub x15 ,  x15 ,  x22
	sw x15 ,  8 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x22 ,  x15
	sw x15 ,  0 ( x9 )
	lw x15 ,  8 ( x8 )
	sub x15 ,  x15 ,  x27
	sw x15 ,  8 ( x8 )
	beq x0, x15, .LBB0_19
.LBB0_4:                                //  %while.body.backedge
                                        //  =>This Inner Loop Header: Depth=1
	addi x25 ,  x25 ,  8
	lw x27 ,  0 ( x25 )
	beq x0, x27, .LBB0_4
.LBB0_5:                                //  %while.end
	lw x21 ,  -4 ( x25 )
	lw x15 ,  8 ( x9 )
	bltu x27, x15, .LBB0_13
.LBB0_6:                                //  %land.lhs.true
	lhu x24 ,  12 ( x9 )
	andi x14 ,  x24 ,  1152
	beq x0, x14, .LBB0_13
.LBB0_7:                                //  %if.then3
	lw x10 ,  20 ( x9 )
	add x11 ,  x0 ,  x20
	call __mulsi3
	lw x11 ,  16 ( x9 )
	slt x15 ,  x10 ,  x0
	lw x14 ,  0 ( x9 )
	add x15 ,  x15 ,  x10
	srai x15 ,  x15 ,  1&31
	sub x22 ,  x14 ,  x11
	add x14 ,  x22 ,  x27
	addi x23 ,  x14 ,  1
	bltu x15, x23, .LBB0_9
.LBB0_8:                                //  %if.then3
	add x23 ,  x0 ,  x15
.LBB0_9:                                //  %if.then3
	add x10 ,  x0 ,  x18
	andi x15 ,  x24 ,  1024
	bltu x0, x15, .LBB0_10
.LBB0_16:                               //  %if.else
	add x12 ,  x0 ,  x23
	call _realloc_r
	add x24 ,  x0 ,  x10
	bltu x0, x24, .LBB0_12
	jal x0, .LBB0_17
.LBB0_10:                               //  %if.then16
	add x11 ,  x0 ,  x23
	call _malloc_r
	add x24 ,  x0 ,  x10
	beq x0, x24, .LBB0_18
.LBB0_11:                               //  %if.end19
	lw x11 ,  16 ( x9 )
	add x10 ,  x0 ,  x24
	add x12 ,  x0 ,  x22
	call memcpy
	lhu x15 ,  12 ( x9 )
	lui x30 ,  64383&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x26 ,  x30
	and x15 ,  x14 ,  x15
	ori x15 ,  x15 ,  128
	sh x15 ,  12 ( x9 )
.LBB0_12:                               //  %cleanup
	add x15 ,  x22 ,  x24
	sw x24 ,  16 ( x9 )
	sw x23 ,  20 ( x9 )
	sw x15 ,  0 ( x9 )
	sub x15 ,  x23 ,  x22
	sw x15 ,  8 ( x9 )
	add x15 ,  x0 ,  x27
.LBB0_13:                               //  %if.end46
	add x22 ,  x0 ,  x27
	bltu x27, x15, .LBB0_15
.LBB0_14:                               //  %if.end46
	add x22 ,  x0 ,  x15
	jal x0, .LBB0_15
.LBB0_1:
	add x19 ,  x0 ,  x0
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.then32
	lw x11 ,  16 ( x9 )
	add x10 ,  x0 ,  x18
	call _free_r
.LBB0_18:                               //  %err
	addi x15 ,  x0 ,  12
	addi x19 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	lh x15 ,  12 ( x9 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x9 )
.LBB0_19:                               //  %cleanup71.sink.split
	sw x0 ,  8 ( x8 )
.LBB0_20:                               //  %cleanup71
	sw x0 ,  4 ( x8 )
	add x10 ,  x0 ,  x19
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ssprint_r, .Lfunc_end0-__ssprint_r
	.cfi_endproc
                                        //  -- End function
	.globl	_svfiprintf_r           //  -- Begin function _svfiprintf_r
	.type	_svfiprintf_r,@function
_svfiprintf_r:                          //  @_svfiprintf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -288
	.cfi_adjust_cfa_offset 288
	sw x22 ,  260 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x22 ,  x0 ,  x11
	sw x23 ,  256 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  248 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x23 ,  x0 ,  x12
	add x25 ,  x0 ,  x10
	sw x1 ,  284 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  280 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  276 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  272 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  268 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  264 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x24 ,  252 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  244 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  240 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  236 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x13 ,  232 ( x2 )
	lbu x15 ,  12 ( x22 )
	andi x15 ,  x15 ,  128
	beq x0, x15, .LBB1_4
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  16 ( x22 )
	bltu x0, x15, .LBB1_4
.LBB1_2:                                //  %if.then
	addi x9 ,  x0 ,  64
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x9
	call _malloc_r
	sw x10 ,  16 ( x22 )
	sw x10 ,  0 ( x22 )
	bltu x0, x10, .LBB1_3
.LBB1_245:                              //  %if.then
	jal x0, .LBB1_239
.LBB1_3:                                //  %if.end
	sw x9 ,  20 ( x22 )
.LBB1_4:                                //  %if.end8
	add x26 ,  x0 ,  x0
	addi x15 ,  x2 ,  52
	addi x21 ,  x2 ,  216
	addi x19 ,  x2 ,  152
	addi x20 ,  x0 ,  10
	addi x27 ,  x0 ,  122
	sw x0 ,  220 ( x2 )
	sw x22 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  36 ( x2 )             //  4-byte Folded Spill
	add x18 ,  x0 ,  x26
	addi x15 ,  x15 ,  100
	sw x0 ,  8 ( x21 )
	sw x19 ,  216 ( x2 )
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x26 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x26 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  20 ( x2 )             //  4-byte Folded Spill
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB1_7
.LBB1_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	xori x14 ,  x15 ,  37
	beq x0, x14, .LBB1_7
.LBB1_6:                                //  %while.body
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8 ,  x8 ,  1
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_5
.LBB1_7:                                //  %while.end
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_14 Depth 2
                                        //        Child Loop BB1_15 Depth 3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_22 Depth 5
                                        //          Child Loop BB1_17 Depth 4
                                        //      Child Loop BB1_125 Depth 2
                                        //      Child Loop BB1_204 Depth 2
                                        //      Child Loop BB1_212 Depth 2
                                        //      Child Loop BB1_201 Depth 2
                                        //      Child Loop BB1_142 Depth 2
                                        //      Child Loop BB1_160 Depth 2
                                        //      Child Loop BB1_170 Depth 2
                                        //      Child Loop BB1_186 Depth 2
	sub x9 ,  x8 ,  x23
	beq x0, x9, .LBB1_12
.LBB1_8:                                //  %if.then16
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  8 ( x21 )
	sw x9 ,  4 ( x19 )
	sw x23 ,  0 ( x19 )
	add x15 ,  x9 ,  x15
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_10
.LBB1_9:                                //  %if.then21
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	addi x19 ,  x2 ,  152
	beq x0, x10, .LBB1_11
	jal x0, .LBB1_233
.LBB1_10:                               //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
.LBB1_11:                               //  %if.end27
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x15 ,  0 ( x8 )
	add x18 ,  x18 ,  x9
.LBB1_12:                               //  %if.end29
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x15, .LBB1_230
.LBB1_13:                               //  %if.end34
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x14 ,  x0 ,  -1
	addi x15 ,  x8 ,  1
	add x9 ,  x0 ,  x26
	add x24 ,  x0 ,  x26
	sb x0 ,  231 ( x2 )
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
.LBB1_14:                               //  %rflag
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_15 Depth 3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_22 Depth 5
                                        //          Child Loop BB1_17 Depth 4
	lb x8 ,  0 ( x15 )
	addi x23 ,  x15 ,  1
.LBB1_15:                               //  %reswitch
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_18 Depth 4
                                        //            Child Loop BB1_22 Depth 5
                                        //          Child Loop BB1_17 Depth 4
	addi x15 ,  x8 ,  -49
	sltiu x15 ,  x15 ,  9
	beq x0, x15, .LBB1_18
.LBB1_16:                               //  %do.body.preheader
                                        //    in Loop: Header=BB1_15 Depth=3
	add x24 ,  x0 ,  x26
.LBB1_17:                               //  %do.body
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x20
	call __mulsi3
	add x15 ,  x10 ,  x8
	lb x8 ,  0 ( x23 )
	addi x23 ,  x23 ,  1
	addi x24 ,  x15 ,  -48
	addi x15 ,  x8 ,  -48
	sltiu x15 ,  x15 ,  10
	bltu x0, x15, .LBB1_17
	jal x0, .LBB1_15
.LBB1_25:                               //    in Loop: Header=BB1_18 Depth=4
	add x9 ,  x0 ,  x25
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x8 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_16
.LBB1_18:                               //  %reswitch
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_22 Depth 5
	bltu x27, x8, .LBB1_94
.LBB1_19:                               //  %reswitch
                                        //    in Loop: Header=BB1_18 Depth=4
	lui x30 ,  JTI1_0&4095
	lui x14 ,  (JTI1_0>>12)&1048575
	slli x15 ,  x8 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_20:                               //  %sw.bb66
                                        //    in Loop: Header=BB1_18 Depth=4
	lb x8 ,  0 ( x23 )
	addi x15 ,  x23 ,  1
	xori x14 ,  x8 ,  42
	beq x0, x14, .LBB1_48
.LBB1_21:                               //  %while.cond78.preheader
                                        //    in Loop: Header=BB1_18 Depth=4
	add x25 ,  x0 ,  x9
	addi x9 ,  x8 ,  -48
	add x10 ,  x0 ,  x0
	add x23 ,  x0 ,  x15
	addi x14 ,  x0 ,  9
	bltu x14, x9, .LBB1_25
.LBB1_22:                               //  %while.body82
                                        //    Parent Loop BB1_7 Depth=1
                                        //      Parent Loop BB1_14 Depth=2
                                        //        Parent Loop BB1_15 Depth=3
                                        //          Parent Loop BB1_18 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	addi x11 ,  x0 ,  10
	call __mulsi3
	lb x8 ,  0 ( x23 )
	add x10 ,  x10 ,  x9
	addi x23 ,  x23 ,  1
	addi x9 ,  x8 ,  -48
	sltiu x15 ,  x9 ,  10
	bltu x0, x15, .LBB1_22
.LBB1_23:                               //  %while.end87
                                        //    in Loop: Header=BB1_18 Depth=4
	add x9 ,  x0 ,  x25
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  -1
	sw x15 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x10, x0, .LBB1_15
.LBB1_24:                               //  %while.end87.thread
                                        //    in Loop: Header=BB1_18 Depth=4
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	addi x15 ,  x8 ,  -49
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB1_16
	jal x0, .LBB1_18
.LBB1_26:                               //  %sw.bb122
                                        //    in Loop: Header=BB1_14 Depth=2
	ori x9 ,  x9 ,  32
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_27:                               //  %sw.bb52
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x14 ,  231 ( x2 )
	add x15 ,  x0 ,  x23
	bltu x0, x14, .LBB1_14
.LBB1_28:                               //  %if.then54
                                        //    in Loop: Header=BB1_14 Depth=2
	addi x15 ,  x0 ,  32
	jal x0, .LBB1_39
.LBB1_29:                               //  %sw.bb56
                                        //    in Loop: Header=BB1_14 Depth=2
	ori x9 ,  x9 ,  1
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_30:                               //  %sw.bb
                                        //    in Loop: Header=BB1_14 Depth=2
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x10 ,  4 ( x10 )
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	call strlen
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x25
	call _localeconv_r
	lw x15 ,  8 ( x10 )
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	sw x15 ,  40 ( x2 )             //  4-byte Folded Spill
	add x15 ,  x0 ,  x23
	beq x0, x8, .LBB1_14
.LBB1_31:                               //  %sw.bb
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x14 ,  40 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x23
	beq x0, x14, .LBB1_14
.LBB1_32:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lbu x15 ,  0 ( x15 )
	beq x15, x14, .LBB1_34
.LBB1_33:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	ori x9 ,  x9 ,  1024
.LBB1_34:                               //  %land.lhs.true47
                                        //    in Loop: Header=BB1_14 Depth=2
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_35:                               //  %sw.bb58
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x24 ,  0 ( x15 )
	add x15 ,  x0 ,  x23
	bge x24, x0, .LBB1_14
.LBB1_36:                               //  %if.end62
                                        //    in Loop: Header=BB1_14 Depth=2
	sub x24 ,  x0 ,  x24
.LBB1_37:                               //  %sw.bb63.loopexit
                                        //    in Loop: Header=BB1_14 Depth=2
	ori x9 ,  x9 ,  4
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_38:                               //  %sw.bb65
                                        //    in Loop: Header=BB1_14 Depth=2
	addi x15 ,  x0 ,  43
.LBB1_39:                               //  %rflag
                                        //    in Loop: Header=BB1_14 Depth=2
	sb x15 ,  231 ( x2 )
.LBB1_40:                               //  %rflag.backedge.loopexit
                                        //    in Loop: Header=BB1_14 Depth=2
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_41:                               //  %sw.bb90
                                        //    in Loop: Header=BB1_14 Depth=2
	ori x9 ,  x9 ,  128
	add x15 ,  x0 ,  x23
	jal x0, .LBB1_14
.LBB1_42:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x15 ,  0 ( x23 )
	addi x14 ,  x0 ,  104
	beq x15, x14, .LBB1_46
.LBB1_43:                               //  %sw.bb101
                                        //    in Loop: Header=BB1_14 Depth=2
	addi x14 ,  x0 ,  64
	add x15 ,  x0 ,  x23
	or x9 ,  x9 ,  x14
	jal x0, .LBB1_14
.LBB1_44:                               //  %sw.bb110
                                        //    in Loop: Header=BB1_14 Depth=2
	lbu x15 ,  0 ( x23 )
	addi x14 ,  x0 ,  108
	beq x15, x14, .LBB1_47
.LBB1_45:                               //  %sw.bb110
                                        //    in Loop: Header=BB1_14 Depth=2
	addi x14 ,  x0 ,  16
	add x15 ,  x0 ,  x23
	or x9 ,  x9 ,  x14
	jal x0, .LBB1_14
.LBB1_46:                               //    in Loop: Header=BB1_14 Depth=2
	addi x14 ,  x0 ,  512
	addi x15 ,  x23 ,  1
	or x9 ,  x9 ,  x14
	jal x0, .LBB1_14
.LBB1_47:                               //    in Loop: Header=BB1_14 Depth=2
	addi x14 ,  x0 ,  32
	addi x15 ,  x23 ,  1
	or x9 ,  x9 ,  x14
	jal x0, .LBB1_14
.LBB1_48:                               //  %if.then71
                                        //    in Loop: Header=BB1_14 Depth=2
	lw x14 ,  232 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  232 ( x2 )
	lw x13 ,  0 ( x14 )
	addi x14 ,  x0 ,  -1
	sw x13 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x14, x13, .LBB1_14
.LBB1_49:                               //  %if.then71
                                        //    in Loop: Header=BB1_14 Depth=2
	sw x14 ,  44 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_14
.LBB1_50:                               //  %sw.bb126
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x15 ,  52 ( x2 )
	jal x0, .LBB1_95
.LBB1_51:                               //  %sw.bb244
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x26 ,  0 ( x15 )
	sb x0 ,  231 ( x2 )
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	beq x0, x26, .LBB1_96
.LBB1_52:                               //  %if.else255
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x27 ,  44 ( x2 )             //  4-byte Folded Reload
	blt x27, x0, .LBB1_109
.LBB1_53:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	add x21 ,  x0 ,  x9
	add x9 ,  x0 ,  x0
	add x10 ,  x0 ,  x26
	add x12 ,  x0 ,  x27
	add x11 ,  x0 ,  x9
	call memchr
	beq x10, x9, .LBB1_55
.LBB1_54:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	sub x27 ,  x10 ,  x26
.LBB1_55:                               //  %if.then258
                                        //    in Loop: Header=BB1_7 Depth=1
	add x18 ,  x0 ,  x9
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	add x9 ,  x0 ,  x21
	add x15 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x27, x18, .LBB1_134
	jal x0, .LBB1_135
.LBB1_56:                               //  %sw.bb130
                                        //    in Loop: Header=BB1_7 Depth=1
	ori x9 ,  x9 ,  16
.LBB1_57:                               //  %sw.bb132
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  32
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_62
.LBB1_58:                               //  %cond.false137
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_99
.LBB1_59:                               //  %cond.false142
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  64
	bltu x0, x15, .LBB1_112
.LBB1_60:                               //  %cond.false149
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x27 ,  0 ( x15 )
	andi x15 ,  x9 ,  512
	beq x0, x15, .LBB1_100
.LBB1_61:                               //  %cond.true152
                                        //    in Loop: Header=BB1_7 Depth=1
	slli x15 ,  x27 ,  24&31
	srai x27 ,  x15 ,  24&31
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	srai x22 ,  x27 ,  31&31
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x22, x0, .LBB1_63
	jal x0, .LBB1_101
.LBB1_62:                               //  %cond.true135
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	addi x14 ,  x15 ,  8
	lw x27 ,  0 ( x15 )
	sw x14 ,  232 ( x2 )
	lw x22 ,  4 ( x15 )
	blt x22, x0, .LBB1_101
.LBB1_63:                               //    in Loop: Header=BB1_7 Depth=1
	slti x15 ,  x0 ,  1
	addi x14 ,  x0 ,  -1
	blt x14, x18, .LBB1_116
	jal x0, .LBB1_117
.LBB1_64:                               //  %sw.bb201
                                        //    in Loop: Header=BB1_7 Depth=1
	ori x9 ,  x9 ,  16
.LBB1_65:                               //  %sw.bb203.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x9 ,  32
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_92
.LBB1_66:                               //  %cond.false208
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_104
.LBB1_67:                               //  %cond.false213
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  64
	bltu x0, x15, .LBB1_113
.LBB1_68:                               //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	andi x14 ,  x9 ,  512
	lw x27 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_114
.LBB1_69:                               //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x27 ,  x27 ,  255
	jal x0, .LBB1_114
.LBB1_70:                               //  %sw.bb272
                                        //    in Loop: Header=BB1_7 Depth=1
	ori x9 ,  x9 ,  16
.LBB1_71:                               //  %sw.bb274.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	andi x15 ,  x9 ,  32
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB1_93
.LBB1_72:                               //  %cond.false279
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_105
.LBB1_73:                               //  %cond.false284
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  64
	bltu x0, x15, .LBB1_225
.LBB1_74:                               //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	andi x14 ,  x9 ,  512
	lw x27 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB1_226
.LBB1_75:                               //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x27 ,  x27 ,  255
	jal x0, .LBB1_226
.LBB1_76:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	addi x15 ,  x0 ,  88
	andi x14 ,  x9 ,  32
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	beq x0, x14, .LBB1_88
.LBB1_77:                               //  %cond.true313
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  232 ( x2 )
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x13 ,  x14 ,  4
	sw x13 ,  232 ( x2 )
	addi x13 ,  x14 ,  8
	lw x27 ,  0 ( x14 )
	sw x13 ,  232 ( x2 )
	lw x22 ,  4 ( x14 )
	andi x14 ,  x9 ,  1
	beq x0, x14, .LBB1_80
.LBB1_78:                               //  %cond.end343
                                        //    in Loop: Header=BB1_7 Depth=1
	or x14 ,  x22 ,  x27
	beq x0, x14, .LBB1_80
.LBB1_79:                               //  %if.then350
                                        //    in Loop: Header=BB1_7 Depth=1
	sb x15 ,  51 ( x2 )
	addi x15 ,  x0 ,  48
	ori x9 ,  x9 ,  2
	sb x15 ,  50 ( x2 )
.LBB1_80:                               //  %if.end355
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x9 ,  x9 ,  -1025
	addi x15 ,  x0 ,  2
	sb x0 ,  231 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x18, .LBB1_116
	jal x0, .LBB1_117
.LBB1_81:                               //  %sw.bb172
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  32
	bltu x0, x15, .LBB1_106
.LBB1_82:                               //  %if.else178
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  16
	bltu x0, x15, .LBB1_85
.LBB1_83:                               //  %if.else183
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  64
	bltu x0, x15, .LBB1_228
.LBB1_84:                               //  %if.else189
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  512
	bltu x0, x15, .LBB1_229
.LBB1_85:                               //  %if.then181
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x15 ,  0 ( x15 )
	sw x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_5
	jal x0, .LBB1_7
.LBB1_86:                               //  %sw.bb239
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	lui x30 ,  .str&4095
	add x22 ,  x0 ,  x0
	ori x9 ,  x9 ,  2
	srli x30 ,  x30 ,  12&31
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x27 ,  0 ( x15 )
	addi x15 ,  x0 ,  120
	sb x15 ,  51 ( x2 )
	addi x15 ,  x0 ,  48
	sb x15 ,  50 ( x2 )
	lui x15 ,  (.str>>12)&1048575
	or x8 ,  x15 ,  x30
	addi x15 ,  x0 ,  2
	sb x0 ,  231 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x18, .LBB1_116
	jal x0, .LBB1_117
.LBB1_87:                               //  %hex.loopexit1
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	addi x15 ,  x0 ,  120
	andi x14 ,  x9 ,  32
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	bltu x0, x14, .LBB1_77
.LBB1_88:                               //  %cond.false315
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x14 ,  x9 ,  16
	bltu x0, x14, .LBB1_107
.LBB1_89:                               //  %cond.false320
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x14 ,  x9 ,  64
	bltu x0, x14, .LBB1_227
.LBB1_90:                               //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  232 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  232 ( x2 )
	andi x13 ,  x9 ,  512
	lw x27 ,  0 ( x14 )
	add x14 ,  x0 ,  x0
	beq x13, x14, .LBB1_108
.LBB1_91:                               //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x27 ,  x27 ,  255
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	andi x14 ,  x9 ,  1
	bltu x0, x14, .LBB1_78
	jal x0, .LBB1_80
.LBB1_92:                               //  %cond.true206
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	addi x14 ,  x15 ,  8
	lw x27 ,  0 ( x15 )
	sw x14 ,  232 ( x2 )
	lw x22 ,  4 ( x15 )
	jal x0, .LBB1_115
.LBB1_93:                               //  %cond.true277
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  232 ( x2 )
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  4
	sw x15 ,  232 ( x2 )
	addi x15 ,  x14 ,  8
	lw x27 ,  0 ( x14 )
	sw x15 ,  232 ( x2 )
	slti x15 ,  x0 ,  1
	lw x22 ,  4 ( x14 )
	sb x0 ,  231 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x18, .LBB1_116
	jal x0, .LBB1_117
.LBB1_94:                               //  %if.end459
                                        //    in Loop: Header=BB1_7 Depth=1
	sw x18 ,  24 ( x2 )             //  4-byte Folded Spill
	sb x8 ,  52 ( x2 )
.LBB1_95:                               //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	add x18 ,  x0 ,  x26
	slti x27 ,  x0 ,  1
	addi x26 ,  x2 ,  52
	sb x0 ,  231 ( x2 )
	jal x0, .LBB1_111
.LBB1_96:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x27 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  6
	bltu x27, x15, .LBB1_98
.LBB1_97:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	add x27 ,  x0 ,  x15
.LBB1_98:                               //  %if.then248
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	jal x0, .LBB1_110
.LBB1_99:                               //  %cond.true140
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x27 ,  0 ( x15 )
.LBB1_100:                              //  %cond.end162
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	srai x22 ,  x27 ,  31&31
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x22, x0, .LBB1_63
.LBB1_101:                              //  %if.then368.thread
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x0 ,  -1
	bge x15, x18, .LBB1_103
.LBB1_102:                              //    in Loop: Header=BB1_7 Depth=1
	andi x9 ,  x9 ,  -129
.LBB1_103:                              //  %if.then368.thread
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x0 ,  45
	sb x15 ,  231 ( x2 )
	sltu x15 ,  x0 ,  x27
	sub x27 ,  x0 ,  x27
	add x15 ,  x15 ,  x22
	sub x22 ,  x0 ,  x15
	jal x0, .LBB1_126
.LBB1_104:                              //  %cond.true211
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x27 ,  0 ( x15 )
	jal x0, .LBB1_114
.LBB1_105:                              //  %cond.true282
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x27 ,  0 ( x15 )
	jal x0, .LBB1_226
.LBB1_106:                              //  %if.then175
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	srai x14 ,  x18 ,  31&31
	lw x15 ,  0 ( x15 )
	sw x14 ,  4 ( x15 )
	sw x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_5
	jal x0, .LBB1_7
.LBB1_107:                              //  %cond.true318
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  232 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  232 ( x2 )
	lw x27 ,  0 ( x14 )
.LBB1_108:                              //  %cond.false327
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	andi x14 ,  x9 ,  1
	bltu x0, x14, .LBB1_78
	jal x0, .LBB1_80
.LBB1_109:                              //  %if.else268
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x26
	call strlen
	add x27 ,  x0 ,  x10
.LBB1_110:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	add x15 ,  x0 ,  x0
	add x18 ,  x0 ,  x15
.LBB1_111:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x27, x18, .LBB1_134
	jal x0, .LBB1_135
.LBB1_112:                              //  %cond.true145
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x15 ,  0 ( x15 )
	slli x15 ,  x15 ,  16&31
	srai x27 ,  x15 ,  16&31
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	srai x22 ,  x27 ,  31&31
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	bge x22, x0, .LBB1_63
	jal x0, .LBB1_101
.LBB1_113:                              //  %cond.true216
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lhu x27 ,  0 ( x15 )
.LBB1_114:                              //  %cond.false220
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
.LBB1_115:                              //  %cond.end236
                                        //    in Loop: Header=BB1_7 Depth=1
	add x15 ,  x0 ,  x0
	andi x9 ,  x9 ,  -1025
	sb x0 ,  231 ( x2 )
	addi x14 ,  x0 ,  -1
	bge x14, x18, .LBB1_117
.LBB1_116:                              //    in Loop: Header=BB1_7 Depth=1
	andi x9 ,  x9 ,  -129
.LBB1_117:                              //  %number
                                        //    in Loop: Header=BB1_7 Depth=1
	bltu x0, x18, .LBB1_122
.LBB1_118:                              //  %number
                                        //    in Loop: Header=BB1_7 Depth=1
	or x14 ,  x22 ,  x27
	bltu x0, x14, .LBB1_122
.LBB1_119:                              //  %if.else439
                                        //    in Loop: Header=BB1_7 Depth=1
	bltu x0, x15, .LBB1_131
.LBB1_120:                              //  %if.else439
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  1
	beq x0, x15, .LBB1_131
.LBB1_121:                              //  %if.then446
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x0 ,  48
	jal x0, .LBB1_130
.LBB1_122:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x15, .LBB1_203
.LBB1_123:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB1_126
.LBB1_124:                              //  %if.then368
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x15 ,  2
	bltu x0, x15, .LBB1_208
.LBB1_125:                              //  %do.body430
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x15 ,  x27 ,  15
	slli x14 ,  x22 ,  28&31
	srli x22 ,  x22 ,  4&31
	add x15 ,  x15 ,  x8
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x26 )
	srli x15 ,  x27 ,  4&31
	addi x26 ,  x26 ,  -1
	or x27 ,  x14 ,  x15
	or x15 ,  x22 ,  x27
	bltu x0, x15, .LBB1_125
	jal x0, .LBB1_132
.LBB1_126:                              //  %sw.bb388
                                        //    in Loop: Header=BB1_7 Depth=1
	add x15 ,  x0 ,  x0
	bne x22, x15, .LBB1_128
.LBB1_127:                              //    in Loop: Header=BB1_7 Depth=1
	sltiu x15 ,  x27 ,  10
.LBB1_128:                              //  %sw.bb388
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x15, .LBB1_197
.LBB1_129:                              //  %if.then391
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x27 ,  48
.LBB1_130:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x26 ,  x2 ,  151
	sb x15 ,  151 ( x2 )
	jal x0, .LBB1_132
.LBB1_131:                              //    in Loop: Header=BB1_7 Depth=1
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB1_132:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x22 ,  16 ( x2 )             //  4-byte Folded Reload
.LBB1_133:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  20 ( x2 )             //  4-byte Folded Reload
	sub x27 ,  x15 ,  x26
	add x15 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	blt x27, x18, .LBB1_135
.LBB1_134:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	add x15 ,  x0 ,  x27
.LBB1_135:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x14 ,  231 ( x2 )
	andi x21 ,  x9 ,  2
	sltu x14 ,  x0 ,  x14
	add x8 ,  x14 ,  x15
	srli x15 ,  x21 ,  1&31
	beq x0, x15, .LBB1_137
.LBB1_136:                              //    in Loop: Header=BB1_7 Depth=1
	addi x8 ,  x8 ,  2
.LBB1_137:                              //  %sw.epilog462
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x14 ,  x0 ,  16
	andi x18 ,  x9 ,  132
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	beq x0, x18, .LBB1_138
.LBB1_146:                              //  %if.end525
                                        //    in Loop: Header=BB1_7 Depth=1
	lbu x15 ,  231 ( x2 )
	beq x0, x15, .LBB1_152
.LBB1_147:                              //  %if.then527
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x12 ,  x2 ,  216
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  1
	sw x15 ,  8 ( x12 )
	slti x15 ,  x0 ,  1
	sw x15 ,  4 ( x19 )
	addi x15 ,  x2 ,  231
	sw x15 ,  0 ( x19 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_149
.LBB1_148:                              //  %if.then537
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	call __ssprint_r
	addi x19 ,  x2 ,  152
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_152
	jal x0, .LBB1_238
.LBB1_138:                              //  %if.then481
                                        //    in Loop: Header=BB1_7 Depth=1
	sub x8 ,  x24 ,  x8
	bge x0, x8, .LBB1_151
.LBB1_139:                              //  %while.cond486.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_142
	jal x0, .LBB1_144
.LBB1_140:                              //    in Loop: Header=BB1_142 Depth=2
	addi x19 ,  x19 ,  8
.LBB1_141:                              //  %if.end505
                                        //    in Loop: Header=BB1_142 Depth=2
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x15 ,  (_svfiprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	bge x14, x8, .LBB1_144
.LBB1_142:                              //  %while.body489
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x12 ,  x2 ,  216
	sw x14 ,  4 ( x19 )
	lw x15 ,  8 ( x12 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x12 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_140
.LBB1_143:                              //  %if.then499
                                        //    in Loop: Header=BB1_142 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	call __ssprint_r
	addi x19 ,  x2 ,  152
	beq x0, x10, .LBB1_141
	jal x0, .LBB1_238
.LBB1_149:                              //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
	addi x14 ,  x0 ,  16
	bltu x0, x21, .LBB1_153
.LBB1_162:                              //    in Loop: Header=BB1_7 Depth=1
	addi x21 ,  x2 ,  216
	xori x15 ,  x18 ,  128
	bltu x0, x15, .LBB1_163
.LBB1_156:                              //  %if.then569
                                        //    in Loop: Header=BB1_7 Depth=1
	sub x8 ,  x24 ,  x8
	bge x0, x8, .LBB1_163
.LBB1_157:                              //  %while.cond574.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  _svfiprintf_r.zeroes&4095
	lui x15 ,  (_svfiprintf_r.zeroes>>12)&1048575
	addi x18 ,  x2 ,  152
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_160
	jal x0, .LBB1_164
.LBB1_158:                              //    in Loop: Header=BB1_160 Depth=2
	addi x19 ,  x19 ,  8
.LBB1_159:                              //  %if.end593
                                        //    in Loop: Header=BB1_160 Depth=2
	lui x30 ,  _svfiprintf_r.zeroes&4095
	lui x15 ,  (_svfiprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	bge x14, x8, .LBB1_164
.LBB1_160:                              //  %while.body577
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  8 ( x21 )
	sw x14 ,  4 ( x19 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_158
.LBB1_161:                              //  %if.then587
                                        //    in Loop: Header=BB1_160 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	add x19 ,  x0 ,  x18
	beq x0, x10, .LBB1_159
	jal x0, .LBB1_238
.LBB1_164:                              //  %while.end595
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  8 ( x21 )
	sw x8 ,  4 ( x19 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_177
.LBB1_165:                              //  %if.then605
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	add x19 ,  x0 ,  x18
	addi x14 ,  x0 ,  16
	bltu x0, x10, .LBB1_238
.LBB1_166:                              //  %if.end613
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x15 ,  x27
	blt x0, x8, .LBB1_167
	jal x0, .LBB1_178
.LBB1_144:                              //  %while.end507
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x12 ,  x2 ,  216
	sw x8 ,  4 ( x19 )
	lw x15 ,  8 ( x12 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x12 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_150
.LBB1_145:                              //  %if.then517
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	call __ssprint_r
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	addi x19 ,  x2 ,  152
	addi x14 ,  x0 ,  16
	beq x0, x10, .LBB1_146
	jal x0, .LBB1_238
.LBB1_177:                              //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
	addi x14 ,  x0 ,  16
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x15 ,  x27
	blt x0, x8, .LBB1_167
	jal x0, .LBB1_178
.LBB1_150:                              //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
	addi x14 ,  x0 ,  16
.LBB1_151:                              //  %if.end525
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lbu x15 ,  231 ( x2 )
	bltu x0, x15, .LBB1_147
.LBB1_152:                              //  %if.end544
                                        //    in Loop: Header=BB1_7 Depth=1
	beq x0, x21, .LBB1_162
.LBB1_153:                              //  %if.then547
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x21 ,  x2 ,  216
	lw x15 ,  8 ( x21 )
	addi x15 ,  x15 ,  2
	sw x15 ,  8 ( x21 )
	addi x15 ,  x0 ,  2
	sw x15 ,  4 ( x19 )
	addi x15 ,  x2 ,  50
	sw x15 ,  0 ( x19 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_174
.LBB1_154:                              //  %if.then558
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	addi x19 ,  x2 ,  152
	addi x14 ,  x0 ,  16
	bltu x0, x10, .LBB1_238
.LBB1_155:                              //  %if.end565
                                        //    in Loop: Header=BB1_7 Depth=1
	xori x15 ,  x18 ,  128
	beq x0, x15, .LBB1_156
.LBB1_163:                              //    in Loop: Header=BB1_7 Depth=1
	addi x18 ,  x2 ,  152
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x15 ,  x27
	bge x0, x8, .LBB1_178
.LBB1_167:                              //  %while.cond618.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  _svfiprintf_r.zeroes&4095
	lui x15 ,  (_svfiprintf_r.zeroes>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	slti x15 ,  x8 ,  17
	beq x0, x15, .LBB1_170
	jal x0, .LBB1_172
.LBB1_168:                              //    in Loop: Header=BB1_170 Depth=2
	addi x19 ,  x19 ,  8
.LBB1_169:                              //  %if.end637
                                        //    in Loop: Header=BB1_170 Depth=2
	lui x30 ,  _svfiprintf_r.zeroes&4095
	lui x15 ,  (_svfiprintf_r.zeroes>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x14 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  0 ( x19 )
	bge x14, x8, .LBB1_172
.LBB1_170:                              //  %while.body621
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x15 ,  8 ( x21 )
	sw x14 ,  4 ( x19 )
	addi x15 ,  x15 ,  16
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_168
.LBB1_171:                              //  %if.then631
                                        //    in Loop: Header=BB1_170 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	add x19 ,  x0 ,  x18
	beq x0, x10, .LBB1_169
	jal x0, .LBB1_238
.LBB1_172:                              //  %while.end639
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  8 ( x21 )
	sw x8 ,  4 ( x19 )
	add x15 ,  x8 ,  x15
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_175
.LBB1_173:                              //  %if.then649
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	add x19 ,  x0 ,  x18
	beq x0, x10, .LBB1_178
	jal x0, .LBB1_238
.LBB1_174:                              //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
	addi x14 ,  x0 ,  16
	xori x15 ,  x18 ,  128
	beq x0, x15, .LBB1_156
	jal x0, .LBB1_163
.LBB1_175:                              //    in Loop: Header=BB1_7 Depth=1
	addi x19 ,  x19 ,  8
.LBB1_178:                              //  %if.end656
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  8 ( x21 )
	sw x27 ,  4 ( x19 )
	sw x26 ,  0 ( x19 )
	add x15 ,  x27 ,  x15
	sw x15 ,  8 ( x21 )
	lw x15 ,  220 ( x2 )
	addi x14 ,  x15 ,  1
	slti x15 ,  x15 ,  7
	sw x14 ,  220 ( x2 )
	bltu x0, x15, .LBB1_188
.LBB1_179:                              //  %if.then666
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	add x15 ,  x0 ,  x18
	lw x18 ,  24 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x0 ,  x0
	addi x27 ,  x0 ,  122
	bltu x0, x10, .LBB1_233
.LBB1_180:                              //  %if.end672
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x14 ,  x9 ,  4
	beq x0, x14, .LBB1_191
.LBB1_181:                              //  %if.then675
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	sub x8 ,  x24 ,  x14
	bge x0, x8, .LBB1_191
.LBB1_182:                              //  %while.cond680.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x14 ,  (_svfiprintf_r.blanks>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	slti x14 ,  x8 ,  17
	bltu x0, x14, .LBB1_189
.LBB1_183:                              //  %while.body683.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x13 ,  x0 ,  16
	jal x0, .LBB1_186
.LBB1_184:                              //    in Loop: Header=BB1_186 Depth=2
	addi x15 ,  x15 ,  8
.LBB1_185:                              //  %if.end699
                                        //    in Loop: Header=BB1_186 Depth=2
	lui x30 ,  _svfiprintf_r.blanks&4095
	lui x14 ,  (_svfiprintf_r.blanks>>12)&1048575
	addi x8 ,  x8 ,  -16
	addi x13 ,  x0 ,  16
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  0 ( x15 )
	bge x13, x8, .LBB1_189
.LBB1_186:                              //  %while.body683
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x14 ,  8 ( x21 )
	sw x13 ,  4 ( x15 )
	addi x14 ,  x14 ,  16
	sw x14 ,  8 ( x21 )
	lw x14 ,  220 ( x2 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	sw x13 ,  220 ( x2 )
	bltu x0, x14, .LBB1_184
.LBB1_187:                              //  %if.then693
                                        //    in Loop: Header=BB1_186 Depth=2
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	addi x15 ,  x2 ,  152
	beq x0, x10, .LBB1_185
	jal x0, .LBB1_233
.LBB1_188:                              //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x19 ,  8
	lw x18 ,  24 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x0 ,  x0
	addi x27 ,  x0 ,  122
	andi x14 ,  x9 ,  4
	bltu x0, x14, .LBB1_181
	jal x0, .LBB1_191
.LBB1_189:                              //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x15 ,  4
	lw x14 ,  220 ( x2 )
	sw x8 ,  0 ( x15 )
	lw x15 ,  8 ( x21 )
	addi x13 ,  x14 ,  1
	slti x14 ,  x14 ,  7
	add x15 ,  x8 ,  x15
	sw x13 ,  220 ( x2 )
	sw x15 ,  8 ( x21 )
	bltu x0, x14, .LBB1_192
.LBB1_190:                              //  %if.then711
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	bltu x0, x10, .LBB1_233
.LBB1_191:                              //  %if.end719thread-pre-split
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  224 ( x2 )
.LBB1_192:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  32 ( x2 )             //  4-byte Folded Reload
	blt x14, x24, .LBB1_194
.LBB1_193:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	add x24 ,  x0 ,  x14
.LBB1_194:                              //  %if.end719
                                        //    in Loop: Header=BB1_7 Depth=1
	add x18 ,  x18 ,  x24
	beq x0, x15, .LBB1_196
.LBB1_195:                              //  %land.lhs.true729
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	call __ssprint_r
	bltu x0, x10, .LBB1_233
.LBB1_196:                              //  %if.end733
                                        //    in Loop: Header=BB1_7 Depth=1
	sw x0 ,  220 ( x2 )
	addi x19 ,  x2 ,  152
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	bltu x0, x15, .LBB1_5
	jal x0, .LBB1_7
.LBB1_197:                              //  %do.body396.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	andi x15 ,  x9 ,  1024
	sw x9 ,  4 ( x2 )               //  4-byte Folded Spill
	bltu x0, x15, .LBB1_209
.LBB1_198:                              //  %do.body396.us.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_201
.LBB1_199:                              //  %do.body396.us
                                        //    in Loop: Header=BB1_201 Depth=2
	sltu x15 ,  x0 ,  x22
.LBB1_200:                              //  %do.body396.us
                                        //    in Loop: Header=BB1_201 Depth=2
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	sub x14 ,  x27 ,  x10
	add x27 ,  x0 ,  x9
	add x22 ,  x0 ,  x21
	ori x14 ,  x14 ,  48
	sb x14 ,  -1 ( x26 )
	addi x26 ,  x26 ,  -1
	beq x0, x15, .LBB1_221
.LBB1_201:                              //  %do.body396.us
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x25 ,  x0 ,  10
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x18
	call __udivdi3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x18
	add x9 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	call __muldi3
	bne x22, x18, .LBB1_199
.LBB1_202:                              //    in Loop: Header=BB1_201 Depth=2
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x27
	jal x0, .LBB1_200
.LBB1_203:                              //  %do.body371.preheader
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x26 ,  x2 ,  151
.LBB1_204:                              //  %do.body371
                                        //    Parent Loop BB1_7 Depth=1
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
	bltu x0, x13, .LBB1_204
.LBB1_205:                              //  %do.end378
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x14 ,  x26 ,  1
	andi x13 ,  x9 ,  1
	beq x0, x13, .LBB1_224
.LBB1_206:                              //  %do.end378
                                        //    in Loop: Header=BB1_7 Depth=1
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB1_224
.LBB1_207:                              //  %if.then385
                                        //    in Loop: Header=BB1_7 Depth=1
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x26 )
	jal x0, .LBB1_132
.LBB1_208:                              //  %sw.default
                                        //    in Loop: Header=BB1_7 Depth=1
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x26 ,  x15 ,  x30
	add x10 ,  x0 ,  x26
	call strlen
	add x27 ,  x0 ,  x10
	lw x22 ,  16 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x0 ,  x18
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	bge x27, x18, .LBB1_134
	jal x0, .LBB1_135
.LBB1_209:                              //  %do.body396.preheader5
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  12 ( x2 )             //  4-byte Folded Reload
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	add x8 ,  x0 ,  x0
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x0 ,  x15
	sw x15 ,  32 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB1_212
.LBB1_210:                              //  %if.end424
                                        //    in Loop: Header=BB1_212 Depth=2
	sltu x15 ,  x0 ,  x22
.LBB1_211:                              //  %if.end424
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x25 ,  36 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x21
	add x22 ,  x0 ,  x9
	sw x18 ,  40 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB1_222
.LBB1_212:                              //  %do.body396
                                        //    Parent Loop BB1_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x18 ,  x0 ,  10
	add x25 ,  x0 ,  x0
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x25
	call __udivdi3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x25
	add x21 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __muldi3
	lw x18 ,  40 ( x2 )             //  4-byte Folded Reload
	sub x15 ,  x27 ,  x10
	addi x8 ,  x8 ,  1
	ori x15 ,  x15 ,  48
	sb x15 ,  -1 ( x26 )
	addi x26 ,  x26 ,  -1
	lb x15 ,  0 ( x18 )
	bne x8, x15, .LBB1_219
.LBB1_213:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_212 Depth=2
	beq x22, x25, .LBB1_218
.LBB1_214:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_212 Depth=2
	add x14 ,  x0 ,  x25
	bltu x0, x14, .LBB1_219
.LBB1_215:                              //  %land.lhs.true407
                                        //    in Loop: Header=BB1_212 Depth=2
	andi x15 ,  x15 ,  255
	xori x15 ,  x15 ,  127
	beq x0, x15, .LBB1_219
.LBB1_216:                              //  %if.then414
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x15 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x12 ,  12 ( x2 )             //  4-byte Folded Reload
	add x26 ,  x15 ,  x26
	add x10 ,  x0 ,  x26
	call strncpy
	lbu x15 ,  1 ( x18 )
	add x8 ,  x0 ,  x0
	beq x15, x8, .LBB1_219
.LBB1_217:                              //  %if.then414
                                        //    in Loop: Header=BB1_212 Depth=2
	addi x18 ,  x18 ,  1
	bne x22, x25, .LBB1_210
	jal x0, .LBB1_220
.LBB1_218:                              //    in Loop: Header=BB1_212 Depth=2
	sltiu x14 ,  x27 ,  10
	beq x0, x14, .LBB1_215
.LBB1_219:                              //  %if.end424
                                        //    in Loop: Header=BB1_212 Depth=2
	bne x22, x25, .LBB1_210
.LBB1_220:                              //    in Loop: Header=BB1_212 Depth=2
	addi x15 ,  x0 ,  9
	sltu x15 ,  x15 ,  x27
	jal x0, .LBB1_211
.LBB1_221:                              //    in Loop: Header=BB1_7 Depth=1
	lw x22 ,  16 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_223
.LBB1_222:                              //    in Loop: Header=BB1_7 Depth=1
	lw x22 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
.LBB1_223:                              //  %if.end449
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x9 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB1_133
.LBB1_224:                              //    in Loop: Header=BB1_7 Depth=1
	add x26 ,  x0 ,  x14
	jal x0, .LBB1_132
.LBB1_225:                              //  %cond.true287
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lhu x27 ,  0 ( x15 )
.LBB1_226:                              //  %cond.false291
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	slti x15 ,  x0 ,  1
	sb x0 ,  231 ( x2 )
	addi x14 ,  x0 ,  -1
	blt x14, x18, .LBB1_116
	jal x0, .LBB1_117
.LBB1_227:                              //  %cond.true323
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x14 ,  232 ( x2 )
	addi x13 ,  x14 ,  4
	sw x13 ,  232 ( x2 )
	lhu x27 ,  0 ( x14 )
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	add x22 ,  x0 ,  x0
	andi x14 ,  x9 ,  1
	bltu x0, x14, .LBB1_78
	jal x0, .LBB1_80
.LBB1_228:                              //  %if.then186
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x15 ,  0 ( x15 )
	sh x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB1_246
.LBB1_247:                              //  %if.then186
	jal x0, .LBB1_5
.LBB1_246:                              //  %if.then186
                                        //    in Loop: Header=BB1_7 Depth=1
	jal x0, .LBB1_7
.LBB1_229:                              //  %if.then192
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x15 ,  232 ( x2 )
	addi x14 ,  x15 ,  4
	sw x14 ,  232 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x18 ,  0 ( x15 )
	add x8 ,  x0 ,  x23
	lbu x15 ,  0 ( x8 )
	beq x0, x15, .LBB1_248
.LBB1_249:                              //  %if.then192
	jal x0, .LBB1_5
.LBB1_248:                              //  %if.then192
                                        //    in Loop: Header=BB1_7 Depth=1
	jal x0, .LBB1_7
.LBB1_238:
	lw x18 ,  24 ( x2 )             //  4-byte Folded Reload
	lbu x15 ,  12 ( x22 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	bne x15, x14, .LBB1_234
	jal x0, .LBB1_235
.LBB1_230:                              //  %done
	lw x15 ,  224 ( x2 )
	beq x0, x15, .LBB1_232
.LBB1_231:                              //  %land.lhs.true742
	addi x12 ,  x2 ,  216
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x22
	call __ssprint_r
	bltu x0, x10, .LBB1_233
.LBB1_232:                              //  %if.end746
	sw x0 ,  220 ( x2 )
.LBB1_233:                              //  %if.end752
	lbu x15 ,  12 ( x22 )
	add x14 ,  x0 ,  x0
	andi x15 ,  x15 ,  64
	beq x15, x14, .LBB1_235
.LBB1_234:                              //  %if.end752
	addi x18 ,  x0 ,  -1
.LBB1_235:                              //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  236 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  240 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  244 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  248 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  252 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  256 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  260 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  264 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  268 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  272 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  276 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  280 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  284 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  288
	.cfi_def_cfa 2, 0
	ret
.LBB1_239:                              //  %if.then6
	addi x15 ,  x0 ,  12
	addi x18 ,  x0 ,  -1
	sw x15 ,  0 ( x25 )
	jal x0, .LBB1_235
.Lfunc_end1:
	.size	_svfiprintf_r, .Lfunc_end1-_svfiprintf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_230
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_27
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_29
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_30
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_35
	.long	.LBB1_38
	.long	.LBB1_94
	.long	.LBB1_37
	.long	.LBB1_20
	.long	.LBB1_94
	.long	.LBB1_41
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_50
	.long	.LBB1_56
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_64
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_51
	.long	.LBB1_94
	.long	.LBB1_70
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_76
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_50
	.long	.LBB1_57
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_42
	.long	.LBB1_57
	.long	.LBB1_26
	.long	.LBB1_94
	.long	.LBB1_44
	.long	.LBB1_94
	.long	.LBB1_81
	.long	.LBB1_65
	.long	.LBB1_86
	.long	.LBB1_26
	.long	.LBB1_94
	.long	.LBB1_51
	.long	.LBB1_40
	.long	.LBB1_71
	.long	.LBB1_94
	.long	.LBB1_94
	.long	.LBB1_87
	.long	.LBB1_94
	.long	.LBB1_40
                                        //  -- End function
	.address_space	0
	.type	_svfiprintf_r.blanks,@object //  @_svfiprintf_r.blanks
_svfiprintf_r.blanks:
	.zero	16,32
	.size	_svfiprintf_r.blanks, 16

	.address_space	0
	.type	_svfiprintf_r.zeroes,@object //  @_svfiprintf_r.zeroes
_svfiprintf_r.zeroes:
	.zero	16,48
	.size	_svfiprintf_r.zeroes, 16

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
