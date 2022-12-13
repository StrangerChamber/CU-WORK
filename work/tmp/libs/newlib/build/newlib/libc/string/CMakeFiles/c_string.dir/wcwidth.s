	.text
	.file	"wcwidth.c"
	.globl	__wcwidth               //  -- Begin function __wcwidth
	.type	__wcwidth,@function
__wcwidth:                              //  @__wcwidth
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	call iswprint
	beq x0, x10, .LBB0_2
.LBB0_1:
	slti x10 ,  x0 ,  1
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x8
	call iswcntrl
	xori x14 ,  x10 ,  0
	sltu x15 ,  x0 ,  x8
	sltiu x14 ,  x14 ,  1
	and x15 ,  x14 ,  x15
	sub x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__wcwidth, .Lfunc_end0-__wcwidth
	.cfi_endproc
                                        //  -- End function
	.globl	wcwidth                 //  -- Begin function wcwidth
	.type	wcwidth,@function
wcwidth:                                //  @wcwidth
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	call iswprint
	beq x0, x10, .LBB1_2
.LBB1_1:
	slti x10 ,  x0 ,  1
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.end.i
	add x10 ,  x0 ,  x8
	call iswcntrl
	xori x14 ,  x10 ,  0
	sltu x15 ,  x0 ,  x8
	sltiu x14 ,  x14 ,  1
	and x15 ,  x14 ,  x15
	sub x10 ,  x0 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	wcwidth, .Lfunc_end1-wcwidth
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
