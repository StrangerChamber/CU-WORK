	.text
	.file	"s_round.c"
	.globl	round                   //  -- Begin function round
	.type	round,@function
round:                                  //  @round
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
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x10
	addi x14 ,  x0 ,  19
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x15 ,  x9 ,  20&31
	andi x15 ,  x15 ,  2047
	addi x18 ,  x15 ,  -1023
	blt x14, x18, .LBB0_7
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_2
.LBB0_5:                                //  %if.else
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x18
	and x15 ,  x9 ,  x15
	or x15 ,  x8 ,  x15
	beq x0, x15, .LBB0_14
.LBB0_6:                                //  %cleanup.thread
	lui x30 ,  -1048576&4095
	lui x14 ,  (524288>>12)&1048575
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	srl x14 ,  x14 ,  x18
	or x15 ,  x15 ,  x30
	add x14 ,  x9 ,  x14
	sra x15 ,  x15 ,  x18
	and x15 ,  x15 ,  x14
	jal x0, .LBB0_4
.LBB0_7:                                //  %if.else18
	slti x14 ,  x18 ,  52
	bltu x0, x14, .LBB0_11
.LBB0_8:                                //  %if.then20
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	call __adddf3
	addi x15 ,  x0 ,  1024
	beq x18, x15, .LBB0_10
.LBB0_9:                                //  %if.then20
	add x11 ,  x0 ,  x9
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_10
.LBB0_11:                               //  %if.else25
	addi x14 ,  x15 ,  -1043
	addi x13 ,  x0 ,  -1
	srl x14 ,  x13 ,  x14
	and x13 ,  x8 ,  x14
	beq x0, x13, .LBB0_14
.LBB0_12:                               //  %cleanup41.thread
	addi x13 ,  x0 ,  1074
	xori x14 ,  x14 ,  -1
	sub x15 ,  x13 ,  x15
	slti x13 ,  x0 ,  1
	sll x15 ,  x13 ,  x15
	add x13 ,  x8 ,  x15
	sltu x15 ,  x13 ,  x15
	and x8 ,  x14 ,  x13
	add x14 ,  x0 ,  x0
	add x15 ,  x9 ,  x15
	jal x0, .LBB0_13
.LBB0_2:                                //  %if.then5
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	bne x18, x14, .LBB0_4
.LBB0_3:
	lui x14 ,  (1072693248>>12)&1048575
	or x15 ,  x14 ,  x15
.LBB0_4:                                //  %if.then5
	add x8 ,  x0 ,  x0
	add x14 ,  x0 ,  x8
.LBB0_13:                               //  %do.body47
	or x9 ,  x14 ,  x15
.LBB0_14:                               //  %cleanup55
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
.LBB0_10:                               //  %if.then20
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	round, .Lfunc_end0-round
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
