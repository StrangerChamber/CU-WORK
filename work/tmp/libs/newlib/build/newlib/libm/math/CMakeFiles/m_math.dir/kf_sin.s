	.text
	.file	"kf_sin.c"
	.globl	__kernel_sinf           //  -- Begin function __kernel_sinf
	.type	__kernel_sinf,@function
__kernel_sinf:                          //  @__kernel_sinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x20 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	call __fixsfsi
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %entry
	lui x15 ,  (2113929216>>12)&1048575
	and x15 ,  x15 ,  x8
	srli x15 ,  x15 ,  25&31
	sltiu x15 ,  x15 ,  25
	bltu x0, x15, .LBB0_6
.LBB0_2:                                //  %if.end4
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x11 ,  x0 ,  x8
	add x19 ,  x0 ,  x10
	call __mulsf3
	lui x30 ,  791595475&4095
	lui x15 ,  (791595475>>12)&1048575
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1294520524&4095
	lui x15 ,  (-1294520524>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  909700891&4095
	lui x15 ,  (909700891>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1185936127&4095
	lui x15 ,  (-1185936127>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1007192201&4095
	lui x15 ,  (1007192201>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x21 ,  x0 ,  x10
	beq x0, x20, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x11 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __subsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then15
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -1104500053&4095
	lui x15 ,  (-1104500053>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x8
	call __addsf3
.LBB0_5:                                //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x8
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
	.size	__kernel_sinf, .Lfunc_end0-__kernel_sinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
