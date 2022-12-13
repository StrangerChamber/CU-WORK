	.text
	.file	"e_pow.c"
	.globl	__ieee754_pow           //  -- Begin function __ieee754_pow
	.type	__ieee754_pow,@function
__ieee754_pow:                          //  @__ieee754_pow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	lui x30 ,  2147483647&4095
	sw x24 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x24 ,  (2147483647>>12)&1048575
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x13
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x23 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x8 ,  x0 ,  x12
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x23 ,  x15 ,  x9
	or x14 ,  x8 ,  x23
	beq x0, x14, .LBB0_5
.LBB0_1:                                //  %if.end13
	and x20 ,  x15 ,  x18
	lui x25 ,  (2146435072>>12)&1048575
	bgeu x25, x20, .LBB0_7
.LBB0_2:                                //  %if.then23
	lui x30 ,  -1072693248&4095
	lui x15 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x18
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_3
.LBB0_20:                               //  %if.else
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
.LBB0_21:                               //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_22:                               //  %cleanup
	add x9 ,  x0 ,  x11
.LBB0_23:                               //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.then
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	slli x15 ,  x18 ,  1&31
	slt x14 ,  x19 ,  x0
	lui x30 ,  -1048576&4095
	or x15 ,  x14 ,  x15
	lui x14 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	xor x15 ,  x14 ,  x15
	lui x14 ,  (-1048576>>12)&1048575
	or x14 ,  x14 ,  x30
	beq x15, x14, .LBB0_14
.LBB0_6:                                //  %if.then
	sltu x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_15
	jal x0, .LBB0_16
.LBB0_7:                                //  %lor.lhs.false
	xor x15 ,  x25 ,  x20
	sltu x14 ,  x0 ,  x19
	sltiu x15 ,  x15 ,  1
	and x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_2
.LBB0_8:                                //  %lor.lhs.false
	bltu x25, x23, .LBB0_2
.LBB0_9:                                //  %lor.lhs.false19
	beq x0, x8, .LBB0_11
.LBB0_10:                               //  %lor.lhs.false19
	beq x23, x25, .LBB0_2
.LBB0_11:                               //  %if.end31
	add x26 ,  x0 ,  x0
	blt x18, x0, .LBB0_12
.LBB0_29:                               //  %if.end66
	beq x0, x8, .LBB0_87
.LBB0_30:                               //  %if.end103
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call fabs
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	bltu x0, x19, .LBB0_33
.LBB0_31:                               //  %if.then106
	beq x0, x20, .LBB0_43
.LBB0_32:                               //  %if.then106
	lui x15 ,  (1073741824>>12)&1048575
	or x15 ,  x15 ,  x20
	beq x15, x25, .LBB0_43
.LBB0_33:                               //  %if.end134
	slt x15 ,  x18 ,  x0
	addi x25 ,  x15 ,  -1
	or x15 ,  x25 ,  x26
	beq x0, x15, .LBB0_39
.LBB0_34:                               //  %if.end143
	lui x30 ,  1105199105&4095
	lui x15 ,  (1105199105>>12)&1048575
	lui x18 ,  (1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x23, x15, .LBB0_41
.LBB0_35:                               //  %if.then145
	lui x30 ,  1139802113&4095
	lui x15 ,  (1139802113>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x23, x15, .LBB0_50
.LBB0_36:                               //  %if.then147
	srli x15 ,  x20 ,  20&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB0_58
	jal x0, .LBB0_37
.LBB0_3:                                //  %land.lhs.true26
	slli x15 ,  x9 ,  1&31
	slt x14 ,  x8 ,  x0
	lui x30 ,  -1048576&4095
	or x15 ,  x14 ,  x15
	lui x14 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	xor x15 ,  x14 ,  x15
	lui x14 ,  (-1048576>>12)&1048575
	or x14 ,  x14 ,  x30
	beq x15, x14, .LBB0_18
.LBB0_4:                                //  %land.lhs.true26
	sltu x15 ,  x15 ,  x14
	bltu x0, x15, .LBB0_19
	jal x0, .LBB0_20
.LBB0_14:
	slli x15 ,  x19 ,  1&31
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x15, .LBB0_16
.LBB0_15:
	add x10 ,  x0 ,  x0
.LBB0_16:                               //  %if.then
	beq x0, x15, .LBB0_24
.LBB0_17:
	lui x11 ,  (1072693248>>12)&1048575
.LBB0_24:                               //  %if.then
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.LBB0_18:
	slli x15 ,  x8 ,  1&31
	xori x15 ,  x15 ,  0
	sltiu x15 ,  x15 ,  1
	beq x0, x15, .LBB0_20
.LBB0_19:
	lui x9 ,  (1072693248>>12)&1048575
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_23
.LBB0_12:                               //  %if.then33
	srli x14 ,  x23 ,  22&31
	addi x15 ,  x0 ,  268
	bgeu x15, x14, .LBB0_25
.LBB0_13:
	addi x26 ,  x0 ,  2
	bltu x0, x8, .LBB0_30
.LBB0_87:                               //  %if.then68
	bne x23, x25, .LBB0_92
.LBB0_88:                               //  %if.then70
	lui x30 ,  -1072693248&4095
	lui x15 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x20
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_19
.LBB0_89:                               //  %if.else75
	srli x15 ,  x20 ,  20&31
	sltiu x15 ,  x15 ,  1023
	bltu x0, x15, .LBB0_98
.LBB0_90:                               //  %if.then77
	addi x15 ,  x0 ,  -1
	blt x15, x9, .LBB0_23
.LBB0_91:                               //  %if.then77
	add x9 ,  x0 ,  x0
	add x8 ,  x0 ,  x9
	jal x0, .LBB0_23
.LBB0_39:                               //  %if.then139
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
.LBB0_40:                               //  %cleanup
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	jal x0, .LBB0_21
.LBB0_25:                               //  %if.else36
	srli x15 ,  x23 ,  20&31
	sltiu x13 ,  x15 ,  1023
	bltu x0, x13, .LBB0_29
.LBB0_26:                               //  %if.then38
	sltiu x14 ,  x14 ,  261
	bltu x0, x14, .LBB0_56
.LBB0_27:                               //  %if.then41
	addi x14 ,  x0 ,  1075
	sub x14 ,  x14 ,  x15
	srl x15 ,  x8 ,  x14
	sll x14 ,  x15 ,  x14
	bne x14, x8, .LBB0_29
.LBB0_28:                               //  %if.then46
	andi x15 ,  x15 ,  1
	addi x14 ,  x0 ,  2
	sub x26 ,  x14 ,  x15
	bltu x0, x8, .LBB0_30
	jal x0, .LBB0_87
.LBB0_41:                               //  %if.else210
	add x27 ,  x0 ,  x0
	srli x15 ,  x20 ,  20&31
	bltu x0, x15, .LBB0_52
.LBB0_42:                               //  %if.then212
	add x12 ,  x0 ,  x0
	lui x13 ,  (1128267776>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	add x22 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x15 ,  x0 ,  -53
	jal x0, .LBB0_53
.LBB0_43:                               //  %if.then112
	add x19 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
	add x10 ,  x0 ,  x19
	call __divdf3
	add x8 ,  x0 ,  x10
	blt x9, x19, .LBB0_45
.LBB0_44:                               //  %if.then112
	add x8 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
.LBB0_45:                               //  %if.then112
	bge x18, x0, .LBB0_22
.LBB0_46:                               //  %if.then118
	lui x30 ,  -1072693248&4095
	lui x15 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x20
	or x15 ,  x15 ,  x26
	beq x0, x15, .LBB0_83
.LBB0_47:                               //  %if.else126
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	slti x14 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x26, x14, .LBB0_49
.LBB0_48:
	xor x11 ,  x15 ,  x11
.LBB0_49:                               //  %if.else126
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_24
.LBB0_50:                               //  %if.end168
	lui x30 ,  1072693246&4095
	lui x15 ,  (1072693246>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_60
.LBB0_37:                               //  %if.then149
	blt x9, x0, .LBB0_59
.LBB0_38:                               //  %cond.false153
	add x10 ,  x0 ,  x0
	call __math_uflow
	jal x0, .LBB0_21
.LBB0_52:
	add x15 ,  x0 ,  x27
.LBB0_53:                               //  %if.end221
	srai x14 ,  x20 ,  20&31
	lui x30 ,  1048575&4095
	sw x26 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x25 ,  20 ( x2 )             //  4-byte Folded Spill
	add x14 ,  x15 ,  x14
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  235663&4095
	addi x13 ,  x14 ,  -1023
	lui x14 ,  (235663>>12)&1048575
	and x15 ,  x15 ,  x20
	srli x30 ,  x30 ,  12&31
	or x23 ,  x18 ,  x15
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_63
.LBB0_54:                               //  %if.else229
	lui x30 ,  767610&4095
	lui x14 ,  (767610>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x15, x14, .LBB0_62
.LBB0_55:
	sw x13 ,  4 ( x2 )              //  4-byte Folded Spill
	slti x18 ,  x0 ,  1
	jal x0, .LBB0_64
.LBB0_98:                               //  %if.else79
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srai x14 ,  x9 ,  31&31
	srli x30 ,  x30 ,  12&31
	and x8 ,  x8 ,  x14
	or x15 ,  x15 ,  x30
	xor x15 ,  x15 ,  x9
	and x9 ,  x15 ,  x14
	jal x0, .LBB0_23
.LBB0_56:                               //  %if.else50
	beq x0, x8, .LBB0_84
.LBB0_57:
	add x26 ,  x0 ,  x0
	jal x0, .LBB0_30
.LBB0_60:                               //  %if.end178
	lui x30 ,  1072693249&4095
	lui x15 ,  (1072693249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x20, x15, .LBB0_82
.LBB0_58:                               //  %if.then159
	bge x0, x9, .LBB0_38
.LBB0_59:                               //  %cond.true151
	add x10 ,  x0 ,  x0
	call __math_oflow
	jal x0, .LBB0_21
.LBB0_62:                               //  %if.else232
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	addi x13 ,  x13 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x23 ,  x15 ,  x23
.LBB0_63:                               //  %do.body237
	add x18 ,  x0 ,  x27
	sw x13 ,  4 ( x2 )              //  4-byte Folded Spill
.LBB0_64:                               //  %do.body237
	lui x30 ,  bp&4095
	lui x15 ,  (bp>>12)&1048575
	slli x14 ,  x18 ,  3&31
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	sw x14 ,  16 ( x2 )             //  4-byte Folded Spill
	or x15 ,  x15 ,  x30
	add x15 ,  x14 ,  x15
	lw x19 ,  0 ( x15 )
	lw x21 ,  4 ( x15 )
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __subdf3
	add x20 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x27
	call __divdf3
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x27
	call __muldf3
	srai x15 ,  x23 ,  1&31
	lui x14 ,  (536870912>>12)&1048575
	sw x10 ,  12 ( x2 )             //  4-byte Folded Spill
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	or x15 ,  x14 ,  x15
	slli x14 ,  x18 ,  18&31
	add x15 ,  x14 ,  x15
	lui x14 ,  (524288>>12)&1048575
	add x18 ,  x14 ,  x15
	add x11 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x10
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x0 ,  x11
	add x11 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __muldf3
	lw x27 ,  12 ( x2 )             //  4-byte Folded Reload
	add x23 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x20
	add x10 ,  x0 ,  x27
	add x12 ,  x0 ,  x27
	call __muldf3
	lui x30 ,  1246056175&4095
	lui x15 ,  (1246056175>>12)&1048575
	add x21 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070235176&4095
	lui x15 ,  (1070235176>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1815487643&4095
	lui x15 ,  (-1815487643>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070433866&4095
	lui x15 ,  (1070433866>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -1457700607&4095
	lui x15 ,  (-1457700607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070691424&4095
	lui x15 ,  (1070691424>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  1368335949&4095
	lui x15 ,  (1368335949>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070945621&4095
	lui x15 ,  (1070945621>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -613438465&4095
	lui x15 ,  (-613438465>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071345078&4095
	lui x15 ,  (1071345078>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  858993411&4095
	lui x15 ,  (858993411>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071854387&4095
	lui x15 ,  (1071854387>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x20
	add x26 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x26
	call __muldf3
	lui x13 ,  (1074266112>>12)&1048575
	add x12 ,  x0 ,  x0
	add x21 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	call __adddf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  -1073217536&4095
	lui x15 ,  (-1073217536>>12)&1048575
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x0
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x26
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	call __adddf3
	add x10 ,  x0 ,  x0
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	add x22 ,  x0 ,  x11
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __subdf3
	lui x30 ,  -600177667&4095
	lui x15 ,  (-600177667>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072613129&4095
	lui x15 ,  (1072613129>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	add x13 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  341508597&4095
	lui x15 ,  (341508597>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1103220768&4095
	lui x15 ,  (-1103220768>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	lw x20 ,  16 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  dp_l&4095
	lui x15 ,  (dp_l>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x20 ,  x15
	lw x10 ,  0 ( x15 )
	lw x11 ,  4 ( x15 )
	call __adddf3
	lui x30 ,  -536870912&4095
	lui x15 ,  (-536870912>>12)&1048575
	add x23 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	sw x23 ,  12 ( x2 )             //  4-byte Folded Spill
	or x12 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x21
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __adddf3
	lui x30 ,  dp_h&4095
	lui x15 ,  (dp_h>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x20 ,  x15
	lw x23 ,  0 ( x15 )
	lw x20 ,  4 ( x15 )
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x20
	call __adddf3
	add x22 ,  x0 ,  x10
	lw x10 ,  4 ( x2 )              //  4-byte Folded Reload
	add x25 ,  x0 ,  x11
	call __floatsidf
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x27
	call __adddf3
	add x13 ,  x0 ,  x27
	add x10 ,  x0 ,  x0
	add x12 ,  x0 ,  x26
	add x22 ,  x0 ,  x11
	add x27 ,  x0 ,  x0
	call __subdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	add x18 ,  x0 ,  x21
	lw x21 ,  12 ( x2 )             //  4-byte Folded Reload
	call __subdf3
	lw x26 ,  24 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x25 ,  20 ( x2 )             //  4-byte Folded Reload
.LBB0_65:                               //  %if.end346
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call __subdf3
	add x19 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x13 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x22
	call __muldf3
	add x21 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x23
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __adddf3
	addi x15 ,  x26 ,  -1
	lui x30 ,  -1074790400&4095
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	or x26 ,  x25 ,  x15
	lui x15 ,  (-1074790400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x27 ,  x15 ,  x30
	beq x26, x19, .LBB0_67
.LBB0_66:                               //  %if.end346
	lui x15 ,  (1072693248>>12)&1048575
	add x27 ,  x0 ,  x15
.LBB0_67:                               //  %if.end346
	lui x15 ,  (1083179008>>12)&1048575
	blt x18, x15, .LBB0_71
.LBB0_68:                               //  %if.then380
	lui x30 ,  -1083179008&4095
	lui x15 ,  (-1083179008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x18
	or x15 ,  x9 ,  x15
	bltu x0, x15, .LBB0_70
.LBB0_69:                               //  %if.else389
	lui x30 ,  1697350398&4095
	lui x15 ,  (1697350398>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1016534343&4095
	lui x15 ,  (1016534343>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x8 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x25
	call __gtdf2
	bge x0, x10, .LBB0_74
.LBB0_70:                               //  %if.then385
	xori x15 ,  x26 ,  0
	sltiu x10 ,  x15 ,  1
	call __math_oflow
	jal x0, .LBB0_21
.LBB0_71:                               //  %if.else400
	lui x30 ,  2147482624&4095
	lui x15 ,  (2147482624>>12)&1048575
	lui x14 ,  (1083231232>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1083231232&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x18
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_74
.LBB0_72:                               //  %if.then404
	lui x30 ,  1064252416&4095
	lui x15 ,  (1064252416>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x18
	or x15 ,  x9 ,  x15
	bltu x0, x15, .LBB0_81
.LBB0_73:                               //  %if.else413
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __ledf2
	bge x0, x10, .LBB0_81
.LBB0_74:                               //  %if.end424
	lui x30 ,  2147483647&4095
	lui x14 ,  (1071644673>>12)&1048575
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	lui x30 ,  1071644673&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x18
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_78
.LBB0_75:                               //  %if.then430
	srli x15 ,  x15 ,  20&31
	lui x30 ,  1048575&4095
	lui x14 ,  (1048576>>12)&1048575
	lui x13 ,  (1048575>>12)&1048575
	addi x12 ,  x0 ,  1043
	addi x15 ,  x15 ,  -1022
	srli x30 ,  x30 ,  12&31
	srl x15 ,  x14 ,  x15
	or x13 ,  x13 ,  x30
	add x15 ,  x18 ,  x15
	and x13 ,  x13 ,  x15
	or x13 ,  x14 ,  x13
	srli x14 ,  x15 ,  20&31
	andi x14 ,  x14 ,  2047
	sub x12 ,  x12 ,  x14
	srl x19 ,  x13 ,  x12
	add x12 ,  x0 ,  x0
	bge x18, x12, .LBB0_77
.LBB0_76:
	sub x19 ,  x0 ,  x19
.LBB0_77:                               //  %if.then430
	lui x30 ,  -1048576&4095
	lui x13 ,  (-1048576>>12)&1048575
	addi x14 ,  x14 ,  -1023
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sra x14 ,  x13 ,  x14
	and x13 ,  x15 ,  x14
	call __subdf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __adddf3
	add x18 ,  x0 ,  x11
.LBB0_78:                               //  %if.end457
	add x9 ,  x0 ,  x0
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	add x10 ,  x0 ,  x9
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __subdf3
	lui x30 ,  -17155601&4095
	lui x15 ,  (-17155601>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  212364345&4095
	lui x15 ,  (212364345>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1105175455&4095
	lui x15 ,  (-1105175455>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __adddf3
	lui x30 ,  1072049731&4095
	lui x15 ,  (1072049731>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __adddf3
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1925096656&4095
	lui x15 ,  (1925096656>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1046886249&4095
	lui x15 ,  (1046886249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -976065551&4095
	lui x15 ,  (-976065551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1094992575&4095
	lui x15 ,  (-1094992575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -1356472788&4095
	lui x15 ,  (-1356472788>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058100842&4095
	lui x15 ,  (1058100842>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  381599123&4095
	lui x15 ,  (381599123>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1083784852&4095
	lui x15 ,  (-1083784852>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  1431655742&4095
	lui x15 ,  (1431655742>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069897045&4095
	lui x15 ,  (1069897045>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __subdf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x27 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x8
	call __divdf3
	add x8 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __subdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __subdf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __adddf3
	lui x30 ,  1048575&4095
	slli x15 ,  x19 ,  20&31
	add x12 ,  x0 ,  x10
	add x13 ,  x11 ,  x15
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x13, .LBB0_80
.LBB0_79:                               //  %if.then507
	add x10 ,  x0 ,  x12
	add x12 ,  x0 ,  x19
	call scalbn
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
.LBB0_80:                               //  %do.body510
	lw x11 ,  24 ( x2 )             //  4-byte Folded Reload
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_97
.LBB0_81:                               //  %if.then409
	xori x15 ,  x26 ,  0
	sltiu x10 ,  x15 ,  1
	call __math_uflow
	jal x0, .LBB0_21
.LBB0_82:                               //  %if.end188
	lui x30 ,  -1074790400&4095
	add x27 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x27
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -1076887552&4095
	lui x15 ,  (-1076887552>>12)&1048575
	add x12 ,  x0 ,  x27
	add x19 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1431655765&4095
	lui x15 ,  (1431655765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070945621&4095
	lui x15 ,  (1070945621>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lui x11 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x27
	call __subdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  1697350398&4095
	lui x15 ,  (1697350398>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1074326201&4095
	lui x15 ,  (-1074326201>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -128065724&4095
	lui x15 ,  (-128065724>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1045736971&4095
	lui x15 ,  (1045736971>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __adddf3
	lui x30 ,  1073157447&4095
	lui x15 ,  (1073157447>>12)&1048575
	add x21 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	lui x12 ,  (1610612736>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __adddf3
	add x10 ,  x0 ,  x27
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	add x22 ,  x0 ,  x11
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	jal x0, .LBB0_65
.LBB0_83:                               //  %if.then122
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x11
	jal x0, .LBB0_40
.LBB0_84:                               //  %if.then52
	addi x14 ,  x0 ,  1043
	sub x14 ,  x14 ,  x15
	srl x15 ,  x23 ,  x14
	sll x14 ,  x15 ,  x14
	bne x14, x23, .LBB0_86
.LBB0_85:                               //  %if.then58
	andi x15 ,  x15 ,  1
	addi x14 ,  x0 ,  2
	sub x26 ,  x14 ,  x15
	beq x23, x25, .LBB0_88
.LBB0_92:                               //  %if.end86
	lui x15 ,  (1072693248>>12)&1048575
	bne x23, x15, .LBB0_95
.LBB0_93:                               //  %if.then88
	blt x9, x0, .LBB0_102
.LBB0_94:
	add x8 ,  x0 ,  x19
	add x9 ,  x0 ,  x18
	jal x0, .LBB0_23
.LBB0_95:                               //  %if.end92
	lui x15 ,  (1073741824>>12)&1048575
	bne x9, x15, .LBB0_99
.LBB0_96:                               //  %if.then94
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
.LBB0_97:                               //  %cleanup
	call __muldf3
	jal x0, .LBB0_21
.LBB0_99:                               //  %if.end95
	bge x18, x0, .LBB0_100
.LBB0_103:                              //  %if.end95
	jal x0, .LBB0_30
.LBB0_100:                              //  %if.end95
	lui x15 ,  (1071644672>>12)&1048575
	beq x9, x15, .LBB0_101
.LBB0_104:                              //  %if.end95
	jal x0, .LBB0_30
.LBB0_101:                              //  %if.then99
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __ieee754_sqrt
	jal x0, .LBB0_21
.LBB0_102:                              //  %if.then90
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __divdf3
	jal x0, .LBB0_21
.LBB0_86:
	add x26 ,  x0 ,  x0
	bne x23, x25, .LBB0_92
	jal x0, .LBB0_88
.Lfunc_end0:
	.size	__ieee754_pow, .Lfunc_end0-__ieee754_pow
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	bp,@object              //  @bp
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
bp:
	.quad	4607182418800017408     //  double 1
	.quad	4609434218613702656     //  double 1.5
	.size	bp, 16

	.address_space	0
	.type	dp_l,@object            //  @dp_l
	.p2align	3
dp_l:
	.quad	0                       //  double 0
	.quad	4489242115478376454     //  double 1.350039202129749E-8
	.size	dp_l, 16

	.address_space	0
	.type	dp_h,@object            //  @dp_h
	.p2align	3
dp_h:
	.quad	0                       //  double 0
	.quad	4603444093224222720     //  double 0.58496248722076416
	.size	dp_h, 16

	.hidden	__math_oflow
	.hidden	__math_uflow

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
