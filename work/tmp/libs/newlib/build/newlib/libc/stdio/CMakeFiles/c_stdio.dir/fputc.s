	.text
	.file	"fputc.c"
	.globl	_fputc_r                //  -- Begin function _fputc_r
	.type	_fputc_r,@function
_fputc_r:                               //  @_fputc_r
	.cfi_sections .debug_frame
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
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x18, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x18 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	add x10 ,  x0 ,  x18
	call __sinit
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x8
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	jal x0, _putc_r
.Lfunc_end0:
	.size	_fputc_r, .Lfunc_end0-_fputc_r
	.cfi_endproc
                                        //  -- End function
	.globl	fputc                   //  -- Begin function fputc
	.type	fputc,@function
fputc:                                  //  @fputc
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
	jal x0, _putc_r
.Lfunc_end1:
	.size	fputc, .Lfunc_end1-fputc
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
