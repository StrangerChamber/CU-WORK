	.text
	.file	"dtoa.c"
	.globl	_dtoa_r                 //  -- Begin function _dtoa_r
	.type	_dtoa_r,@function
_dtoa_r:                                //  @_dtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x24 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x24 ,  x0 ,  x11
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x9 ,  x0 ,  x17
	add x8 ,  x0 ,  x16
	add x19 ,  x0 ,  x15
	add x20 ,  x0 ,  x14
	add x25 ,  x0 ,  x13
	add x23 ,  x0 ,  x12
	slti x21 ,  x0 ,  1
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x26 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x11 ,  64 ( x18 )
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x15 ,  68 ( x18 )
	add x10 ,  x0 ,  x18
	sll x14 ,  x21 ,  x15
	sw x15 ,  4 ( x11 )
	sw x14 ,  8 ( x11 )
	call _Bfree
	sw x0 ,  64 ( x18 )
.LBB0_2:                                //  %if.end
	blt x23, x0, .LBB0_10
.LBB0_3:                                //  %if.else
	sw x0 ,  0 ( x8 )
	lui x15 ,  (2146435072>>12)&1048575
	and x22 ,  x15 ,  x23
	bne x22, x15, .LBB0_11
.LBB0_4:                                //  %if.then17
	lui x30 ,  9999&4095
	lui x15 ,  (9999>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	sw x15 ,  0 ( x19 )
	lui x15 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	bltu x0, x24, .LBB0_7
.LBB0_5:                                //  %land.rhs
	lui x30 ,  1048575&4095
	lui x14 ,  (1048575>>12)&1048575
	lui x13 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	and x14 ,  x14 ,  x23
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x13 ,  x30
	add x13 ,  x0 ,  x0
	beq x14, x13, .LBB0_7
.LBB0_6:                                //  %land.rhs
	add x20 ,  x0 ,  x15
.LBB0_7:                                //  %land.end
	bltu x0, x9, .LBB0_8
.LBB0_253:                              //  %land.end
	jal x0, .LBB0_186
.LBB0_8:                                //  %if.then26
	lbu x15 ,  3 ( x20 )
	add x14 ,  x0 ,  x0
	beq x15, x14, .LBB0_16
.LBB0_9:                                //  %if.then26
	addi x15 ,  x20 ,  8
	jal x0, .LBB0_17
.LBB0_10:                               //  %if.then9
	lui x30 ,  2147483647&4095
	slti x15 ,  x0 ,  1
	sw x15 ,  0 ( x8 )
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x23 ,  x15 ,  x23
	lui x15 ,  (2146435072>>12)&1048575
	and x22 ,  x15 ,  x23
	beq x22, x15, .LBB0_4
.LBB0_11:                               //  %if.end32
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call __nedf2
	beq x0, x10, .LBB0_14
.LBB0_12:                               //  %if.end40
	addi x13 ,  x2 ,  76
	addi x14 ,  x2 ,  80
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	call __d2b
	srli x15 ,  x23 ,  20&31
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	sw x19 ,  52 ( x2 )             //  4-byte Folded Spill
	sw x10 ,  68 ( x2 )             //  4-byte Folded Spill
	sw x22 ,  24 ( x2 )             //  4-byte Folded Spill
	andi x15 ,  x15 ,  2047
	beq x0, x15, .LBB0_18
.LBB0_13:                               //  %if.then47
	lui x30 ,  1048575&4095
	lui x14 ,  (1048575>>12)&1048575
	lui x13 ,  (1072693248>>12)&1048575
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	addi x27 ,  x15 ,  -1023
	add x10 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x23
	or x11 ,  x13 ,  x14
	jal x0, .LBB0_22
.LBB0_14:                               //  %if.then35
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	sw x21 ,  0 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	bltu x0, x9, .LBB0_15
.LBB0_254:                              //  %if.then35
	jal x0, .LBB0_186
.LBB0_15:                               //  %if.then37
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	addi x15 ,  x20 ,  1
	jal x0, .LBB0_17
.LBB0_16:
	addi x15 ,  x20 ,  3
.LBB0_17:                               //  %cleanup
	sw x15 ,  0 ( x9 )
	jal x0, .LBB0_186
.LBB0_18:                               //  %if.else55
	lw x15 ,  80 ( x2 )
	lw x14 ,  76 ( x2 )
	add x8 ,  x15 ,  x14
	slti x15 ,  x8 ,  -1041
	bltu x0, x15, .LBB0_20
.LBB0_19:                               //  %cond.true59
	addi x14 ,  x0 ,  -1010
	addi x15 ,  x8 ,  1042
	sub x14 ,  x14 ,  x8
	srl x15 ,  x24 ,  x15
	sll x14 ,  x23 ,  x14
	or x10 ,  x15 ,  x14
	jal x0, .LBB0_21
.LBB0_20:                               //  %cond.false69
	addi x15 ,  x0 ,  -1042
	sub x15 ,  x15 ,  x8
	sll x10 ,  x24 ,  x15
.LBB0_21:                               //  %cond.end74
	call __floatunsidf
	lui x30 ,  -32505856&4095
	slti x15 ,  x0 ,  1
	addi x27 ,  x8 ,  -1
	sw x15 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x15 ,  (-32505856>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x11 ,  x15 ,  x11
.LBB0_22:                               //  %if.end82
	lui x30 ,  -1074266112&4095
	add x22 ,  x0 ,  x0
	lui x15 ,  (-1074266112>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x22
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1668236129&4095
	lui x15 ,  (1668236129>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070761895&4095
	lui x15 ,  (1070761895>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1956591437&4095
	lui x15 ,  (-1956591437>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069976104&4095
	lui x15 ,  (1069976104>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x27
	add x9 ,  x0 ,  x11
	call __floatsidf
	lui x30 ,  1352628731&4095
	lui x15 ,  (1352628731>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070810131&4095
	lui x15 ,  (1070810131>>12)&1048575
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
	add x26 ,  x0 ,  x10
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __nedf2
	sltu x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x22
	call __ltdf2
	slti x15 ,  x10 ,  0
	and x15 ,  x19 ,  x15
	sub x9 ,  x26 ,  x15
	addi x15 ,  x0 ,  22
	bltu x15, x9, .LBB0_25
.LBB0_23:                               //  %if.then102
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x9 ,  3&31
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __ltdf2
	add x21 ,  x0 ,  x0
	bge x10, x0, .LBB0_25
.LBB0_24:                               //  %select.unfold
	addi x9 ,  x9 ,  -1
.LBB0_25:                               //  %if.end110
	lw x14 ,  80 ( x2 )
	xori x15 ,  x27 ,  -1
	addi x13 ,  x0 ,  -1
	add x14 ,  x15 ,  x14
	blt x13, x14, .LBB0_28
.LBB0_26:                               //  %if.end110
	sub x12 ,  x0 ,  x14
	add x14 ,  x0 ,  x22
	bge x9, x0, .LBB0_29
.LBB0_27:                               //  %if.else123
	add x15 ,  x0 ,  x0
	sub x12 ,  x12 ,  x9
	sw x15 ,  48 ( x2 )             //  4-byte Folded Spill
	sub x15 ,  x0 ,  x9
	jal x0, .LBB0_30
.LBB0_28:
	add x12 ,  x0 ,  x22
	blt x9, x0, .LBB0_27
.LBB0_29:                               //  %if.then121
	add x15 ,  x0 ,  x0
	add x14 ,  x9 ,  x14
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
.LBB0_30:                               //  %if.then121
	sw x15 ,  16 ( x2 )             //  4-byte Folded Spill
	add x11 ,  x0 ,  x0
	addi x15 ,  x0 ,  9
	add x8 ,  x0 ,  x11
	bltu x15, x25, .LBB0_32
.LBB0_31:                               //  %if.end126
	add x8 ,  x0 ,  x25
.LBB0_32:                               //  %if.end126
	addi x15 ,  x0 ,  5
	sw x14 ,  36 ( x2 )             //  4-byte Folded Spill
	blt x15, x8, .LBB0_39
.LBB0_33:                               //  %if.end126
	add x14 ,  x0 ,  x8
	slti x10 ,  x0 ,  1
	sw x12 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  60 ( x2 )             //  4-byte Folded Spill
	bltu x15, x14, .LBB0_40
.LBB0_34:                               //  %if.end126
	lui x30 ,  JTI0_0&4095
	slli x15 ,  x14 ,  2&31
	lui x14 ,  (JTI0_0>>12)&1048575
	add x19 ,  x0 ,  x13
	add x12 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x14 ,  0 ( x15 )
	add x15 ,  x0 ,  x10
	jalr x0 ,  0 ( x14 )
.LBB0_35:                               //  %sw.bb138
	add x15 ,  x0 ,  x0
.LBB0_36:                               //  %sw.bb139
	blt x10, x20, .LBB0_38
.LBB0_37:                               //  %sw.bb139
	add x20 ,  x0 ,  x10
.LBB0_38:                               //  %sw.bb139
	add x13 ,  x0 ,  x20
	add x19 ,  x0 ,  x20
	add x10 ,  x0 ,  x15
	add x27 ,  x0 ,  x20
	sltiu x15 ,  x27 ,  24
	sw x0 ,  68 ( x18 )
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB0_44
	jal x0, .LBB0_47
.LBB0_39:
	addi x14 ,  x8 ,  -4
	slti x10 ,  x0 ,  1
	sw x12 ,  20 ( x2 )             //  4-byte Folded Spill
	sw x14 ,  60 ( x2 )             //  4-byte Folded Spill
	bgeu x15, x14, .LBB0_34
.LBB0_40:
	add x19 ,  x0 ,  x13
	sltiu x15 ,  x27 ,  24
	sw x0 ,  68 ( x18 )
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB0_44
	jal x0, .LBB0_47
.LBB0_41:                               //  %sw.bb144
	add x10 ,  x0 ,  x0
.LBB0_42:                               //  %sw.bb145
	add x13 ,  x20 ,  x9
	add x12 ,  x0 ,  x20
	addi x19 ,  x13 ,  1
	add x27 ,  x0 ,  x19
	blt x13, x0, .LBB0_48
.LBB0_43:                               //  %sw.epilog
	sltiu x15 ,  x27 ,  24
	sw x0 ,  68 ( x18 )
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	bltu x0, x15, .LBB0_47
.LBB0_44:                               //  %for.body.preheader
	addi x15 ,  x0 ,  4
	add x11 ,  x0 ,  x0
.LBB0_45:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x15 ,  x15 ,  1&31
	addi x11 ,  x11 ,  1
	addi x14 ,  x15 ,  20
	bgeu x27, x14, .LBB0_45
.LBB0_46:                               //  %for.cond.for.end_crit_edge
	sw x11 ,  68 ( x18 )
.LBB0_47:                               //  %for.end
	add x12 ,  x0 ,  x20
	jal x0, .LBB0_49
.LBB0_48:                               //  %sw.epilog.thread
	sw x13 ,  28 ( x2 )             //  4-byte Folded Spill
	sw x0 ,  68 ( x18 )
.LBB0_49:                               //  %for.end
	sw x10 ,  44 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x18
	sw x12 ,  32 ( x2 )             //  4-byte Folded Spill
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	call _Balloc
	add x20 ,  x0 ,  x10
	bltu x0, x20, .LBB0_50
.LBB0_255:                              //  %for.end
	jal x0, .LBB0_249
.LBB0_50:                               //  %if.end164
	slti x15 ,  x8 ,  6
	addi x14 ,  x0 ,  14
	sw x20 ,  64 ( x18 )
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	sltu x14 ,  x14 ,  x19
	xori x15 ,  x15 ,  1
	or x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_97
.LBB0_51:                               //  %if.then174
	lw x21 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x0, x21, .LBB0_54
.LBB0_52:                               //  %if.then179
	lui x30 ,  __mprec_tens&4095
	andi x15 ,  x21 ,  15
	lui x14 ,  (__mprec_tens>>12)&1048575
	srli x8 ,  x21 ,  4&31
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x15 ,  3&31
	or x14 ,  x14 ,  x30
	add x19 ,  x15 ,  x14
	andi x15 ,  x21 ,  256
	bltu x0, x15, .LBB0_60
.LBB0_53:
	addi x25 ,  x0 ,  2
	add x9 ,  x0 ,  x24
	add x22 ,  x0 ,  x23
	lw x14 ,  4 ( x19 )
	lw x15 ,  0 ( x19 )
	bltu x0, x8, .LBB0_61
	jal x0, .LBB0_65
.LBB0_54:                               //  %if.else206
	addi x25 ,  x0 ,  2
	beq x0, x21, .LBB0_71
.LBB0_55:                               //  %if.then210
	lui x30 ,  __mprec_tens&4095
	sub x8 ,  x0 ,  x21
	lui x14 ,  (__mprec_tens>>12)&1048575
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	andi x15 ,  x8 ,  15
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x15 ,  3&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __muldf3
	add x27 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	srai x8 ,  x8 ,  4&31
	beq x0, x8, .LBB0_72
.LBB0_56:                               //  %for.body218.preheader
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  __mprec_bigtens&4095
	lui x15 ,  (__mprec_bigtens>>12)&1048575
	addi x25 ,  x0 ,  2
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	andi x15 ,  x8 ,  1
	bltu x0, x15, .LBB0_59
.LBB0_57:                               //  %for.inc227
	addi x9 ,  x9 ,  8
	srai x8 ,  x8 ,  1&31
	beq x0, x8, .LBB0_66
.LBB0_58:                               //  %for.body218
	andi x15 ,  x8 ,  1
	beq x0, x15, .LBB0_57
.LBB0_59:                               //  %if.then221
	lw x12 ,  0 ( x9 )
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	lw x13 ,  4 ( x9 )
	call __muldf3
	add x27 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	addi x25 ,  x25 ,  1
	addi x9 ,  x9 ,  8
	srai x8 ,  x8 ,  1&31
	bltu x0, x8, .LBB0_58
	jal x0, .LBB0_66
.LBB0_60:                               //  %if.then185
	lui x30 ,  __mprec_bigtens&4095
	lui x15 ,  (__mprec_bigtens>>12)&1048575
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x12 ,  32 ( x15 )
	lw x13 ,  36 ( x15 )
	call __divdf3
	add x9 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	addi x25 ,  x0 ,  3
	andi x8 ,  x8 ,  15
	lw x14 ,  4 ( x19 )
	lw x15 ,  0 ( x19 )
	beq x0, x8, .LBB0_65
.LBB0_61:                               //  %for.body192.preheader
	lui x30 ,  __mprec_bigtens&4095
	lui x13 ,  (__mprec_bigtens>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x13 ,  x30
	andi x13 ,  x8 ,  1
	bltu x0, x13, .LBB0_64
.LBB0_62:                               //  %for.inc200
	addi x19 ,  x19 ,  8
	srai x8 ,  x8 ,  1&31
	beq x0, x8, .LBB0_65
.LBB0_63:                               //  %for.body192
	andi x13 ,  x8 ,  1
	beq x0, x13, .LBB0_62
.LBB0_64:                               //  %if.then195
	lw x12 ,  0 ( x19 )
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	lw x13 ,  4 ( x19 )
	call __muldf3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
	addi x25 ,  x25 ,  1
	addi x19 ,  x19 ,  8
	srai x8 ,  x8 ,  1&31
	bltu x0, x8, .LBB0_63
.LBB0_65:                               //  %for.end203
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x15
	add x13 ,  x0 ,  x14
	call __divdf3
	add x27 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
.LBB0_66:                               //  %if.end232
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_73
.LBB0_67:                               //  %land.lhs.true234
	bge x0, x19, .LBB0_73
.LBB0_68:                               //  %land.lhs.true234
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __ltdf2
	bge x10, x0, .LBB0_73
.LBB0_69:                               //  %if.then241
	lw x15 ,  28 ( x2 )             //  4-byte Folded Reload
	bge x0, x15, .LBB0_97
.LBB0_70:                               //  %if.end245
	add x12 ,  x0 ,  x0
	lui x13 ,  (1076101120>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __muldf3
	lw x15 ,  72 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	addi x25 ,  x25 ,  1
	lw x19 ,  28 ( x2 )             //  4-byte Folded Reload
	addi x21 ,  x15 ,  -1
	jal x0, .LBB0_73
.LBB0_71:
	add x27 ,  x0 ,  x24
	add x22 ,  x0 ,  x23
.LBB0_72:
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  40 ( x2 )             //  4-byte Folded Reload
	bltu x0, x15, .LBB0_67
.LBB0_73:                               //  %if.end250
	add x10 ,  x0 ,  x25
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __muldf3
	add x25 ,  x0 ,  x0
	lui x13 ,  (1075576832>>12)&1048575
	add x12 ,  x0 ,  x25
	call __adddf3
	lui x30 ,  -54525952&4095
	lui x15 ,  (-54525952>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x8 ,  x15 ,  x11
	beq x0, x19, .LBB0_77
.LBB0_74:                               //  %if.end277
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x19 ,  3&31
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x25 ,  -4 ( x15 )
	lw x26 ,  -8 ( x15 )
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_79
.LBB0_75:                               //  %if.then279
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __fixdfsi
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	lui x11 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	addi x15 ,  x24 ,  48
	sb x15 ,  0 ( x20 )
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x24
	add x26 ,  x0 ,  x11
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __subdf3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	add x8 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	call __ltdf2
	bge x10, x0, .LBB0_81
.LBB0_76:
	addi x8 ,  x20 ,  1
	add x26 ,  x0 ,  x21
	jal x0, .LBB0_86
.LBB0_77:                               //  %if.then261
	lui x30 ,  -1072431104&4095
	lui x15 ,  (-1072431104>>12)&1048575
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x22 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	call __gtdf2
	bge x0, x10, .LBB0_87
.LBB0_78:
	add x26 ,  x0 ,  x21
	add x21 ,  x0 ,  x25
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_164
.LBB0_79:                               //  %if.else317
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __fixdfsi
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	addi x15 ,  x24 ,  48
	sb x15 ,  0 ( x20 )
	call __muldf3
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x24
	sw x11 ,  4 ( x2 )              //  4-byte Folded Spill
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	addi x26 ,  x20 ,  1
	xori x15 ,  x19 ,  1
	bltu x0, x15, .LBB0_89
.LBB0_80:
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_91
.LBB0_81:                               //  %if.end299.preheader
	sw x21 ,  4 ( x2 )              //  4-byte Folded Spill
	slti x21 ,  x0 ,  1
	add x22 ,  x0 ,  x0
	lui x9 ,  (1076101120>>12)&1048575
.LBB0_82:                               //  %if.end299
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x27
	call __subdf3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __ltdf2
	blt x10, x0, .LBB0_212
.LBB0_83:                               //  %if.end306
                                        //    in Loop: Header=BB0_82 Depth=1
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	bge x21, x19, .LBB0_97
.LBB0_84:                               //  %if.end311
                                        //    in Loop: Header=BB0_82 Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call __muldf3
	add x8 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __fixdfsi
	add x15 ,  x21 ,  x20
	addi x14 ,  x10 ,  48
	sb x14 ,  0 ( x15 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x24
	call __subdf3
	add x8 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	call __muldf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __ltdf2
	addi x21 ,  x21 ,  1
	bge x10, x0, .LBB0_82
.LBB0_85:                               //  %ret1.loopexit6
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
	add x8 ,  x21 ,  x20
.LBB0_86:                               //  %ret1
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_184
.LBB0_87:                               //  %if.end269
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x13 ,  x15 ,  x8
	call __ltdf2
	bge x10, x0, .LBB0_97
.LBB0_88:
	add x25 ,  x0 ,  x0
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	add x21 ,  x0 ,  x25
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_177
.LBB0_89:                               //  %for.inc355.preheader
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x19 ,  x19 ,  -1
	add x22 ,  x0 ,  x0
	lui x27 ,  (1076101120>>12)&1048575
.LBB0_90:                               //  %for.inc355
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x27
	call __muldf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __fixdfsi
	addi x15 ,  x10 ,  48
	sb x15 ,  0 ( x26 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	addi x26 ,  x26 ,  1
	addi x19 ,  x19 ,  -1
	bltu x0, x19, .LBB0_90
.LBB0_91:                               //  %if.then333
	lw x19 ,  4 ( x2 )              //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __gtdf2
	bge x0, x10, .LBB0_93
.LBB0_92:
	sw x21 ,  72 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_213
.LBB0_93:                               //  %if.else340
	add x10 ,  x0 ,  x0
	lui x11 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __ltdf2
	bge x10, x0, .LBB0_97
.LBB0_94:                               //  %while.cond.preheader
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	addi x8 ,  x26 ,  1
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
.LBB0_95:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  -2 ( x8 )
	addi x8 ,  x8 ,  -1
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB0_95
.LBB0_96:
	add x26 ,  x0 ,  x21
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_184
.LBB0_97:                               //  %if.end363
	lw x15 ,  76 ( x2 )
	addi x14 ,  x0 ,  14
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	blt x14, x26, .LBB0_103
.LBB0_98:                               //  %if.end363
	blt x15, x0, .LBB0_103
.LBB0_99:                               //  %if.then369
	lui x30 ,  __mprec_tens&4095
	lui x14 ,  (__mprec_tens>>12)&1048575
	slli x15 ,  x26 ,  3&31
	add x8 ,  x0 ,  x24
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	srli x30 ,  x30 ,  12&31
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x22 ,  4 ( x15 )
	lw x24 ,  0 ( x15 )
	blt x0, x19, .LBB0_107
.LBB0_100:                              //  %if.then369
	bge x9, x0, .LBB0_107
.LBB0_101:                              //  %if.then376
	add x25 ,  x0 ,  x0
	lui x13 ,  (1075052544>>12)&1048575
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	call __muldf3
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	blt x19, x0, .LBB0_176
.LBB0_102:                              //  %if.then376
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x23
	call __ledf2
	add x21 ,  x0 ,  x25
	blt x0, x10, .LBB0_164
	jal x0, .LBB0_177
.LBB0_103:                              //  %if.end439
	lw x8 ,  44 ( x2 )              //  4-byte Folded Reload
	lw x11 ,  64 ( x2 )             //  4-byte Folded Reload
	beq x0, x8, .LBB0_113
.LBB0_104:                              //  %if.then441
	lw x13 ,  60 ( x2 )             //  4-byte Folded Reload
	slti x14 ,  x0 ,  1
	lw x19 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	blt x14, x13, .LBB0_114
.LBB0_105:                              //  %if.then444
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x0
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	beq x13, x14, .LBB0_122
.LBB0_106:                              //  %if.then444
	addi x15 ,  x15 ,  1075
	jal x0, .LBB0_123
.LBB0_107:                              //  %for.cond387.preheader
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x22
	call __divdf3
	call __fixdfsi
	add x25 ,  x0 ,  x10
	addi x15 ,  x25 ,  48
	sb x15 ,  0 ( x20 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x23
	call __subdf3
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x20 ,  1
	xori x15 ,  x19 ,  1
	beq x0, x15, .LBB0_111
.LBB0_108:                              //  %if.end430.preheader
	addi x19 ,  x19 ,  -1
	add x8 ,  x0 ,  x0
	lui x9 ,  (1076101120>>12)&1048575
.LBB0_109:                              //  %if.end430
                                        //  =>This Inner Loop Header: Depth=1
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __muldf3
	add x13 ,  x0 ,  x8
	add x12 ,  x0 ,  x8
	add x21 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __nedf2
	beq x0, x10, .LBB0_121
.LBB0_110:                              //  %for.cond387
                                        //    in Loop: Header=BB0_109 Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x22
	call __divdf3
	call __fixdfsi
	add x25 ,  x0 ,  x10
	addi x15 ,  x25 ,  48
	sb x15 ,  0 ( x26 )
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x23
	call __subdf3
	addi x26 ,  x26 ,  1
	addi x19 ,  x19 ,  -1
	bltu x0, x19, .LBB0_109
.LBB0_111:                              //  %if.then400
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x22
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __gtdf2
	bge x0, x10, .LBB0_118
.LBB0_112:
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x26
	lbu x15 ,  -1 ( x8 )
	xori x14 ,  x15 ,  57
	beq x0, x14, .LBB0_215
	jal x0, .LBB0_217
.LBB0_113:
	lw x19 ,  20 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x0
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	add x9 ,  x0 ,  x19
	add x22 ,  x0 ,  x21
	blt x0, x9, .LBB0_129
.LBB0_138:
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	sw x9 ,  36 ( x2 )              //  4-byte Folded Spill
	blt x0, x22, .LBB0_134
	jal x0, .LBB0_143
.LBB0_114:                              //  %if.else452
	lw x10 ,  36 ( x2 )             //  4-byte Folded Reload
	add x13 ,  x0 ,  x0
	addi x22 ,  x11 ,  -1
	add x14 ,  x0 ,  x13
	blt x21, x22, .LBB0_115
.LBB0_124:                              //  %if.else452
	sub x14 ,  x21 ,  x22
	srai x12 ,  x11 ,  31&31
	add x15 ,  x0 ,  x13
	bge x11, x13, .LBB0_125
.LBB0_116:                              //  %if.else452
	and x12 ,  x11 ,  x12
	blt x21, x22, .LBB0_126
.LBB0_117:                              //  %if.else452
	add x22 ,  x0 ,  x21
	jal x0, .LBB0_127
.LBB0_115:                              //  %if.else452
	srai x12 ,  x11 ,  31&31
	add x15 ,  x0 ,  x13
	blt x11, x13, .LBB0_116
.LBB0_125:                              //  %if.else452
	add x15 ,  x0 ,  x11
	and x12 ,  x11 ,  x12
	bge x21, x22, .LBB0_117
.LBB0_126:
	sub x13 ,  x22 ,  x21
.LBB0_127:                              //  %if.else452
	sub x9 ,  x19 ,  x12
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x21 ,  x0 ,  x14
	add x12 ,  x12 ,  x13
	sw x12 ,  48 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_128
.LBB0_118:                              //  %lor.lhs.false407
	andi x15 ,  x25 ,  1
	beq x0, x15, .LBB0_121
.LBB0_119:                              //  %lor.lhs.false407
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x22
	call __nedf2
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
	beq x0, x10, .LBB0_214
.LBB0_120:
	add x8 ,  x0 ,  x26
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_184
.LBB0_121:
	add x8 ,  x0 ,  x26
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_184
.LBB0_122:
	lw x15 ,  80 ( x2 )
	addi x14 ,  x0 ,  54
	sub x15 ,  x14 ,  x15
.LBB0_123:                              //  %if.then444
	add x9 ,  x0 ,  x19
	add x22 ,  x0 ,  x21
.LBB0_128:                              //  %if.end468
	add x10 ,  x10 ,  x15
	slti x11 ,  x0 ,  1
	add x19 ,  x19 ,  x15
	sw x10 ,  36 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x18
	call __i2b
	add x25 ,  x0 ,  x10
	bge x0, x9, .LBB0_138
.LBB0_129:                              //  %if.end472
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	bge x0, x26, .LBB0_133
.LBB0_130:                              //  %if.then478
	add x15 ,  x0 ,  x9
	blt x9, x26, .LBB0_132
.LBB0_131:                              //  %if.then478
	add x15 ,  x0 ,  x26
.LBB0_132:                              //  %if.then478
	sub x26 ,  x26 ,  x15
	sub x9 ,  x9 ,  x15
	sub x19 ,  x19 ,  x15
.LBB0_133:                              //  %if.end488
	sw x9 ,  36 ( x2 )              //  4-byte Folded Spill
	bge x0, x22, .LBB0_143
.LBB0_134:                              //  %if.then491
	beq x0, x8, .LBB0_139
.LBB0_135:                              //  %if.then493
	bge x0, x21, .LBB0_141
.LBB0_136:                              //  %if.then496
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x21
	call __pow5mult
	lw x9 ,  68 ( x2 )              //  4-byte Folded Reload
	add x25 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x9
	call __multiply
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call _Bfree
	sub x12 ,  x22 ,  x21
	beq x0, x12, .LBB0_142
.LBB0_137:                              //  %if.then503
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_140
.LBB0_139:                              //  %if.else506
	lw x11 ,  68 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
.LBB0_140:                              //  %if.end509
	call __pow5mult
	sw x10 ,  68 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_143
.LBB0_141:
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	sub x12 ,  x22 ,  x21
	bltu x0, x12, .LBB0_137
.LBB0_142:
	sw x8 ,  68 ( x2 )              //  4-byte Folded Spill
.LBB0_143:                              //  %if.end509
	slti x9 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	add x11 ,  x0 ,  x9
	call __i2b
	lw x13 ,  48 ( x2 )             //  4-byte Folded Reload
	add x11 ,  x0 ,  x10
	bge x0, x13, .LBB0_145
.LBB0_144:                              //  %if.then513
	lw x12 ,  48 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	call __pow5mult
	lw x13 ,  48 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x10
	jal x0, .LBB0_146
.LBB0_145:
	add x27 ,  x0 ,  x11
.LBB0_146:                              //  %if.end515
	lui x30 ,  1048575&4095
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	lui x15 ,  (1048575>>12)&1048575
	addi x22 ,  x0 ,  32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x23
	or x15 ,  x24 ,  x15
	slt x14 ,  x9 ,  x14
	sltu x15 ,  x0 ,  x15
	or x15 ,  x15 ,  x14
	xori x14 ,  x8 ,  0
	sltiu x14 ,  x14 ,  1
	or x23 ,  x15 ,  x14
	xori x21 ,  x23 ,  1
	add x8 ,  x21 ,  x26
	beq x0, x13, .LBB0_148
.LBB0_147:                              //  %cond.true538
	add x14 ,  x0 ,  x27
	lw x15 ,  16 ( x14 )
	slli x15 ,  x15 ,  2&31
	add x15 ,  x14 ,  x15
	lw x10 ,  16 ( x15 )
	call __hi0bits
	sub x9 ,  x22 ,  x10
.LBB0_148:                              //  %cond.end544
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	add x15 ,  x8 ,  x9
	andi x14 ,  x15 ,  31
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_150
.LBB0_149:                              //  %cond.end544
	sub x15 ,  x22 ,  x14
.LBB0_150:                              //  %cond.end544
	add x12 ,  x21 ,  x19
	sltiu x14 ,  x15 ,  5
	bltu x0, x14, .LBB0_152
.LBB0_151:                              //  %if.then555
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x15 ,  -4
	add x8 ,  x8 ,  x15
	add x12 ,  x12 ,  x15
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	add x14 ,  x14 ,  x15
	sw x14 ,  36 ( x2 )             //  4-byte Folded Spill
	blt x0, x12, .LBB0_155
	jal x0, .LBB0_156
.LBB0_152:                              //  %if.else560
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	xori x14 ,  x15 ,  4
	beq x0, x14, .LBB0_154
.LBB0_153:                              //  %if.then563
	lw x14 ,  36 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x15 ,  28
	add x8 ,  x8 ,  x15
	add x12 ,  x12 ,  x15
	add x14 ,  x14 ,  x15
	sw x14 ,  36 ( x2 )             //  4-byte Folded Spill
.LBB0_154:                              //  %if.end569
	bge x0, x12, .LBB0_156
.LBB0_155:                              //  %if.then572
	lw x11 ,  68 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	call __lshift
	sw x10 ,  68 ( x2 )             //  4-byte Folded Spill
.LBB0_156:                              //  %if.end574
	bge x0, x8, .LBB0_158
.LBB0_157:                              //  %if.then577
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x8
	call __lshift
	add x27 ,  x0 ,  x10
.LBB0_158:                              //  %if.end579
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	sw x27 ,  48 ( x2 )             //  4-byte Folded Spill
	beq x0, x9, .LBB0_165
.LBB0_159:                              //  %if.then581
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	add x11 ,  x0 ,  x27
	add x9 ,  x0 ,  x14
	add x10 ,  x0 ,  x8
	call __mcmp
	blt x10, x0, .LBB0_166
.LBB0_160:
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x9
	lw x12 ,  36 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x14 ,  3
	bltu x0, x15, .LBB0_169
.LBB0_161:                              //  %if.end593
	blt x0, x21, .LBB0_169
.LBB0_162:                              //  %if.then599
	blt x21, x0, .LBB0_175
.LBB0_163:                              //  %lor.lhs.false602
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x12 ,  x0 ,  5
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	call __multadd
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	add x21 ,  x0 ,  x10
	add x11 ,  x0 ,  x21
	add x10 ,  x0 ,  x27
	call __mcmp
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	bge x0, x10, .LBB0_177
.LBB0_164:                              //  %one_digit
	addi x15 ,  x0 ,  49
	add x22 ,  x0 ,  x0
	addi x26 ,  x26 ,  1
	addi x8 ,  x20 ,  1
.LBB0_244:                              //  %if.then771
	sb x15 ,  0 ( x20 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call _Bfree
	beq x0, x25, .LBB0_183
.LBB0_179:                              //  %if.then789
	beq x0, x22, .LBB0_182
.LBB0_180:                              //  %if.then789
	beq x22, x25, .LBB0_182
.LBB0_181:                              //  %if.then794
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	call _Bfree
.LBB0_182:                              //  %if.end795
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	call _Bfree
	jal x0, .LBB0_183
.LBB0_165:
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x12 ,  36 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x14 ,  3
	beq x0, x15, .LBB0_161
	jal x0, .LBB0_169
.LBB0_166:                              //  %if.then585
	addi x12 ,  x0 ,  10
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __multadd
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	addi x26 ,  x26 ,  -1
	sw x10 ,  68 ( x2 )             //  4-byte Folded Spill
	beq x0, x15, .LBB0_168
.LBB0_167:                              //  %if.then589
	addi x12 ,  x0 ,  10
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	call __multadd
	add x25 ,  x0 ,  x10
.LBB0_168:                              //  %if.end593
	lw x21 ,  28 ( x2 )             //  4-byte Folded Reload
	add x14 ,  x0 ,  x9
	lw x12 ,  36 ( x2 )             //  4-byte Folded Reload
	slti x15 ,  x14 ,  3
	beq x0, x15, .LBB0_161
.LBB0_169:                              //  %if.end612
	lw x15 ,  44 ( x2 )             //  4-byte Folded Reload
	beq x0, x15, .LBB0_172
.LBB0_170:                              //  %if.then614
	bge x0, x12, .LBB0_187
.LBB0_171:                              //  %if.then617
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x25
	call __lshift
	add x22 ,  x0 ,  x10
	add x25 ,  x0 ,  x22
	lw x9 ,  68 ( x2 )              //  4-byte Folded Reload
	beq x0, x23, .LBB0_188
	jal x0, .LBB0_190
.LBB0_172:                              //  %for.cond738.preheader
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x27
	call quorem
	add x14 ,  x0 ,  x21
	addi x23 ,  x10 ,  48
	addi x9 ,  x20 ,  1
	slti x15 ,  x14 ,  2
	sb x23 ,  0 ( x20 )
	bltu x0, x15, .LBB0_211
.LBB0_173:                              //  %if.end746.preheader
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x19 ,  x14 ,  -1
	addi x8 ,  x0 ,  10
	add x22 ,  x0 ,  x0
.LBB0_174:                              //  %if.end746
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x22
	call __multadd
	add x11 ,  x0 ,  x21
	add x27 ,  x0 ,  x10
	call quorem
	addi x23 ,  x10 ,  48
	addi x19 ,  x19 ,  -1
	sb x23 ,  0 ( x9 )
	addi x9 ,  x9 ,  1
	bltu x0, x19, .LBB0_174
	jal x0, .LBB0_226
.LBB0_175:
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_177
.LBB0_176:
	add x21 ,  x0 ,  x25
.LBB0_177:                              //  %no_digits
	add x22 ,  x0 ,  x0
	xori x26 ,  x9 ,  -1
	add x8 ,  x0 ,  x20
.LBB0_178:                              //  %ret
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call _Bfree
	bltu x0, x25, .LBB0_179
.LBB0_183:
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
.LBB0_184:                              //  %ret1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	call _Bfree
	addi x15 ,  x26 ,  1
	sb x0 ,  0 ( x8 )
	sw x15 ,  0 ( x19 )
	beq x0, x9, .LBB0_186
.LBB0_185:                              //  %if.then799
	sw x8 ,  0 ( x9 )
.LBB0_186:                              //  %cleanup
	add x10 ,  x0 ,  x20
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
.LBB0_187:
	add x22 ,  x0 ,  x25
	lw x9 ,  68 ( x2 )              //  4-byte Folded Reload
	bltu x0, x23, .LBB0_190
.LBB0_188:                              //  %if.then621
	lw x11 ,  4 ( x22 )
	add x10 ,  x0 ,  x18
	call _Balloc
	add x8 ,  x0 ,  x10
	beq x0, x8, .LBB0_252
.LBB0_189:                              //  %if.end628
	lw x15 ,  16 ( x22 )
	addi x11 ,  x22 ,  12
	addi x10 ,  x8 ,  12
	slli x15 ,  x15 ,  2&31
	addi x12 ,  x15 ,  8
	call memcpy
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __lshift
	add x25 ,  x0 ,  x10
.LBB0_190:                              //  %if.end636
	sw x26 ,  72 ( x2 )             //  4-byte Folded Spill
	addi x26 ,  x21 ,  -1
	andi x15 ,  x24 ,  1
	bltu x0, x15, .LBB0_202
.LBB0_191:                              //  %for.cond637.us.preheader
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x0
	add x19 ,  x0 ,  x20
	add x27 ,  x0 ,  x25
	jal x0, .LBB0_193
.LBB0_192:                              //  %for.inc734.us
                                        //    in Loop: Header=BB0_193 Depth=1
	addi x19 ,  x19 ,  1
	addi x26 ,  x26 ,  -1
	add x22 ,  x0 ,  x8
.LBB0_193:                              //  %for.cond637.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	add x25 ,  x0 ,  x23
	call quorem
	add x8 ,  x0 ,  x21
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	add x24 ,  x0 ,  x9
	call __mcmp
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x27
	sw x27 ,  68 ( x2 )             //  4-byte Folded Spill
	call __mdiff
	add x27 ,  x0 ,  x10
	slti x8 ,  x0 ,  1
	lw x15 ,  12 ( x27 )
	bltu x0, x15, .LBB0_195
.LBB0_194:                              //  %cond.false645.us
                                        //    in Loop: Header=BB0_193 Depth=1
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x27
	call __mcmp
	add x8 ,  x0 ,  x10
.LBB0_195:                              //  %cond.end647.us
                                        //    in Loop: Header=BB0_193 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	addi x23 ,  x21 ,  48
	call _Bfree
	lw x14 ,  60 ( x2 )             //  4-byte Folded Reload
	or x15 ,  x14 ,  x8
	beq x0, x15, .LBB0_221
.LBB0_196:                              //  %if.end670.us
                                        //    in Loop: Header=BB0_193 Depth=1
	add x27 ,  x0 ,  x24
	blt x9, x0, .LBB0_235
.LBB0_197:                              //  %if.end670.us
                                        //    in Loop: Header=BB0_193 Depth=1
	or x15 ,  x14 ,  x9
	beq x0, x15, .LBB0_235
.LBB0_198:                              //  %if.end706.us
                                        //    in Loop: Header=BB0_193 Depth=1
	blt x0, x8, .LBB0_223
.LBB0_199:                              //  %if.end718.us
                                        //    in Loop: Header=BB0_193 Depth=1
	sb x23 ,  0 ( x19 )
	beq x0, x26, .LBB0_225
.LBB0_200:                              //  %if.end724.us
                                        //    in Loop: Header=BB0_193 Depth=1
	addi x24 ,  x0 ,  10
	add x23 ,  x0 ,  x25
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __multadd
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __multadd
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x10
	lw x11 ,  68 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x8
	beq x22, x11, .LBB0_192
.LBB0_201:                              //  %if.else730.us
                                        //    in Loop: Header=BB0_193 Depth=1
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __multadd
	add x27 ,  x0 ,  x10
	jal x0, .LBB0_192
.LBB0_202:                              //  %for.cond637.preheader
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x23 ,  x0 ,  10
	add x27 ,  x0 ,  x25
	sw x20 ,  64 ( x2 )             //  4-byte Folded Spill
	jal x0, .LBB0_204
.LBB0_203:                              //  %for.inc734
                                        //    in Loop: Header=BB0_204 Depth=1
	addi x20 ,  x20 ,  1
	addi x26 ,  x26 ,  -1
	add x22 ,  x0 ,  x8
.LBB0_204:                              //  %for.cond637
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	add x25 ,  x0 ,  x23
	call quorem
	add x8 ,  x0 ,  x21
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	add x24 ,  x0 ,  x9
	call __mcmp
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x27
	add x19 ,  x0 ,  x27
	call __mdiff
	add x27 ,  x0 ,  x10
	slti x8 ,  x0 ,  1
	lw x15 ,  12 ( x27 )
	bltu x0, x15, .LBB0_206
.LBB0_205:                              //  %cond.false645
                                        //    in Loop: Header=BB0_204 Depth=1
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x27
	call __mcmp
	add x8 ,  x0 ,  x10
.LBB0_206:                              //  %cond.end647
                                        //    in Loop: Header=BB0_204 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	addi x23 ,  x21 ,  48
	call _Bfree
	add x27 ,  x0 ,  x24
	blt x9, x0, .LBB0_218
.LBB0_207:                              //  %if.end706
                                        //    in Loop: Header=BB0_204 Depth=1
	blt x0, x8, .LBB0_219
.LBB0_208:                              //  %if.end718
                                        //    in Loop: Header=BB0_204 Depth=1
	sb x23 ,  0 ( x20 )
	beq x0, x26, .LBB0_220
.LBB0_209:                              //  %if.end724
                                        //    in Loop: Header=BB0_204 Depth=1
	add x23 ,  x0 ,  x25
	add x24 ,  x0 ,  x0
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __multadd
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __multadd
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x8 ,  x0 ,  x10
	add x27 ,  x0 ,  x8
	beq x22, x19, .LBB0_203
.LBB0_210:                              //  %if.else730
                                        //    in Loop: Header=BB0_204 Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __multadd
	add x27 ,  x0 ,  x10
	jal x0, .LBB0_203
.LBB0_211:
	add x22 ,  x0 ,  x0
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_226
.LBB0_212:                              //  %bump_up.loopexit
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	add x26 ,  x21 ,  x20
	sw x15 ,  72 ( x2 )             //  4-byte Folded Spill
.LBB0_213:                              //  %bump_up
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  68 ( x2 )             //  4-byte Folded Reload
.LBB0_214:                              //  %while.cond415
	add x8 ,  x0 ,  x26
	lbu x15 ,  -1 ( x8 )
	xori x14 ,  x15 ,  57
	bltu x0, x14, .LBB0_217
.LBB0_215:                              //  %while.body420
	addi x26 ,  x8 ,  -1
	bne x20, x26, .LBB0_214
.LBB0_216:                              //  %if.then423
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  48
	sb x15 ,  0 ( x20 )
	addi x15 ,  x0 ,  49
	sb x15 ,  0 ( x20 )
	addi x26 ,  x26 ,  1
	jal x0, .LBB0_184
.LBB0_217:                              //  %while.end426.loopexit
	addi x14 ,  x8 ,  -1
	addi x15 ,  x15 ,  1
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	sb x15 ,  0 ( x14 )
	jal x0, .LBB0_184
.LBB0_218:
	add x25 ,  x0 ,  x19
	add x19 ,  x0 ,  x20
	lw x20 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	blt x0, x8, .LBB0_236
	jal x0, .LBB0_247
.LBB0_219:
	add x25 ,  x0 ,  x19
	add x19 ,  x0 ,  x20
	lw x20 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x23 ,  57
	bltu x0, x15, .LBB0_224
	jal x0, .LBB0_240
.LBB0_220:                              //  %if.end751.loopexit3
	addi x9 ,  x20 ,  1
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	add x25 ,  x0 ,  x19
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  64 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_226
.LBB0_221:                              //  %if.then658
	xori x15 ,  x23 ,  57
	add x27 ,  x0 ,  x24
	bltu x0, x15, .LBB0_231
.LBB0_222:
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  68 ( x2 )             //  4-byte Folded Reload
	jal x0, .LBB0_240
.LBB0_235:
	lw x25 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x0, x8, .LBB0_247
.LBB0_236:                              //  %if.then686
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	call __lshift
	lw x11 ,  48 ( x2 )             //  4-byte Folded Reload
	add x27 ,  x0 ,  x10
	call __mcmp
	blt x0, x10, .LBB0_239
.LBB0_237:                              //  %lor.lhs.false691
	andi x15 ,  x23 ,  1
	beq x0, x15, .LBB0_247
.LBB0_238:                              //  %lor.lhs.false691
	bltu x0, x10, .LBB0_247
.LBB0_239:                              //  %land.lhs.true697
	xori x15 ,  x23 ,  57
	beq x0, x15, .LBB0_240
.LBB0_246:
	addi x23 ,  x21 ,  49
.LBB0_247:                              //  %if.end703
	sb x23 ,  0 ( x19 )
	jal x0, .LBB0_248
.LBB0_223:
	lw x25 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	xori x15 ,  x23 ,  57
	bltu x0, x15, .LBB0_224
.LBB0_240:                              //  %round_9_up
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x0 ,  57
	addi x9 ,  x19 ,  1
	sb x15 ,  0 ( x19 )
	add x8 ,  x0 ,  x9
	lbu x15 ,  -1 ( x8 )
	xori x14 ,  x15 ,  57
	beq x0, x14, .LBB0_242
	jal x0, .LBB0_245
.LBB0_224:                              //  %if.end714
	addi x15 ,  x21 ,  49
	sb x15 ,  0 ( x19 )
.LBB0_248:                              //  %ret
	addi x8 ,  x19 ,  1
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call _Bfree
	bltu x0, x25, .LBB0_179
	jal x0, .LBB0_183
.LBB0_225:                              //  %if.end751.loopexit
	addi x9 ,  x19 ,  1
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  68 ( x2 )             //  4-byte Folded Reload
.LBB0_226:                              //  %if.end751
	slti x12 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x27
	call __lshift
	add x11 ,  x0 ,  x21
	add x27 ,  x0 ,  x10
	call __mcmp
	blt x0, x10, .LBB0_241
.LBB0_227:                              //  %lor.lhs.false756
	andi x15 ,  x23 ,  1
	beq x0, x15, .LBB0_229
.LBB0_228:                              //  %lor.lhs.false756
	bltu x0, x10, .LBB0_229
.LBB0_241:                              //  %while.cond763
	add x8 ,  x0 ,  x9
	lbu x15 ,  -1 ( x8 )
	xori x14 ,  x15 ,  57
	bltu x0, x14, .LBB0_245
.LBB0_242:                              //  %while.body768
	addi x9 ,  x8 ,  -1
	bne x20, x9, .LBB0_241
.LBB0_243:                              //  %if.then771
	addi x15 ,  x0 ,  49
	addi x26 ,  x26 ,  1
	jal x0, .LBB0_244
.LBB0_245:                              //  %while.end775
	addi x15 ,  x15 ,  1
	sb x15 ,  -1 ( x8 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call _Bfree
	bltu x0, x25, .LBB0_179
	jal x0, .LBB0_183
.LBB0_229:                              //  %while.cond779.preheader
	addi x8 ,  x9 ,  1
.LBB0_230:                              //  %while.cond779
                                        //  =>This Inner Loop Header: Depth=1
	lbu x15 ,  -2 ( x8 )
	addi x8 ,  x8 ,  -1
	xori x15 ,  x15 ,  48
	beq x0, x15, .LBB0_230
	jal x0, .LBB0_178
.LBB0_231:                              //  %if.end662
	lw x26 ,  72 ( x2 )             //  4-byte Folded Reload
	bge x25, x9, .LBB0_233
.LBB0_232:
	addi x23 ,  x21 ,  49
.LBB0_233:                              //  %if.end662
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	sb x23 ,  0 ( x19 )
	addi x8 ,  x19 ,  1
	lw x25 ,  68 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call _Bfree
	bltu x0, x25, .LBB0_179
	jal x0, .LBB0_183
.LBB0_249:                              //  %if.then163
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	addi x11 ,  x0 ,  426
.LBB0_250:                              //  %if.then163
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  .str.4&4095
	lui x15 ,  (.str.4>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __assert_func
.LBB0_252:                              //  %if.then627
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	addi x11 ,  x0 ,  746
	jal x0, .LBB0_250
.Lfunc_end0:
	.size	_dtoa_r, .Lfunc_end0-_dtoa_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_48
	.long	.LBB0_48
	.long	.LBB0_35
	.long	.LBB0_41
	.long	.LBB0_36
	.long	.LBB0_42
                                        //  -- End function
	.text
	.type	quorem,@function        //  -- Begin function quorem
quorem:                                 //  @quorem
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x18 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x15 ,  16 ( x18 )
	lw x14 ,  16 ( x8 )
	bge x14, x15, .LBB1_2
.LBB1_1:
	add x9 ,  x0 ,  x0
	jal x0, .LBB1_22
.LBB1_2:                                //  %if.end
	addi x21 ,  x15 ,  -1
	addi x23 ,  x18 ,  20
	addi x22 ,  x8 ,  20
	slli x15 ,  x21 ,  2&31
	add x24 ,  x15 ,  x23
	add x26 ,  x15 ,  x22
	lw x14 ,  0 ( x24 )
	lw x20 ,  0 ( x26 )
	addi x19 ,  x14 ,  1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __udivsi3
	add x9 ,  x0 ,  x10
	lui x25 ,  (65535>>12)&1048575
	bltu x20, x19, .LBB1_13
.LBB1_3:                                //  %do.body.preheader
	sw x26 ,  16 ( x2 )             //  4-byte Folded Spill
	add x26 ,  x0 ,  x0
	add x19 ,  x0 ,  x22
	add x20 ,  x0 ,  x23
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	add x27 ,  x0 ,  x26
.LBB1_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x8 ,  0 ( x20 )
	lui x30 ,  65535&4095
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x22 ,  x25 ,  x30
	and x10 ,  x22 ,  x8
	call __mulsi3
	add x27 ,  x27 ,  x10
	srli x10 ,  x8 ,  16&31
	add x11 ,  x0 ,  x9
	call __mulsi3
	lw x13 ,  0 ( x19 )
	srli x15 ,  x27 ,  16&31
	addi x20 ,  x20 ,  4
	add x15 ,  x10 ,  x15
	and x14 ,  x22 ,  x15
	srli x12 ,  x13 ,  16&31
	and x13 ,  x22 ,  x13
	sub x14 ,  x12 ,  x14
	and x12 ,  x22 ,  x27
	srli x27 ,  x15 ,  16&31
	sub x13 ,  x13 ,  x12
	add x13 ,  x26 ,  x13
	srai x12 ,  x13 ,  16&31
	and x13 ,  x22 ,  x13
	add x14 ,  x12 ,  x14
	slli x12 ,  x14 ,  16&31
	srai x26 ,  x14 ,  16&31
	or x13 ,  x13 ,  x12
	sw x13 ,  0 ( x19 )
	addi x19 ,  x19 ,  4
	bgeu x24, x20, .LBB1_4
.LBB1_5:                                //  %do.end
	lw x14 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x15 ,  0 ( x14 )
	beq x0, x15, .LBB1_7
.LBB1_6:
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
.LBB1_13:                               //  %if.end33
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __mcmp
	blt x10, x0, .LBB1_22
.LBB1_14:                               //  %do.body40.preheader
	add x14 ,  x0 ,  x0
	add x15 ,  x0 ,  x22
	add x13 ,  x0 ,  x14
.LBB1_15:                               //  %do.body40
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  0 ( x23 )
	lui x30 ,  65535&4095
	addi x23 ,  x23 ,  4
	srli x30 ,  x30 ,  12&31
	lw x5 ,  0 ( x15 )
	or x11 ,  x25 ,  x30
	and x10 ,  x11 ,  x12
	srli x12 ,  x12 ,  16&31
	add x13 ,  x13 ,  x10
	and x6 ,  x11 ,  x5
	and x10 ,  x11 ,  x13
	srli x13 ,  x13 ,  16&31
	sub x10 ,  x6 ,  x10
	add x13 ,  x12 ,  x13
	srli x12 ,  x5 ,  16&31
	add x14 ,  x14 ,  x10
	and x10 ,  x11 ,  x13
	srli x13 ,  x13 ,  16&31
	and x11 ,  x11 ,  x14
	sub x12 ,  x12 ,  x10
	srai x14 ,  x14 ,  16&31
	add x14 ,  x14 ,  x12
	slli x12 ,  x14 ,  16&31
	srai x14 ,  x14 ,  16&31
	or x12 ,  x11 ,  x12
	sw x12 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	bgeu x24, x23, .LBB1_15
.LBB1_16:                               //  %do.end64
	slli x15 ,  x21 ,  2&31
	addi x9 ,  x9 ,  1
	add x15 ,  x15 ,  x8
	lw x14 ,  20 ( x15 )
	bltu x0, x14, .LBB1_22
.LBB1_17:                               //  %while.cond70.preheader
	addi x15 ,  x15 ,  20
	addi x15 ,  x15 ,  -4
	bgeu x22, x15, .LBB1_21
.LBB1_19:                               //  %land.rhs73
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	bltu x0, x14, .LBB1_21
.LBB1_20:                               //  %while.body77
                                        //    in Loop: Header=BB1_19 Depth=1
	addi x21 ,  x21 ,  -1
	addi x15 ,  x15 ,  -4
	bltu x22, x15, .LBB1_19
.LBB1_21:                               //  %while.end79
	sw x21 ,  16 ( x8 )
	jal x0, .LBB1_22
.LBB1_7:                                //  %while.cond.preheader
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x15 ,  x14 ,  -4
	bgeu x22, x15, .LBB1_8
.LBB1_9:                                //  %land.rhs.preheader
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
.LBB1_10:                               //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	bltu x0, x14, .LBB1_12
.LBB1_11:                               //  %while.body
                                        //    in Loop: Header=BB1_10 Depth=1
	addi x21 ,  x21 ,  -1
	addi x15 ,  x15 ,  -4
	bltu x22, x15, .LBB1_10
	jal x0, .LBB1_12
.LBB1_8:
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
.LBB1_12:                               //  %while.end
	sw x21 ,  16 ( x8 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __mcmp
	bge x10, x0, .LBB1_14
.LBB1_22:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	quorem, .Lfunc_end1-quorem
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Infinity"
	.size	.str, 9

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"NaN"
	.size	.str.1, 4

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"0"
	.size	.str.2, 2

	.address_space	0
	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"/tools/toolchain/newlib/newlib/libc/stdlib/dtoa.c"
	.size	.str.3, 50

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"Balloc succeeded"
	.size	.str.4, 17

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
