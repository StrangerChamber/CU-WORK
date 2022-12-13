	.text
	.file	"wf_remainder.c"
	.globl	remainderf              //  -- Begin function remainderf
	.type	remainderf,@function
remainderf:                             //  @remainderf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x11
	call __ieee754_remainderf
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __nesf2
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then2
	call __errno
	addi x15 ,  x0 ,  33
	lui x8 ,  (2143289344>>12)&1048575
	sw x15 ,  0 ( x10 )
.LBB0_2:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	remainderf, .Lfunc_end0-remainderf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
