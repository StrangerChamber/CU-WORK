	.text
	.file	"envz_remove.c"
	.globl	envz_remove             //  -- Begin function envz_remove
	.type	envz_remove,@function
envz_remove:                            //  @envz_remove
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x11 ,  0 ( x8 )
	lw x10 ,  0 ( x9 )
	call envz_entry
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_4
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	call strlen
	add x15 ,  x0 ,  x10
	lw x14 ,  0 ( x8 )
	lw x10 ,  0 ( x9 )
	addi x19 ,  x15 ,  1
	add x12 ,  x15 ,  x18
	add x13 ,  x14 ,  x10
	beq x13, x12, .LBB0_3
.LBB0_2:                                //  %if.then5
	xori x15 ,  x15 ,  -1
	add x11 ,  x19 ,  x18
	add x10 ,  x0 ,  x18
	sub x15 ,  x15 ,  x18
	add x12 ,  x13 ,  x15
	call memmove
	lw x14 ,  0 ( x8 )
	lw x10 ,  0 ( x9 )
.LBB0_3:                                //  %if.end
	sub x11 ,  x14 ,  x19
	call realloc
	lw x15 ,  0 ( x8 )
	sw x10 ,  0 ( x9 )
	sub x15 ,  x15 ,  x19
	sw x15 ,  0 ( x8 )
.LBB0_4:                                //  %if.end12
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	envz_remove, .Lfunc_end0-envz_remove
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
