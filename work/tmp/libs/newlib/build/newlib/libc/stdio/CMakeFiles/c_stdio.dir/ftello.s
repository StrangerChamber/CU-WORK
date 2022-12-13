	.text
	.file	"ftello.c"
	.globl	_ftello_r               //  -- Begin function _ftello_r
	.type	_ftello_r,@function
_ftello_r:                              //  @_ftello_r
	.cfi_sections .debug_frame
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
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_18
.LBB0_2:                                //  %if.end
	lw x15 ,  40 ( x8 )
	beq x0, x15, .LBB0_19
.LBB0_3:                                //  %if.end21
	lh x14 ,  12 ( x8 )
	lui x30 ,  65535&4095
	lui x13 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	andi x12 ,  x14 ,  12
	xori x12 ,  x12 ,  8
	bltu x0, x12, .LBB0_9
.LBB0_4:                                //  %land.lhs.true31
	lw x12 ,  0 ( x8 )
	beq x0, x12, .LBB0_9
.LBB0_5:                                //  %land.lhs.true34
	andi x11 ,  x14 ,  256
	beq x0, x11, .LBB0_9
.LBB0_6:                                //  %land.lhs.true34
	lw x11 ,  16 ( x8 )
	sub x12 ,  x12 ,  x11
	bge x0, x12, .LBB0_9
.LBB0_7:                                //  %if.then43
	lw x11 ,  28 ( x8 )
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	bltu x0, x15, .LBB0_11
	jal x0, .LBB0_21
.LBB0_9:                                //  %if.else
	and x14 ,  x13 ,  x14
	lui x13 ,  (4096>>12)&1048575
	and x14 ,  x13 ,  x14
	bltu x0, x14, .LBB0_15
.LBB0_10:                               //  %if.else66
	lw x11 ,  28 ( x8 )
	add x12 ,  x0 ,  x0
	slti x13 ,  x0 ,  1
	add x10 ,  x0 ,  x9
	call_reg, 0 ( x15 )
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_20
.LBB0_11:                               //  %if.end88
	lh x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  4
	bltu x0, x14, .LBB0_16
.LBB0_12:                               //  %if.else100
	andi x15 ,  x15 ,  8
	beq x0, x15, .LBB0_22
.LBB0_13:                               //  %land.lhs.true105
	lw x15 ,  0 ( x8 )
	beq x0, x15, .LBB0_22
.LBB0_14:                               //  %if.then109
	lw x14 ,  16 ( x8 )
	add x15 ,  x15 ,  x10
	sub x10 ,  x15 ,  x14
	jal x0, .LBB0_22
.LBB0_15:                               //  %if.then65
	lw x10 ,  80 ( x8 )
	lh x15 ,  12 ( x8 )
	andi x14 ,  x15 ,  4
	beq x0, x14, .LBB0_12
.LBB0_16:                               //  %if.then93
	lw x15 ,  4 ( x8 )
	sub x10 ,  x10 ,  x15
	lw x15 ,  48 ( x8 )
	beq x0, x15, .LBB0_22
.LBB0_17:                               //  %if.then97
	lw x15 ,  60 ( x8 )
	sub x10 ,  x10 ,  x15
	jal x0, .LBB0_22
.LBB0_18:                               //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lw x15 ,  40 ( x8 )
	bltu x0, x15, .LBB0_3
.LBB0_19:                               //  %if.then8
	addi x15 ,  x0 ,  29
	addi x10 ,  x0 ,  -1
	sw x15 ,  0 ( x9 )
	jal x0, .LBB0_22
.LBB0_20:                               //  %if.then72
	call __errno
	addi x15 ,  x0 ,  139
	sw x15 ,  0 ( x10 )
.LBB0_21:                               //  %cleanup
	addi x10 ,  x0 ,  -1
.LBB0_22:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_ftello_r, .Lfunc_end0-_ftello_r
	.cfi_endproc
                                        //  -- End function
	.globl	ftello                  //  -- Begin function ftello
	.type	ftello,@function
ftello:                                 //  @ftello
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _ftello_r
.Lfunc_end1:
	.size	ftello, .Lfunc_end1-ftello
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
