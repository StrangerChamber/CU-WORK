	.text
	.file	"s_log1p.c"
	.globl	log1p                   //  -- Begin function log1p
	.type	log1p,@function
log1p:                                  //  @log1p
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (1071284857>>12)&1048575
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1071284857&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x14, x8, .LBB0_10
.LBB0_1:                                //  %if.then
	and x15 ,  x15 ,  x8
	srli x19 ,  x15 ,  20&31
	sltiu x14 ,  x19 ,  1023
	bltu x0, x14, .LBB0_5
.LBB0_2:                                //  %if.then2
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __nedf2
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then4
	slti x10 ,  x0 ,  1
	call __math_divzero
	jal x0, .LBB0_35
.LBB0_10:                               //  %if.end18
	lui x15 ,  (2146435072>>12)&1048575
	blt x8, x15, .LBB0_17
.LBB0_11:                               //  %if.then20
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	jal x0, .LBB0_35
.LBB0_5:                                //  %if.end
	srli x15 ,  x15 ,  21&31
	addi x14 ,  x0 ,  496
	bltu x14, x15, .LBB0_13
.LBB0_6:                                //  %if.then7
	add x18 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	call __gtdf2
	bge x0, x10, .LBB0_9
.LBB0_7:                                //  %if.then7
	sltiu x15 ,  x19 ,  969
	beq x0, x15, .LBB0_9
.LBB0_8:
	add x23 ,  x0 ,  x9
	jal x0, .LBB0_36
.LBB0_17:                               //  %if.then24
	lui x30 ,  1128267775&4095
	lui x15 ,  (1128267775>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x15, x8, .LBB0_18
.LBB0_21:                               //  %if.else41
	add x18 ,  x0 ,  x0
	srli x15 ,  x8 ,  20&31
	add x22 ,  x0 ,  x8
	add x21 ,  x0 ,  x9
	addi x20 ,  x15 ,  -1023
	add x19 ,  x0 ,  x18
	jal x0, .LBB0_22
.LBB0_13:                               //  %if.end22
	lui x30 ,  1076707644&4095
	lui x15 ,  (1076707644>>12)&1048575
	lui x14 ,  (1076707645>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1076707645&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x8
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_18
.LBB0_14:                               //  %if.end77.thread
	add x20 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
                                        //  implicit-def: $rf_xpr_18
                                        //  implicit-def: $rf_xpr_19
	jal x0, .LBB0_15
.LBB0_18:                               //  %if.then26
	add x23 ,  x0 ,  x0
	lui x18 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x18
	call __adddf3
	add x22 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srai x15 ,  x22 ,  20&31
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	addi x20 ,  x15 ,  -1023
	call __subdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x18
	call __adddf3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	blt x23, x20, .LBB0_20
.LBB0_19:                               //  %if.then26
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
.LBB0_20:                               //  %if.then26
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_22:                               //  %if.end51
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  434333&4095
	and x23 ,  x15 ,  x22
	lui x15 ,  (434333>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x23, .LBB0_24
.LBB0_23:                               //  %do.body55
	lui x15 ,  (1072693248>>12)&1048575
	or x11 ,  x15 ,  x23
	jal x0, .LBB0_25
.LBB0_24:                               //  %if.else62
	lui x15 ,  (1071644672>>12)&1048575
	addi x20 ,  x20 ,  1
	or x11 ,  x15 ,  x23
	lui x15 ,  (1048576>>12)&1048575
	sub x15 ,  x15 ,  x23
	srli x23 ,  x15 ,  2&31
.LBB0_25:                               //  %if.end77
	lui x30 ,  -1074790400&4095
	add x22 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x22
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x22
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	beq x0, x23, .LBB0_26
.LBB0_15:                               //  %if.end109
	add x12 ,  x0 ,  x0
	lui x13 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __divdf3
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x23
	call __muldf3
	lui x30 ,  -549563836&4095
	lui x15 ,  (-549563836>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069740306&4095
	lui x15 ,  (1069740306>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -797391201&4095
	lui x15 ,  (-797391201>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069783561&4095
	lui x15 ,  (1069783561>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -1765080098&4095
	lui x15 ,  (-1765080098>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070024292&4095
	lui x15 ,  (1070024292>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  495876271&4095
	lui x15 ,  (495876271>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070363077&4095
	lui x15 ,  (1070363077>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -1809673383&4095
	lui x15 ,  (-1809673383>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070745892&4095
	lui x15 ,  (1070745892>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -1718093308&4095
	lui x15 ,  (-1718093308>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071225241&4095
	lui x15 ,  (1071225241>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  1431655827&4095
	lui x15 ,  (1431655827>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071994197&4095
	lui x15 ,  (1071994197>>12)&1048575
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
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	beq x0, x20, .LBB0_16
.LBB0_33:                               //  %if.else133
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __muldf3
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x25 ,  x0 ,  x11
	call __floatsidf
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x20 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	jal x0, .LBB0_34
.LBB0_26:                               //  %if.then81
	add x23 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x23
	add x12 ,  x0 ,  x23
	call __nedf2
	bltu x0, x10, .LBB0_30
.LBB0_27:                               //  %if.then83
	beq x0, x20, .LBB0_28
.LBB0_29:                               //  %if.else86
	add x10 ,  x0 ,  x20
	call __floatsidf
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_35
.LBB0_16:                               //  %if.then128
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_34
.LBB0_4:                                //  %if.else
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __math_invalid
	jal x0, .LBB0_35
.LBB0_9:                                //  %if.else11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	jal x0, .LBB0_35
.LBB0_30:                               //  %if.end92
	lui x30 ,  1431655765&4095
	lui x15 ,  (1431655765>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075489451&4095
	lui x15 ,  (-1075489451>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __muldf3
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	beq x0, x20, .LBB0_31
.LBB0_32:                               //  %if.else100
	add x10 ,  x0 ,  x20
	call __floatsidf
	lui x30 ,  -18874368&4095
	lui x15 ,  (-18874368>>12)&1048575
	add x20 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1072049730&4095
	lui x15 ,  (1072049730>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  897137782&4095
	lui x15 ,  (897137782>>12)&1048575
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038760431&4095
	lui x15 ,  (1038760431>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	jal x0, .LBB0_34
.LBB0_28:
	add x8 ,  x0 ,  x23
	jal x0, .LBB0_36
.LBB0_31:                               //  %if.then98
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x21
.LBB0_34:                               //  %cleanup
	call __subdf3
.LBB0_35:                               //  %cleanup
	add x23 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_36:                               //  %cleanup
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x26 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	log1p, .Lfunc_end0-log1p
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzero
	.hidden	__math_invalid

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
