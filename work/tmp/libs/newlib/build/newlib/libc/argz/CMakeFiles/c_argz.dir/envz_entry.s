	.text
	.file	"envz_entry.c"
	.globl	envz_entry              //  -- Begin function envz_entry
	.type	envz_entry,@function
envz_entry:                             //  @envz_entry
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	add x18 ,  x0 ,  x12
	add x9 ,  x0 ,  x0
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x11 ,  8 ( x2 )
	sw x8 ,  12 ( x2 )
	beq x0, x11, .LBB0_13
.LBB0_1:                                //  %while.body.preheader
	addi x19 ,  x2 ,  12
	addi x20 ,  x2 ,  8
	jal x0, .LBB0_2
.LBB0_12:                               //  %if.end24
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  8 ( x2 )
	beq x0, x15, .LBB0_13
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	call _buf_findstr
	beq x0, x10, .LBB0_12
.LBB0_3:                                //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_12
.LBB0_4:                                //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x14 ,  0 ( x15 )
	xori x13 ,  x14 ,  61
	beq x0, x13, .LBB0_6
.LBB0_5:                                //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	bltu x0, x14, .LBB0_12
.LBB0_6:                                //  %while.cond9.preheader
	addi x14 ,  x15 ,  -1
.LBB0_7:                                //  %while.cond9
                                        //  =>This Inner Loop Header: Depth=1
	sw x14 ,  12 ( x2 )
	addi x15 ,  x14 ,  -1
	lbu x13 ,  0 ( x14 )
	beq x8, x14, .LBB0_9
.LBB0_8:                                //  %while.cond9
                                        //    in Loop: Header=BB0_7 Depth=1
	add x14 ,  x0 ,  x15
	bltu x0, x13, .LBB0_7
.LBB0_9:                                //  %while.end
	beq x0, x13, .LBB0_11
.LBB0_10:
	addi x9 ,  x15 ,  1
	jal x0, .LBB0_13
.LBB0_11:                               //  %if.then20
	addi x9 ,  x15 ,  2
	sw x9 ,  12 ( x2 )
.LBB0_13:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	envz_entry, .Lfunc_end0-envz_entry
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
