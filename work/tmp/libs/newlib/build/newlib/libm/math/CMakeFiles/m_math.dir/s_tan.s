	.text
	.file	"s_tan.c"
	.globl	tan                     //  -- Begin function tan
	.type	tan,@function
tan:                                    //  @tan
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
	bltu x14, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x12 ,  x0 ,  x0
	slti x14 ,  x0 ,  1
	add x13 ,  x0 ,  x12
	jal x0, .LBB0_5
.LBB0_2:                                //  %if.else
	srli x15 ,  x15 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_4
.LBB0_3:                                //  %if.then2
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __subdf3
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_4:                                //  %if.else3
	addi x8 ,  x2 ,  8
	add x12 ,  x0 ,  x8
	call __ieee754_rem_pio2
	slli x15 ,  x10 ,  1&31
	slti x14 ,  x0 ,  1
	lw x12 ,  8 ( x8 )
	andi x15 ,  x15 ,  2
	lw x13 ,  20 ( x2 )
	sub x14 ,  x14 ,  x15
	ori x15 ,  x8 ,  4
	lw x10 ,  8 ( x2 )
	lw x11 ,  0 ( x15 )
.LBB0_5:                                //  %cleanup
	call __kernel_tan
	lw x8 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tan, .Lfunc_end0-tan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
