	.text
	.file	"erf_lgamma.c"
	.globl	__ieee754_lgammaf_r     //  -- Begin function __ieee754_lgammaf_r
	.type	__ieee754_lgammaf_r,@function
__ieee754_lgammaf_r:                    //  @__ieee754_lgammaf_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	slti x15 ,  x0 ,  1
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x15 ,  0 ( x18 )
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x8
	srli x22 ,  x20 ,  23&31
	sltiu x15 ,  x22 ,  255
	bltu x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	jal x0, .LBB0_55
.LBB0_2:                                //  %if.end
	beq x0, x20, .LBB0_6
.LBB0_3:                                //  %if.end6
	addi x15 ,  x0 ,  56
	bltu x15, x22, .LBB0_8
.LBB0_4:                                //  %if.then8
	blt x8, x0, .LBB0_13
.LBB0_5:                                //  %if.else
	add x10 ,  x0 ,  x8
	call __ieee754_logf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_55
.LBB0_6:                                //  %if.then2
	bge x8, x0, .LBB0_54
.LBB0_7:                                //  %if.then4
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	jal x0, .LBB0_54
.LBB0_8:                                //  %if.end15
	add x23 ,  x0 ,  x0
	blt x8, x0, .LBB0_14
.LBB0_9:
	add x9 ,  x0 ,  x23
	add x19 ,  x0 ,  x8
.LBB0_10:                               //  %if.end37
	lui x30 ,  1065353215&4095
	lui x15 ,  (1065353215>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_17
.LBB0_11:                               //  %if.end37
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x21 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x8, x15, .LBB0_64
.LBB0_12:                               //  %if.end37
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x21 ,  x0 ,  x23
	beq x8, x15, .LBB0_64
	jal x0, .LBB0_19
.LBB0_13:                               //  %if.then10
	lui x30 ,  -2147483648&4095
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	xor x10 ,  x9 ,  x8
	call __ieee754_logf
	xor x10 ,  x9 ,  x10
	jal x0, .LBB0_55
.LBB0_14:                               //  %if.then17
	srli x15 ,  x20 ,  24&31
	sltiu x15 ,  x15 ,  75
	beq x0, x15, .LBB0_54
.LBB0_15:                               //  %if.end22
	addi x15 ,  x0 ,  124
	bltu x15, x22, .LBB0_23
.LBB0_16:                               //  %if.then.i
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x11
	call __kernel_sinf
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __nesf2
	bltu x0, x10, .LBB0_56
.LBB0_54:                               //  %if.end5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __divsf3
.LBB0_55:                               //  %cleanup
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
.LBB0_17:                               //  %if.end37
	lui x15 ,  (1065353216>>12)&1048575
	add x21 ,  x0 ,  x23
	beq x8, x15, .LBB0_64
.LBB0_18:                               //  %if.end37
	lui x15 ,  (1073741824>>12)&1048575
	add x21 ,  x0 ,  x23
	beq x8, x15, .LBB0_64
.LBB0_19:                               //  %if.else41
	srli x15 ,  x20 ,  30&31
	bltu x0, x15, .LBB0_25
.LBB0_20:                               //  %if.then43
	lui x30 ,  1063675494&4095
	lui x15 ,  (1063675494>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_36
.LBB0_21:                               //  %if.then45
	add x10 ,  x0 ,  x19
	call __ieee754_logf
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1060850207&4095
	xor x18 ,  x15 ,  x10
	lui x15 ,  (1060850207>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x15, x20, .LBB0_43
.LBB0_22:
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_38
.LBB0_23:                               //  %if.end.i
	lui x30 ,  -2147483648&4095
	lui x21 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	xor x9 ,  x15 ,  x8
	add x10 ,  x0 ,  x9
	call floorf
	add x11 ,  x0 ,  x9
	call __eqsf2
	beq x0, x10, .LBB0_33
.LBB0_24:                               //  %if.then3.i
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x9 ,  x0 ,  x10
	call floorf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	call __addsf3
	lui x11 ,  (1082130432>>12)&1048575
	add x9 ,  x0 ,  x10
	call __mulsf3
	call __fixsfsi
	addi x15 ,  x0 ,  6
	bltu x15, x10, .LBB0_48
.LBB0_34:                               //  %if.end26.i
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x10 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_35:                               //  %sw.bb29.i
	lui x10 ,  (1056964608>>12)&1048575
	add x11 ,  x0 ,  x9
	call __subsf3
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __kernel_cosf
	jal x0, .LBB0_53
.LBB0_25:                               //  %if.else158
	srli x15 ,  x20 ,  24&31
	add x10 ,  x0 ,  x19
	addi x14 ,  x0 ,  64
	bltu x14, x15, .LBB0_39
.LBB0_26:                               //  %if.then160
	call __fixsfsi
	add x20 ,  x0 ,  x10
	call __floatsisf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	lui x30 ,  939917159&4095
	lui x15 ,  (939917159>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  988886452&4095
	lui x15 ,  (988886452>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1020936420&4095
	lui x15 ,  (1020936420>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1041620198&4095
	lui x15 ,  (1041620198>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1051118714&4095
	lui x15 ,  (1051118714>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1046226010&4095
	lui x15 ,  (1046226010>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1113709761&4095
	lui x15 ,  (-1113709761>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  922081213&4095
	lui x15 ,  (922081213>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  978054870&4095
	lui x15 ,  (978054870>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1016643412&4095
	lui x15 ,  (1016643412>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1043337070&4095
	lui x15 ,  (1043337070>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1060688069&4095
	lui x15 ,  (1060688069>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1068641595&4095
	lui x15 ,  (1068641595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x22 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x22
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x19 ,  x0 ,  x10
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __addsf3
	add x21 ,  x0 ,  x10
	addi x15 ,  x20 ,  -3
	addi x14 ,  x0 ,  4
	bltu x14, x15, .LBB0_64
.LBB0_27:                               //  %if.then160
	lui x30 ,  JTI0_1&4095
	lui x14 ,  (JTI0_1>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_28:                               //  %sw.bb191
	lui x11 ,  (1086324736>>12)&1048575
	add x10 ,  x0 ,  x18
	call __addsf3
	add x22 ,  x0 ,  x10
.LBB0_29:                               //  %sw.bb194
	lui x11 ,  (1084227584>>12)&1048575
	add x10 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x22
	call __mulsf3
	add x22 ,  x0 ,  x10
.LBB0_30:                               //  %sw.bb197
	lui x11 ,  (1082130432>>12)&1048575
	add x10 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x22
	call __mulsf3
	add x22 ,  x0 ,  x10
.LBB0_31:                               //  %sw.bb200
	lui x11 ,  (1077936128>>12)&1048575
	add x10 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x22
	call __mulsf3
	add x22 ,  x0 ,  x10
.LBB0_32:                               //  %sw.bb203
	lui x11 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x18
	call __addsf3
	add x11 ,  x0 ,  x22
	call __mulsf3
	call __ieee754_logf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	jal x0, .LBB0_62
.LBB0_33:                               //  %if.else12.i
	lui x10 ,  (1258291200>>12)&1048575
	add x11 ,  x0 ,  x8
	call __subsf3
	andi x19 ,  x10 ,  1
	add x10 ,  x0 ,  x19
	call __floatsisf
	add x9 ,  x0 ,  x10
	slli x10 ,  x19 ,  2&31
	addi x15 ,  x0 ,  6
	bgeu x15, x10, .LBB0_34
.LBB0_48:                               //  %sw.default.i
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	jal x0, .LBB0_49
.LBB0_36:                               //  %if.else58
	lui x30 ,  1071490583&4095
	lui x15 ,  (1071490583>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bgeu x15, x20, .LBB0_44
.LBB0_37:
	add x18 ,  x0 ,  x0
	lui x10 ,  (1073741824>>12)&1048575
.LBB0_38:                               //  %sw.bb
	add x11 ,  x0 ,  x19
	call __subsf3
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  936608674&4095
	lui x15 ,  (936608674>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  963090279&4095
	lui x15 ,  (963090279>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  983323809&4095
	lui x15 ,  (983323809>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1005716094&4095
	lui x15 ,  (1005716094>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1032450049&4095
	lui x15 ,  (1032450049>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1033773887&4095
	lui x15 ,  (1033773887>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  943467637&4095
	lui x15 ,  (943467637>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  954369093&4095
	lui x15 ,  (954369093>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  973452852&4095
	lui x15 ,  (973452852>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  993881798&4095
	lui x15 ,  (993881798>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1017682197&4095
	lui x15 ,  (1017682197>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1051007590&4095
	lui x15 ,  (1051007590>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	jal x0, .LBB0_61
.LBB0_39:                               //  %if.else209
	call __ieee754_logf
	add x18 ,  x0 ,  x10
	addi x15 ,  x0 ,  184
	bltu x15, x22, .LBB0_47
.LBB0_40:                               //  %if.then212
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x19
	call __divsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1160395544&4095
	lui x15 ,  (-1160395544>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  979058130&4095
	lui x15 ,  (979058130>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -1172568484&4095
	lui x15 ,  (-1172568484>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  978324733&4095
	lui x15 ,  (978324733>>12)&1048575
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
	lui x30 ,  1034594987&4095
	lui x15 ,  (1034594987>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1054244637&4095
	lui x15 ,  (1054244637>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	jal x0, .LBB0_62
.LBB0_41:                               //  %sw.bb33.i
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __subsf3
.LBB0_49:                               //  %sw.epilog.i
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	jal x0, .LBB0_51
.LBB0_42:                               //  %sw.bb37.i
	lui x30 ,  -1077936128&4095
	lui x15 ,  (-1077936128>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x0
	call __kernel_cosf
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_53
.LBB0_43:                               //  %if.else51
	lui x30 ,  -1091806452&4095
	lui x15 ,  (-1091806452>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  1047343879&4095
	lui x15 ,  (1047343879>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_46
	jal x0, .LBB0_60
.LBB0_44:                               //  %if.else62
	lui x30 ,  1067296288&4095
	lui x15 ,  (1067296288>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x20, x15, .LBB0_59
.LBB0_45:                               //  %if.then64
	lui x30 ,  -1078257981&4095
	lui x15 ,  (-1078257981>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x21 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
.LBB0_46:                               //  %sw.bb97
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1180436185&4095
	lui x15 ,  (-1180436185>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  979826791&4095
	lui x15 ,  (979826791>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1150191618&4095
	lui x15 ,  (-1150191618>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1016280893&4095
	lui x15 ,  (1016280893>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1105780420&4095
	lui x15 ,  (-1105780420>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  967830007&4095
	lui x15 ,  (967830007>>12)&1048575
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1173540731&4095
	lui x15 ,  (-1173540731>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  991172249&4095
	lui x15 ,  (991172249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1138164482&4095
	lui x15 ,  (-1138164482>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1032083989&4095
	lui x15 ,  (1032083989>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  837164114&4095
	lui x15 ,  (837164114>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	lui x30 ,  967146347&4095
	lui x15 ,  (967146347>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1162349450&4095
	lui x15 ,  (-1162349450>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1002956551&4095
	lui x15 ,  (1002956551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1123660473&4095
	lui x15 ,  (-1123660473>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1056422238&4095
	lui x15 ,  (1056422238>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x21
	call __subsf3
	lui x30 ,  -1107767859&4095
	lui x15 ,  (-1107767859>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB0_61
.LBB0_47:                               //  %if.else232
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	jal x0, .LBB0_63
.LBB0_50:                               //  %sw.bb.i
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x10 ,  x0 ,  x9
.LBB0_51:                               //  %sw.epilog.i
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x0
	add x12 ,  x0 ,  x11
	call __kernel_sinf
.LBB0_53:                               //  %sw.epilog.i
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x21 ,  x30
	xor x19 ,  x15 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __nesf2
	beq x0, x10, .LBB0_54
.LBB0_56:                               //  %if.end28
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __mulsf3
	call fabsf
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	call __ieee754_logf
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __ltsf2
	bge x10, x0, .LBB0_58
.LBB0_57:                               //  %if.then34
	addi x15 ,  x0 ,  -1
	sw x15 ,  0 ( x18 )
.LBB0_58:                               //  %if.end35
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x19 ,  x15 ,  x8
	jal x0, .LBB0_10
.LBB0_59:                               //  %if.else66
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x19 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
.LBB0_60:                               //  %sw.bb132
	lui x30 ,  1012612190&4095
	lui x15 ,  (1012612190>>12)&1048575
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1047164280&4095
	lui x15 ,  (1047164280>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1064979378&4095
	lui x15 ,  (1064979378>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1069169383&4095
	lui x15 ,  (1069169383>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1059193076&4095
	lui x15 ,  (1059193076>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1113709761&4095
	lui x15 ,  (-1113709761>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  995284443&4095
	lui x15 ,  (995284443>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1037398703&4095
	lui x15 ,  (1037398703>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1061482463&4095
	lui x15 ,  (1061482463>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1074280749&4095
	lui x15 ,  (1074280749>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1075654334&4095
	lui x15 ,  (1075654334>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divsf3
	add x11 ,  x0 ,  x19
.LBB0_61:                               //  %if.end239
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
.LBB0_62:                               //  %if.end239
	call __addsf3
.LBB0_63:                               //  %if.end239
	add x21 ,  x0 ,  x10
.LBB0_64:                               //  %if.end239
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __subsf3
	blt x8, x23, .LBB0_55
.LBB0_65:                               //  %if.end239
	add x10 ,  x0 ,  x21
	jal x0, .LBB0_55
.Lfunc_end0:
	.size	__ieee754_lgammaf_r, .Lfunc_end0-__ieee754_lgammaf_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_50
	.long	.LBB0_35
	.long	.LBB0_35
	.long	.LBB0_41
	.long	.LBB0_41
	.long	.LBB0_42
	.long	.LBB0_42
JTI0_1:
	.long	.LBB0_32
	.long	.LBB0_31
	.long	.LBB0_30
	.long	.LBB0_29
	.long	.LBB0_28
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
