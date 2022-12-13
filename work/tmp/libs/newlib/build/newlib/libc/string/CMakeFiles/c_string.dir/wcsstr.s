	.text
	.file	"wcsstr.c"
	.globl	wcsstr                  //  -- Begin function wcsstr
	.type	wcsstr,@function
wcsstr:                                 //  @wcsstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_11
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x8
	call wcslen
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call wcslen
	add x15 ,  x0 ,  x0
	bltu x18, x10, .LBB0_10
.LBB0_2:                                //  %while.cond.preheader
	lw x12 ,  0 ( x8 )
	beq x0, x12, .LBB0_10
.LBB0_3:                                //  %while.cond5.preheader.lr.ph
	lw x14 ,  0 ( x9 )
	beq x0, x14, .LBB0_11
.LBB0_4:                                //  %while.cond5.preheader.preheader
	addi x13 ,  x0 ,  4
	beq x12, x14, .LBB0_6
.LBB0_9:                                //  %if.end14
                                        //  =>This Inner Loop Header: Depth=1
	lw x12 ,  4 ( x8 )
	addi x11 ,  x8 ,  4
	add x8 ,  x0 ,  x11
	beq x0, x12, .LBB0_10
.LBB0_5:                                //  %while.cond5.preheader
                                        //    in Loop: Header=BB0_9 Depth=1
	bne x12, x14, .LBB0_9
.LBB0_6:                                //  %if.end10.preheader
	add x12 ,  x0 ,  x13
.LBB0_7:                                //  %if.end10
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x12 ,  x9
	lw x11 ,  0 ( x11 )
	beq x0, x11, .LBB0_11
.LBB0_8:                                //  %if.end10.while.body7_crit_edge
                                        //    in Loop: Header=BB0_7 Depth=1
	add x10 ,  x12 ,  x8
	addi x12 ,  x12 ,  4
	lw x10 ,  0 ( x10 )
	beq x10, x11, .LBB0_7
	jal x0, .LBB0_9
.LBB0_10:
	add x8 ,  x0 ,  x15
.LBB0_11:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcsstr, .Lfunc_end0-wcsstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
