	.text
	.file	"w_tgamma.c"
	.globl	tgamma                  //  -- Begin function tgamma
	.type	tgamma,@function
tgamma:                                 //  @tgamma
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call __ieee754_tgamma
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call finite
	bltu x0, x10, .LBB0_7
.LBB0_1:                                //  %if.then
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x12
	call __ltdf2
	bge x10, x0, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call floor
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __nedf2
	bltu x0, x10, .LBB0_4
.LBB0_3:                                //  %if.then4
	call __errno
	addi x15 ,  x0 ,  33
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.else
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_7
.LBB0_5:                                //  %if.then8
	call __errno
	addi x15 ,  x0 ,  34
.LBB0_6:                                //  %if.end11
	sw x15 ,  0 ( x10 )
.LBB0_7:                                //  %if.end11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tgamma, .Lfunc_end0-tgamma
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
