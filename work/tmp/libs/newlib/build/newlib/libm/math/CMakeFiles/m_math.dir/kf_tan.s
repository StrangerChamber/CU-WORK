	.text
	.file	"kf_tan.c"
	.globl	__kernel_tanf           //  -- Begin function __kernel_tanf
	.type	__kernel_tanf,@function
__kernel_tanf:                          //  @__kernel_tanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x10
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x24 ,  x15 ,  x8
	call __fixsfsi
	bltu x0, x10, .LBB0_5
.LBB0_1:                                //  %entry
	srli x15 ,  x24 ,  23&31
	addi x14 ,  x0 ,  98
	bltu x14, x15, .LBB0_5
.LBB0_2:                                //  %if.then3
	addi x15 ,  x9 ,  1
	or x15 ,  x24 ,  x15
	beq x0, x15, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	slti x15 ,  x0 ,  1
	bne x9, x15, .LBB0_18
	jal x0, .LBB0_19
.LBB0_5:                                //  %if.end10
	lui x30 ,  1059889472&4095
	lui x25 ,  (1059889472>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	bltu x24, x15, .LBB0_6
.LBB0_7:                                //  %if.then13
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x19 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	blt x8, x19, .LBB0_8
.LBB0_9:                                //  %if.then13
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_10
.LBB0_6:
	add x19 ,  x0 ,  x18
	add x18 ,  x0 ,  x8
	jal x0, .LBB0_13
.LBB0_3:                                //  %if.then6
	add x10 ,  x0 ,  x8
	call fabsf
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	call __divsf3
	jal x0, .LBB0_18
.LBB0_8:
	xor x11 ,  x21 ,  x8
.LBB0_10:                               //  %if.then13
	lui x30 ,  1061752794&4095
	lui x15 ,  (1061752794>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	add x20 ,  x0 ,  x10
	bge x8, x19, .LBB0_12
.LBB0_11:
	xor x18 ,  x21 ,  x18
.LBB0_12:                               //  %if.then13
	lui x30 ,  857874792&4095
	lui x15 ,  (857874792>>12)&1048575
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	add x18 ,  x0 ,  x10
.LBB0_13:                               //  %if.end22
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1214534049&4095
	lui x15 ,  (-1214534049>>12)&1048575
	add x21 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  950268997&4095
	lui x15 ,  (950268997>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  974792392&4095
	lui x15 ,  (974792392>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  996894998&4095
	lui x15 ,  (996894998>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1018374052&4095
	lui x15 ,  (1018374052>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1040746633&4095
	lui x15 ,  (1040746633>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x30 ,  936989572&4095
	lui x15 ,  (936989572>>12)&1048575
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  949338234&4095
	lui x15 ,  (949338234>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  964769721&4095
	lui x15 ,  (964769721>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  985587272&4095
	lui x15 ,  (985587272>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1007761183&4095
	lui x15 ,  (1007761183>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  1029508561&4095
	lui x15 ,  (1029508561>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x21
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __addsf3
	lui x30 ,  1051372203&4095
	lui x15 ,  (1051372203>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __addsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __addsf3
	lui x30 ,  1059889472&4095
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x25 ,  x30
	bltu x24, x15, .LBB0_15
.LBB0_14:                               //  %if.then56
	add x10 ,  x0 ,  x9
	call __floatsisf
	srli x15 ,  x8 ,  30&31
	slti x14 ,  x0 ,  1
	add x9 ,  x0 ,  x10
	andi x15 ,  x15 ,  2
	sub x10 ,  x14 ,  x15
	call __floatsisf
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __divsf3
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	add x11 ,  x0 ,  x8
	call __mulsf3
	jal x0, .LBB0_18
.LBB0_15:                               //  %if.end69
	xori x15 ,  x9 ,  1
	bltu x0, x15, .LBB0_17
.LBB0_16:
	add x8 ,  x0 ,  x20
	jal x0, .LBB0_19
.LBB0_17:                               //  %if.else73
	lui x30 ,  -4096&4095
	lui x15 ,  (-4096>>12)&1048575
	add x11 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x21 ,  x15 ,  x30
	and x8 ,  x21 ,  x20
	add x10 ,  x0 ,  x8
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	and x19 ,  x21 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x19
	call __addsf3
.LBB0_18:                               //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_19:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x25 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x24 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  44 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  48
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__kernel_tanf, .Lfunc_end0-__kernel_tanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
