	.text
	.file	"quick_exit.c"
	.globl	at_quick_exit           //  -- Begin function at_quick_exit
	.type	at_quick_exit,@function
at_quick_exit:                          //  @at_quick_exit
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	addi x10 ,  x0 ,  8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call malloc
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	lui x30 ,  handlers&4095
	lui x15 ,  (handlers>>12)&1048575
	sw x8 ,  4 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x14 ,  0 ( x15 )
	sw x10 ,  0 ( x15 )
	sw x14 ,  0 ( x10 )
	add x10 ,  x0 ,  x0
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	slti x10 ,  x0 ,  1
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	at_quick_exit, .Lfunc_end0-at_quick_exit
	.cfi_endproc
                                        //  -- End function
	.globl	quick_exit              //  -- Begin function quick_exit
	.type	quick_exit,@function
quick_exit:                             //  @quick_exit
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  handlers&4095
	lui x15 ,  (handlers>>12)&1048575
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB1_2
.LBB1_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  4 ( x9 )
	call_reg, 0 ( x15 )
	lw x9 ,  0 ( x9 )
	bltu x0, x9, .LBB1_1
.LBB1_2:                                //  %for.end
	add x10 ,  x0 ,  x8
	call _exit
.Lfunc_end1:
	.size	quick_exit, .Lfunc_end1-quick_exit
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	handlers,@object        //  @handlers
	.local	handlers
	.comm	handlers,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
