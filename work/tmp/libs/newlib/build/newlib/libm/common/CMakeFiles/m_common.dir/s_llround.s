	.text
	.file	"s_llround.c"
	.globl	llround                 //  -- Begin function llround
	.type	llround,@function
llround:                                //  @llround
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	blt x11, x9, .LBB0_1
.LBB0_2:                                //  %entry
	slti x8 ,  x0 ,  1
	jal x0, .LBB0_3
.LBB0_1:
	addi x8 ,  x0 ,  -1
.LBB0_3:                                //  %entry
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	lui x14 ,  (1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x11
	or x10 ,  x14 ,  x15
	srli x15 ,  x11 ,  20&31
	addi x14 ,  x0 ,  19
	andi x19 ,  x15 ,  2047
	addi x15 ,  x19 ,  -1023
	blt x14, x15, .LBB0_8
.LBB0_4:                                //  %if.then
	blt x15, x0, .LBB0_5
.LBB0_15:                               //  %if.else10
	lui x13 ,  (524288>>12)&1048575
	addi x14 ,  x0 ,  1043
	add x11 ,  x0 ,  x0
	srl x15 ,  x13 ,  x15
	sub x14 ,  x14 ,  x19
	add x15 ,  x10 ,  x15
	srl x10 ,  x15 ,  x14
	jal x0, .LBB0_16
.LBB0_8:                                //  %if.else15
	addi x14 ,  x0 ,  62
	bltu x14, x15, .LBB0_14
.LBB0_9:                                //  %if.then18
	addi x12 ,  x19 ,  -1043
	slti x15 ,  x15 ,  52
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %if.then21
	add x11 ,  x0 ,  x0
	call __ashldi3
	addi x15 ,  x19 ,  -1075
	sll x15 ,  x18 ,  x15
	or x10 ,  x15 ,  x10
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else49
	add x10 ,  x0 ,  x18
	call __fixdfdi
	jal x0, .LBB0_17
.LBB0_5:                                //  %if.then7
	addi x14 ,  x0 ,  -1
	beq x15, x14, .LBB0_7
.LBB0_6:                                //  %if.then7
	add x8 ,  x0 ,  x0
.LBB0_7:                                //  %if.then7
	srai x11 ,  x8 ,  31&31
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_17
.LBB0_11:                               //  %if.else28
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x12
	add x18 ,  x18 ,  x15
	sltu x15 ,  x18 ,  x15
	add x10 ,  x15 ,  x10
	call __ashldi3
	addi x15 ,  x0 ,  1043
	bgeu x15, x19, .LBB0_13
.LBB0_12:
	addi x15 ,  x0 ,  1075
	sub x15 ,  x15 ,  x19
	srl x9 ,  x18 ,  x15
.LBB0_13:                               //  %if.else28
	or x10 ,  x9 ,  x10
.LBB0_16:                               //  %if.end52
	srai x13 ,  x8 ,  31&31
	add x12 ,  x0 ,  x8
	call __muldi3
.LBB0_17:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	llround, .Lfunc_end0-llround
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
