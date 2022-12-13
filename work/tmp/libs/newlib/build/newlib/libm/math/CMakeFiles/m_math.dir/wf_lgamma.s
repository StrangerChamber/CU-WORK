	.text
	.file	"wf_lgamma.c"
	.globl	lgammaf                 //  -- Begin function lgammaf
	.type	lgammaf,@function
lgammaf:                                //  @lgammaf
	.cfi_sections .debug_frame
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
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	addi x11 ,  x15 ,  160
	call __ieee754_lgammaf_r
	add x8 ,  x0 ,  x10
	call finitef
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	lgammaf, .Lfunc_end0-lgammaf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
