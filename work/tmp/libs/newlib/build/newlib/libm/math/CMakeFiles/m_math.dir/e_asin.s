	.text
	.file	"e_asin.c"
	.globl	__ieee754_asin          //  -- Begin function __ieee754_asin
	.type	__ieee754_asin,@function
__ieee754_asin:                         //  @__ieee754_asin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	add x8 ,  x0 ,  x11
	sw x26 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x26 ,  x15 ,  x8
	srli x15 ,  x26 ,  20&31
	sltiu x15 ,  x15 ,  1023
	bltu x0, x15, .LBB0_7
.LBB0_1:                                //  %if.then
	lui x30 ,  -1072693248&4095
	lui x15 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x26
	or x15 ,  x9 ,  x15
	beq x0, x15, .LBB0_2
.LBB0_6:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	jal x0, .LBB0_4
.LBB0_7:                                //  %if.else
	srli x15 ,  x26 ,  21&31
	addi x14 ,  x0 ,  510
	bltu x14, x15, .LBB0_10
.LBB0_8:                                //  %if.then12
	srli x15 ,  x26 ,  22&31
	addi x14 ,  x0 ,  248
	bltu x14, x15, .LBB0_16
.LBB0_9:                                //  %if.then14
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
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __gtdf2
	blt x0, x10, .LBB0_5
.LBB0_10:                               //  %if.end45
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	add x9 ,  x0 ,  x0
	lui x20 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __subdf3
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  234747657&4095
	lui x15 ,  (234747657>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1057111521&4095
	lui x15 ,  (1057111521>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1963045512&4095
	lui x15 ,  (1963045512>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061810144&4095
	lui x15 ,  (1061810144>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1251438789&4095
	lui x15 ,  (-1251438789>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079737816&4095
	lui x15 ,  (-1079737816>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  243811413&4095
	lui x15 ,  (243811413>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070186837&4095
	lui x15 ,  (1070186837>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  65761149&4095
	lui x15 ,  (65761149>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076570606&4095
	lui x15 ,  (-1076570606>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1431655765&4095
	lui x15 ,  (1431655765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069897045&4095
	lui x15 ,  (1069897045>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1322347902&4095
	lui x15 ,  (-1322347902>>12)&1048575
	add x22 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068742853&4095
	lui x15 ,  (1068742853>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  462225753&4095
	lui x15 ,  (462225753>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075444116&4095
	lui x15 ,  (-1075444116>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1671853368&4095
	lui x15 ,  (-1671853368>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073752805&4095
	lui x15 ,  (1073752805>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  478817611&4095
	lui x15 ,  (478817611>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1073530329&4095
	lui x15 ,  (-1073530329>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __adddf3
	add x25 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __ieee754_sqrt
	lui x30 ,  1072640819&4095
	lui x15 ,  (1072640819>>12)&1048575
	add x23 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x26, x15, .LBB0_12
.LBB0_11:                               //  %if.then69
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	lui x30 ,  856972295&4095
	lui x15 ,  (856972295>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1131305434&4095
	lui x15 ,  (-1131305434>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.then7
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  856972295&4095
	lui x15 ,  (856972295>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1016178214&4095
	lui x15 ,  (1016178214>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB0_3
.LBB0_12:                               //  %if.else76
	call __divdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	call __adddf3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	add x21 ,  x0 ,  x0
	add x24 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	add x13 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x10 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __subdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x13 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	lui x30 ,  856972295&4095
	lui x15 ,  (856972295>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1016178214&4095
	lui x15 ,  (1016178214>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	call __subdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x20
	call __adddf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  1072243195&4095
	lui x15 ,  (1072243195>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x20
	or x21 ,  x15 ,  x30
	add x11 ,  x0 ,  x21
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __adddf3
.LBB0_13:                               //  %if.end98
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x9, x8, .LBB0_15
.LBB0_14:                               //  %if.end98
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_15
.LBB0_16:                               //  %if.else19
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  234747657&4095
	lui x15 ,  (234747657>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1057111521&4095
	lui x15 ,  (1057111521>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1963045512&4095
	lui x15 ,  (1963045512>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061810144&4095
	lui x15 ,  (1061810144>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1251438789&4095
	lui x15 ,  (-1251438789>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079737816&4095
	lui x15 ,  (-1079737816>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  243811413&4095
	lui x15 ,  (243811413>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070186837&4095
	lui x15 ,  (1070186837>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  65761149&4095
	lui x15 ,  (65761149>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1076570606&4095
	lui x15 ,  (-1076570606>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1431655765&4095
	lui x15 ,  (1431655765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069897045&4095
	lui x15 ,  (1069897045>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1322347902&4095
	lui x15 ,  (-1322347902>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068742853&4095
	lui x15 ,  (1068742853>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  462225753&4095
	lui x15 ,  (462225753>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1075444116&4095
	lui x15 ,  (-1075444116>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1671853368&4095
	lui x15 ,  (-1671853368>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073752805&4095
	lui x15 ,  (1073752805>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  478817611&4095
	lui x15 ,  (478817611>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1073530329&4095
	lui x15 ,  (-1073530329>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
.LBB0_3:                                //  %cleanup103
	call __adddf3
.LBB0_4:                                //  %cleanup103
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_5:                                //  %cleanup103
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
.LBB0_15:                               //  %if.end98
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
	.size	__ieee754_asin, .Lfunc_end0-__ieee754_asin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
