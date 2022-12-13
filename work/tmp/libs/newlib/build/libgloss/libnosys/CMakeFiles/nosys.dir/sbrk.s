	.text
	.file	"sbrk.c"
	.globl	sbrk                    //  -- Begin function sbrk
	.type	sbrk,@function
sbrk:                                   //  @sbrk
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  heap_ptr&4095
	lui x14 ,  (heap_ptr>>12)&1048575
	add x15 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	lw x10 ,  0 ( x13 )
	bltu x0, x10, .LBB0_2
.LBB0_1:                                //  %if.then
	lui x30 ,  heap_ptr&4095
	lui x12 ,  (_heap>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x14 ,  x30
	lui x30 ,  _heap&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x12 ,  x30
	sw x10 ,  0 ( x13 )
.LBB0_2:                                //  %if.end
	lui x30 ,  _heap_end&4095
	lui x13 ,  (_heap_end>>12)&1048575
	add x15 ,  x15 ,  x10
	srli x30 ,  x30 ,  12&31
	or x13 ,  x13 ,  x30
	bgeu x13, x15, .LBB0_3
.LBB0_4:                                //  %if.else
	lui x30 ,  errno&4095
	lui x15 ,  (errno>>12)&1048575
	addi x10 ,  x0 ,  -1
	addi x14 ,  x0 ,  12
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	sw x14 ,  0 ( x15 )
	ret
.LBB0_3:                                //  %if.then1
	lui x30 ,  heap_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	ret
.Lfunc_end0:
	.size	sbrk, .Lfunc_end0-sbrk
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	heap_ptr,@object        //  @heap_ptr
	.local	heap_ptr
	.comm	heap_ptr,4,4
	.address_space	0
	.address_space	0
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
