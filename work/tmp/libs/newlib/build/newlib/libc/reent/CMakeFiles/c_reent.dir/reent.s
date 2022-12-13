	.text
	.file	"reent.c"
	.globl	cleanup_glue            //  -- Begin function cleanup_glue
	.type	cleanup_glue,@function
cleanup_glue:                           //  @cleanup_glue
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lw x11 ,  0 ( x8 )
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	call cleanup_glue
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, _free_r
.Lfunc_end0:
	.size	cleanup_glue, .Lfunc_end0-cleanup_glue
	.cfi_endproc
                                        //  -- End function
	.globl	_reclaim_reent          //  -- Begin function _reclaim_reent
	.type	_reclaim_reent,@function
_reclaim_reent:                         //  @_reclaim_reent
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	beq x15, x8, .LBB1_18
.LBB1_1:                                //  %if.then
	lw x15 ,  76 ( x8 )
	beq x0, x15, .LBB1_8
.LBB1_2:                                //  %for.body.preheader
	add x9 ,  x0 ,  x0
	slli x14 ,  x9 ,  2&31
	add x15 ,  x14 ,  x15
	lw x11 ,  0 ( x15 )
	beq x0, x11, .LBB1_5
.LBB1_4:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	lw x18 ,  0 ( x11 )
	call _free_r
	add x11 ,  x0 ,  x18
	bltu x0, x18, .LBB1_4
.LBB1_5:                                //  %while.end
                                        //  =>This Inner Loop Header: Depth=1
	addi x9 ,  x9 ,  1
	xori x15 ,  x9 ,  32
	beq x0, x15, .LBB1_7
.LBB1_6:                                //  %while.end.for.body_crit_edge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x15 ,  76 ( x8 )
	slli x14 ,  x9 ,  2&31
	add x15 ,  x14 ,  x15
	lw x11 ,  0 ( x15 )
	bltu x0, x11, .LBB1_4
	jal x0, .LBB1_5
.LBB1_7:                                //  %for.end
	lw x11 ,  76 ( x8 )
	add x10 ,  x0 ,  x8
	call _free_r
.LBB1_8:                                //  %if.end
	lw x11 ,  64 ( x8 )
	beq x0, x11, .LBB1_10
.LBB1_9:                                //  %if.then7
	add x10 ,  x0 ,  x8
	call _free_r
.LBB1_10:                               //  %if.end9
	lw x11 ,  328 ( x8 )
	beq x0, x11, .LBB1_13
.LBB1_11:                               //  %land.lhs.true
	addi x9 ,  x8 ,  332
	beq x11, x9, .LBB1_13
.LBB1_12:                               //  %for.body18
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	lw x18 ,  0 ( x11 )
	call _free_r
	add x11 ,  x0 ,  x18
	bne x18, x9, .LBB1_12
.LBB1_13:                               //  %if.end21
	lw x11 ,  84 ( x8 )
	beq x0, x11, .LBB1_15
.LBB1_14:                               //  %if.then23
	add x10 ,  x0 ,  x8
	call _free_r
.LBB1_15:                               //  %if.end25
	lw x15 ,  56 ( x8 )
	beq x0, x15, .LBB1_18
.LBB1_16:                               //  %if.then27
	lw x15 ,  60 ( x8 )
	add x10 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	lw x11 ,  736 ( x8 )
	beq x0, x11, .LBB1_18
.LBB1_17:                               //  %if.then30
	add x10 ,  x0 ,  x8
	call cleanup_glue
.LBB1_18:                               //  %if.end35
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_reclaim_reent, .Lfunc_end1-_reclaim_reent
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	errno,@object           //  @errno
	.comm	errno,4,4

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
