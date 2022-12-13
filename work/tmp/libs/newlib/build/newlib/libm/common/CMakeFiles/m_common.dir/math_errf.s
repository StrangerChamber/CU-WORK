	.text
	.file	"math_errf.c"
	.hidden	__math_uflowf           //  -- Begin function __math_uflowf
	.globl	__math_uflowf
	.type	__math_uflowf,@function
__math_uflowf:                          //  @__math_uflowf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11 ,  (268435456>>12)&1048575
	jal x0, xflowf
.Lfunc_end0:
	.size	__math_uflowf, .Lfunc_end0-__math_uflowf
	.cfi_endproc
                                        //  -- End function
	.type	xflowf,@function        //  -- Begin function xflowf
xflowf:                                 //  @xflowf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x30 ,  -2147483648&4095
	lui x14 ,  (-2147483648>>12)&1048575
	add x15 ,  x0 ,  x10
	add x13 ,  x0 ,  x0
	add x10 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	beq x15, x13, .LBB1_2
.LBB1_1:                                //  %entry
	xor x10 ,  x14 ,  x11
.LBB1_2:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call __mulsf3
	addi x11 ,  x0 ,  34
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	jal x0, with_errnof
.Lfunc_end1:
	.size	xflowf, .Lfunc_end1-xflowf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf           //  -- Begin function __math_oflowf
	.globl	__math_oflowf
	.type	__math_oflowf,@function
__math_oflowf:                          //  @__math_oflowf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x11 ,  (1879048192>>12)&1048575
	jal x0, xflowf
.Lfunc_end2:
	.size	__math_oflowf, .Lfunc_end2-__math_oflowf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzerof         //  -- Begin function __math_divzerof
	.globl	__math_divzerof
	.type	__math_divzerof,@function
__math_divzerof:                        //  @__math_divzerof
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x0
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x10, x8, .LBB3_1
.LBB3_2:                                //  %entry
	addi x10 ,  x0 ,  -1
	jal x0, .LBB3_3
.LBB3_1:
	slti x10 ,  x0 ,  1
.LBB3_3:                                //  %entry
	call __floatsisf
	add x11 ,  x0 ,  x8
	call __divsf3
	addi x11 ,  x0 ,  34
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	jal x0, with_errnof
.Lfunc_end3:
	.size	__math_divzerof, .Lfunc_end3-__math_divzerof
	.cfi_endproc
                                        //  -- End function
	.type	with_errnof,@function   //  -- Begin function with_errnof
with_errnof:                            //  @with_errnof
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
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call __errno
	sw x8 ,  0 ( x10 )
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end4:
	.size	with_errnof, .Lfunc_end4-with_errnof
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_invalidf         //  -- Begin function __math_invalidf
	.globl	__math_invalidf
	.type	__math_invalidf,@function
__math_invalidf:                        //  @__math_invalidf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x11 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __unordsf2
	bltu x0, x10, .LBB5_2
.LBB5_1:                                //  %cond.false
	addi x11 ,  x0 ,  33
	add x10 ,  x0 ,  x8
	call with_errnof
	add x8 ,  x0 ,  x10
.LBB5_2:                                //  %cond.end
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	__math_invalidf, .Lfunc_end5-__math_invalidf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
