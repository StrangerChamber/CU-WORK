	.text
	.file	"rand.c"
	.globl	srand                   //  -- Begin function srand
	.type	srand,@function
srand:                                  //  @srand
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x15 ,  0 ( x15 )
	sw x10 ,  164 ( x15 )
	sw x0 ,  168 ( x15 )
	ret
.Lfunc_end0:
	.size	srand, .Lfunc_end0-srand
	.cfi_endproc
                                        //  -- End function
	.globl	rand                    //  -- Begin function rand
	.type	rand,@function
rand:                                   //  @rand
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1284865837&4095
	lw x8 ,  0 ( x15 )
	lui x15 ,  (1284865837>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1481765933&4095
	lui x15 ,  (1481765933>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	lw x10 ,  164 ( x8 )
	lw x11 ,  168 ( x8 )
	call __muldi3
	lui x30 ,  2147483647&4095
	addi x15 ,  x10 ,  1
	lui x14 ,  (2147483647>>12)&1048575
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	sw x15 ,  164 ( x8 )
	sltu x15 ,  x15 ,  x10
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x11
	or x14 ,  x14 ,  x30
	sw x15 ,  168 ( x8 )
	and x10 ,  x14 ,  x15
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	rand, .Lfunc_end1-rand
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
