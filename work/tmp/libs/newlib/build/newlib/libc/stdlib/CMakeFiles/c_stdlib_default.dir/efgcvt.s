	.text
	.file	"efgcvt.c"
	.globl	fcvt                    //  -- Begin function fcvt
	.type	fcvt,@function
fcvt:                                   //  @fcvt
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
	jal x0, fcvtbuf
.Lfunc_end0:
	.size	fcvt, .Lfunc_end0-fcvt
	.cfi_endproc
                                        //  -- End function
	.globl	fcvtf                   //  -- Begin function fcvtf
	.type	fcvtf,@function
fcvtf:                                  //  @fcvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	call __extendsfdf2
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x14 ,  x0 ,  x8
	add x15 ,  x0 ,  x0
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, fcvtbuf
.Lfunc_end1:
	.size	fcvtf, .Lfunc_end1-fcvtf
	.cfi_endproc
                                        //  -- End function
	.globl	gcvt                    //  -- Begin function gcvt
	.type	gcvt,@function
gcvt:                                   //  @gcvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x13
	add x18 ,  x0 ,  x12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x19 ,  x0 ,  x11
	add x20 ,  x0 ,  x10
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x9
	call __ltdf2
	bge x10, x0, .LBB2_1
.LBB2_2:                                //  %if.then
	addi x15 ,  x0 ,  45
	addi x18 ,  x18 ,  -1
	addi x14 ,  x8 ,  1
	sb x15 ,  0 ( x8 )
	jal x0, .LBB2_3
.LBB2_1:
	add x14 ,  x0 ,  x8
.LBB2_3:                                //  %if.end
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x18
	add x16 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	addi x15 ,  x0 ,  103
	call _gcvt
	beq x10, x9, .LBB2_5
.LBB2_4:                                //  %if.end
	add x9 ,  x0 ,  x8
.LBB2_5:                                //  %if.end
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	gcvt, .Lfunc_end2-gcvt
	.cfi_endproc
                                        //  -- End function
	.globl	gcvtf                   //  -- Begin function gcvtf
	.type	gcvtf,@function
gcvtf:                                  //  @gcvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x0
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x8 ,  x0 ,  x12
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __ltsf2
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __extendsfdf2
	add x13 ,  x0 ,  x10
	add x12 ,  x0 ,  x11
	bge x20, x0, .LBB3_1
.LBB3_2:                                //  %if.then.i
	addi x15 ,  x0 ,  45
	addi x18 ,  x18 ,  -1
	addi x14 ,  x8 ,  1
	sb x15 ,  0 ( x8 )
	jal x0, .LBB3_3
.LBB3_1:
	add x14 ,  x0 ,  x8
.LBB3_3:                                //  %gcvt.exit
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	add x11 ,  x0 ,  x13
	add x13 ,  x0 ,  x18
	add x16 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	addi x15 ,  x0 ,  103
	call _gcvt
	beq x10, x9, .LBB3_5
.LBB3_4:                                //  %gcvt.exit
	add x9 ,  x0 ,  x8
.LBB3_5:                                //  %gcvt.exit
	add x10 ,  x0 ,  x9
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	gcvtf, .Lfunc_end3-gcvtf
	.cfi_endproc
                                        //  -- End function
	.globl	ecvt                    //  -- Begin function ecvt
	.type	ecvt,@function
ecvt:                                   //  @ecvt
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x15 ,  x0 ,  x0
	jal x0, ecvtbuf
.Lfunc_end4:
	.size	ecvt, .Lfunc_end4-ecvt
	.cfi_endproc
                                        //  -- End function
	.globl	ecvtf                   //  -- Begin function ecvtf
	.type	ecvtf,@function
ecvtf:                                  //  @ecvtf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -16
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	call __extendsfdf2
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x9
	add x14 ,  x0 ,  x8
	add x15 ,  x0 ,  x0
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, ecvtbuf
.Lfunc_end5:
	.size	ecvtf, .Lfunc_end5-ecvtf
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
