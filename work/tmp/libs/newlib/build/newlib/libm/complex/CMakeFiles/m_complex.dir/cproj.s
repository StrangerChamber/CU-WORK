	.text
	.file	"cproj.c"
	.globl	cproj                   //  -- Begin function cproj
	.type	cproj,@function
cproj:                                  //  @cproj
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -136
	.cfi_adjust_cfa_offset 136
	sw x9 ,  128 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	lw x21 ,  4 ( x11 )
	sw x8 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  36
	addi x15 ,  x2 ,  84
	sw x1 ,  132 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x23 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x18 ,  8 ( x11 )
	lw x9 ,  12 ( x11 )
	lw x22 ,  0 ( x11 )
	sw x21 ,  4 ( x15 )
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x21 ,  4 ( x10 )
	sw x9 ,  96 ( x2 )
	sw x22 ,  84 ( x2 )
	sw x9 ,  48 ( x2 )
	sw x22 ,  36 ( x2 )
	call creal
	lui x30 ,  2147483647&4095
	lui x23 ,  (2147483647>>12)&1048575
	add x19 ,  x0 ,  x0
	lui x20 ,  (2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x20
	or x15 ,  x23 ,  x30
	and x11 ,  x15 ,  x11
	call __eqdf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false
	addi x15 ,  x2 ,  68
	addi x10 ,  x2 ,  20
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x21 ,  4 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  68 ( x2 )
	sw x22 ,  20 ( x2 )
	sw x9 ,  80 ( x2 )
	sw x9 ,  32 ( x2 )
	call cimag
	lui x30 ,  2147483647&4095
	add x12 ,  x0 ,  x0
	lui x13 ,  (2146435072>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x23 ,  x30
	and x11 ,  x15 ,  x11
	call __nedf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %if.then
	addi x15 ,  x2 ,  52
	addi x10 ,  x2 ,  4
	sw x18 ,  8 ( x15 )
	sw x18 ,  8 ( x10 )
	sw x21 ,  4 ( x15 )
	sw x21 ,  4 ( x10 )
	sw x22 ,  52 ( x2 )
	sw x22 ,  4 ( x2 )
	sw x9 ,  64 ( x2 )
	sw x9 ,  16 ( x2 )
	call cimag
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x19
	call copysign
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
.LBB0_4:                                //  %if.end
	sw x18 ,  8 ( x8 )
	sw x19 ,  0 ( x8 )
	sw x9 ,  12 ( x8 )
	sw x20 ,  4 ( x8 )
	lw x8 ,  100 ( x2 )             //  4-byte Folded Reload
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
.LBB0_2:
	add x19 ,  x0 ,  x22
	add x20 ,  x0 ,  x21
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	cproj, .Lfunc_end0-cproj
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
