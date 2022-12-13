	.text
	.file	"wf_sqrt.c"
	.globl	sqrtf                   //  -- Begin function sqrtf
	.type	sqrtf,@function
sqrtf:                                  //  @sqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	add x11 ,  x0 ,  x0
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x8 ,  x0 ,  x10
	call __ltsf2
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_sqrtf
	bge x9, x0, .LBB0_2
.LBB0_1:                                //  %if.then2
	call __errno
	addi x15 ,  x0 ,  33
	sw x15 ,  0 ( x10 )
	lui x10 ,  (2143289344>>12)&1048575
.LBB0_2:                                //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	sqrtf, .Lfunc_end0-sqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
