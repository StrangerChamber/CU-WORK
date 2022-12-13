	.text
	.file	"argz_append.c"
	.globl	argz_append             //  -- Begin function argz_append
	.type	argz_append,@function
argz_append:                            //  @argz_append
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
	add x9 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %if.then
	lw x20 ,  0 ( x11 )
	lw x10 ,  0 ( x19 )
	add x15 ,  x9 ,  x20
	sw x15 ,  0 ( x11 )
	add x11 ,  x0 ,  x15
	call realloc
	sw x10 ,  0 ( x19 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x20 ,  x10
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call memcpy
	jal x0, .LBB0_4
.LBB0_2:
	addi x8 ,  x0 ,  12
.LBB0_4:                                //  %return
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
	.size	argz_append, .Lfunc_end0-argz_append
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
