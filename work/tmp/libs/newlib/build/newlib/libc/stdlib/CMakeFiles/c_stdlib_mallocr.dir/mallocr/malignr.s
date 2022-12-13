	.text
	.file	"malignr.c"
	.globl	_memalign_r             //  -- Begin function _memalign_r
	.type	_memalign_r,@function
_memalign_r:                            //  @_memalign_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	addi x15 ,  x18 ,  -1
	and x15 ,  x15 ,  x18
	bltu x0, x15, .LBB0_18
.LBB0_1:                                //  %if.end
	addi x15 ,  x0 ,  8
	bltu x15, x18, .LBB0_3
.LBB0_2:                                //  %if.end
	add x18 ,  x0 ,  x15
.LBB0_3:                                //  %if.end
	sltiu x15 ,  x12 ,  -4
	beq x0, x15, .LBB0_4
.LBB0_5:                                //  %if.end4
	addi x15 ,  x0 ,  7
	addi x14 ,  x0 ,  4
	sub x15 ,  x15 ,  x18
	bltu x14, x12, .LBB0_7
.LBB0_6:                                //  %if.end4
	add x12 ,  x0 ,  x14
.LBB0_7:                                //  %if.end4
	addi x14 ,  x12 ,  3
	andi x19 ,  x14 ,  -4
	bgeu x15, x19, .LBB0_8
.LBB0_4:                                //  %if.then3
	addi x15 ,  x0 ,  12
	sw x15 ,  0 ( x8 )
.LBB0_18:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.end17
	add x15 ,  x19 ,  x18
	add x10 ,  x0 ,  x8
	addi x11 ,  x15 ,  -8
	call _malloc_r
	beq x0, x10, .LBB0_18
.LBB0_9:                                //  %if.end22
	lw x14 ,  -4 ( x10 )
	addi x15 ,  x10 ,  -4
	add x13 ,  x0 ,  x0
	bge x14, x13, .LBB0_11
.LBB0_10:
	add x15 ,  x14 ,  x15
.LBB0_11:                               //  %if.end22
	addi x11 ,  x15 ,  4
	sub x13 ,  x0 ,  x18
	add x14 ,  x11 ,  x18
	addi x14 ,  x14 ,  -1
	and x9 ,  x13 ,  x14
	sub x14 ,  x9 ,  x11
	beq x0, x14, .LBB0_15
.LBB0_12:                               //  %if.then29
	sltiu x13 ,  x14 ,  12
	bltu x0, x13, .LBB0_14
.LBB0_13:                               //  %if.then31
	lw x13 ,  0 ( x15 )
	add x10 ,  x0 ,  x8
	add x18 ,  x14 ,  x15
	sub x13 ,  x13 ,  x14
	sw x13 ,  0 ( x18 )
	sw x14 ,  0 ( x15 )
	call _free_r
	jal x0, .LBB0_16
.LBB0_14:                               //  %if.else
	add x13 ,  x14 ,  x15
	sub x14 ,  x0 ,  x14
	sw x14 ,  0 ( x13 )
.LBB0_15:                               //  %if.end40
	add x18 ,  x0 ,  x15
.LBB0_16:                               //  %if.end40
	lw x14 ,  0 ( x18 )
	add x15 ,  x19 ,  x9
	addi x12 ,  x15 ,  12
	add x13 ,  x14 ,  x18
	bgeu x12, x13, .LBB0_18
.LBB0_17:                               //  %if.then46
	sub x13 ,  x15 ,  x18
	addi x11 ,  x15 ,  4
	add x10 ,  x0 ,  x8
	sub x14 ,  x14 ,  x13
	sw x13 ,  0 ( x18 )
	sw x14 ,  0 ( x15 )
	call _free_r
	jal x0, .LBB0_18
.Lfunc_end0:
	.size	_memalign_r, .Lfunc_end0-_memalign_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
