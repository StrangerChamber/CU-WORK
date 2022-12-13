	.text
	.file	"tzset_r.c"
	.globl	_tzset_unlocked_r       //  -- Begin function _tzset_unlocked_r
	.type	_tzset_unlocked_r,@function
_tzset_unlocked_r:                      //  @_tzset_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -112
	.cfi_adjust_cfa_offset 112
	sw x18 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  104 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x18 ,  x0 ,  x10
	call __gettzinfo
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call _getenv_r
	add x9 ,  x0 ,  x10
	lui x19 ,  (prev_tzenv>>12)&1048575
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %if.end
	lui x30 ,  prev_tzenv&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x11 ,  0 ( x15 )
	beq x0, x11, .LBB0_5
.LBB0_2:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	call strcmp
	beq x0, x10, .LBB0_64
.LBB0_3:                                //  %land.lhs.true.if.end6_crit_edge
	lui x30 ,  prev_tzenv&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	lui x30 ,  _tzname&4095
	lui x15 ,  (_tzname>>12)&1048575
	lui x14 ,  (.str.1>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str.1&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  _daylight&4095
	sw x14 ,  4 ( x15 )
	sw x14 ,  0 ( x15 )
	lui x15 ,  (_daylight>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _timezone&4095
	sw x0 ,  0 ( x15 )
	lui x15 ,  (_timezone>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  prev_tzenv&4095
	srli x30 ,  x30 ,  12&31
	sw x0 ,  0 ( x15 )
	or x8 ,  x19 ,  x30
	lw x10 ,  0 ( x8 )
	call free
	sw x0 ,  0 ( x8 )
	jal x0, .LBB0_64
.LBB0_5:
	add x10 ,  x0 ,  x0
.LBB0_6:                                //  %if.end6
	call free
	add x10 ,  x0 ,  x9
	call strlen
	addi x11 ,  x10 ,  1
	add x10 ,  x0 ,  x18
	call _malloc_r
	lui x30 ,  prev_tzenv&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x19 ,  x30
	sw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then10
	add x11 ,  x0 ,  x9
	call strcpy
.LBB0_8:                                //  %if.end12
	lbu x15 ,  0 ( x9 )
	addi x14 ,  x0 ,  58
	bne x15, x14, .LBB0_10
.LBB0_9:
	addi x9 ,  x9 ,  1
.LBB0_10:                               //  %if.end12
	lui x30 ,  __tzname_std&4095
	lui x22 ,  (__tzname_std>>12)&1048575
	lui x24 ,  (.str.2>>12)&1048575
	addi x18 ,  x2 ,  44
	sw x9 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x18 ,  12 ( x2 )
	or x15 ,  x22 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  8 ( x2 )
	or x15 ,  x24 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	bge x0, x10, .LBB0_64
.LBB0_11:                               //  %if.end21
	lw x15 ,  44 ( x2 )
	add x25 ,  x15 ,  x9
	slti x9 ,  x0 ,  1
	lbu x15 ,  0 ( x25 )
	xori x14 ,  x15 ,  43
	beq x0, x14, .LBB0_14
.LBB0_12:                               //  %if.end21
	xori x15 ,  x15 ,  45
	bltu x0, x15, .LBB0_15
.LBB0_13:                               //  %if.then25
	addi x9 ,  x0 ,  -1
.LBB0_14:                               //  %if.then30
	addi x25 ,  x25 ,  1
.LBB0_15:                               //  %if.end33
	lui x30 ,  .str.3&4095
	lui x23 ,  (.str.3>>12)&1048575
	addi x19 ,  x2 ,  54
	addi x20 ,  x2 ,  56
	addi x21 ,  x2 ,  58
	sh x0 ,  54 ( x2 )
	sh x0 ,  56 ( x2 )
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x25 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x19 ,  24 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x21 ,  8 ( x2 )
	or x15 ,  x23 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	bge x0, x10, .LBB0_64
.LBB0_16:                               //  %if.end38
	lui x30 ,  _tzname&4095
	lui x26 ,  (_tzname>>12)&1048575
	lhu x10 ,  56 ( x2 )
	addi x11 ,  x0 ,  60
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	lui x30 ,  __tzname_std&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x22 ,  x30
	sw x14 ,  0 ( x15 )
	call __mulsi3
	lhu x15 ,  54 ( x2 )
	lui x30 ,  3600&4095
	lui x22 ,  (3600>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	add x27 ,  x15 ,  x10
	lhu x10 ,  58 ( x2 )
	call __mulsi3
	add x10 ,  x10 ,  x27
	add x11 ,  x0 ,  x9
	call __mulsi3
	lui x30 ,  __tzname_dst&4095
	lw x15 ,  44 ( x2 )
	lui x9 ,  (__tzname_dst>>12)&1048575
	sw x10 ,  36 ( x8 )
	sw x18 ,  12 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	lui x30 ,  .str.2&4095
	srli x30 ,  x30 ,  12&31
	sw x14 ,  8 ( x2 )
	or x14 ,  x24 ,  x30
	add x24 ,  x15 ,  x25
	sw x14 ,  4 ( x2 )
	sw x24 ,  0 ( x2 )
	call siscanf
	lui x30 ,  _tzname&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x26 ,  x30
	bge x0, x10, .LBB0_23
.LBB0_17:                               //  %if.else54
	lui x30 ,  __tzname_dst&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x9 ,  x30
	slti x9 ,  x0 ,  1
	sw x14 ,  4 ( x15 )
	lw x15 ,  44 ( x2 )
	add x24 ,  x15 ,  x24
	lbu x15 ,  0 ( x24 )
	xori x14 ,  x15 ,  43
	beq x0, x14, .LBB0_20
.LBB0_18:                               //  %if.else54
	xori x15 ,  x15 ,  45
	bltu x0, x15, .LBB0_21
.LBB0_19:                               //  %if.then60
	addi x9 ,  x0 ,  -1
.LBB0_20:                               //  %if.then66
	addi x24 ,  x24 ,  1
.LBB0_21:                               //  %if.end69
	lui x30 ,  .str.3&4095
	sh x0 ,  56 ( x2 )
	sh x0 ,  58 ( x2 )
	sh x0 ,  54 ( x2 )
	sw x0 ,  44 ( x2 )
	sw x19 ,  24 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x21 ,  8 ( x2 )
	sw x24 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	bge x0, x10, .LBB0_24
.LBB0_22:                               //  %if.else80
	lhu x10 ,  56 ( x2 )
	addi x11 ,  x0 ,  60
	call __mulsi3
	lhu x15 ,  54 ( x2 )
	lui x30 ,  3600&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	add x23 ,  x15 ,  x10
	lhu x10 ,  58 ( x2 )
	call __mulsi3
	add x10 ,  x10 ,  x23
	add x11 ,  x0 ,  x9
	call __mulsi3
	jal x0, .LBB0_25
.LBB0_23:                               //  %if.then50
	lw x14 ,  0 ( x15 )
	lui x30 ,  _timezone&4095
	srli x30 ,  x30 ,  12&31
	sw x14 ,  4 ( x15 )
	lw x15 ,  36 ( x8 )
	lui x14 ,  (_timezone>>12)&1048575
	or x14 ,  x14 ,  x30
	lui x30 ,  _daylight&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  0 ( x14 )
	lui x15 ,  (_daylight>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x0 ,  0 ( x15 )
	jal x0, .LBB0_64
.LBB0_24:                               //  %if.then73
	lw x15 ,  36 ( x8 )
	lui x30 ,  -3600&4095
	lui x14 ,  (-3600>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x10 ,  x14 ,  x15
.LBB0_25:                               //  %if.end92
	lw x15 ,  44 ( x2 )
	sw x10 ,  68 ( x8 )
	addi x23 ,  x0 ,  44
	add x9 ,  x15 ,  x24
	lbu x15 ,  0 ( x9 )
	bne x15, x23, .LBB0_27
.LBB0_26:
	addi x9 ,  x9 ,  1
.LBB0_27:                               //  %if.end92
	lbu x24 ,  0 ( x9 )
	xori x15 ,  x24 ,  77
	bltu x0, x15, .LBB0_33
.LBB0_28:                               //  %if.then105
	addi x15 ,  x2 ,  48
	lui x30 ,  .str.4&4095
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x9 ,  0 ( x2 )
	sw x15 ,  24 ( x2 )
	addi x15 ,  x2 ,  50
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x2 )
	addi x15 ,  x2 ,  52
	sw x15 ,  8 ( x2 )
	lui x15 ,  (.str.4>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	xori x15 ,  x10 ,  3
	bltu x0, x15, .LBB0_64
.LBB0_29:                               //  %lor.lhs.false
	lhu x15 ,  52 ( x2 )
	lui x30 ,  65535&4095
	lui x13 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	addi x14 ,  x15 ,  -1
	and x14 ,  x12 ,  x14
	addi x12 ,  x0 ,  11
	bltu x12, x14, .LBB0_64
.LBB0_30:                               //  %lor.lhs.false116
	lhu x14 ,  50 ( x2 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	addi x12 ,  x14 ,  -1
	and x13 ,  x13 ,  x12
	addi x12 ,  x0 ,  4
	bltu x12, x13, .LBB0_64
.LBB0_31:                               //  %lor.lhs.false116
	lhu x13 ,  48 ( x2 )
	addi x12 ,  x0 ,  6
	bltu x12, x13, .LBB0_64
.LBB0_32:                               //  %if.end129
	sw x15 ,  12 ( x8 )
	addi x15 ,  x0 ,  77
	sw x13 ,  20 ( x8 )
	sw x14 ,  16 ( x8 )
	sb x15 ,  8 ( x8 )
	lw x15 ,  44 ( x2 )
	add x26 ,  x15 ,  x9
	jal x0, .LBB0_41
.LBB0_33:                               //  %if.else146
	addi x25 ,  x0 ,  74
	bne x24, x25, .LBB0_35
.LBB0_34:
	addi x9 ,  x9 ,  1
.LBB0_35:                               //  %if.else146
	addi x11 ,  x2 ,  40
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x9
	call strtoul
	lw x26 ,  40 ( x2 )
	sh x10 ,  48 ( x2 )
	beq x26, x9, .LBB0_39
.LBB0_36:                               //  %if.else188
	beq x24, x25, .LBB0_38
.LBB0_37:                               //  %if.else188
	addi x25 ,  x0 ,  68
.LBB0_38:                               //  %if.else188
	lui x30 ,  65535&4095
	lui x15 ,  (65535>>12)&1048575
	sb x25 ,  8 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x10
	jal x0, .LBB0_40
.LBB0_39:                               //  %if.then161
	addi x15 ,  x0 ,  2
	sw x15 ,  16 ( x8 )
	addi x15 ,  x0 ,  3
	sw x15 ,  12 ( x8 )
	addi x15 ,  x0 ,  77
	sb x15 ,  8 ( x8 )
	add x15 ,  x0 ,  x0
.LBB0_40:                               //  %if.end197
	sw x15 ,  20 ( x8 )
.LBB0_41:                               //  %if.end198
	addi x25 ,  x0 ,  2
	sh x0 ,  56 ( x2 )
	sh x0 ,  54 ( x2 )
	sw x0 ,  44 ( x2 )
	lui x30 ,  7200&4095
	lui x24 ,  (7200>>12)&1048575
	sh x25 ,  58 ( x2 )
	srli x30 ,  x30 ,  12&31
	lbu x15 ,  0 ( x26 )
	or x10 ,  x24 ,  x30
	xori x15 ,  x15 ,  47
	bltu x0, x15, .LBB0_43
.LBB0_42:                               //  %if.then202
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	sw x19 ,  24 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x21 ,  8 ( x2 )
	sw x26 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	lhu x10 ,  56 ( x2 )
	addi x11 ,  x0 ,  60
	call __mulsi3
	add x9 ,  x0 ,  x10
	lhu x10 ,  58 ( x2 )
	lui x30 ,  3600&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	call __mulsi3
	lhu x14 ,  54 ( x2 )
	lw x15 ,  44 ( x2 )
	jal x0, .LBB0_44
.LBB0_43:
	add x9 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
	add x14 ,  x0 ,  x9
.LBB0_44:                               //  %if.end204
	add x14 ,  x14 ,  x9
	add x9 ,  x15 ,  x26
	add x14 ,  x10 ,  x14
	sw x14 ,  24 ( x8 )
	lbu x15 ,  0 ( x9 )
	bne x15, x23, .LBB0_46
.LBB0_45:
	addi x9 ,  x9 ,  1
.LBB0_46:                               //  %if.end204
	lbu x23 ,  0 ( x9 )
	xori x15 ,  x23 ,  77
	bltu x0, x15, .LBB0_52
.LBB0_47:                               //  %if.then105.1
	addi x15 ,  x2 ,  48
	lui x30 ,  .str.4&4095
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x9 ,  0 ( x2 )
	sw x15 ,  24 ( x2 )
	addi x15 ,  x2 ,  50
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x2 )
	addi x15 ,  x2 ,  52
	sw x15 ,  8 ( x2 )
	lui x15 ,  (.str.4>>12)&1048575
	or x15 ,  x15 ,  x30
	sw x15 ,  4 ( x2 )
	call siscanf
	xori x15 ,  x10 ,  3
	bltu x0, x15, .LBB0_64
.LBB0_48:                               //  %lor.lhs.false.1
	lhu x15 ,  52 ( x2 )
	lui x30 ,  65535&4095
	lui x13 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	addi x14 ,  x15 ,  -1
	and x14 ,  x12 ,  x14
	addi x12 ,  x0 ,  11
	bltu x12, x14, .LBB0_64
.LBB0_49:                               //  %lor.lhs.false116.1
	lhu x14 ,  50 ( x2 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	addi x12 ,  x14 ,  -1
	and x13 ,  x13 ,  x12
	addi x12 ,  x0 ,  4
	bltu x12, x13, .LBB0_64
.LBB0_50:                               //  %lor.lhs.false116.1
	lhu x13 ,  48 ( x2 )
	addi x12 ,  x0 ,  6
	bltu x12, x13, .LBB0_64
.LBB0_51:                               //  %if.end129.1
	sw x15 ,  44 ( x8 )
	addi x15 ,  x0 ,  77
	sw x13 ,  52 ( x8 )
	sw x14 ,  48 ( x8 )
	sb x15 ,  40 ( x8 )
	lw x15 ,  44 ( x2 )
	add x15 ,  x15 ,  x9
	jal x0, .LBB0_60
.LBB0_52:                               //  %if.else146.1
	addi x26 ,  x0 ,  74
	bne x23, x26, .LBB0_54
.LBB0_53:
	addi x9 ,  x9 ,  1
.LBB0_54:                               //  %if.else146.1
	addi x11 ,  x2 ,  40
	addi x12 ,  x0 ,  10
	add x10 ,  x0 ,  x9
	call strtoul
	lw x15 ,  40 ( x2 )
	sh x10 ,  48 ( x2 )
	beq x15, x9, .LBB0_58
.LBB0_55:                               //  %if.else188.1
	beq x23, x26, .LBB0_57
.LBB0_56:                               //  %if.else188.1
	addi x26 ,  x0 ,  68
.LBB0_57:                               //  %if.else188.1
	lui x30 ,  65535&4095
	lui x14 ,  (65535>>12)&1048575
	sb x26 ,  40 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x10
	jal x0, .LBB0_59
.LBB0_58:                               //  %if.else174.1
	slti x14 ,  x0 ,  1
	sw x14 ,  48 ( x8 )
	addi x14 ,  x0 ,  11
	sw x14 ,  44 ( x8 )
	addi x14 ,  x0 ,  77
	sb x14 ,  40 ( x8 )
	add x14 ,  x0 ,  x0
.LBB0_59:                               //  %if.end198.1
	sw x14 ,  52 ( x8 )
.LBB0_60:                               //  %if.end198.1
	sh x25 ,  58 ( x2 )
	sh x0 ,  56 ( x2 )
	sh x0 ,  54 ( x2 )
	sw x0 ,  44 ( x2 )
	lui x30 ,  7200&4095
	lbu x14 ,  0 ( x15 )
	srli x30 ,  x30 ,  12&31
	or x10 ,  x24 ,  x30
	xori x14 ,  x14 ,  47
	bltu x0, x14, .LBB0_62
.LBB0_61:                               //  %if.then202.1
	lui x30 ,  .str.5&4095
	lui x14 ,  (.str.5>>12)&1048575
	sw x19 ,  24 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x18 ,  28 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x21 ,  8 ( x2 )
	sw x15 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x14 ,  4 ( x2 )
	call siscanf
	lhu x10 ,  56 ( x2 )
	addi x11 ,  x0 ,  60
	call __mulsi3
	add x9 ,  x0 ,  x10
	lhu x10 ,  58 ( x2 )
	lui x30 ,  3600&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x22 ,  x30
	call __mulsi3
	lhu x15 ,  54 ( x2 )
	jal x0, .LBB0_63
.LBB0_62:
	add x9 ,  x0 ,  x0
	add x15 ,  x0 ,  x9
.LBB0_63:                               //  %if.end204.1
	add x15 ,  x15 ,  x9
	add x15 ,  x10 ,  x15
	lw x10 ,  4 ( x8 )
	sw x15 ,  56 ( x8 )
	call __tzcalc_limits
	lw x15 ,  36 ( x8 )
	lui x30 ,  _timezone&4095
	lui x14 ,  (_timezone>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  _daylight&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  0 ( x14 )
	lw x14 ,  68 ( x8 )
	xor x15 ,  x14 ,  x15
	lui x14 ,  (_daylight>>12)&1048575
	sltu x15 ,  x0 ,  x15
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
.LBB0_64:                               //  %cleanup
	lw x8 ,  60 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  104 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  108 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  112
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_tzset_unlocked_r, .Lfunc_end0-_tzset_unlocked_r
	.cfi_endproc
                                        //  -- End function
	.globl	_tzset_r                //  -- Begin function _tzset_r
	.type	_tzset_r,@function
_tzset_r:                               //  @_tzset_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	call __tz_lock
	add x10 ,  x0 ,  x8
	call _tzset_unlocked_r
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	jal x0, __tz_unlock
.Lfunc_end1:
	.size	_tzset_r, .Lfunc_end1-_tzset_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"TZ"
	.size	.str, 3

	.address_space	0
	.address_space	0
	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"GMT"
	.size	.str.1, 4

	.address_space	0
	.address_space	0
	.type	prev_tzenv,@object      //  @prev_tzenv
	.local	prev_tzenv
	.comm	prev_tzenv,4,4
	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"%10[^0-9,+-]%n"
	.size	.str.2, 15

	.address_space	0
	.type	__tzname_std,@object    //  @__tzname_std
	.local	__tzname_std
	.comm	__tzname_std,11,1
	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"%hu%n:%hu%n:%hu%n"
	.size	.str.3, 18

	.address_space	0
	.type	__tzname_dst,@object    //  @__tzname_dst
	.local	__tzname_dst
	.comm	__tzname_dst,11,1
	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"M%hu%n.%hu%n.%hu%n"
	.size	.str.4, 19

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"/%hu%n:%hu%n:%hu%n"
	.size	.str.5, 19


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
