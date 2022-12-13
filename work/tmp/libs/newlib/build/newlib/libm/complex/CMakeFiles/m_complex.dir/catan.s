	.text
	.file	"catan.c"
	.globl	catan                   //  -- Begin function catan
	.type	catan,@function
catan:                                  //  @catan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	lw x18 ,  4 ( x11 )
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  36
	addi x15 ,  x2 ,  68
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	lw x19 ,  8 ( x11 )
	lw x20 ,  12 ( x11 )
	lw x21 ,  0 ( x11 )
	sw x18 ,  4 ( x15 )
	sw x19 ,  8 ( x15 )
	sw x19 ,  8 ( x10 )
	sw x18 ,  4 ( x10 )
	sw x20 ,  80 ( x2 )
	sw x21 ,  68 ( x2 )
	sw x20 ,  48 ( x2 )
	sw x21 ,  36 ( x2 )
	call creal
	addi x15 ,  x2 ,  52
	addi x9 ,  x2 ,  20
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	sw x18 ,  4 ( x15 )
	sw x19 ,  8 ( x15 )
	sw x18 ,  4 ( x9 )
	add x18 ,  x0 ,  x0
	sw x19 ,  8 ( x9 )
	sw x21 ,  52 ( x2 )
	sw x21 ,  20 ( x2 )
	sw x20 ,  64 ( x2 )
	sw x20 ,  32 ( x2 )
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	call __nedf2
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call cimag
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	lui x19 ,  (2146435072>>12)&1048575
	lui x9 ,  (2146959360>>12)&1048575
	bltu x0, x22, .LBB0_3
.LBB0_1:                                //  %entry
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __gtdf2
	blt x0, x10, .LBB0_2
.LBB0_3:                                //  %if.end
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x23 ,  x0 ,  x11
	add x22 ,  x0 ,  x10
	add x18 ,  x0 ,  x0
	lui x11 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x18
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __subdf3
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x26
	add x11 ,  x0 ,  x27
	call __subdf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	add x26 ,  x0 ,  x10
	add x27 ,  x0 ,  x11
	call __eqdf2
	bltu x0, x10, .LBB0_5
.LBB0_2:
	add x10 ,  x0 ,  x18
.LBB0_7:                                //  %cleanup
	sw x18 ,  0 ( x8 )
	sw x19 ,  12 ( x8 )
	sw x9 ,  4 ( x8 )
	sw x10 ,  8 ( x8 )
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  128 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  132 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  136
	.cfi_def_cfa 2, 0
	ret
.LBB0_5:                                //  %if.end12
	lui x30 ,  -1074790400&4095
	add x18 ,  x0 ,  x0
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x18
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __adddf3
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x18
	sw x10 ,  12 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  8 ( x2 )              //  4-byte Folded Spill
	call __eqdf2
	sw x10 ,  16 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __adddf3
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x27
	call atan2
	lui x13 ,  (1071644672>>12)&1048575
	add x12 ,  x0 ,  x18
	call __muldf3
	call _redupi
	lw x15 ,  16 ( x2 )             //  4-byte Folded Reload
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	beq x0, x15, .LBB0_7
.LBB0_6:                                //  %if.end21
	add x19 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __adddf3
	lw x12 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x13 ,  8 ( x2 )              //  4-byte Folded Reload
	call __divdf3
	call log
	lui x13 ,  (1070596096>>12)&1048575
	add x12 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	call __adddf3
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x19
	call __adddf3
	add x19 ,  x0 ,  x11
	jal x0, .LBB0_7
.Lfunc_end0:
	.size	catan, .Lfunc_end0-catan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
