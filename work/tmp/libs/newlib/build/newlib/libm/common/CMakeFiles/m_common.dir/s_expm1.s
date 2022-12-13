	.text
	.file	"s_expm1.c"
	.globl	expm1                   //  -- Begin function expm1
	.type	expm1,@function
expm1:                                  //  @expm1
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lui x14 ,  (1078159482>>12)&1048575
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
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
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	and x20 ,  x15 ,  x8
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1078159482&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x8
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_6
.LBB0_1:                                //  %if.then3
	lui x30 ,  1082535490&4095
	lui x14 ,  (1082535490>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	bltu x15, x13, .LBB0_15
.LBB0_2:                                //  %if.then5
	srli x15 ,  x15 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_13
.LBB0_3:                                //  %if.then7
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	add x22 ,  x0 ,  x0
	add x19 ,  x0 ,  x9
	add x18 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -1074790400&4095
	and x15 ,  x15 ,  x8
	srli x30 ,  x30 ,  12&31
	or x21 ,  x9 ,  x15
	lui x15 ,  (-1074790400>>12)&1048575
	or x15 ,  x15 ,  x30
	beq x20, x22, .LBB0_5
.LBB0_4:                                //  %if.then7
	add x19 ,  x0 ,  x22
	add x18 ,  x0 ,  x15
.LBB0_5:                                //  %if.then7
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	bne x21, x22, .LBB0_36
	jal x0, .LBB0_37
.LBB0_6:                                //  %if.end30
	lui x30 ,  1071001155&4095
	lui x14 ,  (1071001155>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_11
.LBB0_7:                                //  %if.then32
	lui x30 ,  1072734897&4095
	lui x14 ,  (1072734897>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_17
.LBB0_8:                                //  %if.then34
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	bltu x0, x20, .LBB0_33
.LBB0_9:                                //  %if.then36
	lui x30 ,  -1075433918&4095
	lui x15 ,  (-1075433918>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	slti x18 ,  x0 ,  1
	jal x0, .LBB0_10
.LBB0_11:                               //  %if.else53
	srli x15 ,  x15 ,  20&31
	addi x14 ,  x0 ,  968
	bltu x14, x15, .LBB0_21
.LBB0_12:                               //  %if.then56
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	jal x0, .LBB0_27
.LBB0_13:                               //  %if.end18
	lui x30 ,  -17155601&4095
	lui x15 ,  (-17155601>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1082535490&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	call __gtdf2
	bge x0, x10, .LBB0_15
.LBB0_14:                               //  %if.then20
	add x10 ,  x0 ,  x0
	call __math_oflow
	jal x0, .LBB0_36
.LBB0_15:                               //  %if.end22
	lui x30 ,  -1023872167&4095
	lui x15 ,  (-1023872167>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  27618847&4095
	lui x15 ,  (27618847>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x19 ,  x0 ,  x0
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	call __ltdf2
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	bge x10, x0, .LBB0_17
.LBB0_16:                               //  %if.end22
	bltu x0, x20, .LBB0_37
.LBB0_17:                               //  %if.else41
	lui x30 ,  1697350398&4095
	lui x15 ,  (1697350398>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073157447&4095
	lui x15 ,  (1073157447>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	bne x20, x12, .LBB0_19
.LBB0_18:
	lui x13 ,  (1071644672>>12)&1048575
.LBB0_19:                               //  %if.else41
	call __adddf3
	call __fixdfsi
	add x18 ,  x0 ,  x10
	call __floatsidf
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075433918&4095
	lui x15 ,  (-1075433918>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	jal x0, .LBB0_20
.LBB0_21:
	add x18 ,  x0 ,  x0
                                        //  implicit-def: $rf_xpr_19
                                        //  implicit-def: $rf_xpr_20
	jal x0, .LBB0_22
.LBB0_33:                               //  %if.else38
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -1108723217&4095
	lui x15 ,  (-1108723217>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x18 ,  x0 ,  -1
.LBB0_10:                               //  %if.end49
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x15 ,  x30
.LBB0_20:                               //  %if.end49
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call __subdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call __subdf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
.LBB0_22:                               //  %if.end63
	add x23 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	call __muldf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  1846133549&4095
	lui x15 ,  (1846133549>>12)&1048575
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1098187337&4095
	lui x15 ,  (-1098187337>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -2031726023&4095
	lui x15 ,  (-2031726023>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1053872074&4095
	lui x15 ,  (1053872074>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -1632969801&4095
	lui x15 ,  (-1632969801>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1089155559&4095
	lui x15 ,  (-1089155559>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  436098437&4095
	lui x15 ,  (436098437>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1062863264&4095
	lui x15 ,  (1062863264>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  286331124&4095
	lui x15 ,  (286331124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079963375&4095
	lui x15 ,  (-1079963375>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x23
	call __adddf3
	add x27 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x24
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1074266112>>12)&1048575
	add x10 ,  x0 ,  x23
	call __subdf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	add x24 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1075314688>>12)&1048575
	add x10 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x27
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	beq x0, x18, .LBB0_26
.LBB0_23:                               //  %if.else88
	add x10 ,  x0 ,  x12
	add x11 ,  x0 ,  x13
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	call __subdf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	xori x15 ,  x18 ,  1
	beq x0, x15, .LBB0_28
.LBB0_24:                               //  %if.else88
	xori x15 ,  x18 ,  -1
	bltu x0, x15, .LBB0_30
.LBB0_25:                               //  %if.then95
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __subdf3
	add x8 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x8
	call __muldf3
	lui x15 ,  (-1075838976>>12)&1048575
	lui x30 ,  -1075838976&4095
	jal x0, .LBB0_32
.LBB0_26:                               //  %if.then84
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
.LBB0_27:                               //  %cleanup205
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	jal x0, .LBB0_36
.LBB0_28:                               //  %if.then102
	lui x30 ,  -1076887552&4095
	lui x15 ,  (-1076887552>>12)&1048575
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __ltdf2
	bge x10, x0, .LBB0_34
.LBB0_29:                               //  %if.then105
	add x18 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __subdf3
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	jal x0, .LBB0_36
.LBB0_30:                               //  %if.end113
	sltiu x15 ,  x18 ,  57
	bltu x0, x15, .LBB0_38
.LBB0_31:                               //  %if.then118
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __subdf3
	add x8 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x8
	call __adddf3
	slli x15 ,  x18 ,  20&31
	lui x30 ,  -1074790400&4095
	add x11 ,  x11 ,  x15
	lui x15 ,  (-1074790400>>12)&1048575
.LBB0_32:                               //  %cleanup205
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x8
	or x13 ,  x15 ,  x30
	jal x0, .LBB0_35
.LBB0_34:                               //  %if.else109
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
.LBB0_35:                               //  %if.then7
	call __adddf3
.LBB0_36:                               //  %if.then7
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
.LBB0_37:                               //  %cleanup205
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
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
.LBB0_38:                               //  %if.end138
	addi x15 ,  x0 ,  19
	blt x15, x18, .LBB0_40
.LBB0_39:                               //  %if.then141
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	lui x15 ,  (2097152>>12)&1048575
	lui x14 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	srl x15 ,  x15 ,  x18
	sub x11 ,  x14 ,  x15
	call __subdf3
	slli x15 ,  x18 ,  20&31
	add x19 ,  x0 ,  x10
	add x18 ,  x11 ,  x15
	jal x0, .LBB0_37
.LBB0_40:                               //  %if.else171
	slli x21 ,  x18 ,  20&31
	add x18 ,  x0 ,  x0
	lui x22 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	sub x13 ,  x22 ,  x21
	add x12 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x22
	call __adddf3
	add x19 ,  x0 ,  x10
	add x18 ,  x11 ,  x21
	jal x0, .LBB0_37
.Lfunc_end0:
	.size	expm1, .Lfunc_end0-expm1
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
