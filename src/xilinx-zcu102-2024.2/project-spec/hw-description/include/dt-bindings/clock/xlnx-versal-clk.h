/* SPDX-License-Identifier: GPL-2.0 */
/*
 *  Copyright (C) 2019 Xilinx Inc.-2022 Xilinx, Inc.
 * (C) Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 */

#ifndef _DT_BINDINGS_CLK_VERSAL_H
#define _DT_BINDINGS_CLK_VERSAL_H

#define PMC_PLL					1
#define APU_PLL					2
#define RPU_PLL					3
#define CPM_PLL					4
#define NOC_PLL					5
#define PLL_MAX					6
#define PMC_PRESRC				7
#define PMC_POSTCLK				8
#define PMC_PLL_OUT				9
#define PPLL					10
#define NOC_PRESRC				11
#define NOC_POSTCLK				12
#define NOC_PLL_OUT				13
#define NPLL					14
#define APU_PRESRC				15
#define APU_POSTCLK				16
#define APU_PLL_OUT				17
#define APLL					18
#define RPU_PRESRC				19
#define RPU_POSTCLK				20
#define RPU_PLL_OUT				21
#define RPLL					22
#define CPM_PRESRC				23
#define CPM_POSTCLK				24
#define CPM_PLL_OUT				25
#define CPLL					26
#define PPLL_TO_XPD				27
#define NPLL_TO_XPD				28
#define APLL_TO_XPD				29
#define RPLL_TO_XPD				30
#define EFUSE_REF				31
#define SYSMON_REF				32
#define IRO_SUSPEND_REF				33
#define USB_SUSPEND				34
#define SWITCH_TIMEOUT				35
#define RCLK_PMC				36
#define RCLK_LPD				37
#define WDT					38
#define TTC0					39
#define TTC1					40
#define TTC2					41
#define TTC3					42
#define GEM_TSU					43
#define GEM_TSU_LB				44
#define MUXED_IRO_DIV2				45
#define MUXED_IRO_DIV4				46
#define PSM_REF					47
#define GEM0_RX					48
#define GEM0_TX					49
#define GEM1_RX					50
#define GEM1_TX					51
#define CPM_CORE_REF				52
#define CPM_LSBUS_REF				53
#define CPM_DBG_REF				54
#define CPM_AUX0_REF				55
#define CPM_AUX1_REF				56
#define QSPI_REF				57
#define OSPI_REF				58
#define SDIO0_REF				59
#define SDIO1_REF				60
#define PMC_LSBUS_REF				61
#define I2C_REF					62
#define TEST_PATTERN_REF			63
#define DFT_OSC_REF				64
#define PMC_PL0_REF				65
#define PMC_PL1_REF				66
#define PMC_PL2_REF				67
#define PMC_PL3_REF				68
#define CFU_REF					69
#define SPARE_REF				70
#define NPI_REF					71
#define HSM0_REF				72
#define HSM1_REF				73
#define SD_DLL_REF				74
#define FPD_TOP_SWITCH				75
#define FPD_LSBUS				76
#define ACPU					77
#define DBG_TRACE				78
#define DBG_FPD					79
#define LPD_TOP_SWITCH				80
#define ADMA					81
#define LPD_LSBUS				82
#define CPU_R5					83
#define CPU_R5_CORE				84
#define CPU_R5_OCM				85
#define CPU_R5_OCM2				86
#define IOU_SWITCH				87
#define GEM0_REF				88
#define GEM1_REF				89
#define GEM_TSU_REF				90
#define USB0_BUS_REF				91
#define UART0_REF				92
#define UART1_REF				93
#define SPI0_REF				94
#define SPI1_REF				95
#define CAN0_REF				96
#define CAN1_REF				97
#define I2C0_REF				98
#define I2C1_REF				99
#define DBG_LPD					100
#define TIMESTAMP_REF				101
#define DBG_TSTMP				102
#define CPM_TOPSW_REF				103
#define USB3_DUAL_REF				104
#define OUTCLK_MAX				105
#define REF_CLK					106
#define PL_ALT_REF_CLK				107
#define MUXED_IRO				108
#define PL_EXT					109
#define PL_LB					110
#define MIO_50_OR_51				111
#define MIO_24_OR_25				112

#endif
