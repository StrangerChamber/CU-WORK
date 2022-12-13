	.text
	.file	"fopen.c"
	.globl	_fopen_r                //  -- Begin function _fopen_r
	.type	_fopen_r,@function
_fopen_r:                               //  @_fopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	add x15 ,  x0 ,  x12
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x11
	addi x12 ,  x2 ,  4
	sw x8 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x8 ,  x0 ,  x10
	add x11 ,  x0 ,  x15
	call __sflags
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x0
	beq x0, x18, .LBB0_7
.LBB0_1:                                //  %if.end
	add x10 ,  x0 ,  x8
	call __sfp
	add x9 ,  x0 ,  x10
	beq x0, x9, .LBB0_7
.LBB0_2:                                //  %if.end4
	lw x12 ,  4 ( x2 )
	addi x13 ,  x0 ,  438
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x20
	call _open_r
	blt x10, x0, .LBB0_3
.LBB0_4:                                //  %if.end8
	lui x30 ,  __sclose&4095
	lui x15 ,  (__sclose>>12)&1048575
	sh x10 ,  14 ( x9 )
	sh x18 ,  12 ( x9 )
	sw x9 ,  28 ( x9 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sseek&4095
	sw x15 ,  44 ( x9 )
	lui x15 ,  (__sseek>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __swrite&4095
	sw x15 ,  40 ( x9 )
	lui x15 ,  (__swrite>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  __sread&4095
	sw x15 ,  36 ( x9 )
	lui x15 ,  (__sread>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x15 ,  32 ( x9 )
	andi x15 ,  x18 ,  256
	beq x0, x15, .LBB0_6
.LBB0_5:                                //  %if.then21
	add x12 ,  x0 ,  x0
	addi x13 ,  x0 ,  2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call _fseek_r
.LBB0_6:                                //  %cleanup
	add x19 ,  x0 ,  x9
	jal x0, .LBB0_7
.LBB0_3:                                //  %if.then7
	call __sfp_lock_acquire
	sh x0 ,  12 ( x9 )
	call __sfp_lock_release
.LBB0_7:                                //  %cleanup
	add x10 ,  x0 ,  x19
	lw x8 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_fopen_r, .Lfunc_end0-_fopen_r
	.cfi_endproc
                                        //  -- End function
	.globl	fopen                   //  -- Begin function fopen
	.type	fopen,@function
fopen:                                  //  @fopen
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
	jal x0, _fopen_r
.Lfunc_end1:
	.size	fopen, .Lfunc_end1-fopen
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
