	.text
	.file	"strrchr.c"
	.globl	strrchr                 //  -- Begin function strrchr
	.type	strrchr,@function
strrchr:                                //  @strrchr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	beq x0, x8, .LBB0_3
.LBB0_1:                                //  %while.cond.preheader
	add x15 ,  x0 ,  x0
.LBB0_2:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x11 ,  x0 ,  x8
	add x9 ,  x0 ,  x15
	call strchr
	add x15 ,  x0 ,  x10
	addi x10 ,  x15 ,  1
	bltu x0, x15, .LBB0_2
	jal x0, .LBB0_4
.LBB0_3:                                //  %if.else
	add x11 ,  x0 ,  x0
	call strchr
	add x9 ,  x0 ,  x10
.LBB0_4:                                //  %if.end
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	strrchr, .Lfunc_end0-strrchr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
