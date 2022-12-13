	.text
	.file	"wf_fmod.c"
	.globl	fmodf                   //  -- Begin function fmodf
	.type	fmodf,@function
fmodf:                                  //  @fmodf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	call __ieee754_fmodf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __unordsf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __nesf2
	bltu x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	call __errno
	addi x15 ,  x0 ,  33
	lui x8 ,  (2143289344>>12)&1048575
	sw x15 ,  0 ( x10 )
.LBB0_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	fmodf, .Lfunc_end0-fmodf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
