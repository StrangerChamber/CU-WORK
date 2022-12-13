	.text
	.file	"envz_get.c"
	.globl	envz_get                //  -- Begin function envz_get
	.type	envz_get,@function
envz_get:                               //  @envz_get
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x0
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x10 ,  8 ( x2 )
	sw x11 ,  4 ( x2 )
	beq x0, x11, .LBB0_7
.LBB0_1:                                //  %while.body.preheader
	addi x18 ,  x2 ,  8
	addi x19 ,  x2 ,  4
	jal x0, .LBB0_2
.LBB0_6:                                //  %if.end9
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  4 ( x2 )
	beq x0, x15, .LBB0_7
.LBB0_2:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call _buf_findstr
	beq x0, x10, .LBB0_6
.LBB0_3:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x15 ,  8 ( x2 )
	lbu x14 ,  0 ( x15 )
	beq x0, x14, .LBB0_7
.LBB0_4:                                //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x14 ,  x14 ,  61
	bltu x0, x14, .LBB0_6
.LBB0_5:                                //  %if.then3
	addi x8 ,  x15 ,  1
	sw x8 ,  8 ( x2 )
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	envz_get, .Lfunc_end0-envz_get
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
