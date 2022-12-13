	.text
	.file	"ungetwc.c"
	.globl	_ungetwc_r              //  -- Begin function _ungetwc_r
	.type	_ungetwc_r,@function
_ungetwc_r:                             //  @_ungetwc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x12
	lui x15 ,  (8192>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x9 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lhu x14 ,  12 ( x8 )
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then7
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x8 )
	lw x14 ,  100 ( x8 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x8 )
.LBB0_2:                                //  %do.end
	addi x18 ,  x0 ,  -1
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB0_8
.LBB0_3:                                //  %if.else
	addi x13 ,  x8 ,  92
	addi x11 ,  x2 ,  7
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	call _wcrtomb_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_9
.LBB0_4:                                //  %while.cond.preheader
	addi x20 ,  x10 ,  1
.LBB0_5:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x20 ,  x20 ,  -1
	beq x0, x20, .LBB0_6
.LBB0_7:                                //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x11 ,  7 ( x2 )
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	call _ungetc_r
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_5
	jal x0, .LBB0_8
.LBB0_9:                                //  %if.then18
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
	jal x0, .LBB0_8
.LBB0_6:
	add x18 ,  x0 ,  x9
.LBB0_8:                                //  %if.end33
	add x10 ,  x0 ,  x18
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
	.size	_ungetwc_r, .Lfunc_end0-_ungetwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	ungetwc                 //  -- Begin function ungetwc
	.type	ungetwc,@function
ungetwc:                                //  @ungetwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB1_5
.LBB1_4:                                //  %if.then7.i
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x8 )
	lw x14 ,  100 ( x8 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x8 )
.LBB1_5:                                //  %do.end.i
	addi x19 ,  x0 ,  -1
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB1_11
.LBB1_6:                                //  %if.else.i
	addi x13 ,  x8 ,  92
	addi x11 ,  x2 ,  7
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call _wcrtomb_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB1_12
.LBB1_7:                                //  %while.cond.i.preheader
	addi x20 ,  x10 ,  1
.LBB1_8:                                //  %while.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x20 ,  x20 ,  -1
	beq x0, x20, .LBB1_9
.LBB1_10:                               //  %while.body.i
                                        //    in Loop: Header=BB1_8 Depth=1
	lbu x11 ,  7 ( x2 )
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call _ungetc_r
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB1_8
	jal x0, .LBB1_11
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	beq x0, x13, .LBB1_4
	jal x0, .LBB1_5
.LBB1_12:                               //  %if.then18.i
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
	jal x0, .LBB1_11
.LBB1_9:
	add x19 ,  x0 ,  x9
.LBB1_11:                               //  %_ungetwc_r.exit
	add x10 ,  x0 ,  x19
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	ungetwc, .Lfunc_end1-ungetwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
