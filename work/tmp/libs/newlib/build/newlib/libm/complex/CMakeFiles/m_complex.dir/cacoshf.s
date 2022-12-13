	.text
	.file	"cacoshf.c"
	.globl	cacoshf                 //  -- Begin function cacoshf
	.type	cacoshf,@function
cacoshf:                                //  @cacoshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -128
	.cfi_adjust_cfa_offset 128
	sw x9 ,  120 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x11
	sw x18 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  88 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -40
	add x8 ,  x0 ,  x10
	lui x11 ,  (1065353216>>12)&1048575
	sw x1 ,  124 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	lw x18 ,  0 ( x9 )
	add x10 ,  x0 ,  x18
	call __addsf3
	lw x9 ,  4 ( x9 )
	sw x10 ,  72 ( x2 )
	sw x10 ,  24 ( x2 )
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __addsf3
	sw x10 ,  76 ( x2 )
	sw x10 ,  28 ( x2 )
	addi x10 ,  x2 ,  80
	addi x11 ,  x2 ,  24
	call csqrtf
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	sw x10 ,  56 ( x2 )
	sw x10 ,  16 ( x2 )
	sw x9 ,  60 ( x2 )
	sw x9 ,  20 ( x2 )
	addi x10 ,  x2 ,  64
	addi x11 ,  x2 ,  16
	lw x19 ,  84 ( x2 )
	lw x20 ,  80 ( x2 )
	call csqrtf
	lw x21 ,  68 ( x2 )
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __mulsf3
	lw x23 ,  64 ( x2 )
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x11 ,  x0 ,  x22
	call __addsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x23
	call __mulsf3
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x24
	call __subsf3
	add x24 ,  x0 ,  x10
	add x11 ,  x0 ,  x24
	call __unordsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x22
	call __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x24
	call __addsf3
	sw x10 ,  32 ( x2 )
	sw x10 ,  8 ( x2 )
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x22
	call __addsf3
	sw x10 ,  36 ( x2 )
	sw x10 ,  12 ( x2 )
	addi x10 ,  x2 ,  40
	addi x11 ,  x2 ,  8
	call clogf
	lw x15 ,  44 ( x2 )
	lw x24 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  100 ( x2 )            //  4-byte Folded Reload
	sw x15 ,  4 ( x8 )
	lw x15 ,  40 ( x2 )
	lw x21 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  112 ( x2 )            //  4-byte Folded Reload
	sw x15 ,  0 ( x8 )
	lw x8 ,  88 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  120 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  124 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  128
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	addi x10 ,  x2 ,  48
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x23
	add x14 ,  x0 ,  x21
	call __mulsc3
	lw x22 ,  52 ( x2 )
	lw x24 ,  48 ( x2 )
	jal x0, .LBB0_3
.Lfunc_end0:
	.size	cacoshf, .Lfunc_end0-cacoshf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
