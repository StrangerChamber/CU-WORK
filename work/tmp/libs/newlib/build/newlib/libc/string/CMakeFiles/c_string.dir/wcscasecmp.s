	.text
	.file	"wcscasecmp.c"
	.globl	wcscasecmp              //  -- Begin function wcscasecmp
	.type	wcscasecmp,@function
wcscasecmp:                             //  @wcscasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
.LBB0_1:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x9 )
	call towlower
	add x18 ,  x0 ,  x10
	lw x10 ,  0 ( x8 )
	call towlower
	add x15 ,  x0 ,  x10
	sub x10 ,  x18 ,  x15
	beq x0, x15, .LBB0_3
.LBB0_2:                                //  %for.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x8 ,  x8 ,  4
	addi x9 ,  x9 ,  4
	beq x0, x10, .LBB0_1
.LBB0_3:                                //  %for.end
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wcscasecmp, .Lfunc_end0-wcscasecmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
