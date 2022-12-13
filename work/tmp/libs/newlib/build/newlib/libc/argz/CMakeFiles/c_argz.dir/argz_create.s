	.text
	.file	"argz_create.c"
	.globl	argz_create             //  -- Begin function argz_create
	.type	argz_create,@function
argz_create:                            //  @argz_create
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x10 ,  0 ( x8 )
	sw x0 ,  0 ( x18 )
	beq x0, x10, .LBB0_8
.LBB0_1:                                //  %while.body.preheader
	add x20 ,  x0 ,  x0
	addi x19 ,  x8 ,  4
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	call strlen
	lw x15 ,  0 ( x18 )
	addi x14 ,  x19 ,  4
	addi x20 ,  x20 ,  1
	add x15 ,  x15 ,  x10
	lw x10 ,  0 ( x19 )
	add x19 ,  x0 ,  x14
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x18 )
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %while.end
	add x10 ,  x0 ,  x15
	call malloc
	add x18 ,  x0 ,  x10
	sw x18 ,  0 ( x9 )
	beq x0, x18, .LBB0_4
.LBB0_5:                                //  %for.body.preheader
	add x9 ,  x0 ,  x0
.LBB0_6:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x8 )
	call strlen
	lw x11 ,  0 ( x8 )
	addi x19 ,  x10 ,  1
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call memcpy
	add x18 ,  x19 ,  x18
	addi x8 ,  x8 ,  4
	addi x20 ,  x20 ,  -1
	bltu x0, x20, .LBB0_6
	jal x0, .LBB0_7
.LBB0_8:                                //  %if.then
	sw x0 ,  0 ( x9 )
	add x9 ,  x0 ,  x0
	jal x0, .LBB0_7
.LBB0_4:
	addi x9 ,  x0 ,  12
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x9
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
	.size	argz_create, .Lfunc_end0-argz_create
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
