	.text
	.file	"w_pow.c"
	.globl	pow                     //  -- Begin function pow
	.type	pow,@function
pow:                                    //  @pow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	call __ieee754_pow
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __unorddf2
	bltu x0, x10, .LBB0_17
.LBB0_1:                                //  %if.end
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x22
	add x12 ,  x0 ,  x22
	call __nedf2
	bltu x0, x10, .LBB0_6
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x22
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	call __eqdf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x8 ,  (1072693248>>12)&1048575
	add x9 ,  x0 ,  x22
	jal x0, .LBB0_17
.LBB0_6:                                //  %if.end11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call finite
	beq x0, x10, .LBB0_7
.LBB0_13:                               //  %if.end27
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x12
	call __nedf2
	bltu x0, x10, .LBB0_17
.LBB0_14:                               //  %land.lhs.true29
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call finite
	beq x0, x10, .LBB0_17
.LBB0_15:                               //  %land.lhs.true32
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	bltu x0, x10, .LBB0_16
	jal x0, .LBB0_17
.LBB0_4:                                //  %if.end5
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x12
	call __ltdf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	bge x20, x0, .LBB0_17
.LBB0_5:                                //  %if.end5
	beq x0, x10, .LBB0_17
.LBB0_16:                               //  %if.then35
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_17
.LBB0_7:                                //  %if.then14
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call finite
	beq x0, x10, .LBB0_13
.LBB0_8:                                //  %land.lhs.true17
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call finite
	beq x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then20
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __unorddf2
	bne x10, x22, .LBB0_10
.LBB0_11:                               //  %if.then20
	addi x18 ,  x0 ,  34
	jal x0, .LBB0_12
.LBB0_10:
	addi x18 ,  x0 ,  33
.LBB0_12:                               //  %if.then20
	call __errno
	sw x18 ,  0 ( x10 )
.LBB0_17:                               //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
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
	.size	pow, .Lfunc_end0-pow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
