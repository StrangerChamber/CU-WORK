	.text
	.file	"ef_remainder.c"
	.globl	__ieee754_remainderf    //  -- Begin function __ieee754_remainderf
	.type	__ieee754_remainderf,@function
__ieee754_remainderf:                   //  @__ieee754_remainderf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lui x14 ,  (-2147483648>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x11
	addi x13 ,  x0 ,  254
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  -2147483648&4095
	srli x30 ,  x30 ,  12&31
	and x19 ,  x15 ,  x8
	or x18 ,  x14 ,  x30
	srli x14 ,  x19 ,  23&31
	bltu x13, x14, .LBB0_2
.LBB0_1:                                //  %entry
	and x21 ,  x15 ,  x9
	addi x15 ,  x21 ,  -1
	srli x15 ,  x15 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	srli x20 ,  x21 ,  24&31
	addi x15 ,  x0 ,  126
	bltu x15, x20, .LBB0_4
.LBB0_5:                                //  %if.then14
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_fmodf
	beq x19, x21, .LBB0_7
.LBB0_8:                                //  %if.end19
	and x19 ,  x18 ,  x8
	call fabsf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call fabsf
	add x9 ,  x0 ,  x10
	bltu x0, x20, .LBB0_11
.LBB0_9:                                //  %if.then23
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x9
	call __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_10:                               //  %if.then26
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subsf3
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x9
	call __gesf2
	bge x10, x0, .LBB0_14
	jal x0, .LBB0_15
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_16
.LBB0_4:
	add x10 ,  x0 ,  x8
	bne x19, x21, .LBB0_8
.LBB0_7:                                //  %if.then17
	add x11 ,  x0 ,  x0
	call __mulsf3
	jal x0, .LBB0_16
.LBB0_11:                               //  %if.else
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __gtsf2
	bge x0, x10, .LBB0_15
.LBB0_12:                               //  %if.then36
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subsf3
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x18
	call __gesf2
	blt x10, x0, .LBB0_15
.LBB0_14:                               //  %if.then39
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subsf3
	add x8 ,  x0 ,  x10
.LBB0_15:                               //  %do.body44
	xor x10 ,  x8 ,  x19
.LBB0_16:                               //  %cleanup
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
	.size	__ieee754_remainderf, .Lfunc_end0-__ieee754_remainderf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
