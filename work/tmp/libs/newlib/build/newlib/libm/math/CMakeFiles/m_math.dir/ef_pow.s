	.text
	.file	"ef_pow.c"
	.globl	__ieee754_powf          //  -- Begin function __ieee754_powf
	.type	__ieee754_powf,@function
__ieee754_powf:                         //  @__ieee754_powf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  2147483647&4095
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	lui x25 ,  (2147483647>>12)&1048575
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x10
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	and x20 ,  x15 ,  x8
	beq x0, x20, .LBB0_6
.LBB0_1:                                //  %if.end9
	and x19 ,  x15 ,  x9
	lui x21 ,  (2139095040>>12)&1048575
	bltu x21, x19, .LBB0_8
.LBB0_2:                                //  %if.end9
	lui x30 ,  2139095041&4095
	lui x15 ,  (2139095041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x20, x15, .LBB0_8
.LBB0_3:                                //  %if.end18
	add x26 ,  x0 ,  x0
	blt x9, x0, .LBB0_4
.LBB0_14:                               //  %if.end36
	lui x27 ,  (1065353216>>12)&1048575
	beq x20, x27, .LBB0_21
.LBB0_15:                               //  %if.end36
	bne x20, x21, .LBB0_23
.LBB0_16:                               //  %if.then38
	lui x10 ,  (1065353216>>12)&1048575
	beq x19, x10, .LBB0_80
.LBB0_17:                               //  %if.else41
	lui x30 ,  1065353217&4095
	lui x15 ,  (1065353217>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_29
.LBB0_18:                               //  %if.then43
	addi x15 ,  x0 ,  -1
	blt x15, x8, .LBB0_20
.LBB0_19:                               //  %if.then43
	add x8 ,  x0 ,  x0
.LBB0_20:                               //  %if.then43
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_80
.LBB0_6:                                //  %if.then
	slli x15 ,  x9 ,  1&31
	lui x14 ,  (8388608>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	xor x18 ,  x14 ,  x15
	call __addsf3
	lui x30 ,  -8388607&4095
	lui x15 ,  (-8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x18, x15, .LBB0_80
.LBB0_7:
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_80
.LBB0_8:                                //  %if.then12
	lui x10 ,  (1065353216>>12)&1048575
	bne x9, x10, .LBB0_10
.LBB0_9:                                //  %land.lhs.true
	lui x30 ,  -8388607&4095
	slli x15 ,  x8 ,  1&31
	lui x14 ,  (8388608>>12)&1048575
	xor x15 ,  x14 ,  x15
	lui x14 ,  (-8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_80
.LBB0_10:                               //  %if.else
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_80
.LBB0_4:                                //  %if.then20
	srli x15 ,  x20 ,  23&31
	addi x14 ,  x0 ,  150
	bgeu x14, x15, .LBB0_11
.LBB0_5:
	addi x26 ,  x0 ,  2
	lui x27 ,  (1065353216>>12)&1048575
	bne x20, x27, .LBB0_15
.LBB0_21:                               //  %if.then54
	blt x8, x0, .LBB0_28
.LBB0_22:
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_80
.LBB0_23:                               //  %if.end58
	lui x22 ,  (1073741824>>12)&1048575
	bne x8, x22, .LBB0_25
.LBB0_24:                               //  %if.then60
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
.LBB0_79:                               //  %if.then
	call __mulsf3
	jal x0, .LBB0_80
.LBB0_11:                               //  %if.else23
	sltiu x13 ,  x15 ,  127
	bltu x0, x13, .LBB0_14
.LBB0_12:                               //  %if.then25
	sub x14 ,  x14 ,  x15
	srl x15 ,  x20 ,  x14
	sll x14 ,  x15 ,  x14
	bne x14, x20, .LBB0_14
.LBB0_13:                               //  %if.then30
	andi x15 ,  x15 ,  1
	addi x14 ,  x0 ,  2
	sub x26 ,  x14 ,  x15
	lui x27 ,  (1065353216>>12)&1048575
	bne x20, x27, .LBB0_15
	jal x0, .LBB0_21
.LBB0_25:                               //  %if.end61
	blt x9, x0, .LBB0_30
.LBB0_26:                               //  %if.end61
	lui x15 ,  (1056964608>>12)&1048575
	bne x8, x15, .LBB0_30
.LBB0_27:                               //  %if.then65
	add x10 ,  x0 ,  x9
	call __ieee754_sqrtf
	jal x0, .LBB0_80
.LBB0_28:                               //  %if.then56
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __divsf3
	jal x0, .LBB0_80
.LBB0_29:                               //  %if.else45
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srai x14 ,  x8 ,  31&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x15 ,  x15 ,  x8
	and x10 ,  x15 ,  x14
	jal x0, .LBB0_80
.LBB0_30:                               //  %if.end68
	add x10 ,  x0 ,  x9
	call fabsf
	add x18 ,  x0 ,  x10
	beq x0, x19, .LBB0_37
.LBB0_31:                               //  %if.end68
	or x15 ,  x22 ,  x19
	beq x15, x21, .LBB0_37
.LBB0_32:                               //  %if.end95
	slt x15 ,  x9 ,  x0
	addi x22 ,  x15 ,  -1
	or x15 ,  x22 ,  x26
	beq x0, x15, .LBB0_43
.LBB0_33:                               //  %if.end104
	lui x30 ,  1291845633&4095
	lui x15 ,  (1291845633>>12)&1048575
	lui x24 ,  (-4096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x20, x15, .LBB0_44
.LBB0_34:                               //  %if.then106
	lui x30 ,  1065353203&4095
	lui x15 ,  (1065353203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x19, .LBB0_46
.LBB0_35:                               //  %if.then108
	blt x8, x0, .LBB0_48
.LBB0_36:                               //  %cond.false112
	add x10 ,  x0 ,  x0
	call __math_uflowf
	jal x0, .LBB0_80
.LBB0_37:                               //  %if.then75
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x18
	call __divsf3
	add x15 ,  x0 ,  x0
	blt x8, x15, .LBB0_39
.LBB0_38:                               //  %if.then75
	add x10 ,  x0 ,  x18
.LBB0_39:                               //  %if.then75
	bge x9, x0, .LBB0_80
.LBB0_40:                               //  %if.then81
	lui x30 ,  -1065353216&4095
	lui x15 ,  (-1065353216>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x15 ,  x19
	or x15 ,  x15 ,  x26
	beq x0, x15, .LBB0_54
.LBB0_41:                               //  %if.else88
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	slti x14 ,  x0 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x26, x14, .LBB0_80
.LBB0_42:
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_80
.LBB0_43:                               //  %if.then100
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	jal x0, .LBB0_55
.LBB0_44:                               //  %if.else153
	srli x21 ,  x19 ,  23&31
	add x9 ,  x0 ,  x0
	beq x21, x9, .LBB0_49
.LBB0_45:                               //  %if.else153
	addi x20 ,  x0 ,  -127
	lui x11 ,  (1266679808>>12)&1048575
	add x10 ,  x0 ,  x18
	call __mulsf3
	beq x21, x9, .LBB0_51
.LBB0_50:                               //  %if.else153
	add x10 ,  x0 ,  x19
.LBB0_51:                               //  %if.else153
	lui x30 ,  8388607&4095
	srai x15 ,  x10 ,  23&31
	lui x14 ,  (1885298>>12)&1048575
	sw x22 ,  16 ( x2 )             //  4-byte Folded Spill
	add x13 ,  x15 ,  x20
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1885298&4095
	and x15 ,  x15 ,  x10
	srli x30 ,  x30 ,  12&31
	or x19 ,  x27 ,  x15
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_58
.LBB0_52:                               //  %if.else172
	lui x30 ,  6140887&4095
	lui x14 ,  (6140887>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x15, x14, .LBB0_57
.LBB0_53:
	sw x13 ,  8 ( x2 )              //  4-byte Folded Spill
	slti x9 ,  x0 ,  1
	jal x0, .LBB0_59
.LBB0_46:                               //  %if.end116
	lui x30 ,  1065353224&4095
	lui x15 ,  (1065353224>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x19, x15, .LBB0_56
.LBB0_47:                               //  %if.then118
	bge x0, x8, .LBB0_36
.LBB0_48:                               //  %cond.true110
	add x10 ,  x0 ,  x0
	call __math_oflowf
	jal x0, .LBB0_80
.LBB0_49:
	addi x20 ,  x0 ,  -151
	lui x11 ,  (1266679808>>12)&1048575
	add x10 ,  x0 ,  x18
	call __mulsf3
	beq x21, x9, .LBB0_51
	jal x0, .LBB0_50
.LBB0_54:                               //  %if.then84
	add x11 ,  x0 ,  x10
.LBB0_55:                               //  %cleanup
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_80
.LBB0_57:                               //  %if.else175
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	addi x13 ,  x13 ,  1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x19 ,  x15 ,  x19
.LBB0_58:                               //  %do.body180
	sw x13 ,  8 ( x2 )              //  4-byte Folded Spill
.LBB0_59:                               //  %do.body180
	lui x30 ,  bp&4095
	lui x15 ,  (bp>>12)&1048575
	slli x14 ,  x9 ,  2&31
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	sw x14 ,  12 ( x2 )             //  4-byte Folded Spill
	or x15 ,  x15 ,  x30
	add x15 ,  x14 ,  x15
	lw x20 ,  0 ( x15 )
	add x11 ,  x0 ,  x20
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __divsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __mulsf3
	srai x15 ,  x19 ,  1&31
	lui x14 ,  (536870912>>12)&1048575
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	or x15 ,  x14 ,  x15
	slli x14 ,  x9 ,  21&31
	add x15 ,  x14 ,  x15
	lui x14 ,  (262144>>12)&1048575
	add x23 ,  x14 ,  x15
	add x10 ,  x0 ,  x23
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	lui x30 ,  -4096&4095
	srli x30 ,  x30 ,  12&31
	or x9 ,  x24 ,  x30
	and x19 ,  x9 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1045688642&4095
	lui x15 ,  (1045688642>>12)&1048575
	add x22 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1047278165&4095
	lui x15 ,  (1047278165>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	lui x30 ,  1049338629&4095
	lui x15 ,  (1049338629>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	lui x30 ,  1051372203&4095
	lui x15 ,  (1051372203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	lui x30 ,  1054567863&4095
	lui x15 ,  (1054567863>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __mulsf3
	lui x30 ,  1058642330&4095
	lui x15 ,  (1058642330>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x22
	call __mulsf3
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __addsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x11 ,  (1077936128>>12)&1048575
	add x22 ,  x0 ,  x10
	call __addsf3
	add x11 ,  x0 ,  x21
	call __addsf3
	lui x30 ,  -1069547520&4095
	and x23 ,  x9 ,  x10
	lui x15 ,  (-1069547520>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x23
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x22
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	call __addsf3
	and x20 ,  x9 ,  x10
	add x11 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x30 ,  1064712271&4095
	lui x15 ,  (1064712271>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  916308896&4095
	lui x15 ,  (916308896>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __addsf3
	lw x21 ,  12 ( x2 )             //  4-byte Folded Reload
	lui x30 ,  dp_l&4095
	lui x15 ,  (dp_l>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x21 ,  x15
	lw x10 ,  0 ( x15 )
	call __addsf3
	lui x30 ,  1064712192&4095
	lui x15 ,  (1064712192>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	call __addsf3
	lui x30 ,  dp_h&4095
	lui x15 ,  (dp_h>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x21 ,  x15
	lw x20 ,  0 ( x15 )
	add x10 ,  x0 ,  x20
	call __addsf3
	add x21 ,  x0 ,  x10
	lw x10 ,  8 ( x2 )              //  4-byte Folded Reload
	call __floatsisf
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __addsf3
	and x9 ,  x9 ,  x10
	add x11 ,  x0 ,  x22
	add x10 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	lw x22 ,  16 ( x2 )             //  4-byte Folded Reload
.LBB0_60:                               //  %if.end306
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x30 ,  -4096&4095
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x19 ,  x15 ,  x8
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	call __addsf3
	lui x30 ,  -1082130432&4095
	addi x15 ,  x26 ,  -1
	add x20 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	or x21 ,  x22 ,  x15
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	beq x21, x9, .LBB0_63
.LBB0_62:                               //  %if.end306
	add x8 ,  x0 ,  x27
.LBB0_63:                               //  %if.end306
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	and x22 ,  x15 ,  x20
	bge x0, x20, .LBB0_68
.LBB0_64:                               //  %if.then343
	lui x30 ,  1124073473&4095
	lui x15 ,  (1124073473>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x22, x15, .LBB0_67
.LBB0_65:                               //  %if.else350
	lui x15 ,  (1124073472>>12)&1048575
	bne x22, x15, .LBB0_72
.LBB0_66:                               //  %if.then353
	lui x30 ,  859351612&4095
	lui x15 ,  (859351612>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __gtsf2
	bge x0, x10, .LBB0_73
.LBB0_67:                               //  %if.then346
	xori x15 ,  x21 ,  0
	sltiu x10 ,  x15 ,  1
	call __math_oflowf
	jal x0, .LBB0_80
.LBB0_68:                               //  %if.else365
	lui x30 ,  1125515265&4095
	lui x15 ,  (1125515265>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x22, x15, .LBB0_71
.LBB0_69:                               //  %if.else372
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __lesf2
	blt x0, x10, .LBB0_72
.LBB0_70:                               //  %if.else372
	lui x15 ,  (1125515264>>12)&1048575
	bne x22, x15, .LBB0_72
.LBB0_71:                               //  %if.then368
	xori x15 ,  x21 ,  0
	sltiu x10 ,  x15 ,  1
	call __math_uflowf
.LBB0_80:                               //  %if.then
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.LBB0_72:                               //  %if.end386
	lui x30 ,  1056964609&4095
	lui x15 ,  (1056964609>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x22, x15, .LBB0_76
.LBB0_73:                               //  %if.then391
	srli x15 ,  x22 ,  23&31
	lui x30 ,  8388607&4095
	lui x14 ,  (8388608>>12)&1048575
	lui x13 ,  (8388607>>12)&1048575
	addi x12 ,  x0 ,  150
	addi x15 ,  x15 ,  -126
	srli x30 ,  x30 ,  12&31
	srl x15 ,  x14 ,  x15
	or x13 ,  x13 ,  x30
	add x15 ,  x20 ,  x15
	and x13 ,  x13 ,  x15
	or x13 ,  x14 ,  x13
	srli x14 ,  x15 ,  23&31
	andi x14 ,  x14 ,  255
	sub x12 ,  x12 ,  x14
	srl x9 ,  x13 ,  x12
	add x13 ,  x0 ,  x0
	bge x20, x13, .LBB0_75
.LBB0_74:
	sub x9 ,  x0 ,  x9
.LBB0_75:                               //  %if.then391
	lui x30 ,  -8388608&4095
	lui x13 ,  (-8388608>>12)&1048575
	addi x14 ,  x14 ,  -127
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sra x14 ,  x13 ,  x14
	and x11 ,  x15 ,  x14
	call __subsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __addsf3
	add x20 ,  x0 ,  x10
.LBB0_76:                               //  %if.end416
	lui x30 ,  -4096&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	lui x30 ,  1060205056&4095
	and x21 ,  x15 ,  x20
	lui x15 ,  (1060205056>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x30 ,  1060205080&4095
	lui x15 ,  (1060205080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  901758604&4095
	lui x15 ,  (901758604>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x18
	call __addsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __addsf3
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  858897228&4095
	lui x15 ,  (858897228>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1243747826&4095
	lui x15 ,  (-1243747826>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  948613973&4095
	lui x15 ,  (948613973>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -1154086047&4095
	lui x15 ,  (-1154086047>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __divsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	lui x30 ,  8388607&4095
	slli x15 ,  x9 ,  23&31
	add x11 ,  x10 ,  x15
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x11, .LBB0_78
.LBB0_77:                               //  %if.then470
	add x11 ,  x0 ,  x9
	call scalbnf
	add x11 ,  x0 ,  x10
.LBB0_78:                               //  %if.end479
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_79
.LBB0_56:                               //  %if.end126
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1098907648&4095
	lui x15 ,  (-1098907648>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1051372203&4095
	lui x15 ,  (1051372203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1056964608>>12)&1048575
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1069066752&4095
	lui x15 ,  (1069066752>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  921478512&4095
	lui x15 ,  (921478512>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1078416837&4095
	lui x15 ,  (-1078416837>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __addsf3
	lui x30 ,  -4096&4095
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x15 ,  x24 ,  x30
	and x9 ,  x15 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	jal x0, .LBB0_60
.Lfunc_end0:
	.size	__ieee754_powf, .Lfunc_end0-__ieee754_powf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	bp,@object              //  @bp
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
bp:
	.long	1065353216              //  float 1
	.long	1069547520              //  float 1.5
	.size	bp, 8

	.address_space	0
	.type	dp_l,@object            //  @dp_l
	.p2align	2
dp_l:
	.long	0                       //  float 0
	.long	902942684               //  float 1.56322085E-6
	.size	dp_l, 8

	.address_space	0
	.type	dp_h,@object            //  @dp_h
	.p2align	2
dp_h:
	.long	0                       //  float 0
	.long	1058390016              //  float 0.584960938
	.size	dp_h, 8

	.hidden	__math_oflowf
	.hidden	__math_uflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
