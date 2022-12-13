	.text
	.file	"clog.c"
	.globl	clog                    //  -- Begin function clog
	.type	clog,@function
clog:                                   //  @clog
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -144
	.cfi_adjust_cfa_offset 144
	sw x21 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x21 ,  4 ( x11 )
	sw x8 ,  104 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  40
	addi x15 ,  x2 ,  88
	sw x1 ,  140 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  136 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x22 ,  8 ( x11 )
	lw x23 ,  12 ( x11 )
	lw x24 ,  0 ( x11 )
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x22 ,  8 ( x10 )
	sw x21 ,  4 ( x10 )
	sw x23 ,  100 ( x2 )
	sw x24 ,  88 ( x2 )
	sw x23 ,  52 ( x2 )
	sw x24 ,  40 ( x2 )
	call cabs
	call log
	addi x15 ,  x2 ,  72
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	add x18 ,  x0 ,  x11
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x24 ,  72 ( x2 )
	sw x23 ,  84 ( x2 )
	sw x24 ,  24 ( x2 )
	sw x23 ,  36 ( x2 )
	call cimag
	addi x15 ,  x2 ,  56
	add x19 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	add x20 ,  x0 ,  x11
	sw x21 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x24 ,  56 ( x2 )
	sw x24 ,  8 ( x2 )
	sw x23 ,  68 ( x2 )
	sw x23 ,  20 ( x2 )
	call creal
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call atan2
	add x12 ,  x0 ,  x0
	sw x11 ,  12 ( x8 )
	sw x10 ,  8 ( x8 )
	add x13 ,  x0 ,  x12
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  104 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  136 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  140 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  144
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	clog, .Lfunc_end0-clog
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
