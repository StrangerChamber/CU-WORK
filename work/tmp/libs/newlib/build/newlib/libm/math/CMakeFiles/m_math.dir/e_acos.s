	.text
	.file	"e_acos.c"
	.globl	__ieee754_acos          //  -- Begin function __ieee754_acos
	.type	__ieee754_acos,@function
__ieee754_acos:                         //  @__ieee754_acos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x14 ,  x15 ,  20&31
	sltiu x14 ,  x14 ,  1023
	bltu x0, x14, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x30 ,  -1072693248&4095
	lui x14 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	or x15 ,  x9 ,  x15
	beq x0, x15, .LBB0_2
.LBB0_4:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.end12
	srli x14 ,  x15 ,  21&31
	addi x13 ,  x0 ,  510
	bltu x13, x14, .LBB0_8
.LBB0_6:                                //  %if.then14
	lui x30 ,  1073291771&4095
	lui x22 ,  (1073291771>>12)&1048575
	lui x23 ,  (1413754136>>12)&1048575
	lui x14 ,  (1012924417>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	lui x30 ,  1413754136&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x23 ,  x30
	lui x30 ,  1012924417&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_12
.LBB0_7:                                //  %if.end17
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
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	lui x30 ,  1413754136&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x23 ,  x30
	lui x30 ,  1073291771&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	jal x0, .LBB0_11
.LBB0_8:                                //  %if.else41
	add x18 ,  x0 ,  x0
	lui x19 ,  (1072693248>>12)&1048575
	blt x8, x0, .LBB0_9
.LBB0_10:                               //  %if.else71
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  234747657&4095
	lui x15 ,  (234747657>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  -1322347902&4095
	lui x15 ,  (-1322347902>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __ieee754_sqrt
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x22
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __adddf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x22
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
.LBB0_11:                               //  %cleanup110
	call __adddf3
	jal x0, .LBB0_12
.LBB0_2:                                //  %if.then7
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	add x11 ,  x0 ,  x0
	lui x14 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x11
	or x15 ,  x15 ,  x30
	lui x30 ,  1413754136&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x11, x8, .LBB0_12
.LBB0_3:                                //  %if.then7
	add x10 ,  x0 ,  x14
	add x11 ,  x0 ,  x15
	jal x0, .LBB0_12
.LBB0_9:                                //  %if.then43
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  234747657&4095
	lui x15 ,  (234747657>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  -1322347902&4095
	lui x15 ,  (-1322347902>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __ieee754_sqrt
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  856972295&4095
	lui x15 ,  (856972295>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1131305434&4095
	lui x15 ,  (-1131305434>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
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
	call __subdf3
.LBB0_12:                               //  %cleanup110
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_acos, .Lfunc_end0-__ieee754_acos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
