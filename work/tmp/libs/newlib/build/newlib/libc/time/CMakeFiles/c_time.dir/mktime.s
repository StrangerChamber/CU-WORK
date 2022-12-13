	.text
	.file	"mktime.c"
	.globl	mktime                  //  -- Begin function mktime
	.type	mktime,@function
mktime:                                 //  @mktime
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
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
	add x8 ,  x0 ,  x10
	call __gettzinfo
	add x26 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call validate_structure
	lw x10 ,  4 ( x8 )
	addi x11 ,  x0 ,  60
	call __mulsi3
	lw x23 ,  16 ( x8 )
	lui x30 ,  _DAYS_BEFORE_MONTH&4095
	add x20 ,  x0 ,  x10
	lui x14 ,  (_DAYS_BEFORE_MONTH>>12)&1048575
	srli x30 ,  x30 ,  12&31
	lw x10 ,  8 ( x8 )
	or x14 ,  x14 ,  x30
	lui x30 ,  3600&4095
	lw x22 ,  0 ( x8 )
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x23 ,  2&31
	add x9 ,  x15 ,  x14
	lui x15 ,  (3600>>12)&1048575
	or x11 ,  x15 ,  x30
	call __mulsi3
	lw x15 ,  0 ( x9 )
	add x21 ,  x0 ,  x10
	lw x14 ,  12 ( x8 )
	lw x19 ,  20 ( x8 )
	add x9 ,  x14 ,  x15
	slti x15 ,  x23 ,  2
	addi x18 ,  x9 ,  -1
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %entry
	andi x15 ,  x19 ,  3
	bltu x0, x15, .LBB0_5
.LBB0_2:                                //  %land.rhs
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x19
	call __modsi3
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %land.end.thread
	add x18 ,  x0 ,  x9
	jal x0, .LBB0_5
.LBB0_4:                                //  %land.end
	addi x10 ,  x19 ,  1900
	addi x11 ,  x0 ,  400
	call __modsi3
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end
	lui x30 ,  10000&4095
	lui x15 ,  (10000>>12)&1048575
	addi x10 ,  x0 ,  -1
	lui x14 ,  (20000>>12)&1048575
	sw x18 ,  28 ( x8 )
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x10
	or x15 ,  x15 ,  x30
	lui x30 ,  20000&4095
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x19
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_69
.LBB0_6:                                //  %if.end28
	add x15 ,  x22 ,  x20
	add x24 ,  x21 ,  x15
	slti x15 ,  x19 ,  71
	bltu x0, x15, .LBB0_13
.LBB0_7:                                //  %for.body.preheader
	sw x26 ,  8 ( x2 )              //  4-byte Folded Spill
	addi x20 ,  x0 ,  70
	add x26 ,  x0 ,  x0
	addi x21 ,  x0 ,  1970
	addi x27 ,  x19 ,  -70
	addi x22 ,  x0 ,  400
	addi x23 ,  x0 ,  100
	addi x9 ,  x0 ,  365
	addi x25 ,  x0 ,  366
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	jal x0, .LBB0_10
.LBB0_8:                                //  %land.end49.thread
                                        //    in Loop: Header=BB0_10 Depth=1
	add x15 ,  x0 ,  x25
.LBB0_9:                                //  %land.end49.thread405
                                        //    in Loop: Header=BB0_10 Depth=1
	add x18 ,  x18 ,  x15
	addi x21 ,  x21 ,  1
	addi x20 ,  x20 ,  1
	addi x26 ,  x26 ,  1
	beq x27, x26, .LBB0_15
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __udivsi3
	add x11 ,  x0 ,  x22
	call __mulsi3
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	call __udivsi3
	add x11 ,  x0 ,  x23
	call __mulsi3
	addi x15 ,  x26 ,  70
	andi x14 ,  x15 ,  3
	add x15 ,  x0 ,  x9
	bltu x0, x14, .LBB0_9
.LBB0_11:                               //  %land.rhs39
                                        //    in Loop: Header=BB0_10 Depth=1
	addi x15 ,  x10 ,  -70
	bne x15, x26, .LBB0_8
.LBB0_12:                               //  %land.end49
                                        //    in Loop: Header=BB0_10 Depth=1
	addi x14 ,  x24 ,  -1970
	add x15 ,  x0 ,  x9
	beq x14, x26, .LBB0_8
	jal x0, .LBB0_9
.LBB0_13:                               //  %if.else
	xori x15 ,  x19 ,  70
	bltu x0, x15, .LBB0_16
.LBB0_14:
	addi x19 ,  x0 ,  70
	jal x0, .LBB0_29
.LBB0_15:
	lw x26 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	jal x0, .LBB0_29
.LBB0_16:                               //  %for.cond56.preheader
	addi x15 ,  x0 ,  68
	blt x15, x19, .LBB0_23
.LBB0_17:                               //  %for.body60.preheader
	add x14 ,  x0 ,  x0
	addi x15 ,  x0 ,  1969
	addi x9 ,  x0 ,  365
	addi x20 ,  x0 ,  100
	addi x21 ,  x0 ,  400
	addi x23 ,  x0 ,  366
	add x22 ,  x0 ,  x15
	andi x14 ,  x14 ,  1
	add x15 ,  x0 ,  x9
	beq x0, x14, .LBB0_19
	jal x0, .LBB0_21
.LBB0_18:                               //  %land.end74.thread
	add x15 ,  x0 ,  x23
.LBB0_19:                               //  %land.end74.thread406
                                        //  =>This Inner Loop Header: Depth=1
	addi x12 ,  x22 ,  -1901
	sub x18 ,  x18 ,  x15
	addi x15 ,  x22 ,  -1
	andi x13 ,  x12 ,  3
	xori x14 ,  x13 ,  0
	sltiu x14 ,  x14 ,  1
	bge x19, x12, .LBB0_24
.LBB0_20:                               //  %for.body60
                                        //    in Loop: Header=BB0_19 Depth=1
	add x22 ,  x0 ,  x15
	andi x14 ,  x14 ,  1
	add x15 ,  x0 ,  x9
	beq x0, x14, .LBB0_19
.LBB0_21:                               //  %land.rhs64
	addi x10 ,  x22 ,  -1900
	add x11 ,  x0 ,  x20
	call __modsi3
	bltu x0, x10, .LBB0_18
.LBB0_22:                               //  %land.end74
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __modsi3
	add x15 ,  x0 ,  x9
	bltu x0, x10, .LBB0_19
	jal x0, .LBB0_18
.LBB0_23:
	addi x9 ,  x0 ,  365
	jal x0, .LBB0_28
.LBB0_24:                               //  %for.end78
	addi x9 ,  x0 ,  365
	bltu x0, x13, .LBB0_28
.LBB0_25:                               //  %land.rhs82
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x19
	call __modsi3
	beq x0, x10, .LBB0_27
.LBB0_26:                               //  %land.end92.thread
	addi x9 ,  x0 ,  366
	jal x0, .LBB0_28
.LBB0_27:                               //  %land.end92
	addi x10 ,  x19 ,  1900
	addi x11 ,  x0 ,  400
	call __modsi3
	beq x0, x10, .LBB0_26
.LBB0_28:                               //  %land.end92.thread407
	sub x18 ,  x18 ,  x9
.LBB0_29:                               //  %if.end96
	lui x30 ,  86400&4095
	add x20 ,  x0 ,  x0
	lui x15 ,  (86400>>12)&1048575
	srai x11 ,  x18 ,  31&31
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x20
	or x12 ,  x15 ,  x30
	call __muldi3
	srai x15 ,  x24 ,  31&31
	add x24 ,  x24 ,  x10
	add x15 ,  x15 ,  x11
	sltu x14 ,  x24 ,  x10
	add x21 ,  x14 ,  x15
	call __tz_lock
	call _tzset_unlocked
	lui x30 ,  _daylight&4095
	lui x15 ,  (_daylight>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_36
.LBB0_30:                               //  %if.then100
	lw x23 ,  32 ( x8 )
	slti x15 ,  x0 ,  1
	blt x23, x15, .LBB0_32
.LBB0_31:                               //  %if.then100
	add x23 ,  x0 ,  x15
.LBB0_32:                               //  %if.then100
	lw x15 ,  20 ( x8 )
	addi x10 ,  x15 ,  1900
	lw x15 ,  4 ( x26 )
	beq x10, x15, .LBB0_34
.LBB0_33:                               //  %lor.lhs.false110
	call __tzcalc_limits
	beq x0, x10, .LBB0_47
.LBB0_34:                               //  %if.then113
	lw x15 ,  68 ( x26 )
	lw x11 ,  60 ( x26 )
	lw x12 ,  64 ( x26 )
	srai x13 ,  x15 ,  31&31
	sltu x10 ,  x11 ,  x15
	sub x14 ,  x12 ,  x13
	sub x14 ,  x14 ,  x10
	beq x21, x14, .LBB0_37
.LBB0_35:                               //  %if.then113
	slt x14 ,  x21 ,  x14
	jal x0, .LBB0_38
.LBB0_36:                               //  %if.end251.thread
	addi x19 ,  x26 ,  36
	add x23 ,  x0 ,  x24
	add x22 ,  x0 ,  x20
	jal x0, .LBB0_66
.LBB0_37:
	sub x14 ,  x11 ,  x15
	sltu x14 ,  x24 ,  x14
.LBB0_38:                               //  %if.then113
	xori x10 ,  x14 ,  1
	lw x14 ,  36 ( x26 )
	srai x5 ,  x14 ,  31&31
	sub x12 ,  x12 ,  x5
	sltu x5 ,  x11 ,  x14
	sub x11 ,  x11 ,  x14
	sub x12 ,  x12 ,  x5
	bltu x0, x10, .LBB0_41
.LBB0_39:                               //  %if.then113
	beq x21, x12, .LBB0_46
.LBB0_40:                               //  %if.then113
	slt x10 ,  x21 ,  x12
	xori x10 ,  x10 ,  1
	bltu x0, x10, .LBB0_47
.LBB0_41:                               //  %if.else141
	lw x10 ,  32 ( x26 )
	sub x10 ,  x10 ,  x13
	lw x13 ,  28 ( x26 )
	sltu x5 ,  x13 ,  x15
	sub x10 ,  x10 ,  x5
	beq x21, x10, .LBB0_50
.LBB0_42:                               //  %if.else141
	slt x13 ,  x21 ,  x10
	xori x13 ,  x13 ,  1
	bne x21, x12, .LBB0_51
.LBB0_43:
	sltu x12 ,  x24 ,  x11
	lw x11 ,  0 ( x26 )
	bne x11, x20, .LBB0_52
.LBB0_44:
	or x22 ,  x13 ,  x12
	blt x23, x0, .LBB0_45
.LBB0_53:                               //  %if.else141
	xor x13 ,  x22 ,  x23
	xori x13 ,  x13 ,  1
	bltu x0, x13, .LBB0_45
.LBB0_54:                               //  %if.then164
	sub x9 ,  x14 ,  x15
	bltu x0, x22, .LBB0_56
.LBB0_55:                               //  %if.then164
	sub x9 ,  x0 ,  x9
.LBB0_56:                               //  %if.then164
	lw x15 ,  0 ( x8 )
	add x10 ,  x0 ,  x8
	lw x25 ,  12 ( x8 )
	add x15 ,  x9 ,  x15
	sw x15 ,  0 ( x8 )
	call validate_structure
	srai x15 ,  x9 ,  31&31
	add x23 ,  x9 ,  x24
	add x15 ,  x15 ,  x21
	sltu x14 ,  x23 ,  x24
	add x21 ,  x14 ,  x15
	lw x15 ,  12 ( x8 )
	sub x14 ,  x15 ,  x25
	beq x0, x14, .LBB0_48
.LBB0_57:                               //  %if.then184
	slti x13 ,  x0 ,  1
	addi x15 ,  x0 ,  -1
	add x12 ,  x0 ,  x13
	blt x14, x15, .LBB0_59
.LBB0_58:                               //  %if.then184
	add x12 ,  x0 ,  x14
.LBB0_59:                               //  %if.then184
	blt x13, x14, .LBB0_61
.LBB0_60:                               //  %if.then184
	add x15 ,  x0 ,  x12
.LBB0_61:                               //  %if.then184
	lw x14 ,  28 ( x8 )
	add x18 ,  x18 ,  x15
	add x9 ,  x15 ,  x14
	sw x9 ,  28 ( x8 )
	blt x9, x0, .LBB0_70
.LBB0_62:                               //  %if.else220
	andi x15 ,  x19 ,  3
	beq x0, x15, .LBB0_72
.LBB0_63:                               //  %lor.rhs228
	addi x15 ,  x0 ,  365
	blt x9, x15, .LBB0_48
	jal x0, .LBB0_78
.LBB0_46:
	sltu x10 ,  x24 ,  x11
	xori x10 ,  x10 ,  1
	beq x0, x10, .LBB0_41
.LBB0_47:
	add x22 ,  x0 ,  x23
	add x23 ,  x0 ,  x24
.LBB0_48:                               //  %if.end251
	slti x15 ,  x0 ,  1
	beq x22, x15, .LBB0_65
.LBB0_49:                               //  %if.end251
	addi x19 ,  x26 ,  36
	jal x0, .LBB0_66
.LBB0_50:
	sub x13 ,  x13 ,  x15
	sltu x13 ,  x24 ,  x13
	xori x13 ,  x13 ,  1
	beq x21, x12, .LBB0_43
.LBB0_51:                               //  %if.else141
	slt x12 ,  x21 ,  x12
	lw x11 ,  0 ( x26 )
	beq x11, x20, .LBB0_44
.LBB0_52:                               //  %if.else141
	and x22 ,  x13 ,  x12
	bge x23, x0, .LBB0_53
.LBB0_45:
	add x23 ,  x0 ,  x24
	slti x15 ,  x0 ,  1
	bne x22, x15, .LBB0_49
.LBB0_65:
	addi x19 ,  x26 ,  68
.LBB0_66:
	addi x10 ,  x18 ,  4
	addi x11 ,  x0 ,  7
	call __modsi3
	add x9 ,  x0 ,  x10
	bge x9, x20, .LBB0_68
.LBB0_67:
	addi x9 ,  x9 ,  7
.LBB0_68:
	lw x18 ,  0 ( x19 )
	call __tz_unlock
	srai x15 ,  x18 ,  31&31
	add x10 ,  x18 ,  x23
	sw x9 ,  24 ( x8 )
	sw x22 ,  32 ( x8 )
	add x15 ,  x15 ,  x21
	sltu x14 ,  x10 ,  x23
	add x11 ,  x14 ,  x15
.LBB0_69:                               //  %cleanup
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
.LBB0_70:                               //  %if.then199
	addi x10 ,  x19 ,  -1
	andi x15 ,  x10 ,  3
	beq x0, x15, .LBB0_74
.LBB0_71:
	addi x15 ,  x0 ,  364
	sw x15 ,  28 ( x8 )
	slti x15 ,  x0 ,  1
	beq x22, x15, .LBB0_65
	jal x0, .LBB0_49
.LBB0_72:                               //  %land.rhs224
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x19
	call __modsi3
	bltu x0, x10, .LBB0_73
.LBB0_76:                               //  %lor.rhs228
	addi x10 ,  x19 ,  1900
	addi x11 ,  x0 ,  400
	call __modsi3
	bne x10, x20, .LBB0_63
.LBB0_73:
	addi x15 ,  x0 ,  366
	blt x9, x15, .LBB0_48
.LBB0_78:                               //  %if.then242
	sub x15 ,  x9 ,  x15
	sw x15 ,  28 ( x8 )
	slti x15 ,  x0 ,  1
	beq x22, x15, .LBB0_65
	jal x0, .LBB0_49
.LBB0_74:                               //  %land.rhs204
	addi x11 ,  x0 ,  100
	call __modsi3
	bltu x0, x10, .LBB0_75
.LBB0_79:                               //  %lor.rhs208
	addi x10 ,  x19 ,  1899
	addi x11 ,  x0 ,  400
	call __modsi3
	bne x10, x20, .LBB0_71
.LBB0_75:
	addi x15 ,  x0 ,  365
	sw x15 ,  28 ( x8 )
	slti x15 ,  x0 ,  1
	beq x22, x15, .LBB0_65
	jal x0, .LBB0_49
.Lfunc_end0:
	.size	mktime, .Lfunc_end0-mktime
	.cfi_endproc
                                        //  -- End function
	.type	validate_structure,@function //  -- Begin function validate_structure
validate_structure:                     //  @validate_structure
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x9 ,  x0 ,  59
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
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
	lw x11 ,  0 ( x8 )
	bgeu x9, x11, .LBB1_5
.LBB1_1:                                //  %if.then
	addi x10 ,  x2 ,  4
	addi x12 ,  x0 ,  60
	call div
	lw x14 ,  4 ( x2 )
	lw x13 ,  4 ( x8 )
	lw x15 ,  8 ( x2 )
	add x11 ,  x14 ,  x13
	sw x15 ,  0 ( x8 )
	sw x11 ,  4 ( x8 )
	blt x15, x0, .LBB1_12
.LBB1_2:                                //  %if.end10
	bgeu x9, x11, .LBB1_6
.LBB1_3:                                //  %if.then16
	addi x10 ,  x2 ,  4
	addi x12 ,  x0 ,  60
	call div
	lw x14 ,  4 ( x2 )
	lw x13 ,  8 ( x8 )
	lw x15 ,  8 ( x2 )
	add x11 ,  x14 ,  x13
	sw x15 ,  4 ( x8 )
	sw x11 ,  8 ( x8 )
	blt x15, x0, .LBB1_4
.LBB1_7:                                //  %if.end30
	sltiu x15 ,  x11 ,  24
	bltu x0, x15, .LBB1_9
	jal x0, .LBB1_8
.LBB1_5:                                //  %entry.if.end10_crit_edge
	lw x11 ,  4 ( x8 )
	bltu x9, x11, .LBB1_3
.LBB1_6:                                //  %if.end10.if.end30_crit_edge
	lw x11 ,  8 ( x8 )
	sltiu x15 ,  x11 ,  24
	bltu x0, x15, .LBB1_9
	jal x0, .LBB1_8
.LBB1_12:                               //  %if.then6
	addi x11 ,  x11 ,  -1
	addi x15 ,  x15 ,  60
	sw x15 ,  0 ( x8 )
	sw x11 ,  4 ( x8 )
	bltu x9, x11, .LBB1_3
	jal x0, .LBB1_6
.LBB1_4:                                //  %if.then24
	addi x11 ,  x11 ,  -1
	addi x15 ,  x15 ,  60
	sw x15 ,  4 ( x8 )
	sw x11 ,  8 ( x8 )
	sltiu x15 ,  x11 ,  24
	bltu x0, x15, .LBB1_9
.LBB1_8:                                //  %if.then36
	addi x10 ,  x2 ,  4
	addi x12 ,  x0 ,  24
	call div
	lw x14 ,  4 ( x2 )
	lw x13 ,  12 ( x8 )
	lw x15 ,  8 ( x2 )
	add x14 ,  x14 ,  x13
	sw x15 ,  8 ( x8 )
	sw x14 ,  12 ( x8 )
	blt x15, x0, .LBB1_13
.LBB1_9:                                //  %if.end50
	lw x18 ,  16 ( x8 )
	addi x23 ,  x0 ,  11
	bgeu x23, x18, .LBB1_14
.LBB1_10:                               //  %if.then55
	addi x10 ,  x2 ,  4
	addi x12 ,  x0 ,  12
	add x11 ,  x0 ,  x18
	call div
	lw x15 ,  4 ( x2 )
	lw x14 ,  20 ( x8 )
	lw x18 ,  8 ( x2 )
	add x9 ,  x15 ,  x14
	sw x18 ,  16 ( x8 )
	sw x9 ,  20 ( x8 )
	bge x18, x0, .LBB1_15
.LBB1_11:                               //  %if.then63
	addi x9 ,  x9 ,  -1
	addi x18 ,  x18 ,  12
	sw x9 ,  20 ( x8 )
	sw x18 ,  16 ( x8 )
	addi x22 ,  x0 ,  28
	andi x15 ,  x9 ,  3
	bltu x0, x15, .LBB1_19
.LBB1_16:                               //  %land.rhs
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x9
	call __modsi3
	beq x0, x10, .LBB1_18
.LBB1_17:                               //  %land.end.thread
	addi x22 ,  x0 ,  29
	lw x21 ,  12 ( x8 )
	blt x0, x21, .LBB1_20
.LBB1_32:                               //  %while.body.preheader
	addi x24 ,  x0 ,  28
	addi x19 ,  x0 ,  100
	addi x20 ,  x0 ,  400
	addi x25 ,  x0 ,  29
	lui x26 ,  (DAYS_IN_MONTH>>12)&1048575
	slti x27 ,  x0 ,  1
	bltu x0, x18, .LBB1_39
.LBB1_33:                               //  %if.then91
	addi x18 ,  x9 ,  -1
	andi x15 ,  x18 ,  3
	sw x18 ,  20 ( x8 )
	beq x0, x15, .LBB1_40
.LBB1_34:
	add x9 ,  x0 ,  x18
	add x22 ,  x0 ,  x24
.LBB1_35:                               //  %cond.false
	add x15 ,  x0 ,  x23
.LBB1_36:                               //  %cond.false
	lui x30 ,  DAYS_IN_MONTH&4095
	slli x14 ,  x15 ,  2&31
	add x18 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x26 ,  x30
	add x14 ,  x14 ,  x13
	lw x14 ,  0 ( x14 )
.LBB1_37:                               //  %cond.end
	add x21 ,  x21 ,  x14
	blt x0, x21, .LBB1_43
.LBB1_38:                               //  %while.body
	beq x0, x18, .LBB1_33
.LBB1_39:                               //  %if.end112
	addi x15 ,  x18 ,  -1
	add x18 ,  x0 ,  x27
	add x14 ,  x0 ,  x22
	xori x13 ,  x15 ,  1
	bltu x0, x13, .LBB1_36
	jal x0, .LBB1_37
.LBB1_40:                               //  %land.rhs98
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __modsi3
	beq x0, x10, .LBB1_42
.LBB1_41:                               //  %land.end108.thread
	add x9 ,  x0 ,  x18
	add x22 ,  x0 ,  x25
	jal x0, .LBB1_35
.LBB1_42:                               //  %land.end108
	addi x10 ,  x9 ,  1899
	add x11 ,  x0 ,  x20
	call __modsi3
	bltu x0, x10, .LBB1_34
	jal x0, .LBB1_41
.LBB1_43:                               //  %while.cond.if.end165.loopexit_crit_edge
	sw x21 ,  12 ( x8 )
	sw x18 ,  16 ( x8 )
	jal x0, .LBB1_44
.LBB1_13:                               //  %if.then44
	addi x14 ,  x14 ,  -1
	addi x15 ,  x15 ,  24
	sw x14 ,  12 ( x8 )
	sw x15 ,  8 ( x8 )
	lw x18 ,  16 ( x8 )
	addi x23 ,  x0 ,  11
	bltu x23, x18, .LBB1_10
.LBB1_14:                               //  %if.end50.if.end69_crit_edge
	lw x9 ,  20 ( x8 )
.LBB1_15:                               //  %if.end69
	addi x22 ,  x0 ,  28
	andi x15 ,  x9 ,  3
	beq x0, x15, .LBB1_16
.LBB1_19:                               //  %land.end.thread255
	lw x21 ,  12 ( x8 )
	bge x0, x21, .LBB1_32
.LBB1_20:
	addi x23 ,  x0 ,  2
	lui x24 ,  (DAYS_IN_MONTH>>12)&1048575
	addi x25 ,  x0 ,  28
	add x26 ,  x0 ,  x0
	addi x19 ,  x0 ,  100
	addi x12 ,  x0 ,  400
	addi x27 ,  x0 ,  29
	add x20 ,  x0 ,  x9
	xori x14 ,  x18 ,  1
	slli x15 ,  x18 ,  2&31
	add x13 ,  x0 ,  x22
	beq x0, x14, .LBB1_24
	jal x0, .LBB1_23
.LBB1_21:                               //  %cond.end137.thread
                                        //    in Loop: Header=BB1_24 Depth=1
	sub x21 ,  x21 ,  x22
	add x18 ,  x0 ,  x23
	sw x23 ,  16 ( x8 )
	sw x21 ,  12 ( x8 )
.LBB1_22:                               //  %while.cond119
                                        //    in Loop: Header=BB1_24 Depth=1
	xori x14 ,  x18 ,  1
	slli x15 ,  x18 ,  2&31
	add x13 ,  x0 ,  x22
	beq x0, x14, .LBB1_24
.LBB1_23:                               //  %cond.false124
	lui x30 ,  DAYS_IN_MONTH&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x24 ,  x30
	add x13 ,  x15 ,  x13
	lw x13 ,  0 ( x13 )
.LBB1_24:                               //  %cond.end127
                                        //  =>This Inner Loop Header: Depth=1
	bge x13, x21, .LBB1_44
.LBB1_25:                               //  %while.body130
                                        //    in Loop: Header=BB1_24 Depth=1
	beq x0, x14, .LBB1_21
.LBB1_26:                               //  %cond.end137
                                        //    in Loop: Header=BB1_24 Depth=1
	lui x30 ,  DAYS_IN_MONTH&4095
	addi x18 ,  x18 ,  1
	srli x30 ,  x30 ,  12&31
	sw x18 ,  16 ( x8 )
	or x14 ,  x24 ,  x30
	add x15 ,  x15 ,  x14
	lw x15 ,  0 ( x15 )
	sub x21 ,  x21 ,  x15
	xori x15 ,  x18 ,  12
	sw x21 ,  12 ( x8 )
	bltu x0, x15, .LBB1_22
.LBB1_27:                               //  %if.then142
                                        //    in Loop: Header=BB1_24 Depth=1
	addi x9 ,  x20 ,  1
	add x18 ,  x0 ,  x26
	add x22 ,  x0 ,  x25
	sw x0 ,  16 ( x8 )
	andi x15 ,  x9 ,  3
	sw x9 ,  20 ( x8 )
	bltu x0, x15, .LBB1_31
.LBB1_28:                               //  %land.rhs149
                                        //    in Loop: Header=BB1_24 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x18 ,  x0 ,  x12
	call __modsi3
	add x12 ,  x0 ,  x18
	bltu x0, x10, .LBB1_30
.LBB1_29:                               //  %land.end159
                                        //    in Loop: Header=BB1_24 Depth=1
	addi x10 ,  x20 ,  1901
	add x11 ,  x0 ,  x18
	call __modsi3
	add x12 ,  x0 ,  x18
	add x18 ,  x0 ,  x26
	add x22 ,  x0 ,  x25
	bltu x0, x10, .LBB1_31
.LBB1_30:                               //  %land.end159.thread
                                        //    in Loop: Header=BB1_24 Depth=1
	add x18 ,  x0 ,  x26
	add x22 ,  x0 ,  x27
.LBB1_31:                               //  %while.cond119.outer
                                        //    in Loop: Header=BB1_24 Depth=1
	add x20 ,  x0 ,  x9
	xori x14 ,  x18 ,  1
	slli x15 ,  x18 ,  2&31
	add x13 ,  x0 ,  x22
	bltu x0, x14, .LBB1_23
	jal x0, .LBB1_24
.LBB1_44:                               //  %if.end165
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
.LBB1_18:                               //  %land.end
	addi x10 ,  x9 ,  1900
	addi x11 ,  x0 ,  400
	call __modsi3
	bltu x0, x10, .LBB1_19
	jal x0, .LBB1_17
.Lfunc_end1:
	.size	validate_structure, .Lfunc_end1-validate_structure
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	_DAYS_BEFORE_MONTH, 48

	.address_space	0
	.address_space	0
	.type	DAYS_IN_MONTH,@object   //  @DAYS_IN_MONTH
	.p2align	2
DAYS_IN_MONTH:
	.long	31                      //  0x1f
	.long	28                      //  0x1c
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.size	DAYS_IN_MONTH, 48


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
