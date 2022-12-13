	.text
	.file	"rget.c"
	.globl	__srget_r               //  -- Begin function __srget_r
	.type	__srget_r,@function
__srget_r:                              //  @__srget_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	beq x0, x10, .LBB0_5
.LBB0_4:
	addi x10 ,  x0 ,  -1
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	bltu x0, x10, .LBB0_4
.LBB0_5:                                //  %if.then2
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x8 )
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	lbu x10 ,  0 ( x15 )
.LBB0_6:                                //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__srget_r, .Lfunc_end0-__srget_r
	.cfi_endproc
                                        //  -- End function
	.globl	__srget                 //  -- Begin function __srget
	.type	__srget,@function
__srget:                                //  @__srget
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end.i
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	beq x0, x10, .LBB1_5
.LBB1_4:
	addi x10 ,  x0 ,  -1
	jal x0, .LBB1_6
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	call __sinit
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	bltu x0, x10, .LBB1_4
.LBB1_5:                                //  %if.then2.i
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x8 )
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	lbu x10 ,  0 ( x15 )
.LBB1_6:                                //  %__srget_r.exit
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__srget, .Lfunc_end1-__srget
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
