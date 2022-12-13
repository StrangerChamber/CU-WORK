	.text
	.file	"cpowf.c"
	.globl	cpowf                   //  -- Begin function cpowf
	.type	cpowf,@function
cpowf:                                  //  @cpowf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x9 ,  4 ( x12 )
	sw x8 ,  68 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  28
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  84 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  80 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x18 ,  x0 ,  x11
	lw x19 ,  0 ( x12 )
	sw x9 ,  64 ( x2 )
	sw x19 ,  60 ( x2 )
	sw x19 ,  28 ( x2 )
	sw x9 ,  32 ( x2 )
	call crealf
	add x20 ,  x0 ,  x10
	addi x10 ,  x2 ,  20
	sw x19 ,  52 ( x2 )
	sw x19 ,  20 ( x2 )
	sw x9 ,  56 ( x2 )
	sw x9 ,  24 ( x2 )
	call cimagf
	lw x22 ,  4 ( x18 )
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  12
	lw x23 ,  0 ( x18 )
	sw x22 ,  16 ( x2 )
	sw x23 ,  12 ( x2 )
	sw x22 ,  48 ( x2 )
	sw x23 ,  44 ( x2 )
	call cabsf
	add x21 ,  x0 ,  x0
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x21
	call __eqsf2
	add x18 ,  x0 ,  x21
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %if.end
	addi x10 ,  x2 ,  4
	sw x23 ,  36 ( x2 )
	sw x23 ,  4 ( x2 )
	sw x22 ,  40 ( x2 )
	sw x22 ,  8 ( x2 )
	call cargf
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call powf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __eqsf2
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then17
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __mulsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x10 ,  x15 ,  x10
	call expf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call logf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __addsf3
	add x20 ,  x0 ,  x10
.LBB0_3:                                //  %if.end23
	add x10 ,  x0 ,  x20
	call cosf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call sinf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x21 ,  x0 ,  x10
.LBB0_4:                                //  %cleanup
	sw x18 ,  4 ( x8 )
	sw x21 ,  0 ( x8 )
	lw x8 ,  68 ( x2 )              //  4-byte Folded Reload
	lw x23 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  80 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  84 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	cpowf, .Lfunc_end0-cpowf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
