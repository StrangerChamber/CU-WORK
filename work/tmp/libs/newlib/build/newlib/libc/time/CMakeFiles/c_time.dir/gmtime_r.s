	.text
	.file	"gmtime_r.c"
	.globl	gmtime_r                //  -- Begin function gmtime_r
	.type	gmtime_r,@function
gmtime_r:                               //  @gmtime_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19 ,  0 ( x10 )
	lui x30 ,  86400&4095
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x11
	lui x15 ,  (86400>>12)&1048575
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
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
	lw x11 ,  4 ( x10 )
	srli x30 ,  x30 ,  12&31
	add x13 ,  x0 ,  x9
	or x21 ,  x15 ,  x30
	add x12 ,  x0 ,  x21
	add x10 ,  x0 ,  x19
	call __divdi3
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x9
	add x18 ,  x0 ,  x10
	call __muldi3
	lui x30 ,  719468&4095
	lui x15 ,  (719468>>12)&1048575
	lui x14 ,  (719467>>12)&1048575
	sub x20 ,  x19 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  719467&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	blt x20, x9, .LBB0_2
.LBB0_1:                                //  %entry
	add x14 ,  x0 ,  x15
.LBB0_2:                                //  %entry
	lui x30 ,  -146096&4095
	add x27 ,  x18 ,  x14
	lui x15 ,  (-146096>>12)&1048575
	addi x14 ,  x0 ,  -1
	srli x30 ,  x30 ,  12&31
	add x10 ,  x0 ,  x27
	or x15 ,  x15 ,  x30
	blt x14, x27, .LBB0_4
.LBB0_3:                                //  %entry
	add x10 ,  x15 ,  x27
.LBB0_4:                                //  %entry
	lui x30 ,  146097&4095
	lui x15 ,  (146097>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divsi3
	lui x30 ,  -146097&4095
	lui x15 ,  (-146097>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsi3
	add x19 ,  x27 ,  x10
	addi x22 ,  x0 ,  1460
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x22
	call __udivsi3
	lui x30 ,  36524&4095
	lui x15 ,  (36524>>12)&1048575
	sub x23 ,  x19 ,  x10
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __udivsi3
	lui x30 ,  146096&4095
	lui x15 ,  (146096>>12)&1048575
	add x23 ,  x10 ,  x23
	add x10 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __udivsi3
	sub x23 ,  x23 ,  x10
	add x11 ,  x0 ,  x22
	add x10 ,  x0 ,  x23
	call __udivsi3
	lui x30 ,  36500&4095
	lui x15 ,  (36500>>12)&1048575
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __udivsi3
	sub x15 ,  x19 ,  x22
	addi x11 ,  x0 ,  365
	add x22 ,  x10 ,  x15
	add x10 ,  x0 ,  x23
	call __udivsi3
	addi x11 ,  x0 ,  -365
	add x19 ,  x0 ,  x10
	call __mulsi3
	add x22 ,  x10 ,  x22
	addi x11 ,  x0 ,  5
	add x10 ,  x0 ,  x22
	call __mulsi3
	addi x24 ,  x10 ,  2
	addi x15 ,  x0 ,  1530
	bltu x24, x15, .LBB0_5
.LBB0_6:                                //  %entry
	addi x23 ,  x0 ,  -10
	blt x20, x9, .LBB0_8
	jal x0, .LBB0_9
.LBB0_5:
	addi x23 ,  x0 ,  2
	bge x20, x9, .LBB0_9
.LBB0_8:
	add x20 ,  x21 ,  x20
.LBB0_9:                                //  %entry
	lui x30 ,  3600&4095
	lui x15 ,  (3600>>12)&1048575
	add x10 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x25 ,  x15 ,  x30
	add x11 ,  x0 ,  x25
	call __divsi3
	add x11 ,  x0 ,  x25
	add x21 ,  x0 ,  x10
	call __mulsi3
	sub x20 ,  x20 ,  x10
	addi x26 ,  x0 ,  60
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x26
	call __divsi3
	add x11 ,  x0 ,  x26
	add x25 ,  x0 ,  x10
	call __mulsi3
	add x26 ,  x0 ,  x10
	addi x10 ,  x27 ,  3
	addi x11 ,  x0 ,  7
	call __modsi3
	bge x10, x9, .LBB0_11
.LBB0_10:
	addi x10 ,  x10 ,  7
.LBB0_11:                               //  %entry
	addi x9 ,  x0 ,  153
	sub x15 ,  x20 ,  x26
	sw x10 ,  24 ( x8 )
	add x10 ,  x0 ,  x24
	sw x21 ,  8 ( x8 )
	sw x25 ,  4 ( x8 )
	add x11 ,  x0 ,  x9
	sw x15 ,  0 ( x8 )
	call __udivsi3
	add x11 ,  x0 ,  x9
	add x21 ,  x10 ,  x23
	call __mulsi3
	addi x10 ,  x10 ,  2
	addi x11 ,  x0 ,  5
	sltiu x23 ,  x21 ,  2
	call __udivsi3
	add x20 ,  x0 ,  x10
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x18
	call __mulsi3
	sub x15 ,  x22 ,  x20
	add x9 ,  x0 ,  x10
	addi x18 ,  x15 ,  1
	sltiu x15 ,  x22 ,  306
	bltu x0, x15, .LBB0_13
.LBB0_12:                               //  %cond.true53
	addi x15 ,  x22 ,  -306
	jal x0, .LBB0_18
.LBB0_13:                               //  %cond.false55
	addi x11 ,  x0 ,  100
	add x10 ,  x0 ,  x19
	call __umodsi3
	addi x20 ,  x22 ,  59
	andi x15 ,  x19 ,  3
	bltu x0, x15, .LBB0_16
.LBB0_14:                               //  %cond.false55
	beq x0, x10, .LBB0_16
.LBB0_15:
	slti x15 ,  x0 ,  1
	jal x0, .LBB0_17
.LBB0_16:                               //  %lor.rhs
	addi x11 ,  x0 ,  400
	add x10 ,  x0 ,  x19
	call __umodsi3
	xori x15 ,  x10 ,  0
	sltiu x15 ,  x15 ,  1
.LBB0_17:                               //  %lor.end
	add x15 ,  x15 ,  x20
.LBB0_18:                               //  %cond.end68
	add x14 ,  x19 ,  x9
	sw x21 ,  16 ( x8 )
	sw x18 ,  12 ( x8 )
	sw x15 ,  28 ( x8 )
	sw x0 ,  32 ( x8 )
	add x10 ,  x0 ,  x8
	lw x27 ,  8 ( x2 )              //  4-byte Folded Reload
	add x14 ,  x23 ,  x14
	lw x26 ,  12 ( x2 )             //  4-byte Folded Reload
	addi x14 ,  x14 ,  -1900
	lw x25 ,  16 ( x2 )             //  4-byte Folded Reload
	sw x14 ,  20 ( x8 )
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
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
	.size	gmtime_r, .Lfunc_end0-gmtime_r
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
