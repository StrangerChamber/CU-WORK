	.text
	.file	"getw.c"
	.globl	getw                    //  -- Begin function getw
	.type	getw,@function
getw:                                   //  @getw
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	slti x8 ,  x0 ,  1
	add x13 ,  x0 ,  x10
	addi x10 ,  x2 ,  4
	addi x11 ,  x0 ,  4
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x12 ,  x0 ,  x8
	call fread
	beq x10, x8, .LBB0_1
.LBB0_2:                                //  %entry
	addi x10 ,  x0 ,  -1
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	lw x10 ,  4 ( x2 )
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	getw, .Lfunc_end0-getw
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
