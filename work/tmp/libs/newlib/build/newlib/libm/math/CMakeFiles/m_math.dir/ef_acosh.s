	.text
	.file	"ef_acosh.c"
	.globl	__ieee754_acoshf        //  -- Begin function __ieee754_acoshf
	.type	__ieee754_acoshf,@function
__ieee754_acoshf:                       //  @__ieee754_acoshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  1065353215&4095
	lui x15 ,  (1065353215>>12)&1048575
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
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_11
.LBB0_2:                                //  %if.else
	lui x15 ,  (1300234240>>12)&1048575
	blt x8, x15, .LBB0_6
.LBB0_3:                                //  %if.then3
	lui x15 ,  (2139095040>>12)&1048575
	bge x8, x15, .LBB0_4
.LBB0_5:                                //  %if.else6
	add x10 ,  x0 ,  x8
	call __ieee754_logf
	lui x30 ,  1060205080&4095
	lui x15 ,  (1060205080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	jal x0, .LBB0_11
.LBB0_6:                                //  %if.else8
	lui x15 ,  (1065353216>>12)&1048575
	bne x8, x15, .LBB0_8
.LBB0_7:
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_11
.LBB0_4:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_11
.LBB0_8:                                //  %if.else11
	lui x30 ,  1073741825&4095
	lui x15 ,  (1073741825>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x8, x15, .LBB0_10
.LBB0_9:                                //  %if.then13
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	add x11 ,  x0 ,  x19
	call __addsf3
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	call __ieee754_logf
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else21
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x8
	call __addsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	call log1pf
.LBB0_11:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_acoshf, .Lfunc_end0-__ieee754_acoshf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
