	.text
	.file	"ctan.c"
	.globl	ctan                    //  -- Begin function ctan
	.type	ctan,@function
ctan:                                   //  @ctan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -200
	.cfi_adjust_cfa_offset 200
	sw x20 ,  180 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  176 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  172 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  168 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	lw x20 ,  4 ( x11 )
	sw x8 ,  164 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  68
	addi x15 ,  x2 ,  148
	sw x1 ,  196 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  192 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  188 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  184 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x22 ,  8 ( x11 )
	lw x21 ,  12 ( x11 )
	lw x23 ,  0 ( x11 )
	sw x20 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x22 ,  8 ( x10 )
	sw x20 ,  4 ( x10 )
	sw x21 ,  160 ( x2 )
	sw x23 ,  148 ( x2 )
	sw x21 ,  80 ( x2 )
	sw x23 ,  68 ( x2 )
	call creal
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call cos
	addi x15 ,  x2 ,  132
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  52
	add x18 ,  x0 ,  x11
	sw x20 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x20 ,  4 ( x10 )
	sw x22 ,  8 ( x10 )
	sw x23 ,  132 ( x2 )
	sw x21 ,  144 ( x2 )
	sw x23 ,  52 ( x2 )
	sw x21 ,  64 ( x2 )
	call cimag
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call cosh
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	call fabs
	add x19 ,  x0 ,  x0
	lui x13 ,  (1070596096>>12)&1048575
	add x12 ,  x0 ,  x19
	call __ltdf2
	bge x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	addi x15 ,  x2 ,  116
	addi x10 ,  x2 ,  36
	sw x22 ,  8 ( x15 )
	sw x22 ,  8 ( x10 )
	sw x20 ,  4 ( x15 )
	sw x20 ,  4 ( x10 )
	sw x23 ,  116 ( x2 )
	sw x23 ,  36 ( x2 )
	sw x21 ,  128 ( x2 )
	sw x21 ,  48 ( x2 )
	call _ctans
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
.LBB0_2:                                //  %if.end
	add x10 ,  x0 ,  x9
	add x13 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x19
	call __eqdf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x9 ,  (2146435072>>12)&1048575
	lui x11 ,  (2146959360>>12)&1048575
	add x18 ,  x0 ,  x19
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.end21
	addi x15 ,  x2 ,  100
	addi x10 ,  x2 ,  20
	sw x22 ,  8 ( x15 )
	sw x20 ,  4 ( x15 )
	sw x22 ,  8 ( x10 )
	sw x20 ,  4 ( x10 )
	sw x23 ,  100 ( x2 )
	sw x23 ,  20 ( x2 )
	sw x21 ,  112 ( x2 )
	sw x21 ,  32 ( x2 )
	call creal
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call sin
	addi x15 ,  x2 ,  84
	addi x19 ,  x2 ,  4
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	sw x20 ,  4 ( x15 )
	sw x22 ,  8 ( x15 )
	sw x20 ,  4 ( x19 )
	sw x22 ,  8 ( x19 )
	sw x23 ,  84 ( x2 )
	sw x23 ,  4 ( x2 )
	sw x21 ,  96 ( x2 )
	sw x21 ,  16 ( x2 )
	call __divdf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	add x21 ,  x0 ,  x11
	call cimag
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call sinh
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x18
	call __divdf3
	add x12 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x13 ,  x0 ,  x12
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __adddf3
	add x19 ,  x0 ,  x10
.LBB0_5:                                //  %cleanup
	sw x18 ,  8 ( x8 )
	sw x19 ,  0 ( x8 )
	sw x9 ,  12 ( x8 )
	sw x11 ,  4 ( x8 )
	lw x8 ,  164 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  168 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  172 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  176 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  180 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  184 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  188 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  192 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  196 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  200
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ctan, .Lfunc_end0-ctan
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
