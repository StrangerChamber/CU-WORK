	.text
	.file	"argz_add_sep.c"
	.globl	argz_add_sep            //  -- Begin function argz_add_sep
	.type	argz_add_sep,@function
argz_add_sep:                           //  @argz_add_sep
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	add x14 ,  x0 ,  x13
	add x15 ,  x0 ,  x12
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	addi x12 ,  x2 ,  8
	addi x13 ,  x2 ,  4
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x0 ,  8 ( x2 )
	sw x0 ,  4 ( x2 )
	add x10 ,  x0 ,  x15
	add x11 ,  x0 ,  x14
	lw x19 ,  0 ( x18 )
	call argz_create_sep
	lw x15 ,  4 ( x2 )
	add x8 ,  x0 ,  x0
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %if.then
	lw x14 ,  0 ( x18 )
	lw x10 ,  0 ( x9 )
	add x11 ,  x15 ,  x14
	sw x11 ,  0 ( x18 )
	call realloc
	sw x10 ,  0 ( x9 )
	beq x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	lw x12 ,  4 ( x2 )
	add x10 ,  x19 ,  x10
	lw x11 ,  8 ( x2 )
	call memcpy
	jal x0, .LBB0_4
.LBB0_2:
	addi x8 ,  x0 ,  12
.LBB0_4:                                //  %cleanup
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
	.size	argz_add_sep, .Lfunc_end0-argz_add_sep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
