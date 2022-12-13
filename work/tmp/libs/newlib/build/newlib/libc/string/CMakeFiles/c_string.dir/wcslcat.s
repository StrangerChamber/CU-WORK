	.text
	.file	"wcslcat.c"
	.globl	wcslcat                 //  -- Begin function wcslcat
	.type	wcslcat,@function
wcslcat:                                //  @wcslcat
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
	beq x0, x12, .LBB0_5
.LBB0_1:                                //  %entry
	lw x14 ,  0 ( x10 )
	add x15 ,  x0 ,  x10
	beq x0, x14, .LBB0_5
.LBB0_2:                                //  %while.body.preheader
	xori x15 ,  x14 ,  0
	add x14 ,  x0 ,  x12
	add x5 ,  x0 ,  x10
	sltiu x13 ,  x15 ,  1
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	xori x15 ,  x13 ,  -1
	andi x15 ,  x15 ,  1
	sub x14 ,  x14 ,  x15
	addi x15 ,  x5 ,  4
	beq x0, x14, .LBB0_5
.LBB0_4:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x6 ,  4 ( x5 )
	add x5 ,  x0 ,  x15
	xori x13 ,  x6 ,  0
	sltiu x13 ,  x13 ,  1
	bltu x0, x6, .LBB0_3
.LBB0_5:                                //  %while.end
	sub x14 ,  x15 ,  x10
	srai x8 ,  x14 ,  2&31
	sub x14 ,  x12 ,  x8
	beq x0, x14, .LBB0_8
.LBB0_6:                                //  %while.cond3.preheader
	lw x10 ,  0 ( x11 )
	beq x0, x10, .LBB0_7
.LBB0_9:
	slti x12 ,  x0 ,  1
	add x13 ,  x0 ,  x11
	xori x5 ,  x14 ,  1
	beq x0, x5, .LBB0_11
.LBB0_12:                               //  %if.then7
	sw x10 ,  0 ( x15 )
	addi x14 ,  x14 ,  -1
	addi x15 ,  x15 ,  4
	lw x10 ,  4 ( x13 )
	addi x13 ,  x13 ,  4
	beq x0, x10, .LBB0_14
.LBB0_10:                               //  %while.body5
	xori x5 ,  x14 ,  1
	bltu x0, x5, .LBB0_12
.LBB0_11:
	add x14 ,  x0 ,  x12
	lw x10 ,  4 ( x13 )
	addi x13 ,  x13 ,  4
	bltu x0, x10, .LBB0_10
	jal x0, .LBB0_14
.LBB0_8:                                //  %if.then
	add x10 ,  x0 ,  x11
	call wcslen
	jal x0, .LBB0_15
.LBB0_7:
	add x13 ,  x0 ,  x11
.LBB0_14:                               //  %while.end12
	sw x0 ,  0 ( x15 )
	sub x15 ,  x13 ,  x11
	srai x10 ,  x15 ,  2&31
.LBB0_15:                               //  %cleanup
	add x10 ,  x8 ,  x10
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcslcat, .Lfunc_end0-wcslcat
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
