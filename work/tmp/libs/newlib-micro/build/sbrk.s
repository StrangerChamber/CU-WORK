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
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	lui x30 ,  heap_ptr&4095
	lui x14 ,  (heap_ptr>>12)&1048575
	add x15 ,  x0 ,  x10
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
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
	call __errno
	lui x30 ,  .str&4095
	addi x15 ,  x0 ,  12
	addi x12 ,  x0 ,  131
	sw x15 ,  0 ( x10 )
	lui x15 ,  (.str>>12)&1048575
	srli x30 ,  x30 ,  12&31
	addi x10 ,  x0 ,  2
	or x11 ,  x15 ,  x30
	call write
	addi x10 ,  x0 ,  -1
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	ret
.LBB0_3:                                //  %if.then1
	lui x30 ,  heap_ptr&4095
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	sw x15 ,  0 ( x14 )
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
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
	.type	.str,@object            //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.str:
	.asciz	"Warning: Codasip Newlib sbrk: could not allocate memory on heap, you can increase heap size with _HEAP_SIZE=size linker argument.\n"
	.size	.str, 131


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
