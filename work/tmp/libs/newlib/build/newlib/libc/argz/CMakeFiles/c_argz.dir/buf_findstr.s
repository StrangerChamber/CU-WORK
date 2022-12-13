	.text
	.file	"buf_findstr.c"
	.globl	_buf_findstr            //  -- Begin function _buf_findstr
	.type	_buf_findstr,@function
_buf_findstr:                           //  @_buf_findstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lw x13 ,  0 ( x12 )
	add x15 ,  x0 ,  x0
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -4
	add x14 ,  x0 ,  x15
	beq x0, x13, .LBB0_12
.LBB0_1:                                //  %for.body.lr.ph
	lw x6 ,  0 ( x11 )
	add x14 ,  x0 ,  x0
	slti x16 ,  x0 ,  1
	lbu x7 ,  0 ( x10 )
	add x5 ,  x14 ,  x6
	lbu x17 ,  0 ( x5 )
	beq x7, x17, .LBB0_3
.LBB0_7:                                //  %for.inc
                                        //  =>This Inner Loop Header: Depth=1
	addi x14 ,  x14 ,  1
	bgeu x14, x13, .LBB0_8
.LBB0_2:                                //  %for.body
                                        //    in Loop: Header=BB0_7 Depth=1
	add x5 ,  x14 ,  x6
	lbu x17 ,  0 ( x5 )
	bne x7, x17, .LBB0_7
.LBB0_3:                                //  %while.cond.preheader
	beq x0, x7, .LBB0_11
.LBB0_4:                                //  %while.body.preheader
	add x17 ,  x0 ,  x16
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x29 ,  x17 ,  x10
	lbu x29 ,  0 ( x29 )
	beq x0, x29, .LBB0_10
.LBB0_6:                                //  %while.body.land.rhs_crit_edge
                                        //    in Loop: Header=BB0_5 Depth=1
	add x8 ,  x17 ,  x5
	addi x17 ,  x17 ,  1
	lbu x8 ,  0 ( x8 )
	beq x29, x8, .LBB0_5
	jal x0, .LBB0_7
.LBB0_10:                               //  %if.then19.loopexit
	add x5 ,  x17 ,  x5
	add x14 ,  x17 ,  x14
.LBB0_11:                               //  %if.then19
	sw x5 ,  0 ( x11 )
	sub x15 ,  x13 ,  x14
	slti x10 ,  x0 ,  1
	sw x15 ,  0 ( x12 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %for.end
	bne x14, x13, .LBB0_9
.LBB0_12:                               //  %if.then25
	lw x13 ,  0 ( x11 )
	add x10 ,  x0 ,  x15
	add x14 ,  x14 ,  x13
	sw x14 ,  0 ( x11 )
	sw x15 ,  0 ( x12 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_9:
	add x10 ,  x0 ,  x0
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_buf_findstr, .Lfunc_end0-_buf_findstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
