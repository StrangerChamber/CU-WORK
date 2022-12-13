	.text
	.file	"csqrtf.c"
	.globl	csqrtf                  //  -- Begin function csqrtf
	.type	csqrtf,@function
csqrtf:                                 //  @csqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9 ,  4 ( x11 )
	sw x8 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  20
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x18 ,  0 ( x11 )
	sw x9 ,  48 ( x2 )
	sw x18 ,  44 ( x2 )
	sw x18 ,  20 ( x2 )
	sw x9 ,  24 ( x2 )
	call crealf
	add x19 ,  x0 ,  x10
	addi x10 ,  x2 ,  12
	sw x18 ,  36 ( x2 )
	sw x18 ,  12 ( x2 )
	sw x9 ,  40 ( x2 )
	sw x9 ,  16 ( x2 )
	call cimagf
	add x11 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	call __nesf2
	bltu x0, x10, .LBB0_8
.LBB0_1:                                //  %if.then
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __ltsf2
	bge x10, x0, .LBB0_3
.LBB0_2:                                //  %if.then8
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x19
	call sqrtf
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	jal x0, .LBB0_5
.LBB0_8:                                //  %if.end
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __nesf2
	bltu x0, x10, .LBB0_13
.LBB0_9:                                //  %if.then33
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __gtsf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call fabsf
	lui x11 ,  (1056964608>>12)&1048575
	call __mulsf3
	call sqrtf
	add x11 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x18, x20, .LBB0_10
.LBB0_11:                               //  %if.then33
	xor x11 ,  x15 ,  x11
	xor x9 ,  x15 ,  x19
	add x10 ,  x0 ,  x19
	jal x0, .LBB0_25
.LBB0_3:                                //  %if.else
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	call __nesf2
	bltu x0, x10, .LBB0_7
.LBB0_4:                                //  %if.then13
	add x18 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
.LBB0_5:                                //  %cleanup
	add x11 ,  x0 ,  x18
.LBB0_6:                                //  %cleanup
	call __mulsf3
	add x11 ,  x0 ,  x18
.LBB0_25:                               //  %cleanup
	call __addsf3
	sw x9 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  52 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.LBB0_13:                               //  %if.end55
	add x10 ,  x0 ,  x19
	call fabsf
	lui x11 ,  (1082130432>>12)&1048575
	call __gtsf2
	lui x18 ,  (1073741824>>12)&1048575
	lui x20 ,  (1048576000>>12)&1048575
	blt x0, x10, .LBB0_16
.LBB0_14:                               //  %lor.lhs.false
	add x10 ,  x0 ,  x9
	call fabsf
	lui x11 ,  (1082130432>>12)&1048575
	call __gtsf2
	blt x0, x10, .LBB0_16
.LBB0_15:                               //  %if.else63
	lui x18 ,  (956301312>>12)&1048575
	lui x20 ,  (1283457024>>12)&1048575
.LBB0_16:                               //  %if.end66
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x19 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __addsf3
	sw x10 ,  28 ( x2 )
	sw x10 ,  4 ( x2 )
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x19
	sw x9 ,  32 ( x2 )
	sw x9 ,  8 ( x2 )
	call __gtsf2
	add x22 ,  x0 ,  x10
	addi x10 ,  x2 ,  4
	call cabsf
	lui x23 ,  (1056964608>>12)&1048575
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x10
	bge x0, x22, .LBB0_18
.LBB0_17:                               //  %if.then79
	add x10 ,  x0 ,  x11
	add x11 ,  x0 ,  x20
	call __addsf3
	call sqrtf
	add x20 ,  x0 ,  x10
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __divsf3
	call fabsf
	add x21 ,  x0 ,  x10
	jal x0, .LBB0_19
.LBB0_10:
	add x9 ,  x0 ,  x19
	add x10 ,  x0 ,  x19
	jal x0, .LBB0_25
.LBB0_7:                                //  %if.else19
	add x10 ,  x0 ,  x19
	call sqrtf
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	jal x0, .LBB0_6
.LBB0_18:                               //  %if.else87
	add x10 ,  x0 ,  x20
	call __subsf3
	call sqrtf
	add x21 ,  x0 ,  x10
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x21
	call __divsf3
	call fabsf
	add x20 ,  x0 ,  x10
.LBB0_19:                               //  %if.end97
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __ltsf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x23 ,  x15 ,  x30
	blt x22, x19, .LBB0_20
.LBB0_21:                               //  %if.end97
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x21 ,  x0 ,  x10
	blt x22, x19, .LBB0_23
	jal x0, .LBB0_24
.LBB0_20:
	xor x9 ,  x23 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x21 ,  x0 ,  x10
	bge x22, x19, .LBB0_24
.LBB0_23:
	xor x21 ,  x23 ,  x21
.LBB0_24:                               //  %if.end97
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x21
	jal x0, .LBB0_25
.Lfunc_end0:
	.size	csqrtf, .Lfunc_end0-csqrtf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
