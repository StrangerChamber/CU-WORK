	.text
	.file	"s_sin.c"
	.globl	sin                     //  -- Begin function sin
	.type	sin,@function
sin:                                    //  @sin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	lui x14 ,  (1072243195>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x8 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1072243195&4095
	srli x30 ,  x30 ,  12&31
	and x15 ,  x15 ,  x11
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_3
.LBB0_1:                                //  %if.then
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	add x14 ,  x0 ,  x12
.LBB0_2:                                //  %if.then
	call __kernel_sin
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.else
	srli x15 ,  x15 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_5
.LBB0_4:                                //  %if.then2
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __subdf3
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.else3
	addi x8 ,  x2 ,  8
	add x12 ,  x0 ,  x8
	call __ieee754_rem_pio2
	andi x15 ,  x10 ,  3
	xori x14 ,  x15 ,  2
	beq x0, x14, .LBB0_9
.LBB0_6:                                //  %if.else3
	xori x14 ,  x15 ,  1
	beq x0, x14, .LBB0_10
.LBB0_7:                                //  %if.else3
	bltu x0, x15, .LBB0_11
.LBB0_8:                                //  %sw.bb
	ori x15 ,  x8 ,  4
	lw x12 ,  8 ( x8 )
	slti x14 ,  x0 ,  1
	lw x11 ,  0 ( x15 )
	lw x13 ,  20 ( x2 )
	lw x10 ,  8 ( x2 )
	jal x0, .LBB0_2
.LBB0_9:                                //  %sw.bb12
	ori x15 ,  x8 ,  4
	lw x12 ,  8 ( x8 )
	slti x14 ,  x0 ,  1
	lw x11 ,  0 ( x15 )
	lw x13 ,  20 ( x2 )
	lw x10 ,  8 ( x2 )
	call __kernel_sin
	jal x0, .LBB0_12
.LBB0_10:                               //  %sw.bb8
	ori x15 ,  x8 ,  4
	lw x12 ,  8 ( x8 )
	lw x11 ,  0 ( x15 )
	lw x13 ,  20 ( x2 )
	lw x10 ,  8 ( x2 )
	call __kernel_cos
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_11:                               //  %sw.default
	ori x15 ,  x8 ,  4
	lw x12 ,  8 ( x8 )
	lw x11 ,  0 ( x15 )
	lw x13 ,  20 ( x2 )
	lw x10 ,  8 ( x2 )
	call __kernel_cos
.LBB0_12:                               //  %cleanup
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	sin, .Lfunc_end0-sin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
