	.text
	.file	"sf_atan.c"
	.globl	atanf                   //  -- Begin function atanf
	.type	atanf,@function
atanf:                                  //  @atanf
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	add x8 ,  x0 ,  x10
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x18 ,  x15 ,  x8
	srli x15 ,  x18 ,  23&31
	sltiu x15 ,  x15 ,  161
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x30 ,  2139095041&4095
	lui x15 ,  (2139095041>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x18, x15, .LBB0_3
.LBB0_2:                                //  %if.then2
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x8
	call __addsf3
	jal x0, .LBB0_21
.LBB0_5:                                //  %if.end7
	srli x15 ,  x18 ,  21&31
	addi x14 ,  x0 ,  502
	bltu x14, x15, .LBB0_10
.LBB0_6:                                //  %if.then9
	lui x30 ,  1900671690&4095
	lui x15 ,  (1900671690>>12)&1048575
	add x10 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __gtsf2
	addi x20 ,  x0 ,  -1
	bge x0, x10, .LBB0_7
.LBB0_8:                                //  %if.then9
	srli x15 ,  x18 ,  24&31
	add x9 ,  x0 ,  x8
	sltiu x15 ,  x15 ,  49
	beq x0, x15, .LBB0_17
.LBB0_9:
	add x10 ,  x0 ,  x8
	jal x0, .LBB0_21
.LBB0_3:                                //  %if.end
	lui x30 ,  -1077342245&4095
	lui x15 ,  (-1077342245>>12)&1048575
	lui x14 ,  (1070141403>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1070141403&4095
	srli x30 ,  x30 ,  12&31
	or x10 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	blt x14, x8, .LBB0_21
.LBB0_4:                                //  %if.end
	add x10 ,  x0 ,  x15
	jal x0, .LBB0_21
.LBB0_10:                               //  %if.else17
	add x10 ,  x0 ,  x8
	call fabsf
	add x9 ,  x0 ,  x10
	srli x15 ,  x18 ,  19&31
	addi x14 ,  x0 ,  2034
	bltu x14, x15, .LBB0_14
.LBB0_11:                               //  %if.then19
	srli x15 ,  x18 ,  20&31
	addi x14 ,  x0 ,  1010
	bltu x14, x15, .LBB0_13
.LBB0_12:                               //  %if.then21
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __addsf3
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x18 ,  x0 ,  x10
	lui x11 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x0
	jal x0, .LBB0_17
.LBB0_14:                               //  %if.else29
	lui x30 ,  1075576831&4095
	lui x15 ,  (1075576831>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x18, .LBB0_16
.LBB0_15:                               //  %if.then31
	lui x30 ,  -1077936128&4095
	lui x15 ,  (-1077936128>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x18 ,  x0 ,  x10
	lui x11 ,  (1069547520>>12)&1048575
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x11 ,  (1065353216>>12)&1048575
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
	addi x20 ,  x0 ,  2
	jal x0, .LBB0_17
.LBB0_7:
	add x9 ,  x0 ,  x8
	jal x0, .LBB0_17
.LBB0_13:                               //  %if.else24
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x10 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x18 ,  x0 ,  x10
	lui x11 ,  (1065353216>>12)&1048575
	add x10 ,  x0 ,  x9
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __divsf3
	add x9 ,  x0 ,  x10
	slti x20 ,  x0 ,  1
	jal x0, .LBB0_17
.LBB0_16:                               //  %if.else36
	lui x30 ,  -1082130432&4095
	lui x15 ,  (-1082130432>>12)&1048575
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x10 ,  x15 ,  x30
	call __divsf3
	add x9 ,  x0 ,  x10
	addi x20 ,  x0 ,  3
.LBB0_17:                               //  %if.end40
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x9
	call __mulsf3
	add x19 ,  x0 ,  x10
	add x11 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  1015376343&4095
	lui x15 ,  (1015376343>>12)&1048575
	add x18 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  1028381273&4095
	lui x15 ,  (1028381273>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1032350517&4095
	lui x15 ,  (1032350517>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1035611758&4095
	lui x15 ,  (1035611758>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1041385765&4095
	lui x15 ,  (1041385765>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  1051372203&4095
	lui x15 ,  (1051372203>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x19
	call __mulsf3
	lui x30 ,  -1122655711&4095
	lui x15 ,  (-1122655711>>12)&1048575
	add x19 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __mulsf3
	lui x30 ,  -1116802709&4095
	lui x15 ,  (-1116802709>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1113749611&4095
	lui x15 ,  (-1113749611>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1109160392&4095
	lui x15 ,  (-1109160392>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	lui x30 ,  -1102263091&4095
	lui x15 ,  (-1102263091>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x18
	call __mulsf3
	add x11 ,  x0 ,  x19
	blt x20, x0, .LBB0_18
.LBB0_19:                               //  %if.else68
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	lui x30 ,  atanlo&4095
	lui x15 ,  (atanlo>>12)&1048575
	slli x18 ,  x20 ,  2&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x18 ,  x15
	lw x11 ,  0 ( x15 )
	call __subsf3
	add x11 ,  x0 ,  x9
	call __subsf3
	lui x30 ,  atanhi&4095
	lui x15 ,  (atanhi>>12)&1048575
	add x11 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x18 ,  x15
	lw x10 ,  0 ( x15 )
	call __subsf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x8, x14, .LBB0_21
.LBB0_20:
	xor x10 ,  x15 ,  x10
	jal x0, .LBB0_21
.LBB0_18:                               //  %if.then64
	call __addsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __mulsf3
	add x11 ,  x0 ,  x10
	add x10 ,  x0 ,  x9
	call __subsf3
.LBB0_21:                               //  %cleanup
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
	.size	atanf, .Lfunc_end0-atanf
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	atanhi,@object          //  @atanhi
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
atanhi:
	.long	1055744824              //  float 0.463647604
	.long	1061752794              //  float 0.785398125
	.long	1065064542              //  float 0.982793688
	.long	1070141402              //  float 1.57079625
	.size	atanhi, 16

	.address_space	0
	.type	atanlo,@object          //  @atanlo
	.p2align	2
atanlo:
	.long	833369961               //  float 5.01215824E-9
	.long	857874792               //  float 3.77489471E-8
	.long	856952756               //  float 3.44732172E-8
	.long	866263400               //  float 7.54978942E-8
	.size	atanlo, 16


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
