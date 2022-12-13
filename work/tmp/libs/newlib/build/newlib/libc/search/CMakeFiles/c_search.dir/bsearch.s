	.text
	.file	"bsearch.c"
	.globl	bsearch                 //  -- Begin function bsearch
	.type	bsearch,@function
bsearch:                                //  @bsearch
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
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x14
	add x9 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x0
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	beq x0, x9, .LBB0_9
.LBB0_1:                                //  %entry
	beq x0, x19, .LBB0_9
.LBB0_2:                                //  %while.body.preheader
	add x23 ,  x0 ,  x0
	add x24 ,  x0 ,  x23
	jal x0, .LBB0_3
.LBB0_4:                                //    in Loop: Header=BB0_3 Depth=1
	add x19 ,  x0 ,  x22
	bgeu x24, x19, .LBB0_8
.LBB0_3:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x15 ,  x19 ,  x24
	add x11 ,  x0 ,  x9
	srli x22 ,  x15 ,  1&31
	add x10 ,  x0 ,  x22
	call __mulsi3
	add x21 ,  x10 ,  x18
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call_reg, 0 ( x8 )
	blt x10, x0, .LBB0_4
.LBB0_5:                                //  %if.else
                                        //    in Loop: Header=BB0_3 Depth=1
	beq x0, x10, .LBB0_9
.LBB0_6:                                //  %if.then6
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x24 ,  x22 ,  1
	bltu x24, x19, .LBB0_3
.LBB0_8:
	add x21 ,  x0 ,  x23
.LBB0_9:                                //  %cleanup
	add x10 ,  x0 ,  x21
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
	.size	bsearch, .Lfunc_end0-bsearch
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
