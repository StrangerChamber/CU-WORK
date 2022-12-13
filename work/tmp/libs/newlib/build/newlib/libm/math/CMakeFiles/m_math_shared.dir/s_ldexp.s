	.text
	.file	"s_ldexp.c"
	.globl	ldexp                   //  -- Begin function ldexp
	.type	ldexp,@function
ldexp:                                  //  @ldexp
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x12
	add x12 ,  x0 ,  x0
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	add x13 ,  x0 ,  x12
	call __eqdf2
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call finite
	beq x0, x19, .LBB0_5
.LBB0_1:                                //  %entry
	beq x0, x10, .LBB0_5
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	call scalbn
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	call finite
	add x12 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x12
	call __eqdf2
	beq x0, x10, .LBB0_4
.LBB0_3:                                //  %if.end
	bltu x0, x18, .LBB0_5
.LBB0_4:                                //  %if.then6
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
.LBB0_5:                                //  %return
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ldexp, .Lfunc_end0-ldexp
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
