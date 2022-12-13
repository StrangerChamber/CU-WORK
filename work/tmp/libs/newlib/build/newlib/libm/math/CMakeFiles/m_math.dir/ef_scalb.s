	.text
	.file	"ef_scalb.c"
	.globl	__ieee754_scalbf        //  -- Begin function __ieee754_scalbf
	.type	__ieee754_scalbf,@function
__ieee754_scalbf:                       //  @__ieee754_scalbf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __unordsf2
	bltu x0, x10, .LBB0_1
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	call finitef
	beq x0, x10, .LBB0_3
.LBB0_5:                                //  %if.end6
	add x10 ,  x0 ,  x9
	call rintf
	add x11 ,  x0 ,  x9
	call __eqsf2
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.then9
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x10
	call __divsf3
	jal x0, .LBB0_14
.LBB0_3:                                //  %if.then2
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __gtsf2
	bge x0, x10, .LBB0_4
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __mulsf3
	jal x0, .LBB0_14
.LBB0_7:                                //  %if.end13
	lui x30 ,  1199433728&4095
	lui x15 ,  (1199433728>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __gtsf2
	bge x0, x10, .LBB0_10
.LBB0_8:                                //  %if.then15
	lui x15 ,  (65000>>12)&1048575
	lui x30 ,  65000&4095
	jal x0, .LBB0_9
.LBB0_4:                                //  %if.else
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x9
	call __divsf3
	jal x0, .LBB0_14
.LBB0_10:                               //  %if.end17
	lui x30 ,  -948049920&4095
	lui x15 ,  (-948049920>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __ltsf2
	bge x10, x0, .LBB0_12
.LBB0_11:                               //  %if.then20
	lui x15 ,  (-65000>>12)&1048575
	lui x30 ,  -65000&4095
.LBB0_9:                                //  %return
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	jal x0, .LBB0_13
.LBB0_12:                               //  %if.end22
	add x10 ,  x0 ,  x9
	call __fixsfsi
	add x11 ,  x0 ,  x10
.LBB0_13:                               //  %return
	add x10 ,  x0 ,  x8
	call scalbnf
.LBB0_14:                               //  %return
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__ieee754_scalbf, .Lfunc_end0-__ieee754_scalbf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
