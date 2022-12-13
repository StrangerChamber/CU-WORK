	.text
	.file	"fwalk.c"
	.globl	_fwalk                  //  -- Begin function _fwalk
	.type	_fwalk,@function
_fwalk:                                 //  @_fwalk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x0
	addi x19 ,  x10 ,  736
	lui x20 ,  (65535>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x21 ,  4 ( x19 )
	blt x0, x21, .LBB0_2
.LBB0_7:                                //  %for.inc14
                                        //  =>This Inner Loop Header: Depth=1
	lw x19 ,  0 ( x19 )
	beq x0, x19, .LBB0_8
.LBB0_1:                                //  %for.body
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x21 ,  4 ( x19 )
	bge x0, x21, .LBB0_7
.LBB0_2:                                //  %for.body3.preheader
	lw x18 ,  8 ( x19 )
	lhu x15 ,  12 ( x18 )
	addi x21 ,  x21 ,  -1
	sltiu x15 ,  x15 ,  2
	beq x0, x15, .LBB0_4
.LBB0_6:                                //  %for.inc
	addi x18 ,  x18 ,  104
	bge x0, x21, .LBB0_7
.LBB0_3:                                //  %for.body3
	lhu x15 ,  12 ( x18 )
	addi x21 ,  x21 ,  -1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_6
.LBB0_4:                                //  %land.lhs.true10
	lhu x15 ,  14 ( x18 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x20 ,  x30
	beq x15, x14, .LBB0_6
.LBB0_5:                                //  %if.then
	add x10 ,  x0 ,  x18
	call_reg, 0 ( x8 )
	or x9 ,  x9 ,  x10
	addi x18 ,  x18 ,  104
	blt x0, x21, .LBB0_3
	jal x0, .LBB0_7
.LBB0_8:                                //  %for.end15
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fwalk, .Lfunc_end0-_fwalk
	.cfi_endproc
                                        //  -- End function
	.globl	_fwalk_reent            //  -- Begin function _fwalk_reent
	.type	_fwalk_reent,@function
_fwalk_reent:                           //  @_fwalk_reent
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x10
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x0
	lui x21 ,  (65535>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	addi x20 ,  x18 ,  736
	lw x22 ,  4 ( x20 )
	blt x0, x22, .LBB1_2
.LBB1_7:                                //  %for.inc14
                                        //  =>This Inner Loop Header: Depth=1
	lw x20 ,  0 ( x20 )
	beq x0, x20, .LBB1_8
.LBB1_1:                                //  %for.body
                                        //    in Loop: Header=BB1_7 Depth=1
	lw x22 ,  4 ( x20 )
	bge x0, x22, .LBB1_7
.LBB1_2:                                //  %for.body3.preheader
	lw x19 ,  8 ( x20 )
	lhu x15 ,  12 ( x19 )
	addi x22 ,  x22 ,  -1
	sltiu x15 ,  x15 ,  2
	beq x0, x15, .LBB1_4
.LBB1_6:                                //  %for.inc
	addi x19 ,  x19 ,  104
	bge x0, x22, .LBB1_7
.LBB1_3:                                //  %for.body3
	lhu x15 ,  12 ( x19 )
	addi x22 ,  x22 ,  -1
	sltiu x15 ,  x15 ,  2
	bltu x0, x15, .LBB1_6
.LBB1_4:                                //  %land.lhs.true10
	lhu x15 ,  14 ( x19 )
	lui x30 ,  65535&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x21 ,  x30
	beq x15, x14, .LBB1_6
.LBB1_5:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call_reg, 0 ( x8 )
	or x9 ,  x9 ,  x10
	addi x19 ,  x19 ,  104
	blt x0, x22, .LBB1_3
	jal x0, .LBB1_7
.LBB1_8:                                //  %for.end15
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_fwalk_reent, .Lfunc_end1-_fwalk_reent
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
