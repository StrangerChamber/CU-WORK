	.text
	.file	"k_cos.c"
	.globl	__kernel_cos            //  -- Begin function __kernel_cos
	.type	__kernel_cos,@function
__kernel_cos:                           //  @__kernel_cos
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x20 ,  x0 ,  x11
	add x21 ,  x0 ,  x10
	call __fixdfsi
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x23 ,  x15 ,  x20
	bltu x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	srli x15 ,  x23 ,  22&31
	sltiu x15 ,  x15 ,  249
	beq x0, x15, .LBB0_3
.LBB0_2:
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x0
	jal x0, .LBB0_9
.LBB0_3:                                //  %if.end4
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -1098368812&4095
	lui x15 ,  (-1098368812>>12)&1048575
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1112999191&4095
	lui x15 ,  (-1112999191>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1112231484&4095
	lui x15 ,  (-1112231484>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1042411166&4095
	lui x15 ,  (1042411166>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  -2137238867&4095
	lui x15 ,  (-2137238867>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1097695665&4095
	lui x15 ,  (-1097695665>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  432739728&4095
	lui x15 ,  (432739728>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1056571808&4095
	lui x15 ,  (1056571808>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  381768055&4095
	lui x15 ,  (381768055>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1084833428&4095
	lui x15 ,  (-1084833428>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  1431655756&4095
	lui x15 ,  (1431655756>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1067799893&4095
	lui x15 ,  (1067799893>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	lui x30 ,  1070805810&4095
	lui x15 ,  (1070805810>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x23, .LBB0_5
.LBB0_4:                                //  %if.then17
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __subdf3
	lui x30 ,  -1075838976&4095
	add x20 ,  x0 ,  x0
	lui x15 ,  (-1075838976>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x20
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x20
	call __adddf3
	jal x0, .LBB0_9
.LBB0_5:                                //  %if.else
	add x22 ,  x0 ,  x0
	lui x15 ,  (1072234496>>12)&1048575
	bgeu x15, x23, .LBB0_7
.LBB0_6:
	lui x23 ,  (1070727168>>12)&1048575
	jal x0, .LBB0_8
.LBB0_7:                                //  %do.body27
	lui x30 ,  -2097152&4095
	lui x15 ,  (-2097152>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x23 ,  x15 ,  x23
.LBB0_8:                                //  %if.end35
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __subdf3
	add x20 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __subdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __subdf3
.LBB0_9:                                //  %cleanup
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
	.size	__kernel_cos, .Lfunc_end0-__kernel_cos
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
