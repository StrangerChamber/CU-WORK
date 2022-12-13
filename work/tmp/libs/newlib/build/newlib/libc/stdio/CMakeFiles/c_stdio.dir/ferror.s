	.text
	.file	"ferror.c"
	.globl	ferror                  //  -- Begin function ferror
	.type	ferror,@function
ferror:                                 //  @ferror
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	beq x0, x10, .LBB0_3
.LBB0_1:                                //  %land.lhs.true
	lw x15 ,  56 ( x10 )
	bltu x0, x15, .LBB0_3
.LBB0_2:                                //  %if.then
	call __sinit
.LBB0_3:                                //  %if.end
	lhu x15 ,  12 ( x8 )
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	srli x15 ,  x15 ,  6&31
	andi x10 ,  x15 ,  1
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	ferror, .Lfunc_end0-ferror
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
