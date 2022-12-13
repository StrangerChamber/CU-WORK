/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* DAG Instruction Selector for the Codasip target                            *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

// *** NOTE: This file is #included into the middle of the target
// *** instruction selector class.  These functions are really methods.

// If GET_DAGISEL_DECL is #defined with any value, only function
// declarations will be included when this file is included.
// If GET_DAGISEL_BODY is #defined, its value should be the name of
// the instruction selector class. Function bodies will be emitted
// and each function's name will be qualified with the name of the
// class.
//
// When neither of the GET_DAGISEL* macros is defined, the functions
// are emitted inline.

#if defined(GET_DAGISEL_DECL) && defined(GET_DAGISEL_BODY)
#error GET_DAGISEL_DECL and GET_DAGISEL_BODY cannot be both defined, undef both for inline definitions
#endif

#ifdef GET_DAGISEL_BODY
#define LOCAL_DAGISEL_STRINGIZE(X) LOCAL_DAGISEL_STRINGIZE_(X)
#define LOCAL_DAGISEL_STRINGIZE_(X) #X
static_assert(sizeof(LOCAL_DAGISEL_STRINGIZE(GET_DAGISEL_BODY)) > 1,
   "GET_DAGISEL_BODY is empty: it should be defined with the class name");
#undef LOCAL_DAGISEL_STRINGIZE_
#undef LOCAL_DAGISEL_STRINGIZE
#endif

#if !defined(GET_DAGISEL_DECL) && !defined(GET_DAGISEL_BODY)
#define DAGISEL_INLINE 1
#else
#define DAGISEL_INLINE 0
#endif

#if !DAGISEL_INLINE
#define DAGISEL_CLASS_COLONCOLON GET_DAGISEL_BODY ::
#else
#define DAGISEL_CLASS_COLONCOLON
#endif

#ifdef GET_DAGISEL_DECL
void SelectCode(SDNode *N);
#endif
#if defined(GET_DAGISEL_BODY) || DAGISEL_INLINE
void DAGISEL_CLASS_COLONCOLON SelectCode(SDNode *N)
{
  // Some target values are emitted as 2 bytes, TARGET_VAL handles
  // this.
  #define TARGET_VAL(X) X & 255, unsigned(X) >> 8
  static const unsigned char MatcherTable[] = {
/*     0*/  OPC_SwitchOpcode /*27 cases */, 5|128,5/*645*/, TARGET_VAL(ISD::STORE),// ->650
/*     5*/    OPC_RecordMemRef,
/*     6*/    OPC_RecordNode, // #0 = 'st' chained node
/*     7*/    OPC_Scope, 49|128,1/*177*/, /*->187*/ // 8 children in Scope
/*    10*/      OPC_CheckChild1Integer, 0, 
/*    12*/      OPC_Scope, 36, /*->50*/ // 4 children in Scope
/*    14*/        OPC_CheckChild1Type, MVT::i8,
/*    16*/        OPC_MoveChild2,
/*    17*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    20*/        OPC_RecordChild0, // #1 = $op0
/*    21*/        OPC_MoveChild0,
/*    22*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*    24*/        OPC_MoveParent,
/*    25*/        OPC_RecordChild1, // #2 = $op1
/*    26*/        OPC_MoveChild1,
/*    27*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*    30*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*    32*/        OPC_MoveParent,
/*    33*/        OPC_MoveParent,
/*    34*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*    36*/        OPC_CheckPredicate, 3, // Predicate_store
/*    38*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*    40*/        OPC_EmitMergeInputChains1_0,
/*    41*/        OPC_EmitConvertToTarget, 2,
/*    43*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i8] }, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                  // Dst: (i_stype_store__opc_sb__x_0__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*    50*/      /*Scope*/ 36, /*->87*/
/*    51*/        OPC_CheckChild1Type, MVT::i16,
/*    53*/        OPC_MoveChild2,
/*    54*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    57*/        OPC_RecordChild0, // #1 = $op0
/*    58*/        OPC_MoveChild0,
/*    59*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*    61*/        OPC_MoveParent,
/*    62*/        OPC_RecordChild1, // #2 = $op1
/*    63*/        OPC_MoveChild1,
/*    64*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*    67*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*    69*/        OPC_MoveParent,
/*    70*/        OPC_MoveParent,
/*    71*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*    73*/        OPC_CheckPredicate, 3, // Predicate_store
/*    75*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*    77*/        OPC_EmitMergeInputChains1_0,
/*    78*/        OPC_EmitConvertToTarget, 2,
/*    80*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i16] }, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                  // Dst: (i_stype_store__opc_sh__x_0__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*    87*/      /*Scope*/ 72, /*->160*/
/*    88*/        OPC_MoveChild2,
/*    89*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    92*/        OPC_RecordChild0, // #1 = $op0
/*    93*/        OPC_MoveChild0,
/*    94*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*    96*/        OPC_MoveParent,
/*    97*/        OPC_RecordChild1, // #2 = $op1
/*    98*/        OPC_MoveChild1,
/*    99*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   102*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   104*/        OPC_MoveParent,
/*   105*/        OPC_MoveParent,
/*   106*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   108*/        OPC_Scope, 14, /*->124*/ // 2 children in Scope
/*   110*/          OPC_CheckPredicate, 3, // Predicate_store
/*   112*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   114*/          OPC_EmitMergeInputChains1_0,
/*   115*/          OPC_EmitConvertToTarget, 2,
/*   117*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                    // Dst: (i_stype_store__opc_sw__x_0__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   124*/        /*Scope*/ 34, /*->159*/
/*   125*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   127*/          OPC_Scope, 14, /*->143*/ // 2 children in Scope
/*   129*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   131*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   133*/            OPC_EmitMergeInputChains1_0,
/*   134*/            OPC_EmitConvertToTarget, 2,
/*   136*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 17
                      // Dst: (i_stype_store__opc_sb__x_0__simm12__xpr_general__i32_TRUNC_CLONE_ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   143*/          /*Scope*/ 14, /*->158*/
/*   144*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   146*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   148*/            OPC_EmitMergeInputChains1_0,
/*   149*/            OPC_EmitConvertToTarget, 2,
/*   151*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 17
                      // Dst: (i_stype_store__opc_sh__x_0__simm12__xpr_general__i32_TRUNC_CLONE_ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   158*/          0, /*End of Scope*/
/*   159*/        0, /*End of Scope*/
/*   160*/      /*Scope*/ 25, /*->186*/
/*   161*/        OPC_CheckChild1Type, MVT::i8,
/*   163*/        OPC_RecordChild2, // #1 = $op0
/*   164*/        OPC_MoveChild2,
/*   165*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   168*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   170*/        OPC_MoveParent,
/*   171*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   173*/        OPC_CheckPredicate, 3, // Predicate_store
/*   175*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   177*/        OPC_EmitMergeInputChains1_0,
/*   178*/        OPC_EmitConvertToTarget, 1,
/*   180*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:{ *:[i8] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                  // Dst: (i_stype_store__opc_sb__x_0__simm12__x_0__ (imm:{ *:[i32] }):$op0)
/*   186*/      0, /*End of Scope*/
/*   187*/    /*Scope*/ 44, /*->232*/
/*   188*/      OPC_RecordChild1, // #1 = $op0
/*   189*/      OPC_MoveChild1,
/*   190*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   192*/      OPC_CheckType, MVT::i32,
/*   194*/      OPC_MoveParent,
/*   195*/      OPC_MoveChild2,
/*   196*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   199*/      OPC_RecordChild0, // #2 = $op1
/*   200*/      OPC_MoveChild0,
/*   201*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   203*/      OPC_MoveParent,
/*   204*/      OPC_RecordChild1, // #3 = $op2
/*   205*/      OPC_MoveChild1,
/*   206*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   209*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   211*/      OPC_MoveParent,
/*   212*/      OPC_MoveParent,
/*   213*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   215*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   217*/      OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   219*/      OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   221*/      OPC_EmitMergeInputChains1_0,
/*   222*/      OPC_EmitConvertToTarget, 3,
/*   224*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 13
                // Dst: (i_stype_store__opc_sb__xpr_general__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   232*/    /*Scope*/ 27, /*->260*/
/*   233*/      OPC_CheckChild1Integer, 0, 
/*   235*/      OPC_CheckChild1Type, MVT::i16,
/*   237*/      OPC_RecordChild2, // #1 = $op0
/*   238*/      OPC_MoveChild2,
/*   239*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   242*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   244*/      OPC_MoveParent,
/*   245*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   247*/      OPC_CheckPredicate, 3, // Predicate_store
/*   249*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   251*/      OPC_EmitMergeInputChains1_0,
/*   252*/      OPC_EmitConvertToTarget, 1,
/*   254*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i16] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                // Dst: (i_stype_store__opc_sh__x_0__simm12__x_0__ (imm:{ *:[i32] }):$op0)
/*   260*/    /*Scope*/ 44, /*->305*/
/*   261*/      OPC_RecordChild1, // #1 = $op0
/*   262*/      OPC_MoveChild1,
/*   263*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   265*/      OPC_CheckType, MVT::i32,
/*   267*/      OPC_MoveParent,
/*   268*/      OPC_MoveChild2,
/*   269*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   272*/      OPC_RecordChild0, // #2 = $op1
/*   273*/      OPC_MoveChild0,
/*   274*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   276*/      OPC_MoveParent,
/*   277*/      OPC_RecordChild1, // #3 = $op2
/*   278*/      OPC_MoveChild1,
/*   279*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   282*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   284*/      OPC_MoveParent,
/*   285*/      OPC_MoveParent,
/*   286*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   288*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   290*/      OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   292*/      OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   294*/      OPC_EmitMergeInputChains1_0,
/*   295*/      OPC_EmitConvertToTarget, 3,
/*   297*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 13
                // Dst: (i_stype_store__opc_sh__xpr_general__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   305*/    /*Scope*/ 25, /*->331*/
/*   306*/      OPC_CheckChild1Integer, 0, 
/*   308*/      OPC_RecordChild2, // #1 = $op0
/*   309*/      OPC_MoveChild2,
/*   310*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   313*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   315*/      OPC_MoveParent,
/*   316*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   318*/      OPC_CheckPredicate, 3, // Predicate_store
/*   320*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   322*/      OPC_EmitMergeInputChains1_0,
/*   323*/      OPC_EmitConvertToTarget, 1,
/*   325*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                // Dst: (i_stype_store__opc_sw__x_0__simm12__x_0__ (imm:{ *:[i32] }):$op0)
/*   331*/    /*Scope*/ 42, /*->374*/
/*   332*/      OPC_RecordChild1, // #1 = $op0
/*   333*/      OPC_MoveChild1,
/*   334*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   336*/      OPC_CheckType, MVT::i32,
/*   338*/      OPC_MoveParent,
/*   339*/      OPC_MoveChild2,
/*   340*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   343*/      OPC_RecordChild0, // #2 = $op1
/*   344*/      OPC_MoveChild0,
/*   345*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   347*/      OPC_MoveParent,
/*   348*/      OPC_RecordChild1, // #3 = $op2
/*   349*/      OPC_MoveChild1,
/*   350*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   353*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   355*/      OPC_MoveParent,
/*   356*/      OPC_MoveParent,
/*   357*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   359*/      OPC_CheckPredicate, 3, // Predicate_store
/*   361*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   363*/      OPC_EmitMergeInputChains1_0,
/*   364*/      OPC_EmitConvertToTarget, 3,
/*   366*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                // Dst: (i_stype_store__opc_sw__xpr_general__simm12__xpr_general__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   374*/    /*Scope*/ 18|128,1/*146*/, /*->522*/
/*   376*/      OPC_CheckChild1Integer, 0, 
/*   378*/      OPC_Scope, 42, /*->422*/ // 4 children in Scope
/*   380*/        OPC_RecordChild2, // #1 = $op0
/*   381*/        OPC_MoveChild2,
/*   382*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   385*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   387*/        OPC_MoveParent,
/*   388*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   390*/        OPC_CheckPredicate, 5, // Predicate_truncstore
/*   392*/        OPC_Scope, 13, /*->407*/ // 2 children in Scope
/*   394*/          OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   396*/          OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   398*/          OPC_EmitMergeInputChains1_0,
/*   399*/          OPC_EmitConvertToTarget, 1,
/*   401*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 13
                    // Dst: (i_stype_store__opc_sb__x_0__simm12__x_0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   407*/        /*Scope*/ 13, /*->421*/
/*   408*/          OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   410*/          OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   412*/          OPC_EmitMergeInputChains1_0,
/*   413*/          OPC_EmitConvertToTarget, 1,
/*   415*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 13
                    // Dst: (i_stype_store__opc_sh__x_0__simm12__x_0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   421*/        0, /*End of Scope*/
/*   422*/      /*Scope*/ 22, /*->445*/
/*   423*/        OPC_CheckChild1Type, MVT::i8,
/*   425*/        OPC_RecordChild2, // #1 = $op0
/*   426*/        OPC_MoveChild2,
/*   427*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   429*/        OPC_CheckType, MVT::i32,
/*   431*/        OPC_MoveParent,
/*   432*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   434*/        OPC_CheckPredicate, 3, // Predicate_store
/*   436*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   438*/        OPC_EmitMergeInputChains1_0,
/*   439*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i8] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                  // Dst: (i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0)
/*   445*/      /*Scope*/ 22, /*->468*/
/*   446*/        OPC_CheckChild1Type, MVT::i16,
/*   448*/        OPC_RecordChild2, // #1 = $op0
/*   449*/        OPC_MoveChild2,
/*   450*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   452*/        OPC_CheckType, MVT::i32,
/*   454*/        OPC_MoveParent,
/*   455*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   457*/        OPC_CheckPredicate, 3, // Predicate_store
/*   459*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   461*/        OPC_EmitMergeInputChains1_0,
/*   462*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i16] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                  // Dst: (i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0)
/*   468*/      /*Scope*/ 52, /*->521*/
/*   469*/        OPC_RecordChild2, // #1 = $op0
/*   470*/        OPC_MoveChild2,
/*   471*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   473*/        OPC_CheckType, MVT::i32,
/*   475*/        OPC_MoveParent,
/*   476*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   478*/        OPC_Scope, 11, /*->491*/ // 2 children in Scope
/*   480*/          OPC_CheckPredicate, 3, // Predicate_store
/*   482*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   484*/          OPC_EmitMergeInputChains1_0,
/*   485*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:{ *:[i32] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                    // Dst: (i_stype_store__opc_sw__x_0__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0)
/*   491*/        /*Scope*/ 28, /*->520*/
/*   492*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   494*/          OPC_Scope, 11, /*->507*/ // 2 children in Scope
/*   496*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   498*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   500*/            OPC_EmitMergeInputChains1_0,
/*   501*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 10
                      // Dst: (i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_ xpr_general:{ *:[i32] }:$op0)
/*   507*/          /*Scope*/ 11, /*->519*/
/*   508*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   510*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   512*/            OPC_EmitMergeInputChains1_0,
/*   513*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 10
                      // Dst: (i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_ xpr_general:{ *:[i32] }:$op0)
/*   519*/          0, /*End of Scope*/
/*   520*/        0, /*End of Scope*/
/*   521*/      0, /*End of Scope*/
/*   522*/    /*Scope*/ 126, /*->649*/
/*   523*/      OPC_RecordChild1, // #1 = $op0
/*   524*/      OPC_MoveChild1,
/*   525*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   527*/      OPC_CheckType, MVT::i32,
/*   529*/      OPC_MoveParent,
/*   530*/      OPC_RecordChild2, // #2 = $op1
/*   531*/      OPC_MoveChild2,
/*   532*/      OPC_Scope, 60, /*->594*/ // 2 children in Scope
/*   534*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   537*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   539*/        OPC_MoveParent,
/*   540*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   542*/        OPC_Scope, 34, /*->578*/ // 2 children in Scope
/*   544*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   546*/          OPC_Scope, 14, /*->562*/ // 2 children in Scope
/*   548*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   550*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   552*/            OPC_EmitMergeInputChains1_0,
/*   553*/            OPC_EmitConvertToTarget, 2,
/*   555*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 9
                      // Dst: (i_stype_store__opc_sb__xpr_general__simm12__x_0__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   562*/          /*Scope*/ 14, /*->577*/
/*   563*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   565*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   567*/            OPC_EmitMergeInputChains1_0,
/*   568*/            OPC_EmitConvertToTarget, 2,
/*   570*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 9
                      // Dst: (i_stype_store__opc_sh__xpr_general__simm12__x_0__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   577*/          0, /*End of Scope*/
/*   578*/        /*Scope*/ 14, /*->593*/
/*   579*/          OPC_CheckPredicate, 3, // Predicate_store
/*   581*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   583*/          OPC_EmitMergeInputChains1_0,
/*   584*/          OPC_EmitConvertToTarget, 2,
/*   586*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 9
                    // Dst: (i_stype_store__opc_sw__xpr_general__simm12__x_0__ xpr_general:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   593*/        0, /*End of Scope*/
/*   594*/      /*Scope*/ 53, /*->648*/
/*   595*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   597*/        OPC_CheckType, MVT::i32,
/*   599*/        OPC_MoveParent,
/*   600*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   602*/        OPC_Scope, 30, /*->634*/ // 2 children in Scope
/*   604*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   606*/          OPC_Scope, 12, /*->620*/ // 2 children in Scope
/*   608*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   610*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   612*/            OPC_EmitMergeInputChains1_0,
/*   613*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 6
                      // Dst: (i_stype_store__opc_sb__xpr_general__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1)
/*   620*/          /*Scope*/ 12, /*->633*/
/*   621*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   623*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   625*/            OPC_EmitMergeInputChains1_0,
/*   626*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 6
                      // Dst: (i_stype_store__opc_sh__xpr_general__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1)
/*   633*/          0, /*End of Scope*/
/*   634*/        /*Scope*/ 12, /*->647*/
/*   635*/          OPC_CheckPredicate, 3, // Predicate_store
/*   637*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   639*/          OPC_EmitMergeInputChains1_0,
/*   640*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 2, 
                    // Src: (st xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 6
                    // Dst: (i_stype_store__opc_sw__xpr_general__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1)
/*   647*/        0, /*End of Scope*/
/*   648*/      0, /*End of Scope*/
/*   649*/    0, /*End of Scope*/
/*   650*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SRA),// ->712
/*   653*/    OPC_RecordChild0, // #0 = $op1
/*   654*/    OPC_MoveChild0,
/*   655*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   657*/    OPC_MoveParent,
/*   658*/    OPC_Scope, 17, /*->677*/ // 2 children in Scope
/*   660*/      OPC_MoveChild1,
/*   661*/      OPC_CheckAndImm, 31, 
/*   663*/      OPC_RecordChild0, // #1 = $op2
/*   664*/      OPC_MoveChild0,
/*   665*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   667*/      OPC_MoveParent,
/*   668*/      OPC_MoveParent,
/*   669*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (and:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, 31:{ *:[i32] })) - Complexity = 13
                // Dst: (i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*   677*/    /*Scope*/ 33, /*->711*/
/*   678*/      OPC_RecordChild1, // #1 = $op2
/*   679*/      OPC_MoveChild1,
/*   680*/      OPC_Scope, 16, /*->698*/ // 2 children in Scope
/*   682*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   685*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   687*/        OPC_MoveParent,
/*   688*/        OPC_EmitConvertToTarget, 1,
/*   690*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   698*/      /*Scope*/ 11, /*->710*/
/*   699*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   701*/        OPC_MoveParent,
/*   702*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                  // Dst: (i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*   710*/      0, /*End of Scope*/
/*   711*/    0, /*End of Scope*/
/*   712*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->784
/*   715*/    OPC_RecordChild0, // #0 = $op1
/*   716*/    OPC_MoveChild0,
/*   717*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   719*/    OPC_MoveParent,
/*   720*/    OPC_Scope, 17, /*->739*/ // 3 children in Scope
/*   722*/      OPC_MoveChild1,
/*   723*/      OPC_CheckAndImm, 31, 
/*   725*/      OPC_RecordChild0, // #1 = $op2
/*   726*/      OPC_MoveChild0,
/*   727*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   729*/      OPC_MoveParent,
/*   730*/      OPC_MoveParent,
/*   731*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (and:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, 31:{ *:[i32] })) - Complexity = 13
                // Dst: (i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*   739*/    /*Scope*/ 9, /*->749*/
/*   740*/      OPC_CheckChild1Integer, 31, 
/*   742*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, 31:{ *:[i32] }) - Complexity = 9
                // Dst: (i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*   749*/    /*Scope*/ 33, /*->783*/
/*   750*/      OPC_RecordChild1, // #1 = $op2
/*   751*/      OPC_MoveChild1,
/*   752*/      OPC_Scope, 16, /*->770*/ // 2 children in Scope
/*   754*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   757*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   759*/        OPC_MoveParent,
/*   760*/        OPC_EmitConvertToTarget, 1,
/*   762*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   770*/      /*Scope*/ 11, /*->782*/
/*   771*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   773*/        OPC_MoveParent,
/*   774*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                  // Dst: (i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*   782*/      0, /*End of Scope*/
/*   783*/    0, /*End of Scope*/
/*   784*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->1374
/*   788*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*   789*/    OPC_Scope, 49|128,4/*561*/, /*->1353*/ // 2 children in Scope
/*   792*/      OPC_MoveChild1,
/*   793*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*   796*/      OPC_RecordChild0, // #1 = $op0
/*   797*/      OPC_MoveChild0,
/*   798*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*   800*/      OPC_Scope, 91|128,2/*347*/, /*->1150*/ // 2 children in Scope
/*   803*/        OPC_MoveParent,
/*   804*/        OPC_Scope, 114, /*->920*/ // 4 children in Scope
/*   806*/          OPC_CheckChild1Integer, 0, 
/*   808*/          OPC_Scope, 36, /*->846*/ // 4 children in Scope
/*   810*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*   812*/            OPC_MoveParent,
/*   813*/            OPC_RecordChild2, // #2 = $op1
/*   814*/            OPC_MoveChild2,
/*   815*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   818*/            OPC_MoveParent,
/*   819*/            OPC_EmitMergeInputChains1_0,
/*   820*/            OPC_Scope, 7, /*->829*/ // 3 children in Scope
/*   822*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   829*/            /*Scope*/ 7, /*->837*/
/*   830*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   837*/            /*Scope*/ 7, /*->845*/
/*   838*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   845*/            0, /*End of Scope*/
/*   846*/          /*Scope*/ 17, /*->864*/
/*   847*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*   849*/            OPC_MoveParent,
/*   850*/            OPC_RecordChild2, // #2 = $op1
/*   851*/            OPC_MoveChild2,
/*   852*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   855*/            OPC_MoveParent,
/*   856*/            OPC_EmitMergeInputChains1_0,
/*   857*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                      // Dst: (i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   864*/          /*Scope*/ 17, /*->882*/
/*   865*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*   867*/            OPC_MoveParent,
/*   868*/            OPC_RecordChild2, // #2 = $op1
/*   869*/            OPC_MoveChild2,
/*   870*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   873*/            OPC_MoveParent,
/*   874*/            OPC_EmitMergeInputChains1_0,
/*   875*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                      // Dst: (i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   882*/          /*Scope*/ 36, /*->919*/
/*   883*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*   885*/            OPC_MoveParent,
/*   886*/            OPC_RecordChild2, // #2 = $op1
/*   887*/            OPC_MoveChild2,
/*   888*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   891*/            OPC_MoveParent,
/*   892*/            OPC_EmitMergeInputChains1_0,
/*   893*/            OPC_Scope, 7, /*->902*/ // 3 children in Scope
/*   895*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   902*/            /*Scope*/ 7, /*->910*/
/*   903*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   910*/            /*Scope*/ 7, /*->918*/
/*   911*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                        // Dst: (i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   918*/            0, /*End of Scope*/
/*   919*/          0, /*End of Scope*/
/*   920*/        /*Scope*/ 19, /*->940*/
/*   921*/          OPC_CheckChild1Integer, 1, 
/*   923*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*   925*/          OPC_MoveParent,
/*   926*/          OPC_RecordChild2, // #2 = $op1
/*   927*/          OPC_MoveChild2,
/*   928*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   931*/          OPC_MoveParent,
/*   932*/          OPC_EmitMergeInputChains1_0,
/*   933*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                    // Dst: (i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   940*/        /*Scope*/ 28, /*->969*/
/*   941*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*   952*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*   954*/          OPC_MoveParent,
/*   955*/          OPC_RecordChild2, // #2 = $op1
/*   956*/          OPC_MoveChild2,
/*   957*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   960*/          OPC_MoveParent,
/*   961*/          OPC_EmitMergeInputChains1_0,
/*   962*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 12
                    // Dst: (i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__ xpr_general:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   969*/        /*Scope*/ 50|128,1/*178*/, /*->1149*/
/*   971*/          OPC_RecordChild1, // #2 = $op1
/*   972*/          OPC_MoveChild1,
/*   973*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   976*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   978*/          OPC_MoveParent,
/*   979*/          OPC_Scope, 27, /*->1008*/ // 6 children in Scope
/*   981*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*   983*/            OPC_MoveParent,
/*   984*/            OPC_RecordChild2, // #3 = $op2
/*   985*/            OPC_MoveChild2,
/*   986*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   989*/            OPC_MoveParent,
/*   990*/            OPC_EmitMergeInputChains1_0,
/*   991*/            OPC_EmitConvertToTarget, 2,
/*   993*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1001*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1008*/          /*Scope*/ 27, /*->1036*/
/*  1009*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1011*/            OPC_MoveParent,
/*  1012*/            OPC_RecordChild2, // #3 = $op2
/*  1013*/            OPC_MoveChild2,
/*  1014*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1017*/            OPC_MoveParent,
/*  1018*/            OPC_EmitMergeInputChains1_0,
/*  1019*/            OPC_EmitConvertToTarget, 2,
/*  1021*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1029*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1036*/          /*Scope*/ 27, /*->1064*/
/*  1037*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1039*/            OPC_MoveParent,
/*  1040*/            OPC_RecordChild2, // #3 = $op2
/*  1041*/            OPC_MoveChild2,
/*  1042*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1045*/            OPC_MoveParent,
/*  1046*/            OPC_EmitMergeInputChains1_0,
/*  1047*/            OPC_EmitConvertToTarget, 2,
/*  1049*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1057*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1064*/          /*Scope*/ 27, /*->1092*/
/*  1065*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1067*/            OPC_MoveParent,
/*  1068*/            OPC_RecordChild2, // #3 = $op2
/*  1069*/            OPC_MoveChild2,
/*  1070*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1073*/            OPC_MoveParent,
/*  1074*/            OPC_EmitMergeInputChains1_0,
/*  1075*/            OPC_EmitConvertToTarget, 2,
/*  1077*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1085*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1092*/          /*Scope*/ 27, /*->1120*/
/*  1093*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1095*/            OPC_MoveParent,
/*  1096*/            OPC_RecordChild2, // #3 = $op2
/*  1097*/            OPC_MoveChild2,
/*  1098*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1101*/            OPC_MoveParent,
/*  1102*/            OPC_EmitMergeInputChains1_0,
/*  1103*/            OPC_EmitConvertToTarget, 2,
/*  1105*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1113*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1120*/          /*Scope*/ 27, /*->1148*/
/*  1121*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1123*/            OPC_MoveParent,
/*  1124*/            OPC_RecordChild2, // #3 = $op2
/*  1125*/            OPC_MoveChild2,
/*  1126*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1129*/            OPC_MoveParent,
/*  1130*/            OPC_EmitMergeInputChains1_0,
/*  1131*/            OPC_EmitConvertToTarget, 2,
/*  1133*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1141*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1148*/          0, /*End of Scope*/
/*  1149*/        0, /*End of Scope*/
/*  1150*/      /*Scope*/ 72|128,1/*200*/, /*->1352*/
/*  1152*/        OPC_CheckType, MVT::i32,
/*  1154*/        OPC_MoveParent,
/*  1155*/        OPC_RecordChild1, // #2 = $op1
/*  1156*/        OPC_MoveChild1,
/*  1157*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  1159*/        OPC_MoveParent,
/*  1160*/        OPC_Scope, 18, /*->1180*/ // 10 children in Scope
/*  1162*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1164*/          OPC_MoveParent,
/*  1165*/          OPC_RecordChild2, // #3 = $op2
/*  1166*/          OPC_MoveChild2,
/*  1167*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1170*/          OPC_MoveParent,
/*  1171*/          OPC_EmitMergeInputChains1_0,
/*  1172*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1180*/        /*Scope*/ 18, /*->1199*/
/*  1181*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1183*/          OPC_MoveParent,
/*  1184*/          OPC_RecordChild2, // #3 = $op2
/*  1185*/          OPC_MoveChild2,
/*  1186*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1189*/          OPC_MoveParent,
/*  1190*/          OPC_EmitMergeInputChains1_0,
/*  1191*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1199*/        /*Scope*/ 18, /*->1218*/
/*  1200*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1202*/          OPC_MoveParent,
/*  1203*/          OPC_RecordChild2, // #3 = $op2
/*  1204*/          OPC_MoveChild2,
/*  1205*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1208*/          OPC_MoveParent,
/*  1209*/          OPC_EmitMergeInputChains1_0,
/*  1210*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1218*/        /*Scope*/ 18, /*->1237*/
/*  1219*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1221*/          OPC_MoveParent,
/*  1222*/          OPC_RecordChild2, // #3 = $op2
/*  1223*/          OPC_MoveChild2,
/*  1224*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1227*/          OPC_MoveParent,
/*  1228*/          OPC_EmitMergeInputChains1_0,
/*  1229*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1237*/        /*Scope*/ 18, /*->1256*/
/*  1238*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1240*/          OPC_MoveParent,
/*  1241*/          OPC_RecordChild2, // #3 = $op2
/*  1242*/          OPC_MoveChild2,
/*  1243*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1246*/          OPC_MoveParent,
/*  1247*/          OPC_EmitMergeInputChains1_0,
/*  1248*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1256*/        /*Scope*/ 18, /*->1275*/
/*  1257*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1259*/          OPC_MoveParent,
/*  1260*/          OPC_RecordChild2, // #3 = $op2
/*  1261*/          OPC_MoveChild2,
/*  1262*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1265*/          OPC_MoveParent,
/*  1266*/          OPC_EmitMergeInputChains1_0,
/*  1267*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1275*/        /*Scope*/ 18, /*->1294*/
/*  1276*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1278*/          OPC_MoveParent,
/*  1279*/          OPC_RecordChild2, // #3 = $op2
/*  1280*/          OPC_MoveChild2,
/*  1281*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1284*/          OPC_MoveParent,
/*  1285*/          OPC_EmitMergeInputChains1_0,
/*  1286*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1294*/        /*Scope*/ 18, /*->1313*/
/*  1295*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1297*/          OPC_MoveParent,
/*  1298*/          OPC_RecordChild2, // #3 = $op2
/*  1299*/          OPC_MoveChild2,
/*  1300*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1303*/          OPC_MoveParent,
/*  1304*/          OPC_EmitMergeInputChains1_0,
/*  1305*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1313*/        /*Scope*/ 18, /*->1332*/
/*  1314*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1316*/          OPC_MoveParent,
/*  1317*/          OPC_RecordChild2, // #3 = $op2
/*  1318*/          OPC_MoveChild2,
/*  1319*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1322*/          OPC_MoveParent,
/*  1323*/          OPC_EmitMergeInputChains1_0,
/*  1324*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1332*/        /*Scope*/ 18, /*->1351*/
/*  1333*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1335*/          OPC_MoveParent,
/*  1336*/          OPC_RecordChild2, // #3 = $op2
/*  1337*/          OPC_MoveChild2,
/*  1338*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1341*/          OPC_MoveParent,
/*  1342*/          OPC_EmitMergeInputChains1_0,
/*  1343*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 8
                    // Dst: (i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__ xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1351*/        0, /*End of Scope*/
/*  1352*/      0, /*End of Scope*/
/*  1353*/    /*Scope*/ 19, /*->1373*/
/*  1354*/      OPC_RecordChild1, // #1 = $op0
/*  1355*/      OPC_MoveChild1,
/*  1356*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  1358*/      OPC_MoveParent,
/*  1359*/      OPC_RecordChild2, // #2 = $op1
/*  1360*/      OPC_MoveChild2,
/*  1361*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1364*/      OPC_MoveParent,
/*  1365*/      OPC_EmitMergeInputChains1_0,
/*  1366*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__ xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (bb:{ *:[Other] }):$op1)
/*  1373*/    0, /*End of Scope*/
/*  1374*/  /*SwitchOpcode*/ 5|128,3/*389*/, TARGET_VAL(ISD::SETCC),// ->1767
/*  1378*/    OPC_RecordChild0, // #0 = $op1
/*  1379*/    OPC_MoveChild0,
/*  1380*/    OPC_Scope, 34, /*->1416*/ // 2 children in Scope
/*  1382*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1385*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1387*/      OPC_MoveParent,
/*  1388*/      OPC_CheckChild1Integer, 0, 
/*  1390*/      OPC_Scope, 11, /*->1403*/ // 2 children in Scope
/*  1392*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  1394*/        OPC_EmitConvertToTarget, 0,
/*  1396*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 12
                  // Dst: (i_itype_alu__opc_slti__xpr_general__x_0__simm12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1403*/      /*Scope*/ 11, /*->1415*/
/*  1404*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  1406*/        OPC_EmitConvertToTarget, 0,
/*  1408*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 12
                  // Dst: (i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1415*/      0, /*End of Scope*/
/*  1416*/    /*Scope*/ 92|128,2/*348*/, /*->1766*/
/*  1418*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  1420*/      OPC_Scope, 30|128,1/*158*/, /*->1581*/ // 2 children in Scope
/*  1423*/        OPC_MoveParent,
/*  1424*/        OPC_Scope, 24, /*->1450*/ // 2 children in Scope
/*  1426*/          OPC_CheckChild1Integer, 0, 
/*  1428*/          OPC_Scope, 9, /*->1439*/ // 2 children in Scope
/*  1430*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1432*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  1439*/          /*Scope*/ 9, /*->1449*/
/*  1440*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1442*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  1449*/          0, /*End of Scope*/
/*  1450*/        /*Scope*/ 0|128,1/*128*/, /*->1580*/
/*  1452*/          OPC_RecordChild1, // #1 = $op2
/*  1453*/          OPC_MoveChild1,
/*  1454*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1457*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1459*/          OPC_MoveParent,
/*  1460*/          OPC_Scope, 12, /*->1474*/ // 6 children in Scope
/*  1462*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1464*/            OPC_EmitConvertToTarget, 1,
/*  1466*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1474*/          /*Scope*/ 12, /*->1487*/
/*  1475*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1477*/            OPC_EmitConvertToTarget, 1,
/*  1479*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1487*/          /*Scope*/ 23, /*->1511*/
/*  1488*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1490*/            OPC_EmitConvertToTarget, 1,
/*  1492*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1500*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1503*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1511*/          /*Scope*/ 19, /*->1531*/
/*  1512*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1514*/            OPC_EmitConvertToTarget, 1,
/*  1516*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1524*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__:{ *:[i32] } (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1531*/          /*Scope*/ 23, /*->1555*/
/*  1532*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1534*/            OPC_EmitConvertToTarget, 1,
/*  1536*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1544*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1547*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1555*/          /*Scope*/ 23, /*->1579*/
/*  1556*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1558*/            OPC_EmitConvertToTarget, 1,
/*  1560*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1568*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1571*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1579*/          0, /*End of Scope*/
/*  1580*/        0, /*End of Scope*/
/*  1581*/      /*Scope*/ 54|128,1/*182*/, /*->1765*/
/*  1583*/        OPC_CheckType, MVT::i32,
/*  1585*/        OPC_MoveParent,
/*  1586*/        OPC_RecordChild1, // #1 = $op2
/*  1587*/        OPC_MoveChild1,
/*  1588*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  1590*/        OPC_MoveParent,
/*  1591*/        OPC_Scope, 10, /*->1603*/ // 10 children in Scope
/*  1593*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1595*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, SETLT:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  1603*/        /*Scope*/ 10, /*->1614*/
/*  1604*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1606*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, SETULT:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  1614*/        /*Scope*/ 10, /*->1625*/
/*  1615*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1617*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, SETGT:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__swappedCmpClone0__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  1625*/        /*Scope*/ 10, /*->1636*/
/*  1626*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1628*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__swappedCmpClone0__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  1636*/        /*Scope*/ 21, /*->1658*/
/*  1637*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1639*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1647*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1650*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1), 1:{ *:[i32] })
/*  1658*/        /*Scope*/ 17, /*->1676*/
/*  1659*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1661*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1669*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__:{ *:[i32] } (i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1))
/*  1676*/        /*Scope*/ 21, /*->1698*/
/*  1677*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1679*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1687*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1690*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1), 1:{ *:[i32] })
/*  1698*/        /*Scope*/ 21, /*->1720*/
/*  1699*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1701*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1709*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1712*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0), 1:{ *:[i32] })
/*  1720*/        /*Scope*/ 21, /*->1742*/
/*  1721*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1723*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1731*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1734*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1), 1:{ *:[i32] })
/*  1742*/        /*Scope*/ 21, /*->1764*/
/*  1743*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1745*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1753*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1756*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } (i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0), 1:{ *:[i32] })
/*  1764*/        0, /*End of Scope*/
/*  1765*/      0, /*End of Scope*/
/*  1766*/    0, /*End of Scope*/
/*  1767*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->2256
/*  1771*/    OPC_RecordMemRef,
/*  1772*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  1773*/    OPC_Scope, 45|128,1/*173*/, /*->1949*/ // 2 children in Scope
/*  1776*/      OPC_MoveChild1,
/*  1777*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1780*/      OPC_RecordChild0, // #1 = $op1
/*  1781*/      OPC_MoveChild0,
/*  1782*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  1784*/      OPC_MoveParent,
/*  1785*/      OPC_RecordChild1, // #2 = $op2
/*  1786*/      OPC_MoveChild1,
/*  1787*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1790*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1792*/      OPC_MoveParent,
/*  1793*/      OPC_MoveParent,
/*  1794*/      OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  1796*/      OPC_CheckType, MVT::i32,
/*  1798*/      OPC_Scope, 17, /*->1817*/ // 6 children in Scope
/*  1800*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1802*/        OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  1804*/        OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  1806*/        OPC_EmitMergeInputChains1_0,
/*  1807*/        OPC_EmitConvertToTarget, 2,
/*  1809*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 12
                  // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1817*/      /*Scope*/ 17, /*->1835*/
/*  1818*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1820*/        OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  1822*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  1824*/        OPC_EmitMergeInputChains1_0,
/*  1825*/        OPC_EmitConvertToTarget, 2,
/*  1827*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 12
                  // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1835*/      /*Scope*/ 17, /*->1853*/
/*  1836*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1838*/        OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  1840*/        OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  1842*/        OPC_EmitMergeInputChains1_0,
/*  1843*/        OPC_EmitConvertToTarget, 2,
/*  1845*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 12
                  // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1853*/      /*Scope*/ 17, /*->1871*/
/*  1854*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1856*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  1858*/        OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  1860*/        OPC_EmitMergeInputChains1_0,
/*  1861*/        OPC_EmitConvertToTarget, 2,
/*  1863*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 12
                  // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1871*/      /*Scope*/ 15, /*->1887*/
/*  1872*/        OPC_CheckPredicate, 12, // Predicate_load
/*  1874*/        OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  1876*/        OPC_EmitMergeInputChains1_0,
/*  1877*/        OPC_EmitConvertToTarget, 2,
/*  1879*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 12
                  // Dst: (i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1887*/      /*Scope*/ 60, /*->1948*/
/*  1888*/        OPC_CheckPredicate, 13, // Predicate_extload
/*  1890*/        OPC_Scope, 27, /*->1919*/ // 2 children in Scope
/*  1892*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  1894*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  1896*/          OPC_EmitMergeInputChains1_0,
/*  1897*/          OPC_EmitConvertToTarget, 2,
/*  1899*/          OPC_Scope, 8, /*->1909*/ // 2 children in Scope
/*  1901*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 12
                      // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1909*/          /*Scope*/ 8, /*->1918*/
/*  1910*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 12
                      // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1918*/          0, /*End of Scope*/
/*  1919*/        /*Scope*/ 27, /*->1947*/
/*  1920*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  1922*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  1924*/          OPC_EmitMergeInputChains1_0,
/*  1925*/          OPC_EmitConvertToTarget, 2,
/*  1927*/          OPC_Scope, 8, /*->1937*/ // 2 children in Scope
/*  1929*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 12
                      // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1937*/          /*Scope*/ 8, /*->1946*/
/*  1938*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 12
                      // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1946*/          0, /*End of Scope*/
/*  1947*/        0, /*End of Scope*/
/*  1948*/      0, /*End of Scope*/
/*  1949*/    /*Scope*/ 48|128,2/*304*/, /*->2255*/
/*  1951*/      OPC_RecordChild1, // #1 = $op1
/*  1952*/      OPC_MoveChild1,
/*  1953*/      OPC_Scope, 24|128,1/*152*/, /*->2108*/ // 2 children in Scope
/*  1956*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1959*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1961*/        OPC_MoveParent,
/*  1962*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  1964*/        OPC_CheckType, MVT::i32,
/*  1966*/        OPC_Scope, 16, /*->1984*/ // 6 children in Scope
/*  1968*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  1970*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  1972*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  1974*/          OPC_EmitMergeInputChains1_0,
/*  1975*/          OPC_EmitConvertToTarget, 1,
/*  1977*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 8
                    // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__x_0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1984*/        /*Scope*/ 16, /*->2001*/
/*  1985*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  1987*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  1989*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  1991*/          OPC_EmitMergeInputChains1_0,
/*  1992*/          OPC_EmitConvertToTarget, 1,
/*  1994*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 8
                    // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__x_0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2001*/        /*Scope*/ 16, /*->2018*/
/*  2002*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2004*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2006*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2008*/          OPC_EmitMergeInputChains1_0,
/*  2009*/          OPC_EmitConvertToTarget, 1,
/*  2011*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 8
                    // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__x_0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2018*/        /*Scope*/ 16, /*->2035*/
/*  2019*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2021*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2023*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2025*/          OPC_EmitMergeInputChains1_0,
/*  2026*/          OPC_EmitConvertToTarget, 1,
/*  2028*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 8
                    // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__x_0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2035*/        /*Scope*/ 14, /*->2050*/
/*  2036*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2038*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2040*/          OPC_EmitMergeInputChains1_0,
/*  2041*/          OPC_EmitConvertToTarget, 1,
/*  2043*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 8
                    // Dst: (i_itype_loads__opc_lw__xpr_general__simm12__x_0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2050*/        /*Scope*/ 56, /*->2107*/
/*  2051*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2053*/          OPC_Scope, 25, /*->2080*/ // 2 children in Scope
/*  2055*/            OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2057*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2059*/            OPC_EmitMergeInputChains1_0,
/*  2060*/            OPC_EmitConvertToTarget, 1,
/*  2062*/            OPC_Scope, 7, /*->2071*/ // 2 children in Scope
/*  2064*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 8
                        // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__x_0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2071*/            /*Scope*/ 7, /*->2079*/
/*  2072*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 8
                        // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__x_0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2079*/            0, /*End of Scope*/
/*  2080*/          /*Scope*/ 25, /*->2106*/
/*  2081*/            OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2083*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2085*/            OPC_EmitMergeInputChains1_0,
/*  2086*/            OPC_EmitConvertToTarget, 1,
/*  2088*/            OPC_Scope, 7, /*->2097*/ // 2 children in Scope
/*  2090*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 8
                        // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__x_0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2097*/            /*Scope*/ 7, /*->2105*/
/*  2098*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 8
                        // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__x_0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2105*/            0, /*End of Scope*/
/*  2106*/          0, /*End of Scope*/
/*  2107*/        0, /*End of Scope*/
/*  2108*/      /*Scope*/ 16|128,1/*144*/, /*->2254*/
/*  2110*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2112*/        OPC_CheckType, MVT::i32,
/*  2114*/        OPC_MoveParent,
/*  2115*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  2117*/        OPC_CheckType, MVT::i32,
/*  2119*/        OPC_Scope, 14, /*->2135*/ // 9 children in Scope
/*  2121*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2123*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2125*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2127*/          OPC_EmitMergeInputChains1_0,
/*  2128*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2135*/        /*Scope*/ 14, /*->2150*/
/*  2136*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2138*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2140*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2142*/          OPC_EmitMergeInputChains1_0,
/*  2143*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2150*/        /*Scope*/ 14, /*->2165*/
/*  2151*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2153*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2155*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2157*/          OPC_EmitMergeInputChains1_0,
/*  2158*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2165*/        /*Scope*/ 14, /*->2180*/
/*  2166*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2168*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2170*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2172*/          OPC_EmitMergeInputChains1_0,
/*  2173*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2180*/        /*Scope*/ 14, /*->2195*/
/*  2181*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2183*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2185*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2187*/          OPC_EmitMergeInputChains1_0,
/*  2188*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2195*/        /*Scope*/ 14, /*->2210*/
/*  2196*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2198*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2200*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2202*/          OPC_EmitMergeInputChains1_0,
/*  2203*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2210*/        /*Scope*/ 14, /*->2225*/
/*  2211*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2213*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2215*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2217*/          OPC_EmitMergeInputChains1_0,
/*  2218*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2225*/        /*Scope*/ 14, /*->2240*/
/*  2226*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2228*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2230*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2232*/          OPC_EmitMergeInputChains1_0,
/*  2233*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2240*/        /*Scope*/ 12, /*->2253*/
/*  2241*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2243*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2245*/          OPC_EmitMergeInputChains1_0,
/*  2246*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 5
                    // Dst: (i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2253*/        0, /*End of Scope*/
/*  2254*/      0, /*End of Scope*/
/*  2255*/    0, /*End of Scope*/
/*  2256*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->2281
/*  2259*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  2260*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  2263*/    OPC_RecordChild2, // #1 = $op1
/*  2264*/    OPC_RecordChild3, // #2 = $op2
/*  2265*/    OPC_MoveChild3,
/*  2266*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2269*/    OPC_MoveParent,
/*  2270*/    OPC_EmitMergeInputChains1_0,
/*  2271*/    OPC_EmitConvertToTarget, 2,
/*  2273*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2281*/  /*SwitchOpcode*/ 53|128,2/*309*/, TARGET_VAL(ISD::SELECT),// ->2594
/*  2285*/    OPC_Scope, 22|128,2/*278*/, /*->2566*/ // 2 children in Scope
/*  2288*/      OPC_MoveChild0,
/*  2289*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2292*/      OPC_RecordChild0, // #0 = $op0
/*  2293*/      OPC_MoveChild0,
/*  2294*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2296*/      OPC_CheckType, MVT::i32,
/*  2298*/      OPC_MoveParent,
/*  2299*/      OPC_RecordChild1, // #1 = $op1
/*  2300*/      OPC_MoveChild1,
/*  2301*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2303*/      OPC_MoveParent,
/*  2304*/      OPC_Scope, 25, /*->2331*/ // 10 children in Scope
/*  2306*/        OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2308*/        OPC_MoveParent,
/*  2309*/        OPC_RecordChild1, // #2 = $op2
/*  2310*/        OPC_MoveChild1,
/*  2311*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2313*/        OPC_MoveParent,
/*  2314*/        OPC_RecordChild2, // #3 = $op3
/*  2315*/        OPC_MoveChild2,
/*  2316*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2318*/        OPC_MoveParent,
/*  2319*/        OPC_CheckType, MVT::i32,
/*  2321*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETEQ:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_7:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2331*/      /*Scope*/ 25, /*->2357*/
/*  2332*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  2334*/        OPC_MoveParent,
/*  2335*/        OPC_RecordChild1, // #2 = $op2
/*  2336*/        OPC_MoveChild1,
/*  2337*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2339*/        OPC_MoveParent,
/*  2340*/        OPC_RecordChild2, // #3 = $op3
/*  2341*/        OPC_MoveChild2,
/*  2342*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2344*/        OPC_MoveParent,
/*  2345*/        OPC_CheckType, MVT::i32,
/*  2347*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETNE:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_8:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2357*/      /*Scope*/ 25, /*->2383*/
/*  2358*/        OPC_CheckChild2CondCode, ISD::SETGE,
/*  2360*/        OPC_MoveParent,
/*  2361*/        OPC_RecordChild1, // #2 = $op2
/*  2362*/        OPC_MoveChild1,
/*  2363*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2365*/        OPC_MoveParent,
/*  2366*/        OPC_RecordChild2, // #3 = $op3
/*  2367*/        OPC_MoveChild2,
/*  2368*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2370*/        OPC_MoveParent,
/*  2371*/        OPC_CheckType, MVT::i32,
/*  2373*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETGE:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_9:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2383*/      /*Scope*/ 25, /*->2409*/
/*  2384*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2386*/        OPC_MoveParent,
/*  2387*/        OPC_RecordChild1, // #2 = $op2
/*  2388*/        OPC_MoveChild1,
/*  2389*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2391*/        OPC_MoveParent,
/*  2392*/        OPC_RecordChild2, // #3 = $op3
/*  2393*/        OPC_MoveChild2,
/*  2394*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2396*/        OPC_MoveParent,
/*  2397*/        OPC_CheckType, MVT::i32,
/*  2399*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETGT:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_10:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2409*/      /*Scope*/ 25, /*->2435*/
/*  2410*/        OPC_CheckChild2CondCode, ISD::SETLE,
/*  2412*/        OPC_MoveParent,
/*  2413*/        OPC_RecordChild1, // #2 = $op2
/*  2414*/        OPC_MoveChild1,
/*  2415*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2417*/        OPC_MoveParent,
/*  2418*/        OPC_RecordChild2, // #3 = $op3
/*  2419*/        OPC_MoveChild2,
/*  2420*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2422*/        OPC_MoveParent,
/*  2423*/        OPC_CheckType, MVT::i32,
/*  2425*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETLE:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_11:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2435*/      /*Scope*/ 25, /*->2461*/
/*  2436*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*  2438*/        OPC_MoveParent,
/*  2439*/        OPC_RecordChild1, // #2 = $op2
/*  2440*/        OPC_MoveChild1,
/*  2441*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2443*/        OPC_MoveParent,
/*  2444*/        OPC_RecordChild2, // #3 = $op3
/*  2445*/        OPC_MoveChild2,
/*  2446*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2448*/        OPC_MoveParent,
/*  2449*/        OPC_CheckType, MVT::i32,
/*  2451*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETLT:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_12:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2461*/      /*Scope*/ 25, /*->2487*/
/*  2462*/        OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2464*/        OPC_MoveParent,
/*  2465*/        OPC_RecordChild1, // #2 = $op2
/*  2466*/        OPC_MoveChild1,
/*  2467*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2469*/        OPC_MoveParent,
/*  2470*/        OPC_RecordChild2, // #3 = $op3
/*  2471*/        OPC_MoveChild2,
/*  2472*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2474*/        OPC_MoveParent,
/*  2475*/        OPC_CheckType, MVT::i32,
/*  2477*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETUGE:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_13:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2487*/      /*Scope*/ 25, /*->2513*/
/*  2488*/        OPC_CheckChild2CondCode, ISD::SETUGT,
/*  2490*/        OPC_MoveParent,
/*  2491*/        OPC_RecordChild1, // #2 = $op2
/*  2492*/        OPC_MoveChild1,
/*  2493*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2495*/        OPC_MoveParent,
/*  2496*/        OPC_RecordChild2, // #3 = $op3
/*  2497*/        OPC_MoveChild2,
/*  2498*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2500*/        OPC_MoveParent,
/*  2501*/        OPC_CheckType, MVT::i32,
/*  2503*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETUGT:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_14:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2513*/      /*Scope*/ 25, /*->2539*/
/*  2514*/        OPC_CheckChild2CondCode, ISD::SETULE,
/*  2516*/        OPC_MoveParent,
/*  2517*/        OPC_RecordChild1, // #2 = $op2
/*  2518*/        OPC_MoveChild1,
/*  2519*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2521*/        OPC_MoveParent,
/*  2522*/        OPC_RecordChild2, // #3 = $op3
/*  2523*/        OPC_MoveChild2,
/*  2524*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2526*/        OPC_MoveParent,
/*  2527*/        OPC_CheckType, MVT::i32,
/*  2529*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETULE:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_15:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2539*/      /*Scope*/ 25, /*->2565*/
/*  2540*/        OPC_CheckChild2CondCode, ISD::SETULT,
/*  2542*/        OPC_MoveParent,
/*  2543*/        OPC_RecordChild1, // #2 = $op2
/*  2544*/        OPC_MoveChild1,
/*  2545*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2547*/        OPC_MoveParent,
/*  2548*/        OPC_RecordChild2, // #3 = $op3
/*  2549*/        OPC_MoveChild2,
/*  2550*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2552*/        OPC_MoveParent,
/*  2553*/        OPC_CheckType, MVT::i32,
/*  2555*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, SETULT:{ *:[Other] }), xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_16:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2, xpr_general:{ *:[i32] }:$op3)
/*  2565*/      0, /*End of Scope*/
/*  2566*/    /*Scope*/ 26, /*->2593*/
/*  2567*/      OPC_RecordChild0, // #0 = $op0
/*  2568*/      OPC_MoveChild0,
/*  2569*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2571*/      OPC_MoveParent,
/*  2572*/      OPC_RecordChild1, // #1 = $op1
/*  2573*/      OPC_MoveChild1,
/*  2574*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2576*/      OPC_MoveParent,
/*  2577*/      OPC_RecordChild2, // #2 = $op2
/*  2578*/      OPC_MoveChild2,
/*  2579*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2581*/      OPC_MoveParent,
/*  2582*/      OPC_CheckType, MVT::i32,
/*  2584*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } xpr_general:{ *:[i32] }:$op0, xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  2593*/    0, /*End of Scope*/
/*  2594*/  /*SwitchOpcode*/ 5|128,1/*133*/, TARGET_VAL(CodasipISD::Call),// ->2731
/*  2598*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  2599*/    OPC_CaptureGlueInput,
/*  2600*/    OPC_Scope, 112, /*->2714*/ // 2 children in Scope
/*  2602*/      OPC_MoveChild1,
/*  2603*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2606*/      OPC_RecordChild0, // #1 = $op0
/*  2607*/      OPC_MoveChild0,
/*  2608*/      OPC_SwitchOpcode /*4 cases */, 23, TARGET_VAL(ISD::TargetGlobalAddress),// ->2635
/*  2612*/        OPC_MoveParent,
/*  2613*/        OPC_CheckType, MVT::i32,
/*  2615*/        OPC_MoveParent,
/*  2616*/        OPC_EmitMergeInputChains1_0,
/*  2617*/        OPC_Scope, 7, /*->2626*/ // 2 children in Scope
/*  2619*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__relative_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_alias__relative_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  2626*/        /*Scope*/ 7, /*->2634*/
/*  2627*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__simm12__x_0__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_reg_alias__simm12__x_0__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  2634*/        0, /*End of Scope*/
/*  2635*/      /*SwitchOpcode*/ 23, TARGET_VAL(ISD::TargetExternalSymbol),// ->2661
/*  2638*/        OPC_MoveParent,
/*  2639*/        OPC_CheckType, MVT::i32,
/*  2641*/        OPC_MoveParent,
/*  2642*/        OPC_EmitMergeInputChains1_0,
/*  2643*/        OPC_Scope, 7, /*->2652*/ // 2 children in Scope
/*  2645*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__relative_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_alias__relative_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  2652*/        /*Scope*/ 7, /*->2660*/
/*  2653*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__simm12__x_0__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_reg_alias__simm12__x_0__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  2660*/        0, /*End of Scope*/
/*  2661*/      /*SwitchOpcode*/ 23, TARGET_VAL(ISD::MCSymbol),// ->2687
/*  2664*/        OPC_MoveParent,
/*  2665*/        OPC_CheckType, MVT::i32,
/*  2667*/        OPC_MoveParent,
/*  2668*/        OPC_EmitMergeInputChains1_0,
/*  2669*/        OPC_Scope, 7, /*->2678*/ // 2 children in Scope
/*  2671*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__relative_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_alias__relative_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  2678*/        /*Scope*/ 7, /*->2686*/
/*  2679*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__simm12__x_0__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_reg_alias__simm12__x_0__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  2686*/        0, /*End of Scope*/
/*  2687*/      /*SwitchOpcode*/ 23, TARGET_VAL(ISD::TargetBlockAddress),// ->2713
/*  2690*/        OPC_MoveParent,
/*  2691*/        OPC_CheckType, MVT::i32,
/*  2693*/        OPC_MoveParent,
/*  2694*/        OPC_EmitMergeInputChains1_0,
/*  2695*/        OPC_Scope, 7, /*->2704*/ // 2 children in Scope
/*  2697*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__relative_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_alias__relative_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  2704*/        /*Scope*/ 7, /*->2712*/
/*  2705*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__simm12__x_0__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_call_reg_alias__simm12__x_0__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  2712*/        0, /*End of Scope*/
/*  2713*/      0, // EndSwitchOpcode
/*  2714*/    /*Scope*/ 15, /*->2730*/
/*  2715*/      OPC_RecordChild1, // #1 = $op0
/*  2716*/      OPC_MoveChild1,
/*  2717*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2719*/      OPC_CheckType, MVT::i32,
/*  2721*/      OPC_MoveParent,
/*  2722*/      OPC_EmitMergeInputChains1_0,
/*  2723*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__simm12__xpr_general__immspec_1_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0) - Complexity = 4
                // Dst: (i_call_reg_alias__simm12__xpr_general__immspec_1_:{ *:[i32] } xpr_general:{ *:[i32] }:$op0)
/*  2730*/    0, /*End of Scope*/
/*  2731*/  /*SwitchOpcode*/ 36, TARGET_VAL(ISD::SUB),// ->2770
/*  2734*/    OPC_Scope, 14, /*->2750*/ // 2 children in Scope
/*  2736*/      OPC_CheckChild0Integer, 0, 
/*  2738*/      OPC_RecordChild1, // #0 = $op1
/*  2739*/      OPC_MoveChild1,
/*  2740*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2742*/      OPC_MoveParent,
/*  2743*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1) - Complexity = 9
                // Dst: (i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  2750*/    /*Scope*/ 18, /*->2769*/
/*  2751*/      OPC_RecordChild0, // #0 = $op1
/*  2752*/      OPC_MoveChild0,
/*  2753*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2755*/      OPC_MoveParent,
/*  2756*/      OPC_RecordChild1, // #1 = $op2
/*  2757*/      OPC_MoveChild1,
/*  2758*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  2760*/      OPC_MoveParent,
/*  2761*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  2769*/    0, /*End of Scope*/
/*  2770*/  /*SwitchOpcode*/ 125|128,1/*253*/, TARGET_VAL(CodasipISD::TailCall),// ->3027
/*  2774*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  2775*/    OPC_CaptureGlueInput,
/*  2776*/    OPC_Scope, 88|128,1/*216*/, /*->2995*/ // 2 children in Scope
/*  2779*/      OPC_MoveChild1,
/*  2780*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2783*/      OPC_RecordChild0, // #1 = $op0
/*  2784*/      OPC_MoveChild0,
/*  2785*/      OPC_SwitchOpcode /*4 cases */, 49, TARGET_VAL(ISD::TargetGlobalAddress),// ->2838
/*  2789*/        OPC_MoveParent,
/*  2790*/        OPC_CheckType, MVT::i32,
/*  2792*/        OPC_MoveParent,
/*  2793*/        OPC_EmitMergeInputChains1_0,
/*  2794*/        OPC_Scope, 6, /*->2802*/ // 6 children in Scope
/*  2796*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2802*/        /*Scope*/ 6, /*->2809*/
/*  2803*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2809*/        /*Scope*/ 6, /*->2816*/
/*  2810*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2816*/        /*Scope*/ 6, /*->2823*/
/*  2817*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2823*/        /*Scope*/ 6, /*->2830*/
/*  2824*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2830*/        /*Scope*/ 6, /*->2837*/
/*  2831*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2837*/        0, /*End of Scope*/
/*  2838*/      /*SwitchOpcode*/ 49, TARGET_VAL(ISD::TargetExternalSymbol),// ->2890
/*  2841*/        OPC_MoveParent,
/*  2842*/        OPC_CheckType, MVT::i32,
/*  2844*/        OPC_MoveParent,
/*  2845*/        OPC_EmitMergeInputChains1_0,
/*  2846*/        OPC_Scope, 6, /*->2854*/ // 6 children in Scope
/*  2848*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2854*/        /*Scope*/ 6, /*->2861*/
/*  2855*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2861*/        /*Scope*/ 6, /*->2868*/
/*  2862*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2868*/        /*Scope*/ 6, /*->2875*/
/*  2869*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2875*/        /*Scope*/ 6, /*->2882*/
/*  2876*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2882*/        /*Scope*/ 6, /*->2889*/
/*  2883*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2889*/        0, /*End of Scope*/
/*  2890*/      /*SwitchOpcode*/ 49, TARGET_VAL(ISD::MCSymbol),// ->2942
/*  2893*/        OPC_MoveParent,
/*  2894*/        OPC_CheckType, MVT::i32,
/*  2896*/        OPC_MoveParent,
/*  2897*/        OPC_EmitMergeInputChains1_0,
/*  2898*/        OPC_Scope, 6, /*->2906*/ // 6 children in Scope
/*  2900*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2906*/        /*Scope*/ 6, /*->2913*/
/*  2907*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2913*/        /*Scope*/ 6, /*->2920*/
/*  2914*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2920*/        /*Scope*/ 6, /*->2927*/
/*  2921*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2927*/        /*Scope*/ 6, /*->2934*/
/*  2928*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2934*/        /*Scope*/ 6, /*->2941*/
/*  2935*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2941*/        0, /*End of Scope*/
/*  2942*/      /*SwitchOpcode*/ 49, TARGET_VAL(ISD::TargetBlockAddress),// ->2994
/*  2945*/        OPC_MoveParent,
/*  2946*/        OPC_CheckType, MVT::i32,
/*  2948*/        OPC_MoveParent,
/*  2949*/        OPC_EmitMergeInputChains1_0,
/*  2950*/        OPC_Scope, 6, /*->2958*/ // 6 children in Scope
/*  2952*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2958*/        /*Scope*/ 6, /*->2965*/
/*  2959*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2965*/        /*Scope*/ 6, /*->2972*/
/*  2966*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2972*/        /*Scope*/ 6, /*->2979*/
/*  2973*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2979*/        /*Scope*/ 6, /*->2986*/
/*  2980*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2986*/        /*Scope*/ 6, /*->2993*/
/*  2987*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2993*/        0, /*End of Scope*/
/*  2994*/      0, // EndSwitchOpcode
/*  2995*/    /*Scope*/ 30, /*->3026*/
/*  2996*/      OPC_RecordChild1, // #1 = physreg input rf_xpr_1
/*  2997*/      OPC_MoveChild1,
/*  2998*/      OPC_CheckType, MVT::i32,
/*  3000*/      OPC_Scope, 12, /*->3014*/ // 2 children in Scope
/*  3002*/        OPC_CheckPredicate, 14, // Predicate_NotFI_i32_rf_xpr_1
/*  3004*/        OPC_MoveParent,
/*  3005*/        OPC_EmitMergeInputChains1_0,
/*  3006*/        OPC_EmitCopyToReg, 1,  Codasip::rf_xpr_1,
/*  3009*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ret_alias__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                      0/*#Ops*/, 
                  // Src: (TailCall rf_xpr_1:{ *:[i32] }<<P:Predicate_NotFI_i32_rf_xpr_1>>) - Complexity = 4
                  // Dst: (i_ret_alias__TAILCALL_CLONE_)
/*  3014*/      /*Scope*/ 10, /*->3025*/
/*  3015*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3017*/        OPC_MoveParent,
/*  3018*/        OPC_EmitMergeInputChains1_0,
/*  3019*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                      1/*#Ops*/, 1, 
                  // Src: (TailCall xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0) - Complexity = 4
                  // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_ xpr_general:{ *:[i32] }:$op0)
/*  3025*/      0, /*End of Scope*/
/*  3026*/    0, /*End of Scope*/
/*  3027*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->3051
/*  3030*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  3031*/    OPC_RecordChild1, // #1 = $InSize
/*  3032*/    OPC_MoveChild1,
/*  3033*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3036*/    OPC_MoveParent,
/*  3037*/    OPC_RecordChild2, // #2 = $OutSize
/*  3038*/    OPC_MoveChild2,
/*  3039*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3042*/    OPC_MoveParent,
/*  3043*/    OPC_EmitMergeInputChains1_0,
/*  3044*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3051*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3076
/*  3054*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  3055*/    OPC_CaptureGlueInput,
/*  3056*/    OPC_RecordChild1, // #1 = $InSize
/*  3057*/    OPC_MoveChild1,
/*  3058*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3061*/    OPC_MoveParent,
/*  3062*/    OPC_RecordChild2, // #2 = $OutSize
/*  3063*/    OPC_MoveChild2,
/*  3064*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3067*/    OPC_MoveParent,
/*  3068*/    OPC_EmitMergeInputChains1_0,
/*  3069*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3076*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::ADD),// ->3117
/*  3079*/    OPC_RecordChild0, // #0 = $op1
/*  3080*/    OPC_MoveChild0,
/*  3081*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3083*/    OPC_MoveParent,
/*  3084*/    OPC_RecordChild1, // #1 = $op2
/*  3085*/    OPC_MoveChild1,
/*  3086*/    OPC_Scope, 16, /*->3104*/ // 2 children in Scope
/*  3088*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3091*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3093*/      OPC_MoveParent,
/*  3094*/      OPC_EmitConvertToTarget, 1,
/*  3096*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3104*/    /*Scope*/ 11, /*->3116*/
/*  3105*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3107*/      OPC_MoveParent,
/*  3108*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  3116*/    0, /*End of Scope*/
/*  3117*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3158
/*  3120*/    OPC_RecordChild0, // #0 = $op1
/*  3121*/    OPC_MoveChild0,
/*  3122*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3124*/    OPC_MoveParent,
/*  3125*/    OPC_RecordChild1, // #1 = $op2
/*  3126*/    OPC_MoveChild1,
/*  3127*/    OPC_Scope, 16, /*->3145*/ // 2 children in Scope
/*  3129*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3132*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3134*/      OPC_MoveParent,
/*  3135*/      OPC_EmitConvertToTarget, 1,
/*  3137*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3145*/    /*Scope*/ 11, /*->3157*/
/*  3146*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3148*/      OPC_MoveParent,
/*  3149*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  3157*/    0, /*End of Scope*/
/*  3158*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::OR),// ->3199
/*  3161*/    OPC_RecordChild0, // #0 = $op1
/*  3162*/    OPC_MoveChild0,
/*  3163*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3165*/    OPC_MoveParent,
/*  3166*/    OPC_RecordChild1, // #1 = $op2
/*  3167*/    OPC_MoveChild1,
/*  3168*/    OPC_Scope, 16, /*->3186*/ // 2 children in Scope
/*  3170*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3173*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3175*/      OPC_MoveParent,
/*  3176*/      OPC_EmitConvertToTarget, 1,
/*  3178*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (or:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3186*/    /*Scope*/ 11, /*->3198*/
/*  3187*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3189*/      OPC_MoveParent,
/*  3190*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  3198*/    0, /*End of Scope*/
/*  3199*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->3240
/*  3202*/    OPC_RecordChild0, // #0 = $op1
/*  3203*/    OPC_MoveChild0,
/*  3204*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3206*/    OPC_MoveParent,
/*  3207*/    OPC_RecordChild1, // #1 = $op2
/*  3208*/    OPC_MoveChild1,
/*  3209*/    OPC_Scope, 16, /*->3227*/ // 2 children in Scope
/*  3211*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3214*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3216*/      OPC_MoveParent,
/*  3217*/      OPC_EmitConvertToTarget, 1,
/*  3219*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3227*/    /*Scope*/ 11, /*->3239*/
/*  3228*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3230*/      OPC_MoveParent,
/*  3231*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  3239*/    0, /*End of Scope*/
/*  3240*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::SHL),// ->3281
/*  3243*/    OPC_RecordChild0, // #0 = $op1
/*  3244*/    OPC_MoveChild0,
/*  3245*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3247*/    OPC_MoveParent,
/*  3248*/    OPC_RecordChild1, // #1 = $op2
/*  3249*/    OPC_MoveChild1,
/*  3250*/    OPC_Scope, 16, /*->3268*/ // 2 children in Scope
/*  3252*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3255*/      OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*  3257*/      OPC_MoveParent,
/*  3258*/      OPC_EmitConvertToTarget, 1,
/*  3260*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (shl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                // Dst: (i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3268*/    /*Scope*/ 11, /*->3280*/
/*  3269*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3271*/      OPC_MoveParent,
/*  3272*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:{ *:[i32] } xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op1, xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op2) - Complexity = 5
                // Dst: (i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__:{ *:[i32] } xpr_general:{ *:[i32] }:$op1, xpr_general:{ *:[i32] }:$op2)
/*  3280*/    0, /*End of Scope*/
/*  3281*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->3296
/*  3284*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  3285*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  3288*/    OPC_RecordChild2, // #1 = $op0
/*  3289*/    OPC_EmitMergeInputChains1_0,
/*  3290*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, xpr_general:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations xpr_general:{ *:[i32] }:$op0)
/*  3296*/  /*SwitchOpcode*/ 88, TARGET_VAL(CodasipISD::GAWrap),// ->3387
/*  3299*/    OPC_RecordChild0, // #0 = $op1
/*  3300*/    OPC_MoveChild0,
/*  3301*/    OPC_SwitchOpcode /*6 cases */, 11, TARGET_VAL(ISD::TargetGlobalAddress),// ->3316
/*  3305*/      OPC_MoveParent,
/*  3306*/      OPC_CheckType, MVT::i32,
/*  3308*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:{ *:[i32] }:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1)
/*  3316*/    /*SwitchOpcode*/ 11, TARGET_VAL(ISD::TargetExternalSymbol),// ->3330
/*  3319*/      OPC_MoveParent,
/*  3320*/      OPC_CheckType, MVT::i32,
/*  3322*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:{ *:[i32] }:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1)
/*  3330*/    /*SwitchOpcode*/ 11, TARGET_VAL(ISD::MCSymbol),// ->3344
/*  3333*/      OPC_MoveParent,
/*  3334*/      OPC_CheckType, MVT::i32,
/*  3336*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__MC), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__MC:{ *:[i32] }:{ *:[i32] } (mcsym:{ *:[i32] }):$op1)
/*  3344*/    /*SwitchOpcode*/ 11, TARGET_VAL(ISD::TargetBlockAddress),// ->3358
/*  3347*/      OPC_MoveParent,
/*  3348*/      OPC_CheckType, MVT::i32,
/*  3350*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:{ *:[i32] }:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1)
/*  3358*/    /*SwitchOpcode*/ 11, TARGET_VAL(ISD::TargetJumpTable),// ->3372
/*  3361*/      OPC_MoveParent,
/*  3362*/      OPC_CheckType, MVT::i32,
/*  3364*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:{ *:[i32] }:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1)
/*  3372*/    /*SwitchOpcode*/ 11, TARGET_VAL(ISD::TargetConstantPool),// ->3386
/*  3375*/      OPC_MoveParent,
/*  3376*/      OPC_CheckType, MVT::i32,
/*  3378*/      OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:{ *:[i32] }:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1)
/*  3386*/    0, // EndSwitchOpcode
/*  3387*/  /*SwitchOpcode*/ 40|128,1/*168*/, TARGET_VAL(ISD::Constant),// ->3559
/*  3391*/    OPC_Scope, 88, /*->3481*/ // 3 children in Scope
/*  3393*/      OPC_CheckInteger, 0, 
/*  3395*/      OPC_Scope, 6, /*->3403*/ // 12 children in Scope
/*  3397*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_add__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3403*/      /*Scope*/ 6, /*->3410*/
/*  3404*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_and__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3410*/      /*Scope*/ 6, /*->3417*/
/*  3411*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_or__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3417*/      /*Scope*/ 6, /*->3424*/
/*  3418*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_sll__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3424*/      /*Scope*/ 6, /*->3431*/
/*  3425*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_slt__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3431*/      /*Scope*/ 6, /*->3438*/
/*  3432*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3438*/      /*Scope*/ 6, /*->3445*/
/*  3439*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_sra__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3445*/      /*Scope*/ 6, /*->3452*/
/*  3446*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_srl__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3452*/      /*Scope*/ 6, /*->3459*/
/*  3453*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_sub__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3459*/      /*Scope*/ 6, /*->3466*/
/*  3460*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_rtype_alu__opc_xor__xpr_general__x_0__x_0__:{ *:[i32] })
/*  3466*/      /*Scope*/ 6, /*->3473*/
/*  3467*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3473*/      /*Scope*/ 6, /*->3480*/
/*  3474*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3480*/      0, /*End of Scope*/
/*  3481*/    /*Scope*/ 18, /*->3500*/
/*  3482*/      OPC_CheckInteger, 1, 
/*  3484*/      OPC_Scope, 6, /*->3492*/ // 2 children in Scope
/*  3486*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 5
                  // Dst: (i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3492*/      /*Scope*/ 6, /*->3499*/
/*  3493*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 5
                  // Dst: (i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3499*/      0, /*End of Scope*/
/*  3500*/    /*Scope*/ 57, /*->3558*/
/*  3501*/      OPC_RecordNode, // #0 = $op1
/*  3502*/      OPC_Scope, 30, /*->3534*/ // 3 children in Scope
/*  3504*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3506*/        OPC_EmitConvertToTarget, 0,
/*  3508*/        OPC_Scope, 7, /*->3517*/ // 3 children in Scope
/*  3510*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_addi__xpr_general__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_itype_alu__opc_addi__xpr_general__x_0__simm12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3517*/        /*Scope*/ 7, /*->3525*/
/*  3518*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_ori__xpr_general__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_itype_alu__opc_ori__xpr_general__x_0__simm12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3525*/        /*Scope*/ 7, /*->3533*/
/*  3526*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_itype_alu__opc_xori__xpr_general__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_itype_alu__opc_xori__xpr_general__x_0__simm12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3533*/        0, /*End of Scope*/
/*  3534*/      /*Scope*/ 11, /*->3546*/
/*  3535*/        OPC_CheckPredicate, 15, // Predicate_Trunc12_i32imm
/*  3537*/        OPC_EmitConvertToTarget, 0,
/*  3539*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 4
                  // Dst: (i_utype_ops__opc_lui__xpr_general__uimm20__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3546*/      /*Scope*/ 10, /*->3557*/
/*  3547*/        OPC_EmitConvertToTarget, 0,
/*  3549*/        OPC_MorphNodeTo2, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] }):$op1 - Complexity = 3
                  // Dst: (e_movi32__:{ *:[i32] }:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3557*/      0, /*End of Scope*/
/*  3558*/    0, /*End of Scope*/
/*  3559*/  /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->3577
/*  3562*/    OPC_RecordNode, // #0 = 'brind' chained node
/*  3563*/    OPC_RecordChild1, // #1 = $op0
/*  3564*/    OPC_MoveChild1,
/*  3565*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_xpr_general
/*  3567*/    OPC_CheckType, MVT::i32,
/*  3569*/    OPC_MoveParent,
/*  3570*/    OPC_EmitMergeInputChains1_0,
/*  3571*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind xpr_general:{ *:[i32] }<<P:Predicate_CheckFI_i32_xpr_general>>:$op0) - Complexity = 4
              // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_ xpr_general:{ *:[i32] }:$op0)
/*  3577*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->3588
/*  3580*/    OPC_RecordNode, // #0 = 'Return' chained node
/*  3581*/    OPC_CaptureGlueInput,
/*  3582*/    OPC_EmitMergeInputChains1_0,
/*  3583*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ret_alias__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 3
              // Dst: (i_ret_alias__)
/*  3588*/  /*SwitchOpcode*/ 52, TARGET_VAL(ISD::BR),// ->3643
/*  3591*/    OPC_RecordNode, // #0 = 'br' chained node
/*  3592*/    OPC_RecordChild1, // #1 = $op0
/*  3593*/    OPC_MoveChild1,
/*  3594*/    OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3597*/    OPC_MoveParent,
/*  3598*/    OPC_EmitMergeInputChains1_0,
/*  3599*/    OPC_Scope, 6, /*->3607*/ // 6 children in Scope
/*  3601*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jal_abs_calias__opc_jal__x_0__relative_addr20__ (bb:{ *:[Other] }):$op0)
/*  3607*/    /*Scope*/ 6, /*->3614*/
/*  3608*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jtype_jlink__opc_jal__x_0__relative_addr20__ (bb:{ *:[Other] }):$op0)
/*  3614*/    /*Scope*/ 6, /*->3621*/
/*  3615*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_btype_branches__opc_beq__x_0__x_0__relative_addr12__ (bb:{ *:[Other] }):$op0)
/*  3621*/    /*Scope*/ 6, /*->3628*/
/*  3622*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_btype_branches__opc_bge__x_0__x_0__relative_addr12__ (bb:{ *:[Other] }):$op0)
/*  3628*/    /*Scope*/ 6, /*->3635*/
/*  3629*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__ (bb:{ *:[Other] }):$op0)
/*  3635*/    /*Scope*/ 6, /*->3642*/
/*  3636*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_itype_jlreg__opc_jalr__x_0__simm12__x_0__ (bb:{ *:[Other] }):$op0)
/*  3642*/    0, /*End of Scope*/
/*  3643*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_LONGJMP),// ->3657
/*  3646*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_longjmp' chained node
/*  3647*/    OPC_RecordChild1, // #1 = $op0
/*  3648*/    OPC_CheckChild1Type, MVT::i32,
/*  3650*/    OPC_EmitMergeInputChains1_0,
/*  3651*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SjLj_LongJmp), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_longjmp xpr_general:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SjLj_LongJmp xpr_general:{ *:[i32] }:$op0)
/*  3657*/  /*SwitchOpcode*/ 12, TARGET_VAL(CodasipISD::EH_SJLJ_SETJMP),// ->3672
/*  3660*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setjmp' chained node
/*  3661*/    OPC_RecordChild1, // #1 = $op1
/*  3662*/    OPC_CheckChild1Type, MVT::i32,
/*  3664*/    OPC_EmitMergeInputChains1_0,
/*  3665*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::EH_SjLj_SetJmp), 0|OPFL_Chain,
                  MVT::i32, 1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setjmp:{ *:[i32] } xpr_general:{ *:[i32] }:$op1) - Complexity = 3
              // Dst: (EH_SjLj_SetJmp:{ *:[i32] } xpr_general:{ *:[i32] }:$op1)
/*  3672*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_SETUP_DISPATCH),// ->3686
/*  3675*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setup_dispatch' chained node
/*  3676*/    OPC_RecordChild1, // #1 = $op0
/*  3677*/    OPC_CheckChild1Type, MVT::i32,
/*  3679*/    OPC_EmitMergeInputChains1_0,
/*  3680*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SJLJ_SETUP_DISPATCH), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setup_dispatch xpr_general:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SJLJ_SETUP_DISPATCH xpr_general:{ *:[i32] }:$op0)
/*  3686*/  0, // EndSwitchOpcode
    0
  }; // Total Array size is 3688 bytes

  // Opcode Histogram:
  // #OPC_Scope                                = 68
  // #OPC_RecordNode                           = 16
  // #OPC_RecordChild                          = 118
  // #OPC_RecordMemRef                         = 2
  // #OPC_CaptureGlueInput                     = 4
  // #OPC_MoveChild                            = 126
  // #OPC_MoveParent                           = 186
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 0
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 231
  // #OPC_CheckOpcode                          = 63
  // #OPC_SwitchOpcode                         = 4
  // #OPC_CheckType                            = 43
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 2
  // #OPC_CheckChildInteger                    = 13
  // #OPC_CheckCondCode                        = 0
  // #OPC_CheckChild2CondCode                  = 52
  // #OPC_CheckValueType                       = 0
  // #OPC_CheckComplexPat                      = 0
  // #OPC_CheckAndImm                          = 2
  // #OPC_CheckOrImm                           = 0
  // #OPC_CheckImmAllOnesV                     = 0
  // #OPC_CheckImmAllZerosV                    = 0
  // #OPC_CheckFoldableChainNode               = 0
  // #OPC_EmitInteger                          = 8
  // #OPC_EmitStringInteger                    = 0
  // #OPC_EmitRegister                         = 0
  // #OPC_EmitConvertToTarget                  = 55
  // #OPC_EmitMergeInputChains                 = 91
  // #OPC_EmitCopyToReg                        = 1
  // #OPC_EmitNode                             = 16
  // #OPC_EmitNodeXForm                        = 0
  // #OPC_CompleteMatch                        = 0
  // #OPC_MorphNodeTo                          = 203

  #undef TARGET_VAL
  SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
}
#endif // GET_DAGISEL_BODY

#ifdef GET_DAGISEL_DECL
bool CheckNodePredicate(SDNode *Node, unsigned PredNo) const override;
#endif
#if defined(GET_DAGISEL_BODY) || DAGISEL_INLINE
bool DAGISEL_CLASS_COLONCOLON CheckNodePredicate(SDNode *Node, unsigned PredNo) const
#if DAGISEL_INLINE
  override
#endif
{
  switch (PredNo) {
  default: llvm_unreachable("Invalid predicate in table?");
  case 0: { 
    // Predicate_CheckFI_i32_xpr_general
    SDNode *N = Node;
    (void)N;
return CheckFI(N, Codasip::xpr_generalRegClassID);
  }
  case 1: { 
    // Predicate_sext12To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,12,1,0);
  }
  case 2: { 
    // Predicate_unindexedstore
    SDNode *N = Node;
    (void)N;
if (cast<StoreSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 3: { 
    // Predicate_store
    SDNode *N = Node;
    (void)N;
 if (cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 4: { 
    // Predicate_store_a1_s0
    // Predicate_truncstorei8_a1_s0
    // Predicate_truncstorei16_a1_s0
    // Predicate_sextloadi8_a1_s0
    // Predicate_zextloadi8_a1_s0
    // Predicate_sextloadi16_a1_s0
    // Predicate_zextloadi16_a1_s0
    // Predicate_load_a1_s0
    // Predicate_extloadi8_a1_s0
    // Predicate_extloadi16_a1_s0
    SDNode *N = Node;
    (void)N;
return CheckLoadStore(cast<MemSDNode>(N),1,0);
  }
  case 5: { 
    // Predicate_truncstore
    SDNode *N = Node;
    (void)N;
 if (!cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 6: { 
    // Predicate_truncstorei8
    // Predicate_sextloadi8
    // Predicate_zextloadi8
    // Predicate_extloadi8
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i8) return false;
return true;

  }
  case 7: { 
    // Predicate_truncstorei16
    // Predicate_sextloadi16
    // Predicate_zextloadi16
    // Predicate_extloadi16
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i16) return false;
return true;

  }
  case 8: { 
    // Predicate_zext5To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,5,0,0);
  }
  case 9: { 
    // Predicate_unindexedload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 10: { 
    // Predicate_sextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::SEXTLOAD) return false;
return true;

  }
  case 11: { 
    // Predicate_zextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::ZEXTLOAD) return false;
return true;

  }
  case 12: { 
    // Predicate_load
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::NON_EXTLOAD) return false;
return true;

  }
  case 13: { 
    // Predicate_extload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::EXTLOAD) return false;
return true;

  }
  case 14: { 
    // Predicate_NotFI_i32_rf_xpr_1
    SDNode *N = Node;
    (void)N;
return !FrameIndexSDNode::classof(N);
  }
  case 15: { 
    // Predicate_Trunc12_i32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,32,0,12);
  }
  }
}
#endif // GET_DAGISEL_BODY


#ifdef DAGISEL_INLINE
#undef DAGISEL_INLINE
#endif
#ifdef DAGISEL_CLASS_COLONCOLON
#undef DAGISEL_CLASS_COLONCOLON
#endif
#ifdef GET_DAGISEL_DECL
#undef GET_DAGISEL_DECL
#endif
#ifdef GET_DAGISEL_BODY
#undef GET_DAGISEL_BODY
#endif
