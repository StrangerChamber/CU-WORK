	.text
	.file	"ungetc.c"
	.globl	__submore               //  -- Begin function __submore
	.type	__submore,@function
__submore:                              //  @__submore
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x11
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x9 ,  48 ( x8 )
	addi x15 ,  x8 ,  64
	beq x9, x15, .LBB0_3
.LBB0_1:                                //  %if.end9
	lw x19 ,  52 ( x8 )
	add x11 ,  x0 ,  x9
	slli x18 ,  x19 ,  1&31
	add x12 ,  x0 ,  x18
	call _realloc_r
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_7
.LBB0_2:                                //  %if.end17
	add x20 ,  x19 ,  x9
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x10 ,  x0 ,  x20
	call memcpy
	sw x18 ,  52 ( x8 )
	sw x9 ,  48 ( x8 )
	sw x20 ,  0 ( x8 )
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then
	addi x18 ,  x0 ,  1024
	add x11 ,  x0 ,  x18
	call _malloc_r
	beq x0, x10, .LBB0_7
.LBB0_4:                                //  %if.end
	lb x15 ,  66 ( x8 )
	sw x18 ,  52 ( x8 )
	sw x10 ,  48 ( x8 )
	sb x15 ,  1023 ( x10 )
	lb x15 ,  65 ( x8 )
	sb x15 ,  1022 ( x10 )
	lb x15 ,  0 ( x9 )
	sb x15 ,  1021 ( x10 )
	addi x15 ,  x10 ,  1021
	sw x15 ,  0 ( x8 )
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_8
.LBB0_7:
	addi x10 ,  x0 ,  -1
.LBB0_8:                                //  %cleanup
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__submore, .Lfunc_end0-__submore
	.cfi_endproc
                                        //  -- End function
	.globl	_ungetc_r               //  -- Begin function _ungetc_r
	.type	_ungetc_r,@function
_ungetc_r:                              //  @_ungetc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	addi x18 ,  x0 ,  -1
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	xori x15 ,  x9 ,  -1
	beq x0, x15, .LBB1_30
.LBB1_1:                                //  %do.body
	beq x0, x19, .LBB1_4
.LBB1_2:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	beq x0, x15, .LBB1_3
.LBB1_4:                                //  %if.end3
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_6
.LBB1_5:                                //  %if.then14
	lw x13 ,  100 ( x8 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	sh x15 ,  12 ( x8 )
	or x12 ,  x12 ,  x30
	and x13 ,  x12 ,  x13
	sw x13 ,  100 ( x8 )
.LBB1_6:                                //  %do.end21
	lui x30 ,  65503&4095
	lui x14 ,  (65503>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	slli x14 ,  x15 ,  16&31
	sh x15 ,  12 ( x8 )
	srai x14 ,  x14 ,  16&31
	andi x13 ,  x14 ,  4
	bltu x0, x13, .LBB1_12
.LBB1_7:                                //  %if.then31
	andi x13 ,  x14 ,  16
	beq x0, x13, .LBB1_30
.LBB1_8:                                //  %if.end50
	andi x14 ,  x14 ,  8
	beq x0, x14, .LBB1_11
.LBB1_9:                                //  %if.then55
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call _fflush_r
	bltu x0, x10, .LBB1_30
.LBB1_10:                               //  %if.end70
	lh x15 ,  12 ( x8 )
	sw x0 ,  24 ( x8 )
	sw x0 ,  8 ( x8 )
	andi x15 ,  x15 ,  -9
	sh x15 ,  12 ( x8 )
.LBB1_11:                               //  %if.end75
	ori x15 ,  x15 ,  4
	sh x15 ,  12 ( x8 )
.LBB1_12:                               //  %if.end80
	lw x20 ,  48 ( x8 )
	andi x23 ,  x9 ,  255
	beq x0, x20, .LBB1_22
.LBB1_13:                               //  %if.then85
	lw x21 ,  52 ( x8 )
	lw x15 ,  4 ( x8 )
	bge x15, x21, .LBB1_15
.LBB1_14:                               //  %if.then85.if.end105_crit_edge
	lw x18 ,  0 ( x8 )
	jal x0, .LBB1_21
.LBB1_22:                               //  %if.end120
	lw x14 ,  16 ( x8 )
	beq x0, x14, .LBB1_23
.LBB1_25:                               //  %land.lhs.true124
	lw x15 ,  0 ( x8 )
	bgeu x14, x15, .LBB1_24
.LBB1_26:                               //  %land.lhs.true130
	lbu x14 ,  -1 ( x15 )
	andi x13 ,  x9 ,  255
	bne x14, x13, .LBB1_24
.LBB1_27:                               //  %if.then135
	addi x15 ,  x15 ,  -1
	sw x15 ,  0 ( x8 )
	jal x0, .LBB1_28
.LBB1_3:                                //  %if.then2
	add x10 ,  x0 ,  x19
	call __sinit
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB1_5
	jal x0, .LBB1_6
.LBB1_15:                               //  %land.lhs.true89
	addi x15 ,  x8 ,  64
	beq x20, x15, .LBB1_16
.LBB1_18:                               //  %if.end9.i
	slli x22 ,  x21 ,  1&31
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	call _realloc_r
	add x19 ,  x0 ,  x10
	beq x0, x19, .LBB1_30
.LBB1_19:                               //  %if.end17.i
	add x18 ,  x21 ,  x19
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	add x10 ,  x0 ,  x18
	call memcpy
	sw x22 ,  52 ( x8 )
	sw x19 ,  48 ( x8 )
	jal x0, .LBB1_20
.LBB1_23:                               //  %if.end120.if.end152_crit_edge
	lw x15 ,  0 ( x8 )
.LBB1_24:                               //  %if.end152
	sw x15 ,  56 ( x8 )
	addi x15 ,  x0 ,  3
	sb x9 ,  66 ( x8 )
	sw x15 ,  52 ( x8 )
	addi x15 ,  x8 ,  64
	sw x15 ,  48 ( x8 )
	addi x15 ,  x8 ,  66
	sw x15 ,  0 ( x8 )
	lw x15 ,  4 ( x8 )
	sw x15 ,  60 ( x8 )
	slti x15 ,  x0 ,  1
	jal x0, .LBB1_29
.LBB1_16:                               //  %if.then.i
	addi x21 ,  x0 ,  1024
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call _malloc_r
	beq x0, x10, .LBB1_30
.LBB1_17:                               //  %if.end.i
	lb x15 ,  66 ( x8 )
	sw x21 ,  52 ( x8 )
	sw x10 ,  48 ( x8 )
	addi x18 ,  x10 ,  1021
	sb x15 ,  1023 ( x10 )
	lb x15 ,  65 ( x8 )
	sb x15 ,  1022 ( x10 )
	lb x15 ,  0 ( x20 )
	sb x15 ,  1021 ( x10 )
.LBB1_20:                               //  %if.end105
	sw x18 ,  0 ( x8 )
.LBB1_21:                               //  %if.end105
	addi x15 ,  x18 ,  -1
	sw x15 ,  0 ( x8 )
	sb x9 ,  -1 ( x18 )
.LBB1_28:                               //  %return
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  1
.LBB1_29:                               //  %return
	add x18 ,  x0 ,  x23
	sw x15 ,  4 ( x8 )
.LBB1_30:                               //  %return
	add x10 ,  x0 ,  x18
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
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
.Lfunc_end1:
	.size	_ungetc_r, .Lfunc_end1-_ungetc_r
	.cfi_endproc
                                        //  -- End function
	.globl	ungetc                  //  -- Begin function ungetc
	.type	ungetc,@function
ungetc:                                 //  @ungetc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _ungetc_r
.Lfunc_end2:
	.size	ungetc, .Lfunc_end2-ungetc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
