/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Target Register Enum Values                                                *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_REGINFO_ENUM
#undef GET_REGINFO_ENUM

namespace llvm {

class MCRegisterClass;
extern const MCRegisterClass CodasipMCRegisterClasses[];

namespace  Codasip {
enum {
  NoRegister,
  rf_xpr_0 = 1,
  rf_xpr_1 = 2,
  rf_xpr_2 = 3,
  rf_xpr_3 = 4,
  rf_xpr_4 = 5,
  rf_xpr_5 = 6,
  rf_xpr_6 = 7,
  rf_xpr_7 = 8,
  rf_xpr_8 = 9,
  rf_xpr_9 = 10,
  rf_xpr_10 = 11,
  rf_xpr_11 = 12,
  rf_xpr_12 = 13,
  rf_xpr_13 = 14,
  rf_xpr_14 = 15,
  rf_xpr_15 = 16,
  rf_xpr_16 = 17,
  rf_xpr_17 = 18,
  rf_xpr_18 = 19,
  rf_xpr_19 = 20,
  rf_xpr_20 = 21,
  rf_xpr_21 = 22,
  rf_xpr_22 = 23,
  rf_xpr_23 = 24,
  rf_xpr_24 = 25,
  rf_xpr_25 = 26,
  rf_xpr_26 = 27,
  rf_xpr_27 = 28,
  rf_xpr_28 = 29,
  rf_xpr_29 = 30,
  rf_xpr_30 = 31,
  rf_xpr_31 = 32,
  NUM_TARGET_REGS 	// 33
};
} // end namespace  Codasip

// Register classes

namespace  Codasip {
enum {
  rf_xprRegClassID = 0,
  xpr_generalRegClassID = 1,

  };
} // end namespace  Codasip


// Register alternate name indices

namespace  Codasip {
enum {
  NoRegAltName,	// 0
  xpr_general_AltNameIndex,	// 1
  NUM_TARGET_REG_ALT_NAMES = 2
};
} // end namespace  Codasip

} // end namespace llvm

#endif // GET_REGINFO_ENUM

/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* MC Register Information                                                    *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_REGINFO_MC_DESC
#undef GET_REGINFO_MC_DESC

namespace llvm {

extern const MCPhysReg CodasipRegDiffLists[] = {
  /* 0 */ 65535, 0,
};

extern const LaneBitmask CodasipLaneMaskLists[] = {
  /* 0 */ LaneBitmask(0x00000000), LaneBitmask::getAll(),
};

extern const uint16_t CodasipSubRegIdxLists[] = {
  /* 0 */ 0,
};

extern const MCRegisterInfo::SubRegCoveredBits CodasipSubRegIdxRanges[] = {
  { 65535, 65535 },
};

extern const char CodasipRegStrings[] = {
  /* 0 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '0', 0,
  /* 10 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '0', 0,
  /* 20 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '3', '0', 0,
  /* 30 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '0', 0,
  /* 39 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '1', 0,
  /* 49 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '1', 0,
  /* 59 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '3', '1', 0,
  /* 69 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', 0,
  /* 78 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '2', 0,
  /* 88 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '2', 0,
  /* 98 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', 0,
  /* 107 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '3', 0,
  /* 117 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '3', 0,
  /* 127 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '3', 0,
  /* 136 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '4', 0,
  /* 146 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '4', 0,
  /* 156 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '4', 0,
  /* 165 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '5', 0,
  /* 175 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '5', 0,
  /* 185 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '5', 0,
  /* 194 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '6', 0,
  /* 204 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '6', 0,
  /* 214 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '6', 0,
  /* 223 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '7', 0,
  /* 233 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '7', 0,
  /* 243 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '7', 0,
  /* 252 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '8', 0,
  /* 262 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '8', 0,
  /* 272 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '8', 0,
  /* 281 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '1', '9', 0,
  /* 291 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '2', '9', 0,
  /* 301 */ 'r', 'f', '_', 'x', 'p', 'r', '_', '9', 0,
};

extern const MCRegisterDesc CodasipRegDesc[] = { // Descriptors
  { 9, 0, 0, 0, 0, 0 },
  { 30, 1, 1, 0, 1, 0 },
  { 69, 1, 1, 0, 1, 0 },
  { 98, 1, 1, 0, 1, 0 },
  { 127, 1, 1, 0, 1, 0 },
  { 156, 1, 1, 0, 1, 0 },
  { 185, 1, 1, 0, 1, 0 },
  { 214, 1, 1, 0, 1, 0 },
  { 243, 1, 1, 0, 1, 0 },
  { 272, 1, 1, 0, 1, 0 },
  { 301, 1, 1, 0, 1, 0 },
  { 0, 1, 1, 0, 1, 0 },
  { 39, 1, 1, 0, 1, 0 },
  { 78, 1, 1, 0, 1, 0 },
  { 107, 1, 1, 0, 1, 0 },
  { 136, 1, 1, 0, 1, 0 },
  { 165, 1, 1, 0, 1, 0 },
  { 194, 1, 1, 0, 1, 0 },
  { 223, 1, 1, 0, 1, 0 },
  { 252, 1, 1, 0, 1, 0 },
  { 281, 1, 1, 0, 1, 0 },
  { 10, 1, 1, 0, 1, 0 },
  { 49, 1, 1, 0, 1, 0 },
  { 88, 1, 1, 0, 1, 0 },
  { 117, 1, 1, 0, 1, 0 },
  { 146, 1, 1, 0, 1, 0 },
  { 175, 1, 1, 0, 1, 0 },
  { 204, 1, 1, 0, 1, 0 },
  { 233, 1, 1, 0, 1, 0 },
  { 262, 1, 1, 0, 1, 0 },
  { 291, 1, 1, 0, 1, 0 },
  { 20, 1, 1, 0, 1, 0 },
  { 59, 1, 1, 0, 1, 0 },
};

extern const MCPhysReg CodasipRegUnitRoots[][2] = {
  {  Codasip::rf_xpr_0 },
  {  Codasip::rf_xpr_1 },
  {  Codasip::rf_xpr_2 },
  {  Codasip::rf_xpr_3 },
  {  Codasip::rf_xpr_4 },
  {  Codasip::rf_xpr_5 },
  {  Codasip::rf_xpr_6 },
  {  Codasip::rf_xpr_7 },
  {  Codasip::rf_xpr_8 },
  {  Codasip::rf_xpr_9 },
  {  Codasip::rf_xpr_10 },
  {  Codasip::rf_xpr_11 },
  {  Codasip::rf_xpr_12 },
  {  Codasip::rf_xpr_13 },
  {  Codasip::rf_xpr_14 },
  {  Codasip::rf_xpr_15 },
  {  Codasip::rf_xpr_16 },
  {  Codasip::rf_xpr_17 },
  {  Codasip::rf_xpr_18 },
  {  Codasip::rf_xpr_19 },
  {  Codasip::rf_xpr_20 },
  {  Codasip::rf_xpr_21 },
  {  Codasip::rf_xpr_22 },
  {  Codasip::rf_xpr_23 },
  {  Codasip::rf_xpr_24 },
  {  Codasip::rf_xpr_25 },
  {  Codasip::rf_xpr_26 },
  {  Codasip::rf_xpr_27 },
  {  Codasip::rf_xpr_28 },
  {  Codasip::rf_xpr_29 },
  {  Codasip::rf_xpr_30 },
  {  Codasip::rf_xpr_31 },
};

namespace {     // Register classes...
  // rf_xpr Register Class...
  const MCPhysReg rf_xpr[] = {
     Codasip::rf_xpr_0,  Codasip::rf_xpr_1,  Codasip::rf_xpr_2,  Codasip::rf_xpr_3,  Codasip::rf_xpr_4,  Codasip::rf_xpr_5,  Codasip::rf_xpr_6,  Codasip::rf_xpr_7,  Codasip::rf_xpr_8,  Codasip::rf_xpr_9,  Codasip::rf_xpr_10,  Codasip::rf_xpr_11,  Codasip::rf_xpr_12,  Codasip::rf_xpr_13,  Codasip::rf_xpr_14,  Codasip::rf_xpr_15,  Codasip::rf_xpr_16,  Codasip::rf_xpr_17,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_28,  Codasip::rf_xpr_29,  Codasip::rf_xpr_30,  Codasip::rf_xpr_31, 
  };

  // rf_xpr Bit set.
  const uint8_t rf_xprBits[] = {
    0xfe, 0xff, 0xff, 0xff, 0x01, 
  };

  // xpr_general Register Class...
  const MCPhysReg xpr_general[] = {
     Codasip::rf_xpr_1,  Codasip::rf_xpr_2,  Codasip::rf_xpr_3,  Codasip::rf_xpr_4,  Codasip::rf_xpr_5,  Codasip::rf_xpr_6,  Codasip::rf_xpr_7,  Codasip::rf_xpr_8,  Codasip::rf_xpr_9,  Codasip::rf_xpr_10,  Codasip::rf_xpr_11,  Codasip::rf_xpr_12,  Codasip::rf_xpr_13,  Codasip::rf_xpr_14,  Codasip::rf_xpr_15,  Codasip::rf_xpr_16,  Codasip::rf_xpr_17,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_28,  Codasip::rf_xpr_29,  Codasip::rf_xpr_30,  Codasip::rf_xpr_31, 
  };

  // xpr_general Bit set.
  const uint8_t xpr_generalBits[] = {
    0xfc, 0xff, 0xff, 0xff, 0x01, 
  };

} // end anonymous namespace

extern const char CodasipRegClassStrings[] = {
  /* 0 */ 'x', 'p', 'r', '_', 'g', 'e', 'n', 'e', 'r', 'a', 'l', 0,
  /* 12 */ 'r', 'f', '_', 'x', 'p', 'r', 0,
};

extern const MCRegisterClass CodasipMCRegisterClasses[] = {
  { rf_xpr, rf_xprBits, 12, 32, sizeof(rf_xprBits), Codasip::rf_xprRegClassID, 1, false },
  { xpr_general, xpr_generalBits, 0, 31, sizeof(xpr_generalBits), Codasip::xpr_generalRegClassID, 1, true },
};

//  Codasip Dwarf<->LLVM register mappings.
extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipDwarfFlavour0Dwarf2L[] = {
  { 0U,  Codasip::rf_xpr_0 },
  { 1U,  Codasip::rf_xpr_1 },
  { 2U,  Codasip::rf_xpr_2 },
  { 3U,  Codasip::rf_xpr_3 },
  { 4U,  Codasip::rf_xpr_4 },
  { 5U,  Codasip::rf_xpr_5 },
  { 6U,  Codasip::rf_xpr_6 },
  { 7U,  Codasip::rf_xpr_7 },
  { 8U,  Codasip::rf_xpr_8 },
  { 9U,  Codasip::rf_xpr_9 },
  { 10U,  Codasip::rf_xpr_10 },
  { 11U,  Codasip::rf_xpr_11 },
  { 12U,  Codasip::rf_xpr_12 },
  { 13U,  Codasip::rf_xpr_13 },
  { 14U,  Codasip::rf_xpr_14 },
  { 15U,  Codasip::rf_xpr_15 },
  { 16U,  Codasip::rf_xpr_16 },
  { 17U,  Codasip::rf_xpr_17 },
  { 18U,  Codasip::rf_xpr_18 },
  { 19U,  Codasip::rf_xpr_19 },
  { 20U,  Codasip::rf_xpr_20 },
  { 21U,  Codasip::rf_xpr_21 },
  { 22U,  Codasip::rf_xpr_22 },
  { 23U,  Codasip::rf_xpr_23 },
  { 24U,  Codasip::rf_xpr_24 },
  { 25U,  Codasip::rf_xpr_25 },
  { 26U,  Codasip::rf_xpr_26 },
  { 27U,  Codasip::rf_xpr_27 },
  { 28U,  Codasip::rf_xpr_28 },
  { 29U,  Codasip::rf_xpr_29 },
  { 30U,  Codasip::rf_xpr_30 },
  { 31U,  Codasip::rf_xpr_31 },
};
extern const unsigned  CodasipDwarfFlavour0Dwarf2LSize = array_lengthof( CodasipDwarfFlavour0Dwarf2L);

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipEHFlavour0Dwarf2L[] = {
  { 0U,  Codasip::rf_xpr_0 },
  { 1U,  Codasip::rf_xpr_1 },
  { 2U,  Codasip::rf_xpr_2 },
  { 3U,  Codasip::rf_xpr_3 },
  { 4U,  Codasip::rf_xpr_4 },
  { 5U,  Codasip::rf_xpr_5 },
  { 6U,  Codasip::rf_xpr_6 },
  { 7U,  Codasip::rf_xpr_7 },
  { 8U,  Codasip::rf_xpr_8 },
  { 9U,  Codasip::rf_xpr_9 },
  { 10U,  Codasip::rf_xpr_10 },
  { 11U,  Codasip::rf_xpr_11 },
  { 12U,  Codasip::rf_xpr_12 },
  { 13U,  Codasip::rf_xpr_13 },
  { 14U,  Codasip::rf_xpr_14 },
  { 15U,  Codasip::rf_xpr_15 },
  { 16U,  Codasip::rf_xpr_16 },
  { 17U,  Codasip::rf_xpr_17 },
  { 18U,  Codasip::rf_xpr_18 },
  { 19U,  Codasip::rf_xpr_19 },
  { 20U,  Codasip::rf_xpr_20 },
  { 21U,  Codasip::rf_xpr_21 },
  { 22U,  Codasip::rf_xpr_22 },
  { 23U,  Codasip::rf_xpr_23 },
  { 24U,  Codasip::rf_xpr_24 },
  { 25U,  Codasip::rf_xpr_25 },
  { 26U,  Codasip::rf_xpr_26 },
  { 27U,  Codasip::rf_xpr_27 },
  { 28U,  Codasip::rf_xpr_28 },
  { 29U,  Codasip::rf_xpr_29 },
  { 30U,  Codasip::rf_xpr_30 },
  { 31U,  Codasip::rf_xpr_31 },
};
extern const unsigned  CodasipEHFlavour0Dwarf2LSize = array_lengthof( CodasipEHFlavour0Dwarf2L);

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipDwarfFlavour0L2Dwarf[] = {
  {  Codasip::rf_xpr_0, 0U },
  {  Codasip::rf_xpr_1, 1U },
  {  Codasip::rf_xpr_2, 2U },
  {  Codasip::rf_xpr_3, 3U },
  {  Codasip::rf_xpr_4, 4U },
  {  Codasip::rf_xpr_5, 5U },
  {  Codasip::rf_xpr_6, 6U },
  {  Codasip::rf_xpr_7, 7U },
  {  Codasip::rf_xpr_8, 8U },
  {  Codasip::rf_xpr_9, 9U },
  {  Codasip::rf_xpr_10, 10U },
  {  Codasip::rf_xpr_11, 11U },
  {  Codasip::rf_xpr_12, 12U },
  {  Codasip::rf_xpr_13, 13U },
  {  Codasip::rf_xpr_14, 14U },
  {  Codasip::rf_xpr_15, 15U },
  {  Codasip::rf_xpr_16, 16U },
  {  Codasip::rf_xpr_17, 17U },
  {  Codasip::rf_xpr_18, 18U },
  {  Codasip::rf_xpr_19, 19U },
  {  Codasip::rf_xpr_20, 20U },
  {  Codasip::rf_xpr_21, 21U },
  {  Codasip::rf_xpr_22, 22U },
  {  Codasip::rf_xpr_23, 23U },
  {  Codasip::rf_xpr_24, 24U },
  {  Codasip::rf_xpr_25, 25U },
  {  Codasip::rf_xpr_26, 26U },
  {  Codasip::rf_xpr_27, 27U },
  {  Codasip::rf_xpr_28, 28U },
  {  Codasip::rf_xpr_29, 29U },
  {  Codasip::rf_xpr_30, 30U },
  {  Codasip::rf_xpr_31, 31U },
};
extern const unsigned  CodasipDwarfFlavour0L2DwarfSize = array_lengthof( CodasipDwarfFlavour0L2Dwarf);

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipEHFlavour0L2Dwarf[] = {
  {  Codasip::rf_xpr_0, 0U },
  {  Codasip::rf_xpr_1, 1U },
  {  Codasip::rf_xpr_2, 2U },
  {  Codasip::rf_xpr_3, 3U },
  {  Codasip::rf_xpr_4, 4U },
  {  Codasip::rf_xpr_5, 5U },
  {  Codasip::rf_xpr_6, 6U },
  {  Codasip::rf_xpr_7, 7U },
  {  Codasip::rf_xpr_8, 8U },
  {  Codasip::rf_xpr_9, 9U },
  {  Codasip::rf_xpr_10, 10U },
  {  Codasip::rf_xpr_11, 11U },
  {  Codasip::rf_xpr_12, 12U },
  {  Codasip::rf_xpr_13, 13U },
  {  Codasip::rf_xpr_14, 14U },
  {  Codasip::rf_xpr_15, 15U },
  {  Codasip::rf_xpr_16, 16U },
  {  Codasip::rf_xpr_17, 17U },
  {  Codasip::rf_xpr_18, 18U },
  {  Codasip::rf_xpr_19, 19U },
  {  Codasip::rf_xpr_20, 20U },
  {  Codasip::rf_xpr_21, 21U },
  {  Codasip::rf_xpr_22, 22U },
  {  Codasip::rf_xpr_23, 23U },
  {  Codasip::rf_xpr_24, 24U },
  {  Codasip::rf_xpr_25, 25U },
  {  Codasip::rf_xpr_26, 26U },
  {  Codasip::rf_xpr_27, 27U },
  {  Codasip::rf_xpr_28, 28U },
  {  Codasip::rf_xpr_29, 29U },
  {  Codasip::rf_xpr_30, 30U },
  {  Codasip::rf_xpr_31, 31U },
};
extern const unsigned  CodasipEHFlavour0L2DwarfSize = array_lengthof( CodasipEHFlavour0L2Dwarf);

extern const uint16_t CodasipRegEncodingTable[] = {
  0,
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30,
  31,
};
static inline void InitCodasipMCRegisterInfo(MCRegisterInfo *RI, unsigned RA, unsigned DwarfFlavour = 0, unsigned EHFlavour = 0, unsigned PC = 0) {
  RI->InitMCRegisterInfo(CodasipRegDesc, 33, RA, PC, CodasipMCRegisterClasses, 2, CodasipRegUnitRoots, 32, CodasipRegDiffLists, CodasipLaneMaskLists, CodasipRegStrings, CodasipRegClassStrings, CodasipSubRegIdxLists, 1,
CodasipSubRegIdxRanges, CodasipRegEncodingTable);

  switch (DwarfFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    RI->mapDwarfRegsToLLVMRegs( CodasipDwarfFlavour0Dwarf2L,  CodasipDwarfFlavour0Dwarf2LSize, false);
    break;
  }
  switch (EHFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    RI->mapDwarfRegsToLLVMRegs( CodasipEHFlavour0Dwarf2L,  CodasipEHFlavour0Dwarf2LSize, true);
    break;
  }
  switch (DwarfFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    RI->mapLLVMRegsToDwarfRegs( CodasipDwarfFlavour0L2Dwarf,  CodasipDwarfFlavour0L2DwarfSize, false);
    break;
  }
  switch (EHFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    RI->mapLLVMRegsToDwarfRegs( CodasipEHFlavour0L2Dwarf,  CodasipEHFlavour0L2DwarfSize, true);
    break;
  }
}

} // end namespace llvm

#endif // GET_REGINFO_MC_DESC

/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Register Information Header Fragment                                       *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_REGINFO_HEADER
#undef GET_REGINFO_HEADER

#include "llvm/CodeGen/TargetRegisterInfo.h"

namespace llvm {

class CodasipFrameLowering;

struct CodasipGenRegisterInfo : public TargetRegisterInfo {
  explicit CodasipGenRegisterInfo(unsigned RA, unsigned D = 0, unsigned E = 0,
      unsigned PC = 0, unsigned HwMode = 0);
  const RegClassWeight &getRegClassWeight(const TargetRegisterClass *RC) const override;
  unsigned getRegUnitWeight(unsigned RegUnit) const override;
  unsigned getNumRegPressureSets() const override;
  const char *getRegPressureSetName(unsigned Idx) const override;
  unsigned getRegPressureSetLimit(const MachineFunction &MF, unsigned Idx) const override;
  const int *getRegClassPressureSets(const TargetRegisterClass *RC) const override;
  const int *getRegUnitPressureSets(unsigned RegUnit) const override;
  ArrayRef<const char *> getRegMaskNames() const override;
  ArrayRef<const uint32_t *> getRegMasks() const override;
  /// Devirtualized TargetFrameLowering.
  static const CodasipFrameLowering *getFrameLowering(
      const MachineFunction &MF);
};

namespace Codasip { // Register classes
  extern const TargetRegisterClass rf_xprRegClass;
  extern const TargetRegisterClass xpr_generalRegClass;
} // end namespace Codasip

} // end namespace llvm

#endif // GET_REGINFO_HEADER

/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Target Register and Register Classes Information                           *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_REGINFO_TARGET_DESC
#undef GET_REGINFO_TARGET_DESC

namespace llvm {

extern const MCRegisterClass CodasipMCRegisterClasses[];

static const MVT::SimpleValueType VTLists[] = {
  /* 0 */ MVT::i32, MVT::Other,
};

static const char *const SubRegIndexNameTable[] = { "" };


static const LaneBitmask SubRegIndexLaneMaskTable[] = {
  LaneBitmask::getAll(),
 };



static const TargetRegisterInfo::RegClassInfo RegClassInfos[] = {
  // Mode = 0 (Default)
  { 32, 32, 32, VTLists+0 },    // rf_xpr
  { 32, 32, 32, VTLists+0 },    // xpr_general
};

static const TargetRegisterClass *const NullRegClasses[] = { nullptr };

static const uint32_t rf_xprSubClassMask[] = {
  0x00000003, 
};

static const uint32_t xpr_generalSubClassMask[] = {
  0x00000002, 
};

static const uint16_t SuperRegIdxSeqs[] = {
  /* 0 */ 0,
};

static const TargetRegisterClass *const xpr_generalSuperclasses[] = {
  &Codasip::rf_xprRegClass,
  nullptr
};


static inline unsigned xpr_generalAltOrderSelect(const MachineFunction &MF) { if(true) return 1; else  return 0;}

static ArrayRef<MCPhysReg> xpr_generalGetRawAllocationOrder(const MachineFunction &MF) {
  static const MCPhysReg AltOrder1[] = {  Codasip::rf_xpr_8,  Codasip::rf_xpr_9,  Codasip::rf_xpr_15,  Codasip::rf_xpr_14,  Codasip::rf_xpr_13,  Codasip::rf_xpr_12,  Codasip::rf_xpr_11,  Codasip::rf_xpr_10,  Codasip::rf_xpr_1,  Codasip::rf_xpr_3,  Codasip::rf_xpr_4,  Codasip::rf_xpr_5,  Codasip::rf_xpr_6,  Codasip::rf_xpr_7,  Codasip::rf_xpr_16,  Codasip::rf_xpr_17,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_29 };
  const MCRegisterClass &MCR = CodasipMCRegisterClasses[Codasip::xpr_generalRegClassID];
  const ArrayRef<MCPhysReg> Order[] = {
    makeArrayRef(MCR.begin(), MCR.getNumRegs()),
    makeArrayRef(AltOrder1),
    ArrayRef<MCPhysReg>()
  };
  const unsigned Select = xpr_generalAltOrderSelect(MF);
  assert(Select < 3);
  return Order[Select];
}

namespace Codasip {   // Register class instances
  extern const TargetRegisterClass rf_xprRegClass = {
    &CodasipMCRegisterClasses[rf_xprRegClassID],
    rf_xprSubClassMask,
    SuperRegIdxSeqs + 0,
    LaneBitmask(0x00000001),
    0,
    false, /* HasDisjunctSubRegs */
    false, /* CoveredBySubRegs */
    NullRegClasses,
    nullptr
  };

  extern const TargetRegisterClass xpr_generalRegClass = {
    &CodasipMCRegisterClasses[xpr_generalRegClassID],
    xpr_generalSubClassMask,
    SuperRegIdxSeqs + 0,
    LaneBitmask(0x00000001),
    0,
    false, /* HasDisjunctSubRegs */
    false, /* CoveredBySubRegs */
    xpr_generalSuperclasses,
    xpr_generalGetRawAllocationOrder
  };

} // end namespace Codasip

namespace {
  const TargetRegisterClass* const RegisterClasses[] = {
    &Codasip::rf_xprRegClass,
    &Codasip::xpr_generalRegClass,
  };
} // end anonymous namespace

static const TargetRegisterInfoDesc CodasipRegInfoDesc[] = { // Extra Descriptors
  { 0, false },
  { 0, false },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
  { 0, true },
};
/// Get the weight in units of pressure for this register class.
const RegClassWeight &CodasipGenRegisterInfo::
getRegClassWeight(const TargetRegisterClass *RC) const {
  static const RegClassWeight RCWeightTable[] = {
    {0, 31},  	// rf_xpr
    {1, 31},  	// xpr_general
  };
  return RCWeightTable[RC->getID()];
}

/// Get the weight in units of pressure for this register unit.
unsigned CodasipGenRegisterInfo::
getRegUnitWeight(unsigned RegUnit) const {
  assert(RegUnit < 32 && "invalid register unit");
  // All register units have unit weight.
  return 1;
}


// Get the number of dimensions of register pressure.
unsigned CodasipGenRegisterInfo::getNumRegPressureSets() const {
  return 1;
}

// Get the name of this register unit pressure set.
const char *CodasipGenRegisterInfo::
getRegPressureSetName(unsigned Idx) const {
  static const char *const PressureNameTable[] = {
    "xpr_general",
  };
  return PressureNameTable[Idx];
}

// Get the register unit pressure limit for this dimension.
// This limit must be adjusted dynamically for reserved registers.
unsigned CodasipGenRegisterInfo::
getRegPressureSetLimit(const MachineFunction &MF, unsigned Idx) const {
  static const uint8_t PressureLimitTable[] = {
    31,  	// 0: xpr_general
  };
  return PressureLimitTable[Idx];
}

/// Table of pressure sets per register class or unit.
static const int RCSetsTable[] = {
  /* 0 */ 0, -1,
};

/// Get the dimensions of register pressure impacted by this register class.
/// Returns a -1 terminated array of pressure set IDs
const int* CodasipGenRegisterInfo::
getRegClassPressureSets(const TargetRegisterClass *RC) const {
  static const uint8_t RCSetStartTable[] = {
    1,0,};
  return &RCSetsTable[RCSetStartTable[RC->getID()]];
}

/// Get the dimensions of register pressure impacted by this register unit.
/// Returns a -1 terminated array of pressure set IDs
const int* CodasipGenRegisterInfo::
getRegUnitPressureSets(unsigned RegUnit) const {
  assert(RegUnit < 32 && "invalid register unit");
  static const uint8_t RUSetStartTable[] = {
    1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,};
  return &RCSetsTable[RUSetStartTable[RegUnit]];
}

extern const MCRegisterDesc CodasipRegDesc[];
extern const MCPhysReg CodasipRegDiffLists[];
extern const LaneBitmask CodasipLaneMaskLists[];
extern const char CodasipRegStrings[];
extern const char CodasipRegClassStrings[];
extern const MCPhysReg CodasipRegUnitRoots[][2];
extern const uint16_t CodasipSubRegIdxLists[];
extern const MCRegisterInfo::SubRegCoveredBits CodasipSubRegIdxRanges[];
extern const uint16_t CodasipRegEncodingTable[];
//  Codasip Dwarf<->LLVM register mappings.
extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipDwarfFlavour0Dwarf2L[];
extern const unsigned  CodasipDwarfFlavour0Dwarf2LSize;

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipEHFlavour0Dwarf2L[];
extern const unsigned  CodasipEHFlavour0Dwarf2LSize;

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipDwarfFlavour0L2Dwarf[];
extern const unsigned  CodasipDwarfFlavour0L2DwarfSize;

extern const MCRegisterInfo::DwarfLLVMRegPair  CodasipEHFlavour0L2Dwarf[];
extern const unsigned  CodasipEHFlavour0L2DwarfSize;

CodasipGenRegisterInfo::
CodasipGenRegisterInfo(unsigned RA, unsigned DwarfFlavour, unsigned EHFlavour,
      unsigned PC, unsigned HwMode)
  : TargetRegisterInfo(CodasipRegInfoDesc, RegisterClasses, RegisterClasses+2,
             SubRegIndexNameTable, SubRegIndexLaneMaskTable,
             LaneBitmask(0xFFFFFFFF), RegClassInfos, HwMode) {
  InitMCRegisterInfo(CodasipRegDesc, 33, RA, PC,
                     CodasipMCRegisterClasses, 2,
                     CodasipRegUnitRoots,
                     32,
                     CodasipRegDiffLists,
                     CodasipLaneMaskLists,
                     CodasipRegStrings,
                     CodasipRegClassStrings,
                     CodasipSubRegIdxLists,
                     1,
                     CodasipSubRegIdxRanges,
                     CodasipRegEncodingTable);

  switch (DwarfFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    mapDwarfRegsToLLVMRegs( CodasipDwarfFlavour0Dwarf2L,  CodasipDwarfFlavour0Dwarf2LSize, false);
    break;
  }
  switch (EHFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    mapDwarfRegsToLLVMRegs( CodasipEHFlavour0Dwarf2L,  CodasipEHFlavour0Dwarf2LSize, true);
    break;
  }
  switch (DwarfFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    mapLLVMRegsToDwarfRegs( CodasipDwarfFlavour0L2Dwarf,  CodasipDwarfFlavour0L2DwarfSize, false);
    break;
  }
  switch (EHFlavour) {
  default:
    llvm_unreachable("Unknown DWARF flavour");
  case 0:
    mapLLVMRegsToDwarfRegs( CodasipEHFlavour0L2Dwarf,  CodasipEHFlavour0L2DwarfSize, true);
    break;
  }
}

static const MCPhysReg CSR_All_Codasip_SaveList[] = {  Codasip::rf_xpr_1,  Codasip::rf_xpr_3,  Codasip::rf_xpr_4,  Codasip::rf_xpr_5,  Codasip::rf_xpr_6,  Codasip::rf_xpr_7,  Codasip::rf_xpr_8,  Codasip::rf_xpr_9,  Codasip::rf_xpr_10,  Codasip::rf_xpr_11,  Codasip::rf_xpr_12,  Codasip::rf_xpr_13,  Codasip::rf_xpr_14,  Codasip::rf_xpr_15,  Codasip::rf_xpr_16,  Codasip::rf_xpr_17,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_28,  Codasip::rf_xpr_29,  Codasip::rf_xpr_30,  Codasip::rf_xpr_31, 0 };
static const uint32_t CSR_All_Codasip_RegMask[] = { 0xfffffff4, 0x00000001, };
static const MCPhysReg CSR_Codasip_SaveList[] = {  Codasip::rf_xpr_1,  Codasip::rf_xpr_9,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_8, 0 };
static const uint32_t CSR_Codasip_RegMask[] = { 0x1ff80604, 0x00000000, };
static const MCPhysReg CSR_NoRar_Codasip_SaveList[] = {  Codasip::rf_xpr_9,  Codasip::rf_xpr_18,  Codasip::rf_xpr_19,  Codasip::rf_xpr_20,  Codasip::rf_xpr_21,  Codasip::rf_xpr_22,  Codasip::rf_xpr_23,  Codasip::rf_xpr_24,  Codasip::rf_xpr_25,  Codasip::rf_xpr_26,  Codasip::rf_xpr_27,  Codasip::rf_xpr_8, 0 };
static const uint32_t CSR_NoRar_Codasip_RegMask[] = { 0x1ff80600, 0x00000000, };
static const MCPhysReg CSR_NoRegs_SaveList[] = { 0 };
static const uint32_t CSR_NoRegs_RegMask[] = { 0x00000000, 0x00000000, };


ArrayRef<const uint32_t *> CodasipGenRegisterInfo::getRegMasks() const {
  static const uint32_t *const Masks[] = {
    CSR_All_Codasip_RegMask,
    CSR_Codasip_RegMask,
    CSR_NoRar_Codasip_RegMask,
    CSR_NoRegs_RegMask,
  };
  return makeArrayRef(Masks);
}

ArrayRef<const char *> CodasipGenRegisterInfo::getRegMaskNames() const {
  static const char *const Names[] = {
    "CSR_All_Codasip",
    "CSR_Codasip",
    "CSR_NoRar_Codasip",
    "CSR_NoRegs",
  };
  return makeArrayRef(Names);
}

const CodasipFrameLowering *
CodasipGenRegisterInfo::getFrameLowering(const MachineFunction &MF) {
  return static_cast<const CodasipFrameLowering *>(
      MF.getSubtarget().getFrameLowering());
}

} // end namespace llvm

#endif // GET_REGINFO_TARGET_DESC

