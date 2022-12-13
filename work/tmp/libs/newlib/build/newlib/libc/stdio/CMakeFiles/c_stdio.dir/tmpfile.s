	.text
	.file	"tmpfile.c"
	.globl	_tmpfile_r              //  -- Begin function _tmpfile_r
	.type	_tmpfile_r,@function
_tmpfile_r:                             //  @_tmpfile_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1064
	.cfi_adjust_cfa_offset 1064
	sw x9 ,  1056 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  1048 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  1044 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  1036 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x8 ,  1032 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	addi x19 ,  x2 ,  8
	add x9 ,  x0 ,  x0
	lui x22 ,  (68098>>12)&1048575
	addi x20 ,  x0 ,  384
	sw x1 ,  1060 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1052 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  1040 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
.LBB0_1:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call _tmpnam_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB0_7
.LBB0_2:                                //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x30 ,  68098&4095
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x22 ,  x30
	call _open_r
	add x21 ,  x0 ,  x10
	bge x21, x0, .LBB0_4
.LBB0_3:                                //  %land.rhs
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x15 ,  0 ( x8 )
	xori x15 ,  x15 ,  17
	beq x0, x15, .LBB0_1
	jal x0, .LBB0_7
.LBB0_4:                                //  %if.end6
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	call _fdopen_r
	lw x19 ,  0 ( x8 )
	add x9 ,  x0 ,  x10
	bltu x0, x9, .LBB0_6
.LBB0_5:                                //  %if.then9
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	call _close_r
.LBB0_6:                                //  %if.end11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call _remove_r
	sw x19 ,  0 ( x8 )
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x9
	lw x8 ,  1032 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  1036 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1040 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1044 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1048 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1052 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1056 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1060 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1064
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_tmpfile_r, .Lfunc_end0-_tmpfile_r
	.cfi_endproc
                                        //  -- End function
	.globl	tmpfile                 //  -- Begin function tmpfile
	.type	tmpfile,@function
tmpfile:                                //  @tmpfile
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1064
	.cfi_adjust_cfa_offset 1064
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  1032 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -32
	sw x9 ,  1056 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  1048 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  1044 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x22 ,  1036 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	addi x19 ,  x2 ,  8
	add x9 ,  x0 ,  x0
	lui x22 ,  (68098>>12)&1048575
	addi x20 ,  x0 ,  384
	sw x1 ,  1060 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1052 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  1040 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x8 ,  0 ( x15 )
.LBB1_1:                                //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call _tmpnam_r
	add x18 ,  x0 ,  x10
	beq x0, x18, .LBB1_7
.LBB1_2:                                //  %if.end.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lui x30 ,  68098&4095
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	add x13 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x22 ,  x30
	call _open_r
	add x21 ,  x0 ,  x10
	bge x21, x0, .LBB1_4
.LBB1_3:                                //  %land.rhs.i
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x15 ,  0 ( x8 )
	xori x15 ,  x15 ,  17
	beq x0, x15, .LBB1_1
	jal x0, .LBB1_7
.LBB1_4:                                //  %if.end6.i
	lui x30 ,  .str&4095
	lui x15 ,  (.str>>12)&1048575
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	call _fdopen_r
	lw x19 ,  0 ( x8 )
	add x9 ,  x0 ,  x10
	bltu x0, x9, .LBB1_6
.LBB1_5:                                //  %if.then9.i
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	call _close_r
.LBB1_6:                                //  %if.end11.i
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x18
	call _remove_r
	sw x19 ,  0 ( x8 )
.LBB1_7:                                //  %_tmpfile_r.exit
	add x10 ,  x0 ,  x9
	lw x8 ,  1032 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  1036 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1040 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1044 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1048 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1052 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1056 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1060 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1064
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	tmpfile, .Lfunc_end1-tmpfile
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"wb+"
	.size	.str, 4

	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
