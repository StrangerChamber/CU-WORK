	.text
	.file	"wctomb_r.c"
	.globl	_wctomb_r               //  -- Begin function _wctomb_r
	.type	_wctomb_r,@function
_wctomb_r:                              //  @_wctomb_r
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
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_wctomb_r, .Lfunc_end0-_wctomb_r
	.cfi_endproc
                                        //  -- End function
	.globl	__ascii_wctomb          //  -- Begin function __ascii_wctomb
	.type	__ascii_wctomb,@function
__ascii_wctomb:                         //  @__ascii_wctomb
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	beq x0, x11, .LBB1_1
.LBB1_2:                                //  %if.end
	sltiu x15 ,  x12 ,  256
	bltu x0, x15, .LBB1_4
.LBB1_3:                                //  %if.then2
	addi x15 ,  x0 ,  138
	sw x15 ,  0 ( x10 )
	addi x10 ,  x0 ,  -1
	ret
.LBB1_1:
	add x10 ,  x0 ,  x0
	ret
.LBB1_4:                                //  %if.end3
	slti x10 ,  x0 ,  1
	sb x12 ,  0 ( x11 )
	ret
.Lfunc_end1:
	.size	__ascii_wctomb, .Lfunc_end1-__ascii_wctomb
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
