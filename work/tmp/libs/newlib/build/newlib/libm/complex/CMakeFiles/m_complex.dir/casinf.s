	.text
	.file	"casinf.c"
	.globl	casinf                  //  -- Begin function casinf
	.type	casinf,@function
casinf:                                 //  @casinf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -168
	.cfi_adjust_cfa_offset 168
	sw x9 ,  160 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  156 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	lw x9 ,  4 ( x11 )
	sw x8 ,  136 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -32
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  48
	sw x1 ,  164 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  152 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  148 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  144 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  140 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x18 ,  0 ( x11 )
	sw x9 ,  132 ( x2 )
	sw x18 ,  128 ( x2 )
	sw x18 ,  48 ( x2 )
	sw x9 ,  52 ( x2 )
	call crealf
	add x19 ,  x0 ,  x10
	addi x10 ,  x2 ,  40
	sw x18 ,  120 ( x2 )
	sw x18 ,  40 ( x2 )
	sw x9 ,  124 ( x2 )
	sw x9 ,  44 ( x2 )
	call cimagf
	add x18 ,  x0 ,  x0
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	call __addsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __addsf3
	add x9 ,  x0 ,  x10
	add x11 ,  x0 ,  x9
	call __unordsf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x20
	call __subsf3
	add x18 ,  x0 ,  x10
	beq x0, x22, .LBB0_3
.LBB0_1:                                //  %entry
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x18
	call __unordsf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call __addsf3
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x19 ,  x0 ,  x0
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	call __addsf3
	add x21 ,  x0 ,  x10
	addi x10 ,  x2 ,  32
	sw x20 ,  108 ( x2 )
	sw x21 ,  104 ( x2 )
	sw x21 ,  32 ( x2 )
	sw x20 ,  36 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	lui x10 ,  (1065353216>>12)&1048575
	sw x21 ,  96 ( x2 )
	sw x21 ,  24 ( x2 )
	sw x20 ,  100 ( x2 )
	sw x20 ,  28 ( x2 )
	call __subsf3
	add x20 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	call cimagf
	add x11 ,  x0 ,  x19
	add x21 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __subsf3
	lui x30 ,  -2147483648&4095
	lui x22 ,  (-2147483648>>12)&1048575
	sw x10 ,  80 ( x2 )
	sw x10 ,  16 ( x2 )
	addi x10 ,  x2 ,  88
	addi x11 ,  x2 ,  16
	srli x30 ,  x30 ,  12&31
	or x20 ,  x22 ,  x30
	xor x15 ,  x20 ,  x21
	sw x15 ,  84 ( x2 )
	sw x15 ,  20 ( x2 )
	call csqrtf
	lw x11 ,  88 ( x2 )
	add x10 ,  x0 ,  x18
	call __addsf3
	sw x10 ,  64 ( x2 )
	sw x10 ,  8 ( x2 )
	add x10 ,  x0 ,  x9
	lw x11 ,  92 ( x2 )
	call __addsf3
	sw x10 ,  68 ( x2 )
	sw x10 ,  12 ( x2 )
	addi x10 ,  x2 ,  72
	addi x11 ,  x2 ,  8
	call clogf
	lw x9 ,  76 ( x2 )
	add x11 ,  x0 ,  x20
	add x10 ,  x0 ,  x9
	call __mulsf3
	lw x18 ,  72 ( x2 )
	add x11 ,  x0 ,  x18
	call __subsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __unordsf2
	beq x0, x10, .LBB0_6
.LBB0_4:                                //  %complex_mul_cont
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x20
	call __unordsf2
	bltu x0, x10, .LBB0_5
.LBB0_6:                                //  %complex_mul_cont66
	sw x20 ,  4 ( x8 )
	sw x19 ,  0 ( x8 )
	lw x8 ,  136 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  140 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  144 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  148 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  152 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  156 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  160 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  164 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  168
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %complex_mul_libcall
	addi x10 ,  x2 ,  112
	add x13 ,  x0 ,  x0
	lui x14 ,  (1065353216>>12)&1048575
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	call __mulsc3
	lw x9 ,  116 ( x2 )
	lw x18 ,  112 ( x2 )
	jal x0, .LBB0_3
.LBB0_5:                                //  %complex_mul_libcall64
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-1082130432>>12)&1048575
	addi x10 ,  x2 ,  56
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x13 ,  x22 ,  x30
	lui x30 ,  -1082130432&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	call __mulsc3
	lw x20 ,  60 ( x2 )
	lw x19 ,  56 ( x2 )
	jal x0, .LBB0_6
.Lfunc_end0:
	.size	casinf, .Lfunc_end0-casinf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
