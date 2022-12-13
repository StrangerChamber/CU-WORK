	.text
	.file	"argz_extract.c"
	.globl	argz_extract            //  -- Begin function argz_extract
	.type	argz_extract,@function
argz_extract:                           //  @argz_extract
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call argz_count
	sltiu x15 ,  x18 ,  2
	bltu x0, x15, .LBB0_6
.LBB0_1:                                //  %if.then
	addi x15 ,  x18 ,  -2
	beq x0, x15, .LBB0_6
.LBB0_2:                                //  %for.body.preheader
	add x13 ,  x9 ,  x18
	add x14 ,  x0 ,  x0
	addi x13 ,  x13 ,  -1
	lbu x12 ,  -1 ( x13 )
	beq x0, x12, .LBB0_4
.LBB0_5:                                //  %for.inc
	addi x13 ,  x13 ,  -1
	addi x15 ,  x15 ,  -1
	beq x0, x15, .LBB0_6
.LBB0_3:                                //  %for.body
	lbu x12 ,  -1 ( x13 )
	bltu x0, x12, .LBB0_5
.LBB0_4:                                //  %if.then4
	addi x14 ,  x14 ,  1
	sub x12 ,  x10 ,  x14
	slli x12 ,  x12 ,  2&31
	add x12 ,  x12 ,  x8
	sw x13 ,  0 ( x12 )
	addi x13 ,  x13 ,  -1
	addi x15 ,  x15 ,  -1
	bltu x0, x15, .LBB0_3
.LBB0_6:                                //  %if.end8
	slli x15 ,  x10 ,  2&31
	sw x9 ,  0 ( x8 )
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	add x15 ,  x15 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	sw x0 ,  0 ( x15 )
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	argz_extract, .Lfunc_end0-argz_extract
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
