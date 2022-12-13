	.text
	.file	"sf_tanh.c"
	.globl	tanhf                   //  -- Begin function tanhf
	.type	tanhf,@function
tanhf:                                  //  @tanhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x8
	srli x9 ,  x15 ,  23&31
	sltiu x14 ,  x9 ,  255
	beq x0, x14, .LBB0_1
.LBB0_4:                                //  %if.end
	srli x14 ,  x15 ,  20&31
	addi x13 ,  x0 ,  1050
	bltu x13, x14, .LBB0_5
.LBB0_6:                                //  %if.then5
	srli x15 ,  x15 ,  26&31
	addi x14 ,  x0 ,  8
	bltu x14, x15, .LBB0_8
.LBB0_7:                                //  %if.then7
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	jal x0, .LBB0_13
.LBB0_1:                                //  %if.then
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x8
	call __divsf3
	blt x8, x0, .LBB0_3
.LBB0_2:                                //  %if.then2
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	jal x0, .LBB0_13
.LBB0_5:
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_11
.LBB0_3:                                //  %if.else
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	jal x0, .LBB0_13
.LBB0_8:                                //  %if.end9
	add x10 ,  x0 ,  x8
	call fabsf
	sltiu x15 ,  x9 ,  127
	bltu x0, x15, .LBB0_10
.LBB0_9:                                //  %if.then11
	add x11 ,  x0 ,  x10
	call __addsf3
	call expm1f
	lui x9 ,  (1073741824>>12)&1048575
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __subsf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else17
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	call expm1f
	lui x11 ,  (1073741824>>12)&1048575
	add x9 ,  x0 ,  x10
	call __addsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x9
	call __divsf3
.LBB0_11:                               //  %if.end26
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x8, .LBB0_13
.LBB0_12:                               //  %if.end26
	xor x10 ,  x15 ,  x10
.LBB0_13:                               //  %cleanup
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	tanhf, .Lfunc_end0-tanhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
