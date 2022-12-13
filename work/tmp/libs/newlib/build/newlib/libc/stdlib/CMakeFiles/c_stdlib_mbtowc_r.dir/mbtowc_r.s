	.text
	.file	"mbtowc_r.c"
	.globl	_mbtowc_r               //  -- Begin function _mbtowc_r
	.type	_mbtowc_r,@function
_mbtowc_r:                              //  @_mbtowc_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  228 ( x15 )
	call_reg, 0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_mbtowc_r, .Lfunc_end0-_mbtowc_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ascii_mbtowc          //  -- Begin function __ascii_mbtowc
	.type	__ascii_mbtowc,@function
__ascii_mbtowc:                         //  @__ascii_mbtowc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	add x10 ,  x0 ,  x0
	bne x11, x10, .LBB1_2
.LBB1_1:
	addi x11 ,  x2 ,  4
.LBB1_2:                                //  %entry
	beq x0, x12, .LBB1_6
.LBB1_3:                                //  %if.end3
	beq x0, x13, .LBB1_4
.LBB1_5:                                //  %if.end6
	lbu x15 ,  0 ( x12 )
	sw x15 ,  0 ( x11 )
	lbu x15 ,  0 ( x12 )
	sltu x10 ,  x0 ,  x15
.LBB1_6:                                //  %cleanup
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB1_4:
	addi x10 ,  x0 ,  -2
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	__ascii_mbtowc, .Lfunc_end1-__ascii_mbtowc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
