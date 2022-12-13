	.text
	.file	"sf_signif.c"
	.globl	significandf            //  -- Begin function significandf
	.type	significandf,@function
significandf:                           //  @significandf
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
	call ilogbf
	sub x10 ,  x0 ,  x10
	call __floatsisf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	jal x0, __ieee754_scalbf
.Lfunc_end0:
	.size	significandf, .Lfunc_end0-significandf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
