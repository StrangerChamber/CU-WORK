	.text
	.file	"wcstombs_r.c"
	.globl	_wcstombs_r             //  -- Begin function _wcstombs_r
	.type	_wcstombs_r,@function
_wcstombs_r:                            //  @_wcstombs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -64
	.cfi_adjust_cfa_offset 64
	sw x9 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x9 ,  x0 ,  x14
	add x21 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  60 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -48
	beq x0, x20, .LBB0_13
.LBB0_1:                                //  %while.cond5.preheader
	beq x0, x21, .LBB0_18
.LBB0_2:
	lui x23 ,  (__global_locale>>12)&1048575
	addi x22 ,  x2 ,  8
	addi x8 ,  x0 ,  -1
	add x25 ,  x0 ,  x0
	add x24 ,  x0 ,  x20
	add x26 ,  x0 ,  x21
.LBB0_3:                                //  %while.body7
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_8 Depth 2
	lui x30 ,  __global_locale&4095
	lw x12 ,  0 ( x19 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_21
.LBB0_4:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	add x15 ,  x0 ,  x10
	bltu x10, x26, .LBB0_6
.LBB0_5:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	add x15 ,  x0 ,  x26
.LBB0_6:                                //  %if.end14
                                        //    in Loop: Header=BB0_3 Depth=1
	bge x0, x15, .LBB0_10
.LBB0_7:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_3 Depth=1
	add x14 ,  x0 ,  x25
.LBB0_8:                                //  %for.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12 ,  x14 ,  x22
	add x13 ,  x14 ,  x24
	addi x14 ,  x14 ,  1
	lb x12 ,  0 ( x12 )
	sb x12 ,  0 ( x13 )
	blt x14, x15, .LBB0_8
.LBB0_9:                                //  %for.end.loopexit
                                        //    in Loop: Header=BB0_3 Depth=1
	add x24 ,  x14 ,  x24
.LBB0_10:                               //  %for.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x14 ,  0 ( x19 )
	beq x0, x14, .LBB0_19
.LBB0_11:                               //  %if.end21
                                        //    in Loop: Header=BB0_3 Depth=1
	sub x26 ,  x26 ,  x15
	addi x19 ,  x19 ,  4
	bltu x0, x26, .LBB0_3
.LBB0_12:
	add x8 ,  x0 ,  x21
	jal x0, .LBB0_21
.LBB0_13:                               //  %while.cond.preheader
	lw x12 ,  0 ( x19 )
	beq x0, x12, .LBB0_18
.LBB0_14:                               //  %while.body.preheader
	addi x21 ,  x19 ,  4
	add x8 ,  x0 ,  x0
	lui x20 ,  (__global_locale>>12)&1048575
	addi x19 ,  x2 ,  8
	addi x22 ,  x0 ,  -1
.LBB0_15:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lui x30 ,  __global_locale&4095
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_20
.LBB0_16:                               //  %if.end
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x12 ,  0 ( x21 )
	addi x15 ,  x21 ,  4
	add x8 ,  x8 ,  x10
	add x21 ,  x0 ,  x15
	bltu x0, x12, .LBB0_15
	jal x0, .LBB0_21
.LBB0_18:
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_21
.LBB0_19:                               //  %if.then19
	sltu x15 ,  x26 ,  x10
	xori x15 ,  x15 ,  1
	add x15 ,  x15 ,  x20
	sub x8 ,  x24 ,  x15
	jal x0, .LBB0_21
.LBB0_20:
	add x8 ,  x0 ,  x22
.LBB0_21:                               //  %cleanup25
	add x10 ,  x0 ,  x8
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  60 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  64
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wcstombs_r, .Lfunc_end0-_wcstombs_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
