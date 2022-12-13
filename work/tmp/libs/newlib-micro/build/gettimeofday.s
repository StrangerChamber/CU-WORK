	.text
	.file	"gettimeofday.c"
	.globl	gettimeofday            //  -- Begin function gettimeofday
	.type	gettimeofday,@function
gettimeofday:                           //  @gettimeofday
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x8 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	beq x0, x11, .LBB0_2
.LBB0_1:                                //  %if.then
	call abort
.LBB0_2:                                //  %if.end
	addi x15 ,  x0 ,  11
	sw x15 ,  4 ( x2 )
	// APP
	nop
	// NO_APP
	lui x30 ,  4112&4095
	lui x15 ,  (4112>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x14 ,  x15 ,  x30
	addi x15 ,  x2 ,  4
	sw x15 ,  0 ( x14 )
	// APP
	nop
	// NO_APP
	lw x14 ,  16 ( x2 )
	beq x0, x14, .LBB0_4
.LBB0_3:                                //  %if.then1
	lw x14 ,  20 ( x2 )
	lui x30 ,  errno&4095
	lui x13 ,  (errno>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	sw x14 ,  0 ( x13 )
.LBB0_4:                                //  %do.end
	lw x14 ,  20 ( x15 )
	sw x0 ,  4 ( x8 )
	lw x15 ,  24 ( x15 )
	lw x10 ,  12 ( x2 )
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	sw x14 ,  0 ( x8 )
	sw x15 ,  8 ( x8 )
	lw x8 ,  32 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	gettimeofday, .Lfunc_end0-gettimeofday
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
