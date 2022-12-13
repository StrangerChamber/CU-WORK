	.text
	.file	"tfind.c"
	.globl	tfind                   //  -- Begin function tfind
	.type	tfind,@function
tfind:                                  //  @tfind
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x9 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x19, .LBB0_9
.LBB0_1:                                //  %while.cond.preheader
	lw x15 ,  0 ( x19 )
	beq x0, x15, .LBB0_9
.LBB0_2:                                //  %while.body.preheader
	add x8 ,  x0 ,  x0
	addi x20 ,  x0 ,  8
	addi x21 ,  x0 ,  4
	lw x11 ,  0 ( x15 )
	add x10 ,  x0 ,  x18
	call_reg, 0 ( x9 )
	bltu x0, x10, .LBB0_5
	jal x0, .LBB0_4
.LBB0_7:                                //  %cleanup
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x19 ,  x15 ,  8
	add x14 ,  x0 ,  x20
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	beq x0, x15, .LBB0_9
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11 ,  0 ( x15 )
	add x10 ,  x0 ,  x18
	call_reg, 0 ( x9 )
	beq x0, x10, .LBB0_4
.LBB0_5:                                //  %cleanup
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  0 ( x19 )
	bge x10, x8, .LBB0_7
.LBB0_6:                                //    in Loop: Header=BB0_5 Depth=1
	addi x19 ,  x15 ,  4
	add x14 ,  x0 ,  x21
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_3
	jal x0, .LBB0_9
.LBB0_4:                                //  %cleanup.thread
	lw x8 ,  0 ( x19 )
.LBB0_9:                                //  %cleanup6
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tfind, .Lfunc_end0-tfind
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
