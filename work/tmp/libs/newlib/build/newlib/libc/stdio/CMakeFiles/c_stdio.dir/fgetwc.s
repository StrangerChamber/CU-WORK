	.text
	.file	"fgetwc.c"
	.globl	__fgetwc                //  -- Begin function __fgetwc
	.type	__fgetwc,@function
__fgetwc:                               //  @__fgetwc
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x15 ,  4 ( x8 )
	bge x0, x15, .LBB0_1
.LBB0_2:                                //  %if.end
	call __locale_mb_cur_max
	xori x15 ,  x10 ,  1
	bltu x0, x15, .LBB0_3
.LBB0_13:                               //  %if.then3
	lw x15 ,  0 ( x8 )
	addi x14 ,  x15 ,  1
	sw x14 ,  0 ( x8 )
	lbu x10 ,  0 ( x15 )
	lw x15 ,  4 ( x8 )
	sw x10 ,  8 ( x2 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x8 )
	jal x0, .LBB0_12
.LBB0_3:                                //  %do.body.preheader
	addi x18 ,  x8 ,  92
	addi x19 ,  x2 ,  8
.LBB0_4:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13 ,  4 ( x8 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x14 ,  x0 ,  x18
	lw x12 ,  0 ( x8 )
	call _mbrtowc_r
	xori x15 ,  x10 ,  -2
	bltu x0, x15, .LBB0_5
.LBB0_9:                                //  %do.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	beq x0, x10, .LBB0_4
	jal x0, .LBB0_10
.LBB0_1:                                //  %land.lhs.true
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __srefill_r
	bltu x0, x10, .LBB0_11
	jal x0, .LBB0_2
.LBB0_5:                                //  %do.body
	xori x15 ,  x10 ,  -1
	beq x0, x15, .LBB0_10
.LBB0_6:                                //  %do.body
	bltu x0, x10, .LBB0_8
.LBB0_7:                                //  %if.then18
	lw x15 ,  0 ( x8 )
	add x10 ,  x0 ,  x0
	addi x15 ,  x15 ,  1
	sw x15 ,  0 ( x8 )
	lw x15 ,  4 ( x8 )
	addi x15 ,  x15 ,  -1
	sw x15 ,  4 ( x8 )
	jal x0, .LBB0_12
.LBB0_10:                               //  %do.end
	lh x15 ,  12 ( x8 )
	ori x15 ,  x15 ,  64
	sh x15 ,  12 ( x8 )
	call __errno
	addi x15 ,  x0 ,  138
	sw x15 ,  0 ( x10 )
.LBB0_11:                               //  %cleanup
	addi x10 ,  x0 ,  -1
.LBB0_12:                               //  %cleanup
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_8:                                //  %if.else23
	lw x15 ,  0 ( x8 )
	add x15 ,  x10 ,  x15
	sw x15 ,  0 ( x8 )
	lw x15 ,  4 ( x8 )
	sub x15 ,  x15 ,  x10
	lw x10 ,  8 ( x2 )
	sw x15 ,  4 ( x8 )
	jal x0, .LBB0_12
.Lfunc_end0:
	.size	__fgetwc, .Lfunc_end0-__fgetwc
	.cfi_endproc
                                        //  -- End function
	.globl	_fgetwc_r               //  -- Begin function _fgetwc_r
	.type	_fgetwc_r,@function
_fgetwc_r:                              //  @_fgetwc_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lhu x14 ,  12 ( x11 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB1_2
.LBB1_1:                                //  %if.then7
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x11 )
	lw x14 ,  100 ( x11 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x11 )
.LBB1_2:                                //  %do.end
	jal x0, __fgetwc
.Lfunc_end1:
	.size	_fgetwc_r, .Lfunc_end1-_fgetwc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fgetwc                  //  -- Begin function fgetwc
	.type	fgetwc,@function
fgetwc:                                 //  @fgetwc
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x9 ,  0 ( x15 )
	beq x0, x9, .LBB2_3
.LBB2_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x9 )
	beq x0, x15, .LBB2_2
.LBB2_3:                                //  %if.end
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	bltu x0, x13, .LBB2_5
.LBB2_4:                                //  %if.then7.i
	or x14 ,  x15 ,  x14
	sh x14 ,  12 ( x8 )
	lw x14 ,  100 ( x8 )
	or x15 ,  x15 ,  x14
	sw x15 ,  100 ( x8 )
.LBB2_5:                                //  %_fgetwc_r.exit
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, __fgetwc
.LBB2_2:                                //  %if.then
	add x10 ,  x0 ,  x9
	call __sinit
	lhu x14 ,  12 ( x8 )
	lui x15 ,  (8192>>12)&1048575
	and x13 ,  x15 ,  x14
	beq x0, x13, .LBB2_4
	jal x0, .LBB2_5
.Lfunc_end2:
	.size	fgetwc, .Lfunc_end2-fgetwc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
