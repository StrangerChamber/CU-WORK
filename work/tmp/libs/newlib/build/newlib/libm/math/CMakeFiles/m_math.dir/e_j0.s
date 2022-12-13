	.text
	.file	"e_j0.c"
	.globl	__ieee754_j0            //  -- Begin function __ieee754_j0
	.type	__ieee754_j0,@function
__ieee754_j0:                           //  @__ieee754_j0
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x26 ,  x15 ,  x11
	srli x24 ,  x26 ,  20&31
	sltiu x15 ,  x24 ,  2047
	bltu x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	jal x0, .LBB0_20
.LBB0_2:                                //  %if.end
	call fabs
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	srli x15 ,  x26 ,  30&31
	beq x0, x15, .LBB0_6
.LBB0_3:                                //  %if.then2
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __subdf3
	add x18 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x15 ,  x26 ,  21&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB0_14
.LBB0_4:                                //  %if.then6
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __ltdf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __adddf3
	call cos
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	bge x22, x0, .LBB0_12
.LBB0_5:                                //  %if.then12
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x21
	call __divdf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	jal x0, .LBB0_13
.LBB0_6:                                //  %if.end32
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
	srli x15 ,  x26 ,  21&31
	addi x14 ,  x0 ,  504
	bltu x14, x15, .LBB0_10
.LBB0_7:                                //  %if.end32
	add x18 ,  x0 ,  x0
	lui x19 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __gtdf2
	bge x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then37
	srli x15 ,  x26 ,  22&31
	sltiu x15 ,  x15 ,  249
	bltu x0, x15, .LBB0_22
.LBB0_9:                                //  %if.else40
	lui x30 ,  -1076887552&4095
	add x18 ,  x0 ,  x0
	lui x15 ,  (-1076887552>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x18
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	jal x0, .LBB0_16
.LBB0_10:                               //  %if.end45
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  1943420878&4095
	lui x15 ,  (1943420878>>12)&1048575
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1103899161&4095
	lui x15 ,  (-1103899161>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  206584089&4095
	lui x15 ,  (206584089>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1052684753&4095
	lui x15 ,  (1052684753>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -1239759127&4095
	lui x15 ,  (-1239759127>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1087838555&4095
	lui x15 ,  (-1087838555>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  1066401791&4095
	lui x15 ,  (1066401791>>12)&1048575
	addi x12 ,  x0 ,  -3
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -193700465&4095
	lui x15 ,  (-193700465>>12)&1048575
	add x21 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1041500348&4095
	lui x15 ,  (1041500348>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -830155351&4095
	lui x15 ,  (-830155351>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1050753876&4095
	lui x15 ,  (1050753876>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -581444620&4095
	lui x15 ,  (-581444620>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058973394&4095
	lui x15 ,  (1058973394>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x30 ,  -2100772188&4095
	lui x15 ,  (-2100772188>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066401000&4095
	lui x15 ,  (1066401000>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __adddf3
	add x23 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	addi x15 ,  x0 ,  1022
	bltu x15, x24, .LBB0_15
.LBB0_11:                               //  %if.then63
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	call __divdf3
	lui x30 ,  -1076887552&4095
	add x8 ,  x0 ,  x0
	lui x15 ,  (-1076887552>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x8
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x8
	jal x0, .LBB0_16
.LBB0_12:                               //  %if.else
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	call __divdf3
	add x18 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
.LBB0_13:                               //  %if.end16
	lui x30 ,  1207959553&4095
	lui x15 ,  (1207959553>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x26, x15, .LBB0_17
.LBB0_14:                               //  %if.then18
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.else68
	add x24 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x24
	call __muldf3
	lui x25 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x24
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x13 ,  x0 ,  x25
	call __adddf3
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __muldf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
.LBB0_16:                               //  %cleanup
	call __adddf3
	jal x0, .LBB0_21
.LBB0_17:                               //  %if.else22
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call pzero
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call qzero
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subdf3
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
.LBB0_18:                               //  %cleanup
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
	add x11 ,  x0 ,  x8
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
.LBB0_20:                               //  %cleanup
	call __divdf3
.LBB0_21:                               //  %cleanup
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB0_22:                               //  %cleanup
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
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
.Lfunc_end0:
	.size	__ieee754_j0, .Lfunc_end0-__ieee754_j0
	.cfi_endproc
                                        //  -- End function
	.type	pzero,@function         //  -- Begin function pzero
pzero:                                  //  @pzero
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	addi x13 ,  x0 ,  1050
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	srli x14 ,  x15 ,  20&31
	bgeu x13, x14, .LBB1_2
.LBB1_1:
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x0
	ret
.LBB1_2:                                //  %if.else
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  pR8&4095
	lui x14 ,  (pR8>>12)&1048575
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	addi x13 ,  x0 ,  512
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	srli x30 ,  x30 ,  12&31
	or x20 ,  x14 ,  x30
	lui x30 ,  pS8&4095
	lui x14 ,  (pS8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	srli x14 ,  x15 ,  21&31
	bltu x13, x14, .LBB1_6
.LBB1_3:                                //  %if.else3
	lui x30 ,  pR5&4095
	lui x14 ,  (pR5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x14 ,  x30
	lui x30 ,  pS5&4095
	lui x14 ,  (pS5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  1074933386&4095
	lui x14 ,  (1074933386>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_6
.LBB1_4:                                //  %if.else6
	lui x30 ,  pR2&4095
	lui x14 ,  (pR2>>12)&1048575
	lui x13 ,  (pR3>>12)&1048575
	lui x5 ,  (pS3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  pR3&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x13 ,  x30
	lui x30 ,  1074191212&4095
	lui x13 ,  (1074191212>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  pS2&4095
	lui x13 ,  (pS2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  pS3&4095
	srli x30 ,  x30 ,  12&31
	or x22 ,  x5 ,  x30
	bltu x12, x15, .LBB1_6
.LBB1_5:                                //  %if.else6
	add x22 ,  x0 ,  x13
	add x20 ,  x0 ,  x14
.LBB1_6:                                //  %if.end12
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	add x8 ,  x0 ,  x0
	lui x9 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __divdf3
	lw x12 ,  40 ( x20 )
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	lw x13 ,  44 ( x20 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  32 ( x20 )
	lw x11 ,  36 ( x20 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  24 ( x20 )
	lw x11 ,  28 ( x20 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  16 ( x20 )
	lw x11 ,  20 ( x20 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  8 ( x20 )
	lw x11 ,  12 ( x20 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  0 ( x20 )
	lw x11 ,  4 ( x20 )
	call __adddf3
	lw x12 ,  32 ( x22 )
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	lw x13 ,  36 ( x22 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  24 ( x22 )
	lw x11 ,  28 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  16 ( x22 )
	lw x11 ,  20 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  8 ( x22 )
	lw x11 ,  12 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  0 ( x22 )
	lw x11 ,  4 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	pzero, .Lfunc_end1-pzero
	.cfi_endproc
                                        //  -- End function
	.type	qzero,@function         //  -- Begin function qzero
qzero:                                  //  @qzero
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  -1077936128&4095
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	lui x24 ,  (-1077936128>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x11
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	addi x13 ,  x0 ,  1050
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
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	srli x30 ,  x30 ,  12&31
	or x11 ,  x24 ,  x30
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x14 ,  x15 ,  20&31
	bgeu x13, x14, .LBB2_2
.LBB2_1:
	add x10 ,  x0 ,  x0
	jal x0, .LBB2_7
.LBB2_2:                                //  %if.else
	lui x30 ,  qR8&4095
	lui x14 ,  (qR8>>12)&1048575
	addi x13 ,  x0 ,  512
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  qS8&4095
	lui x14 ,  (qS8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x14 ,  x30
	srli x14 ,  x15 ,  21&31
	bltu x13, x14, .LBB2_6
.LBB2_3:                                //  %if.else3
	lui x30 ,  qR5&4095
	lui x14 ,  (qR5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  qS5&4095
	lui x14 ,  (qS5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x25 ,  x14 ,  x30
	lui x30 ,  1074933386&4095
	lui x14 ,  (1074933386>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB2_6
.LBB2_4:                                //  %if.else6
	lui x30 ,  qR2&4095
	lui x14 ,  (qR2>>12)&1048575
	lui x13 ,  (qR3>>12)&1048575
	lui x11 ,  (qS3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  qR3&4095
	srli x30 ,  x30 ,  12&31
	or x22 ,  x13 ,  x30
	lui x30 ,  1074191212&4095
	lui x13 ,  (1074191212>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  qS2&4095
	lui x13 ,  (qS2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  qS3&4095
	srli x30 ,  x30 ,  12&31
	or x25 ,  x11 ,  x30
	bltu x12, x15, .LBB2_6
.LBB2_5:                                //  %if.else6
	add x25 ,  x0 ,  x13
	add x22 ,  x0 ,  x14
.LBB2_6:                                //  %if.end12
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	add x18 ,  x0 ,  x0
	lui x19 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __divdf3
	lw x12 ,  40 ( x22 )
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	lw x13 ,  44 ( x22 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  32 ( x22 )
	lw x11 ,  36 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  24 ( x22 )
	lw x11 ,  28 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  16 ( x22 )
	lw x11 ,  20 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  8 ( x22 )
	lw x11 ,  12 ( x22 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  0 ( x22 )
	lw x11 ,  4 ( x22 )
	call __adddf3
	lw x12 ,  40 ( x25 )
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	lw x13 ,  44 ( x25 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  32 ( x25 )
	lw x11 ,  36 ( x25 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  24 ( x25 )
	lw x11 ,  28 ( x25 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  16 ( x25 )
	lw x11 ,  20 ( x25 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  8 ( x25 )
	lw x11 ,  12 ( x25 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  0 ( x25 )
	lw x11 ,  4 ( x25 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __divdf3
	lui x30 ,  -1077936128&4095
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x13 ,  x24 ,  x30
	call __adddf3
.LBB2_7:                                //  %cleanup
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
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
.Lfunc_end2:
	.size	qzero, .Lfunc_end2-qzero
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y0            //  -- Begin function __ieee754_y0
	.type	__ieee754_y0,@function
__ieee754_y0:                           //  @__ieee754_y0
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
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB3_2
.LBB3_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
.LBB3_19:                               //  %cleanup
	call __divdf3
	jal x0, .LBB3_20
.LBB3_2:                                //  %if.end
	lui x30 ,  -1048576&4095
	lui x14 ,  (-1048576>>12)&1048575
	or x15 ,  x9 ,  x26
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	beq x0, x15, .LBB3_20
.LBB3_3:                                //  %if.end4
	blt x8, x0, .LBB3_8
.LBB3_4:                                //  %if.end7
	srli x15 ,  x26 ,  30&31
	beq x0, x15, .LBB3_9
.LBB3_5:                                //  %if.then9
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call sin
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call cos
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __subdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x15 ,  x26 ,  21&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB3_15
.LBB3_6:                                //  %if.then13
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __ltdf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __adddf3
	call cos
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	bge x22, x0, .LBB3_13
.LBB3_7:                                //  %if.then19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __divdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	jal x0, .LBB3_14
.LBB3_8:
	lui x11 ,  (2146959360>>12)&1048575
	jal x0, .LBB3_20
.LBB3_9:                                //  %if.end39
	lui x15 ,  (1044381696>>12)&1048575
	bltu x15, x26, .LBB3_11
.LBB3_10:                               //  %if.then41
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_log
	lui x30 ,  1841940611&4095
	lui x15 ,  (1841940611>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071931184&4095
	lui x15 ,  (1071931184>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1714696161&4095
	lui x15 ,  (-1714696161>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078795050&4095
	lui x15 ,  (-1078795050>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, .LBB3_12
.LBB3_11:                               //  %if.end45
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  1765782472&4095
	lui x15 ,  (1765782472>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1111104451&4095
	lui x15 ,  (-1111104451>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  995011540&4095
	lui x15 ,  (995011540>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1045758039&4095
	lui x15 ,  (1045758039>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1943166125&4095
	lui x15 ,  (1943166125>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1093665113&4095
	lui x15 ,  (-1093665113>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  548576107&4095
	lui x15 ,  (548576107>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1060554061&4095
	lui x15 ,  (1060554061>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1318258025&4095
	lui x15 ,  (-1318258025>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1081324312&4095
	lui x15 ,  (-1081324312>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1645616132&4095
	lui x15 ,  (-1645616132>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069980929&4095
	lui x15 ,  (1069980929>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1714696161&4095
	lui x15 ,  (-1714696161>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078795050&4095
	lui x15 ,  (-1078795050>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  1003936239&4095
	lui x15 ,  (1003936239>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1040076824&4095
	lui x15 ,  (1040076824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  2146566909&4095
	lui x15 ,  (2146566909>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1049715757&4095
	lui x15 ,  (1049715757>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -176634175&4095
	lui x15 ,  (-176634175>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1058270395&4095
	lui x15 ,  (1058270395>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1849047270&4095
	lui x15 ,  (-1849047270>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066013296&4095
	lui x15 ,  (1066013296>>12)&1048575
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
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_j0
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_log
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  1841940611&4095
	lui x15 ,  (1841940611>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071931184&4095
	lui x15 ,  (1071931184>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
.LBB3_12:                               //  %cleanup
	call __adddf3
.LBB3_20:                               //  %cleanup
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
.LBB3_13:                               //  %if.else
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB3_14:                               //  %if.end23
	lui x30 ,  1207959553&4095
	lui x15 ,  (1207959553>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x26, x15, .LBB3_16
.LBB3_15:                               //  %if.then25
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB3_17
.LBB3_16:                               //  %if.else29
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call pzero
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call qzero
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
.LBB3_17:                               //  %cleanup
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
	add x11 ,  x0 ,  x8
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB3_19
.Lfunc_end3:
	.size	__ieee754_y0, .Lfunc_end3-__ieee754_y0
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pR8,@object             //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	3
pR8:
	.quad	0                       //  double 0
	.quad	-4633641066610819790    //  double -0.070312499999990036
	.quad	-4602632842817591431    //  double -8.081670412753498
	.quad	-4580142118682892189    //  double -257.06310567970485
	.quad	-4565688573100176644    //  double -2485.2164100942882
	.quad	-4560874239408970691    //  double -5253.0438049072955
	.size	pR8, 48

	.address_space	0
	.type	pS8,@object             //  @pS8
	.p2align	3
pS8:
	.quad	4637900793828697937     //  double 116.53436461966818
	.quad	4660648908942829880     //  double 3833.7447536412183
	.quad	4675812540598890591     //  double 40597.857264847255
	.quad	4682759616392571325     //  double 116752.97256437592
	.quad	4676778718732765660     //  double 47627.728414673096
	.size	pS8, 40

	.address_space	0
	.type	pR5,@object             //  @pR5
	.p2align	3
pR5:
	.quad	-4780262379782629940    //  double -1.141254646918945E-11
	.quad	-4633641067036869690    //  double -0.070312494087359928
	.quad	-4607002713190011969    //  double -4.1596106447058778
	.quad	-4588909431676397693    //  double -67.674765226516726
	.quad	-4578837338016002973    //  double -331.23129964917297
	.quad	-4578569900043039785    //  double -346.43338836560491
	.size	pR5, 48

	.address_space	0
	.type	pS5,@object             //  @pS5
	.p2align	3
pS5:
	.quad	4633747173989205470     //  double 60.753938269230034
	.quad	4652338271982856292     //  double 1051.2523059570458
	.quad	4663295962775428448     //  double 5978.9709433385578
	.quad	4666517258757405240     //  double 9625.4451435777446
	.quad	4657509392920078436     //  double 2406.0581592293911
	.size	pS5, 40

	.address_space	0
	.type	pR3,@object             //  @pR3
	.p2align	3
pR3:
	.quad	-4745139227486737786    //  double -2.5470460177195192E-9
	.quad	-4633641105403878837    //  double -0.070311961638148165
	.quad	-4610764959760744332    //  double -2.4090322154952961
	.quad	-4596495946174869996    //  double -21.965977473488309
	.quad	-4590001302967543227    //  double -58.079170470173757
	.quad	-4593827009006479345    //  double -31.44794705948885
	.size	pR3, 48

	.address_space	0
	.type	pS3,@object             //  @pS3
	.p2align	3
pS3:
	.quad	4630243105449672147     //  double 35.856033805520973
	.quad	4645067437439089678     //  double 361.51398305030386
	.quad	4652964358233547222     //  double 1193.6078379211153
	.quad	4652675797830835070     //  double 1127.9967985690741
	.quad	4640311352621502593     //  double 173.58093081333575
	.size	pS3, 40

	.address_space	0
	.type	pR2,@object             //  @pR2
	.p2align	3
pR2:
	.quad	-4722073588920286611    //  double -8.8753433303252641E-8
	.quad	-4633641743984746942    //  double -0.070303099548362474
	.quad	-4614159672459089853    //  double -1.4507384678095299
	.quad	-4603088988856670221    //  double -7.6356961382352777
	.quad	-4600881226022886653    //  double -11.193166886035675
	.quad	-4608908095059400945    //  double -3.2336457935133534
	.size	pR2, 48

	.address_space	0
	.type	pS2,@object             //  @pS2
	.p2align	3
pS2:
	.quad	4626947676037667161     //  double 22.220299753208881
	.quad	4638996367093041039     //  double 136.20679421821521
	.quad	4643465779653248923     //  double 270.47027865808349
	.quad	4639618025689381631     //  double 153.87539420832033
	.quad	4624441123253327881     //  double 14.657617694825619
	.size	pS2, 40

	.address_space	0
	.type	qR8,@object             //  @qR8
	.p2align	3
qR8:
	.quad	0                       //  double 0
	.quad	4589942076476489260     //  double 0.073242187499993505
	.quad	4622814529337898198     //  double 11.768206468225269
	.quad	4648116562747725861     //  double 557.67338025640186
	.quad	4666096009499702381     //  double 8859.1972075646863
	.quad	4675320065150686566     //  double 37014.626777688783
	.size	qR8, 48

	.address_space	0
	.type	qS8,@object             //  @qS8
	.p2align	3
qS8:
	.quad	4639966373233768892     //  double 163.77602689568982
	.quad	4665626239135581539     //  double 8098.3449465644981
	.quad	4684137591238528063     //  double 142538.29141912048
	.quad	4695147586068491075     //  double 803309.2571195144
	.quad	4695467065687804733     //  double 840501.57981906051
	.quad	-4533720279514009403    //  double -343899.29353786662
	.size	qS8, 48

	.address_space	0
	.type	qR5,@object             //  @qR5
	.p2align	3
qR5:
	.quad	4446246417212411097     //  double 1.8408596359451553E-11
	.quad	4589942075695476812     //  double 0.073242176661268477
	.quad	4618256359431159251     //  double 5.8356350896205695
	.quad	4638957832572995817     //  double 135.11157728644983
	.quad	4652232681307292801     //  double 1027.243765961641
	.quad	4656466830624744358     //  double 1989.9778586460538
	.size	qR5, 48

	.address_space	0
	.type	qS5,@object             //  @qS5
	.p2align	3
qS5:
	.quad	4635525303045592387     //  double 82.776610223653776
	.quad	4656787576741544142     //  double 2077.8141642139299
	.quad	4670909917246856813     //  double 18847.288778571809
	.quad	4678032627064644466     //  double 56751.112289494733
	.quad	4675177420980638880     //  double 35976.753842511447
	.quad	-4560762860034341367    //  double -5354.3427560194477
	.size	qS5, 48

	.address_space	0
	.type	qR3,@object             //  @qR3
	.p2align	3
qR3:
	.quad	4481869993748646786     //  double 4.3774101408973862E-9
	.quad	4589941999411202114     //  double 0.073241118004291145
	.quad	4614712958387526901     //  double 3.3442313751617072
	.quad	4631195308593622749     //  double 42.621844074541265
	.quad	4640213792005750047     //  double 170.8080913405656
	.quad	4640070445855023584     //  double 166.73394869665117
	.size	qR3, 48

	.address_space	0
	.type	qS3,@object             //  @qS3
	.p2align	3
qS3:
	.quad	4632059018626679718     //  double 48.758872972458718
	.quad	4649453708224253619     //  double 709.68922105660602
	.quad	4660363923165150307     //  double 3704.1482262011136
	.quad	4663825327293164072     //  double 6460.4251675256892
	.quad	4657751891375010240     //  double 2516.3336892036896
	.quad	-4583916842411822065    //  double -149.24745183615639
	.size	qS3, 48

	.address_space	0
	.type	qR2,@object             //  @qR2
	.p2align	3
qR2:
	.quad	4504779658175671259     //  double 1.5044444488698327E-7
	.quad	4589940724610907700     //  double 0.073223426596307928
	.quad	4611677874752550812     //  double 1.99819174093816
	.quad	4624349917051711461     //  double 14.495602934788574
	.quad	4629606469526608970     //  double 31.666231750478154
	.quad	4625267948167187380     //  double 16.252707571092927
	.size	qR2, 48

	.address_space	0
	.type	qS2,@object             //  @qS2
	.p2align	3
qS2:
	.quad	4629240369966512877     //  double 30.365584835521918
	.quad	4643446038404877120     //  double 269.34811860804984
	.quad	4650642012334440226     //  double 844.78375759532014
	.quad	4650977601645232660     //  double 882.93584511248855
	.quad	4641686549908427621     //  double 212.66638851179883
	.quad	-4605706414756517583    //  double -5.3109549388266695
	.size	qS2, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
