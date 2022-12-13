	.text
	.file	"sscanf.c"
	.globl	sscanf                  //  -- Begin function sscanf
	.type	sscanf,@function
sscanf:                                 //  @sscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lw x10 ,  120 ( x2 )
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  4
	addi x15 ,  x0 ,  516
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sh x15 ,  12 ( x8 )
	sw x10 ,  16 ( x8 )
	sw x10 ,  4 ( x2 )
	call strlen
	lui x30 ,  __seofread&4095
	lui x15 ,  (__seofread>>12)&1048575
	sw x10 ,  4 ( x8 )
	sw x10 ,  24 ( x2 )
	lw x12 ,  124 ( x2 )
	addi x13 ,  x2 ,  128
	add x11 ,  x0 ,  x8
	sw x0 ,  68 ( x8 )
	sw x0 ,  48 ( x8 )
	srli x30 ,  x30 ,  12&31
	sw x13 ,  108 ( x2 )
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x15 ,  32 ( x8 )
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  _impure_ptr&4095
	sh x15 ,  14 ( x8 )
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call __ssvfscanf_r
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	sscanf, .Lfunc_end0-sscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_sscanf_r               //  -- Begin function _sscanf_r
	.type	_sscanf_r,@function
_sscanf_r:                              //  @_sscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -120
	.cfi_adjust_cfa_offset 120
	lw x10 ,  124 ( x2 )
	sw x8 ,  112 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x8 ,  x2 ,  4
	addi x15 ,  x0 ,  516
	sw x1 ,  116 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sh x15 ,  12 ( x8 )
	sw x10 ,  16 ( x8 )
	sw x10 ,  4 ( x2 )
	call strlen
	lui x30 ,  __seofread&4095
	lui x15 ,  (__seofread>>12)&1048575
	sw x10 ,  4 ( x8 )
	sw x10 ,  24 ( x2 )
	lw x10 ,  120 ( x2 )
	addi x13 ,  x2 ,  132
	add x11 ,  x0 ,  x8
	sw x0 ,  68 ( x8 )
	sw x0 ,  48 ( x8 )
	srli x30 ,  x30 ,  12&31
	lw x12 ,  128 ( x2 )
	sw x13 ,  108 ( x2 )
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x15 ,  32 ( x8 )
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x8 )
	call __ssvfscanf_r
	lw x8 ,  112 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  116 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  120
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_sscanf_r, .Lfunc_end1-_sscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
