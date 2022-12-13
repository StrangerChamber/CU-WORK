	.text
	.file	"math_err.c"
	.hidden	__math_uflow            //  -- Begin function __math_uflow
	.globl	__math_uflow
	.type	__math_uflow,@function
__math_uflow:                           //  @__math_uflow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x0
	lui x12 ,  (268435456>>12)&1048575
	jal x0, xflow
.Lfunc_end0:
	.size	__math_uflow, .Lfunc_end0-__math_uflow
	.cfi_endproc
                                        //  -- End function
	.type	xflow,@function         //  -- Begin function xflow
xflow:                                  //  @xflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x30 ,  -2147483648&4095
	add x13 ,  x0 ,  x12
	lui x15 ,  (-2147483648>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	add x15 ,  x0 ,  x13
	beq x10, x11, .LBB1_2
.LBB1_1:                                //  %entry
	xor x15 ,  x14 ,  x13
.LBB1_2:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	addi x14 ,  x2 ,  8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	ori x14 ,  x14 ,  4
	sw x15 ,  0 ( x14 )
	sw x12 ,  8 ( x2 )
	lw x11 ,  0 ( x14 )
	lw x10 ,  8 ( x2 )
	call __muldf3
	addi x12 ,  x0 ,  34
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, with_errno
.Lfunc_end1:
	.size	xflow, .Lfunc_end1-xflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_may_uflow        //  -- Begin function __math_may_uflow
	.globl	__math_may_uflow
	.type	__math_may_uflow,@function
__math_may_uflow:                       //  @__math_may_uflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x0
	lui x12 ,  (509083648>>12)&1048575
	jal x0, xflow
.Lfunc_end2:
	.size	__math_may_uflow, .Lfunc_end2-__math_may_uflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflow            //  -- Begin function __math_oflow
	.globl	__math_oflow
	.type	__math_oflow,@function
__math_oflow:                           //  @__math_oflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x11 ,  x0 ,  x0
	lui x12 ,  (1879048192>>12)&1048575
	jal x0, xflow
.Lfunc_end3:
	.size	__math_oflow, .Lfunc_end3-__math_oflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_divzero          //  -- Begin function __math_divzero
	.globl	__math_divzero
	.type	__math_divzero,@function
__math_divzero:                         //  @__math_divzero
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bne x10, x12, .LBB4_2
.LBB4_1:
	lui x15 ,  (1072693248>>12)&1048575
.LBB4_2:                                //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	addi x14 ,  x2 ,  8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x13 ,  x0 ,  x12
	ori x14 ,  x14 ,  4
	sw x15 ,  0 ( x14 )
	sw x0 ,  8 ( x2 )
	lw x11 ,  0 ( x14 )
	lw x10 ,  8 ( x2 )
	call __divdf3
	addi x12 ,  x0 ,  34
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, with_errno
.Lfunc_end4:
	.size	__math_divzero, .Lfunc_end4-__math_divzero
	.cfi_endproc
                                        //  -- End function
	.type	with_errno,@function    //  -- Begin function with_errno
with_errno:                             //  @with_errno
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
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	call __errno
	sw x8 ,  0 ( x10 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end5:
	.size	with_errno, .Lfunc_end5-with_errno
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_invalid          //  -- Begin function __math_invalid
	.globl	__math_invalid
	.type	__math_invalid,@function
__math_invalid:                         //  @__math_invalid
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __divdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB6_2
.LBB6_1:                                //  %cond.false
	addi x12 ,  x0 ,  33
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call with_errno
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB6_2:                                //  %cond.end
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end6:
	.size	__math_invalid, .Lfunc_end6-__math_invalid
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_check_uflow      //  -- Begin function __math_check_uflow
	.globl	__math_check_uflow
	.type	__math_check_uflow,@function
__math_check_uflow:                     //  @__math_check_uflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	add x12 ,  x0 ,  x0
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB7_2
.LBB7_1:                                //  %cond.true
	addi x12 ,  x0 ,  34
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call with_errno
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB7_2:                                //  %cond.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end7:
	.size	__math_check_uflow, .Lfunc_end7-__math_check_uflow
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_check_oflow      //  -- Begin function __math_check_oflow
	.globl	__math_check_oflow
	.type	__math_check_oflow,@function
__math_check_oflow:                     //  @__math_check_oflow
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x11
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x11 ,  x15 ,  x8
	call __nedf2
	bltu x0, x10, .LBB8_2
.LBB8_1:                                //  %cond.true
	addi x12 ,  x0 ,  34
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call with_errno
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB8_2:                                //  %cond.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end8:
	.size	__math_check_oflow, .Lfunc_end8-__math_check_oflow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
