	.text
	.file	"sf_asinh.c"
	.globl	asinhf                  //  -- Begin function asinhf
	.type	asinhf,@function
asinhf:                                 //  @asinhf
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
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x9 ,  x15 ,  x8
	srli x18 ,  x9 ,  23&31
	sltiu x15 ,  x18 ,  255
	beq x0, x15, .LBB0_1
.LBB0_3:                                //  %if.end
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __gtsf2
	bge x0, x10, .LBB0_5
.LBB0_4:                                //  %if.end
	sltiu x15 ,  x18 ,  99
	bltu x0, x15, .LBB0_2
.LBB0_5:                                //  %if.end7
	lui x30 ,  1300234241&4095
	lui x15 ,  (1300234241>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x9, x15, .LBB0_7
.LBB0_6:                                //  %if.then9
	add x10 ,  x0 ,  x8
	call fabsf
	call __ieee754_logf
	lui x30 ,  1060205080&4095
	lui x15 ,  (1060205080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	jal x0, .LBB0_10
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	add x8 ,  x0 ,  x10
.LBB0_2:                                //  %cleanup
	add x10 ,  x0 ,  x8
.LBB0_12:                               //  %if.end31
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_7:                                //  %if.else
	lui x30 ,  1073741825&4095
	lui x15 ,  (1073741825>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x9, x15, .LBB0_9
.LBB0_8:                                //  %if.then13
	call fabsf
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x19 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x19
	call __addsf3
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	call __ieee754_logf
	jal x0, .LBB0_10
.LBB0_9:                                //  %if.else21
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call fabsf
	lui x19 ,  (1065353216>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __addsf3
	call __ieee754_sqrtf
	add x11 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	call log1pf
.LBB0_10:                               //  %if.end31
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x8, .LBB0_12
.LBB0_11:                               //  %if.end31
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	asinhf, .Lfunc_end0-asinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
