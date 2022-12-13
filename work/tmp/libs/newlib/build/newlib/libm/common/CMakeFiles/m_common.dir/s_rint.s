	.text
	.file	"s_rint.c"
	.globl	rint                    //  -- Begin function rint
	.type	rint,@function
rint:                                   //  @rint
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x8 ,  x0 ,  x10
	addi x14 ,  x0 ,  19
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	srli x15 ,  x9 ,  20&31
	slt x19 ,  x9 ,  x0
	andi x15 ,  x15 ,  2047
	addi x18 ,  x15 ,  -1023
	blt x14, x18, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_2
.LBB0_4:                                //  %if.else
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x18
	and x14 ,  x9 ,  x15
	or x14 ,  x8 ,  x14
	beq x0, x14, .LBB0_15
.LBB0_5:                                //  %if.end47
	srli x15 ,  x15 ,  1&31
	and x14 ,  x9 ,  x15
	or x14 ,  x8 ,  x14
	beq x0, x14, .LBB0_13
.LBB0_6:                                //  %if.then52
	xori x15 ,  x15 ,  -1
	lui x14 ,  (262144>>12)&1048575
	and x15 ,  x9 ,  x15
	srl x14 ,  x14 ,  x18
	or x9 ,  x14 ,  x15
	xori x15 ,  x18 ,  19
	sltiu x15 ,  x15 ,  1
	slli x8 ,  x15 ,  31&31
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.else62
	slti x14 ,  x18 ,  52
	bltu x0, x14, .LBB0_10
.LBB0_8:                                //  %if.then64
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __adddf3
	addi x15 ,  x0 ,  1024
	beq x18, x15, .LBB0_14
.LBB0_9:                                //  %if.then64
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	jal x0, .LBB0_14
.LBB0_10:                               //  %if.else69
	addi x15 ,  x15 ,  -1043
	addi x14 ,  x0 ,  -1
	srl x14 ,  x14 ,  x15
	and x13 ,  x8 ,  x14
	beq x0, x13, .LBB0_15
.LBB0_11:                               //  %if.end75
	srli x14 ,  x14 ,  1&31
	and x13 ,  x8 ,  x14
	beq x0, x13, .LBB0_13
.LBB0_12:                               //  %if.then79
	xori x14 ,  x14 ,  -1
	lui x13 ,  (1073741824>>12)&1048575
	srl x15 ,  x13 ,  x15
	and x14 ,  x8 ,  x14
	or x8 ,  x15 ,  x14
.LBB0_13:                               //  %do.body88
	lui x30 ,  TWO52&4095
	lui x14 ,  (TWO52>>12)&1048575
	slli x15 ,  x19 ,  3&31
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x18 ,  0 ( x15 )
	lw x19 ,  4 ( x15 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	addi x15 ,  x2 ,  8
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	ori x15 ,  x15 ,  4
	sw x11 ,  0 ( x15 )
	sw x10 ,  8 ( x2 )
	lw x11 ,  0 ( x15 )
	lw x10 ,  8 ( x2 )
	call __subdf3
.LBB0_14:                               //  %cleanup
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_15:                               //  %cleanup
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.then5
	lui x30 ,  2147483647&4095
	lui x20 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x9
	or x15 ,  x8 ,  x15
	beq x0, x15, .LBB0_15
.LBB0_3:                                //  %if.end
	lui x30 ,  -131072&4095
	lui x15 ,  (-131072>>12)&1048575
	lui x14 ,  (1048575>>12)&1048575
	lui x13 ,  (524288>>12)&1048575
	add x12 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1048575&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x9
	or x14 ,  x14 ,  x30
	lui x30 ,  TWO52&4095
	and x14 ,  x14 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x8 ,  x14
	sub x14 ,  x0 ,  x14
	or x14 ,  x8 ,  x14
	srli x14 ,  x14 ,  12&31
	and x14 ,  x13 ,  x14
	or x13 ,  x15 ,  x14
	lui x14 ,  (TWO52>>12)&1048575
	slli x15 ,  x19 ,  3&31
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
	slli x14 ,  x19 ,  31&31
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x15 ,  x15 ,  x11
	or x9 ,  x14 ,  x15
	jal x0, .LBB0_15
.Lfunc_end0:
	.size	rint, .Lfunc_end0-rint
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
