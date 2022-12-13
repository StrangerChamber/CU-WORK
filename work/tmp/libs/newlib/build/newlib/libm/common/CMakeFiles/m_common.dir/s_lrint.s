	.text
	.file	"s_lrint.c"
	.globl	lrint                   //  -- Begin function lrint
	.type	lrint,@function
lrint:                                  //  @lrint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	add x13 ,  x0 ,  x11
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x12 ,  x0 ,  x10
	addi x14 ,  x0 ,  19
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	srli x15 ,  x13 ,  20&31
	slt x19 ,  x13 ,  x0
	andi x15 ,  x15 ,  2047
	addi x15 ,  x15 ,  -1023
	blt x14, x15, .LBB0_4
.LBB0_1:                                //  %if.then
	add x8 ,  x0 ,  x0
	slti x15 ,  x15 ,  -1
	bltu x0, x15, .LBB0_11
.LBB0_2:                                //  %if.else
	lui x30 ,  TWO52&4095
	lui x14 ,  (TWO52>>12)&1048575
	slli x15 ,  x19 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x9 ,  0 ( x15 )
	lw x18 ,  4 ( x15 )
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
	beq x0, x15, .LBB0_11
.LBB0_3:                                //  %if.end
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
	srl x8 ,  x15 ,  x14
	add x15 ,  x0 ,  x0
	bne x19, x15, .LBB0_10
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.else24
	addi x14 ,  x0 ,  30
	blt x14, x15, .LBB0_12
.LBB0_5:                                //  %if.else35
	lui x30 ,  TWO52&4095
	lui x14 ,  (TWO52>>12)&1048575
	slli x15 ,  x19 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x8 ,  0 ( x15 )
	lw x9 ,  4 ( x15 )
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
	addi x15 ,  x2 ,  8
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	ori x15 ,  x15 ,  4
	sw x11 ,  0 ( x15 )
	sw x10 ,  8 ( x2 )
	lw x11 ,  0 ( x15 )
	lw x10 ,  8 ( x2 )
	call __subdf3
	srli x15 ,  x11 ,  20&31
	addi x14 ,  x0 ,  1075
	addi x13 ,  x0 ,  32
	andi x15 ,  x15 ,  2047
	sub x14 ,  x14 ,  x15
	bltu x14, x13, .LBB0_6
.LBB0_7:                                //  %if.else35
	add x14 ,  x0 ,  x0
	jal x0, .LBB0_8
.LBB0_12:                               //  %if.else62
	add x10 ,  x0 ,  x12
	add x11 ,  x0 ,  x13
	call __fixdfsi
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_11
.LBB0_6:
	srl x14 ,  x10 ,  x14
.LBB0_8:                                //  %if.else35
	lui x30 ,  1048575&4095
	lui x13 ,  (1048575>>12)&1048575
	lui x12 ,  (1048576>>12)&1048575
	addi x15 ,  x15 ,  -1043
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x11
	or x13 ,  x12 ,  x13
	sll x15 ,  x13 ,  x15
	or x8 ,  x15 ,  x14
	add x15 ,  x0 ,  x0
	beq x19, x15, .LBB0_11
.LBB0_10:                               //  %if.end64
	sub x8 ,  x0 ,  x8
.LBB0_11:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lrint, .Lfunc_end0-lrint
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
