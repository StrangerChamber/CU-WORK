	.text
	.file	"cpow.c"
	.globl	cpow                    //  -- Begin function cpow
	.type	cpow,@function
cpow:                                   //  @cpow
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -192
	.cfi_adjust_cfa_offset 192
	sw x9 ,  184 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  180 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  172 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  168 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x9 ,  4 ( x12 )
	sw x8 ,  140 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  60
	addi x15 ,  x2 ,  124
	sw x19 ,  176 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x1 ,  188 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x22 ,  164 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  160 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  156 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  152 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  148 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  144 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 27, -48
	add x19 ,  x0 ,  x11
	lw x18 ,  8 ( x12 )
	lw x20 ,  12 ( x12 )
	lw x21 ,  0 ( x12 )
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x9 ,  4 ( x10 )
	sw x20 ,  136 ( x2 )
	sw x21 ,  124 ( x2 )
	sw x20 ,  72 ( x2 )
	sw x21 ,  60 ( x2 )
	call creal
	addi x15 ,  x2 ,  108
	add x23 ,  x0 ,  x10
	addi x10 ,  x2 ,  44
	add x24 ,  x0 ,  x11
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x9 ,  4 ( x10 )
	sw x18 ,  8 ( x10 )
	sw x21 ,  108 ( x2 )
	sw x21 ,  44 ( x2 )
	sw x20 ,  120 ( x2 )
	sw x20 ,  56 ( x2 )
	call cimag
	lw x18 ,  8 ( x19 )
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	addi x10 ,  x2 ,  28
	addi x15 ,  x2 ,  92
	sw x11 ,  4 ( x2 )              //  4-byte Folded Spill
	lw x9 ,  4 ( x19 )
	lw x27 ,  0 ( x19 )
	lw x26 ,  12 ( x19 )
	sw x18 ,  8 ( x15 )
	sw x9 ,  4 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x9 ,  4 ( x10 )
	sw x27 ,  92 ( x2 )
	sw x26 ,  104 ( x2 )
	sw x27 ,  28 ( x2 )
	sw x26 ,  40 ( x2 )
	call cabs
	add x25 ,  x0 ,  x0
	add x21 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x25
	call __eqdf2
	add x11 ,  x0 ,  x25
	add x19 ,  x0 ,  x25
	add x20 ,  x0 ,  x25
	beq x0, x10, .LBB0_4
.LBB0_1:                                //  %if.end
	addi x15 ,  x2 ,  76
	addi x10 ,  x2 ,  12
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x9 ,  4 ( x15 )
	sw x9 ,  4 ( x10 )
	sw x27 ,  76 ( x2 )
	sw x27 ,  12 ( x2 )
	sw x26 ,  88 ( x2 )
	sw x26 ,  24 ( x2 )
	call carg
	add x25 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x24
	call pow
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	add x12 ,  x0 ,  x0
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
	lw x18 ,  4 ( x2 )              //  4-byte Folded Reload
	add x13 ,  x0 ,  x12
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __eqdf2
	beq x0, x10, .LBB0_3
.LBB0_2:                                //  %if.then17
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x25
	add x13 ,  x0 ,  x26
	call __muldf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	xor x11 ,  x15 ,  x11
	call exp
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x22
	call log
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call __adddf3
	add x23 ,  x0 ,  x10
	add x24 ,  x0 ,  x11
.LBB0_3:                                //  %if.end23
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call cos
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x24
	call sin
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x0
	add x19 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x13 ,  x0 ,  x12
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	add x25 ,  x0 ,  x10
.LBB0_4:                                //  %cleanup
	sw x19 ,  8 ( x8 )
	sw x25 ,  0 ( x8 )
	sw x20 ,  12 ( x8 )
	sw x11 ,  4 ( x8 )
	lw x8 ,  140 ( x2 )             //  4-byte Folded Reload
	lw x27 ,  144 ( x2 )            //  4-byte Folded Reload
	lw x26 ,  148 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  152 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  156 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  160 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  164 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  168 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  172 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  176 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  180 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  184 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  188 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  192
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	cpow, .Lfunc_end0-cpow
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
