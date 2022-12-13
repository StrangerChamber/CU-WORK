	.text
	.file	"argz_insert.c"
	.globl	argz_insert             //  -- Begin function argz_insert
	.type	argz_insert,@function
argz_insert:                            //  @argz_insert
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
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x9 ,  x0 ,  x13
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	beq x0, x12, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x20 ,  0 ( x18 )
	addi x10 ,  x0 ,  22
	bltu x12, x20, .LBB0_11
.LBB0_3:                                //  %lor.lhs.false
	lw x15 ,  0 ( x8 )
	add x15 ,  x15 ,  x20
	bgeu x12, x15, .LBB0_11
.LBB0_4:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x20, x12, .LBB0_5
.LBB0_6:                                //  %land.rhs
                                        //    in Loop: Header=BB0_4 Depth=1
	lbu x15 ,  -1 ( x12 )
	addi x12 ,  x12 ,  -1
	bltu x0, x15, .LBB0_4
.LBB0_7:                                //  %land.rhs.while.end_crit_edge
	addi x21 ,  x12 ,  1
	jal x0, .LBB0_8
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call argz_add
	jal x0, .LBB0_11
.LBB0_5:
	add x21 ,  x0 ,  x20
.LBB0_8:                                //  %while.end
	add x10 ,  x0 ,  x9
	call strlen
	lw x15 ,  0 ( x8 )
	addi x19 ,  x10 ,  1
	lw x10 ,  0 ( x18 )
	add x11 ,  x19 ,  x15
	call realloc
	sw x10 ,  0 ( x18 )
	beq x0, x10, .LBB0_9
.LBB0_10:                               //  %if.end12
	lw x15 ,  0 ( x8 )
	sub x20 ,  x21 ,  x20
	add x11 ,  x20 ,  x10
	add x10 ,  x19 ,  x11
	sub x12 ,  x15 ,  x20
	call memmove
	lw x15 ,  0 ( x18 )
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x10 ,  x20 ,  x15
	call memcpy
	lw x15 ,  0 ( x8 )
	add x10 ,  x0 ,  x0
	add x15 ,  x19 ,  x15
	sw x15 ,  0 ( x8 )
	jal x0, .LBB0_11
.LBB0_9:
	addi x10 ,  x0 ,  12
.LBB0_11:                               //  %cleanup
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
	.size	argz_insert, .Lfunc_end0-argz_insert
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
