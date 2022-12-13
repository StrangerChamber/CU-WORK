	.text
	.file	"vswscanf.c"
	.globl	vswscanf                //  -- Begin function vswscanf
	.type	vswscanf,@function
vswscanf:                               //  @vswscanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x19 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	addi x19 ,  x2 ,  4
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x12
	add x9 ,  x0 ,  x11
	sw x10 ,  4 ( x2 )
	srli x30 ,  x30 ,  12&31
	sw x10 ,  16 ( x19 )
	or x15 ,  x15 ,  x30
	lw x18 ,  0 ( x15 )
	addi x15 ,  x0 ,  516
	sh x15 ,  12 ( x19 )
	call wcslen
	lui x30 ,  __seofread&4095
	lui x15 ,  (__seofread>>12)&1048575
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	sw x0 ,  68 ( x19 )
	sw x0 ,  48 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x15 ,  32 ( x19 )
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x19 )
	slli x15 ,  x10 ,  2&31
	add x10 ,  x0 ,  x18
	sw x15 ,  4 ( x19 )
	sw x15 ,  24 ( x2 )
	call __ssvfwscanf_r
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	vswscanf, .Lfunc_end0-vswscanf
	.cfi_endproc
                                        //  -- End function
	.globl	_vswscanf_r             //  -- Begin function _vswscanf_r
	.type	_vswscanf_r,@function
_vswscanf_r:                            //  @_vswscanf_r
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	add x18 ,  x0 ,  x10
	addi x19 ,  x2 ,  4
	add x10 ,  x0 ,  x11
	addi x15 ,  x0 ,  516
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  108 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -20
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	add x8 ,  x0 ,  x13
	add x9 ,  x0 ,  x12
	sw x11 ,  4 ( x2 )
	sh x15 ,  12 ( x19 )
	sw x11 ,  16 ( x19 )
	call wcslen
	lui x30 ,  __seofread&4095
	lui x15 ,  (__seofread>>12)&1048575
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	sw x0 ,  68 ( x19 )
	sw x0 ,  48 ( x19 )
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  65535&4095
	sw x15 ,  32 ( x19 )
	lui x15 ,  (65535>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sh x15 ,  14 ( x19 )
	slli x15 ,  x10 ,  2&31
	add x10 ,  x0 ,  x18
	sw x15 ,  4 ( x19 )
	sw x15 ,  24 ( x2 )
	call __ssvfwscanf_r
	lw x8 ,  108 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_vswscanf_r, .Lfunc_end1-_vswscanf_r
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
