	.text
	.file	"l64a.c"
	.globl	l64a                    //  -- Begin function l64a
	.type	l64a,@function
l64a:                                   //  @l64a
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x14 ,  (_impure_ptr>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	lw x13 ,  0 ( x14 )
	addi x10 ,  x13 ,  212
	beq x0, x15, .LBB0_1
.LBB0_3:                                //  %if.end.i
	lui x30 ,  R64_ARRAY&4095
	lui x14 ,  (R64_ARRAY>>12)&1048575
	andi x12 ,  x15 ,  63
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x12 ,  x12 ,  x11
	lb x12 ,  0 ( x12 )
	sb x12 ,  0 ( x10 )
	srli x12 ,  x15 ,  6&31
	beq x0, x12, .LBB0_4
.LBB0_5:                                //  %if.end.1.i
	lui x30 ,  R64_ARRAY&4095
	andi x12 ,  x12 ,  63
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x12 ,  x12 ,  x11
	lb x12 ,  0 ( x12 )
	sb x12 ,  1 ( x10 )
	srli x12 ,  x15 ,  12&31
	beq x0, x12, .LBB0_6
.LBB0_7:                                //  %if.end.2.i
	lui x30 ,  R64_ARRAY&4095
	andi x12 ,  x12 ,  63
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x12 ,  x12 ,  x11
	lb x12 ,  0 ( x12 )
	sb x12 ,  2 ( x10 )
	srli x12 ,  x15 ,  18&31
	beq x0, x12, .LBB0_8
.LBB0_9:                                //  %if.end.3.i
	lui x30 ,  R64_ARRAY&4095
	andi x12 ,  x12 ,  63
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x12 ,  x12 ,  x11
	lb x12 ,  0 ( x12 )
	sb x12 ,  215 ( x13 )
	addi x13 ,  x13 ,  216
	srli x12 ,  x15 ,  24&31
	beq x0, x12, .LBB0_2
.LBB0_10:                               //  %if.end.4.i
	lui x30 ,  R64_ARRAY&4095
	andi x12 ,  x12 ,  63
	srli x15 ,  x15 ,  30&31
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x12 ,  x12 ,  x11
	lb x12 ,  0 ( x12 )
	sb x12 ,  0 ( x13 )
	addi x13 ,  x13 ,  1
	beq x0, x15, .LBB0_2
.LBB0_11:                               //  %if.end.5.i
	lui x30 ,  R64_ARRAY&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lb x15 ,  0 ( x15 )
	sb x15 ,  0 ( x13 )
	ret
.LBB0_1:
	add x13 ,  x0 ,  x10
.LBB0_2:                                //  %if.then.i
	sb x0 ,  0 ( x13 )
	ret
.LBB0_4:
	addi x13 ,  x10 ,  1
	sb x0 ,  0 ( x13 )
	ret
.LBB0_6:
	addi x13 ,  x10 ,  2
	sb x0 ,  0 ( x13 )
	ret
.LBB0_8:
	addi x13 ,  x10 ,  3
	sb x0 ,  0 ( x13 )
	ret
.Lfunc_end0:
	.size	l64a, .Lfunc_end0-l64a
	.cfi_endproc
                                        //  -- End function
	.globl	_l64a_r                 //  -- Begin function _l64a_r
	.type	_l64a_r,@function
_l64a_r:                                //  @_l64a_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x10
	addi x10 ,  x15 ,  212
	beq x0, x11, .LBB1_1
.LBB1_3:                                //  %if.end
	lui x30 ,  R64_ARRAY&4095
	lui x14 ,  (R64_ARRAY>>12)&1048575
	andi x13 ,  x11 ,  63
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x13 ,  x13 ,  x12
	lb x13 ,  0 ( x13 )
	sb x13 ,  0 ( x10 )
	srli x13 ,  x11 ,  6&31
	beq x0, x13, .LBB1_4
.LBB1_5:                                //  %if.end.1
	lui x30 ,  R64_ARRAY&4095
	andi x13 ,  x13 ,  63
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x13 ,  x13 ,  x12
	lb x13 ,  0 ( x13 )
	sb x13 ,  1 ( x10 )
	srli x13 ,  x11 ,  12&31
	beq x0, x13, .LBB1_6
.LBB1_7:                                //  %if.end.2
	lui x30 ,  R64_ARRAY&4095
	andi x13 ,  x13 ,  63
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x13 ,  x13 ,  x12
	lb x13 ,  0 ( x13 )
	sb x13 ,  2 ( x10 )
	srli x13 ,  x11 ,  18&31
	beq x0, x13, .LBB1_8
.LBB1_9:                                //  %if.end.3
	lui x30 ,  R64_ARRAY&4095
	andi x13 ,  x13 ,  63
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x13 ,  x13 ,  x12
	lb x13 ,  0 ( x13 )
	sb x13 ,  215 ( x15 )
	addi x15 ,  x15 ,  216
	srli x13 ,  x11 ,  24&31
	beq x0, x13, .LBB1_2
.LBB1_10:                               //  %if.end.4
	lui x30 ,  R64_ARRAY&4095
	andi x13 ,  x13 ,  63
	srli x30 ,  x30 ,  12&31
	or x12 ,  x14 ,  x30
	add x13 ,  x13 ,  x12
	lb x13 ,  0 ( x13 )
	sb x13 ,  0 ( x15 )
	addi x15 ,  x15 ,  1
	srli x13 ,  x11 ,  30&31
	beq x0, x13, .LBB1_2
.LBB1_11:                               //  %if.end.5
	lui x30 ,  R64_ARRAY&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x14 ,  x13 ,  x14
	lb x14 ,  0 ( x14 )
	sb x14 ,  0 ( x15 )
	ret
.LBB1_1:
	add x15 ,  x0 ,  x10
.LBB1_2:                                //  %if.then
	sb x0 ,  0 ( x15 )
	ret
.LBB1_4:
	addi x15 ,  x10 ,  1
	sb x0 ,  0 ( x15 )
	ret
.LBB1_6:
	addi x15 ,  x10 ,  2
	sb x0 ,  0 ( x15 )
	ret
.LBB1_8:
	addi x15 ,  x10 ,  3
	sb x0 ,  0 ( x15 )
	ret
.Lfunc_end1:
	.size	_l64a_r, .Lfunc_end1-_l64a_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0
	.type	R64_ARRAY,@object       //  @R64_ARRAY
	.section	.rodata.str1.1,"aMS",@progbits,1
R64_ARRAY:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	R64_ARRAY, 65


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
