	.text
	.file	"fileno.c"
	.globl	fileno                  //  -- Begin function fileno
	.type	fileno,@function
fileno:                                 //  @fileno
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -16
	.cfi_adjust_cfa_offset 16
	lui x30 ,  _impure_ptr&4095
	sw x9 ,  8 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 9, -8
	lui x9 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -12
	add x8 ,  x0 ,  x10
	sw x1 ,  12 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x10 )
	beq x0, x15, .LBB0_2
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	beq x0, x15, .LBB0_5
.LBB0_4:                                //  %if.then9
	lh x10 ,  14 ( x8 )
	jal x0, .LBB0_6
.LBB0_2:                                //  %if.then
	call __sinit
	lhu x15 ,  12 ( x8 )
	bltu x0, x15, .LBB0_4
.LBB0_5:                                //  %if.else
	lui x30 ,  _impure_ptr&4095
	addi x10 ,  x0 ,  -1
	addi x14 ,  x0 ,  9
	srli x30 ,  x30 ,  12&31
	or x15 ,  x9 ,  x30
	lw x15 ,  0 ( x15 )
	sw x14 ,  0 ( x15 )
.LBB0_6:                                //  %if.end11
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x9 ,  8 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  12 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  16
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	fileno, .Lfunc_end0-fileno
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
