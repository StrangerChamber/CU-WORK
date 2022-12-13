	.text
	.file	"wcscasecmp_l.c"
	.globl	wcscasecmp_l            //  -- Begin function wcscasecmp_l
	.type	wcscasecmp_l,@function
wcscasecmp_l:                           //  @wcscasecmp_l
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
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x18 )
	add x11 ,  x0 ,  x8
	call towlower_l
	add x19 ,  x0 ,  x10
	lw x10 ,  0 ( x9 )
	add x11 ,  x0 ,  x8
	call towlower_l
	add x15 ,  x0 ,  x10
	sub x10 ,  x19 ,  x15
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x9 ,  x9 ,  4
	addi x18 ,  x18 ,  4
	beq x0, x10, .LBB0_1
.LBB0_3:                                //  %for.end
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcscasecmp_l, .Lfunc_end0-wcscasecmp_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
