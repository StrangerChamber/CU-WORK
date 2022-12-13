	.text
	.file	"s_atan.c"
	.globl	atan                    //  -- Begin function atan
	.type	atan,@function
atan:                                   //  @atan
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	lui x30 ,  2147483647&4095
	lui x15 ,  (2147483647>>12)&1048575
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	add x8 ,  x0 ,  x11
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	add x9 ,  x0 ,  x10
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	and x20 ,  x15 ,  x8
	srli x15 ,  x20 ,  20&31
	sltiu x15 ,  x15 ,  1089
	bltu x0, x15, .LBB0_5
.LBB0_1:                                //  %if.then
	lui x15 ,  (2146435072>>12)&1048575
	bltu x15, x20, .LBB0_4
.LBB0_2:                                //  %lor.lhs.false
	beq x0, x9, .LBB0_12
.LBB0_3:                                //  %lor.lhs.false
	bne x20, x15, .LBB0_12
.LBB0_4:                                //  %if.then9
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x8
	call __adddf3
	jal x0, .LBB0_24
.LBB0_5:                                //  %if.end14
	lui x30 ,  4086&4095
	lui x14 ,  (4086>>12)&1048575
	srli x15 ,  x20 ,  18&31
	srli x30 ,  x30 ,  12&31
	or x14 ,  x14 ,  x30
	bltu x14, x15, .LBB0_9
.LBB0_6:                                //  %if.then16
	lui x30 ,  -2013235812&4095
	lui x15 ,  (-2013235812>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  2117592124&4095
	lui x15 ,  (2117592124>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x0
	lui x13 ,  (1072693248>>12)&1048575
	call __gtdf2
	addi x18 ,  x0 ,  -1
	bge x0, x10, .LBB0_17
.LBB0_7:                                //  %if.then16
	srli x15 ,  x20 ,  21&31
	add x19 ,  x0 ,  x8
	sltiu x15 ,  x15 ,  497
	beq x0, x15, .LBB0_20
.LBB0_8:
	add x11 ,  x0 ,  x8
	jal x0, .LBB0_25
.LBB0_9:                                //  %if.else24
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call fabs
	lui x30 ,  1072889855&4095
	lui x15 ,  (1072889855>>12)&1048575
	add x19 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_15
.LBB0_10:                               //  %if.then26
	lui x30 ,  1072037887&4095
	lui x15 ,  (1072037887>>12)&1048575
	add x18 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_18
.LBB0_11:                               //  %if.then28
	lui x13 ,  (1073741824>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	call __adddf3
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __divdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	jal x0, .LBB0_20
.LBB0_12:                               //  %if.end
	lui x30 ,  -1074191877&4095
	lui x15 ,  (-1074191877>>12)&1048575
	lui x14 ,  (1073291771>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	lui x30 ,  1073291771&4095
	srli x30 ,  x30 ,  12&31
	or x11 ,  x14 ,  x30
	add x14 ,  x0 ,  x0
	blt x14, x8, .LBB0_14
.LBB0_13:                               //  %if.end
	add x11 ,  x0 ,  x15
.LBB0_14:                               //  %if.end
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x9 ,  x15 ,  x30
	jal x0, .LBB0_25
.LBB0_15:                               //  %if.else36
	lui x30 ,  1073971199&4095
	lui x15 ,  (1073971199>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bltu x15, x20, .LBB0_19
.LBB0_16:                               //  %if.then38
	lui x30 ,  -1074266112&4095
	add x18 ,  x0 ,  x0
	lui x15 ,  (-1074266112>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	add x12 ,  x0 ,  x18
	or x13 ,  x15 ,  x30
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	lui x13 ,  (1073217536>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call __muldf3
	lui x13 ,  (1072693248>>12)&1048575
	add x12 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x18 ,  x0 ,  2
	jal x0, .LBB0_20
.LBB0_17:
	add x19 ,  x0 ,  x8
	jal x0, .LBB0_20
.LBB0_18:                               //  %if.else31
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	lui x13 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x9
	add x12 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __divdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	slti x18 ,  x0 ,  1
	jal x0, .LBB0_20
.LBB0_19:                               //  %if.else43
	lui x30 ,  -1074790400&4095
	lui x15 ,  (-1074790400>>12)&1048575
	add x10 ,  x0 ,  x0
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x9
	srli x30 ,  x30 ,  12&31
	or x11 ,  x15 ,  x30
	call __divdf3
	add x9 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	addi x18 ,  x0 ,  3
.LBB0_20:                               //  %if.end47
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x19
	call __muldf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __muldf3
	lui x30 ,  -484255215&4095
	lui x15 ,  (-484255215>>12)&1048575
	add x20 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1066446138&4095
	lui x15 ,  (1066446138>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  611716587&4095
	lui x15 ,  (611716587>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068071755&4095
	lui x15 ,  (1068071755>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -1596965551&4095
	lui x15 ,  (-1596965551>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068567910&4095
	lui x15 ,  (1068567910>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -984866706&4095
	lui x15 ,  (-984866706>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1068975565&4095
	lui x15 ,  (1068975565>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -1845459969&4095
	lui x15 ,  (-1845459969>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1069697316&4095
	lui x15 ,  (1069697316>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  1431655693&4095
	lui x15 ,  (1431655693>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1070945621&4095
	lui x15 ,  (1070945621>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x23
	call __muldf3
	lui x30 ,  745172015&4095
	lui x15 ,  (745172015>>12)&1048575
	add x23 ,  x0 ,  x10
	add x22 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079856060&4095
	lui x15 ,  (-1079856060>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	lui x30 ,  1390345626&4095
	lui x15 ,  (1390345626>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1079124435&4095
	lui x15 ,  (-1079124435>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -1351312787&4095
	lui x15 ,  (-1351312787>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078742798&4095
	lui x15 ,  (-1078742798>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -31254927&4095
	lui x15 ,  (-31254927>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1078169146&4095
	lui x15 ,  (-1078169146>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	lui x30 ,  -1718031420&4095
	lui x15 ,  (-1718031420>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1077306983&4095
	lui x15 ,  (-1077306983>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x22
	blt x18, x0, .LBB0_23
.LBB0_21:                               //  %if.else75
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __muldf3
	lui x30 ,  atanlo&4095
	lui x15 ,  (atanlo>>12)&1048575
	slli x18 ,  x18 ,  3&31
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x18 ,  x15
	lw x12 ,  0 ( x15 )
	lw x13 ,  4 ( x15 )
	call __subdf3
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x19
	call __subdf3
	lui x30 ,  atanhi&4095
	lui x15 ,  (atanhi>>12)&1048575
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	add x15 ,  x18 ,  x15
	lw x10 ,  0 ( x15 )
	lw x11 ,  4 ( x15 )
	call __subdf3
	lui x30 ,  -2147483648&4095
	lui x15 ,  (-2147483648>>12)&1048575
	add x9 ,  x0 ,  x10
	add x14 ,  x0 ,  x0
	srli x30 ,  x30 ,  12&31
	or x15 ,  x15 ,  x30
	bge x8, x14, .LBB0_25
.LBB0_22:
	xor x11 ,  x15 ,  x11
	jal x0, .LBB0_25
.LBB0_23:                               //  %if.then71
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x19
	call __subdf3
.LBB0_24:                               //  %cleanup84
	add x9 ,  x0 ,  x10
.LBB0_25:                               //  %cleanup84
	add x10 ,  x0 ,  x9
	lw x8 ,  4 ( x2 )               //  4-byte Folded Reload
	lw x23 ,  8 ( x2 )              //  4-byte Folded Reload
	lw x22 ,  12 ( x2 )             //  4-byte Folded Reload
	lw x21 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x20 ,  20 ( x2 )             //  4-byte Folded Reload
	lw x19 ,  24 ( x2 )             //  4-byte Folded Reload
	lw x18 ,  28 ( x2 )             //  4-byte Folded Reload
	lw x9 ,  32 ( x2 )              //  4-byte Folded Reload
	lw x1 ,  36 ( x2 )              //  4-byte Folded Reload
	addi x2 ,  x2 ,  40
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end0:
	.size	atan, .Lfunc_end0-atan
	.cfi_endproc
                                        //  -- End function
	.address_space	0
	.type	atanhi,@object          //  @atanhi
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3
atanhi:
	.quad	4602023952714414927     //  double 0.46364760900080609
	.quad	4605249457297304856     //  double 0.78539816339744828
	.quad	4607027438436873883     //  double 0.98279372324732905
	.quad	4609753056924675352     //  double 1.5707963267948966
	.size	atanhi, 32

	.address_space	0
	.type	atanlo,@object          //  @atanlo
	.p2align	3
atanlo:
	.quad	4357843414468748770     //  double 2.2698777452961687E-17
	.quad	4359948597267291143     //  double 3.061616997868383E-17
	.quad	4354989122426817469     //  double 1.3903311031230998E-17
	.quad	4364452196894661639     //  double 6.123233995736766E-17
	.size	atanlo, 32


	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
