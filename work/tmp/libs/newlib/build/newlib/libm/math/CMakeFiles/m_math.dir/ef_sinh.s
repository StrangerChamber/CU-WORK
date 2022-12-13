	.text
	.file	"ef_sinh.c"
	.globl	__ieee754_sinhf         //  -- Begin function __ieee754_sinhf
	.type	__ieee754_sinhf,@function
__ieee754_sinhf:                        //  @__ieee754_sinhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x9
	srli x18 ,  x15 ,  23&31
	sltiu x14 ,  x18 ,  255
	beq x0, x14, .LBB0_1
.LBB0_2:                                //  %if.end
	lui x30 ,  -1090519040&4095
	lui x14 ,  (-1090519040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x8 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	blt x9, x14, .LBB0_4
.LBB0_3:                                //  %if.end
	lui x8 ,  (1056964608>>12)&1048575
.LBB0_4:                                //  %if.end
	srli x14 ,  x15 ,  20&31
	addi x13 ,  x0 ,  1050
	bltu x13, x14, .LBB0_10
.LBB0_5:                                //  %if.then5
	lui x30 ,  2096152002&4095
	lui x15 ,  (2096152002>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __gtsf2
	bge x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then5
	sltiu x15 ,  x18 ,  99
	bltu x0, x15, .LBB0_19
.LBB0_7:                                //  %if.end12
	add x10 ,  x0 ,  x9
	call fabsf
	call expm1f
	add x9 ,  x0 ,  x10
	addi x15 ,  x0 ,  126
	bltu x15, x18, .LBB0_9
.LBB0_8:                                //  %if.then15
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x19 ,  x0 ,  x10
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	jal x0, .LBB0_12
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	jal x0, .LBB0_18
.LBB0_10:                               //  %if.end25
	lui x30 ,  1118925335&4095
	lui x14 ,  (1118925335>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_13
.LBB0_11:                               //  %if.then27
	add x10 ,  x0 ,  x9
	call fabsf
	call __ieee754_expf
	jal x0, .LBB0_12
.LBB0_13:                               //  %if.end31
	lui x30 ,  1119016188&4095
	lui x14 ,  (1119016188>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_15
.LBB0_14:                               //  %if.then33
	add x10 ,  x0 ,  x9
	call fabsf
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	call __ieee754_expf
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	jal x0, .LBB0_16
.LBB0_9:                                //  %if.end20
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
.LBB0_12:                               //  %cleanup
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_17
.LBB0_15:                               //  %if.end39
	lui x30 ,  2096152002&4095
	lui x15 ,  (2096152002>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
.LBB0_16:                               //  %cleanup
	add x10 ,  x0 ,  x9
.LBB0_17:                               //  %cleanup
	call __mulsf3
.LBB0_18:                               //  %cleanup
	add x9 ,  x0 ,  x10
.LBB0_19:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_sinhf, .Lfunc_end0-__ieee754_sinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
