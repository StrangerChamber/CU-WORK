	.text
	.file	"fputwc.c"
	.globl	__fputwc                //  -- Begin function __fputwc
	.type	__fputwc,@function
__fputwc:                               //  @__fputwc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	call __locale_mb_cur_max
	addi x15 ,  x8 ,  -1
	addi x14 ,  x0 ,  254
	bltu x14, x15, .LBB0_9
.LBB0_1:                                //  %entry
	xori x15 ,  x10 ,  1
	bltu x0, x15, .LBB0_9
.LBB0_2:                                //  %if.end11.thread
	slti x19 ,  x0 ,  1
	sb x8 ,  7 ( x2 )
	jal x0, .LBB0_3
.LBB0_9:                                //  %if.else
	addi x13 ,  x9 ,  92
	addi x11 ,  x2 ,  7
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call _wcrtomb_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB0_14
.LBB0_10:                               //  %if.else
	xori x15 ,  x19 ,  -1
	bltu x0, x15, .LBB0_3
.LBB0_11:                               //  %if.then8
	lh x15 ,  12 ( x9 )
	addi x8 ,  x0 ,  -1
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x9 )
	jal x0, .LBB0_14
.LBB0_3:                                //  %for.body.lr.ph
	addi x20 ,  x0 ,  -1
	jal x0, .LBB0_4
.LBB0_7:                                //  %__sputc_r.exit.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x15 ,  0 ( x9 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x9 )
	sb x11 ,  0 ( x15 )
.LBB0_8:                                //  %for.inc
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x19 ,  x19 ,  -1
	beq x0, x19, .LBB0_14
.LBB0_4:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  8 ( x9 )
	lbu x11 ,  7 ( x2 )
	addi x14 ,  x15 ,  -1
	sw x14 ,  8 ( x9 )
	blt x0, x15, .LBB0_7
.LBB0_5:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x14 ,  x11 ,  10
	beq x0, x14, .LBB0_12
.LBB0_6:                                //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x14 ,  24 ( x9 )
	blt x14, x15, .LBB0_7
.LBB0_12:                               //  %__sputc_r.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call __swbuf_r
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_8
.LBB0_13:
	add x8 ,  x0 ,  x20
.LBB0_14:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__fputwc, .Lfunc_end0-__fputwc
	.cfi_endproc
                                        //  -- End function
	.globl	_fputwc_r               //  -- Begin function _fputwc_r
	.type	_fputwc_r,@function
_fputwc_r:                              //  @_fputwc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lhu x14 ,  12 ( x12 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x12 )
	lw x14 ,  100 ( x12 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x12 )
.LBB1_2:                                //  %do.end
	jal x0, __fputwc
.Lfunc_end1:
	.size	_fputwc_r, .Lfunc_end1-_fputwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputwc                  //  -- Begin function fputwc
	.type	fputwc,@function
fputwc:                                 //  @fputwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB2_2
.LBB2_3:                                //  %if.end
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB2_5
.LBB2_4:                                //  %if.then7.i
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x8 )
	lw x14 ,  100 ( x8 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x8 )
.LBB2_5:                                //  %_fputwc_r.exit
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, __fputwc
.LBB2_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	beq x0, x13, .LBB2_4
	jal x0, .LBB2_5
.Lfunc_end2:
	.size	fputwc, .Lfunc_end2-fputwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
