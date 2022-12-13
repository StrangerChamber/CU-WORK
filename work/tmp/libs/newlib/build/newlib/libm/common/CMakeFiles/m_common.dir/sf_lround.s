	.text
	.file	"sf_lround.c"
	.globl	lroundf                 //  -- Begin function lroundf
	.type	lroundf,@function
lroundf:                                //  @lroundf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x15 ,  x0 ,  x0
	blt x10, x15, .LBB0_1
.LBB0_2:                                //  %entry
	slti x11 ,  x0 ,  1
	jal x0, .LBB0_3
.LBB0_1:
	addi x11 ,  x0 ,  -1
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	addi x5 ,  x0 ,  30
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	srli x14 ,  x10 ,  23&31
	andi x13 ,  x14 ,  255
	addi x14 ,  x13 ,  -127
	blt x5, x14, .LBB0_9
.LBB0_4:                                //  %if.then
	blt x14, x0, .LBB0_5
.LBB0_7:                                //  %if.else
	and x15 ,  x12 ,  x10
	lui x12 ,  (8388608>>12)&1048575
	or x15 ,  x12 ,  x15
	slti x12 ,  x14 ,  23
	bltu x0, x12, .LBB0_10
.LBB0_8:                                //  %if.then9
	addi x14 ,  x13 ,  -150
	sll x10 ,  x15 ,  x14
	jal x0, .LBB0_11
.LBB0_9:                                //  %if.else16
	call __fixsfsi
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.then5
	addi x13 ,  x0 ,  -1
	beq x14, x13, .LBB0_13
.LBB0_6:                                //  %if.then5
	add x11 ,  x0 ,  x15
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x11
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_10:                               //  %if.else11
	addi x12 ,  x0 ,  150
	sub x13 ,  x12 ,  x13
	lui x12 ,  (4194304>>12)&1048575
	srl x14 ,  x12 ,  x14
	add x15 ,  x15 ,  x14
	srl x10 ,  x15 ,  x13
.LBB0_11:                               //  %if.end17
	call __mulsi3
.LBB0_12:                               //  %cleanup
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lroundf, .Lfunc_end0-lroundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
