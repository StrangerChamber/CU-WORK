	.text
	.file	"k_tan.c"
	.globl	__kernel_tan            //  -- Begin function __kernel_tan
	.type	__kernel_tan,@function
__kernel_tan:                           //  @__kernel_tan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x21 ,  x0 ,  x14
	add x19 ,  x0 ,  x13
	add x20 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __fixdfsi
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x18 ,  x15 ,  x9
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %entry
	srli x15 ,  x18 ,  20&31
	addi x14 ,  x0 ,  994
	bltu x14, x15, .LBB0_7
.LBB0_2:                                //  %if.then3
	addi x15 ,  x21 ,  1
	or x15 ,  x8 ,  x15
	or x15 ,  x18 ,  x15
	beq x0, x15, .LBB0_3
.LBB0_4:                                //  %if.else
	xori x15 ,  x21 ,  1
	bltu x0, x15, .LBB0_6
.LBB0_5:
	add x21 ,  x0 ,  x8
	add x19 ,  x0 ,  x9
	jal x0, .LBB0_21
.LBB0_7:                                //  %if.end40
	lui x30 ,  1072010280&4095
	lui x15 ,  (1072010280>>12)&1048575
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_8
.LBB0_9:                                //  %if.then43
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x21 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	blt x9, x21, .LBB0_10
.LBB0_11:                               //  %if.then43
	add x13 ,  x0 ,  x9
	jal x0, .LBB0_12
.LBB0_8:
	add x21 ,  x0 ,  x20
	add x20 ,  x0 ,  x9
	jal x0, .LBB0_15
.LBB0_3:                                //  %if.then12
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call fabs
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	call __divdf3
	jal x0, .LBB0_20
.LBB0_6:                                //  %if.else16
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  -1074790400&4095
	add x22 ,  x0 ,  x11
	add x18 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x18
	add x13 ,  x0 ,  x22
	or x11 ,  x15 ,  x30
	call __divdf3
	add x21 ,  x0 ,  x11
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x21
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	call __adddf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x18
	jal x0, .LBB0_19
.LBB0_10:
	xor x13 ,  x23 ,  x9
.LBB0_12:                               //  %if.then43
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x12 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1072243195&4095
	lui x15 ,  (1072243195>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	add x8 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	bge x9, x21, .LBB0_14
.LBB0_13:
	xor x19 ,  x23 ,  x19
.LBB0_14:                               //  %if.then43
	lui x30 ,  856972295&4095
	lui x15 ,  (856972295>>12)&1048575
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1015129638&4095
	lui x15 ,  (1015129638>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x22
	call __adddf3
	add x8 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x19 ,  x0 ,  x21
.LBB0_15:                               //  %if.end53
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	call __muldf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	lui x30 ,  -614444173&4095
	lui x15 ,  (-614444173>>12)&1048575
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1091340853&4095
	lui x15 ,  (-1091340853>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1606970714&4095
	lui x15 ,  (-1606970714>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058307720&4095
	lui x15 ,  (1058307720>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -218995455&4095
	lui x15 ,  (-218995455>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1061373144&4095
	lui x15 ,  (1061373144>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -917109976&4095
	lui x15 ,  (-917109976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1064135970&4095
	lui x15 ,  (1064135970>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -2079926729&4095
	lui x15 ,  (-2079926729>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066820852&4095
	lui x15 ,  (1066820852>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  286326394&4095
	lui x15 ,  (286326394>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069617425&4095
	lui x15 ,  (1069617425>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1958705876&4095
	lui x15 ,  (1958705876>>12)&1048575
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1056647792&4095
	lui x15 ,  (1056647792>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  854632425&4095
	lui x15 ,  (854632425>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058191375&4095
	lui x15 ,  (1058191375>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  445452392&4095
	lui x15 ,  (445452392>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1060120311&4095
	lui x15 ,  (1060120311>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -18840811&4095
	lui x15 ,  (-18840811>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1062722504&4095
	lui x15 ,  (1062722504>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  -378633069&4095
	lui x15 ,  (-378633069>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1065494243&4095
	lui x15 ,  (1065494243>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  464732670&4095
	lui x15 ,  (464732670>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068212666&4095
	lui x15 ,  (1068212666>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __adddf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  1431655779&4095
	lui x15 ,  (1431655779>>12)&1048575
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070945621&4095
	lui x15 ,  (1070945621>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __adddf3
	add x23 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	call __adddf3
	lui x30 ,  1072010280&4095
	lui x15 ,  (1072010280>>12)&1048575
	add x21 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_17
.LBB0_16:                               //  %if.then88
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
	call __floatsidf
	srli x15 ,  x9 ,  30&31
	slti x14 ,  x0 ,  1
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	andi x15 ,  x15 ,  2
	sub x10 ,  x14 ,  x15
	call __floatsidf
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x13 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	call __muldf3
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __divdf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __subdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __muldf3
	jal x0, .LBB0_20
.LBB0_17:                               //  %if.end101
	lw x15 ,  8 ( x2 )              //  4-byte Folded Reload
	xori x15 ,  x15 ,  1
	beq x0, x15, .LBB0_21
.LBB0_18:                               //  %if.else105
	add x9 ,  x0 ,  x0
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x20
	add x10 ,  x0 ,  x9
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x22
	call __subdf3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x8 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	add x21 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	call __muldf3
	add x8 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x21
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x9
.LBB0_19:                               //  %cleanup135
	add x13 ,  x0 ,  x21
	call __adddf3
.LBB0_20:                               //  %cleanup135
	add x21 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_21:                               //  %cleanup135
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
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
.Lfunc_end0:
	.size	__kernel_tan, .Lfunc_end0-__kernel_tan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
