	.text
	.file	"fputws.c"
	.globl	_fputws_r               //  -- Begin function _fputws_r
	.type	_fputws_r,@function
_fputws_r:                              //  @_fputws_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -1096
	.cfi_adjust_cfa_offset 1096
	sw x8 ,  1056 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x12
	lui x14 ,  (8192>>12)&1048575
	sw x9 ,  1088 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  1092 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  1084 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  1080 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  1076 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  1072 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  1068 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  1064 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  1060 ( x2 )           //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x11 ,  1052 ( x2 )
	lhu x15 ,  12 ( x8 )
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_2
.LBB0_1:                                //  %if.then7
	lw x13 ,  100 ( x8 )
	or x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	or x13 ,  x14 ,  x13
	sw x13 ,  100 ( x8 )
.LBB0_2:                                //  %do.end
	andi x15 ,  x15 ,  8
	addi x18 ,  x0 ,  -1
	beq x0, x15, .LBB0_4
.LBB0_3:                                //  %lor.lhs.false
	lw x15 ,  16 ( x8 )
	bltu x0, x15, .LBB0_5
.LBB0_4:                                //  %land.rhs
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __swsetup_r
	bltu x0, x10, .LBB0_10
.LBB0_5:                                //  %if.end24
	slti x15 ,  x0 ,  1
	addi x19 ,  x2 ,  28
	addi x20 ,  x8 ,  92
	addi x21 ,  x2 ,  1052
	addi x22 ,  x0 ,  1024
	addi x23 ,  x2 ,  16
	add x24 ,  x0 ,  x0
	sw x15 ,  20 ( x2 )
	addi x15 ,  x2 ,  8
	sw x19 ,  8 ( x2 )
	sw x15 ,  16 ( x2 )
.LBB0_6:                                //  %do.body25
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x21
	add x13 ,  x0 ,  x22
	add x14 ,  x0 ,  x20
	call _wcsrtombs_r
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_10
.LBB0_7:                                //  %if.end31
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x10 ,  12 ( x2 )
	sw x10 ,  24 ( x2 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x23
	call __sfvwrite_r
	bltu x0, x10, .LBB0_10
.LBB0_8:                                //  %do.cond37
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x15 ,  1052 ( x2 )
	bltu x0, x15, .LBB0_6
.LBB0_9:
	add x18 ,  x0 ,  x24
.LBB0_10:                               //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  1056 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  1060 ( x2 )           //  4-byte Folded Reload
	lw x23 ,  1064 ( x2 )           //  4-byte Folded Reload
	lw x22 ,  1068 ( x2 )           //  4-byte Folded Reload
	lw x21 ,  1072 ( x2 )           //  4-byte Folded Reload
	lw x20 ,  1076 ( x2 )           //  4-byte Folded Reload
	lw x19 ,  1080 ( x2 )           //  4-byte Folded Reload
	lw x18 ,  1084 ( x2 )           //  4-byte Folded Reload
	lw x9 ,  1088 ( x2 )            //  4-byte Folded Reload
	lw x1 ,  1092 ( x2 )            //  4-byte Folded Reload
	addi x2 ,  x2 ,  1096
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fputws_r, .Lfunc_end0-_fputws_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputws                  //  -- Begin function fputws
	.type	fputws,@function
fputws:                                 //  @fputws
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	beq x0, x18, .LBB1_3
.LBB1_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB1_3
.LBB1_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
.LBB1_3:                                //  %if.end
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, _fputws_r
.Lfunc_end1:
	.size	fputws, .Lfunc_end1-fputws
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
