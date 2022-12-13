	.text
	.file	"ef_hypot.c"
	.globl	__ieee754_hypotf        //  -- Begin function __ieee754_hypotf
	.type	__ieee754_hypotf,@function
__ieee754_hypotf:                       //  @__ieee754_hypotf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x9 ,  x15 ,  x10
	and x15 ,  x15 ,  x11
	bltu x9, x15, .LBB0_2
.LBB0_1:                                //  %entry
	add x8 ,  x0 ,  x15
	jal x0, .LBB0_3
.LBB0_2:
	add x8 ,  x0 ,  x9
	add x9 ,  x0 ,  x15
.LBB0_3:                                //  %entry
	lui x30 ,  251658241&4095
	lui x14 ,  (251658241>>12)&1048575
	sub x15 ,  x9 ,  x8
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x15, x14, .LBB0_5
.LBB0_4:                                //  %if.then20
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_25
.LBB0_5:                                //  %if.end21
	lui x30 ,  1484783617&4095
	lui x15 ,  (1484783617>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x9, x15, .LBB0_8
.LBB0_6:                                //  %if.then23
	srli x15 ,  x9 ,  23&31
	sltiu x15 ,  x15 ,  255
	beq x0, x15, .LBB0_13
.LBB0_7:                                //  %if.end33
	lui x30 ,  -570425344&4095
	lui x15 ,  (-570425344>>12)&1048575
	addi x22 ,  x0 ,  68
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x8 ,  x15 ,  x8
	add x9 ,  x15 ,  x9
	jal x0, .LBB0_9
.LBB0_8:
	add x22 ,  x0 ,  x0
.LBB0_9:                                //  %if.end49
	lui x30 ,  645922815&4095
	lui x15 ,  (645922815>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_19
.LBB0_10:                               //  %if.then51
	beq x0, x8, .LBB0_17
.LBB0_11:                               //  %if.else
	lui x30 ,  8388607&4095
	lui x15 ,  (8388607>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_18
.LBB0_12:                               //  %do.body56
	lui x19 ,  (2122317824>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x19 ,  x0 ,  x10
	ori x22 ,  x22 ,  -126
	jal x0, .LBB0_20
.LBB0_13:                               //  %if.then25
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __addsf3
	lui x15 ,  (2139095040>>12)&1048575
	beq x9, x15, .LBB0_15
.LBB0_14:                               //  %if.then25
	add x9 ,  x0 ,  x10
.LBB0_15:                               //  %if.then25
	beq x8, x15, .LBB0_26
.LBB0_17:
	add x8 ,  x0 ,  x9
	jal x0, .LBB0_26
.LBB0_18:                               //  %if.else64
	lui x15 ,  (570425344>>12)&1048575
	addi x22 ,  x22 ,  -68
	add x8 ,  x15 ,  x8
	add x9 ,  x15 ,  x9
.LBB0_19:                               //  %if.end82
	add x18 ,  x0 ,  x8
	add x19 ,  x0 ,  x9
.LBB0_20:                               //  %if.end82
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x18
	add x20 ,  x0 ,  x10
	call __gtsf2
	bge x0, x10, .LBB0_22
.LBB0_21:                               //  %do.body86
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x8 ,  x15 ,  x9
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __subsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x9
	call __subsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_23
.LBB0_22:                               //  %if.else101
	lui x30 ,  -4096&4095
	lui x15 ,  (8388608>>12)&1048575
	lui x14 ,  (-4096>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x15 ,  x15 ,  x9
	or x14 ,  x14 ,  x30
	and x9 ,  x14 ,  x8
	and x21 ,  x14 ,  x15
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call __addsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	call __subsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __subsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x20
	call __subsf3
	add x9 ,  x0 ,  x10
.LBB0_23:                               //  %if.end129
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __subsf3
	call __ieee754_sqrtf
	add x8 ,  x0 ,  x10
	beq x0, x22, .LBB0_26
.LBB0_24:                               //  %do.body132
	slli x15 ,  x22 ,  23&31
	lui x14 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x14 ,  x15
	call __mulsf3
.LBB0_25:                               //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_26:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
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
	.size	__ieee754_hypotf, .Lfunc_end0-__ieee754_hypotf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
