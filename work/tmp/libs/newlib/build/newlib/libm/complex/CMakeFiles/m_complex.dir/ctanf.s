	.text
	.file	"ctanf.c"
	.globl	ctanf                   //  -- Begin function ctanf
	.type	ctanf,@function
ctanf:                                  //  @ctanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -104
	.cfi_adjust_cfa_offset 104
	sw x18 ,  92 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  88 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x18 ,  4 ( x11 )
	sw x8 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -20
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  36
	sw x1 ,  100 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  96 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	lw x19 ,  0 ( x11 )
	sw x18 ,  80 ( x2 )
	sw x19 ,  76 ( x2 )
	sw x19 ,  36 ( x2 )
	sw x18 ,  40 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	call __addsf3
	call cosf
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  28
	sw x18 ,  72 ( x2 )
	sw x19 ,  68 ( x2 )
	sw x19 ,  28 ( x2 )
	sw x18 ,  32 ( x2 )
	call cimagf
	add x11 ,  x0 ,  x10
	call __addsf3
	call coshf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __addsf3
	add x9 ,  x0 ,  x10
	call fabsf
	lui x11 ,  (1048576000>>12)&1048575
	call __ltsf2
	bge x10, x0, .LBB0_2
.LBB0_1:                                //  %if.then
	addi x10 ,  x2 ,  20
	sw x19 ,  60 ( x2 )
	sw x19 ,  20 ( x2 )
	sw x18 ,  64 ( x2 )
	sw x18 ,  24 ( x2 )
	call _ctansf
	add x9 ,  x0 ,  x10
.LBB0_2:                                //  %if.end
	add x11 ,  x0 ,  x0
	add x10 ,  x0 ,  x9
	call __eqsf2
	bltu x0, x10, .LBB0_4
.LBB0_3:
	lui x9 ,  (2139095040>>12)&1048575
	lui x10 ,  (2143289344>>12)&1048575
	jal x0, .LBB0_5
.LBB0_4:                                //  %if.end21
	addi x10 ,  x2 ,  12
	sw x18 ,  56 ( x2 )
	sw x19 ,  52 ( x2 )
	sw x19 ,  12 ( x2 )
	sw x18 ,  16 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	call __addsf3
	call sinf
	add x11 ,  x0 ,  x9
	sw x19 ,  44 ( x2 )
	sw x19 ,  4 ( x2 )
	sw x18 ,  48 ( x2 )
	sw x18 ,  8 ( x2 )
	call __divsf3
	add x18 ,  x0 ,  x10
	addi x10 ,  x2 ,  4
	call cimagf
	add x11 ,  x0 ,  x10
	call __addsf3
	call sinhf
	add x11 ,  x0 ,  x9
	call __divsf3
	add x11 ,  x0 ,  x0
	add x9 ,  x0 ,  x10
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __addsf3
.LBB0_5:                                //  %cleanup
	sw x9 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	lw x8 ,  84 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  88 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  92 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  96 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  100 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  104
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ctanf, .Lfunc_end0-ctanf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
