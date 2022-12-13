	.text
	.file	"argz_create_sep.c"
	.globl	argz_create_sep         //  -- Begin function argz_create_sep
	.type	argz_create_sep,@function
argz_create_sep:                        //  @argz_create_sep
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x18 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x10
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x0 ,  8 ( x2 )
	sw x0 ,  0 ( x18 )
	beq x0, x9, .LBB0_2
.LBB0_1:                                //  %lor.lhs.false
	lbu x15 ,  0 ( x9 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x9
	sb x11 ,  14 ( x2 )
	sb x0 ,  15 ( x2 )
	call strdup
	add x19 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	addi x11 ,  x2 ,  14
	sw x19 ,  8 ( x2 )
	call strsep
	add x22 ,  x0 ,  x0
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %while.body.preheader
	addi x20 ,  x2 ,  8
	addi x21 ,  x2 ,  14
.LBB0_5:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	call strlen
	lw x15 ,  0 ( x18 )
	add x11 ,  x0 ,  x21
	add x15 ,  x15 ,  x10
	add x10 ,  x0 ,  x20
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	call strsep
	addi x22 ,  x22 ,  1
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %while.end
	lw x10 ,  0 ( x18 )
	call malloc
	sw x10 ,  0 ( x8 )
	beq x0, x10, .LBB0_7
.LBB0_8:                                //  %if.end12
	add x10 ,  x0 ,  x19
	call free
	add x10 ,  x0 ,  x9
	call strdup
	add x9 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )
	beq x0, x22, .LBB0_11
.LBB0_9:                                //  %for.body.preheader
	lw x8 ,  0 ( x8 )
	addi x18 ,  x2 ,  8
	addi x19 ,  x2 ,  14
.LBB0_10:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call strsep
	add x20 ,  x0 ,  x10
	call strlen
	addi x21 ,  x10 ,  1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	call memcpy
	add x8 ,  x21 ,  x8
	addi x22 ,  x22 ,  -1
	bltu x0, x22, .LBB0_10
.LBB0_11:                               //  %for.end
	add x10 ,  x0 ,  x9
	call free
	jal x0, .LBB0_12
.LBB0_2:                                //  %if.then
	sw x0 ,  0 ( x8 )
.LBB0_12:                               //  %cleanup
	add x10 ,  x0 ,  x0
.LBB0_13:                               //  %cleanup
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.LBB0_7:
	addi x10 ,  x0 ,  12
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	argz_create_sep, .Lfunc_end0-argz_create_sep
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
