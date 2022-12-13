	.text
	.file	"lldiv.c"
	.globl	lldiv                   //  -- Begin function lldiv
	.type	lldiv,@function
lldiv:                                  //  @lldiv
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
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	add x18 ,  x0 ,  x14
	add x9 ,  x0 ,  x13
	add x21 ,  x0 ,  x12
	add x22 ,  x0 ,  x11
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __divdi3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	call __muldi3
	sltu x15 ,  x22 ,  x10
	sub x14 ,  x21 ,  x11
	sw x20 ,  4 ( x8 )
	sw x19 ,  0 ( x8 )
	sub x14 ,  x14 ,  x15
	sub x15 ,  x22 ,  x10
	sw x14 ,  12 ( x8 )
	sw x15 ,  8 ( x8 )
	blt x21, x0, .LBB0_3
.LBB0_1:                                //  %entry
	bge x14, x0, .LBB0_3
.LBB0_2:                                //  %if.then
	sltu x13 ,  x15 ,  x9
	sub x15 ,  x15 ,  x9
	sub x14 ,  x14 ,  x18
	sw x15 ,  8 ( x8 )
	addi x15 ,  x19 ,  1
	sub x14 ,  x14 ,  x13
	sw x15 ,  0 ( x8 )
	sltu x15 ,  x15 ,  x19
	sw x14 ,  12 ( x8 )
	add x15 ,  x15 ,  x20
	sw x15 ,  4 ( x8 )
.LBB0_3:                                //  %if.end
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
	.size	lldiv, .Lfunc_end0-lldiv
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
