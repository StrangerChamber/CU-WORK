	.text
	.file	"wf_j1.c"
	.globl	j1f                     //  -- Begin function j1f
	.type	j1f,@function
j1f:                                    //  @j1f
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
	add x9 ,  x0 ,  x10
	call __ieee754_j1f
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __unordsf2
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x9
	call fabsf
	lui x30 ,  1514737627&4095
	lui x15 ,  (1514737627>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __gtsf2
	bge x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then3
	call __errno
	addi x15 ,  x0 ,  34
	add x8 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
.LBB0_3:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	j1f, .Lfunc_end0-j1f
	.cfi_endproc
                                        //  -- End function
	.globl	y1f                     //  -- Begin function y1f
	.type	y1f,@function
y1f:                                    //  @y1f
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
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x9 ,  x0 ,  x10
	call __ieee754_y1f
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __unordsf2
	bltu x0, x10, .LBB1_7
.LBB1_1:                                //  %if.end
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __ltsf2
	bge x10, x0, .LBB1_3
.LBB1_2:                                //  %if.then2
	call __errno
	addi x15 ,  x0 ,  33
	sw x15 ,  0 ( x10 )
.LBB1_3:                                //  %if.end4
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __nesf2
	addi x18 ,  x0 ,  34
	bltu x0, x10, .LBB1_5
.LBB1_4:                                //  %if.then6
	call __errno
	sw x18 ,  0 ( x10 )
.LBB1_5:                                //  %if.end8
	lui x30 ,  1514737627&4095
	lui x15 ,  (1514737627>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __gtsf2
	bge x0, x10, .LBB1_7
.LBB1_6:                                //  %if.then10
	call __errno
	sw x18 ,  0 ( x10 )
.LBB1_7:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	y1f, .Lfunc_end1-y1f
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
