	.text
	.file	"wctrans.c"
	.globl	_wctrans_r              //  -- Begin function _wctrans_r
	.type	_wctrans_r,@function
_wctrans_r:                             //  @_wctrans_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  .str&4095
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	lui x15 ,  (.str>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x9
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB0_3
.LBB0_4:                                //  %if.else4
	addi x15 ,  x0 ,  22
	add x10 ,  x0 ,  x0
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_5
.LBB0_1:
	slti x10 ,  x0 ,  1
	jal x0, .LBB0_5
.LBB0_3:
	addi x10 ,  x0 ,  2
.LBB0_5:                                //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wctrans_r, .Lfunc_end0-_wctrans_r
	.cfi_endproc
                                        //  -- End function
	.globl	wctrans                 //  -- Begin function wctrans
	.type	wctrans,@function
wctrans:                                //  @wctrans
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  .str&4095
	lw x9 ,  0 ( x15 )
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB1_1
.LBB1_2:                                //  %if.else.i
	lui x30 ,  .str.1&4095
	lui x15 ,  (.str.1>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call strcmp
	beq x0, x10, .LBB1_3
.LBB1_4:                                //  %if.else4.i
	addi x15 ,  x0 ,  22
	add x10 ,  x0 ,  x0
	sw x15 ,  0 ( x9 )
	jal x0, .LBB1_5
.LBB1_1:
	slti x10 ,  x0 ,  1
	jal x0, .LBB1_5
.LBB1_3:
	addi x10 ,  x0 ,  2
.LBB1_5:                                //  %_wctrans_r.exit
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	wctrans, .Lfunc_end1-wctrans
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"tolower"
	.size	.str, 8

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"toupper"
	.size	.str.1, 8

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
