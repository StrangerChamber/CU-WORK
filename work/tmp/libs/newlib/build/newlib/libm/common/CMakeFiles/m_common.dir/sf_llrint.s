	.text
	.file	"sf_llrint.c"
	.globl	llrintf                 //  -- Begin function llrintf
	.type	llrintf,@function
llrintf:                                //  @llrintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	add x15 ,  x0 ,  x10
	addi x12 ,  x0 ,  62
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	srli x14 ,  x15 ,  23&31
	andi x14 ,  x14 ,  255
	addi x13 ,  x14 ,  -127
	blt x12, x13, .LBB0_6
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x0
	slti x12 ,  x13 ,  -1
	add x11 ,  x0 ,  x10
	bltu x0, x12, .LBB0_11
.LBB0_2:                                //  %if.else
	slt x9 ,  x15 ,  x0
	slti x13 ,  x13 ,  23
	bltu x0, x13, .LBB0_4
.LBB0_3:                                //  %if.then5
	lui x30 ,  8388607&4095
	lui x13 ,  (8388607>>12)&1048575
	addi x12 ,  x14 ,  -150
	add x11 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x15 ,  x13 ,  x15
	lui x13 ,  (8388608>>12)&1048575
	or x10 ,  x13 ,  x15
	call __ashldi3
	add x15 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	beq x9, x14, .LBB0_9
.LBB0_10:                               //  %if.end33
	sub x10 ,  x0 ,  x15
	sltu x15 ,  x0 ,  x15
	add x15 ,  x15 ,  x11
	sub x11 ,  x0 ,  x15
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else31
	add x10 ,  x0 ,  x15
	call __fixsfdi
.LBB0_11:                               //  %cleanup
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.else8
	lui x30 ,  TWO23&4095
	lui x13 ,  (TWO23>>12)&1048575
	slli x14 ,  x9 ,  2&31
	add x11 ,  x0 ,  x15
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	add x14 ,  x14 ,  x13
	lw x8 ,  0 ( x14 )
	add x10 ,  x0 ,  x8
	call __addsf3
	sw x10 ,  8 ( x2 )
	add x11 ,  x0 ,  x8
	lw x10 ,  8 ( x2 )
	call __subsf3
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x10
	beq x0, x15, .LBB0_5
.LBB0_7:                                //  %if.end
	srli x15 ,  x10 ,  23&31
	lui x30 ,  8388607&4095
	addi x14 ,  x0 ,  150
	lui x13 ,  (8388608>>12)&1048575
	add x11 ,  x0 ,  x0
	andi x15 ,  x15 ,  255
	srli x30 ,  x30 ,  12&31
	sub x15 ,  x14 ,  x15
	lui x14 ,  (8388607>>12)&1048575
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x10
	or x14 ,  x13 ,  x14
	srl x15 ,  x14 ,  x15
	add x14 ,  x0 ,  x0
	bne x9, x14, .LBB0_10
.LBB0_9:
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_11
.LBB0_5:
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
	jal x0, .LBB0_11
.Lfunc_end0:
	.size	llrintf, .Lfunc_end0-llrintf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	TWO23,@object           //  @TWO23
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
TWO23:
	.long	1258291200              //  float 8388608
	.long	3405774848              //  float -8388608
	.size	TWO23, 8


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
