	.text
	.file	"wcsncasecmp.c"
	.globl	wcsncasecmp             //  -- Begin function wcsncasecmp
	.type	wcsncasecmp,@function
wcsncasecmp:                            //  @wcsncasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	beq x0, x8, .LBB0_4
.LBB0_1:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x18 )
	call towlower
	add x19 ,  x0 ,  x10
	lw x10 ,  0 ( x9 )
	call towlower
	add x15 ,  x0 ,  x10
	sub x10 ,  x19 ,  x15
	beq x0, x15, .LBB0_5
.LBB0_2:                                //  %for.body
                                        //    in Loop: Header=BB0_1 Depth=1
	bltu x0, x10, .LBB0_5
.LBB0_3:                                //  %for.inc
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x18 ,  x18 ,  4
	addi x9 ,  x9 ,  4
	addi x8 ,  x8 ,  -1
	bltu x0, x8, .LBB0_1
.LBB0_4:
	add x10 ,  x0 ,  x20
.LBB0_5:                                //  %for.end
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
	.size	wcsncasecmp, .Lfunc_end0-wcsncasecmp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
