	.text
	.file	"tzcalc_limits.c"
	.globl	__tzcalc_limits         //  -- Begin function __tzcalc_limits
	.type	__tzcalc_limits,@function
__tzcalc_limits:                        //  @__tzcalc_limits
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -48
	add x9 ,  x0 ,  x10
	call __gettzinfo
	add x8 ,  x0 ,  x10
	slti x15 ,  x9 ,  1970
	beq x0, x15, .LBB0_2
.LBB0_1:
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_40
.LBB0_2:                                //  %if.end
	addi x11 ,  x0 ,  365
	add x10 ,  x0 ,  x9
	call __mulsi3
	addi x15 ,  x9 ,  -1969
	addi x11 ,  x0 ,  -100
	srai x14 ,  x15 ,  31&31
	srli x14 ,  x14 ,  30&31
	add x15 ,  x14 ,  x15
	srai x15 ,  x15 ,  2&31
	add x18 ,  x15 ,  x10
	addi x10 ,  x9 ,  -1901
	call __divsi3
	addi x19 ,  x0 ,  400
	add x18 ,  x10 ,  x18
	addi x10 ,  x9 ,  -1601
	add x11 ,  x0 ,  x19
	call __divsi3
	add x20 ,  x10 ,  x18
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __umodsi3
	andi x23 ,  x9 ,  3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	sw x9 ,  4 ( x8 )
	xori x15 ,  x23 ,  0
	sltu x14 ,  x0 ,  x18
	sltiu x15 ,  x15 ,  1
	and x21 ,  x15 ,  x14
	call __umodsi3
	lui x30 ,  -719051&4095
	xori x15 ,  x10 ,  0
	sltiu x9 ,  x15 ,  1
	lui x15 ,  (-719051>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -719050&4095
	or x19 ,  x21 ,  x9
	add x22 ,  x15 ,  x20
	lui x15 ,  (-719050>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x21 ,  x15 ,  x20
	lbu x15 ,  8 ( x8 )
	lui x20 ,  (86400>>12)&1048575
	bltu x0, x23, .LBB0_7
.LBB0_3:                                //  %if.end
	beq x0, x18, .LBB0_7
.LBB0_4:                                //  %for.body.preheader
	xori x14 ,  x15 ,  68
	beq x0, x14, .LBB0_22
.LBB0_5:                                //  %for.body.preheader
	xori x15 ,  x15 ,  74
	bltu x0, x15, .LBB0_23
.LBB0_6:                                //  %if.then14
	lw x15 ,  20 ( x8 )
	addi x14 ,  x0 ,  59
	slt x14 ,  x14 ,  x15
	add x15 ,  x15 ,  x22
	and x14 ,  x14 ,  x19
	add x10 ,  x14 ,  x15
	jal x0, .LBB0_31
.LBB0_7:                                //  %for.body.us.preheader
	xori x14 ,  x15 ,  74
	beq x0, x14, .LBB0_10
.LBB0_8:                                //  %for.body.us.preheader
	xori x15 ,  x15 ,  68
	bltu x0, x15, .LBB0_11
.LBB0_9:                                //  %if.then38.us
	lw x15 ,  20 ( x8 )
	add x10 ,  x21 ,  x15
	jal x0, .LBB0_19
.LBB0_22:                               //  %if.then38
	lw x15 ,  20 ( x8 )
	add x10 ,  x21 ,  x15
	jal x0, .LBB0_31
.LBB0_23:                               //  %lor.end
	lw x15 ,  12 ( x8 )
	add x25 ,  x0 ,  x0
	lui x23 ,  (__month_lengths>>12)&1048575
	add x18 ,  x0 ,  x21
	add x24 ,  x0 ,  x25
	slti x14 ,  x15 ,  2
	bltu x0, x14, .LBB0_26
.LBB0_24:                               //  %for.body60.preheader
	lui x30 ,  __month_lengths&4095
	add x24 ,  x0 ,  x0
	add x18 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x14 ,  x23 ,  x30
	addi x14 ,  x14 ,  48
.LBB0_25:                               //  %for.body60
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	add x18 ,  x18 ,  x13
	addi x13 ,  x24 ,  2
	addi x24 ,  x24 ,  1
	blt x13, x15, .LBB0_25
.LBB0_26:                               //  %for.end
	addi x9 ,  x0 ,  7
	addi x10 ,  x18 ,  4
	add x11 ,  x0 ,  x9
	call __modsi3
	lw x15 ,  20 ( x8 )
	sub x26 ,  x15 ,  x10
	bge x26, x25, .LBB0_28
.LBB0_27:
	addi x26 ,  x26 ,  7
.LBB0_28:                               //  %for.end
	lw x10 ,  16 ( x8 )
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	slli x14 ,  x24 ,  2&31
	add x15 ,  x10 ,  x26
	srli x30 ,  x30 ,  12&31
	or x13 ,  x23 ,  x30
	add x14 ,  x14 ,  x13
	lw x14 ,  48 ( x14 )
.LBB0_29:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x15 ,  x15 ,  -7
	bge x15, x14, .LBB0_29
.LBB0_30:                               //  %while.end
	add x10 ,  x15 ,  x18
.LBB0_31:                               //  %if.end87
	lui x30 ,  86400&4095
	add x9 ,  x0 ,  x0
	srai x11 ,  x10 ,  31&31
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x9
	or x12 ,  x20 ,  x30
	call __muldi3
	lw x15 ,  24 ( x8 )
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	sltu x13 ,  x15 ,  x10
	add x14 ,  x13 ,  x14
	lw x13 ,  36 ( x8 )
	add x23 ,  x13 ,  x15
	srai x12 ,  x13 ,  31&31
	add x14 ,  x12 ,  x14
	sltu x15 ,  x23 ,  x15
	sw x23 ,  28 ( x8 )
	add x24 ,  x15 ,  x14
	lbu x15 ,  40 ( x8 )
	sw x24 ,  32 ( x8 )
	xori x14 ,  x15 ,  68
	beq x0, x14, .LBB0_35
.LBB0_32:                               //  %if.end87
	xori x15 ,  x15 ,  74
	beq x0, x15, .LBB0_21
.LBB0_33:                               //  %lor.end.1
	lw x15 ,  44 ( x8 )
	slti x14 ,  x15 ,  2
	bltu x0, x14, .LBB0_34
.LBB0_50:                               //  %for.body60.1.preheader
	lui x30 ,  __month_lengths&4095
	lui x14 ,  (__month_lengths>>12)&1048575
	add x19 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	addi x14 ,  x14 ,  48
.LBB0_51:                               //  %for.body60.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  4
	add x21 ,  x21 ,  x13
	addi x13 ,  x19 ,  2
	addi x19 ,  x19 ,  1
	blt x13, x15, .LBB0_51
	jal x0, .LBB0_52
.LBB0_10:                               //  %if.then14.us
	lw x15 ,  20 ( x8 )
	addi x14 ,  x0 ,  59
	slt x14 ,  x14 ,  x15
	add x15 ,  x15 ,  x22
	and x14 ,  x14 ,  x19
	add x10 ,  x14 ,  x15
	jal x0, .LBB0_19
.LBB0_11:                               //  %lor.end.us
	lw x18 ,  12 ( x8 )
	add x25 ,  x0 ,  x0
	add x23 ,  x0 ,  x21
	add x24 ,  x0 ,  x25
	slti x15 ,  x18 ,  2
	bltu x0, x15, .LBB0_14
.LBB0_12:                               //  %for.body60.us.preheader
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	add x24 ,  x0 ,  x0
	add x23 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
.LBB0_13:                               //  %for.body60.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	add x23 ,  x23 ,  x14
	addi x14 ,  x24 ,  2
	addi x24 ,  x24 ,  1
	blt x14, x18, .LBB0_13
.LBB0_14:                               //  %for.end.us
	addi x18 ,  x0 ,  7
	addi x10 ,  x23 ,  4
	add x11 ,  x0 ,  x18
	call __modsi3
	lw x15 ,  20 ( x8 )
	sub x26 ,  x15 ,  x10
	bge x26, x25, .LBB0_16
.LBB0_15:
	addi x26 ,  x26 ,  7
.LBB0_16:                               //  %for.end.us
	lw x10 ,  16 ( x8 )
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x18 ,  x10 ,  x26
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	slli x14 ,  x24 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
.LBB0_17:                               //  %while.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	addi x18 ,  x18 ,  -7
	bge x18, x15, .LBB0_17
.LBB0_18:                               //  %while.end.us
	add x10 ,  x18 ,  x23
.LBB0_19:                               //  %if.end87.us
	lui x30 ,  86400&4095
	add x18 ,  x0 ,  x0
	srai x11 ,  x10 ,  31&31
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x18
	or x12 ,  x20 ,  x30
	call __muldi3
	lw x15 ,  24 ( x8 )
	srai x14 ,  x15 ,  31&31
	add x15 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	sltu x13 ,  x15 ,  x10
	add x14 ,  x13 ,  x14
	lw x13 ,  36 ( x8 )
	add x23 ,  x13 ,  x15
	srai x12 ,  x13 ,  31&31
	add x14 ,  x12 ,  x14
	sltu x15 ,  x23 ,  x15
	sw x23 ,  28 ( x8 )
	add x24 ,  x15 ,  x14
	lbu x15 ,  40 ( x8 )
	sw x24 ,  32 ( x8 )
	xori x14 ,  x15 ,  68
	beq x0, x14, .LBB0_35
.LBB0_20:                               //  %if.end87.us
	xori x15 ,  x15 ,  74
	bltu x0, x15, .LBB0_41
.LBB0_21:                               //  %if.then14.us.1
	lw x15 ,  52 ( x8 )
	addi x14 ,  x0 ,  59
	slt x14 ,  x14 ,  x15
	add x15 ,  x15 ,  x22
	and x14 ,  x14 ,  x19
	add x10 ,  x14 ,  x15
	jal x0, .LBB0_36
.LBB0_35:                               //  %if.then38.us.1
	lw x15 ,  52 ( x8 )
	add x10 ,  x21 ,  x15
	jal x0, .LBB0_36
.LBB0_41:                               //  %lor.end.us.1
	lw x19 ,  44 ( x8 )
	slti x15 ,  x19 ,  2
	bltu x0, x15, .LBB0_42
.LBB0_43:                               //  %for.body60.us.1.preheader
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	add x22 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
.LBB0_44:                               //  %for.body60.us.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x14 ,  0 ( x15 )
	addi x15 ,  x15 ,  4
	add x21 ,  x21 ,  x14
	addi x14 ,  x22 ,  2
	addi x22 ,  x22 ,  1
	blt x14, x19, .LBB0_44
	jal x0, .LBB0_45
.LBB0_34:
	add x19 ,  x0 ,  x9
.LBB0_52:                               //  %for.end.1
	addi x18 ,  x0 ,  7
	addi x10 ,  x21 ,  4
	add x11 ,  x0 ,  x18
	call __modsi3
	lw x15 ,  52 ( x8 )
	sub x22 ,  x15 ,  x10
	bge x22, x9, .LBB0_54
.LBB0_53:
	addi x22 ,  x22 ,  7
.LBB0_54:                               //  %for.end.1
	lw x10 ,  48 ( x8 )
	add x11 ,  x0 ,  x18
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x13 ,  (__month_lengths>>12)&1048575
	slli x14 ,  x19 ,  2&31
	add x15 ,  x10 ,  x22
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x14 ,  x13
	lw x14 ,  48 ( x14 )
.LBB0_55:                               //  %while.cond.1
                                        //  =>This Inner Loop Header: Depth=1
	addi x15 ,  x15 ,  -7
	bge x15, x14, .LBB0_55
.LBB0_56:                               //  %while.end.1
	add x10 ,  x15 ,  x21
	jal x0, .LBB0_36
.LBB0_42:
	add x22 ,  x0 ,  x18
.LBB0_45:                               //  %for.end.us.1
	addi x19 ,  x0 ,  7
	addi x10 ,  x21 ,  4
	add x11 ,  x0 ,  x19
	call __modsi3
	lw x15 ,  52 ( x8 )
	sub x25 ,  x15 ,  x10
	bge x25, x18, .LBB0_47
.LBB0_46:
	addi x25 ,  x25 ,  7
.LBB0_47:                               //  %for.end.us.1
	lw x10 ,  48 ( x8 )
	add x11 ,  x0 ,  x19
	call __mulsi3
	add x18 ,  x10 ,  x25
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	slli x14 ,  x22 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
.LBB0_48:                               //  %while.cond.us.1
                                        //  =>This Inner Loop Header: Depth=1
	addi x18 ,  x18 ,  -7
	bge x18, x15, .LBB0_48
.LBB0_49:                               //  %while.end.us.1
	add x10 ,  x18 ,  x21
.LBB0_36:                               //  %for.end102
	lui x30 ,  86400&4095
	srai x11 ,  x10 ,  31&31
	add x13 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x12 ,  x20 ,  x30
	call __muldi3
	lw x15 ,  56 ( x8 )
	srai x14 ,  x15 ,  31&31
	add x13 ,  x15 ,  x10
	add x14 ,  x14 ,  x11
	sltu x15 ,  x13 ,  x10
	add x15 ,  x15 ,  x14
	lw x14 ,  68 ( x8 )
	srai x12 ,  x14 ,  31&31
	add x12 ,  x12 ,  x15
	add x15 ,  x14 ,  x13
	sltu x14 ,  x15 ,  x13
	add x14 ,  x14 ,  x12
	beq x24, x14, .LBB0_37
.LBB0_38:                               //  %for.end102
	slt x13 ,  x24 ,  x14
	jal x0, .LBB0_39
.LBB0_37:
	sltu x13 ,  x23 ,  x15
.LBB0_39:                               //  %for.end102
	slti x10 ,  x0 ,  1
	sw x14 ,  64 ( x8 )
	sw x15 ,  60 ( x8 )
	sw x13 ,  0 ( x8 )
.LBB0_40:                               //  %cleanup
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
	.size	__tzcalc_limits, .Lfunc_end0-__tzcalc_limits
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
