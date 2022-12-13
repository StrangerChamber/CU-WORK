	.text
	.file	"fwrite.c"
	.globl	_fwrite_r               //  -- Begin function _fwrite_r
	.type	_fwrite_r,@function
_fwrite_r:                              //  @_fwrite_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x14
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __mulsi3
	add x19 ,  x0 ,  x10
	addi x15 ,  x2 ,  16
	sw x21 ,  8 ( x2 )
	sw x19 ,  8 ( x15 )
	slti x15 ,  x0 ,  1
	sw x19 ,  12 ( x2 )
	sw x15 ,  20 ( x2 )
	addi x15 ,  x2 ,  8
	sw x15 ,  16 ( x2 )
	beq x0, x20, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x20 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x18 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB0_5
.LBB0_4:                                //  %if.then12
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x18 )
	lw x15 ,  100 ( x18 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x18 )
.LBB0_5:                                //  %do.end20
	addi x12 ,  x2 ,  16
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x18
	call __sfvwrite_r
	beq x0, x10, .LBB0_7
.LBB0_6:                                //  %if.end35
	lw x15 ,  24 ( x2 )
	add x11 ,  x0 ,  x9
	sub x10 ,  x19 ,  x15
	call __udivsi3
	add x8 ,  x0 ,  x10
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x20
	call __sinit
	lhu x15 ,  12 ( x18 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB0_4
	jal x0, .LBB0_5
.Lfunc_end0:
	.size	_fwrite_r, .Lfunc_end0-_fwrite_r
	.cfi_endproc
                                        //  -- End function
	.globl	fwrite                  //  -- Begin function fwrite
	.type	fwrite,@function
fwrite:                                 //  @fwrite
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -56
	.cfi_adjust_cfa_offset 56
	sw x8 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x12
	sw x21 ,  32 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	add x21 ,  x0 ,  x10
	sw x9 ,  48 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  40 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  52 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  36 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x19 ,  x0 ,  x13
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	call __mulsi3
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x18 ,  x0 ,  x10
	sw x21 ,  8 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x18 ,  12 ( x2 )
	or x15 ,  x15 ,  x30
	lw x20 ,  0 ( x15 )
	addi x15 ,  x2 ,  16
	sw x18 ,  8 ( x15 )
	slti x15 ,  x0 ,  1
	sw x15 ,  20 ( x2 )
	addi x15 ,  x2 ,  8
	sw x15 ,  16 ( x2 )
	beq x0, x20, .LBB1_3
.LBB1_1:                                //  %land.lhs.true.i
	lw x15 ,  56 ( x20 )
	beq x0, x15, .LBB1_2
.LBB1_3:                                //  %if.end.i
	lhu x15 ,  12 ( x19 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	bltu x0, x13, .LBB1_5
.LBB1_4:                                //  %if.then12.i
	or x15 ,  x14 ,  x15
	lui x30 ,  -8193&4095
	lui x14 ,  (-8193>>12)&1048575
	sh x15 ,  12 ( x19 )
	lw x15 ,  100 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sw x15 ,  100 ( x19 )
.LBB1_5:                                //  %do.end20.i
	addi x12 ,  x2 ,  16
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x19
	call __sfvwrite_r
	beq x0, x10, .LBB1_7
.LBB1_6:                                //  %if.end35.i
	lw x15 ,  24 ( x2 )
	add x11 ,  x0 ,  x9
	sub x10 ,  x18 ,  x15
	call __udivsi3
	add x8 ,  x0 ,  x10
.LBB1_7:                                //  %_fwrite_r.exit
	add x10 ,  x0 ,  x8
	lw x8 ,  28 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  32 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  36 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  40 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  48 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  52 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  56
	.cfi_def_cfa 2, 0
	ret
.LBB1_2:                                //  %if.then.i
	add x10 ,  x0 ,  x20
	call __sinit
	lhu x15 ,  12 ( x19 )
	lui x14 ,  (8192>>12)&1048575
	and x13 ,  x14 ,  x15
	beq x0, x13, .LBB1_4
	jal x0, .LBB1_5
.Lfunc_end1:
	.size	fwrite, .Lfunc_end1-fwrite
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
