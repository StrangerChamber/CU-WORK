	.text
	.file	"ef_log10.c"
	.globl	__ieee754_log10f        //  -- Begin function __ieee754_log10f
	.type	__ieee754_log10f,@function
__ieee754_log10f:                       //  @__ieee754_log10f
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  -8388608&4095
	lui x15 ,  (-8388608>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	beq x0, x15, .LBB0_12
.LBB0_1:                                //  %if.end
	blt x8, x0, .LBB0_2
.LBB0_3:                                //  %if.end3
	lui x15 ,  (2139095040>>12)&1048575
	bge x8, x15, .LBB0_4
.LBB0_5:                                //  %if.end6
	lui x19 ,  (8388608>>12)&1048575
	blt x8, x19, .LBB0_6
.LBB0_7:                                //  %if.end6
	addi x18 ,  x0 ,  -127
	jal x0, .LBB0_8
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x0
	call __divsf3
	jal x0, .LBB0_12
.LBB0_4:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_11
.LBB0_6:
	addi x18 ,  x0 ,  -152
.LBB0_8:                                //  %if.end6
	lui x11 ,  (1275068416>>12)&1048575
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x9 ,  x0 ,  x10
	blt x8, x19, .LBB0_10
.LBB0_9:                                //  %if.end6
	add x9 ,  x0 ,  x8
.LBB0_10:                               //  %if.end6
	srai x15 ,  x9 ,  23&31
	add x15 ,  x15 ,  x18
	slt x19 ,  x15 ,  x0
	add x10 ,  x15 ,  x19
	call __floatsisf
	lui x30 ,  894707675&4095
	lui x15 ,  (894707675>>12)&1048575
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	slli x14 ,  x19 ,  23&31
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	or x15 ,  x15 ,  x14
	lui x14 ,  (1065353216>>12)&1048575
	xor x10 ,  x14 ,  x15
	call __ieee754_logf
	lui x30 ,  1054759897&4095
	lui x15 ,  (1054759897>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	lui x30 ,  1050288256&4095
	lui x15 ,  (1050288256>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x9
.LBB0_11:                               //  %cleanup
	call __addsf3
.LBB0_12:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_log10f, .Lfunc_end0-__ieee754_log10f
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
