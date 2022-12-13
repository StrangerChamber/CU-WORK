	.text
	.file	"fgets.c"
	.globl	_fgets_r                //  -- Begin function _fgets_r
	.type	_fgets_r,@function
_fgets_r:                               //  @_fgets_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x12
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x18 ,  x0 ,  x13
	add x8 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 24, -36
	slti x15 ,  x19 ,  2
	bltu x0, x15, .LBB0_16
.LBB0_1:                                //  %if.end
	beq x0, x20, .LBB0_4
.LBB0_2:                                //  %land.lhs.true
	lw x15 ,  56 ( x20 )
	bltu x0, x15, .LBB0_4
.LBB0_3:                                //  %if.then2
	add x10 ,  x0 ,  x20
	call __sinit
.LBB0_4:                                //  %if.end3
	addi x24 ,  x19 ,  -1
	addi x21 ,  x0 ,  10
	add x19 ,  x0 ,  x8
.LBB0_5:                                //  %do.body9
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  4 ( x18 )
	beq x0, x15, .LBB0_6
.LBB0_9:                                //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	add x22 ,  x0 ,  x24
	bltu x24, x15, .LBB0_11
.LBB0_10:                               //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	add x22 ,  x0 ,  x15
.LBB0_11:                               //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x23 ,  0 ( x18 )
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x22
	add x10 ,  x0 ,  x23
	call memchr
	bltu x0, x10, .LBB0_12
.LBB0_13:                               //  %if.end57
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x15 ,  4 ( x18 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	add x12 ,  x0 ,  x22
	sub x15 ,  x15 ,  x22
	sw x15 ,  4 ( x18 )
	lw x15 ,  0 ( x18 )
	add x15 ,  x22 ,  x15
	sw x15 ,  0 ( x18 )
	call memcpy
	add x19 ,  x22 ,  x19
	sub x24 ,  x24 ,  x22
	bltu x0, x24, .LBB0_5
	jal x0, .LBB0_14
.LBB0_6:                                //  %if.then12
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call __srefill_r
	bltu x0, x10, .LBB0_7
.LBB0_8:                                //  %if.end31
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x15 ,  4 ( x18 )
	add x22 ,  x0 ,  x24
	bgeu x24, x15, .LBB0_10
	jal x0, .LBB0_11
.LBB0_12:                               //  %if.then41
	addi x15 ,  x10 ,  1
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	sub x9 ,  x15 ,  x23
	sw x15 ,  0 ( x18 )
	lw x15 ,  4 ( x18 )
	add x12 ,  x0 ,  x9
	sub x15 ,  x15 ,  x9
	sw x15 ,  4 ( x18 )
	call memcpy
	add x15 ,  x9 ,  x19
	sb x0 ,  0 ( x15 )
	jal x0, .LBB0_15
.LBB0_7:                                //  %if.then14
	beq x19, x8, .LBB0_16
.LBB0_14:                               //  %do.end67
	sb x0 ,  0 ( x19 )
.LBB0_15:                               //  %cleanup
	add x9 ,  x0 ,  x8
.LBB0_16:                               //  %cleanup
	add x10 ,  x0 ,  x9
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
	.size	_fgets_r, .Lfunc_end0-_fgets_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgets                   //  -- Begin function fgets
	.type	fgets,@function
fgets:                                  //  @fgets
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x13 ,  x0 ,  x12
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _fgets_r
.Lfunc_end1:
	.size	fgets, .Lfunc_end1-fgets
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
