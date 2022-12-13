	.text
	.file	"e_sqrt.c"
	.globl	__ieee754_sqrt          //  -- Begin function __ieee754_sqrt
	.type	__ieee754_sqrt,@function
__ieee754_sqrt:                         //  @__ieee754_sqrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	lui x15 ,  (2146435072>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	and x14 ,  x15 ,  x9
	bne x14, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
.LBB0_2:                                //  %cleanup
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	jal x0, .LBB0_75
.LBB0_3:                                //  %if.end
	bge x0, x9, .LBB0_7
.LBB0_4:                                //  %if.end12
	srli x15 ,  x9 ,  20&31
	lui x11 ,  (1048576>>12)&1048575
	lui x12 ,  (524288>>12)&1048575
	bltu x0, x15, .LBB0_16
.LBB0_5:                                //  %while.cond.preheader
	add x15 ,  x0 ,  x0
	beq x0, x9, .LBB0_10
.LBB0_6:
	add x13 ,  x0 ,  x8
	add x14 ,  x0 ,  x15
	and x10 ,  x11 ,  x9
	beq x0, x10, .LBB0_13
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.then3
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	or x15 ,  x8 ,  x15
	beq x0, x15, .LBB0_75
.LBB0_8:                                //  %if.else
	bge x9, x0, .LBB0_4
.LBB0_9:                                //  %if.then8
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	jal x0, .LBB0_2
.LBB0_10:                               //  %while.body.preheader
	add x14 ,  x0 ,  x0
.LBB0_11:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x13 ,  x8 ,  21&31
	addi x14 ,  x14 ,  -21
	srli x9 ,  x8 ,  11&31
	add x8 ,  x0 ,  x13
	beq x0, x9, .LBB0_11
.LBB0_12:                               //  %for.cond.preheader
	and x10 ,  x11 ,  x9
	bltu x0, x10, .LBB0_15
.LBB0_13:                               //  %for.body.preheader
	add x15 ,  x0 ,  x0
.LBB0_14:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	and x10 ,  x12 ,  x9
	addi x15 ,  x15 ,  1
	slli x9 ,  x9 ,  1&31
	beq x0, x10, .LBB0_14
.LBB0_15:                               //  %for.end
	addi x10 ,  x0 ,  32
	sll x8 ,  x13 ,  x15
	sub x10 ,  x10 ,  x15
	sub x15 ,  x14 ,  x15
	srl x10 ,  x13 ,  x10
	addi x15 ,  x15 ,  1
	or x9 ,  x9 ,  x10
.LBB0_16:                               //  %if.end28
	lui x30 ,  1048575&4095
	lui x14 ,  (1048575>>12)&1048575
	addi x13 ,  x15 ,  -1023
	srli x30 ,  x30 ,  12&31
	andi x15 ,  x13 ,  1
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x9
	or x14 ,  x11 ,  x14
	beq x0, x15, .LBB0_18
.LBB0_17:                               //  %if.then33
	slli x15 ,  x14 ,  1&31
	slt x14 ,  x8 ,  x0
	slli x8 ,  x8 ,  1&31
	or x14 ,  x14 ,  x15
.LBB0_18:                               //  %if.end39
	lui x30 ,  -4194304&4095
	slli x15 ,  x14 ,  1&31
	slt x14 ,  x8 ,  x0
	lui x10 ,  (-4194304>>12)&1048575
	lui x5 ,  (2097152>>12)&1048575
	or x14 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	slli x15 ,  x14 ,  1&31
	or x10 ,  x10 ,  x30
	blt x14, x5, .LBB0_20
.LBB0_19:                               //  %if.end39
	add x15 ,  x10 ,  x15
.LBB0_20:                               //  %if.end39
	lui x30 ,  2097151&4095
	lui x10 ,  (2097151>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	slt x14 ,  x10 ,  x14
	srli x10 ,  x8 ,  30&31
	andi x10 ,  x10 ,  1
	or x10 ,  x10 ,  x15
	slli x15 ,  x14 ,  21&31
	slli x14 ,  x14 ,  22&31
	or x5 ,  x11 ,  x14
	blt x10, x5, .LBB0_22
.LBB0_21:                               //  %if.then51.1
	or x15 ,  x11 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x11 ,  x5
.LBB0_22:                               //  %if.end55.1
	srli x6 ,  x8 ,  29&31
	slli x10 ,  x10 ,  1&31
	add x5 ,  x12 ,  x14
	andi x6 ,  x6 ,  1
	or x10 ,  x6 ,  x10
	blt x10, x5, .LBB0_24
.LBB0_23:                               //  %if.then51.2
	add x15 ,  x12 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x11 ,  x14
.LBB0_24:                               //  %if.end55.2
	srli x6 ,  x8 ,  28&31
	lui x11 ,  (262144>>12)&1048575
	slli x10 ,  x10 ,  1&31
	andi x6 ,  x6 ,  1
	add x5 ,  x11 ,  x14
	or x10 ,  x6 ,  x10
	blt x10, x5, .LBB0_26
.LBB0_25:                               //  %if.then51.3
	add x15 ,  x11 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x12 ,  x14
.LBB0_26:                               //  %if.end55.3
	srli x6 ,  x8 ,  27&31
	lui x12 ,  (131072>>12)&1048575
	slli x10 ,  x10 ,  1&31
	andi x6 ,  x6 ,  1
	add x5 ,  x12 ,  x14
	or x10 ,  x6 ,  x10
	blt x10, x5, .LBB0_28
.LBB0_27:                               //  %if.then51.4
	add x15 ,  x12 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x11 ,  x14
.LBB0_28:                               //  %if.end55.4
	srli x6 ,  x8 ,  26&31
	lui x11 ,  (65536>>12)&1048575
	slli x10 ,  x10 ,  1&31
	andi x6 ,  x6 ,  1
	add x5 ,  x11 ,  x14
	or x10 ,  x6 ,  x10
	blt x10, x5, .LBB0_30
.LBB0_29:                               //  %if.then51.5
	add x15 ,  x11 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x12 ,  x14
.LBB0_30:                               //  %if.end55.5
	srli x6 ,  x8 ,  25&31
	lui x12 ,  (32768>>12)&1048575
	slli x10 ,  x10 ,  1&31
	andi x6 ,  x6 ,  1
	add x5 ,  x12 ,  x14
	or x10 ,  x6 ,  x10
	blt x10, x5, .LBB0_32
.LBB0_31:                               //  %if.then51.6
	add x15 ,  x12 ,  x15
	sub x10 ,  x10 ,  x5
	add x14 ,  x11 ,  x14
.LBB0_32:                               //  %if.end55.6
	srli x5 ,  x8 ,  24&31
	lui x11 ,  (16384>>12)&1048575
	slli x10 ,  x10 ,  1&31
	andi x5 ,  x5 ,  1
	add x6 ,  x11 ,  x14
	or x5 ,  x5 ,  x10
	blt x5, x6, .LBB0_34
.LBB0_33:                               //  %if.then51.7
	add x15 ,  x11 ,  x15
	sub x5 ,  x5 ,  x6
	add x14 ,  x12 ,  x14
.LBB0_34:                               //  %if.end55.7
	srli x6 ,  x8 ,  23&31
	lui x10 ,  (8192>>12)&1048575
	slli x5 ,  x5 ,  1&31
	andi x6 ,  x6 ,  1
	add x12 ,  x10 ,  x14
	or x5 ,  x6 ,  x5
	blt x5, x12, .LBB0_36
.LBB0_35:                               //  %if.then51.8
	add x15 ,  x10 ,  x15
	sub x5 ,  x5 ,  x12
	add x14 ,  x11 ,  x14
.LBB0_36:                               //  %if.end55.8
	srli x6 ,  x8 ,  22&31
	lui x12 ,  (4096>>12)&1048575
	slli x5 ,  x5 ,  1&31
	andi x6 ,  x6 ,  1
	add x11 ,  x12 ,  x14
	or x5 ,  x6 ,  x5
	blt x5, x11, .LBB0_38
.LBB0_37:                               //  %if.then51.9
	add x15 ,  x12 ,  x15
	sub x5 ,  x5 ,  x11
	add x14 ,  x10 ,  x14
.LBB0_38:                               //  %if.end55.9
	lui x30 ,  2048&4095
	lui x11 ,  (2048>>12)&1048575
	slli x5 ,  x5 ,  1&31
	srli x30 ,  x30 ,  12&31
	or x10 ,  x11 ,  x30
	add x6 ,  x10 ,  x14
	srli x10 ,  x8 ,  21&31
	andi x10 ,  x10 ,  1
	or x10 ,  x10 ,  x5
	blt x10, x6, .LBB0_40
.LBB0_39:                               //  %if.then51.10
	lui x30 ,  2048&4095
	sub x10 ,  x10 ,  x6
	add x14 ,  x12 ,  x14
	srli x30 ,  x30 ,  12&31
	or x5 ,  x11 ,  x30
	add x15 ,  x5 ,  x15
.LBB0_40:                               //  %if.end55.10
	srli x12 ,  x8 ,  20&31
	slli x10 ,  x10 ,  1&31
	andi x12 ,  x12 ,  1
	or x12 ,  x12 ,  x10
	addi x10 ,  x14 ,  1024
	blt x12, x10, .LBB0_42
.LBB0_41:                               //  %if.then51.11
	lui x30 ,  2048&4095
	sub x12 ,  x12 ,  x10
	addi x15 ,  x15 ,  1024
	srli x30 ,  x30 ,  12&31
	or x11 ,  x11 ,  x30
	add x14 ,  x11 ,  x14
.LBB0_42:                               //  %if.end55.11
	srli x11 ,  x8 ,  19&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  512
	blt x12, x11, .LBB0_44
.LBB0_43:                               //  %if.then51.12
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  512
	addi x14 ,  x14 ,  1024
.LBB0_44:                               //  %if.end55.12
	srli x11 ,  x8 ,  18&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  256
	blt x12, x11, .LBB0_46
.LBB0_45:                               //  %if.then51.13
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  256
	addi x14 ,  x14 ,  512
.LBB0_46:                               //  %if.end55.13
	srli x11 ,  x8 ,  17&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  128
	blt x12, x11, .LBB0_48
.LBB0_47:                               //  %if.then51.14
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  128
	addi x14 ,  x14 ,  256
.LBB0_48:                               //  %if.end55.14
	srli x11 ,  x8 ,  16&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  64
	blt x12, x11, .LBB0_50
.LBB0_49:                               //  %if.then51.15
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  64
	addi x14 ,  x14 ,  128
.LBB0_50:                               //  %if.end55.15
	srli x11 ,  x8 ,  15&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  32
	blt x12, x11, .LBB0_52
.LBB0_51:                               //  %if.then51.16
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  32
	addi x14 ,  x14 ,  64
.LBB0_52:                               //  %if.end55.16
	srli x11 ,  x8 ,  14&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  16
	blt x12, x11, .LBB0_54
.LBB0_53:                               //  %if.then51.17
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  16
	addi x14 ,  x14 ,  32
.LBB0_54:                               //  %if.end55.17
	srli x11 ,  x8 ,  13&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  8
	blt x12, x11, .LBB0_56
.LBB0_55:                               //  %if.then51.18
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  8
	addi x14 ,  x14 ,  16
.LBB0_56:                               //  %if.end55.18
	srli x11 ,  x8 ,  12&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  4
	blt x12, x11, .LBB0_58
.LBB0_57:                               //  %if.then51.19
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  4
	addi x14 ,  x14 ,  8
.LBB0_58:                               //  %if.end55.19
	srli x11 ,  x8 ,  11&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x12 ,  x11 ,  x12
	addi x11 ,  x14 ,  2
	blt x12, x11, .LBB0_60
.LBB0_59:                               //  %if.then51.20
	sub x12 ,  x12 ,  x11
	addi x15 ,  x15 ,  2
	addi x14 ,  x14 ,  4
.LBB0_60:                               //  %if.end55.20
	srli x11 ,  x8 ,  10&31
	slli x12 ,  x12 ,  1&31
	andi x11 ,  x11 ,  1
	or x11 ,  x11 ,  x12
	addi x12 ,  x14 ,  1
	blt x11, x12, .LBB0_62
.LBB0_61:                               //  %if.then51.21
	sub x11 ,  x11 ,  x12
	addi x15 ,  x15 ,  1
	addi x14 ,  x14 ,  2
.LBB0_62:                               //  %if.end55.21
	srli x10 ,  x8 ,  9&31
	lui x30 ,  -2147483648&4095
	slli x11 ,  x11 ,  1&31
	add x12 ,  x0 ,  x0
	slli x7 ,  x8 ,  23&31
	srli x13 ,  x13 ,  1&31
	addi x5 ,  x0 ,  -1
	andi x10 ,  x10 ,  1
	srli x30 ,  x30 ,  12&31
	add x6 ,  x0 ,  x12
	or x11 ,  x10 ,  x11
	lui x10 ,  (-2147483648>>12)&1048575
	or x10 ,  x10 ,  x30
	add x17 ,  x10 ,  x6
	bge x14, x11, .LBB0_66
.LBB0_63:                               //  %if.then70
	add x6 ,  x10 ,  x17
	slti x29 ,  x17 ,  0
	add x12 ,  x10 ,  x12
	slt x16 ,  x5 ,  x6
	and x29 ,  x16 ,  x29
	sub x16 ,  x7 ,  x17
	sltu x7 ,  x7 ,  x17
	sub x11 ,  x11 ,  x7
	sub x11 ,  x11 ,  x14
	add x14 ,  x29 ,  x14
.LBB0_64:                               //  %if.end87
	slli x11 ,  x11 ,  1&31
	slt x7 ,  x16 ,  x0
	srli x10 ,  x10 ,  1&31
	or x11 ,  x7 ,  x11
	slli x7 ,  x16 ,  1&31
	beq x0, x10, .LBB0_70
.LBB0_65:                               //  %while.body65
	add x17 ,  x10 ,  x6
	blt x14, x11, .LBB0_63
.LBB0_66:                               //  %lor.lhs.false
	bltu x7, x17, .LBB0_69
.LBB0_67:                               //  %lor.lhs.false
	beq x11, x14, .LBB0_63
.LBB0_69:
	add x16 ,  x0 ,  x7
	jal x0, .LBB0_64
.LBB0_70:                               //  %while.end94
	or x14 ,  x7 ,  x11
	beq x0, x14, .LBB0_74
.LBB0_71:                               //  %if.then99
	xori x14 ,  x12 ,  -1
	beq x0, x14, .LBB0_73
.LBB0_72:                               //  %if.else111
	andi x14 ,  x12 ,  1
	add x12 ,  x12 ,  x14
	jal x0, .LBB0_74
.LBB0_73:                               //  %if.then101
	add x12 ,  x0 ,  x0
	addi x15 ,  x15 ,  1
.LBB0_74:                               //  %if.end117
	slli x14 ,  x13 ,  20&31
	srai x13 ,  x15 ,  1&31
	slli x15 ,  x15 ,  31&31
	add x14 ,  x13 ,  x14
	lui x13 ,  (1071644672>>12)&1048575
	add x9 ,  x13 ,  x14
	srli x14 ,  x12 ,  1&31
	or x8 ,  x14 ,  x15
.LBB0_75:                               //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_sqrt, .Lfunc_end0-__ieee754_sqrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
