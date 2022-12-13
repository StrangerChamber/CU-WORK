	.text
	.file	"ef_j0.c"
	.globl	__ieee754_j0f           //  -- Begin function __ieee754_j0f
	.type	__ieee754_j0f,@function
__ieee754_j0f:                          //  @__ieee754_j0f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	or x15 ,  x15 ,  x30
	and x22 ,  x15 ,  x10
	srli x20 ,  x22 ,  23&31
	sltiu x15 ,  x20 ,  255
	beq x0, x15, .LBB0_5
.LBB0_1:                                //  %if.end
	call fabsf
	add x8 ,  x0 ,  x10
	srli x15 ,  x22 ,  30&31
	beq x0, x15, .LBB0_6
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x8
	call sinf
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call cosf
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __addsf3
	add x18 ,  x0 ,  x10
	srli x15 ,  x22 ,  24&31
	addi x14 ,  x0 ,  126
	bltu x14, x15, .LBB0_15
.LBB0_3:                                //  %if.then6
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	call cosf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x21 ,  x15 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __ltsf2
	bge x10, x0, .LBB0_13
.LBB0_4:                                //  %if.then12
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __divsf3
	add x18 ,  x0 ,  x10
	jal x0, .LBB0_14
.LBB0_5:                                //  %if.then
	add x11 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_21
.LBB0_6:                                //  %if.end32
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	srli x15 ,  x22 ,  24&31
	addi x14 ,  x0 ,  56
	bltu x14, x15, .LBB0_10
.LBB0_7:                                //  %if.end32
	lui x9 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __gtsf2
	bge x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then37
	srli x15 ,  x22 ,  25&31
	sltiu x15 ,  x15 ,  25
	bltu x0, x15, .LBB0_23
.LBB0_9:                                //  %if.else40
	lui x30 ,  -1098907648&4095
	lui x15 ,  (-1098907648>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_12
.LBB0_10:                               //  %if.end45
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1315000516&4095
	lui x15 ,  (-1315000516>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  905285256&4095
	lui x15 ,  (905285256>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1186515666&4095
	lui x15 ,  (-1186515666>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1015021568>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  815810024&4095
	lui x15 ,  (815810024>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  889838246&4095
	lui x15 ,  (889838246>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  955594391&4095
	lui x15 ,  (955594391>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1015015236&4095
	lui x15 ,  (1015015236>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x19 ,  x0 ,  x10
	addi x15 ,  x0 ,  126
	bltu x15, x20, .LBB0_16
.LBB0_11:                               //  %if.then63
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __divsf3
	lui x30 ,  -1098907648&4095
	lui x15 ,  (-1098907648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
.LBB0_12:                               //  %cleanup
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_17
.LBB0_13:                               //  %if.else
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
.LBB0_14:                               //  %if.end16
	lui x30 ,  1543503873&4095
	lui x15 ,  (1543503873>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x22, x15, .LBB0_18
.LBB0_15:                               //  %if.then18
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
	add x10 ,  x0 ,  x18
	jal x0, .LBB0_19
.LBB0_16:                               //  %if.else68
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x20 ,  (1065353216>>12)&1048575
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __addsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
.LBB0_17:                               //  %cleanup
	call __addsf3
	jal x0, .LBB0_22
.LBB0_18:                               //  %if.else22
	add x10 ,  x0 ,  x8
	call pzerof
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call qzerof
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
.LBB0_19:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
.LBB0_21:                               //  %cleanup
	call __divsf3
.LBB0_22:                               //  %cleanup
	add x9 ,  x0 ,  x10
.LBB0_23:                               //  %cleanup
	add x10 ,  x0 ,  x9
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
.Lfunc_end0:
	.size	__ieee754_j0f, .Lfunc_end0-__ieee754_j0f
	.cfi_endproc
                                        //  -- End function
	.type	pzerof,@function        //  -- Begin function pzerof
pzerof:                                 //  @pzerof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  pR8&4095
	lui x15 ,  (pR8>>12)&1048575
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
	lui x30 ,  pS8&4095
	lui x15 ,  (pS8>>12)&1048575
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
	lui x30 ,  pR5&4095
	lui x14 ,  (pR5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x18 ,  x14 ,  x30
	lui x30 ,  pS5&4095
	lui x14 ,  (pS5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	lui x30 ,  1089936471&4095
	lui x14 ,  (1089936471>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB1_4
.LBB1_2:                                //  %if.else3
	lui x30 ,  pR2&4095
	lui x14 ,  (pR2>>12)&1048575
	lui x13 ,  (pR3>>12)&1048575
	lui x11 ,  (pS3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  pR3&4095
	srli x30 ,  x30 ,  12&31
	or x18 ,  x13 ,  x30
	lui x30 ,  1077336935&4095
	lui x13 ,  (1077336935>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  pS2&4095
	lui x13 ,  (pS2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  pS3&4095
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
	.size	pzerof, .Lfunc_end1-pzerof
	.cfi_endproc
                                        //  -- End function
	.type	qzerof,@function        //  -- Begin function qzerof
qzerof:                                 //  @qzerof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  qR8&4095
	lui x15 ,  (qR8>>12)&1048575
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	addi x13 ,  x0 ,  64
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	lui x30 ,  qS8&4095
	lui x15 ,  (qS8>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x14 ,  x15 ,  24&31
	bltu x13, x14, .LBB2_4
.LBB2_1:                                //  %if.else
	lui x30 ,  qR5&4095
	lui x14 ,  (qR5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x14 ,  x30
	lui x30 ,  qS5&4095
	lui x14 ,  (qS5>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x14 ,  x30
	lui x30 ,  1089936471&4095
	lui x14 ,  (1089936471>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB2_4
.LBB2_2:                                //  %if.else3
	lui x30 ,  qR2&4095
	lui x14 ,  (qR2>>12)&1048575
	lui x13 ,  (qR3>>12)&1048575
	lui x11 ,  (qS3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  qR3&4095
	srli x30 ,  x30 ,  12&31
	or x19 ,  x13 ,  x30
	lui x30 ,  1077336935&4095
	lui x13 ,  (1077336935>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  qS2&4095
	lui x13 ,  (qS2>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	lui x30 ,  qS3&4095
	srli x30 ,  x30 ,  12&31
	or x20 ,  x11 ,  x30
	bltu x12, x15, .LBB2_4
.LBB2_3:                                //  %if.else3
	add x20 ,  x0 ,  x13
	add x19 ,  x0 ,  x14
.LBB2_4:                                //  %if.end8
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
	lw x11 ,  20 ( x20 )
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  16 ( x20 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  12 ( x20 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  8 ( x20 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  4 ( x20 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x10
	lw x10 ,  0 ( x20 )
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	lui x30 ,  -1107296256&4095
	lui x15 ,  (-1107296256>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x8
	call __divsf3
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	qzerof, .Lfunc_end2-qzerof
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_y0f           //  -- Begin function __ieee754_y0f
	.type	__ieee754_y0f,@function
__ieee754_y0f:                          //  @__ieee754_y0f
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
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
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x22 ,  x15 ,  x8
	srli x15 ,  x22 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB3_7
.LBB3_1:                                //  %if.end
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	beq x0, x22, .LBB3_9
.LBB3_2:                                //  %if.end3
	blt x8, x0, .LBB3_10
.LBB3_3:                                //  %if.end6
	srli x15 ,  x22 ,  30&31
	beq x0, x15, .LBB3_11
.LBB3_4:                                //  %if.then8
	add x10 ,  x0 ,  x8
	call sinf
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call cosf
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __addsf3
	add x18 ,  x0 ,  x10
	srli x15 ,  x22 ,  24&31
	addi x14 ,  x0 ,  126
	bltu x14, x15, .LBB3_17
.LBB3_5:                                //  %if.then12
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	call cosf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x21 ,  x15 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __ltsf2
	bge x10, x0, .LBB3_15
.LBB3_6:                                //  %if.then18
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x9
	call __divsf3
	add x18 ,  x0 ,  x10
	jal x0, .LBB3_16
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
.LBB3_10:
	lui x10 ,  (2143289344>>12)&1048575
	jal x0, .LBB3_9
.LBB3_11:                               //  %if.end38
	lui x15 ,  (964689920>>12)&1048575
	bltu x15, x22, .LBB3_13
.LBB3_12:                               //  %if.then40
	add x10 ,  x0 ,  x8
	call __ieee754_logf
	lui x30 ,  1059256707&4095
	lui x15 ,  (1059256707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1114167627&4095
	lui x15 ,  (-1114167627>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB3_14
.LBB3_13:                               //  %if.end44
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1372642837&4095
	lui x15 ,  (-1372642837>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  849871546&4095
	lui x15 ,  (849871546>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1233128132&4095
	lui x15 ,  (-1233128132>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  968239721&4095
	lui x15 ,  (968239721>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1134401722&4095
	lui x15 ,  (-1134401722>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1043654669&4095
	lui x15 ,  (1043654669>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1114167627&4095
	lui x15 ,  (-1114167627>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  804421826&4095
	lui x15 ,  (804421826>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  881533292&4095
	lui x15 ,  (881533292>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  949970400&4095
	lui x15 ,  (949970400>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1011913605&4095
	lui x15 ,  (1011913605>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_j0f
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_logf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1059256707&4095
	lui x15 ,  (1059256707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
.LBB3_14:                               //  %cleanup
	call __addsf3
	jal x0, .LBB3_9
.LBB3_15:                               //  %if.else
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
.LBB3_16:                               //  %if.end22
	lui x30 ,  1543503873&4095
	lui x15 ,  (1543503873>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x22, x15, .LBB3_18
.LBB3_17:                               //  %if.then24
	lui x30 ,  1058041531&4095
	lui x15 ,  (1058041531>>12)&1048575
	add x10 ,  x0 ,  x9
	jal x0, .LBB3_19
.LBB3_18:                               //  %if.else28
	add x10 ,  x0 ,  x8
	call pzerof
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call qzerof
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
.LBB3_19:                               //  %cleanup
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
	.size	__ieee754_y0f, .Lfunc_end3-__ieee754_y0f
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	pR8,@object             //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	2
pR8:
	.long	0                       //  float 0
	.long	3180331008              //  float -0.0703125
	.long	3238088326              //  float -8.08167076
	.long	3279980564              //  float -257.06311
	.long	3306902390              //  float -2485.21631
	.long	3315869786              //  float -5253.04395
	.size	pR8, 24

	.address_space	0
	.type	pS8,@object             //  @pS8
	.p2align	2
pS8:
	.long	1122570648              //  float 116.534363
	.long	1164942315              //  float 3833.74487
	.long	1193186779              //  float 40597.8555
	.long	1206126716              //  float 116752.969
	.long	1194986426              //  float 47627.7266
	.size	pS8, 20

	.address_space	0
	.type	pR5,@object             //  @pR5
	.p2align	2
pR5:
	.long	2907227530              //  float -1.14125463E-11
	.long	3180331007              //  float -0.0703124925
	.long	3229948808              //  float -4.15961075
	.long	3263650171              //  float -67.6747665
	.long	3282410907              //  float -331.231293
	.long	3282909049              //  float -346.43338
	.size	pR5, 24

	.address_space	0
	.type	pS5,@object             //  @pS5
	.p2align	2
pS5:
	.long	1114833928              //  float 60.7539368
	.long	1149462547              //  float 1051.25232
	.long	1169872836              //  float 5978.9707
	.long	1175872968              //  float 9625.44531
	.long	1159094510              //  float 2406.05811
	.size	pS5, 20

	.address_space	0
	.type	pR3,@object             //  @pR3
	.p2align	2
pR3:
	.long	2972649499              //  float -2.54704591E-9
	.long	3180330936              //  float -0.0703119636
	.long	3222941077              //  float -2.40903211
	.long	3249519186              //  float -21.9659767
	.long	3261616402              //  float -58.0791702
	.long	3254490469              //  float -31.4479465
	.size	pR3, 24

	.address_space	0
	.type	pS3,@object             //  @pS3
	.p2align	2
pS3:
	.long	1108307092              //  float 35.8560333
	.long	1135919562              //  float 361.513977
	.long	1150628723              //  float 1193.60779
	.long	1150091238              //  float 1127.99683
	.long	1127060664              //  float 173.580933
	.size	pS3, 20

	.address_space	0
	.type	pR2,@object             //  @pR2
	.p2align	2
pR2:
	.long	3015612599              //  float -8.87534312E-8
	.long	3180329746              //  float -0.0703030974
	.long	3216617932              //  float -1.45073843
	.long	3237238687              //  float -7.63569593
	.long	3241350966              //  float -11.1931667
	.long	3226399757              //  float -3.23364568
	.size	pR2, 24

	.address_space	0
	.type	pS2,@object             //  @pS2
	.p2align	2
pS2:
	.long	1102168877              //  float 22.2203007
	.long	1124611312              //  float 136.206787
	.long	1132936242              //  float 270.470276
	.long	1125769242              //  float 153.875397
	.long	1097500058              //  float 14.6576176
	.size	pS2, 20

	.address_space	0
	.type	qR8,@object             //  @qR8
	.p2align	2
qR8:
	.long	0                       //  float 0
	.long	1033240576              //  float 0.0732421875
	.long	1094470291              //  float 11.7682066
	.long	1141599001              //  float 557.673401
	.long	1175088330              //  float 8859.19726
	.long	1192269472              //  float 37014.625
	.size	qR8, 24

	.address_space	0
	.type	qS8,@object             //  @qS8
	.p2align	2
qS8:
	.long	1126418090              //  float 163.776031
	.long	1174213314              //  float 8098.34472
	.long	1208693395              //  float 142538.297
	.long	1229201108              //  float 803309.25
	.long	1229796185              //  float 840501.563
	.long	3366447977              //  float -343899.281
	.size	qS8, 24

	.address_space	0
	.type	qR5,@object             //  @qR5
	.p2align	2
qR5:
	.long	765586553               //  float 1.84085958E-11
	.long	1033240575              //  float 0.07324218
	.long	1085980038              //  float 5.83563519
	.long	1124539536              //  float 135.111572
	.long	1149265869              //  float 1027.24377
	.long	1157152587              //  float 1989.97791
	.size	qR5, 24

	.address_space	0
	.type	qS5,@object             //  @qS5
	.p2align	2
qS5:
	.long	1118145952              //  float 82.7766113
	.long	1157750023              //  float 2077.81421
	.long	1184054932              //  float 18847.2891
	.long	1197322013              //  float 56751.1133
	.long	1192003777              //  float 35976.7539
	.long	3316077246              //  float -5354.34277
	.size	qS5, 24

	.address_space	0
	.type	qR3,@object             //  @qR3
	.p2align	2
qR3:
	.long	831940635               //  float 4.37740999E-9
	.long	1033240432              //  float 0.0732411146
	.long	1079379939              //  float 3.34423137
	.long	1110080709              //  float 42.6218452
	.long	1126878943              //  float 170.80809
	.long	1126611940              //  float 166.733948
	.size	qR3, 24

	.address_space	0
	.type	qS3,@object             //  @qS3
	.p2align	2
qS3:
	.long	1111689494              //  float 48.758873
	.long	1144089628              //  float 709.689208
	.long	1164411487              //  float 3704.14819
	.long	1170858855              //  float 6460.42529
	.long	1159546199              //  float 2516.33374
	.long	3272949593              //  float -149.247452
	.size	qS3, 24

	.address_space	0
	.type	qR2,@object             //  @qR2
	.p2align	2
qR2:
	.long	874613211               //  float 1.5044445E-7
	.long	1033238058              //  float 0.0732234269
	.long	1073726655              //  float 1.99819171
	.long	1097330173              //  float 14.4956026
	.long	1107121265              //  float 31.6662312
	.long	1099040140              //  float 16.2527084
	.size	qR2, 24

	.address_space	0
	.type	qS2,@object             //  @qS2
	.p2align	2
qS2:
	.long	1106439352              //  float 30.3655853
	.long	1132899471              //  float 269.348114
	.long	1146303017              //  float 844.783752
	.long	1146928101              //  float 882.935852
	.long	1129622168              //  float 212.666382
	.long	3232363352              //  float -5.31095505
	.size	qS2, 24


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
