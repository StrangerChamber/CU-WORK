	.text
	.file	"ef_sqrt.c"
	.globl	__ieee754_sqrtf         //  -- Begin function __ieee754_sqrtf
	.type	__ieee754_sqrtf,@function
__ieee754_sqrtf:                        //  @__ieee754_sqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x14 ,  x15 ,  23&31
	sltiu x13 ,  x14 ,  255
	beq x0, x13, .LBB0_1
.LBB0_4:                                //  %if.end
	beq x0, x15, .LBB0_3
.LBB0_5:                                //  %if.end3
	blt x8, x0, .LBB0_6
.LBB0_7:                                //  %if.end7
	srli x15 ,  x8 ,  23&31
	lui x11 ,  (8388608>>12)&1048575
	lui x12 ,  (4194304>>12)&1048575
	bltu x0, x14, .LBB0_13
.LBB0_8:                                //  %for.cond.preheader
	and x14 ,  x11 ,  x8
	bltu x0, x14, .LBB0_9
.LBB0_10:                               //  %for.body.preheader
	add x14 ,  x0 ,  x0
.LBB0_11:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x13 ,  x12 ,  x8
	addi x14 ,  x14 ,  1
	slli x8 ,  x8 ,  1&31
	beq x0, x13, .LBB0_11
	jal x0, .LBB0_12
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __addsf3
.LBB0_2:                                //  %cleanup
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_3
.LBB0_6:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_2
.LBB0_9:
	add x14 ,  x0 ,  x0
.LBB0_12:                               //  %for.end
	sub x15 ,  x15 ,  x14
	addi x15 ,  x15 ,  1
.LBB0_13:                               //  %if.end14
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	addi x15 ,  x15 ,  -127
	lui x5 ,  (-33554432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	andi x10 ,  x15 ,  1
	or x14 ,  x14 ,  x30
	lui x30 ,  -33554432&4095
	and x13 ,  x14 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x11 ,  x13
	or x5 ,  x5 ,  x30
	sll x13 ,  x13 ,  x10
	slli x10 ,  x13 ,  2&31
	blt x13, x11, .LBB0_15
.LBB0_14:                               //  %if.end14
	add x10 ,  x5 ,  x10
.LBB0_15:                               //  %if.end14
	slt x13 ,  x14 ,  x13
	slli x14 ,  x13 ,  24&31
	slli x13 ,  x13 ,  25&31
	or x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_16
.LBB0_17:                               //  %if.end30.1
	add x5 ,  x12 ,  x13
	slli x10 ,  x10 ,  1&31
	bge x10, x5, .LBB0_18
.LBB0_19:                               //  %if.end30.2
	lui x11 ,  (2097152>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_20
.LBB0_21:                               //  %if.end30.3
	lui x12 ,  (1048576>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	bge x10, x5, .LBB0_22
.LBB0_23:                               //  %if.end30.4
	lui x11 ,  (524288>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_24
.LBB0_25:                               //  %if.end30.5
	lui x12 ,  (262144>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	bge x10, x5, .LBB0_26
.LBB0_27:                               //  %if.end30.6
	lui x11 ,  (131072>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_28
.LBB0_29:                               //  %if.end30.7
	lui x12 ,  (65536>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	bge x10, x5, .LBB0_30
.LBB0_31:                               //  %if.end30.8
	lui x11 ,  (32768>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_32
.LBB0_33:                               //  %if.end30.9
	lui x12 ,  (16384>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	bge x10, x5, .LBB0_34
.LBB0_35:                               //  %if.end30.10
	lui x11 ,  (8192>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	bge x10, x5, .LBB0_36
.LBB0_37:                               //  %if.end30.11
	lui x12 ,  (4096>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	blt x10, x5, .LBB0_39
.LBB0_38:                               //  %if.then26.12
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
.LBB0_39:                               //  %if.end30.12
	lui x30 ,  2048&4095
	lui x11 ,  (2048>>12)&1048575
	slli x10 ,  x10 ,  1&31
	srli x30 ,  x30 ,  12&31
	or x5 ,  x11 ,  x30
	add x5 ,  x5 ,  x13
	bge x10, x5, .LBB0_40
.LBB0_41:                               //  %if.end30.13
	addi x5 ,  x13 ,  1024
	slli x12 ,  x10 ,  1&31
	bge x12, x5, .LBB0_42
.LBB0_43:                               //  %if.end30.14
	addi x11 ,  x13 ,  512
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_44
.LBB0_45:                               //  %if.end30.15
	addi x11 ,  x13 ,  256
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_46
.LBB0_47:                               //  %if.end30.16
	addi x11 ,  x13 ,  128
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_48
.LBB0_49:                               //  %if.end30.17
	addi x11 ,  x13 ,  64
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_50
.LBB0_51:                               //  %if.end30.18
	addi x11 ,  x13 ,  32
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_52
.LBB0_53:                               //  %if.end30.19
	addi x11 ,  x13 ,  16
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_54
.LBB0_55:                               //  %if.end30.20
	addi x11 ,  x13 ,  8
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_56
.LBB0_57:                               //  %if.end30.21
	addi x11 ,  x13 ,  4
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_58
.LBB0_59:                               //  %if.end30.22
	addi x11 ,  x13 ,  2
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_61
.LBB0_60:                               //  %if.then26.23
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  2
	addi x13 ,  x13 ,  4
.LBB0_61:                               //  %if.end30.23
	addi x10 ,  x13 ,  1
	slli x13 ,  x12 ,  1&31
	add x11 ,  x0 ,  x0
	slt x12 ,  x13 ,  x10
	add x5 ,  x0 ,  x11
	xori x12 ,  x12 ,  1
	blt x13, x10, .LBB0_63
.LBB0_62:                               //  %if.end30.23
	add x5 ,  x0 ,  x10
.LBB0_63:                               //  %if.end30.23
	add x14 ,  x12 ,  x14
	beq x13, x5, .LBB0_65
.LBB0_64:                               //  %if.end30.23
	andi x11 ,  x14 ,  1
.LBB0_65:                               //  %if.end30.23
	lui x30 ,  -8388608&4095
	lui x13 ,  (-8388608>>12)&1048575
	add x14 ,  x14 ,  x11
	slli x15 ,  x15 ,  22&31
	srli x30 ,  x30 ,  12&31
	srai x14 ,  x14 ,  1&31
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	add x15 ,  x14 ,  x15
	lui x14 ,  (1056964608>>12)&1048575
	add x8 ,  x14 ,  x15
.LBB0_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_16:                               //  %if.then26.1
	or x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x5
	add x5 ,  x12 ,  x13
	slli x10 ,  x10 ,  1&31
	blt x10, x5, .LBB0_19
.LBB0_18:                               //  %if.then26.2
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
	lui x11 ,  (2097152>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	blt x10, x5, .LBB0_21
.LBB0_20:                               //  %if.then26.3
	add x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	lui x12 ,  (1048576>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	blt x10, x5, .LBB0_23
.LBB0_22:                               //  %if.then26.4
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
	lui x11 ,  (524288>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	blt x10, x5, .LBB0_25
.LBB0_24:                               //  %if.then26.5
	add x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	lui x12 ,  (262144>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	blt x10, x5, .LBB0_27
.LBB0_26:                               //  %if.then26.6
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
	lui x11 ,  (131072>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	blt x10, x5, .LBB0_29
.LBB0_28:                               //  %if.then26.7
	add x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	lui x12 ,  (65536>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	blt x10, x5, .LBB0_31
.LBB0_30:                               //  %if.then26.8
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
	lui x11 ,  (32768>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	blt x10, x5, .LBB0_33
.LBB0_32:                               //  %if.then26.9
	add x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	lui x12 ,  (16384>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	blt x10, x5, .LBB0_35
.LBB0_34:                               //  %if.then26.10
	add x14 ,  x12 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x11 ,  x13
	lui x11 ,  (8192>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x11 ,  x13
	blt x10, x5, .LBB0_37
.LBB0_36:                               //  %if.then26.11
	add x14 ,  x11 ,  x14
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	lui x12 ,  (4096>>12)&1048575
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x13
	bge x10, x5, .LBB0_38
	jal x0, .LBB0_39
.LBB0_40:                               //  %if.then26.13
	lui x30 ,  2048&4095
	sub x10 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	srli x30 ,  x30 ,  12&31
	or x6 ,  x11 ,  x30
	add x14 ,  x6 ,  x14
	addi x5 ,  x13 ,  1024
	slli x12 ,  x10 ,  1&31
	blt x12, x5, .LBB0_43
.LBB0_42:                               //  %if.then26.14
	lui x30 ,  2048&4095
	sub x12 ,  x12 ,  x5
	addi x14 ,  x14 ,  1024
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	add x13 ,  x11 ,  x13
	addi x11 ,  x13 ,  512
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_45
.LBB0_44:                               //  %if.then26.15
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  512
	addi x13 ,  x13 ,  1024
	addi x11 ,  x13 ,  256
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_47
.LBB0_46:                               //  %if.then26.16
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  256
	addi x13 ,  x13 ,  512
	addi x11 ,  x13 ,  128
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_49
.LBB0_48:                               //  %if.then26.17
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  128
	addi x13 ,  x13 ,  256
	addi x11 ,  x13 ,  64
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_51
.LBB0_50:                               //  %if.then26.18
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  64
	addi x13 ,  x13 ,  128
	addi x11 ,  x13 ,  32
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_53
.LBB0_52:                               //  %if.then26.19
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  32
	addi x13 ,  x13 ,  64
	addi x11 ,  x13 ,  16
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_55
.LBB0_54:                               //  %if.then26.20
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  16
	addi x13 ,  x13 ,  32
	addi x11 ,  x13 ,  8
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_57
.LBB0_56:                               //  %if.then26.21
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  8
	addi x13 ,  x13 ,  16
	addi x11 ,  x13 ,  4
	slli x12 ,  x12 ,  1&31
	blt x12, x11, .LBB0_59
.LBB0_58:                               //  %if.then26.22
	sub x12 ,  x12 ,  x11
	addi x14 ,  x14 ,  4
	addi x13 ,  x13 ,  8
	addi x11 ,  x13 ,  2
	slli x12 ,  x12 ,  1&31
	bge x12, x11, .LBB0_60
	jal x0, .LBB0_61
.Lfunc_end0:
	.size	__ieee754_sqrtf, .Lfunc_end0-__ieee754_sqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
