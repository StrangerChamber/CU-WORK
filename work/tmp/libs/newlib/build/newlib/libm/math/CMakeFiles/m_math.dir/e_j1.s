	.text
	.file	"e_j1.c"
	.globl	__ieee754_j1            //  -- Begin function __ieee754_j1
	.type	__ieee754_j1,@function
__ieee754_j1:                           //  @__ieee754_j1
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x27 ,  x15 ,  x8
	srli x15 ,  x27 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	jal x0, .LBB0_11
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x15 ,  x27 ,  30&31
	beq x0, x15, .LBB0_12
.LBB0_3:                                //  %if.then2
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call sin
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call cos
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x24
	call __subdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __subdf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x15 ,  x27 ,  21&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB0_9
.LBB0_4:                                //  %if.then8
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __gtdf2
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call __adddf3
	call cos
	bge x0, x23, .LBB0_6
.LBB0_5:                                //  %if.then11
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __divdf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	lui x15 ,  (1207959552>>12)&1048575
	bgeu x15, x27, .LBB0_8
	jal x0, .LBB0_9
.LBB0_12:                               //  %if.end35
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
	bge x0, x10, .LBB0_15
.LBB0_13:                               //  %if.end35
	srli x15 ,  x27 ,  22&31
	addi x14 ,  x0 ,  248
	bltu x14, x15, .LBB0_15
.LBB0_14:                               //  %if.then40
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	jal x0, .LBB0_11
.LBB0_15:                               //  %if.end43
	add x20 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call __muldf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  1187646425&4095
	lui x15 ,  (1187646425>>12)&1048575
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1047177978&4095
	lui x15 ,  (1047177978>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1172924824&4095
	lui x15 ,  (-1172924824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1091516986&4095
	lui x15 ,  (-1091516986>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1740166047&4095
	lui x15 ,  (-1740166047>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1062669727&4095
	lui x15 ,  (1062669727>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1078984704&4095
	lui x15 ,  (-1078984704>>12)&1048575
	add x12 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -809926952&4095
	lui x15 ,  (-809926952>>12)&1048575
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1034627791&4095
	lui x15 ,  (1034627791>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -914489556&4095
	lui x15 ,  (-914489556>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1043704968&4095
	lui x15 ,  (1043704968>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  859800728&4095
	lui x15 ,  (859800728>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1051967480&4095
	lui x15 ,  (1051967480>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  -1177684380&4095
	lui x15 ,  (-1177684380>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1059610454&4095
	lui x15 ,  (1059610454>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x30 ,  308510291&4095
	lui x15 ,  (308510291>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066638603&4095
	lui x15 ,  (1066638603>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x20
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __divdf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	lui x15 ,  (1207959552>>12)&1048575
	bltu x15, x27, .LBB0_9
.LBB0_8:                                //  %if.else21
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call pone
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call qone
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __muldf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __subdf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
.LBB0_9:                                //  %if.end30
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071779287&4095
	lui x15 ,  (1071779287>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __ieee754_sqrt
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __divdf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x8, x14, .LBB0_11
.LBB0_10:
	xor x11 ,  x15 ,  x11
.LBB0_11:                               //  %if.end30
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
	.size	__ieee754_j1, .Lfunc_end0-__ieee754_j1
	.cfi_endproc
                                        //  -- End function
	.type	pone,@function          //  -- Begin function pone
pone:                                   //  @pone
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
	lui x30 ,  pr8&4095
	lui x14 ,  (pr8>>12)&1048575
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
	lui x30 ,  ps8&4095
	lui x14 ,  (ps8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	srli x14 ,  x15 ,  21&31
	bltu x13, x14, .LBB1_6
.LBB1_3:                                //  %if.else3
	lui x30 ,  pr5&4095
	lui x14 ,  (pr5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x14 ,  x30
	lui x30 ,  ps5&4095
	lui x14 ,  (ps5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  1074933386&4095
	lui x14 ,  (1074933386>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_6
.LBB1_4:                                //  %if.else6
	lui x30 ,  pr2&4095
	lui x14 ,  (pr2>>12)&1048575
	lui x13 ,  (pr3>>12)&1048575
	lui x5 ,  (ps3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  pr3&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x13 ,  x30
	lui x30 ,  1074191212&4095
	lui x13 ,  (1074191212>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  ps2&4095
	lui x13 ,  (ps2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  ps3&4095
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
	.size	pone, .Lfunc_end1-pone
	.cfi_endproc
                                        //  -- End function
	.type	qone,@function          //  -- Begin function qone
qone:                                   //  @qone
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x11
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	addi x13 ,  x0 ,  1050
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
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x14 ,  x15 ,  20&31
	bgeu x13, x14, .LBB2_2
.LBB2_1:
	lui x11 ,  (1071120384>>12)&1048575
	add x10 ,  x0 ,  x0
	jal x0, .LBB2_7
.LBB2_2:                                //  %if.else
	lui x30 ,  qr8&4095
	lui x14 ,  (qr8>>12)&1048575
	addi x13 ,  x0 ,  512
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  qs8&4095
	lui x14 ,  (qs8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x24 ,  x14 ,  x30
	srli x14 ,  x15 ,  21&31
	bltu x13, x14, .LBB2_6
.LBB2_3:                                //  %if.else3
	lui x30 ,  qr5&4095
	lui x14 ,  (qr5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	lui x30 ,  qs5&4095
	lui x14 ,  (qs5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x24 ,  x14 ,  x30
	lui x30 ,  1074933386&4095
	lui x14 ,  (1074933386>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB2_6
.LBB2_4:                                //  %if.else6
	lui x30 ,  qr2&4095
	lui x14 ,  (qr2>>12)&1048575
	lui x13 ,  (qr3>>12)&1048575
	lui x11 ,  (qs3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  qr3&4095
	srli x30 ,  x30 ,  12&31
	or x22 ,  x13 ,  x30
	lui x30 ,  1074191212&4095
	lui x13 ,  (1074191212>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  qs2&4095
	lui x13 ,  (qs2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  qs3&4095
	srli x30 ,  x30 ,  12&31
	or x24 ,  x11 ,  x30
	bltu x12, x15, .LBB2_6
.LBB2_5:                                //  %if.else6
	add x24 ,  x0 ,  x13
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
	lw x12 ,  40 ( x24 )
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	lw x13 ,  44 ( x24 )
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  32 ( x24 )
	lw x11 ,  36 ( x24 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  24 ( x24 )
	lw x11 ,  28 ( x24 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  16 ( x24 )
	lw x11 ,  20 ( x24 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  8 ( x24 )
	lw x11 ,  12 ( x24 )
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	lw x10 ,  0 ( x24 )
	lw x11 ,  4 ( x24 )
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
	lui x13 ,  (1071120384>>12)&1048575
	add x12 ,  x0 ,  x18
	call __adddf3
.LBB2_7:                                //  %cleanup
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
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
.Lfunc_end2:
	.size	qone, .Lfunc_end2-qone
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y1            //  -- Begin function __ieee754_y1
	.type	__ieee754_y1,@function
__ieee754_y1:                           //  @__ieee754_y1
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
.LBB3_18:                               //  %cleanup
	call __divdf3
	jal x0, .LBB3_19
.LBB3_2:                                //  %if.end
	lui x30 ,  -1048576&4095
	lui x14 ,  (-1048576>>12)&1048575
	or x15 ,  x9 ,  x26
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	beq x0, x15, .LBB3_19
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
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x23
	call __subdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __subdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x15 ,  x26 ,  21&31
	addi x14 ,  x0 ,  1022
	bltu x14, x15, .LBB3_14
.LBB3_6:                                //  %if.then14
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __gtdf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __adddf3
	call cos
	bge x0, x22, .LBB3_12
.LBB3_7:                                //  %if.then19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __divdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	jal x0, .LBB3_13
.LBB3_8:
	lui x11 ,  (2146959360>>12)&1048575
	jal x0, .LBB3_19
.LBB3_9:                                //  %if.end39
	lui x15 ,  (1016070144>>12)&1048575
	bltu x15, x26, .LBB3_11
.LBB3_10:                               //  %if.then41
	lui x30 ,  1841940611&4095
	lui x15 ,  (1841940611>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  -1075552464&4095
	lui x15 ,  (-1075552464>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB3_18
.LBB3_11:                               //  %if.end43
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  1452344760&4095
	lui x15 ,  (1452344760>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1099387904&4095
	lui x15 ,  (-1099387904>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1884899186&4095
	lui x15 ,  (-1884899186>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1056484099&4095
	lui x15 ,  (1056484099>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1212478735&4095
	lui x15 ,  (1212478735>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084271131&4095
	lui x15 ,  (-1084271131>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1982409937&4095
	lui x15 ,  (1982409937>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068094407&4095
	lui x15 ,  (1068094407>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  339524746&4095
	lui x15 ,  (339524746>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1077340058&4095
	lui x15 ,  (-1077340058>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  -624265430&4095
	lui x15 ,  (-624265430>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1035096121&4095
	lui x15 ,  (1035096121>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1537645190&4095
	lui x15 ,  (1537645190>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1044037405&4095
	lui x15 ,  (1044037405>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -1991340890&4095
	lui x15 ,  (-1991340890>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1052164186&4095
	lui x15 ,  (1052164186>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1814394724&4095
	lui x15 ,  (1814394724>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1059753097&4095
	lui x15 ,  (1059753097>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  1062054384&4095
	lui x15 ,  (1062054384>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066689805&4095
	lui x15 ,  (1066689805>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __muldf3
	add x18 ,  x0 ,  x0
	lui x19 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_j1
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __ieee754_log
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __subdf3
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
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __adddf3
.LBB3_19:                               //  %cleanup
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
.LBB3_12:                               //  %if.else
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __divdf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
.LBB3_13:                               //  %if.end23
	lui x30 ,  1207959553&4095
	lui x15 ,  (1207959553>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x26, x15, .LBB3_15
.LBB3_14:                               //  %if.then25
	lui x30 ,  1346542445&4095
	lui x15 ,  (1346542445>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	jal x0, .LBB3_16
.LBB3_15:                               //  %if.else29
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call pone
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call qone
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
.LBB3_16:                               //  %cleanup
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
	jal x0, .LBB3_18
.Lfunc_end3:
	.size	__ieee754_y1, .Lfunc_end3-__ieee754_y1
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pr8,@object             //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	3
pr8:
	.quad	0                       //  double 0
	.quad	4593108669964483790     //  double 0.11718749999998865
	.quad	4623642783075237838     //  double 13.239480659307358
	.quad	4645956509072532880     //  double 412.05185430737856
	.quad	4660739070293783244     //  double 3874.7453891396053
	.quad	4665424076983468765     //  double 7914.4795403189173
	.size	pr8, 48

	.address_space	0
	.type	ps8,@object             //  @ps8
	.p2align	3
ps8:
	.quad	4637737046166039724     //  double 114.20737037567841
	.quad	4660246896882558799     //  double 3650.9308342085346
	.quad	4675312035863837567     //  double 36956.206026903346
	.quad	4681443626114291643     //  double 97602.79359349508
	.quad	4674196627785386797     //  double 30804.272062788881
	.size	ps8, 40

	.address_space	0
	.type	pr5,@object             //  @pr5
	.p2align	3
pr5:
	.quad	4444215450408176253     //  double 1.3199051955624352E-11
	.quad	4593108669473816643     //  double 0.1171874931906141
	.quad	4619345235458332131     //  double 6.8027512786843287
	.quad	4637321927758054125     //  double 108.30818299018911
	.quad	4647764391453972041     //  double 517.63613953319975
	.quad	4647861843912428727     //  double 528.71520136333754
	.size	pr5, 48

	.address_space	0
	.type	ps5,@object             //  @ps5
	.p2align	3
ps5:
	.quad	4633539819881849661     //  double 59.280598722113133
	.quad	4651931674920511233     //  double 991.40141873361438
	.quad	4662607993962411771     //  double 5353.2669529148798
	.quad	4665347342921480981     //  double 7844.6903174955123
	.quad	4654329683615112785     //  double 1504.0468881036106
	.size	ps5, 40

	.address_space	0
	.type	pr3,@object             //  @pr3
	.p2align	3
pr3:
	.quad	4479388525873962717     //  double 3.0250391613737362E-9
	.quad	4593108624248787323     //  double 0.11718686556725359
	.quad	4616038696802495882     //  double 3.9329775003331564
	.quad	4630139433958953257     //  double 35.119403559163693
	.quad	4636107843717306423     //  double 91.055011075078127
	.quad	4632030898649841381     //  double 48.559068519736492
	.size	pr3, 48

	.address_space	0
	.type	ps3,@object             //  @ps3
	.p2align	3
ps3:
	.quad	4630093258825139868     //  double 34.791309500125152
	.quad	4644632004018677599     //  double 336.76245874782575
	.quad	4652319004553631011     //  double 1046.8713997577513
	.quad	4651046875287138793     //  double 890.81134639825643
	.quad	4637003843403443539     //  double 103.78793243963928
	.size	ps3, 40

	.address_space	0
	.type	pr2,@object             //  @pr2
	.p2align	3
pr2:
	.quad	4502730828338775284     //  double 1.0771083010687374E-7
	.quad	4593107857116106115     //  double 0.11717621946268335
	.quad	4612515840360689344     //  double 2.3685149666760879
	.quad	4623081595299015012     //  double 12.242610914826123
	.quad	4625673627793067746     //  double 17.693971127168773
	.quad	4617398297642189310     //  double 5.073523125888185
	.size	pr2, 48

	.address_space	0
	.type	ps2,@object             //  @ps2
	.p2align	3
ps2:
	.quad	4626727052061830364     //  double 21.436485936382141
	.quad	4638516932880444629     //  double 125.29022716840275
	.quad	4642376518279027673     //  double 232.27646905716281
	.quad	4637981366650700969     //  double 117.6793732871471
	.quad	4620898491152880018     //  double 8.3646389337161828
	.size	ps2, 40

	.address_space	0
	.type	qr8,@object             //  @qr8
	.p2align	3
qr8:
	.quad	0                       //  double 0
	.quad	-4631318898052956685    //  double -0.10253906249999271
	.quad	-4598098727748011529    //  double -16.271753454458999
	.quad	-4573479293624732298    //  double -759.60172251395011
	.quad	-4555631922415897579    //  double -11849.806670242959
	.quad	-4546481884815647638    //  double -48438.512428575035
	.size	qr8, 48

	.address_space	0
	.type	qs8,@object             //  @qs8
	.p2align	3
qs8:
	.quad	4639882611305205221     //  double 161.39536970072291
	.quad	4665326117599085593     //  double 7825.3859992334847
	.quad	4683839934366703256     //  double 133875.33628724958
	.quad	4694429024867752985     //  double 719657.72368324094
	.quad	4693973273079819612     //  double 666601.23261777638
	.quad	-4534569120172758504    //  double -294490.26430383464
	.size	qs8, 48

	.address_space	0
	.type	qr5,@object             //  @qr5
	.p2align	3
qr5:
	.quad	-4776355188663279464    //  double -2.089799311417641E-11
	.quad	-4631318898936283153    //  double -0.10253905024137543
	.quad	-4602647041615352501    //  double -8.0564482812393603
	.quad	-4582705720479729232    //  double -183.66960747488838
	.quad	-4569617851380305073    //  double -1373.1937606550816
	.quad	-4565408795781650531    //  double -2612.4444045321566
	.size	qr5, 48

	.address_space	0
	.type	qs5,@object             //  @qs5
	.p2align	3
qs5:
	.quad	4635419745701204402     //  double 81.276550138433578
	.quad	4656474838921902137     //  double 1991.7987346048596
	.quad	4670530914603028009     //  double 17468.485192490891
	.quad	4677084341551681943     //  double 49851.427091035228
	.quad	4673411522359998027     //  double 27948.075163891812
	.quad	-4561461224969101308    //  double -4719.1835479512847
	.size	qs5, 48

	.address_space	0
	.type	qr3,@object             //  @qr3
	.p2align	3
qr3:
	.quad	-4740654704431740849    //  double -5.0783122646176656E-9
	.quad	-4631318986876850860    //  double -0.10253782982083709
	.quad	-4606495489464804865    //  double -4.610115811394734
	.quad	-4590033946861037862    //  double -57.847221656278364
	.quad	-4581137379441978017    //  double -228.2445407376317
	.quad	-4581455249564492810    //  double -219.21012847890933
	.size	qr3, 48

	.address_space	0
	.type	qs3,@object             //  @qs3
	.p2align	3
qs3:
	.quad	4631905091510822884     //  double 47.665155032372951
	.quad	4649138596034506302     //  double 673.86511267669971
	.quad	4659651449835125914     //  double 3380.1528667952634
	.quad	4662821807351223462     //  double 5547.7290972072278
	.quad	4656084822175047499     //  double 1903.119193388108
	.quad	-4584411051263905505    //  double -135.20119144430734
	.size	qs3, 48

	.address_space	0
	.type	qr2,@object             //  @qr2
	.p2align	3
qr2:
	.quad	-4717536937982417198    //  double -1.7838172751095887E-7
	.quad	-4631320484753395696    //  double -0.10251704260798555
	.quad	-4609992201811046694    //  double -2.7522056827818746
	.quad	-4597144003242585985    //  double -19.663616264370372
	.quad	-4592218461252334934    //  double -42.325313337283049
	.quad	-4596663158158954926    //  double -21.371921170370406
	.size	qr2, 48

	.address_space	0
	.type	qs2,@object             //  @qs2
	.p2align	3
qs2:
	.quad	4629006120318297343     //  double 29.533362906052385
	.quad	4643105013550423226     //  double 252.98154998219053
	.quad	4649874281219072247     //  double 757.50283486864544
	.quad	4649714987232968745     //  double 739.39320532046725
	.quad	4639690984324520148     //  double 155.94900333666612
	.quad	-4606102118978557845    //  double -4.9594989882262821
	.size	qs2, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
