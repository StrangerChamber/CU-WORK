	.text
	.file	"cprojf.c"
	.globl	cprojf                  //  -- Begin function cprojf
	.type	cprojf,@function
cprojf:                                 //  @cprojf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -80
	.cfi_adjust_cfa_offset 80
	sw x9 ,  72 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	lw x19 ,  0 ( x11 )
	sw x8 ,  56 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	addi x10 ,  x2 ,  24
	sw x1 ,  76 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x20 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x9 ,  4 ( x11 )
	sw x19 ,  48 ( x2 )
	sw x9 ,  52 ( x2 )
	sw x19 ,  24 ( x2 )
	sw x9 ,  28 ( x2 )
	call crealf
	lui x30 ,  2147483647&4095
	lui x20 ,  (2147483647>>12)&1048575
	lui x18 ,  (2139095040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	add x11 ,  x0 ,  x18
	or x15 ,  x20 ,  x30
	and x10 ,  x15 ,  x10
	call __eqsf2
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %lor.lhs.false
	addi x10 ,  x2 ,  16
	sw x19 ,  40 ( x2 )
	sw x19 ,  16 ( x2 )
	sw x9 ,  44 ( x2 )
	sw x9 ,  20 ( x2 )
	call cimagf
	lui x30 ,  2147483647&4095
	lui x11 ,  (2139095040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x20 ,  x30
	and x10 ,  x15 ,  x10
	call __nesf2
	bltu x0, x10, .LBB0_2
.LBB0_3:                                //  %if.then
	addi x10 ,  x2 ,  8
	sw x19 ,  32 ( x2 )
	sw x19 ,  8 ( x2 )
	sw x9 ,  36 ( x2 )
	sw x9 ,  12 ( x2 )
	call cimagf
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x0
	call copysignf
	add x9 ,  x0 ,  x10
.LBB0_4:                                //  %if.end
	sw x9 ,  4 ( x8 )
	sw x18 ,  0 ( x8 )
	lw x8 ,  56 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  72 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  76 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  80
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:
	add x18 ,  x0 ,  x19
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	cprojf, .Lfunc_end0-cprojf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
