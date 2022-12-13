	.text
	.file	"sf_lrint.c"
	.globl	lrintf                  //  -- Begin function lrintf
	.type	lrintf,@function
lrintf:                                 //  @lrintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	add x11 ,  x0 ,  x10
	addi x13 ,  x0 ,  30
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	srli x15 ,  x11 ,  23&31
	andi x15 ,  x15 ,  255
	addi x14 ,  x15 ,  -127
	blt x13, x14, .LBB0_9
.LBB0_1:                                //  %if.then
	add x8 ,  x0 ,  x0
	slti x13 ,  x14 ,  -1
	bltu x0, x13, .LBB0_8
.LBB0_2:                                //  %if.else
	slt x18 ,  x11 ,  x0
	slti x14 ,  x14 ,  23
	bltu x0, x14, .LBB0_4
.LBB0_3:                                //  %if.then5
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	lui x13 ,  (8388608>>12)&1048575
	addi x15 ,  x15 ,  -150
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x11
	or x14 ,  x13 ,  x14
	sll x8 ,  x14 ,  x15
	add x15 ,  x0 ,  x0
	beq x18, x15, .LBB0_8
	jal x0, .LBB0_7
.LBB0_9:                                //  %if.else29
	add x10 ,  x0 ,  x11
	call __fixsfsi
	add x8 ,  x0 ,  x10
.LBB0_8:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.else8
	lui x30 ,  TWO23&4095
	lui x14 ,  (TWO23>>12)&1048575
	slli x15 ,  x18 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x9 ,  0 ( x15 )
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  4 ( x2 )
	add x11 ,  x0 ,  x9
	lw x10 ,  4 ( x2 )
	call __subsf3
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x10
	beq x0, x15, .LBB0_8
.LBB0_5:                                //  %if.end
	srli x15 ,  x10 ,  23&31
	lui x30 ,  8388607&4095
	addi x14 ,  x0 ,  150
	lui x13 ,  (8388608>>12)&1048575
	andi x15 ,  x15 ,  255
	srli x30 ,  x30 ,  12&31
	sub x15 ,  x14 ,  x15
	lui x14 ,  (8388607>>12)&1048575
	or x14 ,  x14 ,  x30
	and x14 ,  x14 ,  x10
	or x14 ,  x13 ,  x14
	srl x8 ,  x14 ,  x15
	add x15 ,  x0 ,  x0
	beq x18, x15, .LBB0_8
.LBB0_7:                                //  %if.end30
	sub x8 ,  x0 ,  x8
	jal x0, .LBB0_8
.Lfunc_end0:
	.size	lrintf, .Lfunc_end0-lrintf
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
