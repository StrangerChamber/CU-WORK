	.text
	.file	"wcsnrtombs.c"
	.globl	_wcsnrtombs_l           //  -- Begin function _wcsnrtombs_l
	.type	_wcsnrtombs_l,@function
_wcsnrtombs_l:                          //  @_wcsnrtombs_l
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x21 ,  x0 ,  x10
	add x19 ,  x0 ,  x16
	add x8 ,  x0 ,  x15
	add x20 ,  x0 ,  x14
	add x22 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x10 ,  x0 ,  x0
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x23 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x11 ,  4 ( x2 )              //  4-byte Folded Spill
	bne x11, x10, .LBB0_2
.LBB0_1:
	addi x20 ,  x0 ,  -1
.LBB0_2:                                //  %entry
	beq x0, x20, .LBB0_28
.LBB0_3:                                //  %land.rhs.lr.ph
	lw x24 ,  0 ( x9 )
	lw x25 ,  4 ( x2 )              //  4-byte Folded Reload
	beq x0, x25, .LBB0_13
.LBB0_4:                                //  %land.rhs.us.preheader
	add x26 ,  x0 ,  x0
	addi x23 ,  x2 ,  10
.LBB0_5:                                //  %land.rhs.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	beq x0, x22, .LBB0_23
.LBB0_6:                                //  %while.body.us
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x12 ,  0 ( x24 )
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x23
	add x13 ,  x0 ,  x8
	lw x15 ,  224 ( x19 )
	lw x18 ,  4 ( x8 )
	lw x27 ,  0 ( x8 )
	call_reg, 0 ( x15 )
	add x15 ,  x0 ,  x10
	xori x14 ,  x15 ,  -1
	beq x0, x14, .LBB0_19
.LBB0_7:                                //  %if.end6.us
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10 ,  x26 ,  x15
	bltu x20, x10, .LBB0_24
.LBB0_8:                                //  %for.cond.preheader.us
                                        //    in Loop: Header=BB0_5 Depth=1
	bge x0, x15, .LBB0_11
.LBB0_9:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x14 ,  x0 ,  x23
.LBB0_10:                               //  %for.body.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x13 ,  0 ( x14 )
	addi x14 ,  x14 ,  1
	addi x15 ,  x15 ,  -1
	sb x13 ,  0 ( x25 )
	addi x25 ,  x25 ,  1
	bltu x0, x15, .LBB0_10
.LBB0_11:                               //  %for.end.us
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x15 ,  0 ( x9 )
	addi x15 ,  x15 ,  4
	sw x15 ,  0 ( x9 )
	lw x15 ,  0 ( x24 )
	beq x0, x15, .LBB0_20
.LBB0_12:                               //  %cleanup.us
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x22 ,  x22 ,  -1
	addi x24 ,  x24 ,  4
	add x26 ,  x0 ,  x10
	bltu x10, x20, .LBB0_5
	jal x0, .LBB0_28
.LBB0_13:                               //  %land.rhs.preheader
	addi x23 ,  x22 ,  1
	add x25 ,  x0 ,  x0
	addi x22 ,  x2 ,  10
.LBB0_14:                               //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	addi x23 ,  x23 ,  -1
	beq x0, x23, .LBB0_27
.LBB0_15:                               //  %while.body
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x12 ,  0 ( x24 )
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x8
	lw x15 ,  224 ( x19 )
	lw x26 ,  4 ( x8 )
	lw x18 ,  0 ( x8 )
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_19
.LBB0_16:                               //  %if.end6
                                        //    in Loop: Header=BB0_14 Depth=1
	add x10 ,  x25 ,  x10
	bltu x20, x10, .LBB0_26
.LBB0_17:                               //  %if.end13
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x15 ,  0 ( x24 )
	beq x0, x15, .LBB0_20
.LBB0_18:                               //  %cleanup
                                        //    in Loop: Header=BB0_14 Depth=1
	addi x24 ,  x24 ,  4
	add x25 ,  x0 ,  x10
	bltu x10, x20, .LBB0_14
	jal x0, .LBB0_28
.LBB0_19:                               //  %if.then4
	addi x15 ,  x0 ,  138
	sw x0 ,  0 ( x8 )
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x21 )
	jal x0, .LBB0_28
.LBB0_20:
	lw x15 ,  4 ( x2 )              //  4-byte Folded Reload
	beq x0, x15, .LBB0_22
.LBB0_21:                               //  %if.then18
	sw x0 ,  0 ( x9 )
.LBB0_22:                               //  %if.end19
	sw x0 ,  0 ( x8 )
	addi x10 ,  x10 ,  -1
	jal x0, .LBB0_28
.LBB0_23:
	add x10 ,  x0 ,  x26
	jal x0, .LBB0_28
.LBB0_24:                               //  %cleanup.us.thread
	sw x18 ,  4 ( x8 )
	sw x27 ,  0 ( x8 )
	add x10 ,  x0 ,  x26
	jal x0, .LBB0_28
.LBB0_26:                               //  %cleanup.thread
	sw x26 ,  4 ( x8 )
	sw x18 ,  0 ( x8 )
.LBB0_27:                               //  %cleanup28
	add x10 ,  x0 ,  x25
.LBB0_28:                               //  %cleanup28
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcsnrtombs_l, .Lfunc_end0-_wcsnrtombs_l
	.cfi_endproc
                                        //  -- End function
	.globl	_wcsnrtombs_r           //  -- Begin function _wcsnrtombs_r
	.type	_wcsnrtombs_r,@function
_wcsnrtombs_r:                          //  @_wcsnrtombs_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x10 ,  (_impure_ptr>>12)&1048575
	lui x5 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x16 ,  x5 ,  x30
	jal x0, _wcsnrtombs_l
.Lfunc_end1:
	.size	_wcsnrtombs_r, .Lfunc_end1-_wcsnrtombs_r
	.cfi_endproc
                                        //  -- End function
	.globl	wcsnrtombs              //  -- Begin function wcsnrtombs
	.type	wcsnrtombs,@function
wcsnrtombs:                             //  @wcsnrtombs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	add x15 ,  x0 ,  x14
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	lui x10 ,  (_impure_ptr>>12)&1048575
	lui x5 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x10 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x16 ,  x5 ,  x30
	jal x0, _wcsnrtombs_l
.Lfunc_end2:
	.size	wcsnrtombs, .Lfunc_end2-wcsnrtombs
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
