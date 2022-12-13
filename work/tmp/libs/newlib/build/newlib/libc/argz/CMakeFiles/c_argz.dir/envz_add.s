	.text
	.file	"envz_add.c"
	.globl	envz_add                //  -- Begin function envz_add
	.type	envz_add,@function
envz_add:                               //  @envz_add
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
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call envz_remove
	beq x0, x18, .LBB0_4
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	call strlen
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call strlen
	add x22 ,  x0 ,  x10
	add x15 ,  x22 ,  x21
	addi x10 ,  x15 ,  2
	call malloc
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	call memcpy
	add x15 ,  x21 ,  x20
	addi x14 ,  x0 ,  61
	addi x12 ,  x22 ,  1
	add x11 ,  x0 ,  x18
	addi x10 ,  x15 ,  1
	sb x14 ,  0 ( x15 )
	call memcpy
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call argz_add
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call free
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.else
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x19
	call argz_add
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_5
.LBB0_2:
	addi x8 ,  x0 ,  12
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
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
	.size	envz_add, .Lfunc_end0-envz_add
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
