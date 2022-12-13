	.text
	.file	"stdio.c"
	.globl	__sread                 //  -- Begin function __sread
	.type	__sread,@function
__sread:                                //  @__sread
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lh x11 ,  14 ( x8 )
	call _read_r
	blt x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x15 ,  80 ( x8 )
	add x15 ,  x10 ,  x15
	sw x15 ,  80 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.else
	lhu x15 ,  12 ( x8 )
	lui x30 ,  61439&4095
	lui x14 ,  (61439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
	sh x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	__sread, .Lfunc_end0-__sread
	.cfi_endproc
                                        //  -- End function
	.globl	__seofread              //  -- Begin function __seofread
	.type	__seofread,@function
__seofread:                             //  @__seofread
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	add x10 ,  x0 ,  x0
	ret
.Lfunc_end1:
	.size	__seofread, .Lfunc_end1-__seofread
	.cfi_endproc
                                        //  -- End function
	.globl	__swrite                //  -- Begin function __swrite
	.type	__swrite,@function
__swrite:                               //  @__swrite
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x19 ,  x0 ,  x11
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	add x18 ,  x0 ,  x10
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	lhu x15 ,  12 ( x19 )
	andi x14 ,  x15 ,  256
	beq x0, x14, .LBB2_2
.LBB2_1:                                //  %if.then
	lh x11 ,  14 ( x19 )
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	add x10 ,  x0 ,  x18
	call _lseek_r
	lhu x15 ,  12 ( x19 )
.LBB2_2:                                //  %if.end
	lui x30 ,  61439&4095
	lui x14 ,  (61439>>12)&1048575
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	lh x11 ,  14 ( x19 )
	srli x30 ,  x30 ,  12&31
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	or x14 ,  x14 ,  x30
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	and x15 ,  x14 ,  x15
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	sh x15 ,  12 ( x19 )
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	jal x0, _write_r
.Lfunc_end2:
	.size	__swrite, .Lfunc_end2-__swrite
	.cfi_endproc
                                        //  -- End function
	.globl	__sseek                 //  -- Begin function __sseek
	.type	__sseek,@function
__sseek:                                //  @__sseek
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x11
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	lh x11 ,  14 ( x8 )
	call _lseek_r
	lhu x15 ,  12 ( x8 )
	xori x14 ,  x10 ,  -1
	beq x0, x14, .LBB3_1
.LBB3_2:                                //  %if.else
	lui x14 ,  (4096>>12)&1048575
	sw x10 ,  80 ( x8 )
	or x15 ,  x14 ,  x15
	jal x0, .LBB3_3
.LBB3_1:                                //  %if.then
	lui x30 ,  61439&4095
	lui x14 ,  (61439>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	and x15 ,  x14 ,  x15
.LBB3_3:                                //  %if.end
	sh x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end3:
	.size	__sseek, .Lfunc_end3-__sseek
	.cfi_endproc
                                        //  -- End function
	.globl	__sclose                //  -- Begin function __sclose
	.type	__sclose,@function
__sclose:                               //  @__sclose
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lh x11 ,  14 ( x11 )
	jal x0, _close_r
.Lfunc_end4:
	.size	__sclose, .Lfunc_end4-__sclose
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
