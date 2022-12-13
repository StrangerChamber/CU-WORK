	.text
	.file	"lcltime_r.c"
	.globl	localtime_r             //  -- Begin function localtime_r
	.type	localtime_r,@function
localtime_r:                            //  @localtime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x8 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __gettzinfo
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call gmtime_r
	add x8 ,  x0 ,  x10
	addi x11 ,  x0 ,  100
	lw x15 ,  20 ( x8 )
	addi x20 ,  x15 ,  1900
	add x10 ,  x0 ,  x20
	call __modsi3
	andi x15 ,  x20 ,  3
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x10, .LBB0_3
.LBB0_2:
	slti x9 ,  x0 ,  1
	jal x0, .LBB0_4
.LBB0_3:                                //  %lor.rhs
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x20
	call __modsi3
	xori x15 ,  x10 ,  0
	sltiu x9 ,  x15 ,  1
.LBB0_4:                                //  %lor.end
	call __tz_lock
	call _tzset_unlocked
	lui x30 ,  _daylight&4095
	lui x15 ,  (_daylight>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_11
.LBB0_5:                                //  %if.then
	lw x15 ,  4 ( x18 )
	beq x20, x15, .LBB0_7
.LBB0_6:                                //  %lor.lhs.false
	add x10 ,  x0 ,  x20
	call __tzcalc_limits
	beq x0, x10, .LBB0_19
.LBB0_7:                                //  %if.then9
	lw x13 ,  32 ( x18 )
	lw x12 ,  28 ( x18 )
	lw x14 ,  4 ( x19 )
	lw x15 ,  0 ( x19 )
	lw x11 ,  0 ( x18 )
	beq x0, x11, .LBB0_12
.LBB0_8:                                //  %cond.true
	beq x14, x13, .LBB0_16
.LBB0_9:                                //  %cond.true
	slt x13 ,  x14 ,  x13
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB0_17
.LBB0_10:                               //  %if.end31.thread265
	sw x0 ,  32 ( x8 )
	jal x0, .LBB0_25
.LBB0_11:
	add x15 ,  x0 ,  x0
	sw x15 ,  32 ( x8 )
	jal x0, .LBB0_25
.LBB0_12:                               //  %cond.false
	beq x14, x13, .LBB0_20
.LBB0_13:                               //  %cond.false
	slt x13 ,  x14 ,  x13
	beq x0, x13, .LBB0_21
.LBB0_14:                               //  %if.end31
	lw x13 ,  64 ( x18 )
	beq x14, x13, .LBB0_24
.LBB0_15:                               //  %if.end31
	slt x15 ,  x14 ,  x13
	xori x14 ,  x15 ,  1
	sw x15 ,  32 ( x8 )
	beq x0, x14, .LBB0_23
	jal x0, .LBB0_25
.LBB0_16:
	sltu x13 ,  x15 ,  x12
	xori x13 ,  x13 ,  1
	beq x0, x13, .LBB0_10
.LBB0_17:                               //  %land.rhs
	lw x13 ,  64 ( x18 )
	beq x14, x13, .LBB0_22
.LBB0_18:                               //  %land.rhs
	slt x15 ,  x14 ,  x13
	sw x15 ,  32 ( x8 )
	bltu x0, x15, .LBB0_23
	jal x0, .LBB0_25
.LBB0_19:
	addi x15 ,  x0 ,  -1
	sw x15 ,  32 ( x8 )
	jal x0, .LBB0_25
.LBB0_20:
	sltu x13 ,  x15 ,  x12
	bltu x0, x13, .LBB0_14
.LBB0_21:                               //  %if.end31.thread258
	slti x15 ,  x0 ,  1
	sw x15 ,  32 ( x8 )
	jal x0, .LBB0_23
.LBB0_22:
	lw x14 ,  60 ( x18 )
	sltu x15 ,  x15 ,  x14
	sw x15 ,  32 ( x8 )
	beq x0, x15, .LBB0_25
.LBB0_23:
	addi x15 ,  x18 ,  68
	jal x0, .LBB0_26
.LBB0_24:
	lw x14 ,  60 ( x18 )
	sltu x15 ,  x15 ,  x14
	xori x14 ,  x15 ,  1
	sw x15 ,  32 ( x8 )
	beq x0, x14, .LBB0_23
.LBB0_25:
	addi x15 ,  x18 ,  36
.LBB0_26:
	lw x18 ,  0 ( x15 )
	lui x30 ,  3600&4095
	lui x15 ,  (3600>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x18
	call __divsi3
	add x11 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	call __mulsi3
	sub x19 ,  x18 ,  x10
	addi x18 ,  x0 ,  60
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __divsi3
	add x11 ,  x0 ,  x18
	add x21 ,  x0 ,  x10
	call __mulsi3
	lw x14 ,  0 ( x8 )
	sub x15 ,  x10 ,  x19
	add x13 ,  x15 ,  x14
	lw x15 ,  8 ( x8 )
	lw x14 ,  4 ( x8 )
	slti x12 ,  x13 ,  60
	sw x13 ,  0 ( x8 )
	sub x15 ,  x15 ,  x20
	sub x14 ,  x14 ,  x21
	sw x15 ,  8 ( x8 )
	sw x14 ,  4 ( x8 )
	bltu x0, x12, .LBB0_28
.LBB0_27:                               //  %if.then51
	addi x18 ,  x0 ,  -60
	addi x14 ,  x14 ,  1
	jal x0, .LBB0_32
.LBB0_28:                               //  %if.else56
	blt x13, x0, .LBB0_31
.LBB0_29:                               //  %if.end65
	slti x13 ,  x14 ,  60
	bltu x0, x13, .LBB0_33
.LBB0_30:                               //  %if.then68
	addi x13 ,  x0 ,  -60
	addi x15 ,  x15 ,  1
	jal x0, .LBB0_42
.LBB0_31:                               //  %if.then59
	addi x14 ,  x14 ,  -1
.LBB0_32:                               //  %if.end65.sink.split
	add x13 ,  x18 ,  x13
	sw x14 ,  4 ( x8 )
	sw x13 ,  0 ( x8 )
	slti x13 ,  x14 ,  60
	beq x0, x13, .LBB0_30
.LBB0_33:                               //  %if.else73
	blt x14, x0, .LBB0_41
.LBB0_34:                               //  %if.end82
	slti x14 ,  x15 ,  24
	bltu x0, x14, .LBB0_43
.LBB0_35:                               //  %if.then85
	lw x14 ,  24 ( x8 )
	addi x13 ,  x0 ,  5
	blt x13, x14, .LBB0_37
.LBB0_36:                               //  %if.then85
	addi x14 ,  x14 ,  1
	jal x0, .LBB0_38
.LBB0_37:
	add x14 ,  x0 ,  x0
.LBB0_38:                               //  %if.then85
	addi x15 ,  x15 ,  -24
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	sw x14 ,  24 ( x8 )
	sw x15 ,  8 ( x8 )
	lw x15 ,  28 ( x8 )
	addi x15 ,  x15 ,  1
	sw x15 ,  28 ( x8 )
	call __mulsi3
	lw x14 ,  16 ( x8 )
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x12 ,  12 ( x8 )
	or x15 ,  x15 ,  x30
	add x13 ,  x10 ,  x15
	slli x11 ,  x14 ,  2&31
	add x13 ,  x11 ,  x13
	addi x15 ,  x12 ,  1
	lw x13 ,  0 ( x13 )
	sw x15 ,  12 ( x8 )
	blt x12, x13, .LBB0_57
.LBB0_39:                               //  %if.then98
	sub x15 ,  x15 ,  x13
	sw x15 ,  12 ( x8 )
	addi x15 ,  x14 ,  1
	sw x15 ,  16 ( x8 )
	xori x15 ,  x15 ,  12
	bltu x0, x15, .LBB0_57
.LBB0_40:                               //  %if.then107
	lw x15 ,  20 ( x8 )
	sw x0 ,  16 ( x8 )
	sw x0 ,  28 ( x8 )
	addi x15 ,  x15 ,  1
	sw x15 ,  20 ( x8 )
	jal x0, .LBB0_57
.LBB0_41:                               //  %if.then76
	addi x13 ,  x0 ,  60
	addi x15 ,  x15 ,  -1
.LBB0_42:                               //  %if.end82.sink.split
	add x14 ,  x13 ,  x14
	sw x15 ,  8 ( x8 )
	sw x14 ,  4 ( x8 )
	slti x14 ,  x15 ,  24
	beq x0, x14, .LBB0_35
.LBB0_43:                               //  %if.else114
	bge x15, x0, .LBB0_57
.LBB0_44:                               //  %if.then117
	lw x14 ,  24 ( x8 )
	slti x13 ,  x0 ,  1
	blt x14, x13, .LBB0_46
.LBB0_45:                               //  %if.then117
	addi x14 ,  x14 ,  -1
	jal x0, .LBB0_47
.LBB0_46:
	addi x14 ,  x0 ,  6
.LBB0_47:                               //  %if.then117
	addi x15 ,  x15 ,  24
	sw x14 ,  24 ( x8 )
	sw x15 ,  8 ( x8 )
	lw x15 ,  28 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  28 ( x8 )
	lw x15 ,  12 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  12 ( x8 )
	bltu x0, x15, .LBB0_57
.LBB0_48:                               //  %if.then133
	lw x15 ,  16 ( x8 )
	addi x19 ,  x15 ,  -1
	sw x19 ,  16 ( x8 )
	blt x0, x15, .LBB0_56
.LBB0_49:                               //  %if.then138
	lw x15 ,  20 ( x8 )
	addi x19 ,  x0 ,  11
	addi x11 ,  x0 ,  100
	sw x19 ,  16 ( x8 )
	addi x18 ,  x15 ,  1899
	addi x14 ,  x15 ,  -1
	add x10 ,  x0 ,  x18
	sw x14 ,  20 ( x8 )
	call __modsi3
	andi x15 ,  x18 ,  3
	bltu x0, x15, .LBB0_52
.LBB0_50:                               //  %if.then138
	bltu x0, x10, .LBB0_54
.LBB0_52:                               //  %lor.rhs151
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x18
	call __modsi3
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB0_54
.LBB0_53:                               //  %lor.rhs151
	addi x15 ,  x0 ,  364
	jal x0, .LBB0_55
.LBB0_54:
	addi x15 ,  x0 ,  365
.LBB0_55:                               //  %lor.end156
	sw x15 ,  28 ( x8 )
.LBB0_56:                               //  %if.end160
	addi x11 ,  x0 ,  48
	add x10 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __month_lengths&4095
	lui x15 ,  (__month_lengths>>12)&1048575
	slli x14 ,  x19 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x10 ,  x15
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	sw x15 ,  12 ( x8 )
.LBB0_57:                               //  %if.end166
	call __tz_unlock
	add x10 ,  x0 ,  x8
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
.Lfunc_end0:
	.size	localtime_r, .Lfunc_end0-localtime_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
