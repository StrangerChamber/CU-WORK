	.text
	.file	"__dprintf.c"
	.globl	__dprintf               //  -- Begin function __dprintf
	.type	__dprintf,@function
__dprintf:                              //  @__dprintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x18 ,  104 ( x2 )
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	addi x15 ,  x2 ,  108
	addi x23 ,  x0 ,  21
	lui x26 ,  (_impure_ptr>>12)&1048575
	addi x8 ,  x0 ,  2
	lui x24 ,  (print_number.chars>>12)&1048575
	addi x19 ,  x0 ,  15
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x15 ,  12 ( x2 )
	add x9 ,  x0 ,  x18
	lbu x14 ,  0 ( x9 )
	xori x15 ,  x14 ,  37
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %while.cond
	beq x0, x14, .LBB0_42
.LBB0_2:                                //  %if.then
	lui x30 ,  _impure_ptr&4095
	add x11 ,  x0 ,  x8
	addi x12 ,  x2 ,  19
	slti x13 ,  x0 ,  1
	sb x14 ,  19 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x10 ,  0 ( x15 )
	call _write_r
	addi x18 ,  x9 ,  1
.LBB0_3:                                //  %while.cond
	add x9 ,  x0 ,  x18
	lbu x14 ,  0 ( x9 )
	xori x15 ,  x14 ,  37
	bltu x0, x15, .LBB0_1
.LBB0_4:                                //  %lor.lhs.false
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_38 Depth 2
                                        //      Child Loop BB0_34 Depth 2
                                        //      Child Loop BB0_12 Depth 2
                                        //      Child Loop BB0_22 Depth 2
	lb x13 ,  1 ( x9 )
	andi x15 ,  x13 ,  255
	xori x12 ,  x15 ,  78
	beq x0, x12, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x12 ,  x15 ,  37
	bltu x0, x12, .LBB0_26
.LBB0_6:
	addi x9 ,  x9 ,  1
	jal x0, .LBB0_2
.LBB0_7:                                //  %if.then13
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  12 ( x2 )
	addi x18 ,  x9 ,  3
	addi x14 ,  x15 ,  4
	sw x14 ,  12 ( x2 )
	addi x14 ,  x15 ,  8
	lw x25 ,  0 ( x15 )
	sw x14 ,  12 ( x2 )
	bge x0, x25, .LBB0_3
.LBB0_8:                                //  %while.body20.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	lb x9 ,  2 ( x9 )
	addi x20 ,  x0 ,  16
	lw x27 ,  4 ( x15 )
	addi x15 ,  x0 ,  120
	andi x18 ,  x9 ,  255
	beq x18, x15, .LBB0_16
.LBB0_9:                                //  %while.body20.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x20 ,  x0 ,  10
.LBB0_16:                               //  %while.body20
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x25 ,  x25 ,  -1
	addi x15 ,  x9 ,  -99
	bltu x23, x15, .LBB0_24
.LBB0_17:                               //  %while.body20
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_18:                               //  %sw.bb25
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x15 ,  3 ( x27 )
	lbu x14 ,  2 ( x27 )
	slli x15 ,  x15 ,  24&31
	slli x14 ,  x14 ,  16&31
	or x15 ,  x15 ,  x14
	lbu x14 ,  1 ( x27 )
	slli x14 ,  x14 ,  8&31
	or x15 ,  x14 ,  x15
	lbu x14 ,  0 ( x27 )
	or x21 ,  x14 ,  x15
	xori x15 ,  x18 ,  100
	bltu x0, x15, .LBB0_21
.LBB0_19:                               //  %sw.bb25
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x21, x0, .LBB0_21
.LBB0_20:                               //  %if.then.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	addi x15 ,  x0 ,  45
	add x11 ,  x0 ,  x8
	addi x12 ,  x2 ,  51
	slti x13 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	sb x15 ,  51 ( x2 )
	or x15 ,  x26 ,  x30
	lw x10 ,  0 ( x15 )
	call _write_r
	sub x21 ,  x0 ,  x21
.LBB0_21:                               //  %if.end.i
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x22 ,  x2 ,  50
	sb x0 ,  50 ( x2 )
.LBB0_22:                               //  %do.body.i122
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x23 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x23
	call __udivsi3
	add x11 ,  x0 ,  x20
	add x21 ,  x0 ,  x10
	call __mulsi3
	lui x30 ,  print_number.chars&4095
	sub x15 ,  x23 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x24 ,  x30
	add x15 ,  x15 ,  x14
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x22 )
	addi x22 ,  x22 ,  -1
	bgeu x23, x20, .LBB0_22
.LBB0_23:                               //  %print_number.exit125
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	add x10 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x21 ,  0 ( x15 )
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call _write_r
	addi x27 ,  x27 ,  4
	addi x23 ,  x0 ,  21
.LBB0_24:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x0, x25, .LBB0_25
.LBB0_15:                               //  %if.end42
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	addi x15 ,  x0 ,  32
	add x11 ,  x0 ,  x8
	addi x12 ,  x2 ,  19
	slti x13 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	sb x15 ,  19 ( x2 )
	or x15 ,  x26 ,  x30
	lw x10 ,  0 ( x15 )
	call _write_r
	addi x25 ,  x25 ,  -1
	addi x15 ,  x9 ,  -99
	bgeu x23, x15, .LBB0_17
	jal x0, .LBB0_24
.LBB0_10:                               //  %sw.bb
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x15 ,  0 ( x27 )
	lui x30 ,  __unctrl&4095
	lui x14 ,  (__unctrl>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x21 ,  0 ( x15 )
	or x15 ,  x26 ,  x30
	lw x22 ,  0 ( x15 )
	add x10 ,  x0 ,  x21
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x21
	call _write_r
	addi x27 ,  x27 ,  1
	blt x0, x25, .LBB0_15
	jal x0, .LBB0_25
.LBB0_11:                               //  %sw.bb24
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x15 ,  3 ( x27 )
	addi x21 ,  x2 ,  50
	lbu x14 ,  2 ( x27 )
	slli x15 ,  x15 ,  24&31
	slli x14 ,  x14 ,  16&31
	or x15 ,  x15 ,  x14
	lbu x14 ,  1 ( x27 )
	slli x14 ,  x14 ,  8&31
	or x15 ,  x14 ,  x15
	lbu x14 ,  0 ( x27 )
	sb x0 ,  50 ( x2 )
	or x15 ,  x14 ,  x15
.LBB0_12:                               //  %do.body.i
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  print_number.chars&4095
	add x14 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x14 ,  15
	or x13 ,  x24 ,  x30
	add x15 ,  x15 ,  x13
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x21 )
	srli x15 ,  x14 ,  4&31
	addi x21 ,  x21 ,  -1
	bltu x19, x14, .LBB0_12
.LBB0_13:                               //  %print_number.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x22 ,  0 ( x15 )
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x21
	call _write_r
	addi x27 ,  x27 ,  4
	blt x0, x25, .LBB0_15
	jal x0, .LBB0_25
.LBB0_14:                               //  %sw.bb37
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x22 ,  0 ( x27 )
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x21 ,  0 ( x15 )
	add x10 ,  x0 ,  x22
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call _write_r
	addi x27 ,  x27 ,  4
	blt x0, x25, .LBB0_15
.LBB0_25:                               //    in Loop: Header=BB0_4 Depth=1
	lw x18 ,  8 ( x2 )              //  4-byte Folded Reload
	add x9 ,  x0 ,  x18
	lbu x14 ,  0 ( x9 )
	xori x15 ,  x14 ,  37
	bltu x0, x15, .LBB0_1
	jal x0, .LBB0_4
.LBB0_26:                               //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x18 ,  x9 ,  2
	addi x14 ,  x13 ,  -99
	bltu x23, x14, .LBB0_3
.LBB0_27:                               //  %if.else
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  JTI0_1&4095
	lui x13 ,  (JTI0_1>>12)&1048575
	slli x14 ,  x14 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_28:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x20 ,  x0 ,  16
	addi x14 ,  x0 ,  120
	beq x15, x14, .LBB0_30
.LBB0_29:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x20 ,  x0 ,  10
.LBB0_30:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  12 ( x2 )
	xori x15 ,  x15 ,  100
	addi x13 ,  x14 ,  4
	sw x13 ,  12 ( x2 )
	lw x21 ,  0 ( x14 )
	bltu x0, x15, .LBB0_33
.LBB0_31:                               //  %sw.bb53
                                        //    in Loop: Header=BB0_4 Depth=1
	bge x21, x0, .LBB0_33
.LBB0_32:                               //  %if.then.i156
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	addi x15 ,  x0 ,  45
	add x11 ,  x0 ,  x8
	addi x12 ,  x2 ,  51
	slti x13 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	sb x15 ,  51 ( x2 )
	or x15 ,  x26 ,  x30
	lw x10 ,  0 ( x15 )
	call _write_r
	sub x21 ,  x0 ,  x21
.LBB0_33:                               //  %if.end.i159
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x22 ,  x2 ,  50
	sb x0 ,  50 ( x2 )
.LBB0_34:                               //  %do.body.i167
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x23 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x23
	call __udivsi3
	add x11 ,  x0 ,  x20
	add x21 ,  x0 ,  x10
	call __mulsi3
	lui x30 ,  print_number.chars&4095
	sub x15 ,  x23 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x24 ,  x30
	add x15 ,  x15 ,  x14
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x22 )
	addi x22 ,  x22 ,  -1
	bgeu x23, x20, .LBB0_34
.LBB0_35:                               //  %print_number.exit170
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	add x10 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x20 ,  0 ( x15 )
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call _write_r
	addi x23 ,  x0 ,  21
	add x9 ,  x0 ,  x18
	lbu x14 ,  0 ( x9 )
	xori x15 ,  x14 ,  37
	bltu x0, x15, .LBB0_1
	jal x0, .LBB0_4
.LBB0_36:                               //  %sw.bb45
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  12 ( x2 )
	lui x30 ,  __unctrl&4095
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  4
	sw x14 ,  12 ( x2 )
	lui x14 ,  (__unctrl>>12)&1048575
	lbu x15 ,  0 ( x15 )
	or x14 ,  x14 ,  x30
	slli x15 ,  x15 ,  2&31
	add x15 ,  x15 ,  x14
	lw x20 ,  0 ( x15 )
	jal x0, .LBB0_39
.LBB0_37:                               //  %sw.bb51
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  12 ( x2 )
	addi x20 ,  x2 ,  50
	addi x14 ,  x15 ,  4
	sw x14 ,  12 ( x2 )
	lw x15 ,  0 ( x15 )
	sb x0 ,  50 ( x2 )
.LBB0_38:                               //  %do.body.i145
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lui x30 ,  print_number.chars&4095
	add x14 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x14 ,  15
	or x13 ,  x24 ,  x30
	add x15 ,  x15 ,  x13
	lb x15 ,  0 ( x15 )
	sb x15 ,  -1 ( x20 )
	srli x15 ,  x14 ,  4&31
	addi x20 ,  x20 ,  -1
	bltu x19, x14, .LBB0_38
.LBB0_39:                               //  %print_number.exit148
                                        //    in Loop: Header=BB0_4 Depth=1
	lui x30 ,  _impure_ptr&4095
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lw x21 ,  0 ( x15 )
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	jal x0, .LBB0_40
.LBB0_41:                               //  %sw.bb62
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  12 ( x2 )
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	addi x14 ,  x15 ,  4
	sw x14 ,  12 ( x2 )
	or x14 ,  x26 ,  x30
	lw x21 ,  0 ( x15 )
	lw x20 ,  0 ( x14 )
	add x10 ,  x0 ,  x21
	call strlen
	add x13 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x21
.LBB0_40:                               //  %print_number.exit148
                                        //    in Loop: Header=BB0_4 Depth=1
	call _write_r
	add x9 ,  x0 ,  x18
	lbu x14 ,  0 ( x9 )
	xori x15 ,  x14 ,  37
	bltu x0, x15, .LBB0_1
	jal x0, .LBB0_4
.LBB0_42:                               //  %while.end69
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__dprintf, .Lfunc_end0-__dprintf
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_10
	.long	.LBB0_18
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_11
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_14
	.long	.LBB0_24
	.long	.LBB0_18
	.long	.LBB0_24
	.long	.LBB0_24
	.long	.LBB0_18
JTI0_1:
	.long	.LBB0_36
	.long	.LBB0_28
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_37
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_41
	.long	.LBB0_3
	.long	.LBB0_28
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_28
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	print_number.chars,@object //  @print_number.chars
	.section	.rodata.cst16,"aM",@progbits,16
print_number.chars:
	.ascii	"0123456789abcdef"
	.size	print_number.chars, 16

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
