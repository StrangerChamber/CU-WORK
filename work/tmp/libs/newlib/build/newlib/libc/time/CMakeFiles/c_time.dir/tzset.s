	.text
	.file	"tzset.c"
	.globl	_tzset_unlocked         //  -- Begin function _tzset_unlocked
	.type	_tzset_unlocked,@function
_tzset_unlocked:                        //  @_tzset_unlocked
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	jal x0, _tzset_unlocked_r
.Lfunc_end0:
	.size	_tzset_unlocked, .Lfunc_end0-_tzset_unlocked
	.cfi_endproc
                                        //  -- End function
	.globl	tzset                   //  -- Begin function tzset
	.type	tzset,@function
tzset:                                  //  @tzset
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -8
	.cfi_adjust_cfa_offset 8
	sw x1 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 1, -4
	call __tz_lock
	lui x30 ,  _impure_ptr&4095
	lui x15 ,  (_impure_ptr>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lw x10 ,  0 ( x15 )
	call _tzset_unlocked_r
	lw x1 ,  4 ( x2 )               //  4-byte Folded Reload
	addi x2 ,  x2 ,  8
	.cfi_def_cfa 2, 0
	jal x0, __tz_unlock
.Lfunc_end1:
	.size	tzset, .Lfunc_end1-tzset
	.cfi_endproc
                                        //  -- End function
	.address_space	0

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
