	.text
	.file	"s_cbrt.c"
	.globl	cbrt                    //  -- Begin function cbrt
	.type	cbrt,@function
cbrt:                                   //  @cbrt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	lui x14 ,  (2147483647>>12)&1048575
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2147483647&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x9 ,  x14 ,  x11
	srli x14 ,  x9 ,  20&31
	sltiu x13 ,  x14 ,  2047
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x11
	call __adddf3
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_8
.LBB0_2:                                //  %do.body1
	or x13 ,  x8 ,  x9
	beq x0, x13, .LBB0_8
.LBB0_3:                                //  %do.body9
	and x24 ,  x15 ,  x11
	bltu x0, x14, .LBB0_5
.LBB0_4:                                //  %do.body18
	add x12 ,  x0 ,  x0
	lui x13 ,  (1129316352>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __muldf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	addi x11 ,  x0 ,  3
	call __udivsi3
	lui x30 ,  696219795&4095
	lui x15 ,  (696219795>>12)&1048575
	jal x0, .LBB0_6
.LBB0_5:                                //  %do.body42
	addi x11 ,  x0 ,  3
	add x10 ,  x0 ,  x9
	call __udivsi3
	lui x30 ,  715094163&4095
	lui x15 ,  (715094163>>12)&1048575
	add x18 ,  x0 ,  x0
.LBB0_6:                                //  %if.end52
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x19 ,  x15 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  -245426703&4095
	lui x15 ,  (-245426703>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071734549&4095
	lui x15 ,  (1071734549>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  245426703&4095
	lui x15 ,  (245426703>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1073127658&4095
	lui x15 ,  (1073127658>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	lui x30 ,  624085044&4095
	lui x15 ,  (624085044>>12)&1048575
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  -1075408418&4095
	lui x15 ,  (-1075408418>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __adddf3
	lui x30 ,  1840700270&4095
	lui x15 ,  (1840700270>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	lui x30 ,  1073329883&4095
	lui x15 ,  (1073329883>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	lui x30 ,  -1227133513&4095
	lui x15 ,  (-1227133513>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1071045485&4095
	lui x15 ,  (1071045485>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __muldf3
	addi x18 ,  x11 ,  1
	add x19 ,  x0 ,  x0
	add x12 ,  x0 ,  x19
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __divdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	call __subdf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	call __adddf3
	add x8 ,  x0 ,  x10
	or x11 ,  x11 ,  x24
.LBB0_8:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x24 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	cbrt, .Lfunc_end0-cbrt
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
