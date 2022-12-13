	.text
	.file	"__adjust.c"
	.globl	__adjust                //  -- Begin function __adjust
	.type	__adjust,@function
__adjust:                               //  @__adjust
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	slti x15 ,  x12 ,  309
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	bltu x0, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x30 ,  -1048576&4095
	addi x15 ,  x0 ,  34
	add x9 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x15 ,  x30
	bne x13, x9, .LBB0_12
.LBB0_2:
	lui x8 ,  (2146435072>>12)&1048575
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.else
	addi x15 ,  x0 ,  -309
	blt x15, x12, .LBB0_5
.LBB0_4:                                //  %if.then2
	addi x15 ,  x0 ,  34
	add x9 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
	add x8 ,  x0 ,  x9
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.end4
	lw x8 ,  4 ( x11 )
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x13, x14, .LBB0_7
.LBB0_6:                                //  %if.end4
	xor x8 ,  x15 ,  x8
.LBB0_7:                                //  %if.end4
	lw x9 ,  0 ( x11 )
	beq x0, x12, .LBB0_12
.LBB0_8:                                //  %if.end10
	blt x12, x0, .LBB0_9
.LBB0_10:                               //  %if.else16
	add x10 ,  x0 ,  x12
	call __exp10
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.then12
	sub x10 ,  x0 ,  x12
	call __exp10
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __divdf3
.LBB0_11:                               //  %cleanup
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_12:                               //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__adjust, .Lfunc_end0-__adjust
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
