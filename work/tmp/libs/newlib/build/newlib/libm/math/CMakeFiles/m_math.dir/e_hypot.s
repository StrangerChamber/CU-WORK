	.text
	.file	"e_hypot.c"
	.globl	__ieee754_hypot         //  -- Begin function __ieee754_hypot
	.type	__ieee754_hypot,@function
__ieee754_hypot:                        //  @__ieee754_hypot
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x9 ,  x0 ,  x12
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
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
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x18 ,  x15 ,  x11
	and x15 ,  x15 ,  x13
	bltu x18, x15, .LBB0_1
.LBB0_2:                                //  %entry
	add x8 ,  x0 ,  x15
	add x19 ,  x0 ,  x10
	jal x0, .LBB0_3
.LBB0_1:
	add x8 ,  x0 ,  x18
	add x19 ,  x0 ,  x9
	add x18 ,  x0 ,  x15
	add x9 ,  x0 ,  x10
.LBB0_3:                                //  %entry
	lui x30 ,  62914561&4095
	lui x14 ,  (62914561>>12)&1048575
	sub x15 ,  x18 ,  x8
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x15, x14, .LBB0_5
.LBB0_4:                                //  %if.then25
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.end26
	lui x30 ,  1596981249&4095
	lui x15 ,  (1596981249>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_6
.LBB0_7:                                //  %if.then28
	srli x15 ,  x18 ,  20&31
	sltiu x15 ,  x15 ,  2047
	bltu x0, x15, .LBB0_12
.LBB0_8:                                //  %if.then30
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x15 ,  x15 ,  x18
	or x14 ,  x19 ,  x15
	add x15 ,  x0 ,  x0
	beq x14, x15, .LBB0_10
.LBB0_9:                                //  %if.then30
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
.LBB0_10:                               //  %if.then30
	lui x14 ,  (2146435072>>12)&1048575
	xor x14 ,  x14 ,  x8
	or x14 ,  x9 ,  x14
	bne x14, x15, .LBB0_11
	jal x0, .LBB0_25
.LBB0_6:
	add x27 ,  x0 ,  x0
	jal x0, .LBB0_13
.LBB0_12:                               //  %if.end52
	lui x30 ,  -629145600&4095
	lui x15 ,  (-629145600>>12)&1048575
	addi x27 ,  x0 ,  600
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x8 ,  x15 ,  x8
	add x18 ,  x15 ,  x18
.LBB0_13:                               //  %if.end72
	lui x30 ,  548405247&4095
	lui x15 ,  (548405247>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_18
.LBB0_14:                               //  %if.then74
	lui x30 ,  1048575&4095
	lui x15 ,  (1048575>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x15, x8, .LBB0_17
.LBB0_15:                               //  %if.then76
	or x15 ,  x9 ,  x8
	beq x0, x15, .LBB0_11
.LBB0_16:                               //  %cleanup.thread
	add x21 ,  x0 ,  x0
	lui x22 ,  (2144337920>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	ori x27 ,  x27 ,  -1022
	jal x0, .LBB0_19
.LBB0_11:                               //  %if.then30
	add x9 ,  x0 ,  x19
	add x8 ,  x0 ,  x18
	jal x0, .LBB0_25
.LBB0_17:                               //  %if.else99
	lui x15 ,  (629145600>>12)&1048575
	addi x27 ,  x27 ,  -600
	add x8 ,  x15 ,  x8
	add x18 ,  x15 ,  x18
.LBB0_18:                               //  %if.end120
	add x20 ,  x0 ,  x8
	add x21 ,  x0 ,  x18
.LBB0_19:                               //  %if.end120
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __subdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	call __gtdf2
	bge x0, x10, .LBB0_21
.LBB0_20:                               //  %if.then123
	add x8 ,  x0 ,  x0
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x13 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	call __subdf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x8
	add x13 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	call __subdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x8
	jal x0, .LBB0_22
.LBB0_21:                               //  %if.else140
	add x22 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x13 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
	call __subdf3
	lui x15 ,  (1048576>>12)&1048575
	add x12 ,  x0 ,  x22
	add x18 ,  x15 ,  x18
	add x13 ,  x0 ,  x18
	call __muldf3
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __adddf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	call __subdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x25
	add x11 ,  x0 ,  x26
	call __adddf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	call __subdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x22
.LBB0_22:                               //  %if.end170
	add x13 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x19
	call __subdf3
	call __ieee754_sqrt
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	beq x0, x27, .LBB0_25
.LBB0_23:                               //  %if.then172
	slli x15 ,  x27 ,  20&31
	lui x14 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x13 ,  x14 ,  x15
	call __muldf3
.LBB0_24:                               //  %cleanup192
	add x9 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
.LBB0_25:                               //  %cleanup192
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
	.size	__ieee754_hypot, .Lfunc_end0-__ieee754_hypot
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
