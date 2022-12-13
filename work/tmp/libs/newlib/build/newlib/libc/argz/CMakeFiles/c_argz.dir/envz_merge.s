	.text
	.file	"envz_merge.c"
	.globl	envz_merge              //  -- Begin function envz_merge
	.type	envz_merge,@function
envz_merge:                             //  @envz_merge
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x22 ,  x0 ,  x0
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	add x21 ,  x0 ,  x14
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call argz_next
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_14
.LBB0_1:                                //  %while.body.lr.ph
	beq x0, x21, .LBB0_7
.LBB0_2:
	addi x21 ,  x0 ,  61
	add x24 ,  x0 ,  x0
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x20
	call strdup
	add x11 ,  x0 ,  x21
	add x23 ,  x0 ,  x10
	call strchr
	add x13 ,  x0 ,  x24
	beq x0, x10, .LBB0_5
.LBB0_4:                                //  %if.then17
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x13 ,  x10 ,  1
	sb x0 ,  0 ( x10 )
.LBB0_5:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x23
	call envz_add
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	call free
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call argz_next
	add x20 ,  x0 ,  x10
	bltu x0, x22, .LBB0_14
.LBB0_6:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	bltu x0, x20, .LBB0_3
	jal x0, .LBB0_14
.LBB0_7:                                //  %while.body.us.preheader
	addi x21 ,  x0 ,  61
	add x24 ,  x0 ,  x0
.LBB0_8:                                //  %while.body.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x20
	call strdup
	add x11 ,  x0 ,  x21
	add x23 ,  x0 ,  x10
	call strchr
	beq x0, x10, .LBB0_10
.LBB0_9:                                //  %if.then8.us
                                        //    in Loop: Header=BB0_8 Depth=1
	sb x0 ,  0 ( x10 )
.LBB0_10:                               //  %if.end.us
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x11 ,  0 ( x18 )
	add x12 ,  x0 ,  x23
	lw x10 ,  0 ( x19 )
	call envz_entry
	add x22 ,  x0 ,  x24
	bltu x0, x10, .LBB0_12
.LBB0_11:                               //  %if.then11.us
                                        //    in Loop: Header=BB0_8 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x20
	call argz_add
	add x22 ,  x0 ,  x10
.LBB0_12:                               //  %if.end13.us
                                        //    in Loop: Header=BB0_8 Depth=1
	add x10 ,  x0 ,  x23
	call free
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call argz_next
	add x20 ,  x0 ,  x10
	bltu x0, x22, .LBB0_14
.LBB0_13:                               //  %if.end13.us
                                        //    in Loop: Header=BB0_8 Depth=1
	bltu x0, x20, .LBB0_8
.LBB0_14:                               //  %while.end
	add x10 ,  x0 ,  x22
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	envz_merge, .Lfunc_end0-envz_merge
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
