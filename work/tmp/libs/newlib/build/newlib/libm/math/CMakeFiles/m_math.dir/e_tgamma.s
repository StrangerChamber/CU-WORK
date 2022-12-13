	.text
	.file	"e_tgamma.c"
	.globl	__ieee754_tgamma        //  -- Begin function __ieee754_tgamma
	.type	__ieee754_tgamma,@function
__ieee754_tgamma:                       //  @__ieee754_tgamma
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	addi x12 ,  x2 ,  8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	call __ieee754_lgamma_r
	call __ieee754_exp
	lw x14 ,  8 ( x2 )
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x13 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x14, x13, .LBB0_2
.LBB0_1:
	xor x11 ,  x15 ,  x11
.LBB0_2:                                //  %entry
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_tgamma, .Lfunc_end0-__ieee754_tgamma
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
