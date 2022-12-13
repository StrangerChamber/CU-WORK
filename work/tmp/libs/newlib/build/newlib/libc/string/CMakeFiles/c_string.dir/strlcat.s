	.text
	.file	"strlcat.c"
	.globl	strlcat                 //  -- Begin function strlcat
	.type	strlcat,@function
strlcat:                                //  @strlcat
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x15 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	beq x0, x12, .LBB0_4
.LBB0_1:                                //  %land.rhs.preheader
	add x14 ,  x0 ,  x12
	add x15 ,  x0 ,  x10
.LBB0_2:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lbu x13 ,  0 ( x15 )
	beq x0, x13, .LBB0_4
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x14 ,  x14 ,  -1
	addi x15 ,  x15 ,  1
	bltu x0, x14, .LBB0_2
.LBB0_4:                                //  %while.end
	sub x8 ,  x15 ,  x10
	sub x14 ,  x12 ,  x8
	beq x0, x14, .LBB0_7
.LBB0_5:                                //  %while.cond5.preheader
	lbu x10 ,  0 ( x11 )
	beq x0, x10, .LBB0_6
.LBB0_8:
	slti x12 ,  x0 ,  1
	add x13 ,  x0 ,  x11
	xori x5 ,  x14 ,  1
	beq x0, x5, .LBB0_10
.LBB0_11:                               //  %if.then12
	sb x10 ,  0 ( x15 )
	addi x14 ,  x14 ,  -1
	addi x15 ,  x15 ,  1
	lbu x10 ,  1 ( x13 )
	addi x13 ,  x13 ,  1
	beq x0, x10, .LBB0_13
.LBB0_9:                                //  %while.body9
	xori x5 ,  x14 ,  1
	bltu x0, x5, .LBB0_11
.LBB0_10:
	add x14 ,  x0 ,  x12
	lbu x10 ,  1 ( x13 )
	addi x13 ,  x13 ,  1
	bltu x0, x10, .LBB0_9
	jal x0, .LBB0_13
.LBB0_7:                                //  %if.then
	add x10 ,  x0 ,  x11
	call strlen
	jal x0, .LBB0_14
.LBB0_6:
	add x13 ,  x0 ,  x11
.LBB0_13:                               //  %while.end17
	sub x10 ,  x13 ,  x11
	sb x0 ,  0 ( x15 )
.LBB0_14:                               //  %cleanup
	add x10 ,  x8 ,  x10
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	strlcat, .Lfunc_end0-strlcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
