	.text
	.file	"wcstok.c"
	.globl	wcstok                  //  -- Begin function wcstok
	.type	wcstok,@function
wcstok:                                 //  @wcstok
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x10 ,  0 ( x12 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_4 Depth 2
	lw x14 ,  0 ( x10 )
	addi x15 ,  x10 ,  4
	add x13 ,  x0 ,  x11
.LBB0_4:                                //  %for.cond
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x5 ,  0 ( x13 )
	beq x0, x5, .LBB0_7
.LBB0_5:                                //  %for.body
                                        //    in Loop: Header=BB0_4 Depth=2
	addi x13 ,  x13 ,  4
	bne x14, x5, .LBB0_4
.LBB0_6:                                //    in Loop: Header=BB0_3 Depth=1
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_3
.LBB0_7:                                //  %for.end
	beq x0, x14, .LBB0_8
.LBB0_9:                                //  %for.cond10
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	lw x13 ,  0 ( x15 )
	addi x14 ,  x15 ,  4
	add x5 ,  x0 ,  x11
.LBB0_10:                               //  %do.body
                                        //    Parent Loop BB0_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x6 ,  0 ( x5 )
	beq x6, x13, .LBB0_11
.LBB0_16:                               //  %do.cond
                                        //    in Loop: Header=BB0_10 Depth=2
	addi x5 ,  x5 ,  4
	bltu x0, x6, .LBB0_10
.LBB0_17:                               //    in Loop: Header=BB0_9 Depth=1
	add x15 ,  x0 ,  x14
	jal x0, .LBB0_9
.LBB0_11:                               //  %if.then14
	beq x0, x13, .LBB0_12
.LBB0_13:                               //  %if.else
	sw x0 ,  0 ( x15 )
	sw x14 ,  0 ( x12 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.then8
	sw x0 ,  0 ( x12 )
	add x10 ,  x0 ,  x0
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_12:
	add x14 ,  x0 ,  x0
	sw x14 ,  0 ( x12 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcstok, .Lfunc_end0-wcstok
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
