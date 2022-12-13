	.text
	.file	"fdopen.c"
	.globl	_fdopen_r               //  -- Begin function _fdopen_r
	.type	_fdopen_r,@function
_fdopen_r:                              //  @_fdopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	add x15 ,  x0 ,  x12
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x11
	addi x12 ,  x2 ,  8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x15
	call __sflags
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	beq x0, x9, .LBB0_3
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x19
	call __sfp
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.end4
	lui x30 ,  __sclose&4095
	lui x15 ,  (__sclose>>12)&1048575
	add x18 ,  x0 ,  x10
	sh x8 ,  14 ( x10 )
	sh x9 ,  12 ( x10 )
	sw x10 ,  28 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sseek&4095
	sw x15 ,  44 ( x10 )
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __swrite&4095
	sw x15 ,  40 ( x10 )
	lui x15 ,  (__swrite>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sread&4095
	sw x15 ,  36 ( x10 )
	lui x15 ,  (__sread>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x10 )
.LBB0_3:                                //  %cleanup
	add x10 ,  x0 ,  x18
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fdopen_r, .Lfunc_end0-_fdopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	fdopen                  //  -- Begin function fdopen
	.type	fdopen,@function
fdopen:                                 //  @fdopen
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	addi x12 ,  x2 ,  8
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x19 ,  0 ( x15 )
	add x10 ,  x0 ,  x19
	call __sflags
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	beq x0, x9, .LBB1_3
.LBB1_1:                                //  %if.end.i
	add x10 ,  x0 ,  x19
	call __sfp
	beq x0, x10, .LBB1_3
.LBB1_2:                                //  %if.end4.i
	lui x30 ,  __sclose&4095
	lui x15 ,  (__sclose>>12)&1048575
	add x18 ,  x0 ,  x10
	sh x8 ,  14 ( x10 )
	sh x9 ,  12 ( x10 )
	sw x10 ,  28 ( x10 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sseek&4095
	sw x15 ,  44 ( x10 )
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __swrite&4095
	sw x15 ,  40 ( x10 )
	lui x15 ,  (__swrite>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sread&4095
	sw x15 ,  36 ( x10 )
	lui x15 ,  (__sread>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x10 )
.LBB1_3:                                //  %_fdopen_r.exit
	add x10 ,  x0 ,  x18
	lw x8 ,  12 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	fdopen, .Lfunc_end1-fdopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
