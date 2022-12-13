	.text
	.file	"open.c"
	.globl	open                    //  -- Begin function open
	.type	open,@function
open:                                   //  @open
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lw x10 ,  40 ( x2 )
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	addi x15 ,  x0 ,  3
	addi x8 ,  x2 ,  4
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x15 ,  4 ( x2 )
	sw x10 ,  16 ( x8 )
	call strlen
	lw x15 ,  44 ( x2 )
	sw x10 ,  20 ( x8 )
	sw x15 ,  24 ( x8 )
	// APP
	nop
	// NO_APP
	lui x30 ,  4112&4095
	lui x15 ,  (4112>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x8 ,  0 ( x15 )
	// APP
	nop
	// NO_APP
	lw x15 ,  12 ( x2 )
	beq x0, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	lw x15 ,  16 ( x2 )
	lui x30 ,  errno&4095
	lui x14 ,  (errno>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
.LBB0_2:                                //  %do.end
	lw x10 ,  8 ( x2 )
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	open, .Lfunc_end0-open
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
