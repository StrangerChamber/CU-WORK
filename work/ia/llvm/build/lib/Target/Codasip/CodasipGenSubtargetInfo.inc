/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Subtarget Enumeration Source Fragment                                      *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_SUBTARGETINFO_ENUM
#undef GET_SUBTARGETINFO_ENUM

namespace llvm {
namespace Codasip {
enum {
  FeatureRelax = 0,
  FeatureStdExtC = 1,
  NumSubtargetFeatures = 2
};
} // end namespace Codasip
} // end namespace llvm

#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC

namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[] = {
  { "c", "'C' (Compressed Instructions)", Codasip::FeatureStdExtC, { { { 0x0ULL, 0x0ULL, 0x0ULL, } } } },
  { "relax", "Enable Linker relaxation.", Codasip::FeatureRelax, { { { 0x0ULL, 0x0ULL, 0x0ULL, } } } },
};

#ifdef DBGFIELD
#error "<target>GenSubtargetInfo.inc requires a DBGFIELD macro"
#endif
#if !defined(NDEBUG) || defined(LLVM_ENABLE_DUMP)
#define DBGFIELD(x) x,
#else
#define DBGFIELD(x)
#endif

// Functional units for "CodasipItineraries"
namespace CodasipItinerariesFU {
  const unsigned long long FU0_S0 = 1ULL << 0;
  const unsigned long long W_rf_xpr_S0 = 1ULL << 1;
} // end namespace CodasipItinerariesFU

extern const llvm::InstrStage CodasipStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 0, CodasipItinerariesFU::W_rf_xpr_S0, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, CodasipItinerariesFU::FU0_S0, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1-2
  { 0, 0, 0, llvm::InstrStage::Required } // End stages
};
extern const unsigned CodasipOperandCycles[] = {
  0, // No itinerary
  0 // End operand cycles
};
extern const unsigned CodasipForwardingPaths[] = {
 0, // No itinerary
 0 // End bypass tables
};

static const llvm::InstrItinerary CodasipItineraries[] = {
  { 0, 0, 0, 0, 0 }, // 0 NoInstrModel
  { 1, 1, 3, 0, 0 }, // 1 Itin_sc_load
  { 0, uint16_t(~0U), uint16_t(~0U), uint16_t(~0U), uint16_t(~0U) }// end marker
};

// ===============================================================
// Data tables for the new per-operand machine model.

// {ProcResourceIdx, Cycles}
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteProcResTable

// {Cycles, WriteResourceID}
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteLatencyTable

// {UseIdx, WriteResourceID, Cycles}
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[] = {
  {0,  0,  0}, // Invalid
}; // CodasipReadAdvanceTable

#undef DBGFIELD

static const llvm::MCSchedModel NoSchedModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  0, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  nullptr, // No Itinerary
  nullptr // No extra processor descriptor
};

static const llvm::MCSchedModel CodasipItinerariesModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  1, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  CodasipItineraries,
  nullptr // No extra processor descriptor
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetSubTypeKV CodasipSubTypeKV[] = {
 { "codasip", { { { 0x0ULL, 0x0ULL, 0x0ULL, } } }, &CodasipItinerariesModel },
};

namespace Codasip_MC {
unsigned resolveVariantSchedClassImpl(unsigned SchedClass,
    const MCInst *MI, unsigned CPUID) {
  // Don't know how to resolve this scheduling class.
  return 0;
}
} // end of namespace Codasip_MC

struct CodasipGenMCSubtargetInfo : public MCSubtargetInfo {
  CodasipGenMCSubtargetInfo(const Triple &TT, 
    StringRef CPU, StringRef FS, ArrayRef<SubtargetFeatureKV> PF,
    ArrayRef<SubtargetSubTypeKV> PD,
    const MCWriteProcResEntry *WPR,
    const MCWriteLatencyEntry *WL,
    const MCReadAdvanceEntry *RA, const InstrStage *IS,
    const unsigned *OC, const unsigned *FP) :
      MCSubtargetInfo(TT, CPU, FS, PF, PD,
                      WPR, WL, RA, IS, OC, FP) { }

  unsigned resolveVariantSchedClass(unsigned SchedClass,
      const MCInst *MI, unsigned CPUID) const override {
    return Codasip_MC::resolveVariantSchedClassImpl(SchedClass, MI, CPUID); 
  }
};

static inline MCSubtargetInfo *createCodasipMCSubtargetInfoImpl(const Triple &TT, StringRef CPU, StringRef FS) {
  return new CodasipGenMCSubtargetInfo(TT, CPU, FS, CodasipFeatureKV, CodasipSubTypeKV, 
                      CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                      CodasipStages, CodasipOperandCycles, CodasipForwardingPaths);
}

} // end namespace llvm

#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC

#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::CodasipSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  LLVM_DEBUG(dbgs() << "\nFeatures:" << FS);
  LLVM_DEBUG(dbgs() << "\nCPU:" << CPU << "\n\n");
  InitMCProcessorInfo(CPU, FS);
  const FeatureBitset& Bits = getFeatureBits();
  if (Bits[Codasip::FeatureRelax]) EnableLinkerRelax = true;
  if (Bits[Codasip::FeatureStdExtC]) HasStdExtC = true;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER

namespace llvm {
class DFAPacketizer;
namespace Codasip_MC {
unsigned resolveVariantSchedClassImpl(unsigned SchedClass, const MCInst *MI, unsigned CPUID);
}

struct CodasipGenSubtargetInfo : public TargetSubtargetInfo {
  explicit CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS);
public:
  unsigned resolveSchedClass(unsigned SchedClass,  const MachineInstr *DefMI, const TargetSchedModel *SchedModel) const override;
  unsigned resolveVariantSchedClass(unsigned SchedClass, const MCInst *MI, unsigned CPUID) const override;
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // end namespace llvm

#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR

#include "llvm/CodeGen/TargetSchedule.h"

namespace llvm {
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[];
extern const llvm::SubtargetSubTypeKV CodasipSubTypeKV[];
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[];
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[];
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[];
extern const llvm::InstrStage CodasipStages[];
extern const unsigned CodasipOperandCycles[];
extern const unsigned CodasipForwardingPaths[];
CodasipGenSubtargetInfo::CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo(TT, CPU, FS, makeArrayRef(CodasipFeatureKV, 2), makeArrayRef(CodasipSubTypeKV, 1), 
                        CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                        CodasipStages, CodasipOperandCycles, CodasipForwardingPaths) {}

unsigned CodasipGenSubtargetInfo
::resolveSchedClass(unsigned SchedClass, const MachineInstr *MI, const TargetSchedModel *SchedModel) const {
  report_fatal_error("Expected a variant SchedClass");
} // CodasipGenSubtargetInfo::resolveSchedClass

unsigned CodasipGenSubtargetInfo
::resolveVariantSchedClass(unsigned SchedClass, const MCInst *MI, unsigned CPUID) const {
  return Codasip_MC::resolveVariantSchedClassImpl(SchedClass, MI, CPUID);
} // CodasipGenSubtargetInfo::resolveVariantSchedClass

} // end namespace llvm

#endif // GET_SUBTARGETINFO_CTOR


#ifdef GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS
#undef GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS

#endif // GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS


#ifdef GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS
#undef GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS

#endif // GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS

