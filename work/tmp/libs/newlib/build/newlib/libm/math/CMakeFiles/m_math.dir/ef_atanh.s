	.text
	.file	"ef_atanh.c"
	.globl	__ieee754_atanhf        //  -- Begin function __ieee754_atanhf
	.type	__ieee754_atanhf,@function
__ieee754_atanhf:                       //  @__ieee754_atanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	lui x14 ,  (1065353217>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1065353217&4095
	srli x30 ,  x30 ,  12&31
	and x9 ,  x15 ,  x8
	or x15 ,  x14 ,  x30
	bltu x9, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	jal x0, .LBB0_4
.LBB0_2:                                //  %if.end
	lui x15 ,  (1065353216>>12)&1048575
	bne x9, x15, .LBB0_6
.LBB0_3:                                //  %if.then3
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x8
.LBB0_4:                                //  %cleanup
	call __divsf3
	add x8 ,  x0 ,  x10
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x8
.LBB0_13:                               //  %if.end27
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_6:                                //  %if.end5
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x0
	call __gtsf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.end5
	srli x15 ,  x9 ,  23&31
	sltiu x15 ,  x15 ,  99
	bltu x0, x15, .LBB0_5
.LBB0_8:                                //  %do.body10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	add x18 ,  x0 ,  x10
	srli x15 ,  x9 ,  24&31
	addi x14 ,  x0 ,  62
	bltu x14, x15, .LBB0_10
.LBB0_9:                                //  %if.then16
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x19 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
.LBB0_11:                               //  %if.end27
	call log1pf
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x8, .LBB0_13
.LBB0_12:                               //  %if.end27
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	__ieee754_atanhf, .Lfunc_end0-__ieee754_atanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
