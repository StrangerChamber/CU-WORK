	.text
	.file	"k_sin.c"
	.globl	__kernel_sin            //  -- Begin function __kernel_sin
	.type	__kernel_sin,@function
__kernel_sin:                           //  @__kernel_sin
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x23 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x22 ,  x0 ,  x14
	add x18 ,  x0 ,  x13
	add x19 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	call __fixdfsi
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %entry
	lui x15 ,  (2143289344>>12)&1048575
	and x15 ,  x15 ,  x8
	srli x15 ,  x15 ,  22&31
	sltiu x15 ,  x15 ,  249
	bltu x0, x15, .LBB0_6
.LBB0_2:                                //  %if.end4
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	call __muldf3
	lui x30 ,  1523570044&4095
	lui x15 ,  (1523570044>>12)&1048575
	add x21 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1038473530&4095
	lui x15 ,  (1038473530>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  -1976853269&4095
	lui x15 ,  (-1976853269>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1101339162&4095
	lui x15 ,  (-1101339162>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  1471282813&4095
	lui x15 ,  (1471282813>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1053236707&4095
	lui x15 ,  (1053236707>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  432103893&4095
	lui x15 ,  (432103893>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1087766112&4095
	lui x15 ,  (-1087766112>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  286324902&4095
	lui x15 ,  (286324902>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1065423121&4095
	lui x15 ,  (1065423121>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x26 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __muldf3
	add x24 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	beq x0, x22, .LBB0_3
.LBB0_4:                                //  %if.else
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __muldf3
	add x22 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x27
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __subdf3
	lui x30 ,  1431655753&4095
	lui x15 ,  (1431655753>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069897045&4095
	lui x15 ,  (1069897045>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __subdf3
	jal x0, .LBB0_5
.LBB0_3:                                //  %if.then15
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x25
	call __muldf3
	lui x30 ,  1431655753&4095
	lui x15 ,  (1431655753>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1077586603&4095
	lui x15 ,  (-1077586603>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x23
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
.LBB0_5:                                //  %cleanup
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_6:                                //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__kernel_sin, .Lfunc_end0-__kernel_sin
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
