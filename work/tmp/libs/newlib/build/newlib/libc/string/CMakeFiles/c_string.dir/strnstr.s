	.text
	.file	"strnstr.c"
	.globl	strnstr                 //  -- Begin function strnstr
	.type	strnstr,@function
strnstr:                                //  @strnstr
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call strnlen
	add x13 ,  x0 ,  x10
	add x8 ,  x0 ,  x0
	bltu x13, x19, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	add x15 ,  x13 ,  x18
	lbu x15 ,  0 ( x15 )
	bltu x0, x15, .LBB0_5
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	call memmem
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_5
.LBB0_3:                                //  %land.lhs.true
	sub x12 ,  x18 ,  x9
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call memchr
	bltu x0, x10, .LBB0_5
.LBB0_4:
	add x8 ,  x0 ,  x18
.LBB0_5:                                //  %cleanup7
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	strnstr, .Lfunc_end0-strnstr
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
