; ModuleID = '010_after_frontend.bc'
source_filename = "se_instrsem.c"
target datalayout = "e-p:32:32:32-S64-a0:0:32-n32"
target triple = "extractor"

@if_fetch__sb1__ = common dso_local local_unnamed_addr global [2048 x i8] zeroinitializer, align 1
@if_fetch__sb2__ = common dso_local local_unnamed_addr global [2048 x i16] zeroinitializer, align 2
@if_fetch__sb3__ = common dso_local local_unnamed_addr global [2048 x i24] zeroinitializer, align 4
@if_fetch__sb4__ = common dso_local local_unnamed_addr global [2048 x i32] zeroinitializer, align 4
@if_fetch__sb5__ = common dso_local local_unnamed_addr global [2048 x i40] zeroinitializer, align 8
@if_fetch__sb6__ = common dso_local local_unnamed_addr global [2048 x i48] zeroinitializer, align 8
@if_fetch__sb7__ = common dso_local local_unnamed_addr global [2048 x i56] zeroinitializer, align 8
@if_fetch__sb8__ = common dso_local local_unnamed_addr global [2048 x i64] zeroinitializer, align 8
@if_fetch__sb9__ = common dso_local local_unnamed_addr global [2048 x i72] zeroinitializer, align 16
@if_fetch__sb10__ = common dso_local local_unnamed_addr global [2048 x i80] zeroinitializer, align 16
@if_fetch__sb11__ = common dso_local local_unnamed_addr global [2048 x i88] zeroinitializer, align 16
@if_fetch__sb12__ = common dso_local local_unnamed_addr global [2048 x i96] zeroinitializer, align 16
@if_fetch__sb13__ = common dso_local local_unnamed_addr global [2048 x i104] zeroinitializer, align 16
@if_fetch__sb14__ = common dso_local local_unnamed_addr global [2048 x i112] zeroinitializer, align 16
@if_fetch__sb15__ = common dso_local local_unnamed_addr global [2048 x i120] zeroinitializer, align 16
@if_fetch__sb16__ = common dso_local local_unnamed_addr global [2048 x i128] zeroinitializer, align 16
@ldst__sb1__ = common dso_local global [2048 x i8] zeroinitializer, align 1
@ldst__sb2__ = common dso_local global [2048 x i16] zeroinitializer, align 2
@ldst__sb3__ = common dso_local local_unnamed_addr global [2048 x i24] zeroinitializer, align 4
@ldst__sb4__ = common dso_local global [2048 x i32] zeroinitializer, align 4
@ldst__sb5__ = common dso_local local_unnamed_addr global [2048 x i40] zeroinitializer, align 8
@ldst__sb6__ = common dso_local local_unnamed_addr global [2048 x i48] zeroinitializer, align 8
@ldst__sb7__ = common dso_local local_unnamed_addr global [2048 x i56] zeroinitializer, align 8
@ldst__sb8__ = common dso_local local_unnamed_addr global [2048 x i64] zeroinitializer, align 8
@ldst__sb9__ = common dso_local local_unnamed_addr global [2048 x i72] zeroinitializer, align 16
@ldst__sb10__ = common dso_local local_unnamed_addr global [2048 x i80] zeroinitializer, align 16
@ldst__sb11__ = common dso_local local_unnamed_addr global [2048 x i88] zeroinitializer, align 16
@ldst__sb12__ = common dso_local local_unnamed_addr global [2048 x i96] zeroinitializer, align 16
@ldst__sb13__ = common dso_local local_unnamed_addr global [2048 x i104] zeroinitializer, align 16
@ldst__sb14__ = common dso_local local_unnamed_addr global [2048 x i112] zeroinitializer, align 16
@ldst__sb15__ = common dso_local local_unnamed_addr global [2048 x i120] zeroinitializer, align 16
@ldst__sb16__ = common dso_local local_unnamed_addr global [2048 x i128] zeroinitializer, align 16
@rf_xpr = common dso_local global [32 x i32] zeroinitializer, align 4
@r_pc = common dso_local global i32 0, align 4
@sc_load = common dso_local local_unnamed_addr global i32 0, align 4
@if_fetch__ = common dso_local local_unnamed_addr global [2048 x i32] zeroinitializer, align 4
@ldst__ = common dso_local local_unnamed_addr global [2048 x i32] zeroinitializer, align 4

declare dso_local void @codasip_nop(...) local_unnamed_addr #0

declare dso_local void @codasip_compiler_schedule_class(i32) local_unnamed_addr #0

; Function Attrs: readnone
declare dso_local i5 @codasip_immread_uint5(i32) local_unnamed_addr #1

; Function Attrs: readnone
declare dso_local i12 @codasip_immread_int12(i32) local_unnamed_addr #1

; Function Attrs: readnone
declare dso_local i20 @codasip_immread_uint20(i32) local_unnamed_addr #1

; Function Attrs: readnone
declare dso_local i13 @codasip_immread_int13(i32) local_unnamed_addr #1

; Function Attrs: readnone
declare dso_local i21 @codasip_immread_int21(i32) local_unnamed_addr #1

declare dso_local void @codasip_compiler_unused(...) local_unnamed_addr #0

declare dso_local void @codasip_halt(...) local_unnamed_addr #0

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_beq__x_0__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !7 {
entry:
  %call.i.i = tail call i13 @codasip_immread_int13(i32 0) #5, !dbg !10
  %0 = ashr i13 %call.i.i, 1, !dbg !15
  %conv1.i.i = sext i13 %0 to i32, !dbg !16
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !17
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !20
  %add.i = add i32 %1, -4, !dbg !23
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !24
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !25
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !30 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !31
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !34
  %0 = ashr i13 %call.i.i, 1, !dbg !37
  %conv1.i.i = sext i13 %0 to i32, !dbg !38
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !39
  %conv.i3.i = and i32 1, 31, !dbg !41
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !47
  %2 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !47
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !48
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !49

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !50
  br label %if.then.i, !dbg !51

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %4 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !50
  %cmp.i = icmp eq i32 %2, 0, !dbg !52
  br i1 %cmp.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !51

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i
  %.pn = phi i32 [ %3, %MI11rf_xpr_read.exit9.i.thread ], [ %4, %MI11rf_xpr_read.exit9.i ]
  %sub.i26.in = add nsw i32 %shl.i.i, -4, !dbg !53
  %sub.i26 = add i32 %sub.i26.in, %.pn, !dbg !54
  call void @llvm.br.anyint.i32(i32 %sub.i26, i1 true), !dbg !55
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !57

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !59 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !60
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !62
  %0 = ashr i13 %call.i.i, 1, !dbg !65
  %conv1.i.i = sext i13 %0 to i32, !dbg !66
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !67
  %conv.i.i = and i32 1, 31, !dbg !69
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !72
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !72
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !73
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !74

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !75
  br label %if.then.i, !dbg !76

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %4 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !75
  %cmp.i = icmp eq i32 %2, 0, !dbg !77
  br i1 %cmp.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !76

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i
  %.pn = phi i32 [ %3, %MI11rf_xpr_read.exit9.i.thread ], [ %4, %MI11rf_xpr_read.exit9.i ]
  %sub.i26.in = add nsw i32 %shl.i.i, -4, !dbg !78
  %sub.i26 = add i32 %sub.i26.in, %.pn, !dbg !79
  call void @llvm.br.anyint.i32(i32 %sub.i26, i1 true), !dbg !80
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !82

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !84 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !85
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !87
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !89
  %0 = ashr i13 %call.i.i, 1, !dbg !92
  %conv1.i.i = sext i13 %0 to i32, !dbg !93
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !94
  %conv.i.i = and i32 1, 31, !dbg !96
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !99
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !99
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !100
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !101

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !102

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !103
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !105
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !105
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !106
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !107

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !108

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !109
  %cmp.i = icmp eq i32 %storemerge, %storemerge4, !dbg !110
  br i1 %cmp.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !111

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !112
  %sub.i = add i32 %add.i, %5, !dbg !113
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !114
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !116

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !117
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bge__x_0__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !118 {
entry:
  %call.i.i = tail call i13 @codasip_immread_int13(i32 0) #5, !dbg !119
  %0 = ashr i13 %call.i.i, 1, !dbg !122
  %conv1.i.i = sext i13 %0 to i32, !dbg !123
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !124
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !126
  %add.i = add i32 %1, -4, !dbg !128
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !129
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !130
  ret void, !dbg !132
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !133 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !134
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !136
  %0 = ashr i13 %call.i.i, 1, !dbg !139
  %conv1.i.i = sext i13 %0 to i32, !dbg !140
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !141
  %conv.i3.i = and i32 1, 31, !dbg !143
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !146
  %2 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !146
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !147
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !148

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !149
  br label %if.then.i, !dbg !150

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %4 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !149
  %cmp13.i = icmp slt i32 %2, 1, !dbg !151
  br i1 %cmp13.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !150

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i
  %.pn = phi i32 [ %3, %MI11rf_xpr_read.exit9.i.thread ], [ %4, %MI11rf_xpr_read.exit9.i ]
  %sub.i26.in = add nsw i32 %shl.i.i, -4, !dbg !152
  %sub.i26 = add i32 %sub.i26.in, %.pn, !dbg !153
  call void @llvm.br.anyint.i32(i32 %sub.i26, i1 true), !dbg !154
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !156

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !158 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !159
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !161
  %0 = ashr i13 %call.i.i, 1, !dbg !164
  %conv1.i.i = sext i13 %0 to i32, !dbg !165
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !166
  %conv.i.i = and i32 1, 31, !dbg !168
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !171
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !171
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !172
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !173

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !174
  br label %if.then.i, !dbg !175

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %4 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !174
  %cmp13.i = icmp sgt i32 %2, -1, !dbg !176
  br i1 %cmp13.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !175

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i
  %.pn = phi i32 [ %3, %MI11rf_xpr_read.exit9.i.thread ], [ %4, %MI11rf_xpr_read.exit9.i ]
  %sub.i26.in = add nsw i32 %shl.i.i, -4, !dbg !177
  %sub.i26 = add i32 %sub.i26.in, %.pn, !dbg !178
  call void @llvm.br.anyint.i32(i32 %sub.i26, i1 true), !dbg !179
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !181

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !183 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !184
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !186
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !188
  %0 = ashr i13 %call.i.i, 1, !dbg !191
  %conv1.i.i = sext i13 %0 to i32, !dbg !192
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !193
  %conv.i.i = and i32 1, 31, !dbg !195
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !198
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !198
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !199
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !200

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !201

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !202
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !204
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !204
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !205
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !206

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !207

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !208
  %cmp13.i = icmp slt i32 %storemerge, %storemerge4, !dbg !209
  br i1 %cmp13.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !210

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !211
  %sub.i = add i32 %add.i, %5, !dbg !212
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !213
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !215

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !217 {
entry:
  %call.i.i = tail call i13 @codasip_immread_int13(i32 0) #5, !dbg !218
  %0 = ashr i13 %call.i.i, 1, !dbg !221
  %conv1.i.i = sext i13 %0 to i32, !dbg !222
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !223
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !225
  %add.i = add i32 %1, -4, !dbg !227
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !228
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !229
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !232 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !233
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !235
  %0 = ashr i13 %call.i.i, 1, !dbg !238
  %conv1.i.i = sext i13 %0 to i32, !dbg !239
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !240
  %conv.i3.i = and i32 1, 31, !dbg !242
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !245
  %2 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !245
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !246
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !247

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !248
  br label %if.then.i, !dbg !249

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %4 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !248
  %cmp21.i = icmp eq i32 %2, 0, !dbg !250
  br i1 %cmp21.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !249

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i
  %.pn = phi i32 [ %3, %MI11rf_xpr_read.exit9.i.thread ], [ %4, %MI11rf_xpr_read.exit9.i ]
  %sub.i26.in = add nsw i32 %shl.i.i, -4, !dbg !251
  %sub.i26 = add i32 %sub.i26.in, %.pn, !dbg !252
  call void @llvm.br.anyint.i32(i32 %sub.i26, i1 true), !dbg !253
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !255

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !257 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !258
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !260
  %0 = ashr i13 %call.i.i, 1, !dbg !263
  %conv1.i.i = sext i13 %0 to i32, !dbg !264
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !265
  %conv.i.i = and i32 1, 31, !dbg !267
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !270
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !270
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !271
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i.i, !dbg !272

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit9.i, !dbg !273

MI11rf_xpr_read.exit9.i:                          ; preds = %if.then.i.i, %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !274
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !275
  %sub.i = add i32 %add.i, %3, !dbg !276
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !277
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !280 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !281
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !283
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !285
  %0 = ashr i13 %call.i.i, 1, !dbg !288
  %conv1.i.i = sext i13 %0 to i32, !dbg !289
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !290
  %conv.i.i = and i32 1, 31, !dbg !292
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !295
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !295
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !296
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !297

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !298

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !299
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !301
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !301
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !302
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !303

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !304

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !305
  %cmp21.i = icmp ult i32 %storemerge, %storemerge4, !dbg !306
  br i1 %cmp21.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !307

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !308
  %sub.i = add i32 %add.i, %5, !dbg !309
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !310
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !312

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !313
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_btype_branches__opc_blt__x_0__x_0__relative_addr12__() local_unnamed_addr #3 !dbg !314 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !315
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !318 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !319
  %conv.i3.i = and i32 1, 31, !dbg !321
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !324
  %1 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !324
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !325
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !326

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !327
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !328

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !327
  %cmp9.i = icmp sgt i32 %1, 0, !dbg !329
  br i1 %cmp9.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !328

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !330
  %4 = ashr i13 %call.i.i, 1, !dbg !333
  %conv1.i.i = sext i13 %4 to i32, !dbg !334
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !335
  %add.i = add i32 %3, -4, !dbg !337
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !338
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !339
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !341

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !343 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !344
  %conv.i.i = and i32 1, 31, !dbg !346
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !349
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !349
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !350
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !351

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !352
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !353

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !352
  %cmp9.i = icmp slt i32 %1, 0, !dbg !354
  br i1 %cmp9.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !353

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !355
  %4 = ashr i13 %call.i.i, 1, !dbg !358
  %conv1.i.i = sext i13 %4 to i32, !dbg !359
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !360
  %add.i = add i32 %3, -4, !dbg !362
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !363
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !364
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !366

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !368 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !369
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !371
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !373
  %0 = ashr i13 %call.i.i, 1, !dbg !376
  %conv1.i.i = sext i13 %0 to i32, !dbg !377
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !378
  %conv.i.i = and i32 1, 31, !dbg !380
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !383
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !383
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !384
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !385

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !386

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !387
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !389
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !389
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !390
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !391

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !392

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !393
  %cmp9.i = icmp slt i32 %storemerge, %storemerge4, !dbg !394
  br i1 %cmp9.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !395

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !396
  %sub.i = add i32 %add.i, %5, !dbg !397
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !398
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !400

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !401
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__() local_unnamed_addr #3 !dbg !402 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !403
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !406 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !407
  %conv.i3.i = and i32 1, 31, !dbg !409
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !412
  %1 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !412
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !413
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !414

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !415
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !416

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !415
  %cmp17.i = icmp eq i32 %1, 0, !dbg !417
  br i1 %cmp17.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !416

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !418
  %4 = ashr i13 %call.i.i, 1, !dbg !421
  %conv1.i.i = sext i13 %4 to i32, !dbg !422
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !423
  %add.i = add i32 %3, -4, !dbg !425
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !426
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !427
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !429

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !431 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !432
  %conv.i.i = and i32 1, 31, !dbg !434
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !437
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !437
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !438
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i.i, !dbg !439

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit9.i, !dbg !440

MI11rf_xpr_read.exit9.i:                          ; preds = %if.then.i.i, %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !443 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !444
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !446
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !448
  %0 = ashr i13 %call.i.i, 1, !dbg !451
  %conv1.i.i = sext i13 %0 to i32, !dbg !452
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !453
  %conv.i.i = and i32 1, 31, !dbg !455
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !458
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !458
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !459
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !460

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !461

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !462
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !464
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !464
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !465
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !466

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !467

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !468
  %cmp17.i = icmp ult i32 %storemerge, %storemerge4, !dbg !469
  br i1 %cmp17.i, label %if.then.i, label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !470

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !471
  %sub.i = add i32 %add.i, %5, !dbg !472
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !473
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !475

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !476
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_btype_branches__opc_bne__x_0__x_0__relative_addr12__() local_unnamed_addr #3 !dbg !477 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !478
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !481 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !482
  %conv.i3.i = and i32 1, 31, !dbg !484
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !487
  %1 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !487
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !488
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !489

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !490
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !491

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !490
  %cmp5.i = icmp eq i32 %1, 0, !dbg !492
  br i1 %cmp5.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !491

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !493
  %4 = ashr i13 %call.i.i, 1, !dbg !496
  %conv1.i.i = sext i13 %4 to i32, !dbg !497
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !498
  %add.i = add i32 %3, -4, !dbg !500
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !501
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !502
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !504

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__() local_unnamed_addr #2 !dbg !506 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !507
  %conv.i.i = and i32 1, 31, !dbg !509
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !512
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !512
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !513
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit9.i.thread, label %MI11rf_xpr_read.exit9.i, !dbg !514

MI11rf_xpr_read.exit9.i.thread:                   ; preds = %entry
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !515
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !516

MI11rf_xpr_read.exit9.i:                          ; preds = %entry
  %3 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !515
  %cmp5.i = icmp eq i32 %1, 0, !dbg !517
  br i1 %cmp5.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !516

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %call.i.i = tail call i13 @codasip_immread_int13(i32 1) #5, !dbg !518
  %4 = ashr i13 %call.i.i, 1, !dbg !521
  %conv1.i.i = sext i13 %4 to i32, !dbg !522
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !523
  %add.i = add i32 %3, -4, !dbg !525
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !526
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !527
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !529

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i.thread, %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__() local_unnamed_addr #2 !dbg !531 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !532
  %call.i3 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !534
  %call.i.i = tail call i13 @codasip_immread_int13(i32 2) #5, !dbg !536
  %0 = ashr i13 %call.i.i, 1, !dbg !539
  %conv1.i.i = sext i13 %0 to i32, !dbg !540
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !541
  %conv.i.i = and i32 1, 31, !dbg !543
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !546
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !546
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !547
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !548

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !549

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv.i3.i = and i32 2, 31, !dbg !550
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !552
  %4 = load volatile i32, i32* %arrayidx.i6.i, align 4, !dbg !552
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !553
  br i1 %cmp.i4.i, label %MI11rf_xpr_read.exit9.i, label %if.then.i7.i, !dbg !554

if.then.i7.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11rf_xpr_read.exit9.i, !dbg !555

MI11rf_xpr_read.exit9.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i7.i
  %storemerge4 = phi i32 [ %4, %if.then.i7.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %5 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !556
  %cmp5.i = icmp eq i32 %storemerge, %storemerge4, !dbg !557
  br i1 %cmp5.i, label %MI16i_btype_branchesIH1_13default_start.exit, label %if.then.i, !dbg !558

if.then.i:                                        ; preds = %MI11rf_xpr_read.exit9.i
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !559
  %sub.i = add i32 %add.i, %5, !dbg !560
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !561
  br label %MI16i_btype_branchesIH1_13default_start.exit, !dbg !563

MI16i_btype_branchesIH1_13default_start.exit:     ; preds = %MI11rf_xpr_read.exit9.i, %if.then.i
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_call_alias__relative_addr20__() local_unnamed_addr #2 !dbg !565 {
entry:
  %call.i.i = tail call i21 @codasip_immread_int21(i32 0) #5, !dbg !566
  %0 = ashr i21 %call.i.i, 1, !dbg !571
  %conv1.i.i = sext i21 %0 to i32, !dbg !572
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !573
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !576
  call void @llvm.regwrite.anyint.i32(i32 0, i32 1, i32 %1, i1 true), !dbg !579
  %2 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !582
  %add.i = add nsw i32 %shl.i.i, -4, !dbg !585
  %sub.i = add i32 %add.i, %2, !dbg !586
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !587
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_call_reg_alias__simm12__x_0__() local_unnamed_addr #2 !dbg !590 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !591
  call void @llvm.regwrite.anyint.i32(i32 0, i32 1, i32 %0, i1 true), !dbg !595
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !597
  %conv2.i = sext i12 %call.i.i to i32, !dbg !602
  %and.i = and i32 %conv2.i, -4, !dbg !603
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !604
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_call_reg_alias__simm12__xpr_general__() local_unnamed_addr #2 !dbg !607 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !608
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !611
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !613
  call void @llvm.regwrite.anyint.i32(i32 0, i32 1, i32 %0, i1 true), !dbg !616
  %conv.i.i = and i32 1, 31, !dbg !618
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !620
  %2 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !620
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !621
  br i1 %cmp.i.i, label %MI16i_call_reg_aliasIH1_13default_start.exit, label %if.then.i.i, !dbg !622

if.then.i.i:                                      ; preds = %entry
  br label %MI16i_call_reg_aliasIH1_13default_start.exit, !dbg !623

MI16i_call_reg_aliasIH1_13default_start.exit:     ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %2, %if.then.i.i ], [ 0, %entry ]
  %conv2.i = sext i12 %call.i.i to i32, !dbg !624
  %add.i = add i32 %storemerge, %conv2.i, !dbg !625
  %and.i = and i32 %add.i, -4, !dbg !626
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !627
  ret void, !dbg !629
}

; Function Attrs: noinline readnone
define dso_local void @i_halt__opc_halt__() local_unnamed_addr #4 !dbg !630 {
entry:
  tail call void (...) @codasip_compiler_unused() #7
  tail call void (...) @codasip_halt() #7
  ret void, !dbg !631
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_addi__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_addi__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !634 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !635
  %conv.i.i = and i32 1, 31, !dbg !637
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !643
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !643
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !644
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !645

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !646

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_addi__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !648 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !649
  %conv.i1.i = and i32 1, 31, !dbg !651
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !654
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !655

if.then.i5.i:                                     ; preds = %entry
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !656
  %conv1.i = sext i12 %call.i.i to i32, !dbg !659
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !660
  store volatile i32 %conv1.i, i32* %arrayidx.i4.i, align 4, !dbg !661
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !662

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !664 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !665
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !667
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !669
  %conv.i.i = and i32 2, 31, !dbg !672
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !675
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !675
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !676
  br i1 %cmp.i.i, label %sw.bb.i, label %if.then.i.i, !dbg !677

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb.i, !dbg !678

sw.bb.i:                                          ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !679
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !681
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !682

if.then.i5.i:                                     ; preds = %sw.bb.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !683
  %add.i = add i32 %storemerge, %conv1.i, !dbg !684
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !685
  store volatile i32 %add.i, i32* %arrayidx.i4.i, align 4, !dbg !686
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !687

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb.i, %if.then.i5.i
  ret void, !dbg !688
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_andi__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_andi__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !691 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !692
  %conv.i.i = and i32 1, 31, !dbg !694
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !697
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !697
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !698
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !699

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !700

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_andi__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !702 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !703
  %conv.i1.i = and i32 1, 31, !dbg !705
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !708
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !709

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !710
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !711
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !712

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !714 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !715
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !717
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !719
  %conv.i.i = and i32 2, 31, !dbg !722
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !725
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !725
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !726
  br i1 %cmp.i.i, label %sw.bb12.i, label %if.then.i.i, !dbg !727

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb12.i, !dbg !728

sw.bb12.i:                                        ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !729
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !731
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !732

if.then.i5.i:                                     ; preds = %sw.bb12.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !733
  %and.i = and i32 %storemerge, %conv1.i, !dbg !734
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !735
  store volatile i32 %and.i, i32* %arrayidx.i4.i, align 4, !dbg !736
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !737

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb12.i, %if.then.i5.i
  ret void, !dbg !738
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_ori__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !739 {
entry:
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_ori__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !741 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !742
  %conv.i.i = and i32 1, 31, !dbg !744
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !747
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !747
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !748
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !749

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !750

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_ori__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !752 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !753
  %conv.i1.i = and i32 1, 31, !dbg !755
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !758
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !759

if.then.i5.i:                                     ; preds = %entry
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !760
  %conv1.i = sext i12 %call.i.i to i32, !dbg !763
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !764
  store volatile i32 %conv1.i, i32* %arrayidx.i4.i, align 4, !dbg !765
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !766

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !768 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !769
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !771
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !773
  %conv.i.i = and i32 2, 31, !dbg !776
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !779
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !779
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !780
  br i1 %cmp.i.i, label %sw.bb11.i, label %if.then.i.i, !dbg !781

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb11.i, !dbg !782

sw.bb11.i:                                        ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !783
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !785
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !786

if.then.i5.i:                                     ; preds = %sw.bb11.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !787
  %or.i = or i32 %storemerge, %conv1.i, !dbg !788
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !789
  store volatile i32 %or.i, i32* %arrayidx.i4.i, align 4, !dbg !790
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !791

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb11.i, %if.then.i5.i
  ret void, !dbg !792
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_slti__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_slti__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !795 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !796
  %conv.i.i = and i32 1, 31, !dbg !798
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !801
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !801
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !802
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !803

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !804

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_slti__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !806 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !807
  %conv.i1.i = and i32 1, 31, !dbg !809
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !812
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !813

if.then.i5.i:                                     ; preds = %entry
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !814
  %conv1.i = sext i12 %call.i.i to i32, !dbg !817
  %cmp.i = icmp sgt i32 %conv1.i, 0, !dbg !818
  %. = zext i1 %cmp.i to i32
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !819
  store volatile i32 %., i32* %arrayidx.i4.i, align 4, !dbg !820
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !821

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !823 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !824
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !826
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !828
  %conv.i.i = and i32 2, 31, !dbg !831
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !834
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !834
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !835
  br i1 %cmp.i.i, label %sw.bb2.i, label %if.then.i.i, !dbg !836

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb2.i, !dbg !837

sw.bb2.i:                                         ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !838
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !840
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !841

if.then.i5.i:                                     ; preds = %sw.bb2.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !842
  %cmp.i = icmp slt i32 %storemerge, %conv1.i, !dbg !843
  %. = zext i1 %cmp.i to i32
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !844
  store volatile i32 %., i32* %arrayidx.i4.i, align 4, !dbg !845
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !846

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb2.i, %if.then.i5.i
  ret void, !dbg !847
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_sltiu__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !848 {
entry:
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !850 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !851
  %conv.i.i = and i32 1, 31, !dbg !853
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !856
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !856
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !857
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !858

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !859

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !861 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !862
  %conv.i1.i = and i32 1, 31, !dbg !864
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !867
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !868

if.then.i5.i:                                     ; preds = %entry
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !869
  %conv1.i = sext i12 %call.i.i to i32, !dbg !872
  %cmp5.i = icmp ne i32 %conv1.i, 0, !dbg !873
  %.4 = zext i1 %cmp5.i to i32
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !874
  store volatile i32 %.4, i32* %arrayidx.i4.i, align 4, !dbg !875
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !876

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !877
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !878 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !879
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !881
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !883
  %conv.i.i = and i32 2, 31, !dbg !886
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !889
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !889
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !890
  br i1 %cmp.i.i, label %sw.bb4.i, label %if.then.i.i, !dbg !891

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb4.i, !dbg !892

sw.bb4.i:                                         ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !893
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !895
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !896

if.then.i5.i:                                     ; preds = %sw.bb4.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !897
  %cmp5.i = icmp ult i32 %storemerge, %conv1.i, !dbg !898
  %.6 = zext i1 %cmp5.i to i32
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !899
  store volatile i32 %.6, i32* %arrayidx.i4.i, align 4, !dbg !900
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !901

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb4.i, %if.then.i5.i
  ret void, !dbg !902
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_itype_alu__opc_xori__x_0__x_0__simm12__() local_unnamed_addr #3 !dbg !903 {
entry:
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_xori__x_0__xpr_general__simm12__() local_unnamed_addr #2 !dbg !905 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !906
  %conv.i.i = and i32 1, 31, !dbg !908
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !911
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !911
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !912
  br i1 %cmp.i.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !913

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !914

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %if.then.i.i, %entry
  ret void, !dbg !915
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_xori__xpr_general__x_0__simm12__() local_unnamed_addr #2 !dbg !916 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !917
  %conv.i1.i = and i32 1, 31, !dbg !919
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !922
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !923

if.then.i5.i:                                     ; preds = %entry
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !924
  %conv1.i = sext i12 %call.i.i to i32, !dbg !927
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !928
  store volatile i32 %conv1.i, i32* %arrayidx.i4.i, align 4, !dbg !929
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !930

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__() local_unnamed_addr #2 !dbg !932 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !933
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !935
  %call.i.i = tail call i12 @codasip_immread_int12(i32 2) #5, !dbg !937
  %conv.i.i = and i32 2, 31, !dbg !940
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !943
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !943
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !944
  br i1 %cmp.i.i, label %sw.bb10.i, label %if.then.i.i, !dbg !945

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb10.i, !dbg !946

sw.bb10.i:                                        ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !947
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !949
  br i1 %cmp.i2.i, label %MI11i_itype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !950

if.then.i5.i:                                     ; preds = %sw.bb10.i
  %conv1.i = sext i12 %call.i.i to i32, !dbg !951
  %xor.i = xor i32 %storemerge, %conv1.i, !dbg !952
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !953
  store volatile i32 %xor.i, i32* %arrayidx.i4.i, align 4, !dbg !954
  br label %MI11i_itype_aluIH1_13default_start.exit, !dbg !955

MI11i_itype_aluIH1_13default_start.exit:          ; preds = %sw.bb10.i, %if.then.i5.i
  ret void, !dbg !956
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_jlreg__opc_jalr__x_0__simm12__x_0__() local_unnamed_addr #2 !dbg !957 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !958
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !962
  %conv2.i = sext i12 %call.i.i to i32, !dbg !965
  %and.i = and i32 %conv2.i, -2, !dbg !966
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !967
  ret void, !dbg !969
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__() local_unnamed_addr #2 !dbg !970 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !971
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !974
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !976
  %conv.i1.i = and i32 1, 31, !dbg !979
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !981
  %2 = load volatile i32, i32* %arrayidx.i4.i, align 4, !dbg !981
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !982
  br i1 %cmp.i2.i, label %MI12rf_xpr_write.exit.i, label %if.then.i5.i, !dbg !983

if.then.i5.i:                                     ; preds = %entry
  br label %MI12rf_xpr_write.exit.i, !dbg !984

MI12rf_xpr_write.exit.i:                          ; preds = %if.then.i5.i, %entry
  %storemerge = phi i32 [ %2, %if.then.i5.i ], [ 0, %entry ]
  %conv2.i = sext i12 %call.i.i to i32, !dbg !985
  %add.i = add i32 %storemerge, %conv2.i, !dbg !986
  %and.i = and i32 %add.i, -2, !dbg !987
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !988
  ret void, !dbg !990
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__() local_unnamed_addr #2 !dbg !991 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !992
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !994
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !997
  %conv2.i = sext i12 %call.i.i to i32, !dbg !1000
  %and.i = and i32 %conv2.i, -2, !dbg !1001
  %conv.i.i = and i32 1, 31, !dbg !1002
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1004
  br i1 %cmp.i.i, label %MI12rf_xpr_write.exit.i, label %if.then.i.i, !dbg !1005

if.then.i.i:                                      ; preds = %entry
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1006
  store volatile i32 %0, i32* %arrayidx.i.i, align 4, !dbg !1007
  br label %MI12rf_xpr_write.exit.i, !dbg !1008

MI12rf_xpr_write.exit.i:                          ; preds = %entry, %if.then.i.i
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !1009
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__() local_unnamed_addr #2 !dbg !1012 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1013
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1015
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1018
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !1020
  %conv.i1.i = and i32 2, 31, !dbg !1023
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1025
  %2 = load volatile i32, i32* %arrayidx.i4.i, align 4, !dbg !1025
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1026
  br i1 %cmp.i2.i, label %MI11rf_xpr_read.exit.i, label %if.then.i5.i, !dbg !1027

if.then.i5.i:                                     ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1028

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i5.i
  %storemerge = phi i32 [ %2, %if.then.i5.i ], [ 0, %entry ]
  %conv2.i = sext i12 %call.i.i to i32, !dbg !1029
  %add.i = add i32 %storemerge, %conv2.i, !dbg !1030
  %and.i = and i32 %add.i, -2, !dbg !1031
  %conv.i.i = and i32 1, 31, !dbg !1032
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1034
  br i1 %cmp.i.i, label %MI12rf_xpr_write.exit.i, label %if.then.i.i, !dbg !1035

if.then.i.i:                                      ; preds = %MI11rf_xpr_read.exit.i
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1036
  store volatile i32 %0, i32* %arrayidx.i.i, align 4, !dbg !1037
  br label %MI12rf_xpr_write.exit.i, !dbg !1038

MI12rf_xpr_write.exit.i:                          ; preds = %MI11rf_xpr_read.exit.i, %if.then.i.i
  call void @llvm.br.anyint.i32(i32 %and.i, i1 true), !dbg !1039
  ret void, !dbg !1041
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lb__x_0__simm12__x_0__() local_unnamed_addr #4 !dbg !1042 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1043
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1046
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1049
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !1050
  %0 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1050
  ret void, !dbg !1055
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lb__x_0__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1056 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1057
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1060
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1062
  %conv.i.i = and i32 1, 31, !dbg !1064
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1066
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1066
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1067
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1068

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1069

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1070
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1071
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !1072
  %2 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1072
  ret void, !dbg !1075
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lb__xpr_general__simm12__x_0__() local_unnamed_addr #4 !dbg !1076 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1077
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1079
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1082
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1084
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !1085
  %0 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1085
  %conv.i1.i = and i32 1, 31, !dbg !1088
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1090
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1091

if.then.i5.i:                                     ; preds = %entry
  %conv6.i.i = sext i8 %0 to i32, !dbg !1092
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1093
  store volatile i32 %conv6.i.i, i32* %arrayidx.i4.i, align 4, !dbg !1094
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1095

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1096
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1097 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1098
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1100
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1103
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1105
  %conv.i.i = and i32 2, 31, !dbg !1107
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1109
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1109
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1110
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1111

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1112

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1113
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1114
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !1115
  %2 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1115
  %conv.i1.i = and i32 1, 31, !dbg !1118
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1120
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1121

if.then.i5.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %conv6.i.i = sext i8 %2 to i32, !dbg !1122
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1123
  store volatile i32 %conv6.i.i, i32* %arrayidx.i4.i, align 4, !dbg !1124
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1125

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %MI11rf_xpr_read.exit.i, %if.then.i5.i
  ret void, !dbg !1126
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lbu__x_0__simm12__x_0__() local_unnamed_addr #4 !dbg !1127 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1128
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1131
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1133
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !1134
  %0 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1134
  ret void, !dbg !1137
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lbu__x_0__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1138 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1139
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1142
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1144
  %conv.i.i = and i32 1, 31, !dbg !1146
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1148
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1148
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1149
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1150

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1151

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1152
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1153
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !1154
  %2 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1154
  ret void, !dbg !1157
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lbu__xpr_general__simm12__x_0__() local_unnamed_addr #4 !dbg !1158 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1159
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1161
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1164
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1166
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !1167
  %0 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1167
  %conv.i1.i = and i32 1, 31, !dbg !1170
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1172
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1173

if.then.i5.i:                                     ; preds = %entry
  %extract.t = zext i8 %0 to i32, !dbg !1174
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1175
  store volatile i32 %extract.t, i32* %arrayidx.i4.i, align 4, !dbg !1176
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1177

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1178
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1179 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1180
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1182
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1185
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1187
  %conv.i.i = and i32 2, 31, !dbg !1189
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1191
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1191
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1192
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1193

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1194

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1195
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1196
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !1197
  %2 = load volatile i8, i8* %arrayidx.i.i.i, align 1, !dbg !1197
  %conv.i1.i = and i32 1, 31, !dbg !1200
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1202
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1203

if.then.i5.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %extract.t = zext i8 %2 to i32, !dbg !1204
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1205
  store volatile i32 %extract.t, i32* %arrayidx.i4.i, align 4, !dbg !1206
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1207

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %MI11rf_xpr_read.exit.i, %if.then.i5.i
  ret void, !dbg !1208
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lh__x_0__simm12__x_0__() local_unnamed_addr #4 !dbg !1209 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1210
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1213
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1215
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !1216
  %0 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1216
  ret void, !dbg !1219
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lh__x_0__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1220 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1221
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1224
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1226
  %conv.i.i = and i32 1, 31, !dbg !1228
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1230
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1230
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1231
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1232

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1233

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1234
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1235
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !1236
  %2 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1236
  ret void, !dbg !1239
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lh__xpr_general__simm12__x_0__() local_unnamed_addr #4 !dbg !1240 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1241
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1243
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1246
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1248
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !1249
  %0 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1249
  %conv.i1.i = and i32 1, 31, !dbg !1252
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1254
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1255

if.then.i5.i:                                     ; preds = %entry
  %conv9.i.i = sext i16 %0 to i32, !dbg !1256
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1257
  store volatile i32 %conv9.i.i, i32* %arrayidx.i4.i, align 4, !dbg !1258
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1259

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1260
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1261 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1262
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1264
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1267
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1269
  %conv.i.i = and i32 2, 31, !dbg !1271
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1273
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1273
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1274
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1275

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1276

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1277
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1278
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !1279
  %2 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1279
  %conv.i1.i = and i32 1, 31, !dbg !1282
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1284
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1285

if.then.i5.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %conv9.i.i = sext i16 %2 to i32, !dbg !1286
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1287
  store volatile i32 %conv9.i.i, i32* %arrayidx.i4.i, align 4, !dbg !1288
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1289

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %MI11rf_xpr_read.exit.i, %if.then.i5.i
  ret void, !dbg !1290
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lhu__x_0__simm12__x_0__() local_unnamed_addr #4 !dbg !1291 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1292
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1295
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1297
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !1298
  %0 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1298
  ret void, !dbg !1301
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lhu__x_0__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1302 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1303
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1306
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1308
  %conv.i.i = and i32 1, 31, !dbg !1310
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1312
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1312
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1313
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1314

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1315

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1316
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1317
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !1318
  %2 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1318
  ret void, !dbg !1321
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lhu__xpr_general__simm12__x_0__() local_unnamed_addr #4 !dbg !1322 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1323
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1325
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1328
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1330
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !1331
  %0 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1331
  %conv.i1.i = and i32 1, 31, !dbg !1334
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1336
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1337

if.then.i5.i:                                     ; preds = %entry
  %extract.t18 = zext i16 %0 to i32, !dbg !1338
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1339
  store volatile i32 %extract.t18, i32* %arrayidx.i4.i, align 4, !dbg !1340
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1341

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1342
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1343 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1344
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1346
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1349
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1351
  %conv.i.i = and i32 2, 31, !dbg !1353
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1355
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1355
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1356
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1357

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1358

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1359
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1360
  %arrayidx3.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !1361
  %2 = load volatile i16, i16* %arrayidx3.i.i.i, align 2, !dbg !1361
  %conv.i1.i = and i32 1, 31, !dbg !1364
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1366
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1367

if.then.i5.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %extract.t20 = zext i16 %2 to i32, !dbg !1368
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1369
  store volatile i32 %extract.t20, i32* %arrayidx.i4.i, align 4, !dbg !1370
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1371

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %MI11rf_xpr_read.exit.i, %if.then.i5.i
  ret void, !dbg !1372
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lw__x_0__simm12__x_0__() local_unnamed_addr #4 !dbg !1373 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1374
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1377
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1379
  %arrayidx11.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %conv1.i, !dbg !1380
  %0 = load volatile i32, i32* %arrayidx11.i.i.i, align 4, !dbg !1380
  ret void, !dbg !1383
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lw__x_0__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1384 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !1385
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1388
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1390
  %conv.i.i = and i32 1, 31, !dbg !1392
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1394
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1394
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1395
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1396

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1397

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1398
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1399
  %arrayidx11.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %add.i, !dbg !1400
  %2 = load volatile i32, i32* %arrayidx11.i.i.i, align 4, !dbg !1400
  ret void, !dbg !1403
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lw__xpr_general__simm12__x_0__() local_unnamed_addr #4 !dbg !1404 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1405
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1407
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1410
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1412
  %arrayidx11.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %conv1.i, !dbg !1413
  %0 = load volatile i32, i32* %arrayidx11.i.i.i, align 4, !dbg !1413
  %conv.i1.i = and i32 1, 31, !dbg !1416
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1418
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1419

if.then.i5.i:                                     ; preds = %entry
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !1420
  store volatile i32 %0, i32* %arrayidx.i4.i, align 4, !dbg !1421
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1422

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1423
}

; Function Attrs: noinline readnone
define dso_local void @i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__() local_unnamed_addr #4 !dbg !1424 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1425
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !1427
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1430
  tail call void @codasip_compiler_schedule_class(i32 0) #7, !dbg !1432
  %conv.i.i = and i32 2, 31, !dbg !1434
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1436
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1436
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1437
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1438

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1439

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !1440
  %add.i = add i32 %storemerge, %conv1.i, !dbg !1441
  %arrayidx11.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %add.i, !dbg !1442
  %2 = load volatile i32, i32* %arrayidx11.i.i.i, align 4, !dbg !1442
  %conv.i1.i = and i32 1, 31, !dbg !1445
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1447
  br i1 %cmp.i2.i, label %MI13i_itype_loadsIH1_13default_start.exit, label %if.then.i5.i, !dbg !1448

if.then.i5.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %3 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %3, !dbg !1449
  store volatile i32 %2, i32* %arrayidx.i4.i, align 4, !dbg !1450
  br label %MI13i_itype_loadsIH1_13default_start.exit, !dbg !1451

MI13i_itype_loadsIH1_13default_start.exit:        ; preds = %MI11rf_xpr_read.exit.i, %if.then.i5.i
  ret void, !dbg !1452
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_jal_abs_calias__opc_jal__x_0__relative_addr20__() local_unnamed_addr #2 !dbg !1453 {
entry:
  %call.i.i = tail call i21 @codasip_immread_int21(i32 0) #5, !dbg !1454
  %0 = ashr i21 %call.i.i, 1, !dbg !1457
  %conv1.i.i = sext i21 %0 to i32, !dbg !1458
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !1459
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !1461
  call void @llvm.br.anyint.i32(i32 %shl.i.i, i1 true), !dbg !1465
  ret void, !dbg !1467
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__() local_unnamed_addr #2 !dbg !1468 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1469
  %call.i.i = tail call i21 @codasip_immread_int21(i32 1) #5, !dbg !1471
  %0 = ashr i21 %call.i.i, 1, !dbg !1474
  %conv1.i.i = sext i21 %0 to i32, !dbg !1475
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !1476
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !1478
  %conv.i.i = and i32 1, 31, !dbg !1481
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1483
  br i1 %cmp.i.i, label %MI16i_jal_abs_caliasIH1_13default_start.exit, label %if.then.i.i, !dbg !1484

if.then.i.i:                                      ; preds = %entry
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1485
  store volatile i32 %1, i32* %arrayidx.i.i, align 4, !dbg !1486
  br label %MI16i_jal_abs_caliasIH1_13default_start.exit, !dbg !1487

MI16i_jal_abs_caliasIH1_13default_start.exit:     ; preds = %entry, %if.then.i.i
  call void @llvm.br.anyint.i32(i32 %shl.i.i, i1 true), !dbg !1488
  ret void, !dbg !1490
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_jtype_jlink__opc_jal__x_0__relative_addr20__() local_unnamed_addr #2 !dbg !1491 {
entry:
  %call.i.i = tail call i21 @codasip_immread_int21(i32 0) #5, !dbg !1492
  %0 = ashr i21 %call.i.i, 1, !dbg !1495
  %conv1.i.i = sext i21 %0 to i32, !dbg !1496
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !1497
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !1499
  %add.i = add i32 %1, -4, !dbg !1503
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !1504
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !1505
  ret void, !dbg !1507
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_jtype_jlink__opc_jal__xpr_general__relative_addr20__() local_unnamed_addr #2 !dbg !1508 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1509
  %call.i.i = tail call i21 @codasip_immread_int21(i32 1) #5, !dbg !1511
  %0 = ashr i21 %call.i.i, 1, !dbg !1514
  %conv1.i.i = sext i21 %0 to i32, !dbg !1515
  %shl.i.i = shl nsw i32 %conv1.i.i, 1, !dbg !1516
  %1 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !1518
  %conv.i.i = and i32 1, 31, !dbg !1521
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1523
  br i1 %cmp.i.i, label %MI12rf_xpr_write.exit.i, label %if.then.i.i, !dbg !1524

if.then.i.i:                                      ; preds = %entry
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1525
  store volatile i32 %1, i32* %arrayidx.i.i, align 4, !dbg !1526
  br label %MI12rf_xpr_write.exit.i, !dbg !1527

MI12rf_xpr_write.exit.i:                          ; preds = %entry, %if.then.i.i
  %add.i = add i32 %1, -4, !dbg !1528
  %sub.i = add i32 %add.i, %shl.i.i, !dbg !1529
  call void @llvm.br.anyint.i32(i32 %sub.i, i1 true), !dbg !1530
  ret void, !dbg !1532
}

; Function Attrs: noinline readnone
define dso_local void @i_nop_alias__() local_unnamed_addr #4 !dbg !1533 {
entry:
  tail call void (...) @codasip_nop() #7
  ret void, !dbg !1534
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_ret_alias__() local_unnamed_addr #3 !dbg !1535 {
entry:
  %0 = call i32 @llvm.regread.anyint.i32(i32 0, i32 1), !dbg !1536
  call void @llvm.br.anyint.i32(i32 %0, i1 true), !dbg !1540
  ret void, !dbg !1542
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_add__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !1543 {
entry:
  ret void, !dbg !1544
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1545 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1546
  %conv.i8.i = and i32 1, 31, !dbg !1548
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1552
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1552
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1553
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1554

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1555

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !1556
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1557 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1558
  %conv.i.i = and i32 1, 31, !dbg !1560
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1563
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1563
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1564
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !1565

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1566

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !1567
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1568 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1569
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1571
  %conv.i.i = and i32 1, 31, !dbg !1573
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1576
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1576
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1577
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1578

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1579

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !1580
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1582
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1582
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1583
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1584

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1585

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !1586
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !1587 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1588
  %conv.i1.i = and i32 1, 31, !dbg !1590
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1593
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1594

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1595
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1596
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1597

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1598
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1599 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1600
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1602
  %conv.i8.i = and i32 2, 31, !dbg !1604
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1607
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1607
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1608
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !1609

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !1610

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %storemerge3 = phi i32 [ %1, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !1611
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1613
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1614

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1615
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !1616
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1617

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1618
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1619 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1620
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1622
  %conv.i.i = and i32 2, 31, !dbg !1624
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1627
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1627
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1628
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !1629

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !1630

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !1631
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1633
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1634

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1635
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !1636
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1637

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1638
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1639 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1640
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1642
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1644
  %conv.i.i = and i32 2, 31, !dbg !1646
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1649
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1649
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1650
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1651

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1652

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !1653
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1655
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1655
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1656
  br i1 %cmp.i9.i, label %sw.bb.i, label %if.then.i12.i, !dbg !1657

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb.i, !dbg !1658

sw.bb.i:                                          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !1659
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1661
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1662

if.then.i5.i:                                     ; preds = %sw.bb.i
  %add.i = add i32 %storemerge5, %storemerge, !dbg !1663
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !1664
  store volatile i32 %add.i, i32* %arrayidx.i4.i, align 4, !dbg !1665
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1666

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb.i, %if.then.i5.i
  ret void, !dbg !1667
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_and__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !1668 {
entry:
  ret void, !dbg !1669
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1670 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1671
  %conv.i8.i = and i32 1, 31, !dbg !1673
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1676
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1676
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1677
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1678

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1679

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !1680
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1681 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1682
  %conv.i.i = and i32 1, 31, !dbg !1684
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1687
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1687
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1688
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !1689

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1690

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !1691
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1692 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1693
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1695
  %conv.i.i = and i32 1, 31, !dbg !1697
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1700
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1700
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1701
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1702

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1703

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !1704
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1706
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1706
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1707
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1708

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1709

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !1710
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !1711 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1712
  %conv.i1.i = and i32 1, 31, !dbg !1714
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1717
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1718

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1719
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1720
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1721

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1722
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1723 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1724
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1726
  %conv.i8.i = and i32 2, 31, !dbg !1728
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1731
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1731
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1732
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !1733

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !1734

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %conv.i1.i = and i32 1, 31, !dbg !1735
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1737
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1738

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1739
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1740
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1741

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1742
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1743 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1744
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1746
  %conv.i.i = and i32 2, 31, !dbg !1748
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1751
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1751
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1752
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !1753

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !1754

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %conv.i1.i = and i32 1, 31, !dbg !1755
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1757
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1758

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1759
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1760
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1761

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1762
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1763 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1764
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1766
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1768
  %conv.i.i = and i32 2, 31, !dbg !1770
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1773
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1773
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1774
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1775

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1776

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !1777
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1779
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1779
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1780
  br i1 %cmp.i9.i, label %sw.bb21.i, label %if.then.i12.i, !dbg !1781

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb21.i, !dbg !1782

sw.bb21.i:                                        ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !1783
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1785
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1786

if.then.i5.i:                                     ; preds = %sw.bb21.i
  %and.i = and i32 %storemerge5, %storemerge, !dbg !1787
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !1788
  store volatile i32 %and.i, i32* %arrayidx.i4.i, align 4, !dbg !1789
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1790

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb21.i, %if.then.i5.i
  ret void, !dbg !1791
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_or__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !1792 {
entry:
  ret void, !dbg !1793
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1794 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1795
  %conv.i8.i = and i32 1, 31, !dbg !1797
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1800
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1800
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1801
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1802

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1803

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !1804
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1805 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1806
  %conv.i.i = and i32 1, 31, !dbg !1808
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1811
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1811
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1812
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !1813

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1814

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !1815
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1816 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1817
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1819
  %conv.i.i = and i32 1, 31, !dbg !1821
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1824
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1824
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1825
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1826

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1827

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !1828
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1830
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1830
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1831
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1832

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1833

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !1834
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !1835 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1836
  %conv.i1.i = and i32 1, 31, !dbg !1838
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1841
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1842

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1843
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1844
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1845

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1846
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1847 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1848
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1850
  %conv.i8.i = and i32 2, 31, !dbg !1852
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1855
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1855
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1856
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !1857

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !1858

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %storemerge3 = phi i32 [ %1, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !1859
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1861
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1862

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1863
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !1864
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1865

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1866
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1867 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1868
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1870
  %conv.i.i = and i32 2, 31, !dbg !1872
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1875
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1875
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1876
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !1877

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !1878

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !1879
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1881
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1882

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1883
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !1884
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1885

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1886
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1887 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1888
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1890
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !1892
  %conv.i.i = and i32 2, 31, !dbg !1894
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1897
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1897
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1898
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1899

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1900

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !1901
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1903
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1903
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1904
  br i1 %cmp.i9.i, label %sw.bb20.i, label %if.then.i12.i, !dbg !1905

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb20.i, !dbg !1906

sw.bb20.i:                                        ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !1907
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1909
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1910

if.then.i5.i:                                     ; preds = %sw.bb20.i
  %or.i = or i32 %storemerge5, %storemerge, !dbg !1911
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !1912
  store volatile i32 %or.i, i32* %arrayidx.i4.i, align 4, !dbg !1913
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1914

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb20.i, %if.then.i5.i
  ret void, !dbg !1915
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !1916 {
entry:
  ret void, !dbg !1917
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1918 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1919
  %conv.i8.i = and i32 1, 31, !dbg !1921
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1924
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1924
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1925
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1926

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1927

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !1928
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1929 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1930
  %conv.i.i = and i32 1, 31, !dbg !1932
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1935
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1935
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1936
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !1937

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1938

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !1939
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !1940 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1941
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1943
  %conv.i.i = and i32 1, 31, !dbg !1945
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1948
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1948
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !1949
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !1950

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !1951

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !1952
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1954
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1954
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1955
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !1956

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1957

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !1958
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !1959 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1960
  %conv.i1.i = and i32 1, 31, !dbg !1962
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1965
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1966

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1967
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1968
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1969

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !1970
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !1971 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1972
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1974
  %conv.i8.i = and i32 2, 31, !dbg !1976
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1979
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !1979
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !1980
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !1981

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !1982

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %conv.i1.i = and i32 1, 31, !dbg !1983
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !1985
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !1986

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !1987
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !1988
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !1989

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !1990
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !1991 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !1992
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !1994
  %conv.i.i = and i32 2, 31, !dbg !1996
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !1999
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !1999
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2000
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2001

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2002

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2003
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2005
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2006

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2007
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2008
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2009

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2010
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2011 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2012
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2014
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2016
  %conv.i.i = and i32 2, 31, !dbg !2018
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2021
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2021
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2022
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2023

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2024

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2025
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2027
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2027
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2028
  br i1 %cmp.i9.i, label %sw.bb4.i, label %if.then.i12.i, !dbg !2029

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb4.i, !dbg !2030

sw.bb4.i:                                         ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2031
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2033
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2034

if.then.i5.i:                                     ; preds = %sw.bb4.i
  %shl.i = shl i32 %storemerge, %storemerge5, !dbg !2035
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2036
  store volatile i32 %shl.i, i32* %arrayidx.i4.i, align 4, !dbg !2037
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2038

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb4.i, %if.then.i5.i
  ret void, !dbg !2039
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2040 {
entry:
  ret void, !dbg !2041
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2042 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2043
  %conv.i8.i = and i32 1, 31, !dbg !2045
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2048
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2048
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2049
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2050

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2051

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2052
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2053 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2054
  %conv.i.i = and i32 1, 31, !dbg !2056
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2059
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2059
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2060
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2061

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2062

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2063
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2064 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2065
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2067
  %conv.i.i = and i32 1, 31, !dbg !2069
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2072
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2072
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2073
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2074

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2075

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2076
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2078
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2078
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2079
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2080

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2081

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2082
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2083 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2084
  %conv.i1.i = and i32 1, 31, !dbg !2086
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2089
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2090

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2091
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2092
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2093

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2094
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2095 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2096
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2098
  %conv.i8.i = and i32 2, 31, !dbg !2100
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2103
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2103
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2104
  br i1 %cmp.i9.i, label %sw.bb5.i, label %if.then.i12.i, !dbg !2105

if.then.i12.i:                                    ; preds = %entry
  %phitmp = icmp sgt i32 %1, 0, !dbg !2106
  %phitmp34 = zext i1 %phitmp to i32, !dbg !2106
  br label %sw.bb5.i, !dbg !2106

sw.bb5.i:                                         ; preds = %if.then.i12.i, %entry
  %storemerge3 = phi i32 [ %phitmp34, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2107
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2109
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2110

if.then.i5.i:                                     ; preds = %sw.bb5.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2111
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !2112
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2113

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb5.i, %if.then.i5.i
  ret void, !dbg !2114
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2115 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2116
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2118
  %conv.i.i = and i32 2, 31, !dbg !2120
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2123
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2123
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2124
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2125

if.then.i.i:                                      ; preds = %entry
  %phitmp = lshr i32 %1, 31, !dbg !2126
  br label %sw.epilog.i, !dbg !2126

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %phitmp, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2127
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2129
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2130

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2131
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2132
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2133

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2134
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2135 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2136
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2138
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2140
  %conv.i.i = and i32 2, 31, !dbg !2142
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2145
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2145
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2146
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2147

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2148

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2149
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2151
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2151
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2152
  br i1 %cmp.i9.i, label %sw.bb5.i, label %if.then.i12.i, !dbg !2153

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb5.i, !dbg !2154

sw.bb5.i:                                         ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2155
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2157
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2158

if.then.i5.i:                                     ; preds = %sw.bb5.i
  %cmp.i = icmp slt i32 %storemerge, %storemerge5, !dbg !2159
  %. = zext i1 %cmp.i to i32
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2160
  store volatile i32 %., i32* %arrayidx.i4.i, align 4, !dbg !2161
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2162

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb5.i, %if.then.i5.i
  ret void, !dbg !2163
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2164 {
entry:
  ret void, !dbg !2165
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2166 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2167
  %conv.i8.i = and i32 1, 31, !dbg !2169
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2172
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2172
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2173
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2174

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2175

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2176
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2177 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2178
  %conv.i.i = and i32 1, 31, !dbg !2180
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2183
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2183
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2184
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2185

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2186

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2187
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2188 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2189
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2191
  %conv.i.i = and i32 1, 31, !dbg !2193
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2196
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2196
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2197
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2198

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2199

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2200
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2202
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2202
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2203
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2204

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2205

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2206
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2207 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2208
  %conv.i1.i = and i32 1, 31, !dbg !2210
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2213
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2214

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2215
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2216
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2217

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2218
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2219 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2220
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2222
  %conv.i8.i = and i32 2, 31, !dbg !2224
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2227
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2227
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2228
  br i1 %cmp.i9.i, label %sw.bb7.i, label %if.then.i12.i, !dbg !2229

if.then.i12.i:                                    ; preds = %entry
  %phitmp = icmp ne i32 %1, 0, !dbg !2230
  %phitmp34 = zext i1 %phitmp to i32, !dbg !2230
  br label %sw.bb7.i, !dbg !2230

sw.bb7.i:                                         ; preds = %if.then.i12.i, %entry
  %storemerge3 = phi i32 [ %phitmp34, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2231
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2233
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2234

if.then.i5.i:                                     ; preds = %sw.bb7.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2235
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !2236
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2237

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb7.i, %if.then.i5.i
  ret void, !dbg !2238
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2239 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2240
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2242
  %conv.i.i = and i32 2, 31, !dbg !2244
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2247
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2247
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2248
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2249

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2250

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %conv.i1.i = and i32 1, 31, !dbg !2251
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2253
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2254

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2255
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2256
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2257

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2258
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2259 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2260
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2262
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2264
  %conv.i.i = and i32 2, 31, !dbg !2266
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2269
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2269
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2270
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2271

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2272

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2273
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2275
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2275
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2276
  br i1 %cmp.i9.i, label %sw.bb7.i, label %if.then.i12.i, !dbg !2277

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb7.i, !dbg !2278

sw.bb7.i:                                         ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2279
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2281
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2282

if.then.i5.i:                                     ; preds = %sw.bb7.i
  %cmp8.i = icmp ult i32 %storemerge, %storemerge5, !dbg !2283
  %.9 = zext i1 %cmp8.i to i32
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2284
  store volatile i32 %.9, i32* %arrayidx.i4.i, align 4, !dbg !2285
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2286

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb7.i, %if.then.i5.i
  ret void, !dbg !2287
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2288 {
entry:
  ret void, !dbg !2289
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2290 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2291
  %conv.i8.i = and i32 1, 31, !dbg !2293
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2296
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2296
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2297
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2298

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2299

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2300
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2301 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2302
  %conv.i.i = and i32 1, 31, !dbg !2304
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2307
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2307
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2308
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2309

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2310

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2311
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2312 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2313
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2315
  %conv.i.i = and i32 1, 31, !dbg !2317
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2320
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2320
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2321
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2322

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2323

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2324
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2326
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2326
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2327
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2328

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2329

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2330
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2331 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2332
  %conv.i1.i = and i32 1, 31, !dbg !2334
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2337
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2338

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2339
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2340
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2341

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2342
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2343 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2344
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2346
  %conv.i8.i = and i32 2, 31, !dbg !2348
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2351
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2351
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2352
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !2353

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !2354

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %conv.i1.i = and i32 1, 31, !dbg !2355
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2357
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2358

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2359
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2360
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2361

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2362
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2363 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2364
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2366
  %conv.i.i = and i32 2, 31, !dbg !2368
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2371
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2371
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2372
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2373

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2374

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2375
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2377
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2378

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2379
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2380
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2381

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2382
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2383 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2384
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2386
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2388
  %conv.i.i = and i32 2, 31, !dbg !2390
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2393
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2393
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2394
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2395

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2396

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2397
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2399
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2399
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2400
  br i1 %cmp.i9.i, label %sw.bb16.i, label %if.then.i12.i, !dbg !2401

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  %phitmp = and i32 %3, 31, !dbg !2402
  br label %sw.bb16.i, !dbg !2402

sw.bb16.i:                                        ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %phitmp, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2403
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2405
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2406

if.then.i5.i:                                     ; preds = %sw.bb16.i
  %shr19.i = ashr i32 %storemerge, %storemerge5, !dbg !2407
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2408
  store volatile i32 %shr19.i, i32* %arrayidx.i4.i, align 4, !dbg !2409
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2410

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb16.i, %if.then.i5.i
  ret void, !dbg !2411
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2412 {
entry:
  ret void, !dbg !2413
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2414 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2415
  %conv.i8.i = and i32 1, 31, !dbg !2417
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2420
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2420
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2421
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2422

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2423

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2424
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2425 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2426
  %conv.i.i = and i32 1, 31, !dbg !2428
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2431
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2431
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2432
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2433

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2434

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2435
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2436 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2437
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2439
  %conv.i.i = and i32 1, 31, !dbg !2441
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2444
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2444
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2445
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2446

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2447

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2448
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2450
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2450
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2451
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2452

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2453

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2454
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2455 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2456
  %conv.i1.i = and i32 1, 31, !dbg !2458
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2461
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2462

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2463
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2464
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2465

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2466
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2467 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2468
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2470
  %conv.i8.i = and i32 2, 31, !dbg !2472
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2475
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2475
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2476
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !2477

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !2478

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %conv.i1.i = and i32 1, 31, !dbg !2479
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2481
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2482

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2483
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2484
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2485

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2486
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2487 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2488
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2490
  %conv.i.i = and i32 2, 31, !dbg !2492
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2495
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2495
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2496
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2497

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2498

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2499
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2501
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2502

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2503
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2504
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2505

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2506
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2507 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2508
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2510
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2512
  %conv.i.i = and i32 2, 31, !dbg !2514
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2517
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2517
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2518
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2519

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2520

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2521
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2523
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2523
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2524
  br i1 %cmp.i9.i, label %sw.bb14.i, label %if.then.i12.i, !dbg !2525

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  %phitmp = and i32 %3, 31, !dbg !2526
  br label %sw.bb14.i, !dbg !2526

sw.bb14.i:                                        ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %phitmp, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2527
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2529
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2530

if.then.i5.i:                                     ; preds = %sw.bb14.i
  %shr.i = lshr i32 %storemerge, %storemerge5, !dbg !2531
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2532
  store volatile i32 %shr.i, i32* %arrayidx.i4.i, align 4, !dbg !2533
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2534

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb14.i, %if.then.i5.i
  ret void, !dbg !2535
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2536 {
entry:
  ret void, !dbg !2537
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2538 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2539
  %conv.i8.i = and i32 1, 31, !dbg !2541
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2544
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2544
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2545
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2546

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2547

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2548
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2549 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2550
  %conv.i.i = and i32 1, 31, !dbg !2552
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2555
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2555
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2556
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2557

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2558

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2559
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2560 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2561
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2563
  %conv.i.i = and i32 1, 31, !dbg !2565
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2568
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2568
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2569
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2570

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2571

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2572
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2574
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2574
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2575
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2576

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2577

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2578
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2579 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2580
  %conv.i1.i = and i32 1, 31, !dbg !2582
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2585
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2586

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2587
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2588
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2589

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2590
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2591 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2592
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2594
  %conv.i8.i = and i32 2, 31, !dbg !2596
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2599
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2599
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2600
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !2601

if.then.i12.i:                                    ; preds = %entry
  %phitmp = sub i32 0, %1, !dbg !2602
  br label %sw.epilog.i, !dbg !2602

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %storemerge3 = phi i32 [ %phitmp, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2603
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2605
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2606

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2607
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !2608
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2609

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2610
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2611 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2612
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2614
  %conv.i.i = and i32 2, 31, !dbg !2616
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2619
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2619
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2620
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2621

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2622

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2623
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2625
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2626

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2627
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2628
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2629

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2630
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2631 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2632
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2634
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2636
  %conv.i.i = and i32 2, 31, !dbg !2638
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2641
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2641
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2642
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2643

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2644

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2645
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2647
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2647
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2648
  br i1 %cmp.i9.i, label %sw.bb3.i, label %if.then.i12.i, !dbg !2649

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb3.i, !dbg !2650

sw.bb3.i:                                         ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2651
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2653
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2654

if.then.i5.i:                                     ; preds = %sw.bb3.i
  %sub.i = sub i32 %storemerge, %storemerge5, !dbg !2655
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2656
  store volatile i32 %sub.i, i32* %arrayidx.i4.i, align 4, !dbg !2657
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2658

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb3.i, %if.then.i5.i
  ret void, !dbg !2659
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__x_0__x_0__x_0__() local_unnamed_addr #3 !dbg !2660 {
entry:
  ret void, !dbg !2661
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__x_0__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2662 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2663
  %conv.i8.i = and i32 1, 31, !dbg !2665
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2668
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2668
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2669
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2670

if.then.i12.i:                                    ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2671

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %entry
  ret void, !dbg !2672
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__x_0__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2673 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2674
  %conv.i.i = and i32 1, 31, !dbg !2676
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2679
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2679
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2680
  br i1 %cmp.i.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i.i, !dbg !2681

if.then.i.i:                                      ; preds = %entry
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2682

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i.i
  ret void, !dbg !2683
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2684 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2685
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2687
  %conv.i.i = and i32 1, 31, !dbg !2689
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2692
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2692
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2693
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2694

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2695

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %conv.i8.i = and i32 2, 31, !dbg !2696
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2698
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2698
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2699
  br i1 %cmp.i9.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i12.i, !dbg !2700

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2701

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  ret void, !dbg !2702
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__xpr_general__x_0__x_0__() local_unnamed_addr #2 !dbg !2703 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2704
  %conv.i1.i = and i32 1, 31, !dbg !2706
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2709
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2710

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2711
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2712
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2713

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2714
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__() local_unnamed_addr #2 !dbg !2715 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2716
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2718
  %conv.i8.i = and i32 2, 31, !dbg !2720
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2723
  %1 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2723
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2724
  br i1 %cmp.i9.i, label %sw.epilog.i, label %if.then.i12.i, !dbg !2725

if.then.i12.i:                                    ; preds = %entry
  br label %sw.epilog.i, !dbg !2726

sw.epilog.i:                                      ; preds = %entry, %if.then.i12.i
  %storemerge3 = phi i32 [ %1, %if.then.i12.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2727
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2729
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2730

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2731
  store volatile i32 %storemerge3, i32* %arrayidx.i4.i, align 4, !dbg !2732
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2733

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2734
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__() local_unnamed_addr #2 !dbg !2735 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2736
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2738
  %conv.i.i = and i32 2, 31, !dbg !2740
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2743
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2743
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2744
  br i1 %cmp.i.i, label %sw.epilog.i, label %if.then.i.i, !dbg !2745

if.then.i.i:                                      ; preds = %entry
  br label %sw.epilog.i, !dbg !2746

sw.epilog.i:                                      ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2747
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2749
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2750

if.then.i5.i:                                     ; preds = %sw.epilog.i
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2751
  store volatile i32 %storemerge, i32* %arrayidx.i4.i, align 4, !dbg !2752
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2753

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.epilog.i, %if.then.i5.i
  ret void, !dbg !2754
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__() local_unnamed_addr #2 !dbg !2755 {
entry:
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2756
  %call.i4 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2758
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2760
  %conv.i.i = and i32 2, 31, !dbg !2762
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2765
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2765
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2766
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2767

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2768

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i8.i = and i32 3, 31, !dbg !2769
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i11.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2771
  %3 = load volatile i32, i32* %arrayidx.i11.i, align 4, !dbg !2771
  %cmp.i9.i = icmp eq i32 %conv.i8.i, 0, !dbg !2772
  br i1 %cmp.i9.i, label %sw.bb13.i, label %if.then.i12.i, !dbg !2773

if.then.i12.i:                                    ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb13.i, !dbg !2774

sw.bb13.i:                                        ; preds = %if.then.i12.i, %MI11rf_xpr_read.exit.i
  %storemerge5 = phi i32 [ %3, %if.then.i12.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %conv.i1.i = and i32 1, 31, !dbg !2775
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2777
  br i1 %cmp.i2.i, label %MI11i_rtype_aluIH1_13default_start.exit, label %if.then.i5.i, !dbg !2778

if.then.i5.i:                                     ; preds = %sw.bb13.i
  %xor.i = xor i32 %storemerge5, %storemerge, !dbg !2779
  %4 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %4, !dbg !2780
  store volatile i32 %xor.i, i32* %arrayidx.i4.i, align 4, !dbg !2781
  br label %MI11i_rtype_aluIH1_13default_start.exit, !dbg !2782

MI11i_rtype_aluIH1_13default_start.exit:          ; preds = %sw.bb13.i, %if.then.i5.i
  ret void, !dbg !2783
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_shift__opc_slli__x_0__x_0__uimm5__() local_unnamed_addr #3 !dbg !2784 {
entry:
  ret void, !dbg !2785
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2786 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2787
  %conv.i.i = and i32 1, 31, !dbg !2789
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2793
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2793
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2794
  br i1 %cmp.i.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i.i, !dbg !2795

if.then.i.i:                                      ; preds = %entry
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2796

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %if.then.i.i, %entry
  ret void, !dbg !2797
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__() local_unnamed_addr #2 !dbg !2798 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2799
  %conv.i1.i = and i32 1, 31, !dbg !2801
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2804
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2805

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2806
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2807
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2808

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2809
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2810 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2811
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2813
  %call.i.i = tail call i5 @codasip_immread_uint5(i32 2) #5, !dbg !2815
  %conv.i.i = and i32 2, 31, !dbg !2820
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2823
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2823
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2824
  br i1 %cmp.i.i, label %sw.bb.i, label %if.then.i.i, !dbg !2825

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb.i, !dbg !2826

sw.bb.i:                                          ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2827
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2829
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2830

if.then.i5.i:                                     ; preds = %sw.bb.i
  %conv1.i = zext i5 %call.i.i to i32, !dbg !2831
  %shl.i = shl i32 %storemerge, %conv1.i, !dbg !2832
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2833
  store volatile i32 %shl.i, i32* %arrayidx.i4.i, align 4, !dbg !2834
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2835

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %sw.bb.i, %if.then.i5.i
  ret void, !dbg !2836
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_shift__opc_srai__x_0__x_0__uimm5__() local_unnamed_addr #3 !dbg !2837 {
entry:
  ret void, !dbg !2838
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2839 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2840
  %conv.i.i = and i32 1, 31, !dbg !2842
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2845
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2845
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2846
  br i1 %cmp.i.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i.i, !dbg !2847

if.then.i.i:                                      ; preds = %entry
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2848

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %if.then.i.i, %entry
  ret void, !dbg !2849
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__() local_unnamed_addr #2 !dbg !2850 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2851
  %conv.i1.i = and i32 1, 31, !dbg !2853
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2856
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2857

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2858
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2859
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2860

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2861
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2862 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2863
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2865
  %call.i.i = tail call i5 @codasip_immread_uint5(i32 2) #5, !dbg !2867
  %conv.i.i = and i32 2, 31, !dbg !2870
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2873
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2873
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2874
  br i1 %cmp.i.i, label %sw.bb3.i, label %if.then.i.i, !dbg !2875

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb3.i, !dbg !2876

sw.bb3.i:                                         ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2877
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2879
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2880

if.then.i5.i:                                     ; preds = %sw.bb3.i
  %conv1.i = zext i5 %call.i.i to i32, !dbg !2881
  %shr4.i = ashr i32 %storemerge, %conv1.i, !dbg !2882
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2883
  store volatile i32 %shr4.i, i32* %arrayidx.i4.i, align 4, !dbg !2884
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2885

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %sw.bb3.i, %if.then.i5.i
  ret void, !dbg !2886
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_rtype_shift__opc_srli__x_0__x_0__uimm5__() local_unnamed_addr #3 !dbg !2887 {
entry:
  ret void, !dbg !2888
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2889 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2890
  %conv.i.i = and i32 1, 31, !dbg !2892
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2895
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2895
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2896
  br i1 %cmp.i.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i.i, !dbg !2897

if.then.i.i:                                      ; preds = %entry
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2898

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %if.then.i.i, %entry
  ret void, !dbg !2899
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__() local_unnamed_addr #2 !dbg !2900 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2901
  %conv.i1.i = and i32 1, 31, !dbg !2903
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2906
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2907

if.then.i5.i:                                     ; preds = %entry
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2908
  store volatile i32 0, i32* %arrayidx.i4.i, align 4, !dbg !2909
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2910

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %entry, %if.then.i5.i
  ret void, !dbg !2911
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__() local_unnamed_addr #2 !dbg !2912 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2913
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2915
  %call.i.i = tail call i5 @codasip_immread_uint5(i32 2) #5, !dbg !2917
  %conv.i.i = and i32 2, 31, !dbg !2920
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2923
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2923
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2924
  br i1 %cmp.i.i, label %sw.bb2.i, label %if.then.i.i, !dbg !2925

if.then.i.i:                                      ; preds = %entry
  br label %sw.bb2.i, !dbg !2926

sw.bb2.i:                                         ; preds = %if.then.i.i, %entry
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv.i1.i = and i32 1, 31, !dbg !2927
  %cmp.i2.i = icmp eq i32 %conv.i1.i, 0, !dbg !2929
  br i1 %cmp.i2.i, label %MI13i_rtype_shiftIH1_13default_start.exit, label %if.then.i5.i, !dbg !2930

if.then.i5.i:                                     ; preds = %sw.bb2.i
  %conv1.i = zext i5 %call.i.i to i32, !dbg !2931
  %shr.i = lshr i32 %storemerge, %conv1.i, !dbg !2932
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i4.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !2933
  store volatile i32 %shr.i, i32* %arrayidx.i4.i, align 4, !dbg !2934
  br label %MI13i_rtype_shiftIH1_13default_start.exit, !dbg !2935

MI13i_rtype_shiftIH1_13default_start.exit:        ; preds = %sw.bb2.i, %if.then.i5.i
  ret void, !dbg !2936
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sb__x_0__simm12__x_0__() local_unnamed_addr #2 !dbg !2937 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !2938
  %conv1.i = sext i12 %call.i.i to i32, !dbg !2941
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !2944
  store volatile i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !2949
  ret void, !dbg !2950
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sb__x_0__simm12__xpr_general__() local_unnamed_addr #2 !dbg !2951 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !2952
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !2955
  %conv.i.i = and i32 1, 31, !dbg !2957
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2960
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !2960
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !2961
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !2962

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !2963

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !2964
  %add.i = add i32 %storemerge, %conv1.i, !dbg !2965
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !2966
  store volatile i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !2969
  ret void, !dbg !2970
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sb__xpr_general__simm12__x_0__() local_unnamed_addr #2 !dbg !2971 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2972
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !2974
  %conv1.i = sext i12 %call.i.i to i32, !dbg !2977
  %conv.i4.i = and i32 1, 31, !dbg !2979
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !2981
  %1 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !2981
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !2982
  br i1 %cmp.i5.i, label %sw.bb.i.i.i, label %if.then.i8.i, !dbg !2983

if.then.i8.i:                                     ; preds = %entry
  %phitmp = trunc i32 %1 to i8, !dbg !2984
  br label %sw.bb.i.i.i, !dbg !2984

sw.bb.i.i.i:                                      ; preds = %entry, %if.then.i8.i
  %storemerge1 = phi i8 [ %phitmp, %if.then.i8.i ], [ 0, %entry ]
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %conv1.i, !dbg !2985
  store volatile i8 %storemerge1, i8* %arrayidx.i.i.i, align 1, !dbg !2988
  ret void, !dbg !2989
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sb__xpr_general__simm12__xpr_general__() local_unnamed_addr #2 !dbg !2990 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !2991
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !2993
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !2996
  %conv.i.i = and i32 2, 31, !dbg !2998
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3001
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !3001
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3002
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !3003

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !3004

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3005
  %add.i = add i32 %storemerge, %conv1.i, !dbg !3006
  %conv.i4.i = and i32 1, 31, !dbg !3007
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !3009
  %3 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !3009
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !3010
  br i1 %cmp.i5.i, label %sw.bb.i.i.i, label %if.then.i8.i, !dbg !3011

if.then.i8.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %phitmp = trunc i32 %3 to i8, !dbg !3012
  br label %sw.bb.i.i.i, !dbg !3012

sw.bb.i.i.i:                                      ; preds = %MI11rf_xpr_read.exit.i, %if.then.i8.i
  %storemerge3 = phi i8 [ %phitmp, %if.then.i8.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %arrayidx.i.i.i = getelementptr inbounds [2048 x i8], [2048 x i8]* @ldst__sb1__, i32 0, i32 %add.i, !dbg !3013
  store volatile i8 %storemerge3, i8* %arrayidx.i.i.i, align 1, !dbg !3016
  ret void, !dbg !3017
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sh__x_0__simm12__x_0__() local_unnamed_addr #2 !dbg !3018 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !3019
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3022
  %arrayidx4.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !3024
  store volatile i16 0, i16* %arrayidx4.i.i.i, align 2, !dbg !3027
  ret void, !dbg !3028
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sh__x_0__simm12__xpr_general__() local_unnamed_addr #2 !dbg !3029 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !3030
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !3033
  %conv.i.i = and i32 1, 31, !dbg !3035
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3038
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !3038
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3039
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !3040

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !3041

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3042
  %add.i = add i32 %storemerge, %conv1.i, !dbg !3043
  %arrayidx4.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !3044
  store volatile i16 0, i16* %arrayidx4.i.i.i, align 2, !dbg !3047
  ret void, !dbg !3048
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sh__xpr_general__simm12__x_0__() local_unnamed_addr #2 !dbg !3049 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3050
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !3052
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3055
  %conv.i4.i = and i32 1, 31, !dbg !3057
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3059
  %1 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !3059
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !3060
  br i1 %cmp.i5.i, label %sw.bb1.i.i.i, label %if.then.i8.i, !dbg !3061

if.then.i8.i:                                     ; preds = %entry
  %phitmp = trunc i32 %1 to i16, !dbg !3062
  br label %sw.bb1.i.i.i, !dbg !3062

sw.bb1.i.i.i:                                     ; preds = %if.then.i8.i, %entry
  %storemerge1 = phi i16 [ %phitmp, %if.then.i8.i ], [ 0, %entry ]
  %arrayidx4.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %conv1.i, !dbg !3063
  store volatile i16 %storemerge1, i16* %arrayidx4.i.i.i, align 2, !dbg !3066
  ret void, !dbg !3067
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sh__xpr_general__simm12__xpr_general__() local_unnamed_addr #2 !dbg !3068 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3069
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !3071
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !3074
  %conv.i.i = and i32 2, 31, !dbg !3076
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3079
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !3079
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3080
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !3081

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !3082

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3083
  %add.i = add i32 %storemerge, %conv1.i, !dbg !3084
  %conv.i4.i = and i32 1, 31, !dbg !3085
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !3087
  %3 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !3087
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !3088
  br i1 %cmp.i5.i, label %sw.bb1.i.i.i, label %if.then.i8.i, !dbg !3089

if.then.i8.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  %phitmp = trunc i32 %3 to i16, !dbg !3090
  br label %sw.bb1.i.i.i, !dbg !3090

sw.bb1.i.i.i:                                     ; preds = %if.then.i8.i, %MI11rf_xpr_read.exit.i
  %storemerge3 = phi i16 [ %phitmp, %if.then.i8.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %arrayidx4.i.i.i = getelementptr inbounds [2048 x i16], [2048 x i16]* @ldst__sb2__, i32 0, i32 %add.i, !dbg !3091
  store volatile i16 %storemerge3, i16* %arrayidx4.i.i.i, align 2, !dbg !3094
  ret void, !dbg !3095
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sw__x_0__simm12__x_0__() local_unnamed_addr #2 !dbg !3096 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !3097
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3100
  %arrayidx12.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %conv1.i, !dbg !3102
  store volatile i32 0, i32* %arrayidx12.i.i.i, align 4, !dbg !3105
  ret void, !dbg !3106
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sw__x_0__simm12__xpr_general__() local_unnamed_addr #2 !dbg !3107 {
entry:
  %call.i.i = tail call i12 @codasip_immread_int12(i32 0) #5, !dbg !3108
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !3111
  %conv.i.i = and i32 1, 31, !dbg !3113
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3116
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !3116
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3117
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !3118

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !3119

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3120
  %add.i = add i32 %storemerge, %conv1.i, !dbg !3121
  %arrayidx12.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %add.i, !dbg !3122
  store volatile i32 0, i32* %arrayidx12.i.i.i, align 4, !dbg !3125
  ret void, !dbg !3126
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sw__xpr_general__simm12__x_0__() local_unnamed_addr #2 !dbg !3127 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3128
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !3130
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3133
  %conv.i4.i = and i32 1, 31, !dbg !3135
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3137
  %1 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !3137
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !3138
  br i1 %cmp.i5.i, label %sw.bb9.i.i.i, label %if.then.i8.i, !dbg !3139

if.then.i8.i:                                     ; preds = %entry
  br label %sw.bb9.i.i.i, !dbg !3140

sw.bb9.i.i.i:                                     ; preds = %if.then.i8.i, %entry
  %storemerge1 = phi i32 [ %1, %if.then.i8.i ], [ 0, %entry ]
  %arrayidx12.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %conv1.i, !dbg !3141
  store volatile i32 %storemerge1, i32* %arrayidx12.i.i.i, align 4, !dbg !3144
  ret void, !dbg !3145
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_stype_store__opc_sw__xpr_general__simm12__xpr_general__() local_unnamed_addr #2 !dbg !3146 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3147
  %call.i.i = tail call i12 @codasip_immread_int12(i32 1) #5, !dbg !3149
  %call.i2 = tail call i32 @codasip_regopindex(i32 1, i32 2) #5, !dbg !3152
  %conv.i.i = and i32 2, 31, !dbg !3154
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 2, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3157
  %1 = load volatile i32, i32* %arrayidx.i.i, align 4, !dbg !3157
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3158
  br i1 %cmp.i.i, label %MI11rf_xpr_read.exit.i, label %if.then.i.i, !dbg !3159

if.then.i.i:                                      ; preds = %entry
  br label %MI11rf_xpr_read.exit.i, !dbg !3160

MI11rf_xpr_read.exit.i:                           ; preds = %entry, %if.then.i.i
  %storemerge = phi i32 [ %1, %if.then.i.i ], [ 0, %entry ]
  %conv1.i = sext i12 %call.i.i to i32, !dbg !3161
  %add.i = add i32 %storemerge, %conv1.i, !dbg !3162
  %conv.i4.i = and i32 1, 31, !dbg !3163
  %2 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i7.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %2, !dbg !3165
  %3 = load volatile i32, i32* %arrayidx.i7.i, align 4, !dbg !3165
  %cmp.i5.i = icmp eq i32 %conv.i4.i, 0, !dbg !3166
  br i1 %cmp.i5.i, label %sw.bb9.i.i.i, label %if.then.i8.i, !dbg !3167

if.then.i8.i:                                     ; preds = %MI11rf_xpr_read.exit.i
  br label %sw.bb9.i.i.i, !dbg !3168

sw.bb9.i.i.i:                                     ; preds = %if.then.i8.i, %MI11rf_xpr_read.exit.i
  %storemerge3 = phi i32 [ %3, %if.then.i8.i ], [ 0, %MI11rf_xpr_read.exit.i ]
  %arrayidx12.i.i.i = getelementptr inbounds [2048 x i32], [2048 x i32]* @ldst__sb4__, i32 0, i32 %add.i, !dbg !3169
  store volatile i32 %storemerge3, i32* %arrayidx12.i.i.i, align 4, !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_utype_ops__opc_auipc__x_0__uimm20__() local_unnamed_addr #3 !dbg !3174 {
entry:
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !3175
  ret void, !dbg !3179
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_utype_ops__opc_auipc__xpr_general__uimm20__() local_unnamed_addr #2 !dbg !3180 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3181
  %0 = call i32 @llvm.getnextpc.anyint.i32(), !dbg !3183
  %conv.i3.i = and i32 1, 31, !dbg !3186
  %cmp.i4.i = icmp eq i32 %conv.i3.i, 0, !dbg !3188
  br i1 %cmp.i4.i, label %MI12rf_xpr_write.exit8.i, label %if.then.i7.i, !dbg !3189

if.then.i7.i:                                     ; preds = %entry
  %call.i.i = tail call i20 @codasip_immread_uint20(i32 1) #5, !dbg !3190
  %sub.i = add i32 %0, -4, !dbg !3195
  %conv3.i = zext i20 %call.i.i to i32, !dbg !3196
  %shl4.i = shl nuw i32 %conv3.i, 12, !dbg !3197
  %add.i = add i32 %sub.i, %shl4.i, !dbg !3198
  %1 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i6.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %1, !dbg !3199
  store volatile i32 %add.i, i32* %arrayidx.i6.i, align 4, !dbg !3200
  br label %MI12rf_xpr_write.exit8.i, !dbg !3201

MI12rf_xpr_write.exit8.i:                         ; preds = %entry, %if.then.i7.i
  ret void, !dbg !3202
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @i_utype_ops__opc_lui__x_0__uimm20__() local_unnamed_addr #3 !dbg !3203 {
entry:
  ret void, !dbg !3204
}

; Function Attrs: noinline nounwind readnone
define dso_local void @i_utype_ops__opc_lui__xpr_general__uimm20__() local_unnamed_addr #2 !dbg !3205 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 0) #5, !dbg !3206
  %conv.i.i = and i32 1, 31, !dbg !3208
  %cmp.i.i = icmp eq i32 %conv.i.i, 0, !dbg !3211
  br i1 %cmp.i.i, label %MI12rf_xpr_write.exit.i, label %if.then.i.i, !dbg !3212

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call i20 @codasip_immread_uint20(i32 1) #5, !dbg !3213
  %conv.i = zext i20 %call.i.i to i32, !dbg !3216
  %shl.i = shl nuw i32 %conv.i, 12, !dbg !3217
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 0, i32 0)
  %arrayidx.i.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3218
  store volatile i32 %shl.i, i32* %arrayidx.i.i, align 4, !dbg !3219
  br label %MI12rf_xpr_write.exit.i, !dbg !3220

MI12rf_xpr_write.exit.i:                          ; preds = %entry, %if.then.i.i
  ret void, !dbg !3221
}

; Function Attrs: readnone
declare dso_local i32 @codasip_regopindex(i32, i32) local_unnamed_addr #1

; Function Attrs: noinline nounwind readnone
define dso_local void @e_movi32__() local_unnamed_addr #2 !dbg !3222 {
entry:
  %call.i = tail call i32 @codasip_regopindex(i32 1, i32 1) #5, !dbg !3223
  %conv.i = and i32 1, 31, !dbg !3225
  %cmp.i = icmp eq i32 %conv.i, 0, !dbg !3227
  br i1 %cmp.i, label %MI12rf_xpr_write.exit, label %if.then.i, !dbg !3228

if.then.i:                                        ; preds = %entry
  %call = tail call i32 @codasip_immread_uint32(i32 0) #5, !dbg !3229
  %0 = call i32 @llvm.propagatedregopindex.i32(i32 1, i32 1, i32 0)
  %arrayidx.i = getelementptr inbounds [32 x i32], [32 x i32]* @rf_xpr, i32 0, i32 %0, !dbg !3230
  store volatile i32 %call, i32* %arrayidx.i, align 4, !dbg !3231
  br label %MI12rf_xpr_write.exit, !dbg !3232

MI12rf_xpr_write.exit:                            ; preds = %entry, %if.then.i
  ret void, !dbg !3233
}

; Function Attrs: readnone
declare dso_local i32 @codasip_immread_uint32(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32 @llvm.getnextpc.anyint.i32() #5

; Function Attrs: argmemonly nounwind
declare void @llvm.br.anyint.i32(i32, i1) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.regwrite.anyint.i32(i32, i32, i32, i1) #6

; Function Attrs: nounwind readnone
declare i32 @llvm.regread.anyint.i32(i32, i32) #5

; Function Attrs: nounwind readnone
declare i32 @llvm.propagatedregopindex.i32(i32, i32, i32) #5

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { argmemonly nounwind }
attributes #7 = { readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/home/project/cu_riscv32i_cycle_accurate/work/tmp/semantics/se_instrsem.c", directory: "/home/project/cu_riscv32i_cycle_accurate/work/tmp/semantics")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.1 (ssh://git@gitlab.codasip.com/codasip-studio/llvm-project.git d5357f0eec354bae21f33cf62e5504ff6d1cc93d)"}
!7 = distinct !DISubprogram(name: "i_btype_branches__opc_beq__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1518, type: !9, scopeLine: 1519, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "model/share/isa/isa.codal", directory: "/home/project/cu_riscv32i_cycle_accurate")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "MI6addr12IH1_13default_start18_15relative_addr123imm1_15relative_addr12", scope: !8, file: !8, line: 981, type: !9, scopeLine: 982, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !14)
!13 = distinct !DISubprogram(name: "relative_addr12__", scope: !8, file: !8, line: 3720, type: !9, scopeLine: 3721, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = distinct !DILocation(line: 1524, column: 18, scope: !7)
!15 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !12)
!16 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !12)
!17 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !19)
!18 = distinct !DISubprogram(name: "MI15relative_addr12IH1_13default_start18_15relative_addr123imm", scope: !8, file: !8, line: 391, type: !9, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !14)
!20 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !22)
!21 = distinct !DISubprogram(name: "MI16i_btype_branchesIH1_13default_start", scope: !8, file: !8, line: 401, type: !9, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = distinct !DILocation(line: 1525, column: 5, scope: !7)
!23 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !22)
!24 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !22)
!25 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !28)
!26 = distinct !DISubprogram(name: "MI8write_pc", scope: !27, file: !27, line: 146, type: !9, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DIFile(filename: "model/ia/other/ia_utils.codal", directory: "/home/project/cu_riscv32i_cycle_accurate")
!28 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !22)
!29 = !DILocation(line: 1526, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: "i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1528, type: !9, scopeLine: 1529, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !33)
!32 = distinct !DISubprogram(name: "xpr_general__", scope: !8, file: !8, line: 3755, type: !9, scopeLine: 3756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = distinct !DILocation(line: 1533, column: 29, scope: !30)
!34 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !35)
!35 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !36)
!36 = distinct !DILocation(line: 1535, column: 18, scope: !30)
!37 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !35)
!38 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !35)
!39 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !40)
!40 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !36)
!41 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !45)
!42 = !DILexicalBlockFile(scope: !43, file: !27, discriminator: 0)
!43 = distinct !DISubprogram(name: "MI11rf_xpr_read", scope: !44, file: !44, line: 446, type: !9, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DIFile(filename: "se_instrsem.c", directory: "/home/project/cu_riscv32i_cycle_accurate/work/tmp/semantics")
!45 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !46)
!46 = distinct !DILocation(line: 1536, column: 5, scope: !30)
!47 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !45)
!48 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !45)
!49 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !45)
!50 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !46)
!51 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !46)
!52 = !DILocation(line: 538, column: 119, scope: !21, inlinedAt: !46)
!53 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !46)
!54 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !46)
!55 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !56)
!56 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !46)
!57 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !46)
!58 = !DILocation(line: 1537, column: 1, scope: !30)
!59 = distinct !DISubprogram(name: "i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1539, type: !9, scopeLine: 1540, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!60 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !61)
!61 = distinct !DILocation(line: 1543, column: 29, scope: !59)
!62 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !63)
!63 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !64)
!64 = distinct !DILocation(line: 1546, column: 18, scope: !59)
!65 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !63)
!66 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !63)
!67 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !68)
!68 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !64)
!69 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !70)
!70 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !71)
!71 = distinct !DILocation(line: 1547, column: 5, scope: !59)
!72 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !70)
!73 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !70)
!74 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !70)
!75 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !71)
!76 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !71)
!77 = !DILocation(line: 538, column: 119, scope: !21, inlinedAt: !71)
!78 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !71)
!79 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !71)
!80 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !81)
!81 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !71)
!82 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !71)
!83 = !DILocation(line: 1548, column: 1, scope: !59)
!84 = distinct !DISubprogram(name: "i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1550, type: !9, scopeLine: 1551, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !86)
!86 = distinct !DILocation(line: 1554, column: 29, scope: !84)
!87 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !88)
!88 = distinct !DILocation(line: 1556, column: 29, scope: !84)
!89 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !90)
!90 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !91)
!91 = distinct !DILocation(line: 1558, column: 18, scope: !84)
!92 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !90)
!93 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !90)
!94 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !95)
!95 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !91)
!96 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !97)
!97 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !98)
!98 = distinct !DILocation(line: 1559, column: 5, scope: !84)
!99 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !97)
!100 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !97)
!101 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !97)
!102 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !97)
!103 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !104)
!104 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !98)
!105 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !104)
!106 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !104)
!107 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !104)
!108 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !104)
!109 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !98)
!110 = !DILocation(line: 538, column: 119, scope: !21, inlinedAt: !98)
!111 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !98)
!112 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !98)
!113 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !98)
!114 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !115)
!115 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !98)
!116 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !98)
!117 = !DILocation(line: 1560, column: 1, scope: !84)
!118 = distinct !DISubprogram(name: "i_btype_branches__opc_bge__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1562, type: !9, scopeLine: 1563, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!119 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !120)
!120 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !121)
!121 = distinct !DILocation(line: 1568, column: 18, scope: !118)
!122 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !120)
!123 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !120)
!124 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !125)
!125 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !121)
!126 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !127)
!127 = distinct !DILocation(line: 1569, column: 5, scope: !118)
!128 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !127)
!129 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !127)
!130 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !131)
!131 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !127)
!132 = !DILocation(line: 1570, column: 1, scope: !118)
!133 = distinct !DISubprogram(name: "i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1572, type: !9, scopeLine: 1573, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!134 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !135)
!135 = distinct !DILocation(line: 1577, column: 29, scope: !133)
!136 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !137)
!137 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !138)
!138 = distinct !DILocation(line: 1579, column: 18, scope: !133)
!139 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !137)
!140 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !137)
!141 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !142)
!142 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !138)
!143 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !144)
!144 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !145)
!145 = distinct !DILocation(line: 1580, column: 5, scope: !133)
!146 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !144)
!147 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !144)
!148 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !144)
!149 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !145)
!150 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !145)
!151 = !DILocation(line: 547, column: 128, scope: !21, inlinedAt: !145)
!152 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !145)
!153 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !145)
!154 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !155)
!155 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !145)
!156 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !145)
!157 = !DILocation(line: 1581, column: 1, scope: !133)
!158 = distinct !DISubprogram(name: "i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1583, type: !9, scopeLine: 1584, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !160)
!160 = distinct !DILocation(line: 1587, column: 29, scope: !158)
!161 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !162)
!162 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !163)
!163 = distinct !DILocation(line: 1590, column: 18, scope: !158)
!164 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !162)
!165 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !162)
!166 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !167)
!167 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !163)
!168 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !169)
!169 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !170)
!170 = distinct !DILocation(line: 1591, column: 5, scope: !158)
!171 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !169)
!172 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !169)
!173 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !169)
!174 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !170)
!175 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !170)
!176 = !DILocation(line: 547, column: 128, scope: !21, inlinedAt: !170)
!177 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !170)
!178 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !170)
!179 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !180)
!180 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !170)
!181 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !170)
!182 = !DILocation(line: 1592, column: 1, scope: !158)
!183 = distinct !DISubprogram(name: "i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1594, type: !9, scopeLine: 1595, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!184 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !185)
!185 = distinct !DILocation(line: 1598, column: 29, scope: !183)
!186 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !187)
!187 = distinct !DILocation(line: 1600, column: 29, scope: !183)
!188 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !189)
!189 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !190)
!190 = distinct !DILocation(line: 1602, column: 18, scope: !183)
!191 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !189)
!192 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !189)
!193 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !194)
!194 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !190)
!195 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !196)
!196 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !197)
!197 = distinct !DILocation(line: 1603, column: 5, scope: !183)
!198 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !196)
!199 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !196)
!200 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !196)
!201 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !196)
!202 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !203)
!203 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !197)
!204 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !203)
!205 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !203)
!206 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !203)
!207 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !203)
!208 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !197)
!209 = !DILocation(line: 547, column: 128, scope: !21, inlinedAt: !197)
!210 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !197)
!211 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !197)
!212 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !197)
!213 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !214)
!214 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !197)
!215 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !197)
!216 = !DILocation(line: 1604, column: 1, scope: !183)
!217 = distinct !DISubprogram(name: "i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1606, type: !9, scopeLine: 1607, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!218 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !219)
!219 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !220)
!220 = distinct !DILocation(line: 1612, column: 18, scope: !217)
!221 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !219)
!222 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !219)
!223 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !224)
!224 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !220)
!225 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !226)
!226 = distinct !DILocation(line: 1613, column: 5, scope: !217)
!227 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !226)
!228 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !226)
!229 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !230)
!230 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !226)
!231 = !DILocation(line: 1614, column: 1, scope: !217)
!232 = distinct !DISubprogram(name: "i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1616, type: !9, scopeLine: 1617, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!233 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !234)
!234 = distinct !DILocation(line: 1621, column: 29, scope: !232)
!235 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !236)
!236 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !237)
!237 = distinct !DILocation(line: 1623, column: 18, scope: !232)
!238 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !236)
!239 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !236)
!240 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !241)
!241 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !237)
!242 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !243)
!243 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !244)
!244 = distinct !DILocation(line: 1624, column: 5, scope: !232)
!245 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !243)
!246 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !243)
!247 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !243)
!248 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !244)
!249 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !244)
!250 = !DILocation(line: 553, column: 129, scope: !21, inlinedAt: !244)
!251 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !244)
!252 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !244)
!253 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !254)
!254 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !244)
!255 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !244)
!256 = !DILocation(line: 1625, column: 1, scope: !232)
!257 = distinct !DISubprogram(name: "i_btype_branches__opc_bgeu__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1627, type: !9, scopeLine: 1628, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !259)
!259 = distinct !DILocation(line: 1631, column: 29, scope: !257)
!260 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !261)
!261 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !262)
!262 = distinct !DILocation(line: 1634, column: 18, scope: !257)
!263 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !261)
!264 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !261)
!265 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !266)
!266 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !262)
!267 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !268)
!268 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !269)
!269 = distinct !DILocation(line: 1635, column: 5, scope: !257)
!270 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !268)
!271 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !268)
!272 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !268)
!273 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !268)
!274 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !269)
!275 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !269)
!276 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !269)
!277 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !278)
!278 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !269)
!279 = !DILocation(line: 1636, column: 1, scope: !257)
!280 = distinct !DISubprogram(name: "i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1638, type: !9, scopeLine: 1639, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!281 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !282)
!282 = distinct !DILocation(line: 1642, column: 29, scope: !280)
!283 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !284)
!284 = distinct !DILocation(line: 1644, column: 29, scope: !280)
!285 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !286)
!286 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !287)
!287 = distinct !DILocation(line: 1646, column: 18, scope: !280)
!288 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !286)
!289 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !286)
!290 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !291)
!291 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !287)
!292 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !293)
!293 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !294)
!294 = distinct !DILocation(line: 1647, column: 5, scope: !280)
!295 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !293)
!296 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !293)
!297 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !293)
!298 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !293)
!299 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !300)
!300 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !294)
!301 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !300)
!302 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !300)
!303 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !300)
!304 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !300)
!305 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !294)
!306 = !DILocation(line: 553, column: 129, scope: !21, inlinedAt: !294)
!307 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !294)
!308 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !294)
!309 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !294)
!310 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !311)
!311 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !294)
!312 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !294)
!313 = !DILocation(line: 1648, column: 1, scope: !280)
!314 = distinct !DISubprogram(name: "i_btype_branches__opc_blt__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1650, type: !9, scopeLine: 1651, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!315 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !316)
!316 = distinct !DILocation(line: 1657, column: 5, scope: !314)
!317 = !DILocation(line: 1658, column: 1, scope: !314)
!318 = distinct !DISubprogram(name: "i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1660, type: !9, scopeLine: 1661, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!319 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !320)
!320 = distinct !DILocation(line: 1665, column: 29, scope: !318)
!321 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !322)
!322 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !323)
!323 = distinct !DILocation(line: 1668, column: 5, scope: !318)
!324 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !322)
!325 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !322)
!326 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !322)
!327 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !323)
!328 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !323)
!329 = !DILocation(line: 544, column: 128, scope: !21, inlinedAt: !323)
!330 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !331)
!331 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !332)
!332 = distinct !DILocation(line: 1667, column: 18, scope: !318)
!333 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !331)
!334 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !331)
!335 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !336)
!336 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !332)
!337 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !323)
!338 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !323)
!339 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !340)
!340 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !323)
!341 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !323)
!342 = !DILocation(line: 1669, column: 1, scope: !318)
!343 = distinct !DISubprogram(name: "i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1671, type: !9, scopeLine: 1672, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!344 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !345)
!345 = distinct !DILocation(line: 1675, column: 29, scope: !343)
!346 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !347)
!347 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !348)
!348 = distinct !DILocation(line: 1679, column: 5, scope: !343)
!349 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !347)
!350 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !347)
!351 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !347)
!352 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !348)
!353 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !348)
!354 = !DILocation(line: 544, column: 128, scope: !21, inlinedAt: !348)
!355 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !356)
!356 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !357)
!357 = distinct !DILocation(line: 1678, column: 18, scope: !343)
!358 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !356)
!359 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !356)
!360 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !361)
!361 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !357)
!362 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !348)
!363 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !348)
!364 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !365)
!365 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !348)
!366 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !348)
!367 = !DILocation(line: 1680, column: 1, scope: !343)
!368 = distinct !DISubprogram(name: "i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1682, type: !9, scopeLine: 1683, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!369 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !370)
!370 = distinct !DILocation(line: 1686, column: 29, scope: !368)
!371 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !372)
!372 = distinct !DILocation(line: 1688, column: 29, scope: !368)
!373 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !374)
!374 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !375)
!375 = distinct !DILocation(line: 1690, column: 18, scope: !368)
!376 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !374)
!377 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !374)
!378 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !379)
!379 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !375)
!380 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !381)
!381 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !382)
!382 = distinct !DILocation(line: 1691, column: 5, scope: !368)
!383 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !381)
!384 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !381)
!385 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !381)
!386 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !381)
!387 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !388)
!388 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !382)
!389 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !388)
!390 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !388)
!391 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !388)
!392 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !388)
!393 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !382)
!394 = !DILocation(line: 544, column: 128, scope: !21, inlinedAt: !382)
!395 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !382)
!396 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !382)
!397 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !382)
!398 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !399)
!399 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !382)
!400 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !382)
!401 = !DILocation(line: 1692, column: 1, scope: !368)
!402 = distinct !DISubprogram(name: "i_btype_branches__opc_bltu__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1694, type: !9, scopeLine: 1695, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!403 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !404)
!404 = distinct !DILocation(line: 1701, column: 5, scope: !402)
!405 = !DILocation(line: 1702, column: 1, scope: !402)
!406 = distinct !DISubprogram(name: "i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1704, type: !9, scopeLine: 1705, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!407 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !408)
!408 = distinct !DILocation(line: 1709, column: 29, scope: !406)
!409 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !410)
!410 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !411)
!411 = distinct !DILocation(line: 1712, column: 5, scope: !406)
!412 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !410)
!413 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !410)
!414 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !410)
!415 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !411)
!416 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !411)
!417 = !DILocation(line: 550, column: 129, scope: !21, inlinedAt: !411)
!418 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !419)
!419 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !420)
!420 = distinct !DILocation(line: 1711, column: 18, scope: !406)
!421 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !419)
!422 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !419)
!423 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !424)
!424 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !420)
!425 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !411)
!426 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !411)
!427 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !428)
!428 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !411)
!429 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !411)
!430 = !DILocation(line: 1713, column: 1, scope: !406)
!431 = distinct !DISubprogram(name: "i_btype_branches__opc_bltu__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1715, type: !9, scopeLine: 1716, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!432 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !433)
!433 = distinct !DILocation(line: 1719, column: 29, scope: !431)
!434 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !435)
!435 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !436)
!436 = distinct !DILocation(line: 1723, column: 5, scope: !431)
!437 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !435)
!438 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !435)
!439 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !435)
!440 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !435)
!441 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !436)
!442 = !DILocation(line: 1724, column: 1, scope: !431)
!443 = distinct !DISubprogram(name: "i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1726, type: !9, scopeLine: 1727, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!444 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !445)
!445 = distinct !DILocation(line: 1730, column: 29, scope: !443)
!446 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !447)
!447 = distinct !DILocation(line: 1732, column: 29, scope: !443)
!448 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !449)
!449 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !450)
!450 = distinct !DILocation(line: 1734, column: 18, scope: !443)
!451 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !449)
!452 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !449)
!453 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !454)
!454 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !450)
!455 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !456)
!456 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !457)
!457 = distinct !DILocation(line: 1735, column: 5, scope: !443)
!458 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !456)
!459 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !456)
!460 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !456)
!461 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !456)
!462 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !463)
!463 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !457)
!464 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !463)
!465 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !463)
!466 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !463)
!467 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !463)
!468 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !457)
!469 = !DILocation(line: 550, column: 129, scope: !21, inlinedAt: !457)
!470 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !457)
!471 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !457)
!472 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !457)
!473 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !474)
!474 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !457)
!475 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !457)
!476 = !DILocation(line: 1736, column: 1, scope: !443)
!477 = distinct !DISubprogram(name: "i_btype_branches__opc_bne__x_0__x_0__relative_addr12__", scope: !8, file: !8, line: 1738, type: !9, scopeLine: 1739, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!478 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !479)
!479 = distinct !DILocation(line: 1745, column: 5, scope: !477)
!480 = !DILocation(line: 1746, column: 1, scope: !477)
!481 = distinct !DISubprogram(name: "i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1748, type: !9, scopeLine: 1749, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!482 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !483)
!483 = distinct !DILocation(line: 1753, column: 29, scope: !481)
!484 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !485)
!485 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !486)
!486 = distinct !DILocation(line: 1756, column: 5, scope: !481)
!487 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !485)
!488 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !485)
!489 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !485)
!490 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !486)
!491 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !486)
!492 = !DILocation(line: 541, column: 119, scope: !21, inlinedAt: !486)
!493 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !494)
!494 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !495)
!495 = distinct !DILocation(line: 1755, column: 18, scope: !481)
!496 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !494)
!497 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !494)
!498 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !499)
!499 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !495)
!500 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !486)
!501 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !486)
!502 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !503)
!503 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !486)
!504 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !486)
!505 = !DILocation(line: 1757, column: 1, scope: !481)
!506 = distinct !DISubprogram(name: "i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__", scope: !8, file: !8, line: 1759, type: !9, scopeLine: 1760, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!507 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !508)
!508 = distinct !DILocation(line: 1763, column: 29, scope: !506)
!509 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !510)
!510 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !511)
!511 = distinct !DILocation(line: 1767, column: 5, scope: !506)
!512 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !510)
!513 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !510)
!514 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !510)
!515 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !511)
!516 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !511)
!517 = !DILocation(line: 541, column: 119, scope: !21, inlinedAt: !511)
!518 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !519)
!519 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !520)
!520 = distinct !DILocation(line: 1766, column: 18, scope: !506)
!521 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !519)
!522 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !519)
!523 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !524)
!524 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !520)
!525 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !511)
!526 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !511)
!527 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !528)
!528 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !511)
!529 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !511)
!530 = !DILocation(line: 1768, column: 1, scope: !506)
!531 = distinct !DISubprogram(name: "i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__", scope: !8, file: !8, line: 1770, type: !9, scopeLine: 1771, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!532 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !533)
!533 = distinct !DILocation(line: 1774, column: 29, scope: !531)
!534 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !535)
!535 = distinct !DILocation(line: 1776, column: 29, scope: !531)
!536 = !DILocation(line: 983, column: 21, scope: !11, inlinedAt: !537)
!537 = distinct !DILocation(line: 3722, column: 94, scope: !13, inlinedAt: !538)
!538 = distinct !DILocation(line: 1778, column: 18, scope: !531)
!539 = !DILocation(line: 983, column: 159, scope: !11, inlinedAt: !537)
!540 = !DILocation(line: 983, column: 13, scope: !11, inlinedAt: !537)
!541 = !DILocation(line: 393, column: 95, scope: !18, inlinedAt: !542)
!542 = distinct !DILocation(line: 3723, column: 12, scope: !13, inlinedAt: !538)
!543 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !544)
!544 = distinct !DILocation(line: 525, column: 56, scope: !21, inlinedAt: !545)
!545 = distinct !DILocation(line: 1779, column: 5, scope: !531)
!546 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !544)
!547 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !544)
!548 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !544)
!549 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !544)
!550 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !551)
!551 = distinct !DILocation(line: 526, column: 56, scope: !21, inlinedAt: !545)
!552 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !551)
!553 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !551)
!554 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !551)
!555 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !551)
!556 = !DILocation(line: 529, column: 69, scope: !21, inlinedAt: !545)
!557 = !DILocation(line: 541, column: 119, scope: !21, inlinedAt: !545)
!558 = !DILocation(line: 560, column: 9, scope: !21, inlinedAt: !545)
!559 = !DILocation(line: 529, column: 74, scope: !21, inlinedAt: !545)
!560 = !DILocation(line: 529, column: 149, scope: !21, inlinedAt: !545)
!561 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !562)
!562 = distinct !DILocation(line: 562, column: 9, scope: !21, inlinedAt: !545)
!563 = !DILocation(line: 563, column: 5, scope: !21, inlinedAt: !545)
!564 = !DILocation(line: 1780, column: 1, scope: !531)
!565 = distinct !DISubprogram(name: "i_call_alias__relative_addr20__", scope: !8, file: !8, line: 1782, type: !9, scopeLine: 1783, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!566 = !DILocation(line: 988, column: 21, scope: !567, inlinedAt: !568)
!567 = distinct !DISubprogram(name: "MI6addr20IH1_13default_start18_15relative_addr204simm1_15relative_addr20", scope: !8, file: !8, line: 986, type: !9, scopeLine: 987, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!568 = distinct !DILocation(line: 3728, column: 94, scope: !569, inlinedAt: !570)
!569 = distinct !DISubprogram(name: "relative_addr20__", scope: !8, file: !8, line: 3726, type: !9, scopeLine: 3727, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!570 = distinct !DILocation(line: 1785, column: 18, scope: !565)
!571 = !DILocation(line: 988, column: 160, scope: !567, inlinedAt: !568)
!572 = !DILocation(line: 988, column: 13, scope: !567, inlinedAt: !568)
!573 = !DILocation(line: 398, column: 95, scope: !574, inlinedAt: !575)
!574 = distinct !DISubprogram(name: "MI15relative_addr20IH1_13default_start18_15relative_addr204simm", scope: !8, file: !8, line: 396, type: !9, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!575 = distinct !DILocation(line: 3729, column: 12, scope: !569, inlinedAt: !570)
!576 = !DILocation(line: 902, column: 26, scope: !577, inlinedAt: !578)
!577 = distinct !DISubprogram(name: "MI12i_call_aliasIH1_13default_start", scope: !8, file: !8, line: 444, type: !9, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!578 = distinct !DILocation(line: 1786, column: 5, scope: !565)
!579 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !581)
!580 = distinct !DISubprogram(name: "MI12rf_xpr_write", scope: !27, file: !27, line: 44, type: !9, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!581 = distinct !DILocation(line: 902, column: 9, scope: !577, inlinedAt: !578)
!582 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !584)
!583 = distinct !DISubprogram(name: "MI7read_pc", scope: !27, file: !27, line: 136, type: !9, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!584 = distinct !DILocation(line: 909, column: 69, scope: !577, inlinedAt: !578)
!585 = !DILocation(line: 909, column: 82, scope: !577, inlinedAt: !578)
!586 = !DILocation(line: 909, column: 158, scope: !577, inlinedAt: !578)
!587 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !588)
!588 = distinct !DILocation(line: 910, column: 9, scope: !577, inlinedAt: !578)
!589 = !DILocation(line: 1787, column: 1, scope: !565)
!590 = distinct !DISubprogram(name: "i_call_reg_alias__simm12__x_0__", scope: !8, file: !8, line: 1789, type: !9, scopeLine: 1790, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!591 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !592)
!592 = distinct !DILocation(line: 932, column: 26, scope: !593, inlinedAt: !594)
!593 = distinct !DISubprogram(name: "MI16i_call_reg_aliasIH1_13default_start", scope: !8, file: !8, line: 567, type: !9, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!594 = distinct !DILocation(line: 1794, column: 5, scope: !590)
!595 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !596)
!596 = distinct !DILocation(line: 932, column: 9, scope: !593, inlinedAt: !594)
!597 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !599)
!598 = distinct !DISubprogram(name: "MI5valueIH1_13default_start8_6simm124simm1_6simm12", scope: !8, file: !8, line: 971, type: !9, scopeLine: 972, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!599 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !601)
!600 = distinct !DISubprogram(name: "simm12__", scope: !8, file: !8, line: 3732, type: !9, scopeLine: 3733, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!601 = distinct !DILocation(line: 1792, column: 18, scope: !590)
!602 = !DILocation(line: 934, column: 137, scope: !593, inlinedAt: !594)
!603 = !DILocation(line: 934, column: 191, scope: !593, inlinedAt: !594)
!604 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !605)
!605 = distinct !DILocation(line: 935, column: 9, scope: !593, inlinedAt: !594)
!606 = !DILocation(line: 1795, column: 1, scope: !590)
!607 = distinct !DISubprogram(name: "i_call_reg_alias__simm12__xpr_general__", scope: !8, file: !8, line: 1797, type: !9, scopeLine: 1798, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!608 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !609)
!609 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !610)
!610 = distinct !DILocation(line: 1800, column: 18, scope: !607)
!611 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !612)
!612 = distinct !DILocation(line: 1802, column: 29, scope: !607)
!613 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !614)
!614 = distinct !DILocation(line: 932, column: 26, scope: !593, inlinedAt: !615)
!615 = distinct !DILocation(line: 1803, column: 5, scope: !607)
!616 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !617)
!617 = distinct !DILocation(line: 932, column: 9, scope: !593, inlinedAt: !615)
!618 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !619)
!619 = distinct !DILocation(line: 934, column: 74, scope: !593, inlinedAt: !615)
!620 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !619)
!621 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !619)
!622 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !619)
!623 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !619)
!624 = !DILocation(line: 934, column: 137, scope: !593, inlinedAt: !615)
!625 = !DILocation(line: 934, column: 135, scope: !593, inlinedAt: !615)
!626 = !DILocation(line: 934, column: 191, scope: !593, inlinedAt: !615)
!627 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !628)
!628 = distinct !DILocation(line: 935, column: 9, scope: !593, inlinedAt: !615)
!629 = !DILocation(line: 1804, column: 1, scope: !607)
!630 = distinct !DISubprogram(name: "i_halt__opc_halt__", scope: !8, file: !8, line: 1806, type: !9, scopeLine: 1807, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!631 = !DILocation(line: 1810, column: 1, scope: !630)
!632 = distinct !DISubprogram(name: "i_itype_alu__opc_addi__x_0__x_0__simm12__", scope: !8, file: !8, line: 1812, type: !9, scopeLine: 1813, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!633 = !DILocation(line: 1820, column: 1, scope: !632)
!634 = distinct !DISubprogram(name: "i_itype_alu__opc_addi__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 1822, type: !9, scopeLine: 1823, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!635 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !636)
!636 = distinct !DILocation(line: 1827, column: 29, scope: !634)
!637 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !638)
!638 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !642)
!639 = !DILexicalBlockFile(scope: !640, file: !8, discriminator: 0)
!640 = distinct !DISubprogram(name: "MI11i_itype_aluIH1_13default_start", scope: !641, file: !641, line: 67, type: !9, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!641 = !DIFile(filename: "model/share/other/utils.codal", directory: "/home/project/cu_riscv32i_cycle_accurate")
!642 = distinct !DILocation(line: 1830, column: 5, scope: !634)
!643 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !638)
!644 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !638)
!645 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !638)
!646 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !638)
!647 = !DILocation(line: 1831, column: 1, scope: !634)
!648 = distinct !DISubprogram(name: "i_itype_alu__opc_addi__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 1833, type: !9, scopeLine: 1834, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!649 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !650)
!650 = distinct !DILocation(line: 1837, column: 28, scope: !648)
!651 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !652)
!652 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !653)
!653 = distinct !DILocation(line: 1841, column: 5, scope: !648)
!654 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !652)
!655 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !652)
!656 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !657)
!657 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !658)
!658 = distinct !DILocation(line: 1840, column: 18, scope: !648)
!659 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !653)
!660 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !652)
!661 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !652)
!662 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !652)
!663 = !DILocation(line: 1842, column: 1, scope: !648)
!664 = distinct !DISubprogram(name: "i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 1844, type: !9, scopeLine: 1845, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!665 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !666)
!666 = distinct !DILocation(line: 1848, column: 28, scope: !664)
!667 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !668)
!668 = distinct !DILocation(line: 1850, column: 29, scope: !664)
!669 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !670)
!670 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !671)
!671 = distinct !DILocation(line: 1852, column: 18, scope: !664)
!672 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !673)
!673 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !674)
!674 = distinct !DILocation(line: 1853, column: 5, scope: !664)
!675 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !673)
!676 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !673)
!677 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !673)
!678 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !673)
!679 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !680)
!680 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !674)
!681 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !680)
!682 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !680)
!683 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !674)
!684 = !DILocation(line: 302, column: 106, scope: !639, inlinedAt: !674)
!685 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !680)
!686 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !680)
!687 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !680)
!688 = !DILocation(line: 1854, column: 1, scope: !664)
!689 = distinct !DISubprogram(name: "i_itype_alu__opc_andi__x_0__x_0__simm12__", scope: !8, file: !8, line: 1856, type: !9, scopeLine: 1857, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!690 = !DILocation(line: 1864, column: 1, scope: !689)
!691 = distinct !DISubprogram(name: "i_itype_alu__opc_andi__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 1866, type: !9, scopeLine: 1867, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!692 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !693)
!693 = distinct !DILocation(line: 1871, column: 29, scope: !691)
!694 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !695)
!695 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !696)
!696 = distinct !DILocation(line: 1874, column: 5, scope: !691)
!697 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !695)
!698 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !695)
!699 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !695)
!700 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !695)
!701 = !DILocation(line: 1875, column: 1, scope: !691)
!702 = distinct !DISubprogram(name: "i_itype_alu__opc_andi__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 1877, type: !9, scopeLine: 1878, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!703 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !704)
!704 = distinct !DILocation(line: 1881, column: 28, scope: !702)
!705 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !706)
!706 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !707)
!707 = distinct !DILocation(line: 1885, column: 5, scope: !702)
!708 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !706)
!709 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !706)
!710 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !706)
!711 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !706)
!712 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !706)
!713 = !DILocation(line: 1886, column: 1, scope: !702)
!714 = distinct !DISubprogram(name: "i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 1888, type: !9, scopeLine: 1889, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!715 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !716)
!716 = distinct !DILocation(line: 1892, column: 28, scope: !714)
!717 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !718)
!718 = distinct !DILocation(line: 1894, column: 29, scope: !714)
!719 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !720)
!720 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !721)
!721 = distinct !DILocation(line: 1896, column: 18, scope: !714)
!722 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !723)
!723 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !724)
!724 = distinct !DILocation(line: 1897, column: 5, scope: !714)
!725 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !723)
!726 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !723)
!727 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !723)
!728 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !723)
!729 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !730)
!730 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !724)
!731 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !730)
!732 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !730)
!733 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !724)
!734 = !DILocation(line: 319, column: 106, scope: !639, inlinedAt: !724)
!735 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !730)
!736 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !730)
!737 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !730)
!738 = !DILocation(line: 1898, column: 1, scope: !714)
!739 = distinct !DISubprogram(name: "i_itype_alu__opc_ori__x_0__x_0__simm12__", scope: !8, file: !8, line: 1900, type: !9, scopeLine: 1901, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!740 = !DILocation(line: 1908, column: 1, scope: !739)
!741 = distinct !DISubprogram(name: "i_itype_alu__opc_ori__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 1910, type: !9, scopeLine: 1911, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!742 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !743)
!743 = distinct !DILocation(line: 1915, column: 29, scope: !741)
!744 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !745)
!745 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !746)
!746 = distinct !DILocation(line: 1918, column: 5, scope: !741)
!747 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !745)
!748 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !745)
!749 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !745)
!750 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !745)
!751 = !DILocation(line: 1919, column: 1, scope: !741)
!752 = distinct !DISubprogram(name: "i_itype_alu__opc_ori__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 1921, type: !9, scopeLine: 1922, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!753 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !754)
!754 = distinct !DILocation(line: 1925, column: 28, scope: !752)
!755 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !756)
!756 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !757)
!757 = distinct !DILocation(line: 1929, column: 5, scope: !752)
!758 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !756)
!759 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !756)
!760 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !761)
!761 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !762)
!762 = distinct !DILocation(line: 1928, column: 18, scope: !752)
!763 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !757)
!764 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !756)
!765 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !756)
!766 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !756)
!767 = !DILocation(line: 1930, column: 1, scope: !752)
!768 = distinct !DISubprogram(name: "i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 1932, type: !9, scopeLine: 1933, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!769 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !770)
!770 = distinct !DILocation(line: 1936, column: 28, scope: !768)
!771 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !772)
!772 = distinct !DILocation(line: 1938, column: 29, scope: !768)
!773 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !774)
!774 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !775)
!775 = distinct !DILocation(line: 1940, column: 18, scope: !768)
!776 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !777)
!777 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !778)
!778 = distinct !DILocation(line: 1941, column: 5, scope: !768)
!779 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !777)
!780 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !777)
!781 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !777)
!782 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !777)
!783 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !784)
!784 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !778)
!785 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !784)
!786 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !784)
!787 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !778)
!788 = !DILocation(line: 316, column: 106, scope: !639, inlinedAt: !778)
!789 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !784)
!790 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !784)
!791 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !784)
!792 = !DILocation(line: 1942, column: 1, scope: !768)
!793 = distinct !DISubprogram(name: "i_itype_alu__opc_slti__x_0__x_0__simm12__", scope: !8, file: !8, line: 1944, type: !9, scopeLine: 1945, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!794 = !DILocation(line: 1952, column: 1, scope: !793)
!795 = distinct !DISubprogram(name: "i_itype_alu__opc_slti__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 1954, type: !9, scopeLine: 1955, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!796 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !797)
!797 = distinct !DILocation(line: 1959, column: 29, scope: !795)
!798 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !799)
!799 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !800)
!800 = distinct !DILocation(line: 1962, column: 5, scope: !795)
!801 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !799)
!802 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !799)
!803 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !799)
!804 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !799)
!805 = !DILocation(line: 1963, column: 1, scope: !795)
!806 = distinct !DISubprogram(name: "i_itype_alu__opc_slti__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 1965, type: !9, scopeLine: 1966, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!807 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !808)
!808 = distinct !DILocation(line: 1969, column: 28, scope: !806)
!809 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !810)
!810 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !811)
!811 = distinct !DILocation(line: 1973, column: 5, scope: !806)
!812 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !810)
!813 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !810)
!814 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !815)
!815 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !816)
!816 = distinct !DILocation(line: 1972, column: 18, scope: !806)
!817 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !811)
!818 = !DILocation(line: 305, column: 71, scope: !639, inlinedAt: !811)
!819 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !810)
!820 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !810)
!821 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !810)
!822 = !DILocation(line: 1974, column: 1, scope: !806)
!823 = distinct !DISubprogram(name: "i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 1976, type: !9, scopeLine: 1977, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!824 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !825)
!825 = distinct !DILocation(line: 1980, column: 28, scope: !823)
!826 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !827)
!827 = distinct !DILocation(line: 1982, column: 29, scope: !823)
!828 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !829)
!829 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !830)
!830 = distinct !DILocation(line: 1984, column: 18, scope: !823)
!831 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !832)
!832 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !833)
!833 = distinct !DILocation(line: 1985, column: 5, scope: !823)
!834 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !832)
!835 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !832)
!836 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !832)
!837 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !832)
!838 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !839)
!839 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !833)
!840 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !839)
!841 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !839)
!842 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !833)
!843 = !DILocation(line: 305, column: 71, scope: !639, inlinedAt: !833)
!844 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !839)
!845 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !839)
!846 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !839)
!847 = !DILocation(line: 1986, column: 1, scope: !823)
!848 = distinct !DISubprogram(name: "i_itype_alu__opc_sltiu__x_0__x_0__simm12__", scope: !8, file: !8, line: 1988, type: !9, scopeLine: 1989, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!849 = !DILocation(line: 1996, column: 1, scope: !848)
!850 = distinct !DISubprogram(name: "i_itype_alu__opc_sltiu__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 1998, type: !9, scopeLine: 1999, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!851 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !852)
!852 = distinct !DILocation(line: 2003, column: 29, scope: !850)
!853 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !854)
!854 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !855)
!855 = distinct !DILocation(line: 2006, column: 5, scope: !850)
!856 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !854)
!857 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !854)
!858 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !854)
!859 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !854)
!860 = !DILocation(line: 2007, column: 1, scope: !850)
!861 = distinct !DISubprogram(name: "i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 2009, type: !9, scopeLine: 2010, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!862 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !863)
!863 = distinct !DILocation(line: 2013, column: 28, scope: !861)
!864 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !865)
!865 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !866)
!866 = distinct !DILocation(line: 2017, column: 5, scope: !861)
!867 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !865)
!868 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !865)
!869 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !870)
!870 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !871)
!871 = distinct !DILocation(line: 2016, column: 18, scope: !861)
!872 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !866)
!873 = !DILocation(line: 309, column: 72, scope: !639, inlinedAt: !866)
!874 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !865)
!875 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !865)
!876 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !865)
!877 = !DILocation(line: 2018, column: 1, scope: !861)
!878 = distinct !DISubprogram(name: "i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 2020, type: !9, scopeLine: 2021, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!879 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !880)
!880 = distinct !DILocation(line: 2024, column: 28, scope: !878)
!881 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !882)
!882 = distinct !DILocation(line: 2026, column: 29, scope: !878)
!883 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !884)
!884 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !885)
!885 = distinct !DILocation(line: 2028, column: 18, scope: !878)
!886 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !887)
!887 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !888)
!888 = distinct !DILocation(line: 2029, column: 5, scope: !878)
!889 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !887)
!890 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !887)
!891 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !887)
!892 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !887)
!893 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !894)
!894 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !888)
!895 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !894)
!896 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !894)
!897 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !888)
!898 = !DILocation(line: 309, column: 72, scope: !639, inlinedAt: !888)
!899 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !894)
!900 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !894)
!901 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !894)
!902 = !DILocation(line: 2030, column: 1, scope: !878)
!903 = distinct !DISubprogram(name: "i_itype_alu__opc_xori__x_0__x_0__simm12__", scope: !8, file: !8, line: 2032, type: !9, scopeLine: 2033, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!904 = !DILocation(line: 2040, column: 1, scope: !903)
!905 = distinct !DISubprogram(name: "i_itype_alu__opc_xori__x_0__xpr_general__simm12__", scope: !8, file: !8, line: 2042, type: !9, scopeLine: 2043, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!906 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !907)
!907 = distinct !DILocation(line: 2047, column: 29, scope: !905)
!908 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !909)
!909 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !910)
!910 = distinct !DILocation(line: 2050, column: 5, scope: !905)
!911 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !909)
!912 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !909)
!913 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !909)
!914 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !909)
!915 = !DILocation(line: 2051, column: 1, scope: !905)
!916 = distinct !DISubprogram(name: "i_itype_alu__opc_xori__xpr_general__x_0__simm12__", scope: !8, file: !8, line: 2053, type: !9, scopeLine: 2054, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!917 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !918)
!918 = distinct !DILocation(line: 2057, column: 28, scope: !916)
!919 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !920)
!920 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !921)
!921 = distinct !DILocation(line: 2061, column: 5, scope: !916)
!922 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !920)
!923 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !920)
!924 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !925)
!925 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !926)
!926 = distinct !DILocation(line: 2060, column: 18, scope: !916)
!927 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !921)
!928 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !920)
!929 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !920)
!930 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !920)
!931 = !DILocation(line: 2062, column: 1, scope: !916)
!932 = distinct !DISubprogram(name: "i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__", scope: !8, file: !8, line: 2064, type: !9, scopeLine: 2065, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!933 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !934)
!934 = distinct !DILocation(line: 2068, column: 28, scope: !932)
!935 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !936)
!936 = distinct !DILocation(line: 2070, column: 29, scope: !932)
!937 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !938)
!938 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !939)
!939 = distinct !DILocation(line: 2072, column: 18, scope: !932)
!940 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !941)
!941 = distinct !DILocation(line: 297, column: 51, scope: !639, inlinedAt: !942)
!942 = distinct !DILocation(line: 2073, column: 5, scope: !932)
!943 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !941)
!944 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !941)
!945 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !941)
!946 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !941)
!947 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !948)
!948 = distinct !DILocation(line: 327, column: 5, scope: !639, inlinedAt: !942)
!949 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !948)
!950 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !948)
!951 = !DILocation(line: 298, column: 56, scope: !639, inlinedAt: !942)
!952 = !DILocation(line: 313, column: 106, scope: !639, inlinedAt: !942)
!953 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !948)
!954 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !948)
!955 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !948)
!956 = !DILocation(line: 2074, column: 1, scope: !932)
!957 = distinct !DISubprogram(name: "i_itype_jlreg__opc_jalr__x_0__simm12__x_0__", scope: !8, file: !8, line: 2076, type: !9, scopeLine: 2077, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!958 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !959)
!959 = distinct !DILocation(line: 489, column: 64, scope: !960, inlinedAt: !961)
!960 = distinct !DISubprogram(name: "MI13i_itype_jlregIH1_13default_start", scope: !8, file: !8, line: 915, type: !9, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!961 = distinct !DILocation(line: 2083, column: 5, scope: !957)
!962 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !963)
!963 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !964)
!964 = distinct !DILocation(line: 2081, column: 18, scope: !957)
!965 = !DILocation(line: 491, column: 123, scope: !960, inlinedAt: !961)
!966 = !DILocation(line: 491, column: 177, scope: !960, inlinedAt: !961)
!967 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !968)
!968 = distinct !DILocation(line: 493, column: 9, scope: !960, inlinedAt: !961)
!969 = !DILocation(line: 2084, column: 1, scope: !957)
!970 = distinct !DISubprogram(name: "i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2086, type: !9, scopeLine: 2087, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!971 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !972)
!972 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !973)
!973 = distinct !DILocation(line: 2091, column: 18, scope: !970)
!974 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !975)
!975 = distinct !DILocation(line: 2093, column: 29, scope: !970)
!976 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !977)
!977 = distinct !DILocation(line: 489, column: 64, scope: !960, inlinedAt: !978)
!978 = distinct !DILocation(line: 2094, column: 5, scope: !970)
!979 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !980)
!980 = distinct !DILocation(line: 490, column: 61, scope: !960, inlinedAt: !978)
!981 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !980)
!982 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !980)
!983 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !980)
!984 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !980)
!985 = !DILocation(line: 491, column: 123, scope: !960, inlinedAt: !978)
!986 = !DILocation(line: 491, column: 121, scope: !960, inlinedAt: !978)
!987 = !DILocation(line: 491, column: 177, scope: !960, inlinedAt: !978)
!988 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !989)
!989 = distinct !DILocation(line: 493, column: 9, scope: !960, inlinedAt: !978)
!990 = !DILocation(line: 2095, column: 1, scope: !970)
!991 = distinct !DISubprogram(name: "i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2097, type: !9, scopeLine: 2098, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!992 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !993)
!993 = distinct !DILocation(line: 2101, column: 28, scope: !991)
!994 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !995)
!995 = distinct !DILocation(line: 489, column: 64, scope: !960, inlinedAt: !996)
!996 = distinct !DILocation(line: 2105, column: 5, scope: !991)
!997 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !998)
!998 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !999)
!999 = distinct !DILocation(line: 2103, column: 18, scope: !991)
!1000 = !DILocation(line: 491, column: 123, scope: !960, inlinedAt: !996)
!1001 = !DILocation(line: 491, column: 177, scope: !960, inlinedAt: !996)
!1002 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 492, column: 9, scope: !960, inlinedAt: !996)
!1004 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1003)
!1005 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1003)
!1006 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1003)
!1007 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1003)
!1008 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1003)
!1009 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 493, column: 9, scope: !960, inlinedAt: !996)
!1011 = !DILocation(line: 2106, column: 1, scope: !991)
!1012 = distinct !DISubprogram(name: "i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2108, type: !9, scopeLine: 2109, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1013 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 2112, column: 28, scope: !1012)
!1015 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 2114, column: 18, scope: !1012)
!1018 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 2116, column: 29, scope: !1012)
!1020 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 489, column: 64, scope: !960, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 2117, column: 5, scope: !1012)
!1023 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 490, column: 61, scope: !960, inlinedAt: !1022)
!1025 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1024)
!1026 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1024)
!1027 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1024)
!1028 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1024)
!1029 = !DILocation(line: 491, column: 123, scope: !960, inlinedAt: !1022)
!1030 = !DILocation(line: 491, column: 121, scope: !960, inlinedAt: !1022)
!1031 = !DILocation(line: 491, column: 177, scope: !960, inlinedAt: !1022)
!1032 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 492, column: 9, scope: !960, inlinedAt: !1022)
!1034 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1033)
!1035 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1033)
!1036 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1033)
!1037 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1033)
!1038 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1033)
!1039 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 493, column: 9, scope: !960, inlinedAt: !1022)
!1041 = !DILocation(line: 2118, column: 1, scope: !1012)
!1042 = distinct !DISubprogram(name: "i_itype_loads__opc_lb__x_0__simm12__x_0__", scope: !8, file: !8, line: 2120, type: !9, scopeLine: 2121, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1043 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 2125, column: 18, scope: !1042)
!1046 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1048)
!1047 = distinct !DISubprogram(name: "MI13i_itype_loadsIH1_13default_start", scope: !8, file: !8, line: 500, type: !9, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1048 = distinct !DILocation(line: 2127, column: 5, scope: !1042)
!1049 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1048)
!1050 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1052)
!1051 = distinct !DISubprogram(name: "codasip_ldst___read__", scope: !44, file: !44, line: 271, type: !9, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1052 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1054)
!1053 = distinct !DISubprogram(name: "MI4load", scope: !27, file: !27, line: 52, type: !9, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1054 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1048)
!1055 = !DILocation(line: 2128, column: 1, scope: !1042)
!1056 = distinct !DISubprogram(name: "i_itype_loads__opc_lb__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2130, type: !9, scopeLine: 2131, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1057 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 2135, column: 18, scope: !1056)
!1060 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 2137, column: 29, scope: !1056)
!1062 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 2138, column: 5, scope: !1056)
!1064 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1063)
!1066 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1065)
!1067 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1065)
!1068 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1065)
!1069 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1065)
!1070 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1063)
!1071 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1063)
!1072 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1063)
!1075 = !DILocation(line: 2139, column: 1, scope: !1056)
!1076 = distinct !DISubprogram(name: "i_itype_loads__opc_lb__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2141, type: !9, scopeLine: 2142, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1077 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 2145, column: 28, scope: !1076)
!1079 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 2147, column: 18, scope: !1076)
!1082 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 2149, column: 5, scope: !1076)
!1084 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1083)
!1085 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1083)
!1088 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1083)
!1090 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1089)
!1091 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1089)
!1092 = !DILocation(line: 86, column: 16, scope: !1053, inlinedAt: !1087)
!1093 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1089)
!1094 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1089)
!1095 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1089)
!1096 = !DILocation(line: 2150, column: 1, scope: !1076)
!1097 = distinct !DISubprogram(name: "i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2152, type: !9, scopeLine: 2153, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1098 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 2156, column: 28, scope: !1097)
!1100 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 2158, column: 18, scope: !1097)
!1103 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 2160, column: 29, scope: !1097)
!1105 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 2161, column: 5, scope: !1097)
!1107 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1106)
!1109 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1108)
!1110 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1108)
!1111 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1108)
!1112 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1108)
!1113 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1106)
!1114 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1106)
!1115 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1106)
!1118 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1106)
!1120 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1119)
!1121 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1119)
!1122 = !DILocation(line: 86, column: 16, scope: !1053, inlinedAt: !1117)
!1123 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1119)
!1124 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1119)
!1125 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1119)
!1126 = !DILocation(line: 2162, column: 1, scope: !1097)
!1127 = distinct !DISubprogram(name: "i_itype_loads__opc_lbu__x_0__simm12__x_0__", scope: !8, file: !8, line: 2164, type: !9, scopeLine: 2165, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1128 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 2169, column: 18, scope: !1127)
!1131 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 2171, column: 5, scope: !1127)
!1133 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1132)
!1134 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1132)
!1137 = !DILocation(line: 2172, column: 1, scope: !1127)
!1138 = distinct !DISubprogram(name: "i_itype_loads__opc_lbu__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2174, type: !9, scopeLine: 2175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1139 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 2179, column: 18, scope: !1138)
!1142 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 2181, column: 29, scope: !1138)
!1144 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 2182, column: 5, scope: !1138)
!1146 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1145)
!1148 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1147)
!1149 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1147)
!1150 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1147)
!1151 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1147)
!1152 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1145)
!1153 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1145)
!1154 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1145)
!1157 = !DILocation(line: 2183, column: 1, scope: !1138)
!1158 = distinct !DISubprogram(name: "i_itype_loads__opc_lbu__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2185, type: !9, scopeLine: 2186, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1159 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 2189, column: 28, scope: !1158)
!1161 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 2191, column: 18, scope: !1158)
!1164 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 2193, column: 5, scope: !1158)
!1166 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1165)
!1167 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1165)
!1170 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1165)
!1172 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1171)
!1173 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1171)
!1174 = !DILocation(line: 277, column: 13, scope: !1051, inlinedAt: !1168)
!1175 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1171)
!1176 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1171)
!1177 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1171)
!1178 = !DILocation(line: 2194, column: 1, scope: !1158)
!1179 = distinct !DISubprogram(name: "i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2196, type: !9, scopeLine: 2197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1180 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 2200, column: 28, scope: !1179)
!1182 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 2202, column: 18, scope: !1179)
!1185 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 2204, column: 29, scope: !1179)
!1187 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 2205, column: 5, scope: !1179)
!1189 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1188)
!1191 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1190)
!1192 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1190)
!1193 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1190)
!1194 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1190)
!1195 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1188)
!1196 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1188)
!1197 = !DILocation(line: 277, column: 20, scope: !1051, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1188)
!1200 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1188)
!1202 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1201)
!1203 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1201)
!1204 = !DILocation(line: 277, column: 13, scope: !1051, inlinedAt: !1198)
!1205 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1201)
!1206 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1201)
!1207 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1201)
!1208 = !DILocation(line: 2206, column: 1, scope: !1179)
!1209 = distinct !DISubprogram(name: "i_itype_loads__opc_lh__x_0__simm12__x_0__", scope: !8, file: !8, line: 2208, type: !9, scopeLine: 2209, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1210 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 2213, column: 18, scope: !1209)
!1213 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 2215, column: 5, scope: !1209)
!1215 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1214)
!1216 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1214)
!1219 = !DILocation(line: 2216, column: 1, scope: !1209)
!1220 = distinct !DISubprogram(name: "i_itype_loads__opc_lh__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2218, type: !9, scopeLine: 2219, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1221 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 2223, column: 18, scope: !1220)
!1224 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 2225, column: 29, scope: !1220)
!1226 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 2226, column: 5, scope: !1220)
!1228 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1227)
!1230 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1229)
!1231 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1229)
!1232 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1229)
!1233 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1229)
!1234 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1227)
!1235 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1227)
!1236 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1227)
!1239 = !DILocation(line: 2227, column: 1, scope: !1220)
!1240 = distinct !DISubprogram(name: "i_itype_loads__opc_lh__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2229, type: !9, scopeLine: 2230, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1241 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 2233, column: 28, scope: !1240)
!1243 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 2235, column: 18, scope: !1240)
!1246 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 2237, column: 5, scope: !1240)
!1248 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1247)
!1249 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1247)
!1252 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1247)
!1254 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1253)
!1255 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1253)
!1256 = !DILocation(line: 88, column: 16, scope: !1053, inlinedAt: !1251)
!1257 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1253)
!1258 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1253)
!1259 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1253)
!1260 = !DILocation(line: 2238, column: 1, scope: !1240)
!1261 = distinct !DISubprogram(name: "i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2240, type: !9, scopeLine: 2241, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1262 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 2244, column: 28, scope: !1261)
!1264 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 2246, column: 18, scope: !1261)
!1267 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 2248, column: 29, scope: !1261)
!1269 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 2249, column: 5, scope: !1261)
!1271 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1270)
!1273 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1272)
!1274 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1272)
!1275 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1272)
!1276 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1272)
!1277 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1270)
!1278 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1270)
!1279 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1270)
!1282 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1270)
!1284 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1283)
!1285 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1283)
!1286 = !DILocation(line: 88, column: 16, scope: !1053, inlinedAt: !1281)
!1287 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1283)
!1288 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1283)
!1289 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1283)
!1290 = !DILocation(line: 2250, column: 1, scope: !1261)
!1291 = distinct !DISubprogram(name: "i_itype_loads__opc_lhu__x_0__simm12__x_0__", scope: !8, file: !8, line: 2252, type: !9, scopeLine: 2253, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1292 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 2257, column: 18, scope: !1291)
!1295 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 2259, column: 5, scope: !1291)
!1297 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1296)
!1298 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1296)
!1301 = !DILocation(line: 2260, column: 1, scope: !1291)
!1302 = distinct !DISubprogram(name: "i_itype_loads__opc_lhu__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2262, type: !9, scopeLine: 2263, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1303 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 2267, column: 18, scope: !1302)
!1306 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 2269, column: 29, scope: !1302)
!1308 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 2270, column: 5, scope: !1302)
!1310 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1309)
!1312 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1311)
!1313 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1311)
!1314 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1311)
!1315 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1311)
!1316 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1309)
!1317 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1309)
!1318 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1309)
!1321 = !DILocation(line: 2271, column: 1, scope: !1302)
!1322 = distinct !DISubprogram(name: "i_itype_loads__opc_lhu__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2273, type: !9, scopeLine: 2274, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1323 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 2277, column: 28, scope: !1322)
!1325 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 2279, column: 18, scope: !1322)
!1328 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 2281, column: 5, scope: !1322)
!1330 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1329)
!1331 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1329)
!1334 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1329)
!1336 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1335)
!1337 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1335)
!1338 = !DILocation(line: 281, column: 13, scope: !1051, inlinedAt: !1332)
!1339 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1335)
!1340 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1335)
!1341 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1335)
!1342 = !DILocation(line: 2282, column: 1, scope: !1322)
!1343 = distinct !DISubprogram(name: "i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2284, type: !9, scopeLine: 2285, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1344 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 2288, column: 28, scope: !1343)
!1346 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 2290, column: 18, scope: !1343)
!1349 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 2292, column: 29, scope: !1343)
!1351 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 2293, column: 5, scope: !1343)
!1353 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1352)
!1355 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1354)
!1356 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1354)
!1357 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1354)
!1358 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1354)
!1359 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1352)
!1360 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1352)
!1361 = !DILocation(line: 281, column: 20, scope: !1051, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1352)
!1364 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1352)
!1366 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1365)
!1367 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1365)
!1368 = !DILocation(line: 281, column: 13, scope: !1051, inlinedAt: !1362)
!1369 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1365)
!1370 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1365)
!1371 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1365)
!1372 = !DILocation(line: 2294, column: 1, scope: !1343)
!1373 = distinct !DISubprogram(name: "i_itype_loads__opc_lw__x_0__simm12__x_0__", scope: !8, file: !8, line: 2296, type: !9, scopeLine: 2297, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1374 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 2301, column: 18, scope: !1373)
!1377 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 2303, column: 5, scope: !1373)
!1379 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1378)
!1380 = !DILocation(line: 289, column: 20, scope: !1051, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1378)
!1383 = !DILocation(line: 2304, column: 1, scope: !1373)
!1384 = distinct !DISubprogram(name: "i_itype_loads__opc_lw__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 2306, type: !9, scopeLine: 2307, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1385 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 2311, column: 18, scope: !1384)
!1388 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 2313, column: 29, scope: !1384)
!1390 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 2314, column: 5, scope: !1384)
!1392 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1391)
!1394 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1393)
!1395 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1393)
!1396 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1393)
!1397 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1393)
!1398 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1391)
!1399 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1391)
!1400 = !DILocation(line: 289, column: 20, scope: !1051, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1391)
!1403 = !DILocation(line: 2315, column: 1, scope: !1384)
!1404 = distinct !DISubprogram(name: "i_itype_loads__opc_lw__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 2317, type: !9, scopeLine: 2318, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1405 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 2321, column: 28, scope: !1404)
!1407 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 2323, column: 18, scope: !1404)
!1410 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 2325, column: 5, scope: !1404)
!1412 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1411)
!1413 = !DILocation(line: 289, column: 20, scope: !1051, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1411)
!1416 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1411)
!1418 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1417)
!1419 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1417)
!1420 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1417)
!1421 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1417)
!1422 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1417)
!1423 = !DILocation(line: 2326, column: 1, scope: !1404)
!1424 = distinct !DISubprogram(name: "i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 2328, type: !9, scopeLine: 2329, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1425 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 2332, column: 28, scope: !1424)
!1427 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 2334, column: 18, scope: !1424)
!1430 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 2336, column: 29, scope: !1424)
!1432 = !DILocation(line: 356, column: 9, scope: !1047, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 2337, column: 5, scope: !1424)
!1434 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 358, column: 57, scope: !1047, inlinedAt: !1433)
!1436 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1435)
!1437 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1435)
!1438 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1435)
!1439 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1435)
!1440 = !DILocation(line: 358, column: 120, scope: !1047, inlinedAt: !1433)
!1441 = !DILocation(line: 358, column: 118, scope: !1047, inlinedAt: !1433)
!1442 = !DILocation(line: 289, column: 20, scope: !1051, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 82, column: 24, scope: !1053, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 359, column: 55, scope: !1047, inlinedAt: !1433)
!1445 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 360, column: 5, scope: !1047, inlinedAt: !1433)
!1447 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1446)
!1448 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1446)
!1449 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1446)
!1450 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1446)
!1451 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1446)
!1452 = !DILocation(line: 2338, column: 1, scope: !1424)
!1453 = distinct !DISubprogram(name: "i_jal_abs_calias__opc_jal__x_0__relative_addr20__", scope: !8, file: !8, line: 2340, type: !9, scopeLine: 2341, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1454 = !DILocation(line: 988, column: 21, scope: !567, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 3728, column: 94, scope: !569, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 2345, column: 18, scope: !1453)
!1457 = !DILocation(line: 988, column: 160, scope: !567, inlinedAt: !1455)
!1458 = !DILocation(line: 988, column: 13, scope: !567, inlinedAt: !1455)
!1459 = !DILocation(line: 398, column: 95, scope: !574, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 3729, column: 12, scope: !569, inlinedAt: !1456)
!1461 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 950, column: 26, scope: !1463, inlinedAt: !1464)
!1463 = distinct !DISubprogram(name: "MI16i_jal_abs_caliasIH1_13default_start", scope: !8, file: !8, line: 940, type: !9, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1464 = distinct !DILocation(line: 2346, column: 5, scope: !1453)
!1465 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 951, column: 9, scope: !1463, inlinedAt: !1464)
!1467 = !DILocation(line: 2347, column: 1, scope: !1453)
!1468 = distinct !DISubprogram(name: "i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__", scope: !8, file: !8, line: 2349, type: !9, scopeLine: 2350, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1469 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 2353, column: 28, scope: !1468)
!1471 = !DILocation(line: 988, column: 21, scope: !567, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 3728, column: 94, scope: !569, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 2355, column: 18, scope: !1468)
!1474 = !DILocation(line: 988, column: 160, scope: !567, inlinedAt: !1472)
!1475 = !DILocation(line: 988, column: 13, scope: !567, inlinedAt: !1472)
!1476 = !DILocation(line: 398, column: 95, scope: !574, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 3729, column: 12, scope: !569, inlinedAt: !1473)
!1478 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 950, column: 26, scope: !1463, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 2356, column: 5, scope: !1468)
!1481 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 950, column: 9, scope: !1463, inlinedAt: !1480)
!1483 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1482)
!1484 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1482)
!1485 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1482)
!1486 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1482)
!1487 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1482)
!1488 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 951, column: 9, scope: !1463, inlinedAt: !1480)
!1490 = !DILocation(line: 2357, column: 1, scope: !1468)
!1491 = distinct !DISubprogram(name: "i_jtype_jlink__opc_jal__x_0__relative_addr20__", scope: !8, file: !8, line: 2359, type: !9, scopeLine: 2360, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1492 = !DILocation(line: 988, column: 21, scope: !567, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 3728, column: 94, scope: !569, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 2364, column: 18, scope: !1491)
!1495 = !DILocation(line: 988, column: 160, scope: !567, inlinedAt: !1493)
!1496 = !DILocation(line: 988, column: 13, scope: !567, inlinedAt: !1493)
!1497 = !DILocation(line: 398, column: 95, scope: !574, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 3729, column: 12, scope: !569, inlinedAt: !1494)
!1499 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 461, column: 64, scope: !1501, inlinedAt: !1502)
!1501 = distinct !DISubprogram(name: "MI13i_jtype_jlinkIH1_13default_start", scope: !8, file: !8, line: 364, type: !9, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1502 = distinct !DILocation(line: 2365, column: 5, scope: !1491)
!1503 = !DILocation(line: 463, column: 123, scope: !1501, inlinedAt: !1502)
!1504 = !DILocation(line: 463, column: 190, scope: !1501, inlinedAt: !1502)
!1505 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 464, column: 9, scope: !1501, inlinedAt: !1502)
!1507 = !DILocation(line: 2366, column: 1, scope: !1491)
!1508 = distinct !DISubprogram(name: "i_jtype_jlink__opc_jal__xpr_general__relative_addr20__", scope: !8, file: !8, line: 2368, type: !9, scopeLine: 2369, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1509 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 2372, column: 28, scope: !1508)
!1511 = !DILocation(line: 988, column: 21, scope: !567, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 3728, column: 94, scope: !569, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 2374, column: 18, scope: !1508)
!1514 = !DILocation(line: 988, column: 160, scope: !567, inlinedAt: !1512)
!1515 = !DILocation(line: 988, column: 13, scope: !567, inlinedAt: !1512)
!1516 = !DILocation(line: 398, column: 95, scope: !574, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 3729, column: 12, scope: !569, inlinedAt: !1513)
!1518 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 461, column: 64, scope: !1501, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 2375, column: 5, scope: !1508)
!1521 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 462, column: 9, scope: !1501, inlinedAt: !1520)
!1523 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1522)
!1524 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1522)
!1525 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1522)
!1526 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1522)
!1527 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1522)
!1528 = !DILocation(line: 463, column: 123, scope: !1501, inlinedAt: !1520)
!1529 = !DILocation(line: 463, column: 190, scope: !1501, inlinedAt: !1520)
!1530 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 464, column: 9, scope: !1501, inlinedAt: !1520)
!1532 = !DILocation(line: 2376, column: 1, scope: !1508)
!1533 = distinct !DISubprogram(name: "i_nop_alias__", scope: !8, file: !8, line: 2378, type: !9, scopeLine: 2379, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1534 = !DILocation(line: 2381, column: 1, scope: !1533)
!1535 = distinct !DISubprogram(name: "i_ret_alias__", scope: !8, file: !8, line: 2383, type: !9, scopeLine: 2384, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1536 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 880, column: 60, scope: !1538, inlinedAt: !1539)
!1538 = distinct !DISubprogram(name: "MI11i_ret_aliasIH1_13default_start", scope: !8, file: !8, line: 600, type: !9, scopeLine: 601, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1539 = distinct !DILocation(line: 2385, column: 5, scope: !1535)
!1540 = !DILocation(line: 147, column: 6, scope: !26, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 882, column: 5, scope: !1538, inlinedAt: !1539)
!1542 = !DILocation(line: 2386, column: 1, scope: !1535)
!1543 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__x_0__x_0__x_0__", scope: !8, file: !8, line: 2388, type: !9, scopeLine: 2389, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1544 = !DILocation(line: 2395, column: 1, scope: !1543)
!1545 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2397, type: !9, scopeLine: 2398, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1546 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 2403, column: 29, scope: !1545)
!1548 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1551)
!1550 = distinct !DISubprogram(name: "MI11i_rtype_aluIH1_13default_start", scope: !8, file: !8, line: 886, type: !9, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1551 = distinct !DILocation(line: 2404, column: 5, scope: !1545)
!1552 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1549)
!1553 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1549)
!1554 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1549)
!1555 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1549)
!1556 = !DILocation(line: 2405, column: 1, scope: !1545)
!1557 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2407, type: !9, scopeLine: 2408, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1558 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 2412, column: 29, scope: !1557)
!1560 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 2414, column: 5, scope: !1557)
!1563 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1561)
!1564 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1561)
!1565 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1561)
!1566 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1561)
!1567 = !DILocation(line: 2415, column: 1, scope: !1557)
!1568 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2417, type: !9, scopeLine: 2418, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1569 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 2422, column: 29, scope: !1568)
!1571 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 2424, column: 29, scope: !1568)
!1573 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 2425, column: 5, scope: !1568)
!1576 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1574)
!1577 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1574)
!1578 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1574)
!1579 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1574)
!1580 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1575)
!1582 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1581)
!1583 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1581)
!1584 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1581)
!1585 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1581)
!1586 = !DILocation(line: 2426, column: 1, scope: !1568)
!1587 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2428, type: !9, scopeLine: 2429, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1588 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 2432, column: 28, scope: !1587)
!1590 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 2435, column: 5, scope: !1587)
!1593 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1591)
!1594 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1591)
!1595 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1591)
!1596 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1591)
!1597 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1591)
!1598 = !DILocation(line: 2436, column: 1, scope: !1587)
!1599 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2438, type: !9, scopeLine: 2439, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1600 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 2442, column: 28, scope: !1599)
!1602 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 2445, column: 29, scope: !1599)
!1604 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 2446, column: 5, scope: !1599)
!1607 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1605)
!1608 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1605)
!1609 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1605)
!1610 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1605)
!1611 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1606)
!1613 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1612)
!1614 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1612)
!1615 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1612)
!1616 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1612)
!1617 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1612)
!1618 = !DILocation(line: 2447, column: 1, scope: !1599)
!1619 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2449, type: !9, scopeLine: 2450, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1620 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 2453, column: 28, scope: !1619)
!1622 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 2455, column: 29, scope: !1619)
!1624 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 2457, column: 5, scope: !1619)
!1627 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1625)
!1628 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1625)
!1629 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1625)
!1630 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1625)
!1631 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1626)
!1633 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1632)
!1634 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1632)
!1635 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1632)
!1636 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1632)
!1637 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1632)
!1638 = !DILocation(line: 2458, column: 1, scope: !1619)
!1639 = distinct !DISubprogram(name: "i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2460, type: !9, scopeLine: 2461, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1640 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 2464, column: 28, scope: !1639)
!1642 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 2466, column: 29, scope: !1639)
!1644 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 2468, column: 29, scope: !1639)
!1646 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 2469, column: 5, scope: !1639)
!1649 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1647)
!1650 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1647)
!1651 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1647)
!1652 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1647)
!1653 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1648)
!1655 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1654)
!1656 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1654)
!1657 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1654)
!1658 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1654)
!1659 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1648)
!1661 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1660)
!1662 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1660)
!1663 = !DILocation(line: 187, column: 106, scope: !1550, inlinedAt: !1648)
!1664 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1660)
!1665 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1660)
!1666 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1660)
!1667 = !DILocation(line: 2470, column: 1, scope: !1639)
!1668 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__x_0__x_0__x_0__", scope: !8, file: !8, line: 2472, type: !9, scopeLine: 2473, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1669 = !DILocation(line: 2479, column: 1, scope: !1668)
!1670 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2481, type: !9, scopeLine: 2482, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1671 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 2487, column: 29, scope: !1670)
!1673 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 2488, column: 5, scope: !1670)
!1676 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1674)
!1677 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1674)
!1678 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1674)
!1679 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1674)
!1680 = !DILocation(line: 2489, column: 1, scope: !1670)
!1681 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2491, type: !9, scopeLine: 2492, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1682 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 2496, column: 29, scope: !1681)
!1684 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 2498, column: 5, scope: !1681)
!1687 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1685)
!1688 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1685)
!1689 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1685)
!1690 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1685)
!1691 = !DILocation(line: 2499, column: 1, scope: !1681)
!1692 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2501, type: !9, scopeLine: 2502, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1693 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 2506, column: 29, scope: !1692)
!1695 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 2508, column: 29, scope: !1692)
!1697 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 2509, column: 5, scope: !1692)
!1700 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1698)
!1701 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1698)
!1702 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1698)
!1703 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1698)
!1704 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1699)
!1706 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1705)
!1707 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1705)
!1708 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1705)
!1709 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1705)
!1710 = !DILocation(line: 2510, column: 1, scope: !1692)
!1711 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2512, type: !9, scopeLine: 2513, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1712 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 2516, column: 28, scope: !1711)
!1714 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 2519, column: 5, scope: !1711)
!1717 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1715)
!1718 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1715)
!1719 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1715)
!1720 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1715)
!1721 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1715)
!1722 = !DILocation(line: 2520, column: 1, scope: !1711)
!1723 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2522, type: !9, scopeLine: 2523, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1724 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 2526, column: 28, scope: !1723)
!1726 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 2529, column: 29, scope: !1723)
!1728 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 2530, column: 5, scope: !1723)
!1731 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1729)
!1732 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1729)
!1733 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1729)
!1734 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1729)
!1735 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1730)
!1737 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1736)
!1738 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1736)
!1739 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1736)
!1740 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1736)
!1741 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1736)
!1742 = !DILocation(line: 2531, column: 1, scope: !1723)
!1743 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2533, type: !9, scopeLine: 2534, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1744 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 2537, column: 28, scope: !1743)
!1746 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 2539, column: 29, scope: !1743)
!1748 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 2541, column: 5, scope: !1743)
!1751 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1749)
!1752 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1749)
!1753 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1749)
!1754 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1749)
!1755 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1750)
!1757 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1756)
!1758 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1756)
!1759 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1756)
!1760 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1756)
!1761 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1756)
!1762 = !DILocation(line: 2542, column: 1, scope: !1743)
!1763 = distinct !DISubprogram(name: "i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2544, type: !9, scopeLine: 2545, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1764 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 2548, column: 28, scope: !1763)
!1766 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 2550, column: 29, scope: !1763)
!1768 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 2552, column: 29, scope: !1763)
!1770 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 2553, column: 5, scope: !1763)
!1773 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1771)
!1774 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1771)
!1775 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1771)
!1776 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1771)
!1777 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1772)
!1779 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1778)
!1780 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1778)
!1781 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1778)
!1782 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1778)
!1783 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1772)
!1785 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1784)
!1786 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1784)
!1787 = !DILocation(line: 216, column: 106, scope: !1550, inlinedAt: !1772)
!1788 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1784)
!1789 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1784)
!1790 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1784)
!1791 = !DILocation(line: 2554, column: 1, scope: !1763)
!1792 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__x_0__x_0__x_0__", scope: !8, file: !8, line: 2556, type: !9, scopeLine: 2557, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1793 = !DILocation(line: 2563, column: 1, scope: !1792)
!1794 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2565, type: !9, scopeLine: 2566, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1795 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 2571, column: 29, scope: !1794)
!1797 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 2572, column: 5, scope: !1794)
!1800 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1798)
!1801 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1798)
!1802 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1798)
!1803 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1798)
!1804 = !DILocation(line: 2573, column: 1, scope: !1794)
!1805 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2575, type: !9, scopeLine: 2576, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1806 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 2580, column: 29, scope: !1805)
!1808 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 2582, column: 5, scope: !1805)
!1811 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1809)
!1812 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1809)
!1813 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1809)
!1814 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1809)
!1815 = !DILocation(line: 2583, column: 1, scope: !1805)
!1816 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2585, type: !9, scopeLine: 2586, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1817 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 2590, column: 29, scope: !1816)
!1819 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 2592, column: 29, scope: !1816)
!1821 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 2593, column: 5, scope: !1816)
!1824 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1822)
!1825 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1822)
!1826 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1822)
!1827 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1822)
!1828 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1823)
!1830 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1829)
!1831 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1829)
!1832 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1829)
!1833 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1829)
!1834 = !DILocation(line: 2594, column: 1, scope: !1816)
!1835 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2596, type: !9, scopeLine: 2597, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1836 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 2600, column: 28, scope: !1835)
!1838 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 2603, column: 5, scope: !1835)
!1841 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1839)
!1842 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1839)
!1843 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1839)
!1844 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1839)
!1845 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1839)
!1846 = !DILocation(line: 2604, column: 1, scope: !1835)
!1847 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2606, type: !9, scopeLine: 2607, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1848 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 2610, column: 28, scope: !1847)
!1850 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 2613, column: 29, scope: !1847)
!1852 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 2614, column: 5, scope: !1847)
!1855 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1853)
!1856 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1853)
!1857 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1853)
!1858 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1853)
!1859 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1854)
!1861 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1860)
!1862 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1860)
!1863 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1860)
!1864 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1860)
!1865 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1860)
!1866 = !DILocation(line: 2615, column: 1, scope: !1847)
!1867 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2617, type: !9, scopeLine: 2618, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1868 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 2621, column: 28, scope: !1867)
!1870 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 2623, column: 29, scope: !1867)
!1872 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 2625, column: 5, scope: !1867)
!1875 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1873)
!1876 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1873)
!1877 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1873)
!1878 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1873)
!1879 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1874)
!1881 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1880)
!1882 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1880)
!1883 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1880)
!1884 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1880)
!1885 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1880)
!1886 = !DILocation(line: 2626, column: 1, scope: !1867)
!1887 = distinct !DISubprogram(name: "i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2628, type: !9, scopeLine: 2629, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1888 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 2632, column: 28, scope: !1887)
!1890 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 2634, column: 29, scope: !1887)
!1892 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 2636, column: 29, scope: !1887)
!1894 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 2637, column: 5, scope: !1887)
!1897 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1895)
!1898 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1895)
!1899 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1895)
!1900 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1895)
!1901 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1896)
!1903 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1902)
!1904 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1902)
!1905 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1902)
!1906 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1902)
!1907 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1896)
!1909 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1908)
!1910 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1908)
!1911 = !DILocation(line: 213, column: 106, scope: !1550, inlinedAt: !1896)
!1912 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1908)
!1913 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1908)
!1914 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1908)
!1915 = !DILocation(line: 2638, column: 1, scope: !1887)
!1916 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__x_0__x_0__x_0__", scope: !8, file: !8, line: 2640, type: !9, scopeLine: 2641, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1917 = !DILocation(line: 2647, column: 1, scope: !1916)
!1918 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2649, type: !9, scopeLine: 2650, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1919 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 2655, column: 29, scope: !1918)
!1921 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 2656, column: 5, scope: !1918)
!1924 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1922)
!1925 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1922)
!1926 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1922)
!1927 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1922)
!1928 = !DILocation(line: 2657, column: 1, scope: !1918)
!1929 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2659, type: !9, scopeLine: 2660, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1930 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 2664, column: 29, scope: !1929)
!1932 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 2666, column: 5, scope: !1929)
!1935 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1933)
!1936 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1933)
!1937 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1933)
!1938 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1933)
!1939 = !DILocation(line: 2667, column: 1, scope: !1929)
!1940 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2669, type: !9, scopeLine: 2670, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1941 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 2674, column: 29, scope: !1940)
!1943 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 2676, column: 29, scope: !1940)
!1945 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 2677, column: 5, scope: !1940)
!1948 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1946)
!1949 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1946)
!1950 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1946)
!1951 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1946)
!1952 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1947)
!1954 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1953)
!1955 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1953)
!1956 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1953)
!1957 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1953)
!1958 = !DILocation(line: 2678, column: 1, scope: !1940)
!1959 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2680, type: !9, scopeLine: 2681, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1960 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 2684, column: 28, scope: !1959)
!1962 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 2687, column: 5, scope: !1959)
!1965 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1963)
!1966 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1963)
!1967 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1963)
!1968 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1963)
!1969 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1963)
!1970 = !DILocation(line: 2688, column: 1, scope: !1959)
!1971 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2690, type: !9, scopeLine: 2691, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1972 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 2694, column: 28, scope: !1971)
!1974 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 2697, column: 29, scope: !1971)
!1976 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 2698, column: 5, scope: !1971)
!1979 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1977)
!1980 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1977)
!1981 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1977)
!1982 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1977)
!1983 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1978)
!1985 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !1984)
!1986 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !1984)
!1987 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !1984)
!1988 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !1984)
!1989 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !1984)
!1990 = !DILocation(line: 2699, column: 1, scope: !1971)
!1991 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2701, type: !9, scopeLine: 2702, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1992 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 2705, column: 28, scope: !1991)
!1994 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 2707, column: 29, scope: !1991)
!1996 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 2709, column: 5, scope: !1991)
!1999 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !1997)
!2000 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !1997)
!2001 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !1997)
!2002 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !1997)
!2003 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !1998)
!2005 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2004)
!2006 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2004)
!2007 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2004)
!2008 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2004)
!2009 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2004)
!2010 = !DILocation(line: 2710, column: 1, scope: !1991)
!2011 = distinct !DISubprogram(name: "i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2712, type: !9, scopeLine: 2713, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2012 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 2716, column: 28, scope: !2011)
!2014 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 2718, column: 29, scope: !2011)
!2016 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 2720, column: 29, scope: !2011)
!2018 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 2721, column: 5, scope: !2011)
!2021 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2019)
!2022 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2019)
!2023 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2019)
!2024 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2019)
!2025 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2020)
!2027 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2026)
!2028 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2026)
!2029 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2026)
!2030 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2026)
!2031 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2020)
!2033 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2032)
!2034 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2032)
!2035 = !DILocation(line: 193, column: 106, scope: !1550, inlinedAt: !2020)
!2036 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2032)
!2037 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2032)
!2038 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2032)
!2039 = !DILocation(line: 2722, column: 1, scope: !2011)
!2040 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__x_0__x_0__x_0__", scope: !8, file: !8, line: 2724, type: !9, scopeLine: 2725, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2041 = !DILocation(line: 2731, column: 1, scope: !2040)
!2042 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2733, type: !9, scopeLine: 2734, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2043 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 2739, column: 29, scope: !2042)
!2045 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 2740, column: 5, scope: !2042)
!2048 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2046)
!2049 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2046)
!2050 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2046)
!2051 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2046)
!2052 = !DILocation(line: 2741, column: 1, scope: !2042)
!2053 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2743, type: !9, scopeLine: 2744, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2054 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 2748, column: 29, scope: !2053)
!2056 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 2750, column: 5, scope: !2053)
!2059 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2057)
!2060 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2057)
!2061 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2057)
!2062 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2057)
!2063 = !DILocation(line: 2751, column: 1, scope: !2053)
!2064 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2753, type: !9, scopeLine: 2754, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2065 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 2758, column: 29, scope: !2064)
!2067 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 2760, column: 29, scope: !2064)
!2069 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 2761, column: 5, scope: !2064)
!2072 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2070)
!2073 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2070)
!2074 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2070)
!2075 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2070)
!2076 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2071)
!2078 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2077)
!2079 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2077)
!2080 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2077)
!2081 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2077)
!2082 = !DILocation(line: 2762, column: 1, scope: !2064)
!2083 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2764, type: !9, scopeLine: 2765, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2084 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 2768, column: 28, scope: !2083)
!2086 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 2771, column: 5, scope: !2083)
!2089 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2087)
!2090 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2087)
!2091 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2087)
!2092 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2087)
!2093 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2087)
!2094 = !DILocation(line: 2772, column: 1, scope: !2083)
!2095 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2774, type: !9, scopeLine: 2775, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2096 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 2778, column: 28, scope: !2095)
!2098 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 2781, column: 29, scope: !2095)
!2100 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 2782, column: 5, scope: !2095)
!2103 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2101)
!2104 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2101)
!2105 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2101)
!2106 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2101)
!2107 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2102)
!2109 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2108)
!2110 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2108)
!2111 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2108)
!2112 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2108)
!2113 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2108)
!2114 = !DILocation(line: 2783, column: 1, scope: !2095)
!2115 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2785, type: !9, scopeLine: 2786, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2116 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 2789, column: 28, scope: !2115)
!2118 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 2791, column: 29, scope: !2115)
!2120 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 2793, column: 5, scope: !2115)
!2123 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2121)
!2124 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2121)
!2125 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2121)
!2126 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2121)
!2127 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2122)
!2129 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2128)
!2130 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2128)
!2131 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2128)
!2132 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2128)
!2133 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2128)
!2134 = !DILocation(line: 2794, column: 1, scope: !2115)
!2135 = distinct !DISubprogram(name: "i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2796, type: !9, scopeLine: 2797, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2136 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 2800, column: 28, scope: !2135)
!2138 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 2802, column: 29, scope: !2135)
!2140 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 2804, column: 29, scope: !2135)
!2142 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 2805, column: 5, scope: !2135)
!2145 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2143)
!2146 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2143)
!2147 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2143)
!2148 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2143)
!2149 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2144)
!2151 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2150)
!2152 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2150)
!2153 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2150)
!2154 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2150)
!2155 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2144)
!2157 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2156)
!2158 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2156)
!2159 = !DILocation(line: 196, column: 73, scope: !1550, inlinedAt: !2144)
!2160 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2156)
!2161 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2156)
!2162 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2156)
!2163 = !DILocation(line: 2806, column: 1, scope: !2135)
!2164 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__x_0__x_0__x_0__", scope: !8, file: !8, line: 2808, type: !9, scopeLine: 2809, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2165 = !DILocation(line: 2815, column: 1, scope: !2164)
!2166 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2817, type: !9, scopeLine: 2818, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2167 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 2823, column: 29, scope: !2166)
!2169 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 2824, column: 5, scope: !2166)
!2172 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2170)
!2173 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2170)
!2174 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2170)
!2175 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2170)
!2176 = !DILocation(line: 2825, column: 1, scope: !2166)
!2177 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2827, type: !9, scopeLine: 2828, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2178 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 2832, column: 29, scope: !2177)
!2180 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 2834, column: 5, scope: !2177)
!2183 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2181)
!2184 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2181)
!2185 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2181)
!2186 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2181)
!2187 = !DILocation(line: 2835, column: 1, scope: !2177)
!2188 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2837, type: !9, scopeLine: 2838, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2189 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 2842, column: 29, scope: !2188)
!2191 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 2844, column: 29, scope: !2188)
!2193 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 2845, column: 5, scope: !2188)
!2196 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2194)
!2197 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2194)
!2198 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2194)
!2199 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2194)
!2200 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2195)
!2202 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2201)
!2203 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2201)
!2204 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2201)
!2205 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2201)
!2206 = !DILocation(line: 2846, column: 1, scope: !2188)
!2207 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2848, type: !9, scopeLine: 2849, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2208 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 2852, column: 28, scope: !2207)
!2210 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 2855, column: 5, scope: !2207)
!2213 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2211)
!2214 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2211)
!2215 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2211)
!2216 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2211)
!2217 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2211)
!2218 = !DILocation(line: 2856, column: 1, scope: !2207)
!2219 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2858, type: !9, scopeLine: 2859, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2220 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 2862, column: 28, scope: !2219)
!2222 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 2865, column: 29, scope: !2219)
!2224 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 2866, column: 5, scope: !2219)
!2227 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2225)
!2228 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2225)
!2229 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2225)
!2230 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2225)
!2231 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2226)
!2233 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2232)
!2234 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2232)
!2235 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2232)
!2236 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2232)
!2237 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2232)
!2238 = !DILocation(line: 2867, column: 1, scope: !2219)
!2239 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2869, type: !9, scopeLine: 2870, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2240 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 2873, column: 28, scope: !2239)
!2242 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 2875, column: 29, scope: !2239)
!2244 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 2877, column: 5, scope: !2239)
!2247 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2245)
!2248 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2245)
!2249 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2245)
!2250 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2245)
!2251 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2246)
!2253 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2252)
!2254 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2252)
!2255 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2252)
!2256 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2252)
!2257 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2252)
!2258 = !DILocation(line: 2878, column: 1, scope: !2239)
!2259 = distinct !DISubprogram(name: "i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2880, type: !9, scopeLine: 2881, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2260 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 2884, column: 28, scope: !2259)
!2262 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 2886, column: 29, scope: !2259)
!2264 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 2888, column: 29, scope: !2259)
!2266 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 2889, column: 5, scope: !2259)
!2269 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2267)
!2270 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2267)
!2271 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2267)
!2272 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2267)
!2273 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2268)
!2275 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2274)
!2276 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2274)
!2277 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2274)
!2278 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2274)
!2279 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2268)
!2281 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2280)
!2282 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2280)
!2283 = !DILocation(line: 200, column: 62, scope: !1550, inlinedAt: !2268)
!2284 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2280)
!2285 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2280)
!2286 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2280)
!2287 = !DILocation(line: 2890, column: 1, scope: !2259)
!2288 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__x_0__x_0__x_0__", scope: !8, file: !8, line: 2892, type: !9, scopeLine: 2893, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2289 = !DILocation(line: 2899, column: 1, scope: !2288)
!2290 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2901, type: !9, scopeLine: 2902, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2291 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 2907, column: 29, scope: !2290)
!2293 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 2908, column: 5, scope: !2290)
!2296 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2294)
!2297 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2294)
!2298 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2294)
!2299 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2294)
!2300 = !DILocation(line: 2909, column: 1, scope: !2290)
!2301 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2911, type: !9, scopeLine: 2912, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2302 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 2916, column: 29, scope: !2301)
!2304 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 2918, column: 5, scope: !2301)
!2307 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2305)
!2308 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2305)
!2309 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2305)
!2310 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2305)
!2311 = !DILocation(line: 2919, column: 1, scope: !2301)
!2312 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 2921, type: !9, scopeLine: 2922, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2313 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 2926, column: 29, scope: !2312)
!2315 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 2928, column: 29, scope: !2312)
!2317 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 2929, column: 5, scope: !2312)
!2320 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2318)
!2321 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2318)
!2322 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2318)
!2323 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2318)
!2324 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2319)
!2326 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2325)
!2327 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2325)
!2328 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2325)
!2329 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2325)
!2330 = !DILocation(line: 2930, column: 1, scope: !2312)
!2331 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 2932, type: !9, scopeLine: 2933, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2332 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 2936, column: 28, scope: !2331)
!2334 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 2939, column: 5, scope: !2331)
!2337 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2335)
!2338 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2335)
!2339 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2335)
!2340 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2335)
!2341 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2335)
!2342 = !DILocation(line: 2940, column: 1, scope: !2331)
!2343 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 2942, type: !9, scopeLine: 2943, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2344 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 2946, column: 28, scope: !2343)
!2346 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 2949, column: 29, scope: !2343)
!2348 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 2950, column: 5, scope: !2343)
!2351 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2349)
!2352 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2349)
!2353 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2349)
!2354 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2349)
!2355 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2350)
!2357 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2356)
!2358 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2356)
!2359 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2356)
!2360 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2356)
!2361 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2356)
!2362 = !DILocation(line: 2951, column: 1, scope: !2343)
!2363 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 2953, type: !9, scopeLine: 2954, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2364 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 2957, column: 28, scope: !2363)
!2366 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 2959, column: 29, scope: !2363)
!2368 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 2961, column: 5, scope: !2363)
!2371 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2369)
!2372 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2369)
!2373 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2369)
!2374 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2369)
!2375 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2370)
!2377 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2376)
!2378 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2376)
!2379 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2376)
!2380 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2376)
!2381 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2376)
!2382 = !DILocation(line: 2962, column: 1, scope: !2363)
!2383 = distinct !DISubprogram(name: "i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 2964, type: !9, scopeLine: 2965, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2384 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 2968, column: 28, scope: !2383)
!2386 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 2970, column: 29, scope: !2383)
!2388 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 2972, column: 29, scope: !2383)
!2390 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 2973, column: 5, scope: !2383)
!2393 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2391)
!2394 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2391)
!2395 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2391)
!2396 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2391)
!2397 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2392)
!2399 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2398)
!2400 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2398)
!2401 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2398)
!2402 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2398)
!2403 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2392)
!2405 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2404)
!2406 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2404)
!2407 = !DILocation(line: 210, column: 115, scope: !1550, inlinedAt: !2392)
!2408 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2404)
!2409 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2404)
!2410 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2404)
!2411 = !DILocation(line: 2974, column: 1, scope: !2383)
!2412 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__x_0__x_0__x_0__", scope: !8, file: !8, line: 2976, type: !9, scopeLine: 2977, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2413 = !DILocation(line: 2983, column: 1, scope: !2412)
!2414 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 2985, type: !9, scopeLine: 2986, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2415 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 2991, column: 29, scope: !2414)
!2417 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 2992, column: 5, scope: !2414)
!2420 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2418)
!2421 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2418)
!2422 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2418)
!2423 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2418)
!2424 = !DILocation(line: 2993, column: 1, scope: !2414)
!2425 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 2995, type: !9, scopeLine: 2996, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2426 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 3000, column: 29, scope: !2425)
!2428 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 3002, column: 5, scope: !2425)
!2431 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2429)
!2432 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2429)
!2433 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2429)
!2434 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2429)
!2435 = !DILocation(line: 3003, column: 1, scope: !2425)
!2436 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 3005, type: !9, scopeLine: 3006, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2437 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 3010, column: 29, scope: !2436)
!2439 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 3012, column: 29, scope: !2436)
!2441 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 3013, column: 5, scope: !2436)
!2444 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2442)
!2445 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2442)
!2446 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2442)
!2447 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2442)
!2448 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2443)
!2450 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2449)
!2451 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2449)
!2452 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2449)
!2453 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2449)
!2454 = !DILocation(line: 3014, column: 1, scope: !2436)
!2455 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 3016, type: !9, scopeLine: 3017, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2456 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 3020, column: 28, scope: !2455)
!2458 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 3023, column: 5, scope: !2455)
!2461 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2459)
!2462 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2459)
!2463 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2459)
!2464 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2459)
!2465 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2459)
!2466 = !DILocation(line: 3024, column: 1, scope: !2455)
!2467 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 3026, type: !9, scopeLine: 3027, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2468 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 3030, column: 28, scope: !2467)
!2470 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 3033, column: 29, scope: !2467)
!2472 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 3034, column: 5, scope: !2467)
!2475 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2473)
!2476 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2473)
!2477 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2473)
!2478 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2473)
!2479 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2474)
!2481 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2480)
!2482 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2480)
!2483 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2480)
!2484 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2480)
!2485 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2480)
!2486 = !DILocation(line: 3035, column: 1, scope: !2467)
!2487 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 3037, type: !9, scopeLine: 3038, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2488 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 3041, column: 28, scope: !2487)
!2490 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 3043, column: 29, scope: !2487)
!2492 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 3045, column: 5, scope: !2487)
!2495 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2493)
!2496 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2493)
!2497 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2493)
!2498 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2493)
!2499 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2494)
!2501 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2500)
!2502 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2500)
!2503 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2500)
!2504 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2500)
!2505 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2500)
!2506 = !DILocation(line: 3046, column: 1, scope: !2487)
!2507 = distinct !DISubprogram(name: "i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 3048, type: !9, scopeLine: 3049, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2508 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 3052, column: 28, scope: !2507)
!2510 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 3054, column: 29, scope: !2507)
!2512 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 3056, column: 29, scope: !2507)
!2514 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 3057, column: 5, scope: !2507)
!2517 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2515)
!2518 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2515)
!2519 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2515)
!2520 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2515)
!2521 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2516)
!2523 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2522)
!2524 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2522)
!2525 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2522)
!2526 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2522)
!2527 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2516)
!2529 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2528)
!2530 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2528)
!2531 = !DILocation(line: 207, column: 106, scope: !1550, inlinedAt: !2516)
!2532 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2528)
!2533 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2528)
!2534 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2528)
!2535 = !DILocation(line: 3058, column: 1, scope: !2507)
!2536 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__x_0__x_0__x_0__", scope: !8, file: !8, line: 3060, type: !9, scopeLine: 3061, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2537 = !DILocation(line: 3067, column: 1, scope: !2536)
!2538 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 3069, type: !9, scopeLine: 3070, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2539 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 3075, column: 29, scope: !2538)
!2541 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 3076, column: 5, scope: !2538)
!2544 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2542)
!2545 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2542)
!2546 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2542)
!2547 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2542)
!2548 = !DILocation(line: 3077, column: 1, scope: !2538)
!2549 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 3079, type: !9, scopeLine: 3080, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2550 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 3084, column: 29, scope: !2549)
!2552 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 3086, column: 5, scope: !2549)
!2555 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2553)
!2556 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2553)
!2557 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2553)
!2558 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2553)
!2559 = !DILocation(line: 3087, column: 1, scope: !2549)
!2560 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 3089, type: !9, scopeLine: 3090, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2561 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 3094, column: 29, scope: !2560)
!2563 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 3096, column: 29, scope: !2560)
!2565 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 3097, column: 5, scope: !2560)
!2568 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2566)
!2569 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2566)
!2570 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2566)
!2571 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2566)
!2572 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2567)
!2574 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2573)
!2575 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2573)
!2576 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2573)
!2577 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2573)
!2578 = !DILocation(line: 3098, column: 1, scope: !2560)
!2579 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 3100, type: !9, scopeLine: 3101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2580 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 3104, column: 28, scope: !2579)
!2582 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 3107, column: 5, scope: !2579)
!2585 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2583)
!2586 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2583)
!2587 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2583)
!2588 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2583)
!2589 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2583)
!2590 = !DILocation(line: 3108, column: 1, scope: !2579)
!2591 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 3110, type: !9, scopeLine: 3111, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2592 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 3114, column: 28, scope: !2591)
!2594 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 3117, column: 29, scope: !2591)
!2596 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 3118, column: 5, scope: !2591)
!2599 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2597)
!2600 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2597)
!2601 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2597)
!2602 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2597)
!2603 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2598)
!2605 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2604)
!2606 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2604)
!2607 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2604)
!2608 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2604)
!2609 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2604)
!2610 = !DILocation(line: 3119, column: 1, scope: !2591)
!2611 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 3121, type: !9, scopeLine: 3122, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2612 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 3125, column: 28, scope: !2611)
!2614 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 3127, column: 29, scope: !2611)
!2616 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 3129, column: 5, scope: !2611)
!2619 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2617)
!2620 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2617)
!2621 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2617)
!2622 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2617)
!2623 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2618)
!2625 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2624)
!2626 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2624)
!2627 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2624)
!2628 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2624)
!2629 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2624)
!2630 = !DILocation(line: 3130, column: 1, scope: !2611)
!2631 = distinct !DISubprogram(name: "i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 3132, type: !9, scopeLine: 3133, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2632 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 3136, column: 28, scope: !2631)
!2634 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 3138, column: 29, scope: !2631)
!2636 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 3140, column: 29, scope: !2631)
!2638 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 3141, column: 5, scope: !2631)
!2641 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2639)
!2642 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2639)
!2643 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2639)
!2644 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2639)
!2645 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2640)
!2647 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2646)
!2648 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2646)
!2649 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2646)
!2650 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2646)
!2651 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2640)
!2653 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2652)
!2654 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2652)
!2655 = !DILocation(line: 190, column: 106, scope: !1550, inlinedAt: !2640)
!2656 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2652)
!2657 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2652)
!2658 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2652)
!2659 = !DILocation(line: 3142, column: 1, scope: !2631)
!2660 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__x_0__x_0__x_0__", scope: !8, file: !8, line: 3144, type: !9, scopeLine: 3145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2661 = !DILocation(line: 3151, column: 1, scope: !2660)
!2662 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__x_0__x_0__xpr_general__", scope: !8, file: !8, line: 3153, type: !9, scopeLine: 3154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2663 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 3159, column: 29, scope: !2662)
!2665 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 3160, column: 5, scope: !2662)
!2668 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2666)
!2669 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2666)
!2670 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2666)
!2671 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2666)
!2672 = !DILocation(line: 3161, column: 1, scope: !2662)
!2673 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__x_0__xpr_general__x_0__", scope: !8, file: !8, line: 3163, type: !9, scopeLine: 3164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2674 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 3168, column: 29, scope: !2673)
!2676 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 3170, column: 5, scope: !2673)
!2679 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2677)
!2680 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2677)
!2681 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2677)
!2682 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2677)
!2683 = !DILocation(line: 3171, column: 1, scope: !2673)
!2684 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__x_0__xpr_general__xpr_general__", scope: !8, file: !8, line: 3173, type: !9, scopeLine: 3174, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2685 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 3178, column: 29, scope: !2684)
!2687 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 3180, column: 29, scope: !2684)
!2689 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 3181, column: 5, scope: !2684)
!2692 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2690)
!2693 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2690)
!2694 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2690)
!2695 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2690)
!2696 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2691)
!2698 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2697)
!2699 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2697)
!2700 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2697)
!2701 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2697)
!2702 = !DILocation(line: 3182, column: 1, scope: !2684)
!2703 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__xpr_general__x_0__x_0__", scope: !8, file: !8, line: 3184, type: !9, scopeLine: 3185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2704 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 3188, column: 28, scope: !2703)
!2706 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 3191, column: 5, scope: !2703)
!2709 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2707)
!2710 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2707)
!2711 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2707)
!2712 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2707)
!2713 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2707)
!2714 = !DILocation(line: 3192, column: 1, scope: !2703)
!2715 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__", scope: !8, file: !8, line: 3194, type: !9, scopeLine: 3195, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2716 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 3198, column: 28, scope: !2715)
!2718 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 3201, column: 29, scope: !2715)
!2720 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 3202, column: 5, scope: !2715)
!2723 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2721)
!2724 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2721)
!2725 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2721)
!2726 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2721)
!2727 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2722)
!2729 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2728)
!2730 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2728)
!2731 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2728)
!2732 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2728)
!2733 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2728)
!2734 = !DILocation(line: 3203, column: 1, scope: !2715)
!2735 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__", scope: !8, file: !8, line: 3205, type: !9, scopeLine: 3206, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2736 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 3209, column: 28, scope: !2735)
!2738 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 3211, column: 29, scope: !2735)
!2740 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 3213, column: 5, scope: !2735)
!2743 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2741)
!2744 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2741)
!2745 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2741)
!2746 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2741)
!2747 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2742)
!2749 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2748)
!2750 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2748)
!2751 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2748)
!2752 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2748)
!2753 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2748)
!2754 = !DILocation(line: 3214, column: 1, scope: !2735)
!2755 = distinct !DISubprogram(name: "i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__", scope: !8, file: !8, line: 3216, type: !9, scopeLine: 3217, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2756 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 3220, column: 28, scope: !2755)
!2758 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 3222, column: 29, scope: !2755)
!2760 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 3224, column: 29, scope: !2755)
!2762 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 176, column: 51, scope: !1550, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 3225, column: 5, scope: !2755)
!2765 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2763)
!2766 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2763)
!2767 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2763)
!2768 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2763)
!2769 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 177, column: 51, scope: !1550, inlinedAt: !2764)
!2771 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2770)
!2772 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2770)
!2773 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2770)
!2774 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2770)
!2775 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 226, column: 5, scope: !1550, inlinedAt: !2764)
!2777 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2776)
!2778 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2776)
!2779 = !DILocation(line: 204, column: 106, scope: !1550, inlinedAt: !2764)
!2780 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2776)
!2781 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2776)
!2782 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2776)
!2783 = !DILocation(line: 3226, column: 1, scope: !2755)
!2784 = distinct !DISubprogram(name: "i_rtype_shift__opc_slli__x_0__x_0__uimm5__", scope: !8, file: !8, line: 3228, type: !9, scopeLine: 3229, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2785 = !DILocation(line: 3236, column: 1, scope: !2784)
!2786 = distinct !DISubprogram(name: "i_rtype_shift__opc_slli__x_0__xpr_general__uimm5__", scope: !8, file: !8, line: 3238, type: !9, scopeLine: 3239, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2787 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 3243, column: 29, scope: !2786)
!2789 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2792)
!2791 = distinct !DISubprogram(name: "MI13i_rtype_shiftIH1_13default_start", scope: !8, file: !8, line: 471, type: !9, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2792 = distinct !DILocation(line: 3246, column: 5, scope: !2786)
!2793 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2790)
!2794 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2790)
!2795 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2790)
!2796 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2790)
!2797 = !DILocation(line: 3247, column: 1, scope: !2786)
!2798 = distinct !DISubprogram(name: "i_rtype_shift__opc_slli__xpr_general__x_0__uimm5__", scope: !8, file: !8, line: 3249, type: !9, scopeLine: 3250, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2799 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 3253, column: 28, scope: !2798)
!2801 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 3257, column: 5, scope: !2798)
!2804 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2802)
!2805 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2802)
!2806 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2802)
!2807 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2802)
!2808 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2802)
!2809 = !DILocation(line: 3258, column: 1, scope: !2798)
!2810 = distinct !DISubprogram(name: "i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__", scope: !8, file: !8, line: 3260, type: !9, scopeLine: 3261, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2811 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 3264, column: 28, scope: !2810)
!2813 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 3266, column: 29, scope: !2810)
!2815 = !DILocation(line: 968, column: 12, scope: !2816, inlinedAt: !2817)
!2816 = distinct !DISubprogram(name: "MI5valueIH1_13default_start7_5uimm53imm1_5uimm5", scope: !8, file: !8, line: 966, type: !9, scopeLine: 967, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2817 = distinct !DILocation(line: 3746, column: 69, scope: !2818, inlinedAt: !2819)
!2818 = distinct !DISubprogram(name: "uimm5__", scope: !8, file: !8, line: 3744, type: !9, scopeLine: 3745, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2819 = distinct !DILocation(line: 3268, column: 17, scope: !2810)
!2820 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 3269, column: 5, scope: !2810)
!2823 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2821)
!2824 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2821)
!2825 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2821)
!2826 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2821)
!2827 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2822)
!2829 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2828)
!2830 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2828)
!2831 = !DILocation(line: 251, column: 58, scope: !2791, inlinedAt: !2822)
!2832 = !DILocation(line: 255, column: 120, scope: !2791, inlinedAt: !2822)
!2833 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2828)
!2834 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2828)
!2835 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2828)
!2836 = !DILocation(line: 3270, column: 1, scope: !2810)
!2837 = distinct !DISubprogram(name: "i_rtype_shift__opc_srai__x_0__x_0__uimm5__", scope: !8, file: !8, line: 3272, type: !9, scopeLine: 3273, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2838 = !DILocation(line: 3280, column: 1, scope: !2837)
!2839 = distinct !DISubprogram(name: "i_rtype_shift__opc_srai__x_0__xpr_general__uimm5__", scope: !8, file: !8, line: 3282, type: !9, scopeLine: 3283, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2840 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 3287, column: 29, scope: !2839)
!2842 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 3290, column: 5, scope: !2839)
!2845 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2843)
!2846 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2843)
!2847 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2843)
!2848 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2843)
!2849 = !DILocation(line: 3291, column: 1, scope: !2839)
!2850 = distinct !DISubprogram(name: "i_rtype_shift__opc_srai__xpr_general__x_0__uimm5__", scope: !8, file: !8, line: 3293, type: !9, scopeLine: 3294, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2851 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 3297, column: 28, scope: !2850)
!2853 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 3301, column: 5, scope: !2850)
!2856 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2854)
!2857 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2854)
!2858 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2854)
!2859 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2854)
!2860 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2854)
!2861 = !DILocation(line: 3302, column: 1, scope: !2850)
!2862 = distinct !DISubprogram(name: "i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__", scope: !8, file: !8, line: 3304, type: !9, scopeLine: 3305, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2863 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 3308, column: 28, scope: !2862)
!2865 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 3310, column: 29, scope: !2862)
!2867 = !DILocation(line: 968, column: 12, scope: !2816, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 3746, column: 69, scope: !2818, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 3312, column: 17, scope: !2862)
!2870 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 3313, column: 5, scope: !2862)
!2873 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2871)
!2874 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2871)
!2875 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2871)
!2876 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2871)
!2877 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2872)
!2879 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2878)
!2880 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2878)
!2881 = !DILocation(line: 251, column: 58, scope: !2791, inlinedAt: !2872)
!2882 = !DILocation(line: 261, column: 121, scope: !2791, inlinedAt: !2872)
!2883 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2878)
!2884 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2878)
!2885 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2878)
!2886 = !DILocation(line: 3314, column: 1, scope: !2862)
!2887 = distinct !DISubprogram(name: "i_rtype_shift__opc_srli__x_0__x_0__uimm5__", scope: !8, file: !8, line: 3316, type: !9, scopeLine: 3317, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2888 = !DILocation(line: 3324, column: 1, scope: !2887)
!2889 = distinct !DISubprogram(name: "i_rtype_shift__opc_srli__x_0__xpr_general__uimm5__", scope: !8, file: !8, line: 3326, type: !9, scopeLine: 3327, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2890 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 3331, column: 29, scope: !2889)
!2892 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 3334, column: 5, scope: !2889)
!2895 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2893)
!2896 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2893)
!2897 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2893)
!2898 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2893)
!2899 = !DILocation(line: 3335, column: 1, scope: !2889)
!2900 = distinct !DISubprogram(name: "i_rtype_shift__opc_srli__xpr_general__x_0__uimm5__", scope: !8, file: !8, line: 3337, type: !9, scopeLine: 3338, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2901 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 3341, column: 28, scope: !2900)
!2903 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 3345, column: 5, scope: !2900)
!2906 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2904)
!2907 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2904)
!2908 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2904)
!2909 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2904)
!2910 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2904)
!2911 = !DILocation(line: 3346, column: 1, scope: !2900)
!2912 = distinct !DISubprogram(name: "i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__", scope: !8, file: !8, line: 3348, type: !9, scopeLine: 3349, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2913 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 3352, column: 28, scope: !2912)
!2915 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 3354, column: 29, scope: !2912)
!2917 = !DILocation(line: 968, column: 12, scope: !2816, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 3746, column: 69, scope: !2818, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 3356, column: 17, scope: !2912)
!2920 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 250, column: 53, scope: !2791, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 3357, column: 5, scope: !2912)
!2923 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2921)
!2924 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2921)
!2925 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2921)
!2926 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2921)
!2927 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 269, column: 5, scope: !2791, inlinedAt: !2922)
!2929 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !2928)
!2930 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !2928)
!2931 = !DILocation(line: 251, column: 58, scope: !2791, inlinedAt: !2922)
!2932 = !DILocation(line: 258, column: 120, scope: !2791, inlinedAt: !2922)
!2933 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !2928)
!2934 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !2928)
!2935 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !2928)
!2936 = !DILocation(line: 3358, column: 1, scope: !2912)
!2937 = distinct !DISubprogram(name: "i_stype_store__opc_sb__x_0__simm12__x_0__", scope: !8, file: !8, line: 3360, type: !9, scopeLine: 3361, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2938 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 3365, column: 18, scope: !2937)
!2941 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !2943)
!2942 = distinct !DISubprogram(name: "MI13i_stype_storeIH1_13default_start", scope: !8, file: !8, line: 273, type: !9, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2943 = distinct !DILocation(line: 3367, column: 5, scope: !2937)
!2944 = !DILocation(line: 353, column: 13, scope: !2945, inlinedAt: !2946)
!2945 = distinct !DISubprogram(name: "codasip_ldst___write__", scope: !44, file: !44, line: 347, type: !9, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2946 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !2948)
!2947 = distinct !DISubprogram(name: "MI5store", scope: !27, file: !27, line: 104, type: !9, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2948 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !2943)
!2949 = !DILocation(line: 353, column: 34, scope: !2945, inlinedAt: !2946)
!2950 = !DILocation(line: 3368, column: 1, scope: !2937)
!2951 = distinct !DISubprogram(name: "i_stype_store__opc_sb__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 3370, type: !9, scopeLine: 3371, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2952 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 3375, column: 18, scope: !2951)
!2955 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 3377, column: 29, scope: !2951)
!2957 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 3378, column: 5, scope: !2951)
!2960 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2958)
!2961 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2958)
!2962 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2958)
!2963 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2958)
!2964 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !2959)
!2965 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !2959)
!2966 = !DILocation(line: 353, column: 13, scope: !2945, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !2959)
!2969 = !DILocation(line: 353, column: 34, scope: !2945, inlinedAt: !2967)
!2970 = !DILocation(line: 3379, column: 1, scope: !2951)
!2971 = distinct !DISubprogram(name: "i_stype_store__opc_sb__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 3381, type: !9, scopeLine: 3382, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2972 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 3385, column: 29, scope: !2971)
!2974 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 3387, column: 18, scope: !2971)
!2977 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 3389, column: 5, scope: !2971)
!2979 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !2978)
!2981 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2980)
!2982 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2980)
!2983 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2980)
!2984 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2980)
!2985 = !DILocation(line: 353, column: 13, scope: !2945, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !2978)
!2988 = !DILocation(line: 353, column: 34, scope: !2945, inlinedAt: !2986)
!2989 = !DILocation(line: 3390, column: 1, scope: !2971)
!2990 = distinct !DISubprogram(name: "i_stype_store__opc_sb__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 3392, type: !9, scopeLine: 3393, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2991 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 3396, column: 29, scope: !2990)
!2993 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 3398, column: 18, scope: !2990)
!2996 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 3400, column: 29, scope: !2990)
!2998 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 3401, column: 5, scope: !2990)
!3001 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !2999)
!3002 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !2999)
!3003 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !2999)
!3004 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !2999)
!3005 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3000)
!3006 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !3000)
!3007 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !3000)
!3009 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3008)
!3010 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3008)
!3011 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3008)
!3012 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3008)
!3013 = !DILocation(line: 353, column: 13, scope: !2945, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3000)
!3016 = !DILocation(line: 353, column: 34, scope: !2945, inlinedAt: !3014)
!3017 = !DILocation(line: 3402, column: 1, scope: !2990)
!3018 = distinct !DISubprogram(name: "i_stype_store__opc_sh__x_0__simm12__x_0__", scope: !8, file: !8, line: 3404, type: !9, scopeLine: 3405, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3019 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 3409, column: 18, scope: !3018)
!3022 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 3411, column: 5, scope: !3018)
!3024 = !DILocation(line: 358, column: 13, scope: !2945, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3023)
!3027 = !DILocation(line: 358, column: 34, scope: !2945, inlinedAt: !3025)
!3028 = !DILocation(line: 3412, column: 1, scope: !3018)
!3029 = distinct !DISubprogram(name: "i_stype_store__opc_sh__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 3414, type: !9, scopeLine: 3415, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3030 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 3419, column: 18, scope: !3029)
!3033 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 3421, column: 29, scope: !3029)
!3035 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 3422, column: 5, scope: !3029)
!3038 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3036)
!3039 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3036)
!3040 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3036)
!3041 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3036)
!3042 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3037)
!3043 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !3037)
!3044 = !DILocation(line: 358, column: 13, scope: !2945, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3037)
!3047 = !DILocation(line: 358, column: 34, scope: !2945, inlinedAt: !3045)
!3048 = !DILocation(line: 3423, column: 1, scope: !3029)
!3049 = distinct !DISubprogram(name: "i_stype_store__opc_sh__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 3425, type: !9, scopeLine: 3426, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3050 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 3429, column: 29, scope: !3049)
!3052 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 3431, column: 18, scope: !3049)
!3055 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 3433, column: 5, scope: !3049)
!3057 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !3056)
!3059 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3058)
!3060 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3058)
!3061 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3058)
!3062 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3058)
!3063 = !DILocation(line: 358, column: 13, scope: !2945, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3056)
!3066 = !DILocation(line: 358, column: 34, scope: !2945, inlinedAt: !3064)
!3067 = !DILocation(line: 3434, column: 1, scope: !3049)
!3068 = distinct !DISubprogram(name: "i_stype_store__opc_sh__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 3436, type: !9, scopeLine: 3437, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3069 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 3440, column: 29, scope: !3068)
!3071 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 3442, column: 18, scope: !3068)
!3074 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 3444, column: 29, scope: !3068)
!3076 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 3445, column: 5, scope: !3068)
!3079 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3077)
!3080 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3077)
!3081 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3077)
!3082 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3077)
!3083 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3078)
!3084 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !3078)
!3085 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !3078)
!3087 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3086)
!3088 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3086)
!3089 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3086)
!3090 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3086)
!3091 = !DILocation(line: 358, column: 13, scope: !2945, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3078)
!3094 = !DILocation(line: 358, column: 34, scope: !2945, inlinedAt: !3092)
!3095 = !DILocation(line: 3446, column: 1, scope: !3068)
!3096 = distinct !DISubprogram(name: "i_stype_store__opc_sw__x_0__simm12__x_0__", scope: !8, file: !8, line: 3448, type: !9, scopeLine: 3449, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3097 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 3453, column: 18, scope: !3096)
!3100 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 3455, column: 5, scope: !3096)
!3102 = !DILocation(line: 368, column: 13, scope: !2945, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3101)
!3105 = !DILocation(line: 368, column: 34, scope: !2945, inlinedAt: !3103)
!3106 = !DILocation(line: 3456, column: 1, scope: !3096)
!3107 = distinct !DISubprogram(name: "i_stype_store__opc_sw__x_0__simm12__xpr_general__", scope: !8, file: !8, line: 3458, type: !9, scopeLine: 3459, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3108 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 3463, column: 18, scope: !3107)
!3111 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 3465, column: 29, scope: !3107)
!3113 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 3466, column: 5, scope: !3107)
!3116 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3114)
!3117 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3114)
!3118 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3114)
!3119 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3114)
!3120 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3115)
!3121 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !3115)
!3122 = !DILocation(line: 368, column: 13, scope: !2945, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3115)
!3125 = !DILocation(line: 368, column: 34, scope: !2945, inlinedAt: !3123)
!3126 = !DILocation(line: 3467, column: 1, scope: !3107)
!3127 = distinct !DISubprogram(name: "i_stype_store__opc_sw__xpr_general__simm12__x_0__", scope: !8, file: !8, line: 3469, type: !9, scopeLine: 3470, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3128 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 3473, column: 29, scope: !3127)
!3130 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 3475, column: 18, scope: !3127)
!3133 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 3477, column: 5, scope: !3127)
!3135 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !3134)
!3137 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3136)
!3138 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3136)
!3139 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3136)
!3140 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3136)
!3141 = !DILocation(line: 368, column: 13, scope: !2945, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3134)
!3144 = !DILocation(line: 368, column: 34, scope: !2945, inlinedAt: !3142)
!3145 = !DILocation(line: 3478, column: 1, scope: !3127)
!3146 = distinct !DISubprogram(name: "i_stype_store__opc_sw__xpr_general__simm12__xpr_general__", scope: !8, file: !8, line: 3480, type: !9, scopeLine: 3481, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3147 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 3484, column: 29, scope: !3146)
!3149 = !DILocation(line: 973, column: 12, scope: !598, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 3734, column: 72, scope: !600, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 3486, column: 18, scope: !3146)
!3152 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 3488, column: 29, scope: !3146)
!3154 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 383, column: 57, scope: !2942, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 3489, column: 5, scope: !3146)
!3157 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3155)
!3158 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3155)
!3159 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3155)
!3160 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3155)
!3161 = !DILocation(line: 383, column: 120, scope: !2942, inlinedAt: !3156)
!3162 = !DILocation(line: 383, column: 118, scope: !2942, inlinedAt: !3156)
!3163 = !DILocation(line: 34, column: 6, scope: !42, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 384, column: 55, scope: !2942, inlinedAt: !3156)
!3165 = !DILocation(line: 36, column: 35, scope: !42, inlinedAt: !3164)
!3166 = !DILocation(line: 34, column: 32, scope: !42, inlinedAt: !3164)
!3167 = !DILocation(line: 34, column: 5, scope: !42, inlinedAt: !3164)
!3168 = !DILocation(line: 37, column: 1, scope: !42, inlinedAt: !3164)
!3169 = !DILocation(line: 368, column: 13, scope: !2945, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 130, column: 1, scope: !2947, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 385, column: 5, scope: !2942, inlinedAt: !3156)
!3172 = !DILocation(line: 368, column: 34, scope: !2945, inlinedAt: !3170)
!3173 = !DILocation(line: 3490, column: 1, scope: !3146)
!3174 = distinct !DISubprogram(name: "i_utype_ops__opc_auipc__x_0__uimm20__", scope: !8, file: !8, line: 3492, type: !9, scopeLine: 3493, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3175 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 431, column: 67, scope: !3177, inlinedAt: !3178)
!3177 = distinct !DISubprogram(name: "MI11i_utype_opsIH1_13default_start", scope: !8, file: !8, line: 230, type: !9, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3178 = distinct !DILocation(line: 3498, column: 5, scope: !3174)
!3179 = !DILocation(line: 3499, column: 1, scope: !3174)
!3180 = distinct !DISubprogram(name: "i_utype_ops__opc_auipc__xpr_general__uimm20__", scope: !8, file: !8, line: 3501, type: !9, scopeLine: 3502, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3181 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 3505, column: 28, scope: !3180)
!3183 = !DILocation(line: 141, column: 8, scope: !583, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 431, column: 67, scope: !3177, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 3508, column: 5, scope: !3180)
!3186 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 433, column: 13, scope: !3177, inlinedAt: !3185)
!3188 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !3187)
!3189 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !3187)
!3190 = !DILocation(line: 978, column: 12, scope: !3191, inlinedAt: !3192)
!3191 = distinct !DISubprogram(name: "MI5valueIH1_13default_start8_6uimm203imm1_6uimm20", scope: !8, file: !8, line: 976, type: !9, scopeLine: 977, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3192 = distinct !DILocation(line: 3740, column: 72, scope: !3193, inlinedAt: !3194)
!3193 = distinct !DISubprogram(name: "uimm20__", scope: !8, file: !8, line: 3738, type: !9, scopeLine: 3739, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3194 = distinct !DILocation(line: 3507, column: 18, scope: !3180)
!3195 = !DILocation(line: 431, column: 80, scope: !3177, inlinedAt: !3185)
!3196 = !DILocation(line: 432, column: 117, scope: !3177, inlinedAt: !3185)
!3197 = !DILocation(line: 432, column: 168, scope: !3177, inlinedAt: !3185)
!3198 = !DILocation(line: 432, column: 113, scope: !3177, inlinedAt: !3185)
!3199 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !3187)
!3200 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !3187)
!3201 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !3187)
!3202 = !DILocation(line: 3509, column: 1, scope: !3180)
!3203 = distinct !DISubprogram(name: "i_utype_ops__opc_lui__x_0__uimm20__", scope: !8, file: !8, line: 3511, type: !9, scopeLine: 3512, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3204 = !DILocation(line: 3518, column: 1, scope: !3203)
!3205 = distinct !DISubprogram(name: "i_utype_ops__opc_lui__xpr_general__uimm20__", scope: !8, file: !8, line: 3520, type: !9, scopeLine: 3521, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3206 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 3524, column: 28, scope: !3205)
!3208 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 428, column: 13, scope: !3177, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 3527, column: 5, scope: !3205)
!3211 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !3209)
!3212 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !3209)
!3213 = !DILocation(line: 978, column: 12, scope: !3191, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 3740, column: 72, scope: !3193, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 3526, column: 18, scope: !3205)
!3216 = !DILocation(line: 427, column: 62, scope: !3177, inlinedAt: !3210)
!3217 = !DILocation(line: 427, column: 113, scope: !3177, inlinedAt: !3210)
!3218 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !3209)
!3219 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !3209)
!3220 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !3209)
!3221 = !DILocation(line: 3528, column: 1, scope: !3205)
!3222 = distinct !DISubprogram(name: "e_movi32__", scope: !8, file: !8, line: 3762, type: !9, scopeLine: 3763, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3223 = !DILocation(line: 3758, column: 12, scope: !32, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 3767, column: 79, scope: !3222)
!3225 = !DILocation(line: 46, column: 6, scope: !580, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1011, column: 5, scope: !3222)
!3227 = !DILocation(line: 46, column: 33, scope: !580, inlinedAt: !3226)
!3228 = !DILocation(line: 46, column: 5, scope: !580, inlinedAt: !3226)
!3229 = !DILocation(line: 3765, column: 25, scope: !3222)
!3230 = !DILocation(line: 48, column: 5, scope: !580, inlinedAt: !3226)
!3231 = !DILocation(line: 48, column: 40, scope: !580, inlinedAt: !3226)
!3232 = !DILocation(line: 49, column: 1, scope: !580, inlinedAt: !3226)
!3233 = !DILocation(line: 1014, column: 1, scope: !3222)
