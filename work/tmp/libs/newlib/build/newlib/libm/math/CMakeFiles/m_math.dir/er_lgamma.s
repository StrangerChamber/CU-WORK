	.text
	.file	"er_lgamma.c"
	.globl	__ieee754_lgamma_r      //  -- Begin function __ieee754_lgamma_r
	.type	__ieee754_lgamma_r,@function
__ieee754_lgamma_r:                     //  @__ieee754_lgamma_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	lui x30 ,  2147483647&4095
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x12
	slti x15 ,  x0 ,  1
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x15 ,  0 ( x20 )
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x23 ,  x15 ,  x8
	srli x24 ,  x23 ,  20&31
	sltiu x15 ,  x24 ,  2047
	bltu x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	call __muldf3
	jal x0, .LBB0_63
.LBB0_2:                                //  %if.end
	or x15 ,  x19 ,  x23
	beq x0, x15, .LBB0_6
.LBB0_3:                                //  %if.end7
	addi x15 ,  x0 ,  952
	bltu x15, x24, .LBB0_8
.LBB0_4:                                //  %if.then9
	blt x8, x0, .LBB0_16
.LBB0_5:                                //  %if.else
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __ieee754_log
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_63
.LBB0_6:                                //  %if.then3
	blt x8, x0, .LBB0_7
.LBB0_67:                               //  %if.then3
	jal x0, .LBB0_62
.LBB0_7:                                //  %if.then5
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x20 )
	jal x0, .LBB0_62
.LBB0_8:                                //  %if.end16
	add x27 ,  x0 ,  x0
	blt x8, x0, .LBB0_17
.LBB0_9:
	add x9 ,  x0 ,  x27
	add x18 ,  x0 ,  x27
	add x22 ,  x0 ,  x8
.LBB0_10:                               //  %if.end38
	lui x30 ,  -1072693248&4095
	lui x15 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x23
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_20
.LBB0_11:                               //  %lor.lhs.false
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x23
	or x15 ,  x19 ,  x15
	beq x0, x15, .LBB0_21
.LBB0_12:                               //  %if.else46
	srli x15 ,  x23 ,  30&31
	bltu x0, x15, .LBB0_22
.LBB0_13:                               //  %if.then48
	lui x30 ,  1072483532&4095
	lui x15 ,  (1072483532>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x23, .LBB0_32
.LBB0_14:                               //  %if.then50
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __ieee754_log
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1072130371&4095
	xor x20 ,  x15 ,  x11
	lui x15 ,  (1072130371>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x15, x23, .LBB0_40
.LBB0_15:
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x0
	add x20 ,  x0 ,  x21
	jal x0, .LBB0_34
.LBB0_16:                               //  %if.then11
	lui x30 ,  -2147483648&4095
	addi x15 ,  x0 ,  -1
	add x10 ,  x0 ,  x19
	sw x15 ,  0 ( x20 )
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	xor x11 ,  x9 ,  x8
	call __ieee754_log
	xor x11 ,  x9 ,  x11
	jal x0, .LBB0_63
.LBB0_17:                               //  %if.then18
	sltiu x15 ,  x24 ,  1075
	bltu x0, x15, .LBB0_18
.LBB0_68:                               //  %if.then18
	jal x0, .LBB0_62
.LBB0_18:                               //  %if.end23
	addi x15 ,  x0 ,  1020
	bltu x15, x24, .LBB0_30
.LBB0_19:                               //  %if.then.i
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	add x14 ,  x0 ,  x12
	call __kernel_sin
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	jal x0, .LBB0_61
.LBB0_20:
	add x22 ,  x0 ,  x27
	add x23 ,  x0 ,  x27
	jal x0, .LBB0_53
.LBB0_21:
	add x22 ,  x0 ,  x0
	add x23 ,  x0 ,  x22
	jal x0, .LBB0_53
.LBB0_22:                               //  %if.else163
	srli x15 ,  x23 ,  21&31
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	addi x14 ,  x0 ,  512
	bltu x14, x15, .LBB0_35
.LBB0_23:                               //  %if.then165
	call __fixdfsi
	add x21 ,  x0 ,  x10
	call __floatsidf
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __subdf3
	lui x30 ,  -585635515&4095
	lui x15 ,  (-585635515>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1057013740&4095
	lui x15 ,  (1057013740>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1936257593&4095
	lui x15 ,  (1936257593>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1063134902&4095
	lui x15 ,  (1063134902>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  2123602273&4095
	lui x15 ,  (2123602273>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1067141148&4095
	lui x15 ,  (1067141148>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -1092226313&4095
	lui x15 ,  (-1092226313>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069726620&4095
	lui x15 ,  (1069726620>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1326686041&4095
	lui x15 ,  (1326686041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070913935&4095
	lui x15 ,  (1070913935>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  920782968&4095
	lui x15 ,  (920782968>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070302347&4095
	lui x15 ,  (1070302347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -478302008&4095
	lui x15 ,  (-478302008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078737817&4095
	lui x15 ,  (-1078737817>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -1514962624&4095
	lui x15 ,  (-1514962624>>12)&1048575
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1054784247&4095
	lui x15 ,  (1054784247>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -901666469&4095
	lui x15 ,  (-901666469>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061780954&4095
	lui x15 ,  (1061780954>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1949226101&4095
	lui x15 ,  (1949226101>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066604522&4095
	lui x15 ,  (1066604522>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -855908569&4095
	lui x15 ,  (-855908569>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069941229&4095
	lui x15 ,  (1069941229>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -1814831908&4095
	lui x15 ,  (-1814831908>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072110104&4095
	lui x15 ,  (1072110104>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1657056116&4095
	lui x15 ,  (1657056116>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073104295&4095
	lui x15 ,  (1073104295>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x24 ,  x0 ,  x0
	lui x25 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __divdf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x24
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __adddf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	addi x15 ,  x21 ,  -3
	addi x14 ,  x0 ,  4
	bgeu x14, x15, .LBB0_24
.LBB0_69:                               //  %if.then165
	jal x0, .LBB0_53
.LBB0_24:                               //  %if.then165
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_25:                               //  %sw.bb196
	add x12 ,  x0 ,  x0
	lui x13 ,  (1075314688>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
.LBB0_26:                               //  %sw.bb199
	add x12 ,  x0 ,  x0
	lui x13 ,  (1075052544>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
.LBB0_27:                               //  %sw.bb202
	add x12 ,  x0 ,  x0
	lui x13 ,  (1074790400>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
.LBB0_28:                               //  %sw.bb205
	add x12 ,  x0 ,  x0
	lui x13 ,  (1074266112>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
.LBB0_29:                               //  %sw.bb208
	add x12 ,  x0 ,  x0
	lui x13 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	call __ieee754_log
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	jal x0, .LBB0_51
.LBB0_30:                               //  %if.end.i
	lui x30 ,  -2147483648&4095
	lui x22 ,  (-2147483648>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	xor x9 ,  x15 ,  x8
	add x11 ,  x0 ,  x9
	call floor
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	call __eqdf2
	beq x0, x10, .LBB0_37
.LBB0_31:                               //  %if.then3.i
	lui x30 ,  -1075838976&4095
	add x21 ,  x0 ,  x0
	lui x15 ,  (-1075838976>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x21
	or x13 ,  x15 ,  x30
	call __muldf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	call floor
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	lui x13 ,  (1074790400>>12)&1048575
	add x12 ,  x0 ,  x21
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __muldf3
	call __fixdfsi
	addi x15 ,  x0 ,  6
	bltu x15, x10, .LBB0_55
.LBB0_38:                               //  %if.end25.i
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x10 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_39:                               //  %sw.bb28.i
	add x21 ,  x0 ,  x0
	lui x11 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x10 ,  x0 ,  x21
	call __subdf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	call __kernel_cos
	jal x0, .LBB0_59
.LBB0_32:                               //  %if.else63
	lui x30 ,  1073460418&4095
	lui x15 ,  (1073460418>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x15, x23, .LBB0_42
.LBB0_33:
	add x20 ,  x0 ,  x0
	lui x11 ,  (1073741824>>12)&1048575
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	add x10 ,  x0 ,  x20
.LBB0_34:                               //  %sw.bb
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __subdf3
	add x19 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  1116535378&4095
	lui x15 ,  (1116535378>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1056600180&4095
	lui x15 ,  (1056600180>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -317659827&4095
	lui x15 ,  (-317659827>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1059910380&4095
	lui x15 ,  (1059910380>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  292503389&4095
	lui x15 ,  (292503389>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1062439572&4095
	lui x15 ,  (1062439572>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1232080920&4095
	lui x15 ,  (-1232080920>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1065238607&4095
	lui x15 ,  (1065238607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  441803431&4095
	lui x15 ,  (441803431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068580352&4095
	lui x15 ,  (1068580352>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -478302008&4095
	lui x15 ,  (-478302008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068745831&4095
	lui x15 ,  (1068745831>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -1868277705&4095
	lui x15 ,  (-1868277705>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1057457550&4095
	lui x15 ,  (1057457550>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1736574201&4095
	lui x15 ,  (-1736574201>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058820232&4095
	lui x15 ,  (1058820232>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1984324608&4095
	lui x15 ,  (-1984324608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061205702&4095
	lui x15 ,  (1061205702>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -860384661&4095
	lui x15 ,  (-860384661>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1063759320&4095
	lui x15 ,  (1063759320>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1399696261&4095
	lui x15 ,  (-1399696261>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066734370&4095
	lui x15 ,  (1066734370>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -995749971&4095
	lui x15 ,  (-995749971>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070900044&4095
	lui x15 ,  (1070900044>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	add x21 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x23
	call __adddf3
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	add x21 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x23
	call __adddf3
	add x13 ,  x0 ,  x11
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	jal x0, .LBB0_51
.LBB0_35:                               //  %if.else214
	call __ieee754_log
	add x21 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	addi x15 ,  x0 ,  1080
	bltu x15, x24, .LBB0_45
.LBB0_36:                               //  %if.then217
	add x23 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	add x10 ,  x0 ,  x23
	call __divdf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  194921444&4095
	lui x15 ,  (194921444>>12)&1048575
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084573539&4095
	lui x15 ,  (-1084573539>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1289410001&4095
	lui x15 ,  (1289410001>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061906362&4095
	lui x15 ,  (1061906362>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __muldf3
	lui x30 ,  -1945114815&4095
	lui x15 ,  (-1945114815>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1086095157&4095
	lui x15 ,  (-1086095157>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __muldf3
	lui x30 ,  -1731249994&4095
	lui x15 ,  (-1731249994>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061814687&4095
	lui x15 ,  (1061814687>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __muldf3
	lui x30 ,  380644956&4095
	lui x15 ,  (380644956>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1083784852&4095
	lui x15 ,  (-1083784852>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x11 ,  x0 ,  x27
	add x10 ,  x0 ,  x26
	add x27 ,  x0 ,  x0
	call __muldf3
	lui x30 ,  1431655739&4095
	lui x15 ,  (1431655739>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068848469&4095
	lui x15 ,  (1068848469>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -1865843351&4095
	lui x15 ,  (-1865843351>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071304675&4095
	lui x15 ,  (1071304675>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x19 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
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
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	jal x0, .LBB0_51
.LBB0_37:                               //  %if.else12.i
	add x10 ,  x0 ,  x0
	lui x11 ,  (1127219200>>12)&1048575
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	call __subdf3
	andi x21 ,  x10 ,  1
	add x10 ,  x0 ,  x21
	call __floatsidf
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	slli x10 ,  x21 ,  2&31
	addi x15 ,  x0 ,  6
	bgeu x15, x10, .LBB0_38
.LBB0_55:                               //  %sw.default.i
	lui x30 ,  -1073741824&4095
	add x21 ,  x0 ,  x0
	lui x15 ,  (-1073741824>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x21
	or x13 ,  x15 ,  x30
	call __adddf3
	jal x0, .LBB0_56
.LBB0_40:                               //  %if.else56
	lui x30 ,  -1923417860&4095
	lui x15 ,  (-1923417860>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075999903&4095
	lui x15 ,  (-1075999903>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1070442080&4095
	lui x15 ,  (1070442080>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x15, x23, .LBB0_48
.LBB0_41:
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
	add x20 ,  x0 ,  x21
	jal x0, .LBB0_44
.LBB0_42:                               //  %if.else67
	lui x30 ,  1072936132&4095
	lui x15 ,  (1072936132>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x23, x15, .LBB0_49
.LBB0_43:                               //  %if.then69
	lui x30 ,  1666629183&4095
	lui x15 ,  (1666629183>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1074306344&4095
	lui x15 ,  (-1074306344>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x20 ,  x0 ,  x0
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	sw x20 ,  8 ( x2 )              //  4-byte Folded Spill
.LBB0_44:                               //  %sw.bb102
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	add x19 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -322728904&4095
	lui x15 ,  (-322728904>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1087078620&4095
	lui x15 ,  (-1087078620>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -278812439&4095
	lui x15 ,  (-278812439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1062002444&4095
	lui x15 ,  (1062002444>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1276570409&4095
	lui x15 ,  (-1276570409>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1083298049&4095
	lui x15 ,  (-1083298049>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1760888340&4095
	lui x15 ,  (-1760888340>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066559207&4095
	lui x15 ,  (1066559207>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1916353271&4095
	lui x15 ,  (-1916353271>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1077746649&4095
	lui x15 ,  (-1077746649>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -389884940&4095
	lui x15 ,  (-389884940>>12)&1048575
	add x27 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1060502846&4095
	lui x15 ,  (1060502846>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1670127380&4095
	lui x15 ,  (-1670127380>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1086216688&4095
	lui x15 ,  (-1086216688>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  773179669&4095
	lui x15 ,  (773179669>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1063420627&4095
	lui x15 ,  (1063420627>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1164841878&4095
	lui x15 ,  (-1164841878>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081794657&4095
	lui x15 ,  (-1081794657>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1797963365&4095
	lui x15 ,  (-1797963365>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068534594&4095
	lui x15 ,  (1068534594>>12)&1048575
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
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x21
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -1534421217&4095
	lui x15 ,  (-1534421217>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  -1135556662&4095
	lui x15 ,  (-1135556662>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	lui x30 ,  1812904951&4095
	lui x15 ,  (1812904951>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1060417389&4095
	lui x15 ,  (1060417389>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1087563023&4095
	lui x15 ,  (-1087563023>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084817778&4095
	lui x15 ,  (-1084817778>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -479141052&4095
	lui x15 ,  (-479141052>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1064893664&4095
	lui x15 ,  (1064893664>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -550127853&4095
	lui x15 ,  (-550127853>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079981656&4095
	lui x15 ,  (-1079981656>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -923912030&4095
	lui x15 ,  (-923912030>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071576875&4095
	lui x15 ,  (1071576875>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	lui x30 ,  -1128035774&4095
	lui x15 ,  (-1128035774>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1077995079&4095
	lui x15 ,  (-1077995079>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x13 ,  x0 ,  x11
	lw x11 ,  8 ( x2 )              //  4-byte Folded Reload
	add x12 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __adddf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x27 ,  x0 ,  x0
	jal x0, .LBB0_53
.LBB0_45:                               //  %if.else237
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	jal x0, .LBB0_52
.LBB0_46:                               //  %sw.bb32.i
	add x21 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x10 ,  x0 ,  x21
	call __subdf3
.LBB0_56:                               //  %sw.epilog.i
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	add x14 ,  x0 ,  x21
	jal x0, .LBB0_58
.LBB0_47:                               //  %sw.bb36.i
	lui x30 ,  -1074266112&4095
	add x21 ,  x0 ,  x0
	lui x15 ,  (-1074266112>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x21
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x21
	call __kernel_cos
	lui x30 ,  -2147483648&4095
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_60
.LBB0_48:
	add x25 ,  x0 ,  x21
	jal x0, .LBB0_50
.LBB0_49:                               //  %if.else71
	lui x30 ,  -1074790400&4095
	add x25 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x25
	or x13 ,  x15 ,  x30
	call __adddf3
	add x19 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x20 ,  x0 ,  x25
.LBB0_50:                               //  %sw.bb137
	lui x30 ,  -1087657207&4095
	lui x15 ,  (-1087657207>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066100619&4095
	lui x15 ,  (1066100619>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -167704284&4095
	lui x15 ,  (-167704284>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070419630&4095
	lui x15 ,  (1070419630>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  1156219984&4095
	lui x15 ,  (1156219984>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072646518&4095
	lui x15 ,  (1072646518>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -786842257&4095
	lui x15 ,  (-786842257>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073170268&4095
	lui x15 ,  (1073170268>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1962910209&4095
	lui x15 ,  (-1962910209>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071923230&4095
	lui x15 ,  (1071923230>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -478302008&4095
	lui x15 ,  (-478302008>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078737817&4095
	lui x15 ,  (-1078737817>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  1473302369&4095
	lui x15 ,  (1473302369>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1063934651&4095
	lui x15 ,  (1063934651>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -699171704&4095
	lui x15 ,  (-699171704>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069198933&4095
	lui x15 ,  (1069198933>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -464498513&4095
	lui x15 ,  (-464498513>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072209403&4095
	lui x15 ,  (1072209403>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1540679435&4095
	lui x15 ,  (-1540679435>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073809189&4095
	lui x15 ,  (1073809189>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1027776100&4095
	lui x15 ,  (-1027776100>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073980887&4095
	lui x15 ,  (1073980887>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __muldf3
	add x21 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x21
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __divdf3
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x20
.LBB0_51:                               //  %if.end244
	call __adddf3
.LBB0_52:                               //  %if.end244
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
.LBB0_53:                               //  %if.end244
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	blt x8, x27, .LBB0_63
.LBB0_54:                               //  %if.end244
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	jal x0, .LBB0_63
.LBB0_57:                               //  %sw.bb.i
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	add x14 ,  x0 ,  x12
.LBB0_58:                               //  %sw.epilog.i
	call __kernel_sin
.LBB0_59:                               //  %sw.epilog.i
	add x21 ,  x0 ,  x10
.LBB0_60:                               //  %sw.epilog.i
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	xor x22 ,  x15 ,  x11
.LBB0_61:                               //  %sin_pi.exit
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_64
.LBB0_62:                               //  %if.end6
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	call __divdf3
.LBB0_63:                               //  %cleanup
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.LBB0_64:                               //  %if.end29
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x8
	call __muldf3
	call fabs
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	call __ieee754_log
	add x12 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x12
	call __ltdf2
	bge x10, x0, .LBB0_66
.LBB0_65:                               //  %if.then35
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x20 )
.LBB0_66:                               //  %if.end36
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x22 ,  x15 ,  x8
	jal x0, .LBB0_10
.Lfunc_end0:
	.size	__ieee754_lgamma_r, .Lfunc_end0-__ieee754_lgamma_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_57
	.long	.LBB0_39
	.long	.LBB0_39
	.long	.LBB0_46
	.long	.LBB0_46
	.long	.LBB0_47
	.long	.LBB0_47
JTI0_1:
	.long	.LBB0_29
	.long	.LBB0_28
	.long	.LBB0_27
	.long	.LBB0_26
	.long	.LBB0_25
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
