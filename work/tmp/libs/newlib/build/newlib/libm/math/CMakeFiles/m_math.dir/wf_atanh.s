	.text
	.file	"wf_atanh.c"
	.globl	atanhf                  //  -- Begin function atanhf
	.type	atanhf,@function
atanhf:                                 //  @atanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x8 ,  x0 ,  x10
	call __ieee754_atanhf
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x8
	call fabsf
	lui x11 ,  (1065353216>>12)&1048575
	add x18 ,  x0 ,  x10
	call __gesf2
	blt x10, x0, .LBB0_5
.LBB0_2:                                //  %if.then3
	call __errno
	addi x15 ,  x0 ,  33
	lui x11 ,  (1065353216>>12)&1048575
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x18
	call __gtsf2
	bge x0, x10, .LBB0_4
.LBB0_3:
	lui x9 ,  (2143289344>>12)&1048575
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
	call __divsf3
	add x9 ,  x0 ,  x10
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	atanhf, .Lfunc_end0-atanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
