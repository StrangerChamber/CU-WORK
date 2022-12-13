	.text
	.file	"k_standard.c"
	.globl	__kernel_standard       //  -- Begin function __kernel_standard
	.type	__kernel_standard,@function
__kernel_standard:                      //  @__kernel_standard
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	addi x15 ,  x14 ,  -1
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	addi x14 ,  x0 ,  141
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x8 ,  x0 ,  x9
	bltu x14, x15, .LBB0_12
.LBB0_1:                                //  %entry
	lui x30 ,  JTI0_0&4095
	lui x14 ,  (JTI0_0>>12)&1048575
	slli x15 ,  x15 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x14 ,  x15
	lw x15 ,  0 ( x15 )
	jalr x0 ,  0 ( x15 )
.LBB0_2:                                //  %sw.bb14
	call __errno
	lui x30 ,  -1048576&4095
	addi x15 ,  x0 ,  33
	sw x15 ,  0 ( x10 )
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	jal x0, .LBB0_11
.LBB0_3:                                //  %sw.bb12
	call __errno
	addi x15 ,  x0 ,  34
	jal x0, .LBB0_7
.LBB0_4:                                //  %sw.bb47
	call __errno
	addi x15 ,  x0 ,  33
	lui x9 ,  (2146959360>>12)&1048575
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_11
.LBB0_5:                                //  %sw.bb6
	call __errno
	addi x15 ,  x0 ,  34
	jal x0, .LBB0_9
.LBB0_6:                                //  %sw.bb
	call __errno
	addi x15 ,  x0 ,  33
.LBB0_7:                                //  %sw.epilog
	add x8 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
	add x9 ,  x0 ,  x8
	jal x0, .LBB0_12
.LBB0_8:                                //  %sw.bb28
	call __errno
	addi x15 ,  x0 ,  33
.LBB0_9:                                //  %sw.epilog
	sw x15 ,  0 ( x10 )
	lui x9 ,  (2146435072>>12)&1048575
	jal x0, .LBB0_11
.LBB0_10:                               //  %sw.bb88
	lui x9 ,  (1072693248>>12)&1048575
.LBB0_11:                               //  %sw.epilog
	add x8 ,  x0 ,  x0
.LBB0_12:                               //  %sw.epilog
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
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
.LBB0_16:                               //  %sw.bb49
	call __errno
	add x8 ,  x0 ,  x0
	addi x15 ,  x0 ,  34
	add x11 ,  x0 ,  x18
	sw x15 ,  0 ( x10 )
	add x13 ,  x0 ,  x8
	add x10 ,  x0 ,  x19
	add x12 ,  x0 ,  x8
	call __gtdf2
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	bge x8, x10, .LBB0_12
.LBB0_17:
	lui x9 ,  (2146435072>>12)&1048575
	jal x0, .LBB0_12
.LBB0_13:                               //  %sw.bb39
	add x8 ,  x0 ,  x0
	lui x15 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x12
	add x11 ,  x0 ,  x13
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x15
	call __muldf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x8
	call __ltdf2
	lui x9 ,  (2146435072>>12)&1048575
	bge x10, x0, .LBB0_23
.LBB0_14:                               //  %land.lhs.true
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call rint
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __eqdf2
	beq x0, x10, .LBB0_23
.LBB0_15:                               //  %if.then
	lui x30 ,  -1048576&4095
	lui x15 ,  (-1048576>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	jal x0, .LBB0_23
.LBB0_18:                               //  %sw.bb62
	call __errno
	addi x15 ,  x0 ,  33
	add x12 ,  x0 ,  x0
	add x11 ,  x0 ,  x18
	sw x15 ,  0 ( x10 )
	add x10 ,  x0 ,  x19
	add x13 ,  x0 ,  x12
	call __divdf3
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	jal x0, .LBB0_12
.LBB0_20:                               //  %sw.bb68
	add x10 ,  x0 ,  x0
	add x11 ,  x0 ,  x10
	jal x0, .LBB0_22
.LBB0_21:                               //  %sw.bb83
	add x10 ,  x0 ,  x0
	lui x11 ,  (2146435072>>12)&1048575
.LBB0_22:                               //  %sw.epilog
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call copysign
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_23:                               //  %if.end
	call __errno
	addi x15 ,  x0 ,  34
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	__kernel_standard, .Lfunc_end0-__kernel_standard
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_5
	.long	.LBB0_8
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_10
	.long	.LBB0_13
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_4
	.long	.LBB0_16
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_18
	.long	.LBB0_16
	.long	.LBB0_20
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_21
	.long	.LBB0_8
	.long	.LBB0_10
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_12
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_6
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_5
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_5
	.long	.LBB0_8
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_2
	.long	.LBB0_10
	.long	.LBB0_13
	.long	.LBB0_3
	.long	.LBB0_2
	.long	.LBB0_4
	.long	.LBB0_16
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_4
	.long	.LBB0_18
	.long	.LBB0_16
	.long	.LBB0_20
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_3
	.long	.LBB0_21
	.long	.LBB0_8
	.long	.LBB0_10
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
