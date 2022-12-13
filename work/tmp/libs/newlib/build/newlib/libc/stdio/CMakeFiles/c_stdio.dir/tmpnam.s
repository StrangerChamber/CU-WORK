	.text
	.file	"tmpnam.c"
	.globl	_tmpnam_r               //  -- Begin function _tmpnam_r
	.type	_tmpnam_r,@function
_tmpnam_r:                              //  @_tmpnam_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	add x15 ,  x0 ,  x0
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	bne x8, x15, .LBB0_2
.LBB0_1:
	addi x8 ,  x9 ,  20
.LBB0_2:                                //  %entry
	add x10 ,  x0 ,  x9
	call _getpid_r
	add x19 ,  x0 ,  x10
	lui x20 ,  (.str.1>>12)&1048575
	lui x21 ,  (.str>>12)&1048575
	lui x22 ,  (.str.4>>12)&1048575
	add x18 ,  x0 ,  x0
.LBB0_3:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  16 ( x9 )
	lui x30 ,  .str.1&4095
	sw x19 ,  20 ( x2 )
	sw x8 ,  4 ( x2 )
	sw x9 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  24 ( x2 )
	or x15 ,  x20 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x2 )
	or x15 ,  x21 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x2 )
	or x15 ,  x22 ,  x30
	sw x15 ,  8 ( x2 )
	call _sprintf_r
	lw x15 ,  16 ( x9 )
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	addi x15 ,  x15 ,  1
	sw x15 ,  16 ( x9 )
	call _open_r
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	beq x0, x15, .LBB0_4
.LBB0_6:                                //  %cleanup.i
                                        //    in Loop: Header=BB0_3 Depth=1
	add x10 ,  x0 ,  x9
	call _close_r
	jal x0, .LBB0_3
.LBB0_4:                                //  %if.then.i
	lw x15 ,  0 ( x9 )
	xori x15 ,  x15 ,  88
	bltu x0, x15, .LBB0_7
.LBB0_5:                                //  %worker.exit.thread
	sb x0 ,  0 ( x8 )
	jal x0, .LBB0_8
.LBB0_7:                                //  %if.then2
	lw x15 ,  16 ( x9 )
	add x18 ,  x0 ,  x8
	addi x15 ,  x15 ,  1
	sw x15 ,  16 ( x9 )
.LBB0_8:                                //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_tmpnam_r, .Lfunc_end0-_tmpnam_r
	.cfi_endproc
                                        //  -- End function
	.globl	_tempnam_r              //  -- Begin function _tempnam_r
	.type	_tempnam_r,@function
_tempnam_r:                             //  @_tempnam_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  .str.2&4095
	lui x15 ,  (.str.2>>12)&1048575
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x19 ,  x0 ,  x11
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x0
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x18 ,  x15 ,  x30
	beq x12, x9, .LBB1_2
.LBB1_1:                                //  %entry
	add x18 ,  x0 ,  x12
.LBB1_2:                                //  %entry
	bltu x0, x19, .LBB1_5
.LBB1_3:                                //  %land.lhs.true
	lui x30 ,  .str.3&4095
	lui x15 ,  (.str.3>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call getenv
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x19 ,  x15 ,  x30
	add x15 ,  x0 ,  x0
	beq x10, x15, .LBB1_5
.LBB1_4:                                //  %land.lhs.true
	add x19 ,  x0 ,  x10
.LBB1_5:                                //  %if.end
	add x10 ,  x0 ,  x19
	call strlen
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call strlen
	add x15 ,  x10 ,  x20
	add x10 ,  x0 ,  x8
	addi x11 ,  x15 ,  19
	call _malloc_r
	add x20 ,  x0 ,  x10
	beq x0, x20, .LBB1_12
.LBB1_6:                                //  %if.then9
	add x10 ,  x0 ,  x8
	call _getpid_r
	xor x21 ,  x8 ,  x10
	lui x22 ,  (.str.4>>12)&1048575
	add x9 ,  x0 ,  x0
.LBB1_7:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  16 ( x8 )
	lui x30 ,  .str.4&4095
	sw x21 ,  20 ( x2 )
	sw x18 ,  16 ( x2 )
	sw x19 ,  12 ( x2 )
	sw x20 ,  4 ( x2 )
	sw x8 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  24 ( x2 )
	or x15 ,  x22 ,  x30
	sw x15 ,  8 ( x2 )
	call _sprintf_r
	lw x15 ,  16 ( x8 )
	add x10 ,  x0 ,  x8
	add x13 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x9
	addi x15 ,  x15 ,  1
	sw x15 ,  16 ( x8 )
	call _open_r
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	beq x0, x15, .LBB1_8
.LBB1_10:                               //  %cleanup.i
                                        //    in Loop: Header=BB1_7 Depth=1
	add x10 ,  x0 ,  x8
	call _close_r
	jal x0, .LBB1_7
.LBB1_8:                                //  %if.then.i
	lw x15 ,  0 ( x8 )
	xori x15 ,  x15 ,  88
	bltu x0, x15, .LBB1_9
.LBB1_11:                               //  %worker.exit.thread
	sb x0 ,  0 ( x20 )
	jal x0, .LBB1_12
.LBB1_9:
	add x9 ,  x0 ,  x20
.LBB1_12:                               //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_tempnam_r, .Lfunc_end1-_tempnam_r
	.cfi_endproc
                                        //  -- End function
	.globl	tempnam                 //  -- Begin function tempnam
	.type	tempnam,@function
tempnam:                                //  @tempnam
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x12 ,  x0 ,  x11
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _tempnam_r
.Lfunc_end2:
	.size	tempnam, .Lfunc_end2-tempnam
	.cfi_endproc
                                        //  -- End function
	.globl	tmpnam                  //  -- Begin function tmpnam
	.type	tmpnam,@function
tmpnam:                                 //  @tmpnam
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	add x15 ,  x0 ,  x0
	bne x8, x15, .LBB3_2
.LBB3_1:
	addi x8 ,  x9 ,  20
.LBB3_2:                                //  %entry
	add x10 ,  x0 ,  x9
	call _getpid_r
	add x19 ,  x0 ,  x10
	lui x20 ,  (.str.1>>12)&1048575
	lui x21 ,  (.str>>12)&1048575
	lui x22 ,  (.str.4>>12)&1048575
	add x18 ,  x0 ,  x0
.LBB3_3:                                //  %while.body.i.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x15 ,  16 ( x9 )
	lui x30 ,  .str.1&4095
	sw x19 ,  20 ( x2 )
	sw x8 ,  4 ( x2 )
	sw x9 ,  0 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x15 ,  24 ( x2 )
	or x15 ,  x20 ,  x30
	lui x30 ,  .str&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  16 ( x2 )
	or x15 ,  x21 ,  x30
	lui x30 ,  .str.4&4095
	srli x30 ,  x30 ,  12&31
	sw x15 ,  12 ( x2 )
	or x15 ,  x22 ,  x30
	sw x15 ,  8 ( x2 )
	call _sprintf_r
	lw x15 ,  16 ( x9 )
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x18
	addi x15 ,  x15 ,  1
	sw x15 ,  16 ( x9 )
	call _open_r
	add x11 ,  x0 ,  x10
	xori x15 ,  x11 ,  -1
	beq x0, x15, .LBB3_4
.LBB3_6:                                //  %cleanup.i.i
                                        //    in Loop: Header=BB3_3 Depth=1
	add x10 ,  x0 ,  x9
	call _close_r
	jal x0, .LBB3_3
.LBB3_4:                                //  %if.then.i.i
	lw x15 ,  0 ( x9 )
	xori x15 ,  x15 ,  88
	bltu x0, x15, .LBB3_7
.LBB3_5:                                //  %worker.exit.thread.i
	sb x0 ,  0 ( x8 )
	jal x0, .LBB3_8
.LBB3_7:                                //  %if.then2.i
	lw x15 ,  16 ( x9 )
	add x18 ,  x0 ,  x8
	addi x15 ,  x15 ,  1
	sw x15 ,  16 ( x9 )
.LBB3_8:                                //  %_tmpnam_r.exit
	add x10 ,  x0 ,  x18
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	tmpnam, .Lfunc_end3-tmpnam
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"/tmp"
	.size	.str, 5

	.address_space	0
	.type	.str.1,@object          //  @.str.1
.str.1:
	.asciz	"t"
	.size	.str.1, 2

	.address_space	0
	.type	.str.2,@object          //  @.str.2
.str.2:
	.zero	1
	.size	.str.2, 1

	.address_space	0
	.type	.str.3,@object          //  @.str.3
.str.3:
	.asciz	"TMPDIR"
	.size	.str.3, 7

	.address_space	0
	.address_space	0
	.type	.str.4,@object          //  @.str.4
.str.4:
	.asciz	"%s/%s%x.%x"
	.size	.str.4, 11


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
