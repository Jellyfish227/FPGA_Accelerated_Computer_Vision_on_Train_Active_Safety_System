/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2022, Xilinx, Inc.
 * Copyright (C) 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 */

#ifndef _DT_BINDINGS_VERSAL_NET_RESETS_H
#define _DT_BINDINGS_VERSAL_NET_RESETS_H

#include "xlnx-versal-resets.h"

#define VERSAL_RST_USB_1			(0xC1040C6U)

/* Remove Versal specific reset IDs */
#undef VERSAL_RST_ACPU_0_POR
#undef VERSAL_RST_ACPU_1_POR
#undef VERSAL_RST_OCM2_POR
#undef VERSAL_RST_APU
#undef VERSAL_RST_ACPU_0
#undef VERSAL_RST_ACPU_1
#undef VERSAL_RST_ACPU_L2
#undef VERSAL_RST_RPU_ISLAND
#undef VERSAL_RST_RPU_AMBA
#undef VERSAL_RST_R5_0
#undef VERSAL_RST_R5_1
#undef VERSAL_RST_OCM2_RST
#undef VERSAL_RST_I2C_PMC
#undef VERSAL_RST_I2C_0
#undef VERSAL_RST_I2C_1
#undef VERSAL_RST_SWDT_FPD
#undef VERSAL_RST_SWDT_LPD
#undef VERSAL_RST_USB
#undef VERSAL_RST_DPC
#undef VERSAL_RST_DBG_TRACE
#undef VERSAL_RST_DBG_TSTMP
#undef VERSAL_RST_RPU0_DBG
#undef VERSAL_RST_RPU1_DBG
#undef VERSAL_RST_HSDP
#undef VERSAL_RST_CPMDBG
#undef VERSAL_RST_PCIE_CFG
#undef VERSAL_RST_PCIE_CORE0
#undef VERSAL_RST_PCIE_CORE1
#undef VERSAL_RST_PCIE_DMA
#undef VERSAL_RST_L2_0
#undef VERSAL_RST_L2_1
#undef VERSAL_RST_ADDR_REMAP
#undef VERSAL_RST_CPI0
#undef VERSAL_RST_CPI1
#undef VERSAL_RST_XRAM
#undef VERSAL_RST_AIE_ARRAY
#undef VERSAL_RST_AIE_SHIM

#endif
