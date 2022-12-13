	.text
	.file	"e_atan2.c"
	.globl	__ieee754_atan2         //  -- Begin function __ieee754_atan2
	.type	__ieee754_atan2,@function
__ieee754_atan2:                        //  @__ieee754_atan2
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	sub x5 ,  x0 ,  x12
	lui x14 ,  (2147483647>>12)&1048575
	add x15 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	srli x30 ,  x30 ,  12&31
	or x5 ,  x5 ,  x12
	or x6 ,  x14 ,  x30
	slt x5 ,  x5 ,  x0
	and x14 ,  x6 ,  x13
	or x7 ,  x5 ,  x14
	lui x5 ,  (2146435072>>12)&1048575
	bltu x5, x7, .LBB0_37
.LBB0_1:                                //  %lor.lhs.false
	sub x7 ,  x0 ,  x10
	lui x30 ,  2146435073&4095
	and x6 ,  x6 ,  x15
	lui x16 ,  (2146435073>>12)&1048575
	or x7 ,  x7 ,  x10
	srli x30 ,  x30 ,  12&31
	slt x7 ,  x7 ,  x0
	or x16 ,  x16 ,  x30
	or x7 ,  x7 ,  x6
	bltu x7, x16, .LBB0_2
.LBB0_37:                               //  %cleanup
	call __adddf3
.LBB0_38:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.end
	lui x30 ,  -1072693248&4095
	lui x7 ,  (-1072693248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x7 ,  x7 ,  x30
	add x7 ,  x7 ,  x13
	or x7 ,  x12 ,  x7
	beq x0, x7, .LBB0_3
.LBB0_4:                                //  %if.end22
	srli x16 ,  x13 ,  30&31
	slt x7 ,  x15 ,  x0
	andi x16 ,  x16 ,  2
	or x9 ,  x7 ,  x16
	or x7 ,  x10 ,  x6
	beq x0, x7, .LBB0_5
.LBB0_9:                                //  %if.end33
	or x7 ,  x12 ,  x14
	beq x0, x7, .LBB0_10
.LBB0_15:                               //  %if.end38
	bne x14, x5, .LBB0_25
.LBB0_16:                               //  %if.then40
	bne x6, x5, .LBB0_22
.LBB0_17:                               //  %if.then42
	lui x30 ,  1072243195&4095
	lui x15 ,  (1072243195>>12)&1048575
	lui x13 ,  (JTI0_1>>12)&1048575
	slli x14 ,  x9 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  JTI0_1&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x13 ,  x14
	lw x14 ,  0 ( x14 )
	jalr x0 ,  0 ( x14 )
.LBB0_18:                               //  %sw.bb44
	lui x30 ,  -1075240453&4095
	lui x14 ,  (-1075240453>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then21
	call atan
	jal x0, .LBB0_38
.LBB0_5:                                //  %if.then30
	sltiu x15 ,  x9 ,  2
	bltu x0, x15, .LBB0_38
.LBB0_6:                                //  %if.then30
	xori x15 ,  x9 ,  3
	bltu x0, x15, .LBB0_7
	jal x0, .LBB0_24
.LBB0_25:                               //  %if.end54
	bne x6, x5, .LBB0_26
.LBB0_10:                               //  %if.then36
	lui x30 ,  1073291771&4095
	lui x14 ,  (1073291771>>12)&1048575
	lui x13 ,  (-1074191877>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -1074191877&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x13 ,  x30
	add x13 ,  x0 ,  x0
	blt x15, x13, .LBB0_12
.LBB0_11:                               //  %if.then36
	add x11 ,  x0 ,  x14
	jal x0, .LBB0_12
.LBB0_22:                               //  %if.else
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x9 ,  2&31
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x10
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_23:                               //  %sw.bb49
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB0_38
.LBB0_7:                                //  %sw.bb31
	lui x15 ,  (1074340347>>12)&1048575
	lui x30 ,  1074340347&4095
	jal x0, .LBB0_8
.LBB0_24:                               //  %sw.bb32
	lui x15 ,  (-1073143301>>12)&1048575
	lui x30 ,  -1073143301&4095
.LBB0_8:                                //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
.LBB0_12:                               //  %if.then36
	lui x15 ,  (1413754136>>12)&1048575
.LBB0_13:                               //  %cleanup
	lui x30 ,  1413754136&4095
.LBB0_14:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	jal x0, .LBB0_38
.LBB0_26:                               //  %if.end59
	lui x30 ,  1073291771&4095
	lui x15 ,  (1073291771>>12)&1048575
	sub x5 ,  x6 ,  x14
	lui x8 ,  (1413754136>>12)&1048575
	lui x6 ,  (63963135>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	lui x30 ,  1413754136&4095
	srli x30 ,  x30 ,  12&31
	or x15 ,  x8 ,  x30
	lui x30 ,  63963135&4095
	srli x30 ,  x30 ,  12&31
	or x6 ,  x6 ,  x30
	blt x6, x5, .LBB0_30
.LBB0_27:                               //  %if.else64
	bge x13, x0, .LBB0_29
.LBB0_28:                               //  %if.else64
	lui x30 ,  -62914560&4095
	add x15 ,  x0 ,  x0
	lui x14 ,  (-62914560>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x6 ,  x14 ,  x30
	add x14 ,  x0 ,  x15
	blt x5, x6, .LBB0_30
.LBB0_29:                               //  %if.else68
	call __divdf3
	call fabs
	call atan
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x11
.LBB0_30:                               //  %if.end72
	beq x0, x9, .LBB0_31
.LBB0_32:                               //  %if.end72
	xori x13 ,  x9 ,  2
	beq x0, x13, .LBB0_35
.LBB0_33:                               //  %if.end72
	xori x13 ,  x9 ,  1
	bltu x0, x13, .LBB0_36
.LBB0_34:                               //  %sw.bb74
	lui x30 ,  -2147483648&4095
	lui x13 ,  (-2147483648>>12)&1048575
	add x10 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	xor x11 ,  x13 ,  x14
	jal x0, .LBB0_38
.LBB0_19:                               //  %sw.bb45
	lui x15 ,  (1073928572>>12)&1048575
	lui x30 ,  1073928572&4095
	jal x0, .LBB0_20
.LBB0_21:                               //  %sw.bb46
	lui x15 ,  (-1073555076>>12)&1048575
	lui x30 ,  -1073555076&4095
.LBB0_20:                               //  %cleanup
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	lui x15 ,  (2134057426>>12)&1048575
	lui x30 ,  2134057426&4095
	jal x0, .LBB0_14
.LBB0_31:
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	jal x0, .LBB0_38
.LBB0_35:                               //  %sw.bb88
	lui x30 ,  856972295&4095
	lui x13 ,  (856972295>>12)&1048575
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  -1130256858&4095
	lui x13 ,  (-1130256858>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	call __adddf3
	lui x30 ,  1413754136&4095
	add x12 ,  x0 ,  x10
	lui x15 ,  (1074340347>>12)&1048575
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x8 ,  x30
	lui x30 ,  1074340347&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __subdf3
	jal x0, .LBB0_38
.LBB0_36:                               //  %sw.default
	lui x30 ,  856972295&4095
	lui x13 ,  (856972295>>12)&1048575
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	srli x30 ,  x30 ,  12&31
	or x12 ,  x13 ,  x30
	lui x30 ,  -1130256858&4095
	lui x13 ,  (-1130256858>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	call __adddf3
	lui x30 ,  1413754136&4095
	lui x15 ,  (-1073143301>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x8 ,  x30
	lui x30 ,  -1073143301&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	jal x0, .LBB0_37
.Lfunc_end0:
	.size	__ieee754_atan2, .Lfunc_end0-__ieee754_atan2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_38
	.long	.LBB0_23
	.long	.LBB0_7
	.long	.LBB0_24
JTI0_1:
	.long	.LBB0_38
	.long	.LBB0_18
	.long	.LBB0_19
	.long	.LBB0_21
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
