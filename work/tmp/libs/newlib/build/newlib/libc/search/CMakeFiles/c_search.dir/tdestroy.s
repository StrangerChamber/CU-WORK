	.text
	.file	"tdestroy.c"
	.globl	tdestroy                //  -- Begin function tdestroy
	.type	tdestroy,@function
tdestroy:                               //  @tdestroy
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	beq x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call trecurse
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
.LBB0_2:                                //  %if.end
	ret
.Lfunc_end0:
	.size	tdestroy, .Lfunc_end0-tdestroy
	.cfi_endproc
                                        //  -- End function
	.type	trecurse,@function      //  -- Begin function trecurse
trecurse:                               //  @trecurse
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x10 ,  4 ( x8 )
	beq x0, x10, .LBB1_2
.LBB1_1:                                //  %if.then
	add x11 ,  x0 ,  x9
	call trecurse
.LBB1_2:                                //  %if.end
	lw x10 ,  8 ( x8 )
	beq x0, x10, .LBB1_4
.LBB1_3:                                //  %if.then3
	add x11 ,  x0 ,  x9
	call trecurse
.LBB1_4:                                //  %if.end5
	lw x10 ,  0 ( x8 )
	call_reg, 0 ( x9 )
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, free
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
