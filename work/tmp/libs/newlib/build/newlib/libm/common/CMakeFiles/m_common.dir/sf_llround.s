	.text
	.file	"sf_llround.c"
	.globl	llroundf                //  -- Begin function llroundf
	.type	llroundf,@function
llroundf:                               //  @llroundf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x11 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	blt x10, x11, .LBB0_1
.LBB0_2:                                //  %entry
	slti x8 ,  x0 ,  1
	jal x0, .LBB0_3
.LBB0_1:
	addi x8 ,  x0 ,  -1
.LBB0_3:                                //  %entry
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	addi x12 ,  x0 ,  62
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	srli x15 ,  x10 ,  23&31
	andi x14 ,  x15 ,  255
	addi x15 ,  x14 ,  -127
	blt x12, x15, .LBB0_10
.LBB0_4:                                //  %if.then
	blt x15, x0, .LBB0_5
.LBB0_8:                                //  %if.else
	and x13 ,  x13 ,  x10
	lui x12 ,  (8388608>>12)&1048575
	or x10 ,  x12 ,  x13
	slti x13 ,  x15 ,  23
	bltu x0, x13, .LBB0_11
.LBB0_9:                                //  %if.then10
	addi x12 ,  x14 ,  -150
	add x11 ,  x0 ,  x0
	call __ashldi3
	jal x0, .LBB0_12
.LBB0_10:                               //  %if.else19
	call __fixsfdi
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.then5
	addi x14 ,  x0 ,  -1
	beq x15, x14, .LBB0_7
.LBB0_6:                                //  %if.then5
	add x8 ,  x0 ,  x0
.LBB0_7:                                //  %if.then5
	srai x11 ,  x8 ,  31&31
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else13
	addi x13 ,  x0 ,  150
	sub x14 ,  x13 ,  x14
	lui x13 ,  (4194304>>12)&1048575
	srl x15 ,  x13 ,  x15
	add x15 ,  x10 ,  x15
	srl x10 ,  x15 ,  x14
.LBB0_12:                               //  %if.end21
	srai x13 ,  x8 ,  31&31
	add x12 ,  x0 ,  x8
	call __muldi3
.LBB0_13:                               //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_14:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	llroundf, .Lfunc_end0-llroundf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
