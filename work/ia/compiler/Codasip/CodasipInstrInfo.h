/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2022 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2022-12-07
 * \author  Codasip (c) C compiler backend generator
 * \version 9.1.1-1255
 * \brief   Source for compiler backend
 * \project cu_riscv32i_cycle_accurate.ia
 * \note          Codasip Studio version: 9.1.1-1255
 *                Licensee: Lockular Limited  (C60_2200_2176)
 *                Project: cu_riscv32i_cycle_accurate.ia
 *                Date: 2022-12-07 21:39:27
 *                Copyright (C) 2022 Codasip s.r.o.
 */


#ifndef CODASIPINSTRUCTIONINFO_H
#define CODASIPINSTRUCTIONINFO_H

#include "CodasipGenInstrInfo.h"

namespace llvm {

/// This class can be used for user's manual implementations.
class CodasipInstrInfo: public CodasipGenInstrInfo2
{
  public:
    explicit CodasipInstrInfo(CodasipTargetMachine &TM);

    void copyPhysReg(MachineBasicBlock &MBB,
                     MachineBasicBlock::iterator MI,
                     const DebugLoc& DL,
                     unsigned DestReg,
                     unsigned SrcReg,
                     bool KillSrc) const override;
    void storeRegToStackSlot(MachineBasicBlock &MBB,
                             MachineBasicBlock::iterator MBBI,
                             unsigned SrcReg,
                             bool isKill,
                             int FrameIndex,
                             const TargetRegisterClass *RC,
                             const TargetRegisterInfo *TRI) const override;
    void loadRegFromStackSlot(MachineBasicBlock &MBB,
                              MachineBasicBlock::iterator MBBI,
                              unsigned DestReg,
                              int FrameIndex,
                              const TargetRegisterClass *RC,
                              const TargetRegisterInfo *TRI) const override;
    bool analyzeBranch(MachineBasicBlock &MBB,
                       MachineBasicBlock *&TBB,
                       MachineBasicBlock *&FBB,
                       SmallVectorImpl<MachineOperand> &Cond,
                       bool AllowModify) const override;
    bool reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const override;
    unsigned getEquivalentCondOpcode(ArrayRef<MachineOperand> Cond, int RegPos) const override;
    /// Use this to add/override pseudo insertions
    bool ExpandDummiesImpl(MachineInstr *MIp, MachineBasicBlock* &BB, const bool postRA) const override;
};

}

#endif
