	.text
	.file	"argz_add.c"
	.globl	argz_add                //  -- Begin function argz_add
	.type	argz_add,@function
argz_add:                               //  @argz_add
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
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x9 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x9
	lw x21 ,  0 ( x20 )
	call strlen
	lw x15 ,  0 ( x20 )
	addi x19 ,  x10 ,  1
	lw x10 ,  0 ( x18 )
	add x11 ,  x19 ,  x15
	sw x11 ,  0 ( x20 )
	call realloc
	sw x10 ,  0 ( x18 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end4
	add x10 ,  x21 ,  x10
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	call memcpy
	jal x0, .LBB0_4
.LBB0_2:
	addi x8 ,  x0 ,  12
.LBB0_4:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	argz_add, .Lfunc_end0-argz_add
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
