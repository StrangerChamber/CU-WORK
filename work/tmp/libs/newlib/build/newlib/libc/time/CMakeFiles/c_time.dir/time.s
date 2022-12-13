	.text
	.file	"time.c"
	.globl	time                    //  -- Begin function time
	.type	time,@function
time:                                   //  @time
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	sw x8 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -8
	add x8 ,  x0 ,  x10
	addi x11 ,  x2 ,  4
	add x12 ,  x0 ,  x0
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _gettimeofday_r
	blt x10, x0, .LBB0_1
.LBB0_2:                                //  %if.end
	lw x11 ,  8 ( x2 )
	lw x10 ,  4 ( x2 )
	beq x0, x8, .LBB0_4
.LBB0_3:                                //  %if.then1
	sw x10 ,  0 ( x8 )
	sw x11 ,  4 ( x8 )
.LBB0_4:                                //  %if.end3
	lw x8 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.LBB0_1:                                //  %if.then
	addi x15 ,  x0 ,  -1
	sw x15 ,  8 ( x2 )
	sw x15 ,  4 ( x2 )
	lw x11 ,  8 ( x2 )
	lw x10 ,  4 ( x2 )
	bltu x0, x8, .LBB0_3
	jal x0, .LBB0_4
.Lfunc_end0:
	.size	time, .Lfunc_end0-time
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
