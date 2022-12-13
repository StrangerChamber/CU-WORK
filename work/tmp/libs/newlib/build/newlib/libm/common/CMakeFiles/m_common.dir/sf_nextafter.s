	.text
	.file	"sf_nextafter.c"
	.globl	nextafterf              //  -- Begin function nextafterf
	.type	nextafterf,@function
nextafterf:                             //  @nextafterf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x9 ,  x0 ,  x11
	lui x18 ,  (2139095040>>12)&1048575
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x19 ,  x15 ,  x8
	bltu x18, x19, .LBB0_4
.LBB0_1:                                //  %entry
	lui x30 ,  2139095041&4095
	lui x14 ,  (2139095041>>12)&1048575
	and x15 ,  x15 ,  x9
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bgeu x15, x14, .LBB0_4
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __eqsf2
	bltu x0, x10, .LBB0_7
.LBB0_3:
	add x9 ,  x0 ,  x8
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
.LBB0_5:                                //  %cleanup
	call __addsf3
	add x9 ,  x0 ,  x10
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_7:                                //  %if.end11
	beq x0, x19, .LBB0_14
.LBB0_8:                                //  %if.end22
	addi x15 ,  x0 ,  -1
	blt x8, x0, .LBB0_16
.LBB0_9:                                //  %if.then24
	slt x14 ,  x9 ,  x8
	bltu x0, x14, .LBB0_11
.LBB0_10:                               //  %if.end39
	slti x15 ,  x0 ,  1
.LBB0_11:                               //  %if.end39
	add x9 ,  x8 ,  x15
	and x15 ,  x18 ,  x9
	beq x0, x15, .LBB0_17
.LBB0_12:                               //  %if.end39
	bne x15, x18, .LBB0_6
.LBB0_13:                               //  %if.then42
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_5
.LBB0_14:                               //  %do.body14
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	ori x8 ,  x15 ,  1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	add x9 ,  x0 ,  x10
	call __eqsf2
	add x15 ,  x0 ,  x0
	bne x10, x15, .LBB0_3
	jal x0, .LBB0_6
.LBB0_16:                               //  %if.else30
	slt x14 ,  x9 ,  x8
	slt x13 ,  x15 ,  x9
	or x14 ,  x14 ,  x13
	beq x0, x14, .LBB0_10
	jal x0, .LBB0_11
.LBB0_17:                               //  %if.then46
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __eqsf2
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	nextafterf, .Lfunc_end0-nextafterf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
