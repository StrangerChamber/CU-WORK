	.text
	.file	"e_rem_pio2.c"
	.globl	__ieee754_rem_pio2      //  -- Begin function __ieee754_rem_pio2
	.type	__ieee754_rem_pio2,@function
__ieee754_rem_pio2:                     //  @__ieee754_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x27 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
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
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1072243195&4095
	and x27 ,  x15 ,  x9
	lui x15 ,  (1072243195>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x27, .LBB0_2
.LBB0_1:                                //  %if.then
	sw x19 ,  0 ( x8 )
	sw x9 ,  4 ( x8 )
	sw x0 ,  12 ( x8 )
	sw x0 ,  8 ( x8 )
	add x18 ,  x0 ,  x0
	jal x0, .LBB0_28
.LBB0_2:                                //  %if.end
	lui x30 ,  1073928571&4095
	lui x15 ,  (1073928571>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x27, .LBB0_12
.LBB0_3:                                //  %if.then3
	lui x12 ,  (1413480448>>12)&1048575
	bge x0, x9, .LBB0_8
.LBB0_4:                                //  %if.then5
	lui x30 ,  -1074191877&4095
	lui x15 ,  (-1074191877>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x27, x15, .LBB0_5
.LBB0_7:                                //  %if.else
	lui x30 ,  -1110395807&4095
	lui x15 ,  (-1110395807>>12)&1048575
	lui x12 ,  (442499072>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  771977331&4095
	lui x15 ,  (771977331>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  -1146938998&4095
	lui x15 ,  (-1146938998>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	or x20 ,  x15 ,  x30
	add x13 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	jal x0, .LBB0_6
.LBB0_12:                               //  %if.end40
	lui x30 ,  1094263291&4095
	lui x15 ,  (1094263291>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x27, .LBB0_21
.LBB0_13:                               //  %if.then42
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call fabs
	lui x30 ,  1841940611&4095
	lui x15 ,  (1841940611>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071931184&4095
	lui x15 ,  (1071931184>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	call __adddf3
	call __fixdfsi
	add x18 ,  x0 ,  x10
	call __floatsidf
	lui x30 ,  -1074191877&4095
	lui x15 ,  (-1074191877>>12)&1048575
	lui x12 ,  (1413480448>>12)&1048575
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __adddf3
	lui x30 ,  442655537&4095
	lui x15 ,  (442655537>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1037087841&4095
	lui x15 ,  (1037087841>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	addi x15 ,  x0 ,  31
	blt x15, x18, .LBB0_15
.LBB0_14:                               //  %land.lhs.true
	lui x30 ,  npio2_hw&4095
	lui x14 ,  (npio2_hw>>12)&1048575
	slli x15 ,  x18 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  -4 ( x15 )
	bne x27, x15, .LBB0_18
.LBB0_15:                               //  %if.else57
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x25 ,  x0 ,  x11
	srli x27 ,  x27 ,  20&31
	add x26 ,  x0 ,  x10
	srli x15 ,  x25 ,  20&31
	sw x25 ,  4 ( x8 )
	sw x26 ,  0 ( x8 )
	andi x15 ,  x15 ,  2047
	sub x15 ,  x27 ,  x15
	slti x15 ,  x15 ,  17
	bltu x0, x15, .LBB0_19
.LBB0_16:                               //  %if.then73
	lui x30 ,  1037087841&4095
	lui x15 ,  (1037087841>>12)&1048575
	lui x12 ,  (442499072>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x26 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	lui x30 ,  771977331&4095
	lui x15 ,  (771977331>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1000544650&4095
	lui x15 ,  (1000544650>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	add x21 ,  x0 ,  x26
	add x22 ,  x0 ,  x25
	call __subdf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x25 ,  x0 ,  x11
	add x26 ,  x0 ,  x10
	srli x15 ,  x25 ,  20&31
	sw x25 ,  4 ( x8 )
	sw x26 ,  0 ( x8 )
	andi x15 ,  x15 ,  2047
	sub x15 ,  x27 ,  x15
	slti x15 ,  x15 ,  50
	bltu x0, x15, .LBB0_19
.LBB0_17:                               //  %if.then95
	lui x30 ,  1000544650&4095
	lui x15 ,  (1000544650>>12)&1048575
	lui x12 ,  (771751936>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x14 ,  x0 ,  x21
	add x21 ,  x0 ,  x10
	add x15 ,  x0 ,  x22
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x14
	add x11 ,  x0 ,  x15
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __subdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	lui x30 ,  622873025&4095
	lui x15 ,  (622873025>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  964395930&4095
	lui x15 ,  (964395930>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
.LBB0_18:                               //  %if.end106
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	add x26 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	sw x25 ,  4 ( x8 )
	sw x26 ,  0 ( x8 )
.LBB0_19:                               //  %if.end106
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __subdf3
	sw x11 ,  12 ( x8 )
	sw x10 ,  8 ( x8 )
	bge x9, x0, .LBB0_28
.LBB0_20:                               //  %if.then113
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sw x10 ,  8 ( x8 )
	sw x26 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x14 ,  x15 ,  x11
	xor x15 ,  x15 ,  x25
	sw x14 ,  12 ( x8 )
	sw x15 ,  4 ( x8 )
	jal x0, .LBB0_27
.LBB0_21:                               //  %if.end122
	srli x15 ,  x27 ,  20&31
	sltiu x14 ,  x15 ,  2047
	bltu x0, x14, .LBB0_23
.LBB0_22:                               //  %if.then125
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	call __subdf3
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	sw x11 ,  12 ( x8 )
	sw x10 ,  8 ( x8 )
	add x18 ,  x0 ,  x0
	jal x0, .LBB0_28
.LBB0_8:                                //  %if.else22
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	add x13 ,  x0 ,  x20
	call __adddf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	bne x27, x20, .LBB0_9
.LBB0_11:                               //  %if.else31
	lui x30 ,  1037087841&4095
	lui x15 ,  (1037087841>>12)&1048575
	lui x12 ,  (442499072>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  771977331&4095
	lui x15 ,  (771977331>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  1000544650&4095
	lui x15 ,  (1000544650>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	or x20 ,  x15 ,  x30
	add x13 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	jal x0, .LBB0_10
.LBB0_5:                                //  %if.then7
	lui x30 ,  442655537&4095
	lui x15 ,  (442655537>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  -1110395807&4095
	lui x15 ,  (-1110395807>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	or x20 ,  x15 ,  x30
	add x13 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
.LBB0_6:                                //  %cleanup
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __adddf3
	sw x11 ,  12 ( x8 )
	sw x10 ,  8 ( x8 )
	sw x22 ,  4 ( x8 )
	sw x21 ,  0 ( x8 )
	slti x18 ,  x0 ,  1
	jal x0, .LBB0_28
.LBB0_23:                               //  %do.body130
	addi x18 ,  x15 ,  -1046
	add x10 ,  x0 ,  x19
	slli x15 ,  x18 ,  20&31
	sub x20 ,  x27 ,  x15
	add x11 ,  x0 ,  x20
	call __fixdfsi
	call __floatsidf
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __subdf3
	add x19 ,  x0 ,  x0
	lui x20 ,  (1097859072>>12)&1048575
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __muldf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __fixdfsi
	call __floatsidf
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __muldf3
	addi x15 ,  x2 ,  8
	sw x21 ,  8 ( x2 )
	addi x20 ,  x0 ,  4
	sw x26 ,  20 ( x2 )
	ori x14 ,  x15 ,  4
	addi x21 ,  x15 ,  16
	sw x11 ,  20 ( x15 )
	sw x10 ,  16 ( x15 )
	sw x25 ,  8 ( x15 )
	sw x22 ,  0 ( x14 )
.LBB0_24:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x21 )
	add x13 ,  x0 ,  x19
	add x12 ,  x0 ,  x19
	lw x11 ,  4 ( x21 )
	call __eqdf2
	addi x21 ,  x21 ,  -8
	addi x20 ,  x20 ,  -1
	beq x0, x10, .LBB0_24
.LBB0_25:                               //  %while.end
	lui x30 ,  two_over_pi&4095
	lui x15 ,  (two_over_pi>>12)&1048575
	addi x10 ,  x2 ,  8
	addi x14 ,  x0 ,  2
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	call __kernel_rem_pio2
	add x18 ,  x0 ,  x10
	bge x9, x0, .LBB0_28
.LBB0_26:                               //  %if.then168
	lw x15 ,  4 ( x8 )
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	xor x15 ,  x14 ,  x15
	sw x15 ,  4 ( x8 )
	lw x15 ,  12 ( x8 )
	xor x15 ,  x14 ,  x15
	sw x15 ,  12 ( x8 )
.LBB0_27:                               //  %cleanup
	sub x18 ,  x0 ,  x18
	jal x0, .LBB0_28
.LBB0_9:                                //  %if.then24
	lui x30 ,  442655537&4095
	lui x15 ,  (442655537>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  1037087841&4095
	lui x15 ,  (1037087841>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	or x20 ,  x15 ,  x30
	add x13 ,  x0 ,  x20
	call __adddf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
.LBB0_10:                               //  %cleanup
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __adddf3
	sw x11 ,  12 ( x8 )
	sw x10 ,  8 ( x8 )
	sw x22 ,  4 ( x8 )
	sw x21 ,  0 ( x8 )
	addi x18 ,  x0 ,  -1
.LBB0_28:                               //  %cleanup
	add x10 ,  x0 ,  x18
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
.Lfunc_end0:
	.size	__ieee754_rem_pio2, .Lfunc_end0-__ieee754_rem_pio2
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	npio2_hw,@object        //  @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	2
npio2_hw:
	.long	1073291771              //  0x3ff921fb
	.long	1074340347              //  0x400921fb
	.long	1074977148              //  0x4012d97c
	.long	1075388923              //  0x401921fb
	.long	1075800698              //  0x401f6a7a
	.long	1076025724              //  0x4022d97c
	.long	1076231611              //  0x4025fdbb
	.long	1076437499              //  0x402921fb
	.long	1076643386              //  0x402c463a
	.long	1076849274              //  0x402f6a7a
	.long	1076971356              //  0x4031475c
	.long	1077074300              //  0x4032d97c
	.long	1077177244              //  0x40346b9c
	.long	1077280187              //  0x4035fdbb
	.long	1077383131              //  0x40378fdb
	.long	1077486075              //  0x403921fb
	.long	1077589019              //  0x403ab41b
	.long	1077691962              //  0x403c463a
	.long	1077794906              //  0x403dd85a
	.long	1077897850              //  0x403f6a7a
	.long	1077968460              //  0x40407e4c
	.long	1078019932              //  0x4041475c
	.long	1078071404              //  0x4042106c
	.long	1078122876              //  0x4042d97c
	.long	1078174348              //  0x4043a28c
	.long	1078225820              //  0x40446b9c
	.long	1078277292              //  0x404534ac
	.long	1078328763              //  0x4045fdbb
	.long	1078380235              //  0x4046c6cb
	.long	1078431707              //  0x40478fdb
	.long	1078483179              //  0x404858eb
	.long	1078534651              //  0x404921fb
	.size	npio2_hw, 128

	.address_space	0
	.type	two_over_pi,@object     //  @two_over_pi
	.p2align	2
two_over_pi:
	.long	10680707                //  0xa2f983
	.long	7228996                 //  0x6e4e44
	.long	1387004                 //  0x1529fc
	.long	2578385                 //  0x2757d1
	.long	16069853                //  0xf534dd
	.long	12639074                //  0xc0db62
	.long	9804092                 //  0x95993c
	.long	4427841                 //  0x439041
	.long	16666979                //  0xfe5163
	.long	11263675                //  0xabdebb
	.long	12935607                //  0xc561b7
	.long	2387514                 //  0x246e3a
	.long	4345298                 //  0x424dd2
	.long	14681673                //  0xe00649
	.long	3074569                 //  0x2eea09
	.long	13734428                //  0xd1921c
	.long	16653803                //  0xfe1deb
	.long	1880361                 //  0x1cb129
	.long	10960616                //  0xa73ee8
	.long	8533493                 //  0x8235f5
	.long	3062596                 //  0x2ebb44
	.long	8710556                 //  0x84e99c
	.long	7349940                 //  0x7026b4
	.long	6258241                 //  0x5f7e41
	.long	3772886                 //  0x3991d6
	.long	3769171                 //  0x398353
	.long	3798172                 //  0x39f49c
	.long	8675211                 //  0x845f8b
	.long	12450088                //  0xbdf928
	.long	3874808                 //  0x3b1ff8
	.long	9961438                 //  0x97ffde
	.long	366607                  //  0x5980f
	.long	15675153                //  0xef2f11
	.long	9132554                 //  0x8b5a0a
	.long	7151469                 //  0x6d1f6d
	.long	3571407                 //  0x367ecf
	.long	2607881                 //  0x27cb09
	.long	12013382                //  0xb74f46
	.long	4155038                 //  0x3f669e
	.long	6285869                 //  0x5fea2d
	.long	7677882                 //  0x7527ba
	.long	13102053                //  0xc7ebe5
	.long	15825725                //  0xf17b3d
	.long	473591                  //  0x739f7
	.long	9065106                 //  0x8a5292
	.long	15363067                //  0xea6bfb
	.long	6271263                 //  0x5fb11f
	.long	9264392                 //  0x8d5d08
	.long	5636912                 //  0x560330
	.long	4652155                 //  0x46fc7b
	.long	7056368                 //  0x6babf0
	.long	13614112                //  0xcfbc20
	.long	10155062                //  0x9af436
	.long	1944035                 //  0x1da9e3
	.long	9527646                 //  0x91615e
	.long	15080200                //  0xe61b08
	.long	6658437                 //  0x659985
	.long	6231200                 //  0x5f14a0
	.long	6832269                 //  0x68408d
	.long	16767104                //  0xffd880
	.long	5075751                 //  0x4d7327
	.long	3212806                 //  0x310606
	.long	1398474                 //  0x1556ca
	.long	7579849                 //  0x73a8c9
	.long	6349435                 //  0x60e27b
	.long	12618859                //  0xc08c6b
	.size	two_over_pi, 264


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
