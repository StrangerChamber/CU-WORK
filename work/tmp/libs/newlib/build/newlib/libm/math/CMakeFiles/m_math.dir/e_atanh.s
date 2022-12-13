	.text
	.file	"e_atanh.c"
	.globl	__ieee754_atanh         //  -- Begin function __ieee754_atanh
	.type	__ieee754_atanh,@function
__ieee754_atanh:                        //  @__ieee754_atanh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	lui x14 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x11
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 22, -28
	sub x15 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x9
	or x14 ,  x14 ,  x30
	lui x30 ,  1072693249&4095
	and x18 ,  x14 ,  x8
	slt x15 ,  x15 ,  x0
	lui x14 ,  (1072693249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x18
	or x14 ,  x14 ,  x30
	bltu x15, x14, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	jal x0, .LBB0_4
.LBB0_2:                                //  %if.end
	lui x15 ,  (1072693248>>12)&1048575
	bne x18, x15, .LBB0_6
.LBB0_3:                                //  %if.then6
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x0 ,  x12
.LBB0_4:                                //  %cleanup
	call __divdf3
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_5:                                //  %cleanup
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
.LBB0_13:                               //  %if.end32
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
.LBB0_6:                                //  %if.end8
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x0
	add x13 ,  x0 ,  x12
	call __gtdf2
	bge x0, x10, .LBB0_8
.LBB0_7:                                //  %if.end8
	srli x15 ,  x18 ,  20&31
	sltiu x15 ,  x15 ,  995
	bltu x0, x15, .LBB0_5
.LBB0_8:                                //  %do.body13
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	call __adddf3
	add x20 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x15 ,  x18 ,  21&31
	addi x14 ,  x0 ,  510
	bltu x14, x15, .LBB0_10
.LBB0_9:                                //  %if.then21
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __muldf3
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __adddf3
	jal x0, .LBB0_11
.LBB0_10:                               //  %if.else
	add x10 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __divdf3
.LBB0_11:                               //  %if.end32
	call log1p
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x14, x8, .LBB0_13
.LBB0_12:                               //  %if.end32
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_13
.Lfunc_end0:
	.size	__ieee754_atanh, .Lfunc_end0-__ieee754_atanh
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
