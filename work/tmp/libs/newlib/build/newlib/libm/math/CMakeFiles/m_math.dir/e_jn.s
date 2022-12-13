	.text
	.file	"e_jn.c"
	.globl	__ieee754_jn            //  -- Begin function __ieee754_jn
	.type	__ieee754_jn,@function
__ieee754_jn:                           //  @__ieee754_jn
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x13 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	lui x14 ,  (2146435073>>12)&1048575
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2146435073&4095
	and x8 ,  x15 ,  x13
	sub x15 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x19
	or x14 ,  x14 ,  x30
	slt x15 ,  x15 ,  x0
	or x15 ,  x15 ,  x8
	bltu x15, x14, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x13
	add x12 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_50
.LBB0_2:                                //  %if.end
	blt x18, x0, .LBB0_6
.LBB0_3:
	add x15 ,  x0 ,  x13
	xori x14 ,  x18 ,  1
	beq x0, x14, .LBB0_7
.LBB0_4:                                //  %if.end7
	bltu x0, x18, .LBB0_8
.LBB0_5:                                //  %if.then9
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x13
	call __ieee754_j0
	jal x0, .LBB0_50
.LBB0_6:                                //  %if.then4
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sub x18 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	xor x15 ,  x14 ,  x13
	xor x13 ,  x14 ,  x13
	xori x14 ,  x18 ,  1
	bltu x0, x14, .LBB0_4
.LBB0_7:                                //  %if.then12
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x13
	call __ieee754_j1
	jal x0, .LBB0_50
.LBB0_8:                                //  %if.end14
	slt x15 ,  x15 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x13
	and x24 ,  x18 ,  x15
	call fabs
	add x9 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x25 ,  x0 ,  x0
	srli x20 ,  x8 ,  20&31
	addi x15 ,  x0 ,  2046
	lui x26 ,  (-2147483648>>12)&1048575
	bltu x15, x20, .LBB0_15
.LBB0_9:                                //  %if.end14
	or x15 ,  x19 ,  x8
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x25
	beq x0, x15, .LBB0_48
.LBB0_10:                               //  %if.else
	add x10 ,  x0 ,  x18
	call __floatsidf
	add x8 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x19
	call __gedf2
	bge x10, x0, .LBB0_16
.LBB0_11:                               //  %if.else59
	addi x15 ,  x0 ,  992
	bltu x15, x20, .LBB0_19
.LBB0_12:                               //  %if.then62
	add x10 ,  x0 ,  x0
	addi x15 ,  x0 ,  33
	add x11 ,  x0 ,  x10
	blt x15, x18, .LBB0_48
.LBB0_13:                               //  %if.else66
	add x19 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x19
	call __muldf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	lui x20 ,  (1072693248>>12)&1048575
	slti x15 ,  x18 ,  2
	beq x0, x15, .LBB0_36
.LBB0_14:
	add x21 ,  x0 ,  x8
	add x22 ,  x0 ,  x9
	jal x0, .LBB0_38
.LBB0_15:
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x25
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	bne x24, x25, .LBB0_49
	jal x0, .LBB0_50
.LBB0_16:                               //  %if.then25
	sltiu x15 ,  x20 ,  1325
	bltu x0, x15, .LBB0_28
.LBB0_17:                               //  %if.then28
	lui x30 ,  JTI0_0&4095
	andi x15 ,  x18 ,  3
	lui x14 ,  (JTI0_0>>12)&1048575
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x15 ,  2&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_18:                               //  %sw.bb
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call cos
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call sin
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_44
.LBB0_19:                               //  %if.else80
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	add x8 ,  x0 ,  x0
	lui x11 ,  (1073741824>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x23
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	sw x24 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x8
	call __divdf3
	add x19 ,  x0 ,  x9
	add x9 ,  x0 ,  x10
	slli x10 ,  x18 ,  1&31
	add x20 ,  x0 ,  x11
	sw x10 ,  4 ( x2 )              //  4-byte Folded Spill
	call __floatsidf
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x23 ,  28 ( x2 )             //  4-byte Folded Spill
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	add x23 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	call __adddf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1104006501&4095
	lui x15 ,  (1104006501>>12)&1048575
	add x12 ,  x0 ,  x8
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	slti x8 ,  x0 ,  1
	bge x10, x0, .LBB0_22
.LBB0_20:                               //  %while.body.preheader
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_21:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	add x22 ,  x0 ,  x25
	add x21 ,  x0 ,  x24
	call __adddf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x26
	call __subdf3
	lui x30 ,  1104006501&4095
	lui x15 ,  (1104006501>>12)&1048575
	add x12 ,  x0 ,  x0
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	addi x8 ,  x8 ,  1
	add x23 ,  x0 ,  x21
	add x26 ,  x0 ,  x22
	blt x10, x0, .LBB0_21
.LBB0_22:                               //  %while.end
	add x15 ,  x18 ,  x8
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	lui x21 ,  (1072693248>>12)&1048575
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	add x19 ,  x0 ,  x23
	slli x22 ,  x15 ,  1&31
	add x20 ,  x0 ,  x23
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
.LBB0_23:                               //  %for.body100
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	call __floatsidf
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x21
	call __divdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x22 ,  x22 ,  -2
	bge x22, x24, .LBB0_23
.LBB0_24:                               //  %for.end107
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x10 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  20 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x22
	call __muldf3
	call fabs
	call __ieee754_log
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -17155601&4095
	lui x15 ,  (-17155601>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1082535490&4095
	lui x15 ,  (1082535490>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	addi x8 ,  x18 ,  -1
	add x22 ,  x0 ,  x10
	slli x10 ,  x8 ,  1&31
	call __floatsidf
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	bge x22, x0, .LBB0_31
.LBB0_25:                               //  %for.cond120.preheader
	bge x0, x8, .LBB0_46
.LBB0_26:                               //  %for.body123.preheader
	lw x9 ,  28 ( x2 )              //  4-byte Folded Reload
	lui x21 ,  (1072693248>>12)&1048575
	add x22 ,  x0 ,  x0
	add x25 ,  x0 ,  x20
	add x26 ,  x0 ,  x19
.LBB0_27:                               //  %for.body123
                                        //  =>This Inner Loop Header: Depth=1
	add x27 ,  x0 ,  x21
	add x18 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	call __muldf3
	lw x12 ,  32 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	addi x8 ,  x8 ,  -1
	add x25 ,  x0 ,  x18
	add x26 ,  x0 ,  x27
	blt x0, x8, .LBB0_27
	jal x0, .LBB0_47
.LBB0_28:                               //  %if.else48
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call __ieee754_j0
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call __ieee754_j1
	slti x15 ,  x18 ,  2
	bltu x0, x15, .LBB0_48
.LBB0_29:                               //  %for.body.preheader
	addi x21 ,  x0 ,  2
	addi x8 ,  x18 ,  -1
.LBB0_30:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x18 ,  x0 ,  x11
	call __floatsidf
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x23
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __subdf3
	addi x21 ,  x21 ,  2
	addi x8 ,  x8 ,  -1
	add x19 ,  x0 ,  x22
	add x20 ,  x0 ,  x18
	bltu x0, x8, .LBB0_30
	jal x0, .LBB0_48
.LBB0_31:                               //  %for.cond134.preheader
	bge x0, x8, .LBB0_46
.LBB0_32:                               //  %for.body137.preheader
	add x9 ,  x0 ,  x0
	lui x21 ,  (1072693248>>12)&1048575
	add x25 ,  x0 ,  x20
	add x26 ,  x0 ,  x19
	add x22 ,  x0 ,  x9
	jal x0, .LBB0_34
.LBB0_33:                               //  %if.then144
                                        //    in Loop: Header=BB0_34 Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __divdf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __divdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x22 ,  x0 ,  x9
	lui x21 ,  (1072693248>>12)&1048575
	addi x8 ,  x8 ,  -1
	add x23 ,  x0 ,  x27
	add x24 ,  x0 ,  x18
	bge x0, x8, .LBB0_47
.LBB0_34:                               //  %for.body137
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x27 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __muldf3
	lw x12 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  28 ( x2 )             //  4-byte Folded Reload
	call __divdf3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	lui x30 ,  630506365&4095
	lui x15 ,  (630506365>>12)&1048575
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1420970413&4095
	lui x15 ,  (1420970413>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __gtdf2
	blt x0, x10, .LBB0_33
.LBB0_35:                               //    in Loop: Header=BB0_34 Depth=1
	add x25 ,  x0 ,  x22
	add x26 ,  x0 ,  x21
	add x22 ,  x0 ,  x24
	add x21 ,  x0 ,  x23
	addi x8 ,  x8 ,  -1
	add x23 ,  x0 ,  x27
	add x24 ,  x0 ,  x18
	blt x0, x8, .LBB0_34
	jal x0, .LBB0_47
.LBB0_46:
	add x22 ,  x0 ,  x0
.LBB0_47:                               //  %if.end151
	lw x10 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  28 ( x2 )             //  4-byte Folded Reload
	call __ieee754_j0
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call __divdf3
	lw x24 ,  16 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	lui x26 ,  (-2147483648>>12)&1048575
.LBB0_48:                               //  %if.end157
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	beq x24, x25, .LBB0_50
.LBB0_49:
	xor x11 ,  x15 ,  x11
.LBB0_50:                               //  %cleanup
	lw x8 ,  36 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.LBB0_36:                               //  %for.body71.preheader
	add x19 ,  x0 ,  x0
	slti x23 ,  x0 ,  1
	add x21 ,  x0 ,  x8
	add x22 ,  x0 ,  x9
.LBB0_37:                               //  %for.body71
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	addi x23 ,  x23 ,  1
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	bne x18, x23, .LBB0_37
.LBB0_38:                               //  %for.end77
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	jal x0, .LBB0_39
.LBB0_40:                               //  %sw.bb33
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call cos
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call sin
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	jal x0, .LBB0_43
.LBB0_41:                               //  %sw.bb38
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call cos
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call sin
	lui x30 ,  -2147483648&4095
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	xor x11 ,  x15 ,  x19
	jal x0, .LBB0_43
.LBB0_42:                               //  %sw.bb43
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call cos
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call sin
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
.LBB0_43:                               //  %sw.epilog
	call __subdf3
.LBB0_44:                               //  %sw.epilog
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071779287&4095
	lui x15 ,  (1071779287>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x23
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
.LBB0_39:                               //  %for.end77
	call __divdf3
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	bne x24, x25, .LBB0_49
	jal x0, .LBB0_50
.Lfunc_end0:
	.size	__ieee754_jn, .Lfunc_end0-__ieee754_jn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_18
	.long	.LBB0_40
	.long	.LBB0_41
	.long	.LBB0_42
                                        //  -- End function
	.text
	.globl	__ieee754_yn            //  -- Begin function __ieee754_yn
	.type	__ieee754_yn,@function
__ieee754_yn:                           //  @__ieee754_yn
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  2147483647&4095
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	lui x13 ,  (2146435073>>12)&1048575
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	sub x14 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	or x14 ,  x14 ,  x9
	lui x30 ,  2146435073&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x8
	slt x14 ,  x14 ,  x0
	or x14 ,  x14 ,  x15
	or x13 ,  x13 ,  x30
	bltu x14, x13, .LBB1_2
.LBB1_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	jal x0, .LBB1_27
.LBB1_2:                                //  %if.end
	lui x30 ,  -1048576&4095
	lui x26 ,  (-1048576>>12)&1048575
	or x14 ,  x9 ,  x15
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x11 ,  x26 ,  x30
	beq x0, x14, .LBB1_27
.LBB1_3:                                //  %if.end6
	blt x8, x0, .LBB1_4
.LBB1_5:                                //  %if.end9
	blt x19, x0, .LBB1_7
.LBB1_6:
	slti x18 ,  x0 ,  1
	xori x14 ,  x19 ,  1
	beq x0, x14, .LBB1_11
.LBB1_9:                                //  %if.end15
	bltu x0, x19, .LBB1_12
.LBB1_10:                               //  %if.then17
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_y0
	jal x0, .LBB1_27
.LBB1_4:
	lui x11 ,  (2146959360>>12)&1048575
	jal x0, .LBB1_27
.LBB1_7:                                //  %if.then11
	sub x19 ,  x0 ,  x19
	slti x13 ,  x0 ,  1
	slli x14 ,  x19 ,  1&31
	andi x14 ,  x14 ,  2
	sub x18 ,  x13 ,  x14
	xori x14 ,  x19 ,  1
	bltu x0, x14, .LBB1_9
.LBB1_11:                               //  %if.then20
	add x10 ,  x0 ,  x18
	call __floatsidf
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_y1
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	jal x0, .LBB1_27
.LBB1_12:                               //  %if.end22
	add x10 ,  x0 ,  x0
	lui x14 ,  (2146435072>>12)&1048575
	add x11 ,  x0 ,  x10
	beq x15, x14, .LBB1_27
.LBB1_13:                               //  %if.end26
	srli x15 ,  x15 ,  20&31
	lui x25 ,  (-2147483648>>12)&1048575
	sltiu x15 ,  x15 ,  1325
	bltu x0, x15, .LBB1_20
.LBB1_14:                               //  %if.then29
	lui x30 ,  JTI1_0&4095
	andi x15 ,  x19 ,  3
	lui x14 ,  (JTI1_0>>12)&1048575
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x15 ,  2&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB1_15:                               //  %sw.bb
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	jal x0, .LBB1_19
.LBB1_20:                               //  %if.else
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_y0
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_y1
	slti x15 ,  x19 ,  2
	bltu x0, x15, .LBB1_25
.LBB1_21:                               //  %if.else
	lui x30 ,  -1048576&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	xor x15 ,  x15 ,  x11
	beq x0, x15, .LBB1_25
.LBB1_22:                               //  %for.body.preheader
	addi x22 ,  x0 ,  2
	add x27 ,  x0 ,  x22
.LBB1_23:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x23 ,  x0 ,  x11
	call __floatsidf
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __subdf3
	bge x27, x19, .LBB1_25
.LBB1_24:                               //  %for.body
                                        //    in Loop: Header=BB1_23 Depth=1
	lui x30 ,  -1048576&4095
	addi x22 ,  x22 ,  2
	addi x27 ,  x27 ,  1
	add x20 ,  x0 ,  x24
	add x21 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	xor x15 ,  x15 ,  x11
	bltu x0, x15, .LBB1_23
	jal x0, .LBB1_25
.LBB1_16:                               //  %sw.bb34
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	lui x30 ,  -2147483648&4095
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	xor x11 ,  x15 ,  x20
	call __subdf3
	jal x0, .LBB1_19
.LBB1_17:                               //  %sw.bb39
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __subdf3
	jal x0, .LBB1_19
.LBB1_18:                               //  %sw.bb44
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
.LBB1_19:                               //  %sw.epilog
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071779287&4095
	lui x15 ,  (1071779287>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __divdf3
.LBB1_25:                               //  %if.end74
	lui x30 ,  -2147483648&4095
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	blt x14, x18, .LBB1_27
.LBB1_26:                               //  %if.end74
	xor x11 ,  x15 ,  x11
.LBB1_27:                               //  %cleanup
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
.Lfunc_end1:
	.size	__ieee754_yn, .Lfunc_end1-__ieee754_yn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	.LBB1_15
	.long	.LBB1_16
	.long	.LBB1_17
	.long	.LBB1_18
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
