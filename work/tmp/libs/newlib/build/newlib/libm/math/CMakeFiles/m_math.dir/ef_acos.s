	.text
	.file	"ef_acos.c"
	.globl	__ieee754_acosf         //  -- Begin function __ieee754_acosf
	.type	__ieee754_acosf,@function
__ieee754_acosf:                        //  @__ieee754_acosf
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
	lui x14 ,  (1065353216>>12)&1048575
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	bne x15, x14, .LBB0_3
.LBB0_1:                                //  %if.then
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x10 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x10, x8, .LBB0_12
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_12
.LBB0_3:                                //  %if.else3
	lui x30 ,  1065353217&4095
	lui x14 ,  (1065353217>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_5
.LBB0_4:                                //  %if.then5
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_12
.LBB0_5:                                //  %if.end7
	srli x14 ,  x15 ,  24&31
	addi x13 ,  x0 ,  62
	bltu x13, x14, .LBB0_8
.LBB0_6:                                //  %if.then9
	lui x30 ,  1070141403&4095
	lui x14 ,  (1070141403>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	lui x30 ,  587202561&4095
	lui x14 ,  (587202561>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_12
.LBB0_7:                                //  %if.end12
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  940699400&4095
	lui x15 ,  (940699400>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  978288388&4095
	lui x15 ,  (978288388>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1121709754&4095
	lui x15 ,  (-1121709754>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1045301928&4095
	lui x15 ,  (1045301928>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1096372080&4095
	lui x15 ,  (-1096372080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1033750062&4095
	lui x15 ,  (1033750062>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1087360159&4095
	lui x15 ,  (-1087360159>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  1073829677&4095
	lui x15 ,  (1073829677>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1072049863&4095
	lui x15 ,  (-1072049863>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  866263400&4095
	lui x15 ,  (866263400>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	add x11 ,  x0 ,  x8
	call __subsf3
	lui x30 ,  1070141402&4095
	lui x15 ,  (1070141402>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB0_11
.LBB0_8:                                //  %if.else36
	lui x9 ,  (1065353216>>12)&1048575
	blt x8, x0, .LBB0_9
.LBB0_10:                               //  %if.else66
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subsf3
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	add x19 ,  x0 ,  x10
	call __ieee754_sqrtf
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x18
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __divsf3
	lui x30 ,  940699400&4095
	lui x15 ,  (940699400>>12)&1048575
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  978288388&4095
	lui x15 ,  (978288388>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1121709754&4095
	lui x15 ,  (-1121709754>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1045301928&4095
	lui x15 ,  (1045301928>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1096372080&4095
	lui x15 ,  (-1096372080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1033750062&4095
	lui x15 ,  (1033750062>>12)&1048575
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1087360159&4095
	lui x15 ,  (-1087360159>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1073829677&4095
	lui x15 ,  (1073829677>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1072049863&4095
	lui x15 ,  (-1072049863>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __divsf3
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
.LBB0_11:                               //  %cleanup
	call __addsf3
	jal x0, .LBB0_12
.LBB0_9:                                //  %if.then38
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __addsf3
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	lui x30 ,  940699400&4095
	lui x15 ,  (940699400>>12)&1048575
	add x8 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  978288388&4095
	lui x15 ,  (978288388>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1121709754&4095
	lui x15 ,  (-1121709754>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1045301928&4095
	lui x15 ,  (1045301928>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1096372080&4095
	lui x15 ,  (-1096372080>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1033750062&4095
	lui x15 ,  (1033750062>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1087360159&4095
	lui x15 ,  (-1087360159>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  1073829677&4095
	lui x15 ,  (1073829677>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1072049863&4095
	lui x15 ,  (-1072049863>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __ieee754_sqrtf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  -1281220248&4095
	lui x15 ,  (-1281220248>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	call __addsf3
	lui x30 ,  1078530010&4095
	lui x15 ,  (1078530010>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
.LBB0_12:                               //  %cleanup
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
	.size	__ieee754_acosf, .Lfunc_end0-__ieee754_acosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
