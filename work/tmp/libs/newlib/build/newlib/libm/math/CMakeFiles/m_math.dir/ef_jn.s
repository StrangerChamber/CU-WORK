	.text
	.file	"ef_jn.c"
	.globl	__ieee754_jnf           //  -- Begin function __ieee754_jnf
	.type	__ieee754_jnf,@function
__ieee754_jnf:                          //  @__ieee754_jnf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
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
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2139095041&4095
	and x19 ,  x15 ,  x18
	lui x15 ,  (2139095041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __addsf3
	jal x0, .LBB0_43
.LBB0_2:                                //  %if.end
	blt x9, x0, .LBB0_4
.LBB0_3:
	add x15 ,  x0 ,  x18
	add x10 ,  x0 ,  x18
	xori x14 ,  x9 ,  1
	beq x0, x14, .LBB0_8
.LBB0_6:                                //  %if.end4
	bltu x0, x9, .LBB0_9
.LBB0_7:                                //  %if.then6
	call __ieee754_j0f
	jal x0, .LBB0_43
.LBB0_4:                                //  %if.then2
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	sub x9 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	xor x15 ,  x14 ,  x18
	xor x10 ,  x14 ,  x18
	xori x14 ,  x9 ,  1
	bltu x0, x14, .LBB0_6
.LBB0_8:                                //  %if.then9
	call __ieee754_j1f
	jal x0, .LBB0_43
.LBB0_9:                                //  %if.end11
	slt x15 ,  x15 ,  x0
	and x25 ,  x9 ,  x15
	call fabsf
	add x8 ,  x0 ,  x10
	add x26 ,  x0 ,  x0
	lui x21 ,  (-2147483648>>12)&1048575
	bge x18, x0, .LBB0_12
.LBB0_10:                               //  %if.end11
	lui x30 ,  -2147483648&4095
	add x10 ,  x0 ,  x26
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	beq x18, x15, .LBB0_41
.LBB0_11:                               //  %if.end11
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x10 ,  x0 ,  x26
	beq x18, x15, .LBB0_41
	jal x0, .LBB0_15
.LBB0_12:                               //  %if.end11
	add x10 ,  x0 ,  x26
	beq x0, x18, .LBB0_41
.LBB0_13:                               //  %if.end11
	lui x15 ,  (2139095040>>12)&1048575
	add x10 ,  x0 ,  x26
	bne x18, x15, .LBB0_15
.LBB0_41:                               //  %if.end126
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	beq x25, x26, .LBB0_43
.LBB0_42:
	xor x10 ,  x15 ,  x10
.LBB0_43:                               //  %cleanup
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
.LBB0_15:                               //  %if.else
	add x10 ,  x0 ,  x9
	call __floatsisf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __gesf2
	bge x10, x0, .LBB0_16
.LBB0_19:                               //  %if.else28
	srli x15 ,  x19 ,  23&31
	addi x14 ,  x0 ,  96
	bltu x14, x15, .LBB0_26
.LBB0_20:                               //  %if.then31
	addi x15 ,  x0 ,  33
	add x10 ,  x0 ,  x26
	blt x15, x9, .LBB0_41
.LBB0_21:                               //  %if.else35
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x8 ,  x0 ,  x10
	lui x18 ,  (1065353216>>12)&1048575
	slti x15 ,  x9 ,  2
	beq x0, x15, .LBB0_23
.LBB0_22:
	add x19 ,  x0 ,  x8
	jal x0, .LBB0_25
.LBB0_16:                               //  %if.then20
	add x10 ,  x0 ,  x8
	call __ieee754_j0f
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_j1f
	slti x15 ,  x9 ,  2
	bltu x0, x15, .LBB0_41
.LBB0_17:                               //  %for.body.preheader
	addi x19 ,  x0 ,  2
	addi x20 ,  x9 ,  -1
.LBB0_18:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __floatsisf
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __subsf3
	addi x19 ,  x19 ,  2
	addi x20 ,  x20 ,  -1
	add x18 ,  x0 ,  x9
	bltu x0, x20, .LBB0_18
	jal x0, .LBB0_41
.LBB0_26:                               //  %if.else49
	slli x21 ,  x9 ,  1&31
	sw x18 ,  8 ( x2 )              //  4-byte Folded Spill
	add x10 ,  x0 ,  x21
	call __floatsisf
	add x11 ,  x0 ,  x8
	call __divsf3
	add x19 ,  x0 ,  x10
	lui x10 ,  (1073741824>>12)&1048575
	add x11 ,  x0 ,  x8
	call __divsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1315859240&4095
	lui x27 ,  (1315859240>>12)&1048575
	add x23 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	call __ltsf2
	slti x20 ,  x0 ,  1
	bge x10, x0, .LBB0_28
.LBB0_27:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x18
	add x24 ,  x0 ,  x23
	call __addsf3
	add x11 ,  x0 ,  x24
	add x18 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	lui x30 ,  1315859240&4095
	add x23 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x27 ,  x30
	call __ltsf2
	addi x20 ,  x20 ,  1
	add x19 ,  x0 ,  x24
	blt x10, x0, .LBB0_27
.LBB0_28:                               //  %while.end
	add x15 ,  x9 ,  x20
	add x18 ,  x0 ,  x0
	lui x19 ,  (1065353216>>12)&1048575
	slli x23 ,  x15 ,  1&31
.LBB0_29:                               //  %for.body69
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x23
	call __floatsisf
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x18 ,  x0 ,  x10
	addi x23 ,  x23 ,  -2
	bge x23, x21, .LBB0_29
.LBB0_30:                               //  %for.end76
	lw x20 ,  8 ( x2 )              //  4-byte Folded Reload
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x20
	call __mulsf3
	call fabsf
	call __ieee754_logf
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1118925184&4095
	lui x15 ,  (1118925184>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __ltsf2
	addi x22 ,  x9 ,  -1
	add x20 ,  x0 ,  x10
	slli x10 ,  x22 ,  1&31
	call __floatsisf
	add x9 ,  x0 ,  x10
	bge x20, x0, .LBB0_31
.LBB0_35:                               //  %for.cond89.preheader
	bge x0, x22, .LBB0_40
.LBB0_36:                               //  %for.body92.preheader
	lui x19 ,  (1065353216>>12)&1048575
	lui x23 ,  (-1073741824>>12)&1048575
	add x20 ,  x0 ,  x18
.LBB0_37:                               //  %for.body92
                                        //  =>This Inner Loop Header: Depth=1
	add x21 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x20
	call __subsf3
	lui x30 ,  -1073741824&4095
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x23 ,  x30
	call __addsf3
	add x9 ,  x0 ,  x10
	addi x22 ,  x22 ,  -1
	add x20 ,  x0 ,  x21
	blt x0, x22, .LBB0_37
	jal x0, .LBB0_40
.LBB0_31:                               //  %for.cond103.preheader
	bge x0, x22, .LBB0_40
.LBB0_32:                               //  %for.body106.preheader
	lui x27 ,  (1065353216>>12)&1048575
	lui x24 ,  (-1073741824>>12)&1048575
	lui x23 ,  (1343554297>>12)&1048575
	add x20 ,  x0 ,  x18
	add x19 ,  x0 ,  x27
	jal x0, .LBB0_33
.LBB0_38:                               //  %if.then113
                                        //    in Loop: Header=BB0_33 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __divsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __divsf3
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x27
	addi x22 ,  x22 ,  -1
	add x9 ,  x0 ,  x21
	bge x0, x22, .LBB0_40
.LBB0_33:                               //  %for.body106
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  -1073741824&4095
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x24 ,  x30
	call __addsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x20
	call __subsf3
	lui x30 ,  1343554297&4095
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x23 ,  x30
	call __gtsf2
	blt x0, x10, .LBB0_38
.LBB0_34:                               //    in Loop: Header=BB0_33 Depth=1
	add x20 ,  x0 ,  x19
	add x19 ,  x0 ,  x9
	addi x22 ,  x22 ,  -1
	add x9 ,  x0 ,  x21
	blt x0, x22, .LBB0_33
.LBB0_40:                               //  %if.end120
	add x10 ,  x0 ,  x8
	call __ieee754_j0f
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __divsf3
	lui x21 ,  (-2147483648>>12)&1048575
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x25, x26, .LBB0_42
	jal x0, .LBB0_43
.LBB0_23:                               //  %for.body40.preheader
	slti x20 ,  x0 ,  1
	add x19 ,  x0 ,  x8
.LBB0_24:                               //  %for.body40
                                        //  =>This Inner Loop Header: Depth=1
	addi x20 ,  x20 ,  1
	add x10 ,  x0 ,  x20
	call __floatsisf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x19 ,  x0 ,  x10
	bne x9, x20, .LBB0_24
.LBB0_25:                               //  %for.end46
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __divsf3
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	bne x25, x26, .LBB0_42
	jal x0, .LBB0_43
.Lfunc_end0:
	.size	__ieee754_jnf, .Lfunc_end0-__ieee754_jnf
	.cfi_endproc
                                        //  -- End function
	.globl	__ieee754_ynf           //  -- Begin function __ieee754_ynf
	.type	__ieee754_ynf,@function
__ieee754_ynf:                          //  @__ieee754_ynf
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
	lui x14 ,  (2139095041>>12)&1048575
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
	lui x30 ,  2139095041&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x8
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB1_2
.LBB1_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB1_21
.LBB1_2:                                //  %if.end
	lui x30 ,  -8388608&4095
	lui x22 ,  (-8388608>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x22 ,  x30
	beq x0, x15, .LBB1_21
.LBB1_3:                                //  %if.end3
	blt x8, x0, .LBB1_4
.LBB1_5:                                //  %if.end6
	blt x9, x0, .LBB1_7
.LBB1_6:
	slti x18 ,  x0 ,  1
	xori x14 ,  x9 ,  1
	beq x0, x14, .LBB1_11
.LBB1_9:                                //  %if.end11
	bltu x0, x9, .LBB1_12
.LBB1_10:                               //  %if.then13
	add x10 ,  x0 ,  x8
	call __ieee754_y0f
	jal x0, .LBB1_21
.LBB1_4:
	lui x10 ,  (2143289344>>12)&1048575
	jal x0, .LBB1_21
.LBB1_7:                                //  %if.then8
	sub x9 ,  x0 ,  x9
	slti x13 ,  x0 ,  1
	slli x14 ,  x9 ,  1&31
	andi x14 ,  x14 ,  2
	sub x18 ,  x13 ,  x14
	xori x14 ,  x9 ,  1
	bltu x0, x14, .LBB1_9
.LBB1_11:                               //  %if.then16
	add x10 ,  x0 ,  x18
	call __floatsisf
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_y1f
	add x11 ,  x0 ,  x9
	call __mulsf3
	jal x0, .LBB1_21
.LBB1_12:                               //  %if.end18
	lui x14 ,  (2139095040>>12)&1048575
	bne x15, x14, .LBB1_14
.LBB1_13:
	add x10 ,  x0 ,  x0
	jal x0, .LBB1_21
.LBB1_14:                               //  %if.end22
	add x10 ,  x0 ,  x8
	call __ieee754_y0f
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_y1f
	slti x15 ,  x9 ,  2
	bltu x0, x15, .LBB1_19
.LBB1_15:                               //  %if.end22
	lui x30 ,  -8388608&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	beq x10, x15, .LBB1_19
.LBB1_16:                               //  %for.body.preheader
	addi x20 ,  x0 ,  2
	add x23 ,  x0 ,  x20
.LBB1_17:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __floatsisf
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	bge x23, x9, .LBB1_19
.LBB1_18:                               //  %for.body
                                        //    in Loop: Header=BB1_17 Depth=1
	lui x30 ,  -8388608&4095
	addi x20 ,  x20 ,  2
	addi x23 ,  x23 ,  1
	add x19 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x15 ,  x22 ,  x30
	bne x10, x15, .LBB1_17
.LBB1_19:                               //  %for.end
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x18, .LBB1_21
.LBB1_20:                               //  %for.end
	xor x10 ,  x15 ,  x10
.LBB1_21:                               //  %cleanup
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
.Lfunc_end1:
	.size	__ieee754_ynf, .Lfunc_end1-__ieee754_ynf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
