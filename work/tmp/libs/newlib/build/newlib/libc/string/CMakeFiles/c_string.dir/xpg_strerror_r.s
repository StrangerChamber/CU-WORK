	.text
	.file	"xpg_strerror_r.c"
	.globl	__xpg_strerror_r        //  -- Begin function __xpg_strerror_r
	.type	__xpg_strerror_r,@function
__xpg_strerror_r:                       //  @__xpg_strerror_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x12
	add x11 ,  x0 ,  x10
	addi x8 ,  x0 ,  34
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x0 ,  8 ( x2 )
	beq x0, x18, .LBB0_6
.LBB0_1:                                //  %if.end
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	slti x12 ,  x0 ,  1
	addi x13 ,  x2 ,  8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _strerror_r
	add x19 ,  x0 ,  x10
	call strlen
	bgeu x10, x18, .LBB0_2
.LBB0_3:                                //  %if.end5
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call strcpy
	lw x8 ,  8 ( x2 )
	bltu x0, x8, .LBB0_6
.LBB0_4:                                //  %lor.lhs.false
	lbu x15 ,  0 ( x19 )
	bltu x0, x15, .LBB0_6
.LBB0_5:
	addi x8 ,  x0 ,  22
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then2
	addi x18 ,  x18 ,  -1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call memcpy
	add x15 ,  x18 ,  x9
	sb x0 ,  0 ( x15 )
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__xpg_strerror_r, .Lfunc_end0-__xpg_strerror_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
