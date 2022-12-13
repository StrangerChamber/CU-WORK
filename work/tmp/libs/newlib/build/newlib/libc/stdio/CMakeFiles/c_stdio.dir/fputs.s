	.text
	.file	"fputs.c"
	.globl	_fputs_r                //  -- Begin function _fputs_r
	.type	_fputs_r,@function
_fputs_r:                               //  @_fputs_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x11
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x12
	sw x11 ,  8 ( x2 )
	call strlen
	addi x15 ,  x2 ,  16
	sw x10 ,  12 ( x2 )
	sw x10 ,  8 ( x15 )
	slti x15 ,  x0 ,  1
	sw x15 ,  20 ( x2 )
	addi x15 ,  x2 ,  8
	sw x15 ,  16 ( x2 )
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_5
.LBB0_4:                                //  %if.then12
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x8 )
	lw x15 ,  100 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x8 )
.LBB0_5:                                //  %do.end20
	addi x12 ,  x2 ,  16
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __sfvwrite_r
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_fputs_r, .Lfunc_end0-_fputs_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputs                   //  -- Begin function fputs
	.type	fputs,@function
fputs:                                  //  @fputs
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -12
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x8 ,  x0 ,  x11
	sw x10 ,  8 ( x2 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	call strlen
	addi x15 ,  x2 ,  16
	sw x10 ,  12 ( x2 )
	sw x10 ,  8 ( x15 )
	slti x15 ,  x0 ,  1
	sw x15 ,  20 ( x2 )
	addi x15 ,  x2 ,  8
	sw x15 ,  16 ( x2 )
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_5
.LBB1_4:                                //  %if.then12.i
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x8 )
	lw x15 ,  100 ( x8 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x8 )
.LBB1_5:                                //  %_fputs_r.exit
	addi x12 ,  x2 ,  16
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __sfvwrite_r
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x15 ,  12 ( x8 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	fputs, .Lfunc_end1-fputs
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
