	.text
	.file	"kf_cos.c"
	.globl	__kernel_cosf           //  -- Begin function __kernel_cosf
	.type	__kernel_cosf,@function
__kernel_cosf:                          //  @__kernel_cosf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
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
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call __fixsfsi
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x9
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	srli x15 ,  x20 ,  25&31
	sltiu x15 ,  x15 ,  25
	beq x0, x15, .LBB0_3
.LBB0_2:
	lui x10 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_9
.LBB0_3:                                //  %if.end4
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  -1387800754&4095
	lui x15 ,  (-1387800754>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  823096566&4095
	lui x15 ,  (823096566>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1265372548&4095
	lui x15 ,  (-1265372548>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  936381697&4095
	lui x15 ,  (936381697>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1162474655&4095
	lui x15 ,  (-1162474655>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1026206379&4095
	lui x15 ,  (1026206379>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1050253721&4095
	lui x15 ,  (1050253721>>12)&1048575
	add x19 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_5
.LBB0_4:                                //  %if.then17
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x20
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.else
	lui x30 ,  -16777216&4095
	lui x15 ,  (-16777216>>12)&1048575
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	call __mulsf3
	lui x15 ,  (1061683200>>12)&1048575
	bltu x15, x20, .LBB0_6
.LBB0_7:                                //  %if.else
	add x20 ,  x21 ,  x20
	jal x0, .LBB0_8
.LBB0_6:
	lui x20 ,  (1049624576>>12)&1048575
.LBB0_8:                                //  %if.else
	add x11 ,  x0 ,  x20
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __subsf3
	add x8 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x8
	call __subsf3
.LBB0_9:                                //  %cleanup
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
	.size	__kernel_cosf, .Lfunc_end0-__kernel_cosf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
