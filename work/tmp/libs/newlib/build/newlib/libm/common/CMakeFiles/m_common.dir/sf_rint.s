	.text
	.file	"sf_rint.c"
	.globl	rintf                   //  -- Begin function rintf
	.type	rintf,@function
rintf:                                  //  @rintf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lui x18 ,  (2147483647>>12)&1048575
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	addi x13 ,  x0 ,  22
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x18 ,  x30
	and x15 ,  x15 ,  x8
	srli x9 ,  x15 ,  23&31
	addi x14 ,  x9 ,  -127
	blt x13, x14, .LBB0_8
.LBB0_1:                                //  %if.then
	beq x0, x15, .LBB0_10
.LBB0_2:                                //  %if.end
	slt x15 ,  x8 ,  x0
	blt x14, x0, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x30 ,  8388607&4095
	lui x13 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	srl x13 ,  x13 ,  x14
	and x12 ,  x8 ,  x13
	beq x0, x12, .LBB0_10
.LBB0_5:                                //  %if.end38
	srli x13 ,  x13 ,  1&31
	and x12 ,  x8 ,  x13
	beq x0, x12, .LBB0_7
.LBB0_6:                                //  %if.then42
	xori x13 ,  x13 ,  -1
	lui x12 ,  (2097152>>12)&1048575
	srl x14 ,  x12 ,  x14
	and x13 ,  x8 ,  x13
	or x8 ,  x14 ,  x13
.LBB0_7:                                //  %do.body54
	lui x30 ,  TWO23&4095
	lui x14 ,  (TWO23>>12)&1048575
	slli x15 ,  x15 ,  2&31
	add x11 ,  x0 ,  x8
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
	jal x0, .LBB0_9
.LBB0_8:                                //  %if.else48
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	addi x15 ,  x0 ,  255
	bltu x9, x15, .LBB0_10
.LBB0_9:                                //  %if.else48
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_10
.LBB0_3:                                //  %if.then6
	lui x30 ,  8388607&4095
	lui x14 ,  (8388607>>12)&1048575
	lui x13 ,  (4194304>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lui x30 ,  -1048576&4095
	and x14 ,  x14 ,  x8
	srli x30 ,  x30 ,  12&31
	sub x14 ,  x0 ,  x14
	srli x14 ,  x14 ,  9&31
	and x14 ,  x13 ,  x14
	lui x13 ,  (-1048576>>12)&1048575
	or x13 ,  x13 ,  x30
	lui x30 ,  TWO23&4095
	and x13 ,  x13 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x13 ,  x14
	lui x14 ,  (TWO23>>12)&1048575
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x9 ,  0 ( x15 )
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  4 ( x2 )
	add x11 ,  x0 ,  x9
	lw x10 ,  4 ( x2 )
	call __subsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x8
	or x14 ,  x18 ,  x30
	and x14 ,  x14 ,  x10
	or x8 ,  x15 ,  x14
.LBB0_10:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	rintf, .Lfunc_end0-rintf
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
