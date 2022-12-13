	.text
	.file	"ef_j1.c"
	.globl	__ieee754_j1f           //  -- Begin function __ieee754_j1f
	.type	__ieee754_j1f,@function
__ieee754_j1f:                          //  @__ieee754_j1f
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
	add x8 ,  x0 ,  x10
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x23 ,  x15 ,  x8
	srli x15 ,  x23 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	call fabsf
	add x9 ,  x0 ,  x10
	srli x15 ,  x23 ,  30&31
	beq x0, x15, .LBB0_12
.LBB0_3:                                //  %if.then2
	add x10 ,  x0 ,  x9
	call sinf
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call cosf
	lui x30 ,  -2147483648&4095
	lui x22 ,  (-2147483648>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x21
	or x15 ,  x22 ,  x30
	xor x10 ,  x15 ,  x20
	call __subsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __subsf3
	add x18 ,  x0 ,  x10
	srli x15 ,  x23 ,  24&31
	addi x14 ,  x0 ,  126
	bltu x14, x15, .LBB0_9
.LBB0_4:                                //  %if.then8
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __gtsf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	call cosf
	bge x0, x20, .LBB0_6
.LBB0_5:                                //  %if.then11
	add x11 ,  x0 ,  x19
	call __divsf3
	add x18 ,  x0 ,  x10
	lui x15 ,  (1543503872>>12)&1048575
	bgeu x15, x23, .LBB0_8
	jal x0, .LBB0_9
.LBB0_1:                                //  %if.then
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x8
	call __divsf3
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.end35
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_13:                               //  %if.end35
	srli x15 ,  x23 ,  25&31
	addi x14 ,  x0 ,  24
	bltu x14, x15, .LBB0_15
.LBB0_14:                               //  %if.then40
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	jal x0, .LBB0_11
.LBB0_15:                               //  %if.end43
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  861231058&4095
	lui x15 ,  (861231058>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1215943114&4095
	lui x15 ,  (-1215943114>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  985165053&4095
	lui x15 ,  (985165053>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1115684864&4095
	lui x15 ,  (-1115684864>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  760829566&4095
	lui x15 ,  (760829566>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  833446982&4095
	lui x15 ,  (833446982>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  899547074&4095
	lui x15 ,  (899547074>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  960690870&4095
	lui x15 ,  (960690870>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1016916057&4095
	lui x15 ,  (1016916057>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x18 ,  x0 ,  x10
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else
	add x11 ,  x0 ,  x18
	call __divsf3
	add x19 ,  x0 ,  x10
	lui x15 ,  (1543503872>>12)&1048575
	bltu x15, x23, .LBB0_9
.LBB0_8:                                //  %if.else21
	add x10 ,  x0 ,  x9
	call ponef
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call qonef
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x18 ,  x0 ,  x10
.LBB0_9:                                //  %if.end30
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	lui x30 ,  -2147483648&4095
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bge x8, x14, .LBB0_11
.LBB0_10:
	xor x10 ,  x15 ,  x10
.LBB0_11:                               //  %if.end30
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
	.size	__ieee754_j1f, .Lfunc_end0-__ieee754_j1f
	.cfi_endproc
                                        //  -- End function
	.type	ponef,@function         //  -- Begin function ponef
ponef:                                  //  @ponef
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  pr8&4095
	lui x15 ,  (pr8>>12)&1048575
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	addi x13 ,  x0 ,  64
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	lui x30 ,  ps8&4095
	lui x15 ,  (ps8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x10
	srli x14 ,  x15 ,  24&31
	bltu x13, x14, .LBB1_4
.LBB1_1:                                //  %if.else
	lui x30 ,  pr5&4095
	lui x14 ,  (pr5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x14 ,  x30
	lui x30 ,  ps5&4095
	lui x14 ,  (ps5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	lui x30 ,  1089936471&4095
	lui x14 ,  (1089936471>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_4
.LBB1_2:                                //  %if.else3
	lui x30 ,  pr2&4095
	lui x14 ,  (pr2>>12)&1048575
	lui x13 ,  (pr3>>12)&1048575
	lui x11 ,  (ps3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  pr3&4095
	srli x30 ,  x30 ,  12&31
	or x18 ,  x13 ,  x30
	lui x30 ,  1077336935&4095
	lui x13 ,  (1077336935>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  ps2&4095
	lui x13 ,  (ps2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  ps3&4095
	srli x30 ,  x30 ,  12&31
	or x19 ,  x11 ,  x30
	bltu x12, x15, .LBB1_4
.LBB1_3:                                //  %if.else3
	add x19 ,  x0 ,  x13
	add x18 ,  x0 ,  x14
.LBB1_4:                                //  %if.end8
	add x11 ,  x0 ,  x10
	call __mulsf3
	lui x8 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __divsf3
	lw x11 ,  20 ( x18 )
	add x9 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  16 ( x18 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  12 ( x18 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  8 ( x18 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  4 ( x18 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  0 ( x18 )
	call __addsf3
	lw x11 ,  16 ( x19 )
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  12 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  8 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  4 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  0 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x8
	call __addsf3
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	ponef, .Lfunc_end1-ponef
	.cfi_endproc
                                        //  -- End function
	.type	qonef,@function         //  -- Begin function qonef
qonef:                                  //  @qonef
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	lui x15 ,  (2145386496>>12)&1048575
	lui x30 ,  qr2&4095
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lui x14 ,  (qr8>>12)&1048575
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	addi x21 ,  x0 ,  512
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	and x15 ,  x15 ,  x8
	srli x30 ,  x30 ,  12&31
	srli x20 ,  x15 ,  21&31
	lui x15 ,  (qr2>>12)&1048575
	or x15 ,  x15 ,  x30
	lui x30 ,  qr8&4095
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	bltu x21, x20, .LBB2_2
.LBB2_1:                                //  %entry
	add x19 ,  x0 ,  x15
.LBB2_2:                                //  %entry
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x9 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __divsf3
	lw x11 ,  20 ( x19 )
	add x18 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  16 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  12 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  8 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  4 ( x19 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  0 ( x19 )
	call __addsf3
	lui x30 ,  qs2&4095
	lui x15 ,  (qs2>>12)&1048575
	lui x14 ,  (qs8>>12)&1048575
	add x19 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  qs8&4095
	srli x30 ,  x30 ,  12&31
	or x22 ,  x14 ,  x30
	bltu x21, x20, .LBB2_4
.LBB2_3:                                //  %entry
	add x22 ,  x0 ,  x15
.LBB2_4:                                //  %entry
	lw x11 ,  20 ( x22 )
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  16 ( x22 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  12 ( x22 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  8 ( x22 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  4 ( x22 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  0 ( x22 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	lui x11 ,  (1052770304>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x8
	call __divsf3
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
.Lfunc_end2:
	.size	qonef, .Lfunc_end2-qonef
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y1f           //  -- Begin function __ieee754_y1f
	.type	__ieee754_y1f,@function
__ieee754_y1f:                          //  @__ieee754_y1f
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x21 ,  x15 ,  x8
	srli x15 ,  x21 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB3_7
.LBB3_1:                                //  %if.end
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	beq x0, x21, .LBB3_9
.LBB3_2:                                //  %if.end3
	blt x8, x0, .LBB3_10
.LBB3_3:                                //  %if.end6
	srli x15 ,  x21 ,  30&31
	beq x0, x15, .LBB3_11
.LBB3_4:                                //  %if.then8
	add x10 ,  x0 ,  x8
	call sinf
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call cosf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x20
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x19
	call __subsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subsf3
	add x18 ,  x0 ,  x10
	srli x15 ,  x21 ,  24&31
	addi x14 ,  x0 ,  126
	bltu x14, x15, .LBB3_16
.LBB3_5:                                //  %if.then13
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __gtsf2
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	call cosf
	bge x0, x19, .LBB3_14
.LBB3_6:                                //  %if.then18
	add x11 ,  x0 ,  x9
	call __divsf3
	add x18 ,  x0 ,  x10
	jal x0, .LBB3_15
.LBB3_7:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
.LBB3_8:                                //  %cleanup
	call __divsf3
.LBB3_9:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB3_10:
	lui x10 ,  (2143289344>>12)&1048575
	jal x0, .LBB3_9
.LBB3_11:                               //  %if.end38
	lui x15 ,  (612368384>>12)&1048575
	bltu x15, x21, .LBB3_13
.LBB3_12:                               //  %if.then40
	lui x30 ,  -1088226941&4095
	lui x15 ,  (-1088226941>>12)&1048575
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	jal x0, .LBB3_8
.LBB3_13:                               //  %if.end42
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1278910461&4095
	lui x15 ,  (-1278910461>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  935680028&4095
	lui x15 ,  (935680028>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1157976278&4095
	lui x15 ,  (-1157976278>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1028562492&4095
	lui x15 ,  (1028562492>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1102527695&4095
	lui x15 ,  (-1102527695>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  764576207&4095
	lui x15 ,  (764576207>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  836106475&4095
	lui x15 ,  (836106475>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  901120724&4095
	lui x15 ,  (901120724>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  961832011&4095
	lui x15 ,  (961832011>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1017325674&4095
	lui x15 ,  (1017325674>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x9 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_j1f
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_logf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	lui x30 ,  1059256707&4095
	lui x15 ,  (1059256707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	jal x0, .LBB3_9
.LBB3_14:                               //  %if.else
	add x11 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
.LBB3_15:                               //  %if.end22
	lui x30 ,  1543503873&4095
	lui x15 ,  (1543503873>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x21, x15, .LBB3_17
.LBB3_16:                               //  %if.then24
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
	add x10 ,  x0 ,  x9
	jal x0, .LBB3_18
.LBB3_17:                               //  %if.else28
	add x10 ,  x0 ,  x8
	call ponef
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call qonef
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
.LBB3_18:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	jal x0, .LBB3_8
.Lfunc_end3:
	.size	__ieee754_y1f, .Lfunc_end3-__ieee754_y1f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pr8,@object             //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	2
pr8:
	.long	0                       //  float 0
	.long	1039138816              //  float 0.1171875
	.long	1096013034              //  float 13.239481
	.long	1137575587              //  float 412.051849
	.long	1165110253              //  float 3874.74536
	.long	1173836758              //  float 7914.47949
	.size	pr8, 24

	.address_space	0
	.type	ps8,@object             //  @ps8
	.p2align	2
ps8:
	.long	1122265644              //  float 114.207367
	.long	1164193509              //  float 3650.93091
	.long	1192254517              //  float 36956.207
	.long	1203675494              //  float 97602.7968
	.long	1190176907              //  float 30804.2715
	.size	ps8, 20

	.address_space	0
	.type	pr5,@object             //  @pr5
	.p2align	2
pr5:
	.long	761803583               //  float 1.31990521E-11
	.long	1039138815              //  float 0.117187493
	.long	1088008227              //  float 6.80275106
	.long	1121492426              //  float 108.308182
	.long	1140943031              //  float 517.636169
	.long	1141124550              //  float 528.71521
	.size	pr5, 24

	.address_space	0
	.type	ps5,@object             //  @ps5
	.p2align	2
ps5:
	.long	1114447701              //  float 59.2805977
	.long	1148705201              //  float 991.401428
	.long	1168591395              //  float 5353.26709
	.long	1173693830              //  float 7844.69042
	.long	1153171840              //  float 1504.04688
	.size	ps5, 20

	.address_space	0
	.type	pr3,@object             //  @pr3
	.p2align	2
pr3:
	.long	827318541               //  float 3.02503911E-9
	.long	1039138731              //  float 0.117186867
	.long	1081849319              //  float 3.93297744
	.long	1108113989              //  float 35.1194038
	.long	1119231018              //  float 91.0550079
	.long	1111637116              //  float 48.5590668
	.size	pr3, 24

	.address_space	0
	.type	ps3,@object             //  @ps3
	.p2align	2
ps3:
	.long	1108027981              //  float 34.7913094
	.long	1135108504              //  float 336.762451
	.long	1149426659              //  float 1046.87146
	.long	1147057133              //  float 890.81134
	.long	1120899948              //  float 103.787933
	.size	ps3, 20

	.address_space	0
	.type	pr2,@object             //  @pr2
	.p2align	2
pr2:
	.long	870796968               //  float 1.07710832E-7
	.long	1039137302              //  float 0.11717622
	.long	1075287488              //  float 2.36851501
	.long	1094967740              //  float 12.2426109
	.long	1099795777              //  float 17.6939716
	.long	1084381773              //  float 5.07352304
	.size	pr2, 24

	.address_space	0
	.type	ps2,@object             //  @ps2
	.p2align	2
ps2:
	.long	1101757932              //  float 21.4364853
	.long	1123718297              //  float 125.29023
	.long	1130907335              //  float 232.276474
	.long	1122720727              //  float 117.679375
	.long	1090901392              //  float 8.36463928
	.size	ps2, 20

	.address_space	0
	.type	qr8,@object             //  @qr8
	.p2align	2
qr8:
	.long	0                       //  float 0
	.long	3184656384              //  float -0.102539063
	.long	3246533773              //  float -16.2717533
	.long	3292391043              //  float -759.601745
	.long	3325634362              //  float -11849.8066
	.long	3342677635              //  float -48438.5117
	.size	qr8, 24

	.address_space	0
	.type	qs8,@object             //  @qs8
	.p2align	2
qs8:
	.long	1126262071              //  float 161.39537
	.long	1173654295              //  float 7825.38623
	.long	1208138966              //  float 133875.344
	.long	1227862684              //  float 719657.75
	.long	1227013780              //  float 666601.25
	.long	3364866888              //  float -294490.25
	.size	qs8, 24

	.address_space	0
	.type	qr2,@object             //  @qr2
	.p2align	2
qr2:
	.long	3024062770              //  float -1.78381725E-7
	.long	3184653429              //  float -0.102517046
	.long	3224380451              //  float -2.75220561
	.long	3248312086              //  float -19.6636162
	.long	3257486623              //  float -42.3253136
	.long	3249207730              //  float -21.3719215
	.size	qr2, 24

	.address_space	0
	.type	qs2,@object             //  @qs2
	.p2align	2
qs2:
	.long	1106003028              //  float 29.5333633
	.long	1132264263              //  float 252.981552
	.long	1144873006              //  float 757.502808
	.long	1144576298              //  float 739.393188
	.long	1125905138              //  float 155.949005
	.long	3231626295              //  float -4.95949888
	.size	qs2, 24


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
