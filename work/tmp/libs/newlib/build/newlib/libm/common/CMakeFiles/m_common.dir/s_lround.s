	.text
	.file	"s_lround.c"
	.globl	lround                  //  -- Begin function lround
	.type	lround,@function
lround:                                 //  @lround
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	add x14 ,  x0 ,  x0
	blt x11, x14, .LBB0_1
.LBB0_2:                                //  %entry
	slti x15 ,  x0 ,  1
	jal x0, .LBB0_3
.LBB0_1:
	addi x15 ,  x0 ,  -1
.LBB0_3:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  1048575&4095
	lui x13 ,  (1048575>>12)&1048575
	lui x12 ,  (1048576>>12)&1048575
	addi x6 ,  x0 ,  19
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	and x13 ,  x13 ,  x11
	or x13 ,  x12 ,  x13
	srli x12 ,  x11 ,  20&31
	andi x12 ,  x12 ,  2047
	addi x5 ,  x12 ,  -1023
	blt x6, x5, .LBB0_7
.LBB0_4:                                //  %if.then
	blt x5, x0, .LBB0_5
.LBB0_12:                               //  %if.else10
	addi x14 ,  x0 ,  1043
	sub x14 ,  x14 ,  x12
	lui x12 ,  (524288>>12)&1048575
	srl x12 ,  x12 ,  x5
	add x13 ,  x13 ,  x12
	srl x10 ,  x13 ,  x14
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.else14
	addi x6 ,  x0 ,  30
	bltu x6, x5, .LBB0_11
.LBB0_8:                                //  %if.else23
	lui x30 ,  -2147483648&4095
	lui x5 ,  (-2147483648>>12)&1048575
	addi x11 ,  x12 ,  -1043
	addi x6 ,  x0 ,  1043
	srli x30 ,  x30 ,  12&31
	or x5 ,  x5 ,  x30
	srl x5 ,  x5 ,  x11
	add x10 ,  x10 ,  x5
	bgeu x6, x12, .LBB0_10
.LBB0_9:
	addi x14 ,  x0 ,  1075
	sub x14 ,  x14 ,  x12
	srl x14 ,  x10 ,  x14
.LBB0_10:                               //  %if.else23
	sltu x12 ,  x10 ,  x5
	add x13 ,  x12 ,  x13
	sll x13 ,  x13 ,  x11
	or x10 ,  x14 ,  x13
.LBB0_13:                               //  %if.end41
	add x11 ,  x0 ,  x15
	call __mulsi3
	jal x0, .LBB0_14
.LBB0_11:                               //  %if.else39
	call __fixdfsi
.LBB0_14:                               //  %cleanup
	add x15 ,  x0 ,  x10
.LBB0_15:                               //  %cleanup
	add x10 ,  x0 ,  x15
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.then7
	addi x14 ,  x0 ,  -1
	beq x5, x14, .LBB0_15
.LBB0_6:                                //  %if.then7
	add x15 ,  x0 ,  x0
	add x10 ,  x0 ,  x15
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lround, .Lfunc_end0-lround
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
