	.text
	.file	"wctype.c"
	.globl	_wctype_r               //  -- Begin function _wctype_r
	.type	_wctype_r,@function
_wctype_r:                              //  @_wctype_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	addi x14 ,  x0 ,  23
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lb x15 ,  0 ( x9 )
	addi x15 ,  x15 ,  -97
	bltu x14, x15, .LBB0_26
.LBB0_1:                                //  %entry
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_2:                                //  %sw.bb
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_5:
	addi x10 ,  x0 ,  2
	jal x0, .LBB0_27
.LBB0_6:                                //  %sw.bb5
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_7:
	addi x10 ,  x0 ,  3
	jal x0, .LBB0_27
.LBB0_8:                                //  %sw.bb10
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_9:
	addi x10 ,  x0 ,  4
	jal x0, .LBB0_27
.LBB0_10:                               //  %sw.bb15
	lui x30 ,  .str.4&4095
	lui x15 ,  (.str.4>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_11:
	addi x10 ,  x0 ,  5
	jal x0, .LBB0_27
.LBB0_12:                               //  %sw.bb20
	lui x30 ,  .str.5&4095
	lui x15 ,  (.str.5>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_13:
	addi x10 ,  x0 ,  6
	jal x0, .LBB0_27
.LBB0_14:                               //  %sw.bb25
	lui x30 ,  .str.6&4095
	lui x15 ,  (.str.6>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_15:
	addi x10 ,  x0 ,  7
	jal x0, .LBB0_27
.LBB0_16:                               //  %sw.bb30
	lui x30 ,  .str.7&4095
	lui x15 ,  (.str.7>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB0_17
.LBB0_18:                               //  %if.else34
	lui x30 ,  .str.8&4095
	lui x15 ,  (.str.8>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_19:
	addi x10 ,  x0 ,  9
	jal x0, .LBB0_27
.LBB0_20:                               //  %sw.bb40
	lui x30 ,  .str.9&4095
	lui x15 ,  (.str.9>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_21:
	addi x10 ,  x0 ,  10
	jal x0, .LBB0_27
.LBB0_22:                               //  %sw.bb45
	lui x30 ,  .str.10&4095
	lui x15 ,  (.str.10>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	bltu x0, x10, .LBB0_26
.LBB0_23:
	addi x10 ,  x0 ,  11
	jal x0, .LBB0_27
.LBB0_24:                               //  %sw.bb50
	lui x30 ,  .str.11&4095
	lui x15 ,  (.str.11>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB0_25
.LBB0_26:                               //  %sw.epilog
	addi x15 ,  x0 ,  22
	add x10 ,  x0 ,  x0
	sw x15 ,  0 ( x8 )
.LBB0_27:                               //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:
	slti x10 ,  x0 ,  1
	jal x0, .LBB0_27
.LBB0_17:
	addi x10 ,  x0 ,  8
	jal x0, .LBB0_27
.LBB0_25:
	addi x10 ,  x0 ,  12
	jal x0, .LBB0_27
.Lfunc_end0:
	.size	_wctype_r, .Lfunc_end0-_wctype_r
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_2
	.long	.LBB0_6
	.long	.LBB0_8
	.long	.LBB0_10
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_12
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_14
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_16
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_20
	.long	.LBB0_26
	.long	.LBB0_22
	.long	.LBB0_26
	.long	.LBB0_26
	.long	.LBB0_24
                                        //  -- End function
	.text
	.globl	wctype                  //  -- Begin function wctype
	.type	wctype,@function
wctype:                                 //  @wctype
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
	jal x0, _wctype_r
.Lfunc_end1:
	.size	wctype, .Lfunc_end1-wctype
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"alnum"
	.size	.str, 6

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"alpha"
	.size	.str.1, 6

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.asciz	"blank"
	.size	.str.2, 6

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"cntrl"
	.size	.str.3, 6

	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"digit"
	.size	.str.4, 6

	.address_space	0
	.type	.str.5,@object          //  @.str.5
.str.5:
	.asciz	"graph"
	.size	.str.5, 6

	.address_space	0
	.type	.str.6,@object          //  @.str.6
.str.6:
	.asciz	"lower"
	.size	.str.6, 6

	.address_space	0
	.type	.str.7,@object          //  @.str.7
.str.7:
	.asciz	"print"
	.size	.str.7, 6

	.address_space	0
	.type	.str.8,@object          //  @.str.8
.str.8:
	.asciz	"punct"
	.size	.str.8, 6

	.address_space	0
	.type	.str.9,@object          //  @.str.9
.str.9:
	.asciz	"space"
	.size	.str.9, 6

	.address_space	0
	.type	.str.10,@object         //  @.str.10
.str.10:
	.asciz	"upper"
	.size	.str.10, 6

	.address_space	0
	.type	.str.11,@object         //  @.str.11
.str.11:
	.asciz	"xdigit"
	.size	.str.11, 7

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
