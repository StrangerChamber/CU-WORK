	.text
	.file	"fread.c"
	.globl	_fread_r                //  -- Begin function _fread_r
	.type	_fread_r,@function
_fread_r:                               //  @_fread_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -48
	.cfi_adjust_cfa_offset 48
	sw x18 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x8 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	sw x19 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	sw x9 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 25, -40
	add x9 ,  x0 ,  x14
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call __mulsi3
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB0_1
.LBB0_2:                                //  %do.body
	beq x0, x19, .LBB0_5
.LBB0_3:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	beq x0, x15, .LBB0_4
.LBB0_5:                                //  %if.end3
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB0_6
.LBB0_7:                                //  %do.end22
	lw x22 ,  4 ( x9 )
	blt x22, x0, .LBB0_8
.LBB0_9:                                //  %if.end27
	andi x15 ,  x15 ,  2
	bltu x0, x15, .LBB0_12
.LBB0_10:                               //  %while.cond104.preheader
	lw x11 ,  0 ( x9 )
	bgeu x22, x20, .LBB0_11
.LBB0_23:
	add x23 ,  x0 ,  x20
.LBB0_24:                               //  %while.body108
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	call memcpy
	lw x15 ,  0 ( x9 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	sub x23 ,  x23 ,  x22
	add x15 ,  x22 ,  x15
	sw x15 ,  0 ( x9 )
	call __srefill_r
	bltu x0, x10, .LBB0_22
.LBB0_25:                               //  %while.body108.while.cond104_crit_edge
                                        //    in Loop: Header=BB0_24 Depth=1
	add x21 ,  x22 ,  x21
	lw x11 ,  0 ( x9 )
	lw x22 ,  4 ( x9 )
	bltu x22, x23, .LBB0_24
	jal x0, .LBB0_26
.LBB0_1:
	add x8 ,  x0 ,  x0
	jal x0, .LBB0_27
.LBB0_4:                                //  %if.then2
	add x10 ,  x0 ,  x19
	call __sinit
	lhu x15 ,  12 ( x9 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_7
.LBB0_6:                                //  %if.then14
	lw x13 ,  100 ( x9 )
	lui x30 ,  -8193&4095
	lui x12 ,  (-8193>>12)&1048575
	or x15 ,  x14 ,  x15
	srli x30 ,  x30 ,  12&31
	sh x15 ,  12 ( x9 )
	or x12 ,  x12 ,  x30
	and x13 ,  x12 ,  x13
	sw x13 ,  100 ( x9 )
	lw x22 ,  4 ( x9 )
	bge x22, x0, .LBB0_9
.LBB0_8:                                //  %if.then25
	add x22 ,  x0 ,  x0
	sw x0 ,  4 ( x9 )
	andi x15 ,  x15 ,  2
	beq x0, x15, .LBB0_10
.LBB0_12:                               //  %if.then32
	bltu x22, x20, .LBB0_14
.LBB0_13:                               //  %if.then32
	add x22 ,  x0 ,  x20
.LBB0_14:                               //  %if.then32
	lw x11 ,  0 ( x9 )
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	call memcpy
	lw x15 ,  0 ( x9 )
	sub x23 ,  x20 ,  x22
	add x15 ,  x22 ,  x15
	sw x15 ,  0 ( x9 )
	lw x15 ,  4 ( x9 )
	sub x15 ,  x15 ,  x22
	sw x15 ,  4 ( x9 )
	beq x0, x23, .LBB0_19
.LBB0_15:                               //  %if.then32
	lw x11 ,  48 ( x9 )
	beq x0, x11, .LBB0_19
.LBB0_16:                               //  %if.then49
	addi x15 ,  x9 ,  64
	beq x11, x15, .LBB0_18
.LBB0_17:                               //  %if.then54
	add x10 ,  x0 ,  x19
	call _free_r
.LBB0_18:                               //  %if.end57
	sw x0 ,  48 ( x9 )
.LBB0_19:                               //  %if.end60
	add x21 ,  x22 ,  x21
.LBB0_20:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beq x0, x23, .LBB0_27
.LBB0_21:                               //  %while.body
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	lw x22 ,  20 ( x9 )
	sw x23 ,  20 ( x9 )
	lw x24 ,  16 ( x9 )
	sw x21 ,  16 ( x9 )
	lw x25 ,  0 ( x9 )
	sw x21 ,  0 ( x9 )
	call __srefill_r
	lw x15 ,  4 ( x9 )
	sw x22 ,  20 ( x9 )
	sw x24 ,  16 ( x9 )
	sw x25 ,  0 ( x9 )
	sw x0 ,  4 ( x9 )
	add x21 ,  x15 ,  x21
	sub x23 ,  x23 ,  x15
	beq x0, x10, .LBB0_20
.LBB0_22:                               //  %cleanup101
	sub x10 ,  x20 ,  x23
	add x11 ,  x0 ,  x18
	call __udivsi3
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_27
.LBB0_11:
	add x23 ,  x0 ,  x20
.LBB0_26:                               //  %while.end133
	add x10 ,  x0 ,  x21
	add x12 ,  x0 ,  x23
	call memcpy
	lw x15 ,  4 ( x9 )
	sub x15 ,  x15 ,  x23
	sw x15 ,  4 ( x9 )
	lw x15 ,  0 ( x9 )
	add x15 ,  x23 ,  x15
	sw x15 ,  0 ( x9 )
.LBB0_27:                               //  %cleanup153
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
	.size	_fread_r, .Lfunc_end0-_fread_r
	.cfi_endproc
                                        //  -- End function
	.globl	fread                   //  -- Begin function fread
	.type	fread,@function
fread:                                  //  @fread
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x14 ,  x0 ,  x13
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _fread_r
.Lfunc_end1:
	.size	fread, .Lfunc_end1-fread
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
