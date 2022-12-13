	.text
	.file	"fgetws.c"
	.globl	_fgetws_r               //  -- Begin function _fgetws_r
	.type	_fgetws_r,@function
_fgetws_r:                              //  @_fgetws_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x13
	lui x15 ,  (8192>>12)&1048575
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -44
	add x19 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
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
	lhu x14 ,  12 ( x18 )
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then7
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x18 )
	lw x14 ,  100 ( x18 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x18 )
.LBB0_2:                                //  %do.end
	bge x0, x19, .LBB0_3
.LBB0_4:                                //  %if.end16
	lw x15 ,  4 ( x18 )
	add x9 ,  x0 ,  x0
	bge x0, x15, .LBB0_5
.LBB0_6:                                //  %if.end22
	addi x22 ,  x18 ,  92
	addi x23 ,  x0 ,  10
	addi x24 ,  x2 ,  8
	add x21 ,  x0 ,  x8
.LBB0_7:                                //  %do.body23
                                        //  =>This Inner Loop Header: Depth=1
	lw x10 ,  0 ( x18 )
	add x11 ,  x0 ,  x23
	lw x12 ,  4 ( x18 )
	sw x10 ,  8 ( x2 )
	call memchr
	beq x0, x10, .LBB0_9
.LBB0_8:                                //  %cond.true29
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x15 ,  0 ( x18 )
	sub x15 ,  x10 ,  x15
	addi x13 ,  x15 ,  1
	jal x0, .LBB0_10
.LBB0_9:                                //  %cond.false31
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x13 ,  4 ( x18 )
.LBB0_10:                               //  %cond.end33
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x14 ,  x19 ,  -1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x24
	add x15 ,  x0 ,  x22
	call _mbsnrtowcs_r
	add x25 ,  x0 ,  x10
	xori x15 ,  x25 ,  -1
	beq x0, x15, .LBB0_20
.LBB0_11:                               //  %if.end38
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x14 ,  8 ( x2 )
	bltu x0, x14, .LBB0_13
.LBB0_12:                               //  %if.then41
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x12 ,  4 ( x18 )
	add x11 ,  x0 ,  x9
	lw x10 ,  0 ( x18 )
	call memchr
	addi x14 ,  x10 ,  1
	addi x25 ,  x25 ,  1
	sw x14 ,  8 ( x2 )
.LBB0_13:                               //  %if.end45
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x15 ,  0 ( x18 )
	sw x14 ,  0 ( x18 )
	sub x19 ,  x19 ,  x25
	lw x13 ,  4 ( x18 )
	sub x15 ,  x15 ,  x14
	slli x14 ,  x25 ,  2&31
	add x15 ,  x15 ,  x13
	add x21 ,  x14 ,  x21
	slti x14 ,  x19 ,  2
	sw x15 ,  4 ( x18 )
	bltu x0, x14, .LBB0_17
.LBB0_14:                               //  %if.end45
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x14 ,  -4 ( x21 )
	xori x14 ,  x14 ,  10
	beq x0, x14, .LBB0_17
.LBB0_15:                               //  %land.rhs
                                        //    in Loop: Header=BB0_7 Depth=1
	blt x0, x15, .LBB0_7
.LBB0_16:                               //  %lor.rhs
                                        //    in Loop: Header=BB0_7 Depth=1
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB0_7
.LBB0_17:                               //  %do.end66
	beq x21, x8, .LBB0_20
.LBB0_18:                               //  %if.end70
	add x10 ,  x0 ,  x22
	call mbsinit
	beq x0, x10, .LBB0_20
.LBB0_19:                               //  %if.end75
	add x9 ,  x0 ,  x8
	sw x0 ,  0 ( x21 )
	jal x0, .LBB0_20
.LBB0_3:                                //  %if.then15
	call __errno
	addi x15 ,  x0 ,  22
	add x9 ,  x0 ,  x0
	sw x15 ,  0 ( x10 )
	jal x0, .LBB0_20
.LBB0_5:                                //  %land.lhs.true
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call __srefill_r
	beq x0, x10, .LBB0_6
.LBB0_20:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
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
	.size	_fgetws_r, .Lfunc_end0-_fgetws_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgetws                  //  -- Begin function fgetws
	.type	fgetws,@function
fgetws:                                 //  @fgetws
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x19 ,  0 ( x15 )
	beq x0, x19, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x19 )
	bltu x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x19
	call __sinit
.LBB1_3:                                //  %if.end
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, _fgetws_r
.Lfunc_end1:
	.size	fgetws, .Lfunc_end1-fgetws
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
