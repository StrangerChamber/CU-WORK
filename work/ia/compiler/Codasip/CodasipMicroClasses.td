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


include "CodasipCustomMicroClasses.td"

// Definition of auto-generated instruction classes

class CodasipMicroClass_sc_load<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let Itinerary = Itin_sc_load;
  let hasDelaySlot = 0;
  let allowInDelaySlot = 1;
}

class CodasipMicroClass_<dag outs, dag ins>
: CodasipInst<outs,ins>
{
  let hasNoSchedulingInfo = 1;
}

