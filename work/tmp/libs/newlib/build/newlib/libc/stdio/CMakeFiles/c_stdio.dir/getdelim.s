	.text
	.file	"getdelim.c"
	.globl	__getdelim              //  -- Begin function __getdelim
	.type	__getdelim,@function
__getdelim:                             //  @__getdelim
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x19 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	beq x0, x19, .LBB0_3
.LBB0_1:                                //  %entry
	beq x0, x20, .LBB0_3
.LBB0_2:                                //  %entry
	beq x0, x9, .LBB0_3
.LBB0_4:                                //  %if.end
	lw x21 ,  0 ( x20 )
	addi x8 ,  x0 ,  -1
	beq x0, x21, .LBB0_6
.LBB0_5:                                //  %lor.lhs.false5
	lw x22 ,  0 ( x19 )
	addi x15 ,  x0 ,  3
	bltu x15, x22, .LBB0_8
.LBB0_6:                                //  %if.then7
	addi x22 ,  x0 ,  128
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call realloc
	add x21 ,  x0 ,  x10
	beq x0, x21, .LBB0_20
.LBB0_7:                                //  %if.end11
	sw x21 ,  0 ( x20 )
	sw x22 ,  0 ( x19 )
.LBB0_8:                                //  %do.body
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_11
.LBB0_9:                                //  %land.lhs.true
	lw x15 ,  56 ( x10 )
	bltu x0, x15, .LBB0_11
.LBB0_10:                               //  %if.then14
	call __sinit
	lw x22 ,  0 ( x19 )
.LBB0_11:                               //  %while.cond22.preheader.preheader
	add x24 ,  x0 ,  x0
	add x23 ,  x0 ,  x21
.LBB0_12:                               //  %while.cond22.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
	addi x22 ,  x22 ,  -1
.LBB0_13:                               //  %while.cond22
                                        //    Parent Loop BB0_12 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beq x0, x22, .LBB0_16
.LBB0_14:                               //  %while.body25
                                        //    in Loop: Header=BB0_13 Depth=2
	add x10 ,  x0 ,  x9
	call getc_unlocked
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_18
.LBB0_15:                               //  %if.else
                                        //    in Loop: Header=BB0_13 Depth=2
	sb x10 ,  0 ( x23 )
	addi x22 ,  x22 ,  -1
	addi x23 ,  x23 ,  1
	bne x10, x18, .LBB0_13
	jal x0, .LBB0_18
.LBB0_16:                               //  %if.then37
                                        //    in Loop: Header=BB0_12 Depth=1
	lw x15 ,  0 ( x19 )
	add x10 ,  x0 ,  x21
	slli x22 ,  x15 ,  1&31
	add x11 ,  x0 ,  x22
	call realloc
	beq x0, x10, .LBB0_17
.LBB0_21:                               //  %if.end43
                                        //    in Loop: Header=BB0_12 Depth=1
	sub x15 ,  x23 ,  x21
	sw x22 ,  0 ( x19 )
	sw x10 ,  0 ( x20 )
	add x21 ,  x0 ,  x10
	sub x22 ,  x22 ,  x15
	add x23 ,  x15 ,  x10
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  22
	addi x8 ,  x0 ,  -1
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_20
.LBB0_17:
	add x21 ,  x0 ,  x24
.LBB0_18:                               //  %while.end44
	beq x23, x21, .LBB0_20
.LBB0_19:                               //  %if.end60
	sub x8 ,  x23 ,  x21
	sb x0 ,  0 ( x23 )
.LBB0_20:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__getdelim, .Lfunc_end0-__getdelim
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
