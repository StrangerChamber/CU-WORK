	.text
	.file	"wctob.c"
	.globl	wctob                   //  -- Begin function wctob
	.type	wctob,@function
wctob:                                  //  @wctob
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	xori x15 ,  x8 ,  -1
	beq x0, x15, .LBB0_3
.LBB0_1:                                //  %if.end
	addi x9 ,  x2 ,  12
	add x11 ,  x0 ,  x0
	addi x12 ,  x0 ,  8
	add x10 ,  x0 ,  x9
	call memset
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	addi x11 ,  x2 ,  11
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __global_locale&4095
	lw x10 ,  0 ( x15 )
	lui x15 ,  (__global_locale>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  224 ( x15 )
	call_reg, 0 ( x15 )
	slti x15 ,  x0 ,  1
	beq x10, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	addi x10 ,  x0 ,  -1
	jal x0, .LBB0_4
.LBB0_2:
	lbu x10 ,  11 ( x2 )
.LBB0_4:                                //  %cleanup
	lw x8 ,  20 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	wctob, .Lfunc_end0-wctob
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
