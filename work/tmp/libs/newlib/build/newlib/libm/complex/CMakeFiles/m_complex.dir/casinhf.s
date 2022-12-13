	.text
	.file	"casinhf.c"
	.globl	casinhf                 //  -- Begin function casinhf
	.type	casinhf,@function
casinhf:                                //  @casinhf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -72
	.cfi_adjust_cfa_offset 72
	sw x18 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	add x18 ,  x0 ,  x11
	sw x9 ,  64 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x20 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x20 ,  x0 ,  x0
	sw x8 ,  44 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x1 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x9 ,  4 ( x18 )
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x9
	call __mulsf3
	lw x19 ,  0 ( x18 )
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __addsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x9
	call __subsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __unordsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	addi x10 ,  x2 ,  28
	addi x11 ,  x2 ,  4
	sw x20 ,  20 ( x2 )
	sw x20 ,  4 ( x2 )
	sw x18 ,  24 ( x2 )
	sw x18 ,  8 ( x2 )
	call casinf
	lw x9 ,  32 ( x2 )
	lui x30 ,  -2147483648&4095
	lui x21 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x20 ,  x21 ,  x30
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x9
	call __mulsf3
	lw x18 ,  28 ( x2 )
	add x11 ,  x0 ,  x18
	call __subsf3
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x20
	call __unordsf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont14
	sw x19 ,  4 ( x8 )
	sw x20 ,  0 ( x8 )
	lw x8 ,  44 ( x2 )              //  4-byte Folded Reload
	lw x21 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  64 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  68 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  72
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	addi x10 ,  x2 ,  36
	add x13 ,  x0 ,  x0
	lui x14 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	call __mulsc3
	lw x18 ,  40 ( x2 )
	lw x20 ,  36 ( x2 )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall12
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-1082130432>>12)&1048575
	addi x10 ,  x2 ,  12
	add x13 ,  x0 ,  x18
	add x14 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x21 ,  x30
	lui x30 ,  -1082130432&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	call __mulsc3
	lw x19 ,  16 ( x2 )
	lw x20 ,  12 ( x2 )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinhf, .Lfunc_end0-casinhf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
