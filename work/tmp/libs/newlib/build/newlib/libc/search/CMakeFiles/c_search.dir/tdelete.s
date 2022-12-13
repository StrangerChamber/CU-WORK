	.text
	.file	"tdelete.c"
	.globl	tdelete                 //  -- Begin function tdelete
	.type	tdelete,@function
tdelete:                                //  @tdelete
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x18 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	beq x0, x8, .LBB0_19
.LBB0_1:                                //  %lor.lhs.false
	lw x20 ,  0 ( x8 )
	beq x0, x20, .LBB0_19
.LBB0_2:                                //  %while.cond.preheader
	lw x11 ,  0 ( x20 )
	add x10 ,  x0 ,  x19
	call_reg, 0 ( x18 )
	lw x15 ,  0 ( x8 )
	beq x0, x10, .LBB0_3
.LBB0_7:
	add x20 ,  x0 ,  x0
	addi x21 ,  x0 ,  8
	addi x22 ,  x0 ,  4
.LBB0_9:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x9 ,  x0 ,  x15
	blt x10, x20, .LBB0_10
.LBB0_11:                               //  %while.body
                                        //    in Loop: Header=BB0_9 Depth=1
	addi x8 ,  x9 ,  8
	add x15 ,  x0 ,  x21
	add x23 ,  x15 ,  x9
	lw x15 ,  0 ( x23 )
	bltu x0, x15, .LBB0_8
	jal x0, .LBB0_13
.LBB0_10:                               //    in Loop: Header=BB0_9 Depth=1
	addi x8 ,  x9 ,  4
	add x15 ,  x0 ,  x22
	add x23 ,  x15 ,  x9
	lw x15 ,  0 ( x23 )
	beq x0, x15, .LBB0_13
.LBB0_8:                                //  %while.cond
                                        //    in Loop: Header=BB0_9 Depth=1
	lw x11 ,  0 ( x15 )
	add x10 ,  x0 ,  x19
	call_reg, 0 ( x18 )
	lw x15 ,  0 ( x23 )
	bltu x0, x10, .LBB0_9
.LBB0_4:                                //  %while.end
	lw x18 ,  8 ( x15 )
	lw x14 ,  4 ( x15 )
	beq x0, x14, .LBB0_18
.LBB0_5:                                //  %if.else
	beq x0, x18, .LBB0_6
.LBB0_14:                               //  %if.then13
	lw x15 ,  4 ( x18 )
	beq x0, x15, .LBB0_15
.LBB0_16:                               //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x14 ,  x0 ,  x18
	add x18 ,  x0 ,  x15
	lw x15 ,  4 ( x18 )
	bltu x0, x15, .LBB0_16
.LBB0_17:                               //  %for.end
	lw x15 ,  8 ( x18 )
	sw x15 ,  4 ( x14 )
	lw x15 ,  0 ( x8 )
	lw x15 ,  4 ( x15 )
	sw x15 ,  4 ( x18 )
	lw x15 ,  0 ( x8 )
	lw x15 ,  8 ( x15 )
	sw x15 ,  8 ( x18 )
	jal x0, .LBB0_18
.LBB0_3:
	add x9 ,  x0 ,  x20
	lw x18 ,  8 ( x15 )
	lw x14 ,  4 ( x15 )
	bltu x0, x14, .LBB0_5
	jal x0, .LBB0_18
.LBB0_13:
	add x9 ,  x0 ,  x20
	jal x0, .LBB0_19
.LBB0_6:
	add x18 ,  x0 ,  x14
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.then16
	sw x14 ,  4 ( x18 )
.LBB0_18:                               //  %if.end31
	lw x10 ,  0 ( x8 )
	call free
	sw x18 ,  0 ( x8 )
.LBB0_19:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tdelete, .Lfunc_end0-tdelete
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
