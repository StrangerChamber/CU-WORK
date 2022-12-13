	.text
	.file	"sf_floor.c"
	.globl	floorf                  //  -- Begin function floorf
	.type	floorf,@function
floorf:                                 //  @floorf
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
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x19 ,  x15 ,  x8
	addi x15 ,  x0 ,  22
	srli x9 ,  x19 ,  23&31
	addi x18 ,  x9 ,  -127
	blt x15, x18, .LBB0_5
.LBB0_1:                                //  %if.then
	blt x18, x0, .LBB0_8
.LBB0_2:                                //  %if.else11
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	srl x15 ,  x15 ,  x18
	and x15 ,  x8 ,  x15
	beq x0, x15, .LBB0_12
.LBB0_3:                                //  %if.end16
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x0
	call __gtsf2
	add x9 ,  x0 ,  x8
	bge x0, x10, .LBB0_13
.LBB0_4:                                //  %if.then19
	lui x30 ,  -8388608&4095
	lui x14 ,  (8388608>>12)&1048575
	lui x15 ,  (-8388608>>12)&1048575
	srai x13 ,  x8 ,  31&31
	srl x14 ,  x14 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x14 ,  x14 ,  x13
	sra x15 ,  x15 ,  x18
	add x14 ,  x8 ,  x14
	and x9 ,  x15 ,  x14
	jal x0, .LBB0_13
.LBB0_5:                                //  %if.else28
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	addi x15 ,  x0 ,  255
	bltu x9, x15, .LBB0_7
.LBB0_6:                                //  %if.else28
	add x8 ,  x0 ,  x10
.LBB0_7:                                //  %if.else28
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then2
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x9 ,  x0 ,  x0
	add x11 ,  x0 ,  x9
	call __gtsf2
	bge x0, x10, .LBB0_12
.LBB0_9:                                //  %if.then4
	bge x8, x0, .LBB0_13
.LBB0_10:                               //  %if.else
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	beq x19, x14, .LBB0_12
.LBB0_11:                               //  %if.else
	add x8 ,  x0 ,  x15
.LBB0_12:
	add x9 ,  x0 ,  x8
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x9
.LBB0_14:                               //  %if.else28
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	floorf, .Lfunc_end0-floorf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
