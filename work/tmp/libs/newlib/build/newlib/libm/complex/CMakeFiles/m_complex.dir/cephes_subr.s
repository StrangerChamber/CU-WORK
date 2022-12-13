	.text
	.file	"cephes_subr.c"
	.globl	_cchsh                  //  -- Begin function _cchsh
	.type	_cchsh,@function
_cchsh:                                 //  @_cchsh
	.cfi_sections .debug_frame
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -40
	.cfi_adjust_cfa_offset 40
	sw x9 ,  32 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  28 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  24 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x8 ,  4 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -36
	sw x1 ,  36 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x20 ,  20 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  16 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x22 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 23, -32
	add x9 ,  x0 ,  x13
	add x8 ,  x0 ,  x12
	add x18 ,  x0 ,  x11
	add x19 ,  x0 ,  x10
	call fabs
	add x12 ,  x0 ,  x0
	lui x13 ,  (1071644672>>12)&1048575
	call __ledf2
	bge x0, x10, .LBB0_1
.LBB0_2:                                //  %if.else
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call exp
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x20 ,  x0 ,  x0
	lui x21 ,  (1071644672>>12)&1048575
	add x10 ,  x0 ,  x20
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x18
	add x13 ,  x0 ,  x19
	call __divdf3
	add x22 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	add x13 ,  x0 ,  x21
	call __muldf3
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	call __subdf3
	sw x11 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x23
	call __adddf3
	sw x10 ,  0 ( x8 )
	sw x11 ,  4 ( x8 )
	jal x0, .LBB0_3
.LBB0_1:                                //  %if.then
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call cosh
	sw x11 ,  4 ( x8 )
	sw x10 ,  0 ( x8 )
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x18
	call sinh
	sw x11 ,  4 ( x9 )
	sw x10 ,  0 ( x9 )
.LBB0_3:                                //  %if.end
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
	.size	_cchsh, .Lfunc_end0-_cchsh
	.cfi_endproc
                                        //  -- End function
	.globl	_redupi                 //  -- Begin function _redupi
	.type	_redupi,@function
_redupi:                                //  @_redupi
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -24
	.cfi_adjust_cfa_offset 24
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	sw x9 ,  16 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x8 ,  0 ( x2 )               //  4-byte Folded Spill
	.cfi_offset 8, -24
	sw x1 ,  20 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x18 ,  12 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  8 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  4 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 20, -20
	add x8 ,  x0 ,  x11
	add x9 ,  x0 ,  x10
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __divdf3
	add x20 ,  x0 ,  x0
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x20
	call __gedf2
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	blt x10, x20, .LBB1_2
.LBB1_1:                                //  %entry
	lui x13 ,  (1071644672>>12)&1048575
.LBB1_2:                                //  %entry
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	add x12 ,  x0 ,  x20
	call __adddf3
	call __fixdfsi
	call __floatsidf
	lui x30 ,  -1073143301&4095
	lui x15 ,  (-1073143301>>12)&1048575
	lui x12 ,  (1409286144>>12)&1048575
	add x18 ,  x0 ,  x10
	add x19 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x8
	call __adddf3
	lui x30 ,  -1105130682&4095
	lui x15 ,  (-1105130682>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	lui x12 ,  (268435456>>12)&1048575
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
	lui x30 ,  826654830&4095
	lui x15 ,  (826654830>>12)&1048575
	add x8 ,  x0 ,  x10
	add x9 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x19
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1133878685&4095
	lui x15 ,  (-1133878685>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x8
	add x11 ,  x0 ,  x9
	call __adddf3
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
	.size	_redupi, .Lfunc_end1-_redupi
	.cfi_endproc
                                        //  -- End function
	.globl	_ctans                  //  -- Begin function _ctans
	.type	_ctans,@function
_ctans:                                 //  @_ctans
	.cfi_startproc
	.cfi_return_column 1
//  %bb.0:                              //  %entry
	.cfi_def_cfa 2, 0
	addi x2 ,  x2 ,  -144
	.cfi_adjust_cfa_offset 144
	sw x22 ,  116 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 22, -28
	sw x23 ,  112 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 23, -32
	sw x24 ,  108 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 24, -36
	sw x25 ,  104 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 25, -40
	lw x22 ,  4 ( x10 )
	addi x15 ,  x2 ,  76
	sw x1 ,  140 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 1, -4
	sw x9 ,  136 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 9, -8
	sw x18 ,  132 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 18, -12
	sw x19 ,  128 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 19, -16
	sw x20 ,  124 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 20, -20
	sw x21 ,  120 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 21, -24
	sw x26 ,  100 ( x2 )            //  4-byte Folded Spill
	.cfi_offset 26, -44
	sw x27 ,  96 ( x2 )             //  4-byte Folded Spill
	.cfi_offset 27, -48
	sw x8 ,  92 ( x2 )              //  4-byte Folded Spill
	.cfi_offset 8, -52
	lw x24 ,  8 ( x10 )
	lw x23 ,  12 ( x10 )
	lw x25 ,  0 ( x10 )
	addi x10 ,  x2 ,  44
	sw x22 ,  4 ( x15 )
	sw x24 ,  8 ( x15 )
	sw x24 ,  8 ( x10 )
	sw x22 ,  4 ( x10 )
	sw x23 ,  88 ( x2 )
	sw x25 ,  76 ( x2 )
	sw x23 ,  56 ( x2 )
	sw x25 ,  44 ( x2 )
	call creal
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call fabs
	lui x30 ,  1413754136&4095
	lui x15 ,  (1413754136>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1074340347&4095
	lui x15 ,  (1074340347>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __divdf3
	add x20 ,  x0 ,  x0
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x13 ,  x0 ,  x20
	add x12 ,  x0 ,  x20
	call __gedf2
	lui x30 ,  -1075838976&4095
	lui x15 ,  (-1075838976>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	blt x10, x20, .LBB2_2
.LBB2_1:                                //  %entry
	lui x13 ,  (1071644672>>12)&1048575
.LBB2_2:                                //  %entry
	addi x15 ,  x2 ,  60
	addi x8 ,  x2 ,  28
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x20
	sw x22 ,  4 ( x15 )
	sw x24 ,  8 ( x15 )
	sw x22 ,  4 ( x8 )
	sw x24 ,  8 ( x8 )
	sw x25 ,  60 ( x2 )
	sw x25 ,  28 ( x2 )
	sw x23 ,  72 ( x2 )
	sw x23 ,  40 ( x2 )
	call __adddf3
	call __fixdfsi
	call __floatsidf
	lui x30 ,  -1073143301&4095
	lui x15 ,  (-1073143301>>12)&1048575
	lui x12 ,  (1409286144>>12)&1048575
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	lui x30 ,  -1105130682&4095
	lui x15 ,  (-1105130682>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	lui x12 ,  (268435456>>12)&1048575
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	lui x30 ,  826654830&4095
	lui x15 ,  (826654830>>12)&1048575
	add x9 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  -1133878685&4095
	lui x15 ,  (-1133878685>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __muldf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x18
	call __adddf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	sw x10 ,  8 ( x2 )              //  4-byte Folded Spill
	add x10 ,  x0 ,  x8
	sw x11 ,  4 ( x2 )              //  4-byte Folded Spill
	call cimag
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __adddf3
	call fabs
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	call __muldf3
	lui x25 ,  (1072693248>>12)&1048575
	add x24 ,  x0 ,  x20
	add x26 ,  x0 ,  x20
	add x9 ,  x0 ,  x20
	add x19 ,  x0 ,  x20
	add x27 ,  x0 ,  x20
	add x8 ,  x0 ,  x20
	sw x10 ,  24 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  20 ( x2 )             //  4-byte Folded Spill
	add x21 ,  x0 ,  x25
	add x23 ,  x0 ,  x25
.LBB2_3:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x22 ,  x0 ,  x0
	lui x18 ,  (1072693248>>12)&1048575
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	call __adddf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __muldf3
	lw x18 ,  8 ( x2 )              //  4-byte Folded Reload
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	lw x22 ,  4 ( x2 )              //  4-byte Folded Reload
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	lw x10 ,  24 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x26
	add x13 ,  x0 ,  x23
	lw x11 ,  20 ( x2 )             //  4-byte Folded Reload
	call __muldf3
	add x23 ,  x0 ,  x10
	add x26 ,  x0 ,  x11
	add x10 ,  x0 ,  x24
	add x11 ,  x0 ,  x25
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x26
	call __adddf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __divdf3
	add x12 ,  x0 ,  x10
	add x13 ,  x0 ,  x11
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x8
	call __adddf3
	add x27 ,  x0 ,  x0
	lui x8 ,  (1072693248>>12)&1048575
	sw x10 ,  16 ( x2 )             //  4-byte Folded Spill
	sw x11 ,  12 ( x2 )             //  4-byte Folded Spill
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x8
	call __adddf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x9
	add x11 ,  x0 ,  x20
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x8
	call __adddf3
	add x9 ,  x0 ,  x10
	add x20 ,  x0 ,  x11
	add x10 ,  x0 ,  x19
	add x11 ,  x0 ,  x21
	add x12 ,  x0 ,  x9
	add x13 ,  x0 ,  x20
	call __muldf3
	add x19 ,  x0 ,  x10
	add x21 ,  x0 ,  x11
	add x10 ,  x0 ,  x18
	add x11 ,  x0 ,  x22
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	call __muldf3
	add x24 ,  x0 ,  x10
	add x25 ,  x0 ,  x11
	lw x10 ,  24 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x23
	add x13 ,  x0 ,  x26
	lw x11 ,  20 ( x2 )             //  4-byte Folded Reload
	call __muldf3
	add x12 ,  x0 ,  x24
	add x13 ,  x0 ,  x25
	add x26 ,  x0 ,  x10
	add x23 ,  x0 ,  x11
	call __subdf3
	add x12 ,  x0 ,  x19
	add x13 ,  x0 ,  x21
	call __divdf3
	add x22 ,  x0 ,  x10
	add x18 ,  x0 ,  x11
	lw x10 ,  16 ( x2 )             //  4-byte Folded Reload
	lw x11 ,  12 ( x2 )             //  4-byte Folded Reload
	add x12 ,  x0 ,  x22
	add x13 ,  x0 ,  x18
	call __adddf3
	add x27 ,  x0 ,  x10
	add x8 ,  x0 ,  x11
	add x10 ,  x0 ,  x22
	add x11 ,  x0 ,  x18
	add x12 ,  x0 ,  x27
	add x13 ,  x0 ,  x8
	call __divdf3
	call fabs
	lui x30 ,  1084318799&4095
	lui x15 ,  (1084318799>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x12 ,  x15 ,  x30
	lui x30 ,  1017099409&4095
	lui x15 ,  (1017099409>>12)&1048575
	srli x30 ,  x30 ,  12&31
	or x13 ,  x15 ,  x30
	call __gtdf2
	blt x0, x10, .LBB2_3
.LBB2_4:                                //  %do.end
	add x10 ,  x0 ,  x27
	add x11 ,  x0 ,  x8
	lw x8 ,  92 ( x2 )              //  4-byte Folded Reload
	lw x27 ,  96 ( x2 )             //  4-byte Folded Reload
	lw x26 ,  100 ( x2 )            //  4-byte Folded Reload
	lw x25 ,  104 ( x2 )            //  4-byte Folded Reload
	lw x24 ,  108 ( x2 )            //  4-byte Folded Reload
	lw x23 ,  112 ( x2 )            //  4-byte Folded Reload
	lw x22 ,  116 ( x2 )            //  4-byte Folded Reload
	lw x21 ,  120 ( x2 )            //  4-byte Folded Reload
	lw x20 ,  124 ( x2 )            //  4-byte Folded Reload
	lw x19 ,  128 ( x2 )            //  4-byte Folded Reload
	lw x18 ,  132 ( x2 )            //  4-byte Folded Reload
	lw x9 ,  136 ( x2 )             //  4-byte Folded Reload
	lw x1 ,  140 ( x2 )             //  4-byte Folded Reload
	addi x2 ,  x2 ,  144
	.cfi_def_cfa 2, 0
	ret
.Lfunc_end2:
	.size	_ctans, .Lfunc_end2-_ctans
	.cfi_endproc
                                        //  -- End function

	.ident	"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"
	.section	".note.GNU-stack","",@progbits
