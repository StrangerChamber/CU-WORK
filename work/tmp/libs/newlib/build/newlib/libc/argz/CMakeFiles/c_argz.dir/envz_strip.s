	.text
	.file	"envz_strip.c"
	.globl	envz_strip              //  -- Begin function envz_strip
	.type	envz_strip,@function
envz_strip:                             //  @envz_strip
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x11 ,  0 ( x9 )
	add x12 ,  x0 ,  x20
	lw x10 ,  0 ( x8 )
	call argz_next
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_10
.LBB0_1:                                //  %while.body.preheader
	addi x19 ,  x0 ,  61
	slti x21 ,  x0 ,  1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call strchr
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %while.body.if.end12_crit_edge
	lw x11 ,  0 ( x9 )
.LBB0_7:                                //  %if.end12
	lw x10 ,  0 ( x8 )
	add x12 ,  x0 ,  x18
	call argz_next
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_8
.LBB0_2:                                //  %while.body
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call strchr
	bltu x0, x10, .LBB0_3
.LBB0_4:                                //  %if.then
	add x10 ,  x0 ,  x18
	call strlen
	lw x15 ,  0 ( x9 )
	addi x20 ,  x10 ,  1
	add x13 ,  x10 ,  x18
	lw x14 ,  0 ( x8 )
	add x14 ,  x15 ,  x14
	beq x14, x13, .LBB0_6
.LBB0_5:                                //  %if.then7
	xori x15 ,  x10 ,  -1
	add x11 ,  x20 ,  x18
	add x10 ,  x0 ,  x18
	sub x15 ,  x15 ,  x18
	add x12 ,  x14 ,  x15
	call memmove
	lw x15 ,  0 ( x9 )
.LBB0_6:                                //  %if.end
	sub x11 ,  x15 ,  x20
	add x20 ,  x0 ,  x21
	sw x11 ,  0 ( x9 )
	jal x0, .LBB0_7
.LBB0_8:                                //  %while.end
	beq x0, x20, .LBB0_10
.LBB0_9:                                //  %if.then14
	lw x11 ,  0 ( x9 )
	lw x10 ,  0 ( x8 )
	call realloc
	sw x10 ,  0 ( x8 )
.LBB0_10:                               //  %if.end16
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
	.size	envz_strip, .Lfunc_end0-envz_strip
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
