	.text
	.file	"ef_cosh.c"
	.globl	__ieee754_coshf         //  -- Begin function __ieee754_coshf
	.type	__ieee754_coshf,@function
__ieee754_coshf:                        //  @__ieee754_coshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x18 ,  x15 ,  x10
	srli x15 ,  x18 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB0_4
.LBB0_1:                                //  %if.end
	lui x30 ,  1051816471&4095
	lui x15 ,  (1051816471>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x18, .LBB0_8
.LBB0_2:                                //  %if.then2
	call fabsf
	call expm1f
	lui x11 ,  (1065353216>>12)&1048575
	add x9 ,  x0 ,  x10
	call __addsf3
	srli x15 ,  x18 ,  26&31
	add x8 ,  x0 ,  x10
	sltiu x15 ,  x15 ,  9
	bltu x0, x15, .LBB0_7
.LBB0_3:                                //  %if.end6
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __divsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	jal x0, .LBB0_6
.LBB0_4:                                //  %if.then
	add x11 ,  x0 ,  x10
.LBB0_5:                                //  %cleanup
	call __mulsf3
.LBB0_6:                                //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.end10
	srli x15 ,  x18 ,  20&31
	addi x14 ,  x0 ,  1050
	bltu x14, x15, .LBB0_10
.LBB0_9:                                //  %if.then12
	call fabsf
	call __ieee754_expf
	lui x9 ,  (1056964608>>12)&1048575
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
	jal x0, .LBB0_6
.LBB0_10:                               //  %if.end18
	lui x30 ,  1118925335&4095
	lui x15 ,  (1118925335>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x18, .LBB0_12
.LBB0_11:                               //  %if.then20
	call fabsf
	call __ieee754_expf
	lui x11 ,  (1056964608>>12)&1048575
	jal x0, .LBB0_5
.LBB0_12:                               //  %if.end24
	lui x30 ,  1119016188&4095
	lui x15 ,  (1119016188>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x18, .LBB0_14
.LBB0_13:                               //  %if.then26
	call fabsf
	lui x8 ,  (1056964608>>12)&1048575
	add x11 ,  x0 ,  x8
	call __mulsf3
	call __ieee754_expf
	add x11 ,  x0 ,  x8
	add x9 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_5
.LBB0_14:                               //  %if.end32
	add x10 ,  x0 ,  x0
	call __math_oflowf
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	__ieee754_coshf, .Lfunc_end0-__ieee754_coshf
	.cfi_endproc
                                        //  -- End function
	.hidden	__math_oflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
