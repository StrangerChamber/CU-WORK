	.text
	.file	"wcsncasecmp_l.c"
	.globl	wcsncasecmp_l           //  -- Begin function wcsncasecmp_l
	.type	wcsncasecmp_l,@function
wcsncasecmp_l:                          //  @wcsncasecmp_l
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
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	beq x0, x9, .LBB0_4
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x19 )
	add x11 ,  x0 ,  x8
	call towlower_l
	add x20 ,  x0 ,  x10
	lw x10 ,  0 ( x18 )
	add x11 ,  x0 ,  x8
	call towlower_l
	add x15 ,  x0 ,  x10
	sub x10 ,  x20 ,  x15
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %for.body
                                        //    in Loop: Header=BB0_1 Depth=1
	bltu x0, x10, .LBB0_5
.LBB0_3:                                //  %for.inc
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x19 ,  x19 ,  4
	addi x18 ,  x18 ,  4
	addi x9 ,  x9 ,  -1
	bltu x0, x9, .LBB0_1
.LBB0_4:
	add x10 ,  x0 ,  x21
.LBB0_5:                                //  %for.end
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
	.size	wcsncasecmp_l, .Lfunc_end0-wcsncasecmp_l
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
