	.text
	.file	"btowc.c"
	.globl	btowc                   //  -- Begin function btowc
	.type	btowc,@function
btowc:                                  //  @btowc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	addi x8 ,  x2 ,  12
	sb x10 ,  7 ( x2 )
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x10 ,  x0 ,  x8
	call memset
	lui x30 ,  __global_locale&4095
	lui x15 ,  (__global_locale>>12)&1048575
	lui x14 ,  (_impure_ptr>>12)&1048575
	slti x9 ,  x0 ,  1
	addi x11 ,  x2 ,  8
	addi x12 ,  x2 ,  7
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x9
	or x15 ,  x15 ,  x30
	lui x30 ,  _impure_ptr&4095
	srli x30 ,  x30 ,  12&31
	lw x15 ,  228 ( x15 )
	or x14 ,  x14 ,  x30
	lw x10 ,  0 ( x14 )
	add x14 ,  x0 ,  x8
	call_reg, 0 ( x15 )
	bltu x9, x10, .LBB0_3
.LBB0_4:                                //  %if.end
	lw x10 ,  8 ( x2 )
	jal x0, .LBB0_5
.LBB0_1:
	addi x10 ,  x0 ,  -1
	ret
.LBB0_3:
	addi x10 ,  x0 ,  -1
.LBB0_5:                                //  %if.end
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	btowc, .Lfunc_end0-btowc
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
