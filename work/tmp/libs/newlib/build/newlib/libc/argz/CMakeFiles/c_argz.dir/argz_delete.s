	.text
	.file	"argz_delete.c"
	.globl	argz_delete             //  -- Begin function argz_delete
	.type	argz_delete,@function
argz_delete:                            //  @argz_delete
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x19, .LBB0_5
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	call strlen
	lw x15 ,  0 ( x18 )
	addi x20 ,  x10 ,  1
	add x10 ,  x0 ,  x19
	lw x14 ,  0 ( x9 )
	add x11 ,  x20 ,  x19
	add x15 ,  x15 ,  x14
	sub x12 ,  x15 ,  x11
	call memmove
	lw x15 ,  0 ( x18 )
	lw x10 ,  0 ( x9 )
	sub x11 ,  x15 ,  x20
	sw x11 ,  0 ( x18 )
	call realloc
	sw x10 ,  0 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x15 ,  0 ( x18 )
	bltu x0, x15, .LBB0_5
.LBB0_4:                                //  %if.then7
	call free
	sw x0 ,  0 ( x9 )
	jal x0, .LBB0_5
.LBB0_2:
	addi x8 ,  x0 ,  12
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	argz_delete, .Lfunc_end0-argz_delete
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
