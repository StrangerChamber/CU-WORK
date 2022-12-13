	.text
	.file	"wcswidth.c"
	.globl	wcswidth                //  -- Begin function wcswidth
	.type	wcswidth,@function
wcswidth:                               //  @wcswidth
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
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x18, .LBB0_9
.LBB0_1:                                //  %entry
	beq x0, x9, .LBB0_9
.LBB0_2:                                //  %do.body.preheader
	add x20 ,  x0 ,  x0
	addi x19 ,  x0 ,  -1
	add x8 ,  x0 ,  x20
.LBB0_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x18 )
	call __wcwidth
	add x15 ,  x0 ,  x20
	blt x10, x20, .LBB0_5
.LBB0_4:                                //  %do.body
                                        //    in Loop: Header=BB0_3 Depth=1
	add x15 ,  x0 ,  x10
.LBB0_5:                                //  %do.body
                                        //    in Loop: Header=BB0_3 Depth=1
	blt x10, x0, .LBB0_6
.LBB0_7:                                //  %do.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	add x8 ,  x8 ,  x15
	lw x15 ,  0 ( x18 )
	beq x0, x15, .LBB0_9
.LBB0_8:                                //  %land.rhs
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x18 ,  x18 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB0_3
	jal x0, .LBB0_9
.LBB0_6:
	add x8 ,  x0 ,  x19
.LBB0_9:                                //  %cleanup6
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcswidth, .Lfunc_end0-wcswidth
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
