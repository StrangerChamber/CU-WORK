	.text
	.file	"s_llrint.c"
	.globl	llrint                  //  -- Begin function llrint
	.type	llrint,@function
llrint:                                 //  @llrint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x11
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x15 ,  x0 ,  x10
	addi x13 ,  x0 ,  19
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x14 ,  x8 ,  20&31
	slt x20 ,  x8 ,  x0
	andi x21 ,  x14 ,  2047
	addi x14 ,  x21 ,  -1023
	blt x13, x14, .LBB0_4
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	slti x14 ,  x14 ,  -1
	add x11 ,  x0 ,  x10
	bltu x0, x14, .LBB0_15
.LBB0_2:                                //  %if.else
	lui x30 ,  TWO52&4095
	lui x13 ,  (TWO52>>12)&1048575
	slli x14 ,  x20 ,  3&31
	add x12 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x14 ,  x13
	add x13 ,  x0 ,  x8
	lw x9 ,  0 ( x14 )
	lw x18 ,  4 ( x14 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	addi x15 ,  x2 ,  8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	ori x15 ,  x15 ,  4
	sw x11 ,  0 ( x15 )
	sw x10 ,  8 ( x2 )
	lw x11 ,  0 ( x15 )
	lw x10 ,  8 ( x2 )
	call __subdf3
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	beq x0, x15, .LBB0_3
.LBB0_11:                               //  %if.end
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	lui x14 ,  (1048576>>12)&1048575
	addi x13 ,  x0 ,  1043
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	or x15 ,  x14 ,  x15
	srli x14 ,  x11 ,  20&31
	andi x14 ,  x14 ,  2047
	sub x14 ,  x13 ,  x14
	srl x15 ,  x15 ,  x14
	srai x11 ,  x15 ,  31&31
	add x14 ,  x0 ,  x0
	beq x20, x14, .LBB0_13
.LBB0_14:                               //  %if.end74
	sub x10 ,  x0 ,  x15
	sltu x15 ,  x0 ,  x15
	add x15 ,  x15 ,  x11
	sub x11 ,  x0 ,  x15
	jal x0, .LBB0_15
.LBB0_4:                                //  %if.else24
	addi x13 ,  x0 ,  62
	blt x13, x14, .LBB0_10
.LBB0_5:                                //  %if.then27
	slti x14 ,  x14 ,  52
	bltu x0, x14, .LBB0_7
.LBB0_6:                                //  %if.then30
	add x9 ,  x0 ,  x0
	addi x12 ,  x21 ,  -1075
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x9
	call __ashldi3
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	lui x14 ,  (1048576>>12)&1048575
	add x19 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	addi x12 ,  x21 ,  -1043
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	or x10 ,  x14 ,  x15
	call __ashldi3
	or x11 ,  x19 ,  x11
	or x15 ,  x18 ,  x10
	add x14 ,  x0 ,  x0
	bne x20, x14, .LBB0_14
.LBB0_13:
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_15
.LBB0_10:                               //  %if.else71
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x8
	call __fixdfdi
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.else40
	lui x30 ,  TWO52&4095
	lui x13 ,  (TWO52>>12)&1048575
	slli x14 ,  x20 ,  3&31
	add x12 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x14 ,  x13
	add x13 ,  x0 ,  x8
	lw x9 ,  0 ( x14 )
	lw x18 ,  4 ( x14 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	addi x15 ,  x2 ,  8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	ori x15 ,  x15 ,  4
	sw x11 ,  0 ( x15 )
	sw x10 ,  8 ( x2 )
	lw x11 ,  0 ( x15 )
	lw x10 ,  8 ( x2 )
	call __subdf3
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	lui x14 ,  (1048576>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	or x10 ,  x14 ,  x15
	srli x15 ,  x11 ,  20&31
	add x11 ,  x0 ,  x9
	andi x18 ,  x15 ,  2047
	addi x12 ,  x18 ,  -1043
	call __ashldi3
	addi x15 ,  x0 ,  1075
	addi x14 ,  x0 ,  32
	sub x15 ,  x15 ,  x18
	bgeu x15, x14, .LBB0_9
.LBB0_8:
	srl x9 ,  x8 ,  x15
.LBB0_9:                                //  %if.else40
	or x15 ,  x9 ,  x10
	add x14 ,  x0 ,  x0
	bne x20, x14, .LBB0_14
	jal x0, .LBB0_13
.LBB0_3:
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
.LBB0_15:                               //  %cleanup
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
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
	.size	llrint, .Lfunc_end0-llrint
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	TWO52,@object           //  @TWO52
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
TWO52:
	.quad	4841369599423283200     //  double 4503599627370496
	.quad	-4382002437431492608    //  double -4503599627370496
	.size	TWO52, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
