-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sun Nov 10 22:25:05 2024
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : project_1_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp3_fpd_aclk : in STD_LOGIC;
    saxigp5_aruser : in STD_LOGIC;
    saxigp5_awuser : in STD_LOGIC;
    saxigp5_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp5_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp5_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp5_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp5_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp5_awlock : in STD_LOGIC;
    saxigp5_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp5_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp5_awvalid : in STD_LOGIC;
    saxigp5_awready : out STD_LOGIC;
    saxigp5_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp5_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp5_wlast : in STD_LOGIC;
    saxigp5_wvalid : in STD_LOGIC;
    saxigp5_wready : out STD_LOGIC;
    saxigp5_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp5_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp5_bvalid : out STD_LOGIC;
    saxigp5_bready : in STD_LOGIC;
    saxigp5_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp5_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp5_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp5_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp5_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp5_arlock : in STD_LOGIC;
    saxigp5_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp5_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp5_arvalid : in STD_LOGIC;
    saxigp5_arready : out STD_LOGIC;
    saxigp5_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp5_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp5_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp5_rlast : out STD_LOGIC;
    saxigp5_rvalid : out STD_LOGIC;
    saxigp5_rready : in STD_LOGIC;
    saxigp5_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp5_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_lpd_aclk : in STD_LOGIC;
    saxigp6_aruser : in STD_LOGIC;
    saxigp6_awuser : in STD_LOGIC;
    saxigp6_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_awlock : in STD_LOGIC;
    saxigp6_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awvalid : in STD_LOGIC;
    saxigp6_awready : out STD_LOGIC;
    saxigp6_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp6_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp6_wlast : in STD_LOGIC;
    saxigp6_wvalid : in STD_LOGIC;
    saxigp6_wready : out STD_LOGIC;
    saxigp6_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_bvalid : out STD_LOGIC;
    saxigp6_bready : in STD_LOGIC;
    saxigp6_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_arlock : in STD_LOGIC;
    saxigp6_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arvalid : in STD_LOGIC;
    saxigp6_arready : out STD_LOGIC;
    saxigp6_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp6_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_rlast : out STD_LOGIC;
    saxigp6_rvalid : out STD_LOGIC;
    saxigp6_rready : in STD_LOGIC;
    saxigp6_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_resetn1 : out STD_LOGIC;
    pl_resetn2 : out STD_LOGIC;
    pl_resetn3 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC;
    pl_clk2 : out STD_LOGIC;
    pl_clk3 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "project_1_zynq_ultra_ps_e_0_0,zynq_ultra_ps_e_v3_5_5_zynq_ultra_ps_e,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "project_1_zynq_ultra_ps_e_0_0,zynq_ultra_ps_e_v3_5_5_zynq_ultra_ps_e,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=zynq_ultra_ps_e,x_ipVersion=3.5,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_DP_USE_AUDIO=0,C_DP_USE_VIDEO=0,C_MAXIGP0_DATA_WIDTH=128,C_MAXIGP1_DATA_WIDTH=128,C_MAXIGP2_DATA_WIDTH=32,C_SAXIGP0_DATA_WIDTH=128,C_SAXIGP1_DATA_WIDTH=128,C_SAXIGP2_DATA_WIDTH=128,C_SAXIGP3_DATA_WIDTH=128,C_SAXIGP4_DATA_WIDTH=128,C_SAXIGP5_DATA_WIDTH=128,C_SAXIGP6_DATA_WIDTH=128,C_USE_DIFF_RW_CLK_GP0=0,C_USE_DIFF_RW_CLK_GP1=0,C_USE_DIFF_RW_CLK_GP2=0,C_USE_DIFF_RW_CLK_GP3=0,C_USE_DIFF_RW_CLK_GP4=0,C_USE_DIFF_RW_CLK_GP5=0,C_USE_DIFF_RW_CLK_GP6=0,C_EN_FIFO_ENET0=0,C_EN_FIFO_ENET1=0,C_EN_FIFO_ENET2=0,C_EN_FIFO_ENET3=0,C_PL_CLK0_BUF=TRUE,C_PL_CLK1_BUF=TRUE,C_PL_CLK2_BUF=TRUE,C_PL_CLK3_BUF=TRUE,C_TRACE_PIPELINE_WIDTH=8,C_EN_EMIO_TRACE=0,C_TRACE_DATA_WIDTH=32,C_USE_DEBUG_TEST=0,C_SD0_INTERNAL_BUS_WIDTH=5,C_SD1_INTERNAL_BUS_WIDTH=8,C_NUM_F2P_0_INTR_INPUTS=1,C_NUM_F2P_1_INTR_INPUTS=1,C_EMIO_GPIO_WIDTH=1,C_NUM_FABRIC_RESETS=4}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],maxihpm0_lpd_aclk,maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[31:0],maxigp2_wstrb[3:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[31:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],saxihp3_fpd_aclk,saxigp5_aruser,saxigp5_awuser,saxigp5_awid[5:0],saxigp5_awaddr[48:0],saxigp5_awlen[7:0],saxigp5_awsize[2:0],saxigp5_awburst[1:0],saxigp5_awlock,saxigp5_awcache[3:0],saxigp5_awprot[2:0],saxigp5_awvalid,saxigp5_awready,saxigp5_wdata[127:0],saxigp5_wstrb[15:0],saxigp5_wlast,saxigp5_wvalid,saxigp5_wready,saxigp5_bid[5:0],saxigp5_bresp[1:0],saxigp5_bvalid,saxigp5_bready,saxigp5_arid[5:0],saxigp5_araddr[48:0],saxigp5_arlen[7:0],saxigp5_arsize[2:0],saxigp5_arburst[1:0],saxigp5_arlock,saxigp5_arcache[3:0],saxigp5_arprot[2:0],saxigp5_arvalid,saxigp5_arready,saxigp5_rid[5:0],saxigp5_rdata[127:0],saxigp5_rresp[1:0],saxigp5_rlast,saxigp5_rvalid,saxigp5_rready,saxigp5_awqos[3:0],saxigp5_arqos[3:0],saxi_lpd_aclk,saxigp6_aruser,saxigp6_awuser,saxigp6_awid[5:0],saxigp6_awaddr[48:0],saxigp6_awlen[7:0],saxigp6_awsize[2:0],saxigp6_awburst[1:0],saxigp6_awlock,saxigp6_awcache[3:0],saxigp6_awprot[2:0],saxigp6_awvalid,saxigp6_awready,saxigp6_wdata[127:0],saxigp6_wstrb[15:0],saxigp6_wlast,saxigp6_wvalid,saxigp6_wready,saxigp6_bid[5:0],saxigp6_bresp[1:0],saxigp6_bvalid,saxigp6_bready,saxigp6_arid[5:0],saxigp6_araddr[48:0],saxigp6_arlen[7:0],saxigp6_arsize[2:0],saxigp6_arburst[1:0],saxigp6_arlock,saxigp6_arcache[3:0],saxigp6_arprot[2:0],saxigp6_arvalid,saxigp6_arready,saxigp6_rid[5:0],saxigp6_rdata[127:0],saxigp6_rresp[1:0],saxigp6_rlast,saxigp6_rvalid,saxigp6_rready,saxigp6_awqos[3:0],saxigp6_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0,pl_resetn1,pl_resetn2,pl_resetn3,pl_clk0,pl_clk1,pl_clk2,pl_clk3";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of maxihpm0_fpd_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_HPM0_FPD_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of maxihpm0_fpd_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of maxihpm0_fpd_aclk : signal is "XIL_INTERFACENAME M_AXI_HPM0_FPD_ACLK, ASSOCIATED_BUSIF M_AXI_HPM0_FPD, FREQ_HZ 299970000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp0_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWID";
  attribute X_INTERFACE_MODE of maxigp0_awid : signal is "master";
  attribute X_INTERFACE_PARAMETER of maxigp0_awid : signal is "XIL_INTERFACENAME M_AXI_HPM0_FPD, NUM_WRITE_OUTSTANDING 8, NUM_READ_OUTSTANDING 8, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp0_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWADDR";
  attribute X_INTERFACE_INFO of maxigp0_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWLEN";
  attribute X_INTERFACE_INFO of maxigp0_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWSIZE";
  attribute X_INTERFACE_INFO of maxigp0_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWBURST";
  attribute X_INTERFACE_INFO of maxigp0_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWLOCK";
  attribute X_INTERFACE_INFO of maxigp0_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWCACHE";
  attribute X_INTERFACE_INFO of maxigp0_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWPROT";
  attribute X_INTERFACE_INFO of maxigp0_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWVALID";
  attribute X_INTERFACE_INFO of maxigp0_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWUSER";
  attribute X_INTERFACE_INFO of maxigp0_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWREADY";
  attribute X_INTERFACE_INFO of maxigp0_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD WDATA";
  attribute X_INTERFACE_INFO of maxigp0_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD WSTRB";
  attribute X_INTERFACE_INFO of maxigp0_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD WLAST";
  attribute X_INTERFACE_INFO of maxigp0_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD WVALID";
  attribute X_INTERFACE_INFO of maxigp0_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD WREADY";
  attribute X_INTERFACE_INFO of maxigp0_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD BID";
  attribute X_INTERFACE_INFO of maxigp0_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD BRESP";
  attribute X_INTERFACE_INFO of maxigp0_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD BVALID";
  attribute X_INTERFACE_INFO of maxigp0_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD BREADY";
  attribute X_INTERFACE_INFO of maxigp0_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARID";
  attribute X_INTERFACE_INFO of maxigp0_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARADDR";
  attribute X_INTERFACE_INFO of maxigp0_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARLEN";
  attribute X_INTERFACE_INFO of maxigp0_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARSIZE";
  attribute X_INTERFACE_INFO of maxigp0_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARBURST";
  attribute X_INTERFACE_INFO of maxigp0_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARLOCK";
  attribute X_INTERFACE_INFO of maxigp0_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARCACHE";
  attribute X_INTERFACE_INFO of maxigp0_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARPROT";
  attribute X_INTERFACE_INFO of maxigp0_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARVALID";
  attribute X_INTERFACE_INFO of maxigp0_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARUSER";
  attribute X_INTERFACE_INFO of maxigp0_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARREADY";
  attribute X_INTERFACE_INFO of maxigp0_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RID";
  attribute X_INTERFACE_INFO of maxigp0_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RDATA";
  attribute X_INTERFACE_INFO of maxigp0_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RRESP";
  attribute X_INTERFACE_INFO of maxigp0_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RLAST";
  attribute X_INTERFACE_INFO of maxigp0_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RVALID";
  attribute X_INTERFACE_INFO of maxigp0_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD RREADY";
  attribute X_INTERFACE_INFO of maxigp0_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD AWQOS";
  attribute X_INTERFACE_INFO of maxigp0_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_FPD ARQOS";
  attribute X_INTERFACE_INFO of maxihpm0_lpd_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_HPM0_LPD_ACLK CLK";
  attribute X_INTERFACE_MODE of maxihpm0_lpd_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of maxihpm0_lpd_aclk : signal is "XIL_INTERFACENAME M_AXI_HPM0_LPD_ACLK, ASSOCIATED_BUSIF M_AXI_HPM0_LPD, FREQ_HZ 74992500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp2_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWID";
  attribute X_INTERFACE_MODE of maxigp2_awid : signal is "master";
  attribute X_INTERFACE_PARAMETER of maxigp2_awid : signal is "XIL_INTERFACENAME M_AXI_HPM0_LPD, NUM_WRITE_OUTSTANDING 8, NUM_READ_OUTSTANDING 8, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 74992500, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp2_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWADDR";
  attribute X_INTERFACE_INFO of maxigp2_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWLEN";
  attribute X_INTERFACE_INFO of maxigp2_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWSIZE";
  attribute X_INTERFACE_INFO of maxigp2_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWBURST";
  attribute X_INTERFACE_INFO of maxigp2_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWLOCK";
  attribute X_INTERFACE_INFO of maxigp2_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWCACHE";
  attribute X_INTERFACE_INFO of maxigp2_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWPROT";
  attribute X_INTERFACE_INFO of maxigp2_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWVALID";
  attribute X_INTERFACE_INFO of maxigp2_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWUSER";
  attribute X_INTERFACE_INFO of maxigp2_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWREADY";
  attribute X_INTERFACE_INFO of maxigp2_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WDATA";
  attribute X_INTERFACE_INFO of maxigp2_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WSTRB";
  attribute X_INTERFACE_INFO of maxigp2_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WLAST";
  attribute X_INTERFACE_INFO of maxigp2_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WVALID";
  attribute X_INTERFACE_INFO of maxigp2_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WREADY";
  attribute X_INTERFACE_INFO of maxigp2_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BID";
  attribute X_INTERFACE_INFO of maxigp2_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BRESP";
  attribute X_INTERFACE_INFO of maxigp2_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BVALID";
  attribute X_INTERFACE_INFO of maxigp2_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BREADY";
  attribute X_INTERFACE_INFO of maxigp2_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARID";
  attribute X_INTERFACE_INFO of maxigp2_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARADDR";
  attribute X_INTERFACE_INFO of maxigp2_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARLEN";
  attribute X_INTERFACE_INFO of maxigp2_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARSIZE";
  attribute X_INTERFACE_INFO of maxigp2_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARBURST";
  attribute X_INTERFACE_INFO of maxigp2_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARLOCK";
  attribute X_INTERFACE_INFO of maxigp2_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARCACHE";
  attribute X_INTERFACE_INFO of maxigp2_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARPROT";
  attribute X_INTERFACE_INFO of maxigp2_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARVALID";
  attribute X_INTERFACE_INFO of maxigp2_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARUSER";
  attribute X_INTERFACE_INFO of maxigp2_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARREADY";
  attribute X_INTERFACE_INFO of maxigp2_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RID";
  attribute X_INTERFACE_INFO of maxigp2_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RDATA";
  attribute X_INTERFACE_INFO of maxigp2_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RRESP";
  attribute X_INTERFACE_INFO of maxigp2_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RLAST";
  attribute X_INTERFACE_INFO of maxigp2_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RVALID";
  attribute X_INTERFACE_INFO of maxigp2_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RREADY";
  attribute X_INTERFACE_INFO of maxigp2_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWQOS";
  attribute X_INTERFACE_INFO of maxigp2_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARQOS";
  attribute X_INTERFACE_INFO of saxihp3_fpd_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_HP3_FPD_ACLK CLK";
  attribute X_INTERFACE_MODE of saxihp3_fpd_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of saxihp3_fpd_aclk : signal is "XIL_INTERFACENAME S_AXI_HP3_FPD_ACLK, ASSOCIATED_BUSIF S_AXI_HP3_FPD, FREQ_HZ 299970000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of saxigp5_aruser : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARUSER";
  attribute X_INTERFACE_MODE of saxigp5_aruser : signal is "slave";
  attribute X_INTERFACE_PARAMETER of saxigp5_aruser : signal is "XIL_INTERFACENAME S_AXI_HP3_FPD, NUM_WRITE_OUTSTANDING 16, NUM_READ_OUTSTANDING 16, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970000, ID_WIDTH 6, ADDR_WIDTH 49, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of saxigp5_awuser : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWUSER";
  attribute X_INTERFACE_INFO of saxigp5_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWID";
  attribute X_INTERFACE_INFO of saxigp5_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWADDR";
  attribute X_INTERFACE_INFO of saxigp5_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWLEN";
  attribute X_INTERFACE_INFO of saxigp5_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWSIZE";
  attribute X_INTERFACE_INFO of saxigp5_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWBURST";
  attribute X_INTERFACE_INFO of saxigp5_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWLOCK";
  attribute X_INTERFACE_INFO of saxigp5_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWCACHE";
  attribute X_INTERFACE_INFO of saxigp5_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWPROT";
  attribute X_INTERFACE_INFO of saxigp5_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWVALID";
  attribute X_INTERFACE_INFO of saxigp5_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWREADY";
  attribute X_INTERFACE_INFO of saxigp5_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD WDATA";
  attribute X_INTERFACE_INFO of saxigp5_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD WSTRB";
  attribute X_INTERFACE_INFO of saxigp5_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD WLAST";
  attribute X_INTERFACE_INFO of saxigp5_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD WVALID";
  attribute X_INTERFACE_INFO of saxigp5_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD WREADY";
  attribute X_INTERFACE_INFO of saxigp5_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD BID";
  attribute X_INTERFACE_INFO of saxigp5_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD BRESP";
  attribute X_INTERFACE_INFO of saxigp5_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD BVALID";
  attribute X_INTERFACE_INFO of saxigp5_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD BREADY";
  attribute X_INTERFACE_INFO of saxigp5_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARID";
  attribute X_INTERFACE_INFO of saxigp5_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARADDR";
  attribute X_INTERFACE_INFO of saxigp5_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARLEN";
  attribute X_INTERFACE_INFO of saxigp5_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARSIZE";
  attribute X_INTERFACE_INFO of saxigp5_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARBURST";
  attribute X_INTERFACE_INFO of saxigp5_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARLOCK";
  attribute X_INTERFACE_INFO of saxigp5_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARCACHE";
  attribute X_INTERFACE_INFO of saxigp5_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARPROT";
  attribute X_INTERFACE_INFO of saxigp5_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARVALID";
  attribute X_INTERFACE_INFO of saxigp5_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARREADY";
  attribute X_INTERFACE_INFO of saxigp5_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RID";
  attribute X_INTERFACE_INFO of saxigp5_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RDATA";
  attribute X_INTERFACE_INFO of saxigp5_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RRESP";
  attribute X_INTERFACE_INFO of saxigp5_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RLAST";
  attribute X_INTERFACE_INFO of saxigp5_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RVALID";
  attribute X_INTERFACE_INFO of saxigp5_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD RREADY";
  attribute X_INTERFACE_INFO of saxigp5_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD AWQOS";
  attribute X_INTERFACE_INFO of saxigp5_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP3_FPD ARQOS";
  attribute X_INTERFACE_INFO of saxi_lpd_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_LPD_ACLK CLK";
  attribute X_INTERFACE_MODE of saxi_lpd_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of saxi_lpd_aclk : signal is "XIL_INTERFACENAME S_AXI_LPD_ACLK, ASSOCIATED_BUSIF S_AXI_LPD, FREQ_HZ 299970000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of saxigp6_aruser : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARUSER";
  attribute X_INTERFACE_MODE of saxigp6_aruser : signal is "slave";
  attribute X_INTERFACE_PARAMETER of saxigp6_aruser : signal is "XIL_INTERFACENAME S_AXI_LPD, NUM_WRITE_OUTSTANDING 16, NUM_READ_OUTSTANDING 16, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970000, ID_WIDTH 6, ADDR_WIDTH 49, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of saxigp6_awuser : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWUSER";
  attribute X_INTERFACE_INFO of saxigp6_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWID";
  attribute X_INTERFACE_INFO of saxigp6_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWADDR";
  attribute X_INTERFACE_INFO of saxigp6_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWLEN";
  attribute X_INTERFACE_INFO of saxigp6_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWSIZE";
  attribute X_INTERFACE_INFO of saxigp6_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWBURST";
  attribute X_INTERFACE_INFO of saxigp6_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWLOCK";
  attribute X_INTERFACE_INFO of saxigp6_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWCACHE";
  attribute X_INTERFACE_INFO of saxigp6_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWPROT";
  attribute X_INTERFACE_INFO of saxigp6_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWVALID";
  attribute X_INTERFACE_INFO of saxigp6_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWREADY";
  attribute X_INTERFACE_INFO of saxigp6_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD WDATA";
  attribute X_INTERFACE_INFO of saxigp6_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD WSTRB";
  attribute X_INTERFACE_INFO of saxigp6_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD WLAST";
  attribute X_INTERFACE_INFO of saxigp6_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD WVALID";
  attribute X_INTERFACE_INFO of saxigp6_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD WREADY";
  attribute X_INTERFACE_INFO of saxigp6_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD BID";
  attribute X_INTERFACE_INFO of saxigp6_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD BRESP";
  attribute X_INTERFACE_INFO of saxigp6_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD BVALID";
  attribute X_INTERFACE_INFO of saxigp6_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD BREADY";
  attribute X_INTERFACE_INFO of saxigp6_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARID";
  attribute X_INTERFACE_INFO of saxigp6_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARADDR";
  attribute X_INTERFACE_INFO of saxigp6_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARLEN";
  attribute X_INTERFACE_INFO of saxigp6_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARSIZE";
  attribute X_INTERFACE_INFO of saxigp6_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARBURST";
  attribute X_INTERFACE_INFO of saxigp6_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARLOCK";
  attribute X_INTERFACE_INFO of saxigp6_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARCACHE";
  attribute X_INTERFACE_INFO of saxigp6_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARPROT";
  attribute X_INTERFACE_INFO of saxigp6_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARVALID";
  attribute X_INTERFACE_INFO of saxigp6_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARREADY";
  attribute X_INTERFACE_INFO of saxigp6_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RID";
  attribute X_INTERFACE_INFO of saxigp6_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RDATA";
  attribute X_INTERFACE_INFO of saxigp6_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RRESP";
  attribute X_INTERFACE_INFO of saxigp6_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RLAST";
  attribute X_INTERFACE_INFO of saxigp6_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RVALID";
  attribute X_INTERFACE_INFO of saxigp6_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD RREADY";
  attribute X_INTERFACE_INFO of saxigp6_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD AWQOS";
  attribute X_INTERFACE_INFO of saxigp6_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LPD ARQOS";
  attribute X_INTERFACE_INFO of pl_ps_irq0 : signal is "xilinx.com:signal:interrupt:1.0 PL_PS_IRQ0 INTERRUPT";
  attribute X_INTERFACE_MODE of pl_ps_irq0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_ps_irq0 : signal is "XIL_INTERFACENAME PL_PS_IRQ0, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of pl_resetn0 : signal is "xilinx.com:signal:reset:1.0 PL_RESETN0 RST";
  attribute X_INTERFACE_MODE of pl_resetn0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_resetn0 : signal is "XIL_INTERFACENAME PL_RESETN0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_resetn1 : signal is "xilinx.com:signal:reset:1.0 PL_RESETN1 RST";
  attribute X_INTERFACE_MODE of pl_resetn1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_resetn1 : signal is "XIL_INTERFACENAME PL_RESETN1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_resetn2 : signal is "xilinx.com:signal:reset:1.0 PL_RESETN2 RST";
  attribute X_INTERFACE_MODE of pl_resetn2 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_resetn2 : signal is "XIL_INTERFACENAME PL_RESETN2, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_resetn3 : signal is "xilinx.com:signal:reset:1.0 PL_RESETN3 RST";
  attribute X_INTERFACE_MODE of pl_resetn3 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_resetn3 : signal is "XIL_INTERFACENAME PL_RESETN3, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk0 : signal is "xilinx.com:signal:clock:1.0 PL_CLK0 CLK";
  attribute X_INTERFACE_MODE of pl_clk0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk0 : signal is "XIL_INTERFACENAME PL_CLK0, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk1 : signal is "xilinx.com:signal:clock:1.0 PL_CLK1 CLK";
  attribute X_INTERFACE_MODE of pl_clk1 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk1 : signal is "XIL_INTERFACENAME PL_CLK1, FREQ_HZ 24997501, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk2 : signal is "xilinx.com:signal:clock:1.0 PL_CLK2 CLK";
  attribute X_INTERFACE_MODE of pl_clk2 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk2 : signal is "XIL_INTERFACENAME PL_CLK2, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk3 : signal is "xilinx.com:signal:clock:1.0 PL_CLK3 CLK";
  attribute X_INTERFACE_MODE of pl_clk3 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk3 : signal is "XIL_INTERFACENAME PL_CLK3, FREQ_HZ 374962524, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk3, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_5_5_zynq_ultra_ps_e,Vivado 2024.2";
begin
end;
