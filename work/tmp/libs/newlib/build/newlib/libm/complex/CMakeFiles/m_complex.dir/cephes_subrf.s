	.text
	.file	"cephes_subrf.c"
	.globl	_cchshf                 //  -- Begin function _cchshf
	.type	_cchshf,@function
_cchshf:                                //  @_cchshf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x9 ,  x0 ,  x12
	add x8 ,  x0 ,  x11
	add x18 ,  x0 ,  x10
	call fabsf
	lui x11 ,  (1056964608>>12)&1048575
	call __lesf2
	bge x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	add x10 ,  x0 ,  x18
	call expf
	add x18 ,  x0 ,  x10
	lui x19 ,  (1056964608>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call __divsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	call __mulsf3
	add x11 ,  x0 ,  x20
	add x18 ,  x0 ,  x10
	call __subsf3
	sw x10 ,  0 ( x9 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __addsf3
	sw x10 ,  0 ( x8 )
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x18
	call coshf
	sw x10 ,  0 ( x8 )
	add x10 ,  x0 ,  x18
	call sinhf
	sw x10 ,  0 ( x9 )
.LBB0_3:                                //  %if.end
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	_cchshf, .Lfunc_end0-_cchshf
	.cfi_endproc
                                        //  -- End function
	.globl	_redupif                //  -- Begin function _redupif
	.type	_redupif,@function
_redupif:                               //  @_redupif
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divsf3
	add x8 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x8
	call __gesf2
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	blt x10, x8, .LBB1_2
.LBB1_1:                                //  %entry
	lui x11 ,  (1056964608>>12)&1048575
.LBB1_2:                                //  %entry
	add x10 ,  x0 ,  x18
	call __addsf3
	call __fixsfsi
	call __floatsisf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __extendsfdf2
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x19 ,  x0 ,  x11
	call __extendsfdf2
	lui x30 ,  -1073143808&4095
	lui x15 ,  (-1073143808>>12)&1048575
	add x12 ,  x0 ,  x8
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  -1085295616&4095
	lui x15 ,  (-1085295616>>12)&1048575
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  407279769&4095
	lui x15 ,  (407279769>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1098628051&4095
	lui x15 ,  (-1098628051>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
	call __truncdfsf2
	lw x8 ,  0 ( x2 )               //  4-byte Folded Reload
	lw x20 ,  4 ( x2 )              //  4-byte Folded Reload
	lw x19 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x18 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  16 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  20 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  24
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end1:
	.size	_redupif, .Lfunc_end1-_redupif
	.cfi_endproc
                                        //  -- End function
	.globl	_ctansf                 //  -- Begin function _ctansf
	.type	_ctansf,@function
_ctansf:                                //  @_ctansf
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -88
	.cfi_adjust_cfa_offset 88
	sw x19 ,  72 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  68 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	lw x19 ,  4 ( x10 )
	sw x1 ,  84 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  80 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  76 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x21 ,  64 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  60 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  56 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  52 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  48 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 25, -40
	sw x26 ,  44 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x8 ,  40 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -48
	lw x20 ,  0 ( x10 )
	addi x10 ,  x2 ,  16
	sw x19 ,  36 ( x2 )
	sw x20 ,  32 ( x2 )
	sw x20 ,  16 ( x2 )
	sw x19 ,  20 ( x2 )
	call crealf
	add x11 ,  x0 ,  x10
	call __addsf3
	call fabsf
	lui x30 ,  1078530011&4095
	lui x15 ,  (1078530011>>12)&1048575
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divsf3
	add x8 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x11 ,  x0 ,  x8
	call __gesf2
	lui x30 ,  -1090519040&4095
	lui x15 ,  (-1090519040>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	blt x10, x8, .LBB2_2
.LBB2_1:                                //  %entry
	lui x11 ,  (1056964608>>12)&1048575
.LBB2_2:                                //  %entry
	add x10 ,  x0 ,  x18
	sw x20 ,  24 ( x2 )
	sw x20 ,  8 ( x2 )
	sw x19 ,  28 ( x2 )
	sw x19 ,  12 ( x2 )
	call __addsf3
	call __fixsfsi
	call __floatsisf
	add x18 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __extendsfdf2
	add x9 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x19 ,  x0 ,  x11
	call __extendsfdf2
	lui x30 ,  -1073143808&4095
	lui x15 ,  (-1073143808>>12)&1048575
	add x12 ,  x0 ,  x8
	add x18 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  -1085295616&4095
	lui x15 ,  (-1085295616>>12)&1048575
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	lui x30 ,  407279769&4095
	lui x15 ,  (407279769>>12)&1048575
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1098628051&4095
	lui x15 ,  (-1098628051>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __adddf3
	call __truncdfsf2
	add x11 ,  x0 ,  x10
	call __mulsf3
	add x9 ,  x0 ,  x10
	addi x10 ,  x2 ,  8
	call cimagf
	add x11 ,  x0 ,  x10
	call __addsf3
	call fabsf
	add x11 ,  x0 ,  x10
	call __mulsf3
	lui x19 ,  (1065353216>>12)&1048575
	add x18 ,  x0 ,  x10
	lui x25 ,  (698640683>>12)&1048575
	lui x26 ,  (1046485803>>12)&1048575
	add x22 ,  x0 ,  x8
	add x23 ,  x0 ,  x19
	add x20 ,  x0 ,  x19
	add x21 ,  x0 ,  x19
.LBB2_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __addsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __addsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x20 ,  x0 ,  x10
	add x10 ,  x0 ,  x21
	add x11 ,  x0 ,  x20
	call __addsf3
	add x11 ,  x0 ,  x23
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	call __addsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __addsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __addsf3
	add x8 ,  x0 ,  x10
	add x10 ,  x0 ,  x23
	add x11 ,  x0 ,  x8
	call __mulsf3
	add x23 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x21
	add x20 ,  x0 ,  x10
	call __subsf3
	add x11 ,  x0 ,  x23
	call __divsf3
	add x24 ,  x0 ,  x10
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x24
	call __addsf3
	add x22 ,  x0 ,  x10
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x22
	call __divsf3
	call fabsf
	call __extendsfdf2
	lui x30 ,  698640683&4095
	srli x30 ,  x30 ,  12&31
	or x12 ,  x25 ,  x30
	lui x30 ,  1046485803&4095
	srli x30 ,  x30 ,  12&31
	or x13 ,  x26 ,  x30
	call __gtdf2
	blt x0, x10, .LBB2_3
.LBB2_4:                                //  %do.end
	add x10 ,  x0 ,  x22
	lw x8 ,  40 ( x2 )              //  4-byte Folded Reload
	lw x26 ,  44 ( x2 )             //  4-byte Folded Reload
	lw x25 ,  48 ( x2 )             //  4-byte Folded Reload
	lw x24 ,  52 ( x2 )             //  4-byte Folded Reload
	lw x23 ,  56 ( x2 )             //  4-byte Folded Reload
	lw x22 ,  60 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  64 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  68 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  72 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  76 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  80 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  84 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  88
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_ctansf, .Lfunc_end2-_ctansf
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
