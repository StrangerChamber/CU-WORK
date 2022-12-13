	.text
	.file	"ef_exp.c"
	.globl	__ieee754_expf          //  -- Begin function __ieee754_expf
	.type	__ieee754_expf,@function
__ieee754_expf:                         //  @__ieee754_expf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -32
	.cfi_adjust_cfa_offset 32
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -28
	add x8 ,  x0 ,  x10
	sw x18 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  28 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  24 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 21, -24
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  2139095041&4095
	and x18 ,  x15 ,  x8
	lui x15 ,  (2139095041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_2
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
.LBB0_23:                               //  %cleanup
	call __addsf3
.LBB0_24:                               //  %cleanup
	add x8 ,  x0 ,  x10
.LBB0_25:                               //  %cleanup
	add x10 ,  x0 ,  x8
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x21 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x20 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  24 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  28 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  32
	.cfi_def_cfa 2, 0
	ret
.LBB0_2:                                //  %if.end
	slt x19 ,  x8 ,  x0
	lui x15 ,  (2139095040>>12)&1048575
	bne x18, x15, .LBB0_5
.LBB0_3:                                //  %if.then3
	add x15 ,  x0 ,  x0
	beq x19, x15, .LBB0_25
.LBB0_4:                                //  %if.then3
	add x8 ,  x0 ,  x15
	jal x0, .LBB0_25
.LBB0_5:                                //  %if.end6
	lui x30 ,  1118925336&4095
	lui x15 ,  (1118925336>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	blt x8, x15, .LBB0_7
.LBB0_6:                                //  %if.then9
	add x10 ,  x0 ,  x0
	call __math_oflowf
	jal x0, .LBB0_24
.LBB0_7:                                //  %if.end10
	bge x8, x0, .LBB0_10
.LBB0_8:                                //  %if.end10
	lui x30 ,  1120924086&4095
	lui x15 ,  (1120924086>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_10
.LBB0_9:                                //  %if.then15
	add x10 ,  x0 ,  x0
	call __math_uflowf
	jal x0, .LBB0_24
.LBB0_10:                               //  %if.end17
	lui x30 ,  1051816473&4095
	lui x15 ,  (1051816473>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_13
.LBB0_11:                               //  %if.then20
	lui x30 ,  1065686417&4095
	lui x15 ,  (1065686417>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x18, .LBB0_16
.LBB0_12:                               //  %if.then23
	lui x30 ,  ln2HI&4095
	lui x14 ,  (ln2HI>>12)&1048575
	xori x15 ,  x19 ,  1
	lui x13 ,  (ln2LO>>12)&1048575
	srli x30 ,  x30 ,  12&31
	sub x9 ,  x15 ,  x19
	slli x15 ,  x19 ,  2&31
	or x14 ,  x14 ,  x30
	lui x30 ,  ln2LO&4095
	srli x30 ,  x30 ,  12&31
	add x14 ,  x15 ,  x14
	or x13 ,  x13 ,  x30
	lw x19 ,  0 ( x14 )
	add x15 ,  x15 ,  x13
	lw x18 ,  0 ( x15 )
	jal x0, .LBB0_17
.LBB0_13:                               //  %if.else36
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __gtsf2
	add x9 ,  x0 ,  x0
	bge x0, x10, .LBB0_18
.LBB0_14:                               //  %if.else36
	srli x15 ,  x18 ,  26&31
	addi x14 ,  x0 ,  12
	bltu x14, x15, .LBB0_18
.LBB0_15:                               //  %if.then43
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_23
.LBB0_16:                               //  %if.else
	lui x30 ,  1069066811&4095
	lui x15 ,  (1069066811>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  halF&4095
	lui x14 ,  (halF>>12)&1048575
	slli x15 ,  x19 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	add x15 ,  x15 ,  x14
	lw x11 ,  0 ( x15 )
	call __addsf3
	call __fixsfsi
	add x9 ,  x0 ,  x10
	call __floatsisf
	lui x30 ,  1060204928&4095
	lui x15 ,  (1060204928>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  924317649&4095
	lui x15 ,  (924317649>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	add x18 ,  x0 ,  x10
.LBB0_17:                               //  %if.end34
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x19
	call __subsf3
	add x11 ,  x0 ,  x18
	add x19 ,  x0 ,  x10
	call __subsf3
	add x8 ,  x0 ,  x10
	jal x0, .LBB0_19
.LBB0_18:
                                        //  implicit-def: $rf_xpr_18
                                        //  implicit-def: $rf_xpr_19
.LBB0_19:                               //  %if.end47
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __mulsf3
	lui x30 ,  858897228&4095
	lui x15 ,  (858897228>>12)&1048575
	add x20 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1243747826&4095
	lui x15 ,  (-1243747826>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  948613973&4095
	lui x15 ,  (948613973>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  -1154086047&4095
	lui x15 ,  (-1154086047>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	lui x30 ,  1042983595&4095
	lui x15 ,  (1042983595>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	add x21 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x21
	call __mulsf3
	add x20 ,  x0 ,  x10
	beq x0, x9, .LBB0_22
.LBB0_20:                               //  %if.else66
	lui x10 ,  (1073741824>>12)&1048575
	add x11 ,  x0 ,  x21
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __subsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __subsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	slli x15 ,  x9 ,  23&31
	add x8 ,  x10 ,  x15
	slti x15 ,  x9 ,  -125
	beq x0, x15, .LBB0_25
.LBB0_21:                               //  %if.else89
	lui x15 ,  (838860800>>12)&1048575
	lui x11 ,  (226492416>>12)&1048575
	add x10 ,  x15 ,  x8
	call __mulsf3
	jal x0, .LBB0_24
.LBB0_22:                               //  %if.then61
	lui x30 ,  -1073741824&4095
	lui x15 ,  (-1073741824>>12)&1048575
	add x10 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x20
	call __divsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x8
	call __subsf3
	lui x11 ,  (1065353216>>12)&1048575
	jal x0, .LBB0_23
.Lfunc_end0:
	.size	__ieee754_expf, .Lfunc_end0-__ieee754_expf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	ln2HI,@object           //  @ln2HI
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
ln2HI:
	.long	1060204928              //  float 0.693138123
	.long	3207688576              //  float -0.693138123
	.size	ln2HI, 8

	.address_space	0
	.type	ln2LO,@object           //  @ln2LO
	.p2align	2
ln2LO:
	.long	924317649               //  float 9.05800061E-6
	.long	3071801297              //  float -9.05800061E-6
	.size	ln2LO, 8

	.address_space	0
	.type	halF,@object            //  @halF
	.p2align	2
halF:
	.long	1056964608              //  float 0.5
	.long	3204448256              //  float -0.5
	.size	halF, 8

	.hidden	__math_oflowf
	.hidden	__math_uflowf

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
