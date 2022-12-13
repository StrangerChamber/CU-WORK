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


#include "CodasipInstructionSemantics.h"
#include "CodasipGenInstrInfo.h"
#include "CodasipGenISelLowering.h"

#include "llvm/Analysis/OptimizationRemarkEmitter.h"

// turn of optimization on windows, too long function
#ifdef _WIN32
  #pragma optimize("", off)	// disable global optimization, this will increase compilation times 8x-10x
#endif

llvm::SelectionDAG* llvm::GetCodasipPattern(const TargetMachine &TM,
    MachineFunction &mf,
    unsigned icode,
    std::vector<SDValue>& roots,
    bool lowlevel)
{
  // hlp for memop
  MachinePointerInfo mpi;
  // resulting dag
  SelectionDAG* dag = new SelectionDAG(TM,CodeGenOpt::None);
  OptimizationRemarkEmitter ore(&mf.getFunction());
  dag->init(mf,ore,nullptr,nullptr,nullptr);
  // entry node
  SDValue entry = dag->getEntryNode();
  // dummy loc
  SDLoc dl;
  // building of nodes for each instruction
  switch (icode)
  {
    case Codasip::i_ret_alias__:
      if (lowlevel) {
SDValue node0x51a0e40 = dag->getRegister(Codasip::rf_xpr_1, MVT::i32);
SDValue node0x51a0b90 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x51a0e40);
roots.reserve(1);
roots.push_back(node0x51a0b90);
dag->setRoot(node0x51a0b90);
      } else       {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_call_reg_alias__simm12__xpr_general__immspec_1_:
      if (lowlevel) {
SDValue node0x52ca980 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x52cacb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52c9240 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::rf_xpr_1, MVT::i32), node0x52ca980, SDValue());
SDValue node0x52ca8d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x52c9240, node0x52cacb0);
roots.reserve(2);
roots.push_back(node0x52c9240);
roots.push_back(node0x52ca8d0);
dag->setRoot(node0x52ca8d0);
      } else       {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cb720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52cb2d0 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x52cb720);
roots.reserve(1);
roots.push_back(node0x52cb2d0);
dag->setRoot(node0x52cb2d0);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cbbf0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x52c9e00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52cbbf0, SDValue());
SDValue node0x52cc190 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52cc260 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x52c9e00, node0x52cc190);
roots.reserve(2);
roots.push_back(node0x52c9e00);
roots.push_back(node0x52cc260);
dag->setRoot(node0x52cc260);
      }
      break;
    case Codasip::i_call_alias__relative_addr20__:
case Codasip::i_call_alias__relative_addr20__ES:
case Codasip::i_call_alias__relative_addr20__MC:
case Codasip::i_call_alias__relative_addr20__BA:
      if (lowlevel) {
SDValue node0x4ff38a0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x4ff2e60 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::rf_xpr_1, MVT::i32), node0x4ff38a0, SDValue());
SDValue node0x4ff3cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x4ff3ed0 = dag->getNode(ISD::BR, dl, MVT::Other, node0x4ff2e60, node0x4ff3cb0);
roots.reserve(2);
roots.push_back(node0x4ff2e60);
roots.push_back(node0x4ff3ed0);
dag->setRoot(node0x4ff3ed0);
      } else       {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__:
      {
SDValue node0x51911b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x5190e60 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x51911b0);
roots.reserve(1);
roots.push_back(node0x5190e60);
dag->setRoot(node0x5190e60);
      }
      break;
    case Codasip::i_jal_abs_calias__opc_jal__xpr_general__relative_addr20__:
      {
SDValue node0x51919a0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x518ffb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51919a0, SDValue());
SDValue node0x5191d10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5191970 = dag->getNode(ISD::BR, dl, MVT::Other, node0x518ffb0, node0x5191d10);
roots.reserve(2);
roots.push_back(node0x518ffb0);
roots.push_back(node0x5191970);
dag->setRoot(node0x5191970);
      }
      break;
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__:
      {
SDValue node0x5193760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x5193920 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x5193760);
roots.reserve(1);
roots.push_back(node0x5193920);
dag->setRoot(node0x5193920);
      }
      break;
    case Codasip::i_jtype_jlink__opc_jal__xpr_general__relative_addr20__:
      {
SDValue node0x5194570 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x5193a40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5194570, SDValue());
SDValue node0x5194980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5194b70 = dag->getNode(ISD::BR, dl, MVT::Other, node0x5193a40, node0x5194980);
roots.reserve(2);
roots.push_back(node0x5193a40);
roots.push_back(node0x5194b70);
dag->setRoot(node0x5194b70);
      }
      break;
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__:
      {
SDValue node0x50fd5f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x4fcd5b0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x50fd5f0);
roots.reserve(1);
roots.push_back(node0x4fcd5b0);
dag->setRoot(node0x4fcd5b0);
      }
      break;
    case Codasip::i_btype_branches__opc_beq__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x4fdbb10 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4fb94f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4fdbcb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x4fdbd50 = dag->getSetCC(dl, MVT::iAny, node0x4fb94f0, node0x4fdbb10, ISD::SETEQ);
SDValue node0x4fdbec0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4fdbd50, node0x4fdbcb0);
roots.reserve(1);
roots.push_back(node0x4fdbec0);
dag->setRoot(node0x4fdbec0);
      } else       {
SDValue node0x4fdbb10 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x4fb94f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4fdbcb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x4fdbd50 = dag->getSetCC(dl, MVT::i32, node0x4fb94f0, node0x4fdbb10, ISD::SETEQ);
SDValue node0x4fdbec0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4fdbd50, node0x4fdbcb0);
roots.reserve(1);
roots.push_back(node0x4fdbec0);
dag->setRoot(node0x4fdbec0);
      }
      break;
    case Codasip::i_btype_branches__opc_beq__xpr_general__x_0__relative_addr12__:
      if (lowlevel) {
SDValue node0x50d29e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52fabc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50d2b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50d2c20 = dag->getSetCC(dl, MVT::iAny, node0x52fabc0, node0x50d29e0, ISD::SETEQ);
SDValue node0x50d2e70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50d2c20, node0x50d2b80);
roots.reserve(1);
roots.push_back(node0x50d2e70);
dag->setRoot(node0x50d2e70);
      } else       {
SDValue node0x50d29e0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52fabc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50d2b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50d2c20 = dag->getSetCC(dl, MVT::i32, node0x52fabc0, node0x50d29e0, ISD::SETEQ);
SDValue node0x50d2e70 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50d2c20, node0x50d2b80);
roots.reserve(1);
roots.push_back(node0x50d2e70);
dag->setRoot(node0x50d2e70);
      }
      break;
    case Codasip::i_btype_branches__opc_beq__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x4faa150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4fb4f90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50d45b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x50d4650 = dag->getSetCC(dl, MVT::iAny, node0x4fb4f90, node0x4faa150, ISD::SETEQ);
SDValue node0x50d48a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50d4650, node0x50d45b0);
roots.reserve(1);
roots.push_back(node0x50d48a0);
dag->setRoot(node0x50d48a0);
      } else       {
SDValue node0x4faa150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4fb4f90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50d45b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x50d4650 = dag->getSetCC(dl, MVT::i32, node0x4fb4f90, node0x4faa150, ISD::SETEQ);
SDValue node0x50d48a0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50d4650, node0x50d45b0);
roots.reserve(1);
roots.push_back(node0x50d48a0);
dag->setRoot(node0x50d48a0);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__:
      {
SDValue node0x50b74a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x50b76c0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x50b74a0);
roots.reserve(1);
roots.push_back(node0x50b76c0);
dag->setRoot(node0x50b76c0);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x50b8550 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x50bfd40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50b88d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50b8970 = dag->getSetCC(dl, MVT::iAny, node0x50bfd40, node0x50b8550, ISD::SETLT);
SDValue node0x50b8bc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50b8970, node0x50b88d0);
roots.reserve(1);
roots.push_back(node0x50b8bc0);
dag->setRoot(node0x50b8bc0);
      } else       {
SDValue node0x50b8550 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x50bfd40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50b88d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50b8970 = dag->getSetCC(dl, MVT::i32, node0x50bfd40, node0x50b8550, ISD::SETLT);
SDValue node0x50b8bc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50b8970, node0x50b88d0);
roots.reserve(1);
roots.push_back(node0x50b8bc0);
dag->setRoot(node0x50b8bc0);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__xpr_general__x_0__relative_addr12__:
      if (lowlevel) {
SDValue node0x530b8d0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x50c03b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530b9d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x530ba70 = dag->getSetCC(dl, MVT::iAny, node0x50c03b0, node0x530b8d0, ISD::SETGT);
SDValue node0x530bcc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530ba70, node0x530b9d0);
roots.reserve(1);
roots.push_back(node0x530bcc0);
dag->setRoot(node0x530bcc0);
      } else       {
SDValue node0x530b8d0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x50c03b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530b9d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x530ba70 = dag->getSetCC(dl, MVT::i32, node0x50c03b0, node0x530b8d0, ISD::SETGT);
SDValue node0x530bcc0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530ba70, node0x530b9d0);
roots.reserve(1);
roots.push_back(node0x530bcc0);
dag->setRoot(node0x530bcc0);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x50c0df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x530d3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530d490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x530d530 = dag->getSetCC(dl, MVT::iAny, node0x530d3e0, node0x50c0df0, ISD::SETGE);
SDValue node0x530d780 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530d530, node0x530d490);
roots.reserve(1);
roots.push_back(node0x530d780);
dag->setRoot(node0x530d780);
      } else       {
SDValue node0x50c0df0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x530d3e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530d490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x530d530 = dag->getSetCC(dl, MVT::i32, node0x530d3e0, node0x50c0df0, ISD::SETGE);
SDValue node0x530d780 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530d530, node0x530d490);
roots.reserve(1);
roots.push_back(node0x530d780);
dag->setRoot(node0x530d780);
      }
      break;
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__:
      {
SDValue node0x530e6b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x50ba660 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x530e6b0);
roots.reserve(1);
roots.push_back(node0x50ba660);
dag->setRoot(node0x50ba660);
      }
      break;
    case Codasip::i_btype_branches__opc_bgeu__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x50b4060 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x50b41e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50b4290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50b4330 = dag->getSetCC(dl, MVT::iAny, node0x50b41e0, node0x50b4060, ISD::SETEQ);
SDValue node0x50b4580 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50b4330, node0x50b4290);
roots.reserve(1);
roots.push_back(node0x50b4580);
dag->setRoot(node0x50b4580);
      } else       {
SDValue node0x50b4060 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x50b41e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x50b4290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x50b4330 = dag->getSetCC(dl, MVT::i32, node0x50b41e0, node0x50b4060, ISD::SETEQ);
SDValue node0x50b4580 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x50b4330, node0x50b4290);
roots.reserve(1);
roots.push_back(node0x50b4580);
dag->setRoot(node0x50b4580);
      }
      break;
    case Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x5300430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53004e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5300590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5300630 = dag->getSetCC(dl, MVT::iAny, node0x53004e0, node0x5300430, ISD::SETUGE);
SDValue node0x5300880 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5300630, node0x5300590);
roots.reserve(1);
roots.push_back(node0x5300880);
dag->setRoot(node0x5300880);
      } else       {
SDValue node0x5300430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53004e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5300590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5300630 = dag->getSetCC(dl, MVT::i32, node0x53004e0, node0x5300430, ISD::SETUGE);
SDValue node0x5300880 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5300630, node0x5300590);
roots.reserve(1);
roots.push_back(node0x5300880);
dag->setRoot(node0x5300880);
      }
      break;
    case Codasip::i_btype_branches__opc_blt__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x5302440 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x53025c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5302670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5302710 = dag->getSetCC(dl, MVT::iAny, node0x53025c0, node0x5302440, ISD::SETGT);
SDValue node0x5302960 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5302710, node0x5302670);
roots.reserve(1);
roots.push_back(node0x5302960);
dag->setRoot(node0x5302960);
      } else       {
SDValue node0x5302440 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x53025c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5302670 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5302710 = dag->getSetCC(dl, MVT::i32, node0x53025c0, node0x5302440, ISD::SETGT);
SDValue node0x5302960 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5302710, node0x5302670);
roots.reserve(1);
roots.push_back(node0x5302960);
dag->setRoot(node0x5302960);
      }
      break;
    case Codasip::i_btype_branches__opc_blt__xpr_general__x_0__relative_addr12__:
      if (lowlevel) {
SDValue node0x5310af0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5310c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5310d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5310dc0 = dag->getSetCC(dl, MVT::iAny, node0x5310c70, node0x5310af0, ISD::SETLT);
SDValue node0x5311010 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5310dc0, node0x5310d20);
roots.reserve(1);
roots.push_back(node0x5311010);
dag->setRoot(node0x5311010);
      } else       {
SDValue node0x5310af0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5310c70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5310d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5310dc0 = dag->getSetCC(dl, MVT::i32, node0x5310c70, node0x5310af0, ISD::SETLT);
SDValue node0x5311010 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5310dc0, node0x5310d20);
roots.reserve(1);
roots.push_back(node0x5311010);
dag->setRoot(node0x5311010);
      }
      break;
    case Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x5312710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53127c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5312870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5312910 = dag->getSetCC(dl, MVT::iAny, node0x53127c0, node0x5312710, ISD::SETLT);
SDValue node0x5312b60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5312910, node0x5312870);
roots.reserve(1);
roots.push_back(node0x5312b60);
dag->setRoot(node0x5312b60);
      } else       {
SDValue node0x5312710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53127c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5312870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5312910 = dag->getSetCC(dl, MVT::i32, node0x53127c0, node0x5312710, ISD::SETLT);
SDValue node0x5312b60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5312910, node0x5312870);
roots.reserve(1);
roots.push_back(node0x5312b60);
dag->setRoot(node0x5312b60);
      }
      break;
    case Codasip::i_btype_branches__opc_bltu__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x53146d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5314850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5314900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x53149a0 = dag->getSetCC(dl, MVT::iAny, node0x5314850, node0x53146d0, ISD::SETNE);
SDValue node0x5314bf0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x53149a0, node0x5314900);
roots.reserve(1);
roots.push_back(node0x5314bf0);
dag->setRoot(node0x5314bf0);
      } else       {
SDValue node0x53146d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5314850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5314900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x53149a0 = dag->getSetCC(dl, MVT::i32, node0x5314850, node0x53146d0, ISD::SETNE);
SDValue node0x5314bf0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x53149a0, node0x5314900);
roots.reserve(1);
roots.push_back(node0x5314bf0);
dag->setRoot(node0x5314bf0);
      }
      break;
    case Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x5305610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53056c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5305770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5305810 = dag->getSetCC(dl, MVT::iAny, node0x53056c0, node0x5305610, ISD::SETULT);
SDValue node0x5305a60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5305810, node0x5305770);
roots.reserve(1);
roots.push_back(node0x5305a60);
dag->setRoot(node0x5305a60);
      } else       {
SDValue node0x5305610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x53056c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5305770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x5305810 = dag->getSetCC(dl, MVT::i32, node0x53056c0, node0x5305610, ISD::SETULT);
SDValue node0x5305a60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x5305810, node0x5305770);
roots.reserve(1);
roots.push_back(node0x5305a60);
dag->setRoot(node0x5305a60);
      }
      break;
    case Codasip::i_btype_branches__opc_bne__x_0__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x5307620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x53077a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5307850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x53078f0 = dag->getSetCC(dl, MVT::iAny, node0x53077a0, node0x5307620, ISD::SETNE);
SDValue node0x5307b40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x53078f0, node0x5307850);
roots.reserve(1);
roots.push_back(node0x5307b40);
dag->setRoot(node0x5307b40);
      } else       {
SDValue node0x5307620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x53077a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5307850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x53078f0 = dag->getSetCC(dl, MVT::i32, node0x53077a0, node0x5307620, ISD::SETNE);
SDValue node0x5307b40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x53078f0, node0x5307850);
roots.reserve(1);
roots.push_back(node0x5307b40);
dag->setRoot(node0x5307b40);
      }
      break;
    case Codasip::i_btype_branches__opc_bne__xpr_general__x_0__relative_addr12__:
      if (lowlevel) {
SDValue node0x530a010 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x530a190 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530a240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x530a2e0 = dag->getSetCC(dl, MVT::iAny, node0x530a190, node0x530a010, ISD::SETNE);
SDValue node0x530a530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530a2e0, node0x530a240);
roots.reserve(1);
roots.push_back(node0x530a530);
dag->setRoot(node0x530a530);
      } else       {
SDValue node0x530a010 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x530a190 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530a240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x530a2e0 = dag->getSetCC(dl, MVT::i32, node0x530a190, node0x530a010, ISD::SETNE);
SDValue node0x530a530 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x530a2e0, node0x530a240);
roots.reserve(1);
roots.push_back(node0x530a530);
dag->setRoot(node0x530a530);
      }
      break;
    case Codasip::i_btype_branches__opc_bne__xpr_general__xpr_general__relative_addr12__:
      if (lowlevel) {
SDValue node0x4ff2940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4ff29f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4ff2aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4ff2b40 = dag->getSetCC(dl, MVT::iAny, node0x4ff29f0, node0x4ff2940, ISD::SETNE);
SDValue node0x4ff2d90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4ff2b40, node0x4ff2aa0);
roots.reserve(1);
roots.push_back(node0x4ff2d90);
dag->setRoot(node0x4ff2d90);
      } else       {
SDValue node0x4ff2940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4ff29f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4ff2aa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x4ff2b40 = dag->getSetCC(dl, MVT::i32, node0x4ff29f0, node0x4ff2940, ISD::SETNE);
SDValue node0x4ff2d90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x4ff2b40, node0x4ff2aa0);
roots.reserve(1);
roots.push_back(node0x4ff2d90);
dag->setRoot(node0x4ff2d90);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__:
      if (lowlevel) {
SDValue node0x52ba1c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52b92a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52ba360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52ba410 = dag->getSetCC(dl, MVT::iAny, node0x52b92a0, node0x52ba360, ISD::SETLE);
SDValue node0x52ba4e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52ba410, node0x52ba1c0);
roots.reserve(1);
roots.push_back(node0x52ba4e0);
dag->setRoot(node0x52ba4e0);
      } else       {
SDValue node0x52ba1c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52b92a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52ba360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52ba410 = dag->getSetCC(dl, MVT::i32, node0x52b92a0, node0x52ba360, ISD::SETLE);
SDValue node0x52ba4e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52ba410, node0x52ba1c0);
roots.reserve(1);
roots.push_back(node0x52ba4e0);
dag->setRoot(node0x52ba4e0);
      }
      break;
    case Codasip::i_btype_branches__opc_bgeu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__:
      if (lowlevel) {
SDValue node0x52bae70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bb100 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bb1b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bb260 = dag->getSetCC(dl, MVT::iAny, node0x52bb100, node0x52bb1b0, ISD::SETULE);
SDValue node0x52bb330 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bb260, node0x52bae70);
roots.reserve(1);
roots.push_back(node0x52bb330);
dag->setRoot(node0x52bb330);
      } else       {
SDValue node0x52bae70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bb100 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bb1b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bb260 = dag->getSetCC(dl, MVT::i32, node0x52bb100, node0x52bb1b0, ISD::SETULE);
SDValue node0x52bb330 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bb260, node0x52bae70);
roots.reserve(1);
roots.push_back(node0x52bb330);
dag->setRoot(node0x52bb330);
      }
      break;
    case Codasip::i_btype_branches__opc_blt__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__:
      if (lowlevel) {
SDValue node0x52bbcc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bbf50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bc000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bc0b0 = dag->getSetCC(dl, MVT::iAny, node0x52bbf50, node0x52bc000, ISD::SETGT);
SDValue node0x52bc180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bc0b0, node0x52bbcc0);
roots.reserve(1);
roots.push_back(node0x52bc180);
dag->setRoot(node0x52bc180);
      } else       {
SDValue node0x52bbcc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bbf50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bc000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bc0b0 = dag->getSetCC(dl, MVT::i32, node0x52bbf50, node0x52bc000, ISD::SETGT);
SDValue node0x52bc180 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bc0b0, node0x52bbcc0);
roots.reserve(1);
roots.push_back(node0x52bc180);
dag->setRoot(node0x52bc180);
      }
      break;
    case Codasip::i_btype_branches__opc_bltu__xpr_general__xpr_general__relative_addr12__swappedCmpClone0__:
      if (lowlevel) {
SDValue node0x52bcbb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bce40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bcef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bcfa0 = dag->getSetCC(dl, MVT::iAny, node0x52bce40, node0x52bcef0, ISD::SETUGT);
SDValue node0x52bd070 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bcfa0, node0x52bcbb0);
roots.reserve(1);
roots.push_back(node0x52bd070);
dag->setRoot(node0x52bd070);
      } else       {
SDValue node0x52bcbb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::Other);
SDValue node0x52bce40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52bcef0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bcfa0 = dag->getSetCC(dl, MVT::i32, node0x52bce40, node0x52bcef0, ISD::SETUGT);
SDValue node0x52bd070 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x52bcfa0, node0x52bcbb0);
roots.reserve(1);
roots.push_back(node0x52bd070);
dag->setRoot(node0x52bd070);
      }
      break;
    case Codasip::i_call_reg_alias__simm12__x_0__:
case Codasip::i_call_reg_alias__simm12__x_0__ES:
case Codasip::i_call_reg_alias__simm12__x_0__MC:
case Codasip::i_call_reg_alias__simm12__x_0__BA:
      if (lowlevel) {
SDValue node0x4ff44e0 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x4ff2eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::rf_xpr_1, MVT::i32), node0x4ff44e0, SDValue());
SDValue node0x4ff48f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x4ff4460 = dag->getNode(ISD::BR, dl, MVT::Other, node0x4ff2eb0, node0x4ff48f0);
roots.reserve(2);
roots.push_back(node0x4ff2eb0);
roots.push_back(node0x4ff4460);
dag->setRoot(node0x4ff4460);
      } else       {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__:
      {
SDValue node0x5115450 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::Other);
SDValue node0x5115180 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x5115450);
roots.reserve(1);
roots.push_back(node0x5115180);
dag->setRoot(node0x5115180);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__x_0__:
      {
SDValue node0x5117b60 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x5117910 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5117b60, SDValue());
SDValue node0x5117ed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::Other);
SDValue node0x5117b30 = dag->getNode(ISD::BR, dl, MVT::Other, node0x5117910, node0x5117ed0);
roots.reserve(2);
roots.push_back(node0x5117910);
roots.push_back(node0x5117b30);
dag->setRoot(node0x5117b30);
      }
      break;
    case Codasip::i_itype_alu__opc_addi__xpr_general__x_0__simm12__:
      {
SDValue node0x4ff93c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4ff2f00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4ff93c0, SDValue());
roots.reserve(1);
roots.push_back(node0x4ff2f00);
dag->setRoot(node0x4ff2f00);
      }
      break;
    case Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__:
      {
SDValue node0x4ffa590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4ffa640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x4ffa6e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x4ffa590, node0x4ffa640);
SDValue node0x4ff94f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4ffa6e0, SDValue());
roots.reserve(1);
roots.push_back(node0x4ff94f0);
dag->setRoot(node0x4ff94f0);
      }
      break;
    case Codasip::i_itype_alu__opc_andi__xpr_general__xpr_general__simm12__:
      {
SDValue node0x51011c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5101270 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5101310 = dag->getNode(ISD::AND, dl, MVT::i32, node0x51011c0, node0x5101270);
SDValue node0x5100050 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5101310, SDValue());
roots.reserve(1);
roots.push_back(node0x5100050);
dag->setRoot(node0x5100050);
      }
      break;
    case Codasip::i_itype_alu__opc_ori__xpr_general__x_0__simm12__:
      {
SDValue node0x5104a00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5101430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5104a00, SDValue());
roots.reserve(1);
roots.push_back(node0x5101430);
dag->setRoot(node0x5101430);
      }
      break;
    case Codasip::i_itype_alu__opc_ori__xpr_general__xpr_general__simm12__:
      {
SDValue node0x5105d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5105e20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5105ec0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x5105d70, node0x5105e20);
SDValue node0x5104b30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5105ec0, SDValue());
roots.reserve(1);
roots.push_back(node0x5104b30);
dag->setRoot(node0x5104b30);
      }
      break;
    case Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__:
      {
SDValue node0x51094d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51095b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5109650 = dag->getSetCC(dl, MVT::i32, node0x51095b0, node0x51094d0, ISD::SETGT);
SDValue node0x5105fe0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5109650, SDValue());
roots.reserve(1);
roots.push_back(node0x5105fe0);
dag->setRoot(node0x5105fe0);
      }
      break;
    case Codasip::i_itype_alu__opc_slti__xpr_general__xpr_general__simm12__:
      {
SDValue node0x510aaf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x510aba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x510ac40 = dag->getSetCC(dl, MVT::i32, node0x510aaf0, node0x510aba0, ISD::SETLT);
SDValue node0x5109920 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x510ac40, SDValue());
roots.reserve(1);
roots.push_back(node0x5109920);
dag->setRoot(node0x5109920);
      }
      break;
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__:
      {
SDValue node0x510e3b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x510e490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x510e530 = dag->getSetCC(dl, MVT::i32, node0x510e490, node0x510e3b0, ISD::SETNE);
SDValue node0x510dfa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x510e530, SDValue());
roots.reserve(1);
roots.push_back(node0x510dfa0);
dag->setRoot(node0x510dfa0);
      }
      break;
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__xpr_general__simm12__:
      {
SDValue node0x510fa20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x510fad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x510fb70 = dag->getSetCC(dl, MVT::i32, node0x510fa20, node0x510fad0, ISD::SETULT);
SDValue node0x510e710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x510fb70, SDValue());
roots.reserve(1);
roots.push_back(node0x510e710);
dag->setRoot(node0x510e710);
      }
      break;
    case Codasip::i_itype_alu__opc_xori__xpr_general__x_0__simm12__:
      {
SDValue node0x51132d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x510f660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51132d0, SDValue());
roots.reserve(1);
roots.push_back(node0x510f660);
dag->setRoot(node0x510f660);
      }
      break;
    case Codasip::i_itype_alu__opc_xori__xpr_general__xpr_general__simm12__:
      {
SDValue node0x5114640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51146f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5114790 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x5114640, node0x51146f0);
SDValue node0x5113400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5114790, SDValue());
roots.reserve(1);
roots.push_back(node0x5113400);
dag->setRoot(node0x5113400);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__xpr_general__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__:
      {
SDValue node0x511d760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x511b600 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x511d760, mpi, MVT::i8, 1);
SDValue node0x511b770 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x511b600, SDValue());
roots.reserve(1);
roots.push_back(node0x511b770);
dag->setRoot(node0x511b770);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__:
      {
SDValue node0x511ecf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x511eda0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x511ee40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x511ecf0, node0x511eda0);
SDValue node0x511a490 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x511ee40, mpi, MVT::i8, 1);
SDValue node0x511dab0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x511a490, SDValue());
roots.reserve(1);
roots.push_back(node0x511dab0);
dag->setRoot(node0x511dab0);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__x_0__simm12__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__x_0__simm12__xpr_general__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__:
      {
SDValue node0x5123280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5121030 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x5123280, mpi, MVT::i8, 1);
SDValue node0x5122d90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5121030, SDValue());
roots.reserve(1);
roots.push_back(node0x5122d90);
dag->setRoot(node0x5122d90);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__:
      {
SDValue node0x51248b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5124960 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5124a00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x51248b0, node0x5124960);
SDValue node0x511fe70 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x5124a00, mpi, MVT::i8, 1);
SDValue node0x5122f60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x511fe70, SDValue());
roots.reserve(1);
roots.push_back(node0x5122f60);
dag->setRoot(node0x5122f60);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__xpr_general__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__:
      {
SDValue node0x5128d20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5126bc0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x5128d20, mpi, MVT::i16, 1);
SDValue node0x5126d30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5126bc0, SDValue());
roots.reserve(1);
roots.push_back(node0x5126d30);
dag->setRoot(node0x5126d30);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__:
      {
SDValue node0x512a2b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x512a360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x512a400 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x512a2b0, node0x512a360);
SDValue node0x5125a00 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x512a400, mpi, MVT::i16, 1);
SDValue node0x5129070 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5125a00, SDValue());
roots.reserve(1);
roots.push_back(node0x5129070);
dag->setRoot(node0x5129070);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__x_0__simm12__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__x_0__simm12__xpr_general__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__:
      {
SDValue node0x512e840 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x512c5f0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x512e840, mpi, MVT::i16, 1);
SDValue node0x512e350 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x512c5f0, SDValue());
roots.reserve(1);
roots.push_back(node0x512e350);
dag->setRoot(node0x512e350);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__:
      {
SDValue node0x512fe70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x512ff20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x512ffc0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x512fe70, node0x512ff20);
SDValue node0x512b430 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x512ffc0, mpi, MVT::i16, 1);
SDValue node0x512e520 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x512b430, SDValue());
roots.reserve(1);
roots.push_back(node0x512e520);
dag->setRoot(node0x512e520);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__xpr_general__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__x_0__:
      {
SDValue node0x518e6a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x518e740 = dag->getLoad(MVT::i32, dl, entry, node0x518e6a0, mpi, 1);
SDValue node0x518c6e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x518e740, SDValue());
roots.reserve(1);
roots.push_back(node0x518c6e0);
dag->setRoot(node0x518c6e0);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__:
      {
SDValue node0x518fb80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x518fc30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x518fcd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x518fb80, node0x518fc30);
SDValue node0x518fd60 = dag->getLoad(MVT::i32, dl, entry, node0x518fcd0, mpi, 1);
SDValue node0x518e8f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x518fd60, SDValue());
roots.reserve(1);
roots.push_back(node0x518e8f0);
dag->setRoot(node0x518e8f0);
      }
      break;
    case Codasip::i_nop_alias__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_add__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0__x_0__:
      {
SDValue node0x51a94d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51a9400 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51a94d0, SDValue());
roots.reserve(1);
roots.push_back(node0x51a9400);
dag->setRoot(node0x51a9400);
      }
      break;
    case Codasip::i_rtype_alu__opc_add__xpr_general__x_0__xpr_general__:
      {
SDValue node0x51aa710 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51a9670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51aa710, SDValue());
roots.reserve(1);
roots.push_back(node0x51a9670);
dag->setRoot(node0x51a9670);
      }
      break;
    case Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__x_0__:
      {
SDValue node0x51ac940 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51ac670 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51ac940, SDValue());
roots.reserve(1);
roots.push_back(node0x51ac670);
dag->setRoot(node0x51ac670);
      }
      break;
    case Codasip::i_rtype_alu__opc_add__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x51add60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51ade10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51adec0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x51add60, node0x51ade10);
SDValue node0x51ad9f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51adec0, SDValue());
roots.reserve(1);
roots.push_back(node0x51ad9f0);
dag->setRoot(node0x51ad9f0);
      }
      break;
    case Codasip::i_rtype_alu__opc_and__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_and__xpr_general__x_0__x_0__:
      {
SDValue node0x51b6b00 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51b6a30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51b6b00, SDValue());
roots.reserve(1);
roots.push_back(node0x51b6a30);
dag->setRoot(node0x51b6a30);
      }
      break;
    case Codasip::i_rtype_alu__opc_and__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x51bb0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51bb1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51bb250 = dag->getNode(ISD::AND, dl, MVT::i32, node0x51bb0f0, node0x51bb1a0);
SDValue node0x51bad80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51bb250, SDValue());
roots.reserve(1);
roots.push_back(node0x51bad80);
dag->setRoot(node0x51bad80);
      }
      break;
    case Codasip::i_rtype_alu__opc_or__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0__x_0__:
      {
SDValue node0x51c3e90 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51c3c40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51c3e90, SDValue());
roots.reserve(1);
roots.push_back(node0x51c3c40);
dag->setRoot(node0x51c3c40);
      }
      break;
    case Codasip::i_rtype_alu__opc_or__xpr_general__x_0__xpr_general__:
      {
SDValue node0x51c50d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51c4030 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51c50d0, SDValue());
roots.reserve(1);
roots.push_back(node0x51c4030);
dag->setRoot(node0x51c4030);
      }
      break;
    case Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__x_0__:
      {
SDValue node0x51c7300 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51c6e90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51c7300, SDValue());
roots.reserve(1);
roots.push_back(node0x51c6e90);
dag->setRoot(node0x51c6e90);
      }
      break;
    case Codasip::i_rtype_alu__opc_or__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x51c8720 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51c87d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51c8880 = dag->getNode(ISD::OR, dl, MVT::i32, node0x51c8720, node0x51c87d0);
SDValue node0x51c7080 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51c8880, SDValue());
roots.reserve(1);
roots.push_back(node0x51c7080);
dag->setRoot(node0x51c7080);
      }
      break;
    case Codasip::i_rtype_alu__opc_sll__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_sll__xpr_general__x_0__x_0__:
      {
SDValue node0x51d14c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51d13f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51d14c0, SDValue());
roots.reserve(1);
roots.push_back(node0x51d13f0);
dag->setRoot(node0x51d13f0);
      }
      break;
    case Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__x_0__:
      {
SDValue node0x51d47e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51d4510 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51d47e0, SDValue());
roots.reserve(1);
roots.push_back(node0x51d4510);
dag->setRoot(node0x51d4510);
      }
      break;
    case Codasip::i_rtype_alu__opc_sll__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x51d5c00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51d5cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51d5d60 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x51d5c00, node0x51d5cb0);
SDValue node0x51d5890 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51d5d60, SDValue());
roots.reserve(1);
roots.push_back(node0x51d5890);
dag->setRoot(node0x51d5890);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__x_0__:
      {
SDValue node0x51de9a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51de8d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51de9a0, SDValue());
roots.reserve(1);
roots.push_back(node0x51de8d0);
dag->setRoot(node0x51de8d0);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__xpr_general__x_0__xpr_general__:
      {
SDValue node0x51dfa60 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51dfbe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51dfc90 = dag->getSetCC(dl, MVT::i32, node0x51dfbe0, node0x51dfa60, ISD::SETGT);
SDValue node0x51deb40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51dfc90, SDValue());
roots.reserve(1);
roots.push_back(node0x51deb40);
dag->setRoot(node0x51deb40);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__x_0__:
      {
SDValue node0x51e1e10 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x51e2030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51e20e0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x51e2030, node0x51e1e10);
SDValue node0x51e1cc0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51e20e0, SDValue());
roots.reserve(1);
roots.push_back(node0x51e1cc0);
dag->setRoot(node0x51e1cc0);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x51e3510 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51e35c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51e3670 = dag->getSetCC(dl, MVT::i32, node0x51e3510, node0x51e35c0, ISD::SETLT);
SDValue node0x51e31a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51e3670, SDValue());
roots.reserve(1);
roots.push_back(node0x51e31a0);
dag->setRoot(node0x51e31a0);
      }
      break;
    case Codasip::i_rtype_alu__opc_sltu__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__x_0__:
      {
SDValue node0x5139530 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5139460 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5139530, SDValue());
roots.reserve(1);
roots.push_back(node0x5139460);
dag->setRoot(node0x5139460);
      }
      break;
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__x_0__xpr_general__:
      {
SDValue node0x513a5f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x513a770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x513a820 = dag->getSetCC(dl, MVT::i32, node0x513a770, node0x513a5f0, ISD::SETNE);
SDValue node0x51396d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x513a820, SDValue());
roots.reserve(1);
roots.push_back(node0x51396d0);
dag->setRoot(node0x51396d0);
      }
      break;
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x513ddf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x513dea0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x513df50 = dag->getSetCC(dl, MVT::i32, node0x513ddf0, node0x513dea0, ISD::SETULT);
SDValue node0x513da80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x513df50, SDValue());
roots.reserve(1);
roots.push_back(node0x513da80);
dag->setRoot(node0x513da80);
      }
      break;
    case Codasip::i_rtype_alu__opc_sra__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_sra__xpr_general__x_0__x_0__:
      {
SDValue node0x5146c50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5146b80 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5146c50, SDValue());
roots.reserve(1);
roots.push_back(node0x5146b80);
dag->setRoot(node0x5146b80);
      }
      break;
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__x_0__:
      {
SDValue node0x5149f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5149ca0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5149f70, SDValue());
roots.reserve(1);
roots.push_back(node0x5149ca0);
dag->setRoot(node0x5149ca0);
      }
      break;
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x514b430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x514b4e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x514b620 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x514b430, node0x514b4e0);
SDValue node0x514b020 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x514b620, SDValue());
roots.reserve(1);
roots.push_back(node0x514b020);
dag->setRoot(node0x514b020);
      }
      break;
    case Codasip::i_rtype_alu__opc_srl__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_srl__xpr_general__x_0__x_0__:
      {
SDValue node0x5154290 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x51541c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5154290, SDValue());
roots.reserve(1);
roots.push_back(node0x51541c0);
dag->setRoot(node0x51541c0);
      }
      break;
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__x_0__:
      {
SDValue node0x51575b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51572e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51575b0, SDValue());
roots.reserve(1);
roots.push_back(node0x51572e0);
dag->setRoot(node0x51572e0);
      }
      break;
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x5158a70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5158b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5158c60 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x5158a70, node0x5158b20);
SDValue node0x5158660 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5158c60, SDValue());
roots.reserve(1);
roots.push_back(node0x5158660);
dag->setRoot(node0x5158660);
      }
      break;
    case Codasip::i_rtype_alu__opc_sub__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__x_0__:
      {
SDValue node0x51618d0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5161800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51618d0, SDValue());
roots.reserve(1);
roots.push_back(node0x5161800);
dag->setRoot(node0x5161800);
      }
      break;
    case Codasip::i_rtype_alu__opc_sub__xpr_general__x_0__xpr_general__:
      {
SDValue node0x5162910 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x5162b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5162bc0 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x5162910, node0x5162b10);
SDValue node0x5161a70 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5162bc0, SDValue());
roots.reserve(1);
roots.push_back(node0x5161a70);
dag->setRoot(node0x5161a70);
      }
      break;
    case Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__x_0__:
      {
SDValue node0x5164e00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5164b30 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5164e00, SDValue());
roots.reserve(1);
roots.push_back(node0x5164b30);
dag->setRoot(node0x5164b30);
      }
      break;
    case Codasip::i_rtype_alu__opc_sub__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x5166220 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x51662d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5166380 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x5166220, node0x51662d0);
SDValue node0x5165eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5166380, SDValue());
roots.reserve(1);
roots.push_back(node0x5165eb0);
dag->setRoot(node0x5165eb0);
      }
      break;
    case Codasip::i_rtype_alu__opc_xor__x_0__x_0__x_0__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__x_0__:
      {
SDValue node0x516efc0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x516eef0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x516efc0, SDValue());
roots.reserve(1);
roots.push_back(node0x516eef0);
dag->setRoot(node0x516eef0);
      }
      break;
    case Codasip::i_rtype_alu__opc_xor__xpr_general__x_0__xpr_general__:
      {
SDValue node0x5170200 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x516f160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5170200, SDValue());
roots.reserve(1);
roots.push_back(node0x516f160);
dag->setRoot(node0x516f160);
      }
      break;
    case Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__x_0__:
      {
SDValue node0x5172430 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5172160 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5172430, SDValue());
roots.reserve(1);
roots.push_back(node0x5172160);
dag->setRoot(node0x5172160);
      }
      break;
    case Codasip::i_rtype_alu__opc_xor__xpr_general__xpr_general__xpr_general__:
      {
SDValue node0x5173850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5173900 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x51739b0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x5173850, node0x5173900);
SDValue node0x51734e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x51739b0, SDValue());
roots.reserve(1);
roots.push_back(node0x51734e0);
dag->setRoot(node0x51734e0);
      }
      break;
    case Codasip::i_rtype_shift__opc_slli__xpr_general__xpr_general__uimm5__:
      {
SDValue node0x51786e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5178790 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5178830 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x51786e0, node0x5178790);
SDValue node0x5177890 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5178830, SDValue());
roots.reserve(1);
roots.push_back(node0x5177890);
dag->setRoot(node0x5177890);
      }
      break;
    case Codasip::i_rtype_shift__opc_srai__xpr_general__xpr_general__uimm5__:
      {
SDValue node0x517d560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x517d610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x517d6b0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x517d560, node0x517d610);
SDValue node0x517c710 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x517d6b0, SDValue());
roots.reserve(1);
roots.push_back(node0x517c710);
dag->setRoot(node0x517c710);
      }
      break;
    case Codasip::i_rtype_shift__opc_srli__xpr_general__xpr_general__uimm5__:
      {
SDValue node0x51823e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5182490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5182530 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x51823e0, node0x5182490);
SDValue node0x5181590 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5182530, SDValue());
roots.reserve(1);
roots.push_back(node0x5181590);
dag->setRoot(node0x5181590);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__:
      {
SDValue node0x52a3e70 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x52a4110 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x4fdb850 = dag->getStore(entry, dl, node0x52a3e70, node0x52a4110, mpi, 1);
roots.reserve(1);
roots.push_back(node0x4fdb850);
dag->setRoot(node0x4fdb850);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__:
      {
SDValue node0x52a51f0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x52a5530 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52a55e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52a5680 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52a5530, node0x52a55e0);
SDValue node0x52a5710 = dag->getStore(entry, dl, node0x52a51f0, node0x52a5680, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52a5710);
dag->setRoot(node0x52a5710);
      }
      break;
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__x_0__:
      {
SDValue node0x52a7af0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52a7ba0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52ee130 = dag->getTruncStore(entry, dl, node0x52a7af0, node0x52a7ba0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x52ee130);
dag->setRoot(node0x52ee130);
      }
      break;
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__:
      {
SDValue node0x52a90e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52a9190 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52a9240 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x52a9390 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52a9190, node0x52a9240);
SDValue node0x52a7cf0 = dag->getTruncStore(entry, dl, node0x52a90e0, node0x52a9390, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x52a7cf0);
dag->setRoot(node0x52a7cf0);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__:
      {
SDValue node0x52a9ff0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x52aa290 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52aa330 = dag->getStore(entry, dl, node0x52a9ff0, node0x52aa290, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52aa330);
dag->setRoot(node0x52aa330);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__:
      {
SDValue node0x52ab150 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x52ab490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52ab540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52ab5e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52ab490, node0x52ab540);
SDValue node0x52ab670 = dag->getStore(entry, dl, node0x52ab150, node0x52ab5e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52ab670);
dag->setRoot(node0x52ab670);
      }
      break;
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__x_0__:
      {
SDValue node0x52ada50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52adb00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52ee690 = dag->getTruncStore(entry, dl, node0x52ada50, node0x52adb00, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x52ee690);
dag->setRoot(node0x52ee690);
      }
      break;
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__:
      {
SDValue node0x52af040 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52af0f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52af1a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x52af2f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52af0f0, node0x52af1a0);
SDValue node0x52adc50 = dag->getTruncStore(entry, dl, node0x52af040, node0x52af2f0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x52adc50);
dag->setRoot(node0x52adc50);
      }
      break;
    case Codasip::i_stype_store__opc_sw__x_0__simm12__x_0__:
      {
SDValue node0x52aff50 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52b0150 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52b01f0 = dag->getStore(entry, dl, node0x52aff50, node0x52b0150, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52b01f0);
dag->setRoot(node0x52b01f0);
      }
      break;
    case Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__:
      {
SDValue node0x52b1010 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52b12b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52b1360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b1400 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52b12b0, node0x52b1360);
SDValue node0x52b1490 = dag->getStore(entry, dl, node0x52b1010, node0x52b1400, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52b1490);
dag->setRoot(node0x52b1490);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__x_0__:
      {
SDValue node0x52b3870 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52b3920 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b39c0 = dag->getStore(entry, dl, node0x52b3870, node0x52b3920, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52b39c0);
dag->setRoot(node0x52b39c0);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__:
      {
SDValue node0x52b4db0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52b4e60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b4f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x52b4fb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52b4e60, node0x52b4f10);
SDValue node0x52b5040 = dag->getStore(entry, dl, node0x52b4db0, node0x52b4fb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52b5040);
dag->setRoot(node0x52b5040);
      }
      break;
    case Codasip::i_utype_ops__opc_auipc__xpr_general__uimm20__:
      {
SDValue node0x52b6560 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x52b6850 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x52b6a70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b6b10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52b6560, node0x52b6a70);
SDValue node0x52b6ba0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52b6b10, node0x52b6850);
SDValue node0x52b5970 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52b6ba0, SDValue());
roots.reserve(1);
roots.push_back(node0x52b5970);
dag->setRoot(node0x52b5970);
      }
      break;
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__:
      {
SDValue node0x52b83d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b7fa0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52b83d0, SDValue());
roots.reserve(1);
roots.push_back(node0x52b7fa0);
dag->setRoot(node0x52b7fa0);
      }
      break;
    case Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__0__:
      {
SDValue node0x52bdea0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52b84b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52bdea0, SDValue());
roots.reserve(1);
roots.push_back(node0x52b84b0);
dag->setRoot(node0x52b84b0);
      }
      break;
    case Codasip::i_itype_alu__opc_slti__xpr_general__x_0__simm12__immSpecClone__imm_1__1__:
      {
SDValue node0x52bd7a0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x52b96b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52bd7a0, SDValue());
roots.reserve(1);
roots.push_back(node0x52b96b0);
dag->setRoot(node0x52b96b0);
      }
      break;
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__0__:
      {
SDValue node0x52beda0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52be430 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52beda0, SDValue());
roots.reserve(1);
roots.push_back(node0x52be430);
dag->setRoot(node0x52be430);
      }
      break;
    case Codasip::i_itype_alu__opc_sltiu__xpr_general__x_0__simm12__immSpecClone__imm_1__1__:
      {
SDValue node0x52be600 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x52b9af0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52be600, SDValue());
roots.reserve(1);
roots.push_back(node0x52b9af0);
dag->setRoot(node0x52b9af0);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__x_0__simm12__xpr_general__immspec_1_:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__x_0__AEXT_CLONE_:
      {
SDValue node0x511a1d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x511d800 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x511a1d0, mpi, MVT::i8, 1);
SDValue node0x52e2d10 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x511d800, SDValue());
roots.reserve(1);
roots.push_back(node0x52e2d10);
dag->setRoot(node0x52e2d10);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__AEXT_CLONE_:
      {
SDValue node0x511eed0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x511e9b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x511efa0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x511eed0, node0x511e9b0);
SDValue node0x52d8670 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x511efa0, mpi, MVT::i8, 1);
SDValue node0x52e3910 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52d8670, SDValue());
roots.reserve(1);
roots.push_back(node0x52e3910);
dag->setRoot(node0x52e3910);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cd470 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c3170 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x52cd470, mpi, MVT::i8, 1);
SDValue node0x52cc760 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c3170, SDValue());
roots.reserve(1);
roots.push_back(node0x52cc760);
dag->setRoot(node0x52cc760);
      }
      break;
    case Codasip::i_itype_loads__opc_lb__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:
      {
SDValue node0x52cd520 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c2bb0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x52cd520, mpi, MVT::i8, 1);
SDValue node0x52c1c90 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c2bb0, SDValue());
roots.reserve(1);
roots.push_back(node0x52c1c90);
dag->setRoot(node0x52c1c90);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__x_0__AEXT_CLONE_:
      {
SDValue node0x511fc50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5123320 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x511fc50, mpi, MVT::i8, 1);
SDValue node0x52e44a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5123320, SDValue());
roots.reserve(1);
roots.push_back(node0x52e44a0);
dag->setRoot(node0x52e44a0);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__AEXT_CLONE_:
      {
SDValue node0x5124a90 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5124570 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5124b60 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5124a90, node0x5124570);
SDValue node0x52e5070 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x5124b60, mpi, MVT::i8, 1);
SDValue node0x52e5100 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52e5070, SDValue());
roots.reserve(1);
roots.push_back(node0x52e5100);
dag->setRoot(node0x52e5100);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cdf50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c2060 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x52cdf50, mpi, MVT::i8, 1);
SDValue node0x52cc800 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c2060, SDValue());
roots.reserve(1);
roots.push_back(node0x52cc800);
dag->setRoot(node0x52cc800);
      }
      break;
    case Codasip::i_itype_loads__opc_lbu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:
      {
SDValue node0x52ce000 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c1a30 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x52ce000, mpi, MVT::i8, 1);
SDValue node0x5001870 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c1a30, SDValue());
roots.reserve(1);
roots.push_back(node0x5001870);
dag->setRoot(node0x5001870);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__x_0__simm12__xpr_general__immspec_1_:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__x_0__AEXT_CLONE_:
      {
SDValue node0x51257c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5128dc0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x51257c0, mpi, MVT::i16, 1);
SDValue node0x52e5d60 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5128dc0, SDValue());
roots.reserve(1);
roots.push_back(node0x52e5d60);
dag->setRoot(node0x52e5d60);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__AEXT_CLONE_:
      {
SDValue node0x512a490 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5129f70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x512a560 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x512a490, node0x5129f70);
SDValue node0x52e6930 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x512a560, mpi, MVT::i16, 1);
SDValue node0x52e69c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52e6930, SDValue());
roots.reserve(1);
roots.push_back(node0x52e69c0);
dag->setRoot(node0x52e69c0);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cf210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52cea60 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x52cf210, mpi, MVT::i16, 1);
SDValue node0x52cdb40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52cea60, SDValue());
roots.reserve(1);
roots.push_back(node0x52cdb40);
dag->setRoot(node0x52cdb40);
      }
      break;
    case Codasip::i_itype_loads__opc_lh__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:
      {
SDValue node0x52cf2c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c1470 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x52cf2c0, mpi, MVT::i16, 1);
SDValue node0x52c9f40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c1470, SDValue());
roots.reserve(1);
roots.push_back(node0x52c9f40);
dag->setRoot(node0x52c9f40);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__x_0__AEXT_CLONE_:
      {
SDValue node0x512b210 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x512e8e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x512b210, mpi, MVT::i16, 1);
SDValue node0x52e75f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x512e8e0, SDValue());
roots.reserve(1);
roots.push_back(node0x52e75f0);
dag->setRoot(node0x52e75f0);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__AEXT_CLONE_:
      {
SDValue node0x5130050 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x512fb30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5130120 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5130050, node0x512fb30);
SDValue node0x52e81c0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x5130120, mpi, MVT::i16, 1);
SDValue node0x52e8250 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52e81c0, SDValue());
roots.reserve(1);
roots.push_back(node0x52e8250);
dag->setRoot(node0x52e8250);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52cfcf0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c36f0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x52cfcf0, mpi, MVT::i16, 1);
SDValue node0x52ce5d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c36f0, SDValue());
roots.reserve(1);
roots.push_back(node0x52ce5d0);
dag->setRoot(node0x52ce5d0);
      }
      break;
    case Codasip::i_itype_loads__opc_lhu__xpr_general__simm12__xpr_general__immspec_1_AEXT_CLONE_:
      {
SDValue node0x52c60e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c56e0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x52c60e0, mpi, MVT::i16, 1);
SDValue node0x52c87c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c56e0, SDValue());
roots.reserve(1);
roots.push_back(node0x52c87c0);
dag->setRoot(node0x52c87c0);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__x_0__simm12__xpr_general__immspec_1_:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d0fb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52d1060 = dag->getLoad(MVT::i32, dl, entry, node0x52d0fb0, mpi, 1);
SDValue node0x52cf8e0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52d1060, SDValue());
roots.reserve(1);
roots.push_back(node0x52cf8e0);
dag->setRoot(node0x52cf8e0);
      }
      break;
    case Codasip::i_rtype_alu__opc_slt__xpr_general__xpr_general__xpr_general__swappedCmpClone0__:
      {
SDValue node0x52bf560 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52bf6b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x52bf760 = dag->getSetCC(dl, MVT::i32, node0x52bf560, node0x52bf6b0, ISD::SETGT);
SDValue node0x52bebd0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52bf760, SDValue());
roots.reserve(1);
roots.push_back(node0x52bebd0);
dag->setRoot(node0x52bebd0);
      }
      break;
    case Codasip::i_rtype_alu__opc_sltu__xpr_general__xpr_general__xpr_general__swappedCmpClone0__:
      {
SDValue node0x52c0130 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c0280 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x52c0330 = dag->getSetCC(dl, MVT::i32, node0x52c0130, node0x52c0280, ISD::SETUGT);
SDValue node0x52bfd50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52c0330, SDValue());
roots.reserve(1);
roots.push_back(node0x52bfd50);
dag->setRoot(node0x52bfd50);
      }
      break;
    case Codasip::i_rtype_alu__opc_sra__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_:
      {
SDValue node0x5130d80 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x4ffbfe0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5130fa0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5193890 = dag->getNode(ISD::AND, dl, MVT::i32, node0x5130fa0, node0x5130d80);
SDValue node0x4ffbf50 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x4ffbfe0, node0x5193890);
SDValue node0x52e84d0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x4ffbf50, SDValue());
roots.reserve(1);
roots.push_back(node0x52e84d0);
dag->setRoot(node0x52e84d0);
      }
      break;
    case Codasip::i_rtype_alu__opc_srl__xpr_general__xpr_general__xpr_general__SHIFT_MASK_CLONE_:
      {
SDValue node0x514b210 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x4fff580 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4fff610 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x514b590 = dag->getNode(ISD::AND, dl, MVT::i32, node0x4fff610, node0x514b210);
SDValue node0x50b6bd0 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x4fff580, node0x514b590);
SDValue node0x4fff6a0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x50b6bd0, SDValue());
roots.reserve(1);
roots.push_back(node0x4fff6a0);
dag->setRoot(node0x4fff6a0);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d20e0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x52d22e0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d2080 = dag->getStore(entry, dl, node0x52d20e0, node0x52d22e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52d2080);
dag->setRoot(node0x52d2080);
      }
      break;
    case Codasip::i_stype_store__opc_sb__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d2a60 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d2b10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c53b0 = dag->getTruncStore(entry, dl, node0x52d2a60, node0x52d2b10, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x52c53b0);
dag->setRoot(node0x52c53b0);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d3370 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x52d3590 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d3310 = dag->getStore(entry, dl, node0x52d3370, node0x52d3590, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52d3310);
dag->setRoot(node0x52d3310);
      }
      break;
    case Codasip::i_stype_store__opc_sh__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d3d30 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d3de0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52c7f20 = dag->getTruncStore(entry, dl, node0x52d3d30, node0x52d3de0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x52c7f20);
dag->setRoot(node0x52c7f20);
      }
      break;
    case Codasip::i_stype_store__opc_sw__x_0__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d45f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x52d4770 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d4590 = dag->getStore(entry, dl, node0x52d45f0, node0x52d4770, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52d4590);
dag->setRoot(node0x52d4590);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__immspec_1_:
      {
SDValue node0x52d4f10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x52d4fc0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52d4d50 = dag->getStore(entry, dl, node0x52d4f10, node0x52d4fc0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x52d4d50);
dag->setRoot(node0x52d4d50);
      }
      break;
    case Codasip::i_utype_ops__opc_auipc__xpr_general__uimm20__immspec_1_:
      {
SDValue node0x52d4b70 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x52d57b0 = dag->getConstant(-4LL, dl, MVT::i32);
SDValue node0x52d4be0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x52d4b70, node0x52d57b0);
SDValue node0x52d4370 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52d4be0, SDValue());
roots.reserve(1);
roots.push_back(node0x52d4370);
dag->setRoot(node0x52d4370);
      }
      break;
    case Codasip::e_movi32__:
case Codasip::e_movi32__GA:
case Codasip::e_movi32__ES:
case Codasip::e_movi32__MC:
case Codasip::e_movi32__BA:
case Codasip::e_movi32__JT:
case Codasip::e_movi32__CP:
      {
SDValue node0x52b8d80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x52b8500 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x52b8d80, SDValue());
roots.reserve(1);
roots.push_back(node0x52b8500);
dag->setRoot(node0x52b8500);
      }
      break;
    case Codasip::i_ret_alias__TAILCALL_CLONE_:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__immspec_1_TAILCALL_CLONE_:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_:
case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC:
case Codasip::i_jal_abs_calias__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_:
case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_MC:
case Codasip::i_jtype_jlink__opc_jal__x_0__relative_addr20__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
case Codasip::i_btype_branches__opc_beq__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
case Codasip::i_btype_branches__opc_bge__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_:
case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_ES:
case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_MC:
case Codasip::i_btype_branches__opc_bgeu__x_0__x_0__relative_addr12__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_:
case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_ES:
case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_MC:
case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__x_0__TAILCALL_CLONE_BA:
      {
dag->setRoot(entry);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__x_0__i32_TRUNC_CLONE_:
      {
SDValue node0x501cba0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501cc20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501d560 = dag->getTruncStore(entry, dl, node0x501cba0, node0x501cc20, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x501d560);
dag->setRoot(node0x501d560);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__i32_TRUNC_CLONE_:
      {
SDValue node0x501caa0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501c980 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501cb20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5018ff0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x501c980, node0x501cb20);
SDValue node0x501df00 = dag->getTruncStore(entry, dl, node0x501caa0, node0x5018ff0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x501df00);
dag->setRoot(node0x501df00);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__x_0__i32_TRUNC_CLONE_:
      {
SDValue node0x501cca0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501e540 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501e890 = dag->getTruncStore(entry, dl, node0x501cca0, node0x501e540, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x501e890);
dag->setRoot(node0x501e890);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__i32_TRUNC_CLONE_:
      {
SDValue node0x501eed0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501c330 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501ef50 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5019fb0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x501c330, node0x501ef50);
SDValue node0x501f330 = dag->getTruncStore(entry, dl, node0x501eed0, node0x5019fb0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x501f330);
dag->setRoot(node0x501f330);
      }
      break;
    case Codasip::i_stype_store__opc_sb__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_:
      {
SDValue node0x501f6c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501c8f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501f8b0 = dag->getTruncStore(entry, dl, node0x501f6c0, node0x501c8f0, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x501f8b0);
dag->setRoot(node0x501f8b0);
      }
      break;
    case Codasip::i_stype_store__opc_sh__x_0__simm12__xpr_general__immspec_1_i32_TRUNC_CLONE_:
      {
SDValue node0x501fca0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x501ca10 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x501fec0 = dag->getTruncStore(entry, dl, node0x501fca0, node0x501ca10, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x501fec0);
dag->setRoot(node0x501fec0);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__0_REG_EMUL_:
      {
SDValue node0x5020cb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5020640 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x50219f0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5026b40 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5020640, node0x50219f0);
SDValue node0x501ff20 = dag->getStore(entry, dl, node0x5020cb0, node0x5026b40, mpi, 1);
roots.reserve(1);
roots.push_back(node0x501ff20);
dag->setRoot(node0x501ff20);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__1_BIGIMM_EMUL_:
      {
SDValue node0x5021ab0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5026d70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5025ad0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5026e00 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5026d70, node0x5025ad0);
SDValue node0x5025c60 = dag->getStore(entry, dl, node0x5021ab0, node0x5026e00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x5025c60);
dag->setRoot(node0x5025c60);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__2_REG_EMUL_:
      {
SDValue node0x5022390 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5026910 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5023c30 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5022390, node0x5026910);
SDValue node0x5022300 = dag->getLoad(MVT::i32, dl, entry, node0x5023c30, mpi, 1);
SDValue node0x50238b0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5022300, SDValue());
roots.reserve(1);
roots.push_back(node0x50238b0);
dag->setRoot(node0x50238b0);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__3_BIGIMM_EMUL_:
      {
SDValue node0x5026e70 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x50278c0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5025610 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5026e70, node0x50278c0);
SDValue node0x5026fe0 = dag->getLoad(MVT::i32, dl, entry, node0x5025610, mpi, 1);
SDValue node0x50279c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5026fe0, SDValue());
roots.reserve(1);
roots.push_back(node0x50279c0);
dag->setRoot(node0x50279c0);
      }
      break;
    case Codasip::i_stype_store__opc_sw__xpr_general__simm12__xpr_general__4_BIGIMM_EMUL_:
      {
SDValue node0x50262b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5028af0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5028fb0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x50256f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5028af0, node0x5028fb0);
SDValue node0x50206d0 = dag->getStore(entry, dl, node0x50262b0, node0x50256f0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x50206d0);
dag->setRoot(node0x50206d0);
      }
      break;
    case Codasip::i_itype_loads__opc_lw__xpr_general__simm12__xpr_general__5_BIGIMM_EMUL_:
      {
SDValue node0x5025760 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5029dd0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x50240f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5025760, node0x5029dd0);
SDValue node0x50297f0 = dag->getLoad(MVT::i32, dl, entry, node0x50240f0, mpi, 1);
SDValue node0x5029eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x50297f0, SDValue());
roots.reserve(1);
roots.push_back(node0x5029eb0);
dag->setRoot(node0x5029eb0);
      }
      break;
    case Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__6_BIGIMM_EMUL_:
      {
SDValue node0x5024b20 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x502ac80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5026850 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5024b20, node0x502ac80);
SDValue node0x502ad40 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5026850, SDValue());
roots.reserve(1);
roots.push_back(node0x502ad40);
dag->setRoot(node0x502ad40);
      }
      break;
    case Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__7_BIGIMM_EMUL_:
      {
SDValue node0x5028b80 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x502ba40 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x5026440 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x5028b80, node0x502ba40);
SDValue node0x502bb00 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5026440, SDValue());
roots.reserve(1);
roots.push_back(node0x502bb00);
dag->setRoot(node0x502bb00);
      }
      break;
    case Codasip::i_itype_alu__opc_addi__xpr_general__xpr_general__simm12__8_BIGIMM_EMUL_:
      {
SDValue node0x502b360 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x502c800 = dag->getRegister(TargetRegisterInfo::index2VirtReg(2), MVT::i32);
SDValue node0x50261d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x502b360, node0x502c800);
SDValue node0x502c8c0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x50261d0, SDValue());
roots.reserve(1);
roots.push_back(node0x502c8c0);
dag->setRoot(node0x502c8c0);
      }
      break;
    case Codasip::i_halt__opc_halt__:
      {
roots.reserve(0);
dag->setRoot(entry);
      }
      break;
    case Codasip::i_call_reg_alias__simm12__xpr_general__:
      {
SDValue node0x4ff5500 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x4ff58d0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x530a650 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::rf_xpr_1, MVT::i32), node0x4ff5500, SDValue());
SDValue node0x4ff5b80 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x530a650, node0x4ff58d0);
roots.reserve(2);
roots.push_back(node0x530a650);
roots.push_back(node0x4ff5b80);
dag->setRoot(node0x4ff5b80);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__x_0__simm12__xpr_general__:
      {
SDValue node0x51161a0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32);
SDValue node0x5116440 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x51161a0);
roots.reserve(1);
roots.push_back(node0x5116440);
dag->setRoot(node0x5116440);
      }
      break;
    case Codasip::i_itype_jlreg__opc_jalr__xpr_general__simm12__xpr_general__:
      {
SDValue node0x5118e70 = dag->getNode(CodasipISD::GET_PC, dl, MVT::i32);
SDValue node0x5118df0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5118e70, SDValue());
SDValue node0x5119370 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5119610 = dag->getNode(ISD::BRIND, dl, MVT::Other, node0x5118df0, node0x5119370);
roots.reserve(2);
roots.push_back(node0x5118df0);
roots.push_back(node0x5119610);
dag->setRoot(node0x5119610);
      }
      break;
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__1_:
      {
SDValue node0x5158850 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x4ffff50 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5158850, SDValue());
roots.reserve(1);
roots.push_back(node0x4ffff50);
dag->setRoot(node0x4ffff50);
      }
      break;
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__2_:
      {
SDValue node0x5130d00 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x50006f0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5130d00, SDValue());
roots.reserve(1);
roots.push_back(node0x50006f0);
dag->setRoot(node0x50006f0);
      }
      break;
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__5_:
      {
SDValue node0x5300030 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5000ea0 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x5300030, SDValue());
roots.reserve(1);
roots.push_back(node0x5000ea0);
dag->setRoot(node0x5000ea0);
      }
      break;
    case Codasip::i_utype_ops__opc_lui__xpr_general__uimm20__SYNTAX_CLONE_e_movi32__6_:
      {
SDValue node0x50b67b0 = dag->getRegister(TargetRegisterInfo::index2VirtReg(1), MVT::i32);
SDValue node0x5001650 = dag->getCopyToReg(entry, dl, dag->getRegister(TargetRegisterInfo::index2VirtReg(0), MVT::i32), node0x50b67b0, SDValue());
roots.reserve(1);
roots.push_back(node0x5001650);
dag->setRoot(node0x5001650);
      }
      break;
    
    default:
      roots.reserve(1);
      roots.push_back(entry);
      dag->setRoot(entry);
  }
  dag->RemoveDeadNodes();
  return dag;
}

// turn optimizations back on
#ifdef _WIN32
  #pragma optimize("", on)
#endif
