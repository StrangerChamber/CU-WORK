	.text
	.file	"clock.c"
	.globl	clock                   //  -- Begin function clock
	.type	clock,@function
clock:                                  //  @clock
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  8
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x8
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _times_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.then
	lw x15 ,  4 ( x8 )
	lw x14 ,  8 ( x2 )
	add x15 ,  x14 ,  x15
	lw x14 ,  8 ( x8 )
	add x15 ,  x14 ,  x15
	lw x14 ,  20 ( x2 )
	add x10 ,  x14 ,  x15
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:
	addi x10 ,  x0 ,  -1
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	clock, .Lfunc_end0-clock
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
