//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed May 14 22:40:34 2025
//Host        : jellyfish-System-Product-Name running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hier_dpu_clk_imp_P5CT15
   (CLK,
    DPU_CLK,
    DSP_CLK,
    DSP_CLK1,
    DSP_CLK2,
    LOCKED,
    RSTn,
    RSTn_DSP,
    RSTn_INTC,
    RSTn_PERI,
    clk_dsp1_ce,
    clk_dsp2_ce,
    clk_dsp_ce);
  input CLK;
  output DPU_CLK;
  output DSP_CLK;
  output DSP_CLK1;
  output DSP_CLK2;
  output LOCKED;
  input RSTn;
  output [0:0]RSTn_DSP;
  output [0:0]RSTn_INTC;
  output [0:0]RSTn_PERI;
  input clk_dsp1_ce;
  input clk_dsp2_ce;
  input clk_dsp_ce;

  wire CLK;
  wire DPU_CLK;
  wire DSP_CLK;
  wire DSP_CLK1;
  wire DSP_CLK2;
  wire LOCKED;
  wire RSTn;
  wire [0:0]RSTn_DSP;
  wire [0:0]RSTn_INTC;
  wire [0:0]RSTn_PERI;
  wire clk_dsp1_ce;
  wire clk_dsp2_ce;
  wire clk_dsp_ce;

  top_dpu_clk_wiz_0 dpu_clk_wiz
       (.clk_dpu(DPU_CLK),
        .clk_dsp(DSP_CLK),
        .clk_dsp1(DSP_CLK1),
        .clk_dsp1_ce(clk_dsp1_ce),
        .clk_dsp2(DSP_CLK2),
        .clk_dsp2_ce(clk_dsp2_ce),
        .clk_dsp_ce(clk_dsp_ce),
        .clk_in1(CLK),
        .locked(LOCKED),
        .resetn(RSTn));
  top_rst_gen_clk_0 rst_gen_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(LOCKED),
        .ext_reset_in(RSTn),
        .interconnect_aresetn(RSTn_INTC),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(RSTn_PERI),
        .slowest_sync_clk(DPU_CLK));
  top_rst_gen_clk_dsp_0 rst_gen_clk_dsp
       (.aux_reset_in(1'b1),
        .dcm_locked(LOCKED),
        .ext_reset_in(RSTn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(RSTn_DSP),
        .slowest_sync_clk(DSP_CLK));
endmodule

module hier_dpu_ghp_imp_1DUMQPD
   (CLK,
    DPU0_M_AXI_DATA0_araddr,
    DPU0_M_AXI_DATA0_arburst,
    DPU0_M_AXI_DATA0_arcache,
    DPU0_M_AXI_DATA0_arid,
    DPU0_M_AXI_DATA0_arlen,
    DPU0_M_AXI_DATA0_arlock,
    DPU0_M_AXI_DATA0_arprot,
    DPU0_M_AXI_DATA0_arqos,
    DPU0_M_AXI_DATA0_arready,
    DPU0_M_AXI_DATA0_arsize,
    DPU0_M_AXI_DATA0_aruser,
    DPU0_M_AXI_DATA0_arvalid,
    DPU0_M_AXI_DATA0_awaddr,
    DPU0_M_AXI_DATA0_awburst,
    DPU0_M_AXI_DATA0_awcache,
    DPU0_M_AXI_DATA0_awid,
    DPU0_M_AXI_DATA0_awlen,
    DPU0_M_AXI_DATA0_awlock,
    DPU0_M_AXI_DATA0_awprot,
    DPU0_M_AXI_DATA0_awqos,
    DPU0_M_AXI_DATA0_awready,
    DPU0_M_AXI_DATA0_awsize,
    DPU0_M_AXI_DATA0_awuser,
    DPU0_M_AXI_DATA0_awvalid,
    DPU0_M_AXI_DATA0_bid,
    DPU0_M_AXI_DATA0_bready,
    DPU0_M_AXI_DATA0_bresp,
    DPU0_M_AXI_DATA0_bvalid,
    DPU0_M_AXI_DATA0_rdata,
    DPU0_M_AXI_DATA0_rid,
    DPU0_M_AXI_DATA0_rlast,
    DPU0_M_AXI_DATA0_rready,
    DPU0_M_AXI_DATA0_rresp,
    DPU0_M_AXI_DATA0_rvalid,
    DPU0_M_AXI_DATA0_wdata,
    DPU0_M_AXI_DATA0_wlast,
    DPU0_M_AXI_DATA0_wready,
    DPU0_M_AXI_DATA0_wstrb,
    DPU0_M_AXI_DATA0_wvalid,
    DPU0_M_AXI_DATA1_araddr,
    DPU0_M_AXI_DATA1_arburst,
    DPU0_M_AXI_DATA1_arcache,
    DPU0_M_AXI_DATA1_arid,
    DPU0_M_AXI_DATA1_arlen,
    DPU0_M_AXI_DATA1_arlock,
    DPU0_M_AXI_DATA1_arprot,
    DPU0_M_AXI_DATA1_arqos,
    DPU0_M_AXI_DATA1_arready,
    DPU0_M_AXI_DATA1_arsize,
    DPU0_M_AXI_DATA1_aruser,
    DPU0_M_AXI_DATA1_arvalid,
    DPU0_M_AXI_DATA1_awaddr,
    DPU0_M_AXI_DATA1_awburst,
    DPU0_M_AXI_DATA1_awcache,
    DPU0_M_AXI_DATA1_awid,
    DPU0_M_AXI_DATA1_awlen,
    DPU0_M_AXI_DATA1_awlock,
    DPU0_M_AXI_DATA1_awprot,
    DPU0_M_AXI_DATA1_awqos,
    DPU0_M_AXI_DATA1_awready,
    DPU0_M_AXI_DATA1_awsize,
    DPU0_M_AXI_DATA1_awuser,
    DPU0_M_AXI_DATA1_awvalid,
    DPU0_M_AXI_DATA1_bid,
    DPU0_M_AXI_DATA1_bready,
    DPU0_M_AXI_DATA1_bresp,
    DPU0_M_AXI_DATA1_bvalid,
    DPU0_M_AXI_DATA1_rdata,
    DPU0_M_AXI_DATA1_rid,
    DPU0_M_AXI_DATA1_rlast,
    DPU0_M_AXI_DATA1_rready,
    DPU0_M_AXI_DATA1_rresp,
    DPU0_M_AXI_DATA1_rvalid,
    DPU0_M_AXI_DATA1_wdata,
    DPU0_M_AXI_DATA1_wlast,
    DPU0_M_AXI_DATA1_wready,
    DPU0_M_AXI_DATA1_wstrb,
    DPU0_M_AXI_DATA1_wvalid,
    DPU0_M_AXI_INSTR_araddr,
    DPU0_M_AXI_INSTR_arburst,
    DPU0_M_AXI_INSTR_arcache,
    DPU0_M_AXI_INSTR_arid,
    DPU0_M_AXI_INSTR_arlen,
    DPU0_M_AXI_INSTR_arlock,
    DPU0_M_AXI_INSTR_arprot,
    DPU0_M_AXI_INSTR_arqos,
    DPU0_M_AXI_INSTR_arready,
    DPU0_M_AXI_INSTR_arsize,
    DPU0_M_AXI_INSTR_aruser,
    DPU0_M_AXI_INSTR_arvalid,
    DPU0_M_AXI_INSTR_awaddr,
    DPU0_M_AXI_INSTR_awburst,
    DPU0_M_AXI_INSTR_awcache,
    DPU0_M_AXI_INSTR_awid,
    DPU0_M_AXI_INSTR_awlen,
    DPU0_M_AXI_INSTR_awlock,
    DPU0_M_AXI_INSTR_awprot,
    DPU0_M_AXI_INSTR_awqos,
    DPU0_M_AXI_INSTR_awready,
    DPU0_M_AXI_INSTR_awsize,
    DPU0_M_AXI_INSTR_awuser,
    DPU0_M_AXI_INSTR_awvalid,
    DPU0_M_AXI_INSTR_bid,
    DPU0_M_AXI_INSTR_bready,
    DPU0_M_AXI_INSTR_bresp,
    DPU0_M_AXI_INSTR_bvalid,
    DPU0_M_AXI_INSTR_rdata,
    DPU0_M_AXI_INSTR_rid,
    DPU0_M_AXI_INSTR_rlast,
    DPU0_M_AXI_INSTR_rready,
    DPU0_M_AXI_INSTR_rresp,
    DPU0_M_AXI_INSTR_rvalid,
    DPU0_M_AXI_INSTR_wdata,
    DPU0_M_AXI_INSTR_wlast,
    DPU0_M_AXI_INSTR_wready,
    DPU0_M_AXI_INSTR_wstrb,
    DPU0_M_AXI_INSTR_wvalid,
    DPU1_M_AXI_DATA0_araddr,
    DPU1_M_AXI_DATA0_arburst,
    DPU1_M_AXI_DATA0_arcache,
    DPU1_M_AXI_DATA0_arid,
    DPU1_M_AXI_DATA0_arlen,
    DPU1_M_AXI_DATA0_arlock,
    DPU1_M_AXI_DATA0_arprot,
    DPU1_M_AXI_DATA0_arqos,
    DPU1_M_AXI_DATA0_arready,
    DPU1_M_AXI_DATA0_arsize,
    DPU1_M_AXI_DATA0_aruser,
    DPU1_M_AXI_DATA0_arvalid,
    DPU1_M_AXI_DATA0_awaddr,
    DPU1_M_AXI_DATA0_awburst,
    DPU1_M_AXI_DATA0_awcache,
    DPU1_M_AXI_DATA0_awid,
    DPU1_M_AXI_DATA0_awlen,
    DPU1_M_AXI_DATA0_awlock,
    DPU1_M_AXI_DATA0_awprot,
    DPU1_M_AXI_DATA0_awqos,
    DPU1_M_AXI_DATA0_awready,
    DPU1_M_AXI_DATA0_awsize,
    DPU1_M_AXI_DATA0_awuser,
    DPU1_M_AXI_DATA0_awvalid,
    DPU1_M_AXI_DATA0_bid,
    DPU1_M_AXI_DATA0_bready,
    DPU1_M_AXI_DATA0_bresp,
    DPU1_M_AXI_DATA0_bvalid,
    DPU1_M_AXI_DATA0_rdata,
    DPU1_M_AXI_DATA0_rid,
    DPU1_M_AXI_DATA0_rlast,
    DPU1_M_AXI_DATA0_rready,
    DPU1_M_AXI_DATA0_rresp,
    DPU1_M_AXI_DATA0_rvalid,
    DPU1_M_AXI_DATA0_wdata,
    DPU1_M_AXI_DATA0_wlast,
    DPU1_M_AXI_DATA0_wready,
    DPU1_M_AXI_DATA0_wstrb,
    DPU1_M_AXI_DATA0_wvalid,
    DPU1_M_AXI_DATA1_araddr,
    DPU1_M_AXI_DATA1_arburst,
    DPU1_M_AXI_DATA1_arcache,
    DPU1_M_AXI_DATA1_arid,
    DPU1_M_AXI_DATA1_arlen,
    DPU1_M_AXI_DATA1_arlock,
    DPU1_M_AXI_DATA1_arprot,
    DPU1_M_AXI_DATA1_arqos,
    DPU1_M_AXI_DATA1_arready,
    DPU1_M_AXI_DATA1_arsize,
    DPU1_M_AXI_DATA1_aruser,
    DPU1_M_AXI_DATA1_arvalid,
    DPU1_M_AXI_DATA1_awaddr,
    DPU1_M_AXI_DATA1_awburst,
    DPU1_M_AXI_DATA1_awcache,
    DPU1_M_AXI_DATA1_awid,
    DPU1_M_AXI_DATA1_awlen,
    DPU1_M_AXI_DATA1_awlock,
    DPU1_M_AXI_DATA1_awprot,
    DPU1_M_AXI_DATA1_awqos,
    DPU1_M_AXI_DATA1_awready,
    DPU1_M_AXI_DATA1_awsize,
    DPU1_M_AXI_DATA1_awuser,
    DPU1_M_AXI_DATA1_awvalid,
    DPU1_M_AXI_DATA1_bid,
    DPU1_M_AXI_DATA1_bready,
    DPU1_M_AXI_DATA1_bresp,
    DPU1_M_AXI_DATA1_bvalid,
    DPU1_M_AXI_DATA1_rdata,
    DPU1_M_AXI_DATA1_rid,
    DPU1_M_AXI_DATA1_rlast,
    DPU1_M_AXI_DATA1_rready,
    DPU1_M_AXI_DATA1_rresp,
    DPU1_M_AXI_DATA1_rvalid,
    DPU1_M_AXI_DATA1_wdata,
    DPU1_M_AXI_DATA1_wlast,
    DPU1_M_AXI_DATA1_wready,
    DPU1_M_AXI_DATA1_wstrb,
    DPU1_M_AXI_DATA1_wvalid,
    DPU1_M_AXI_INSTR_araddr,
    DPU1_M_AXI_INSTR_arburst,
    DPU1_M_AXI_INSTR_arcache,
    DPU1_M_AXI_INSTR_arid,
    DPU1_M_AXI_INSTR_arlen,
    DPU1_M_AXI_INSTR_arlock,
    DPU1_M_AXI_INSTR_arprot,
    DPU1_M_AXI_INSTR_arqos,
    DPU1_M_AXI_INSTR_arready,
    DPU1_M_AXI_INSTR_arsize,
    DPU1_M_AXI_INSTR_aruser,
    DPU1_M_AXI_INSTR_arvalid,
    DPU1_M_AXI_INSTR_awaddr,
    DPU1_M_AXI_INSTR_awburst,
    DPU1_M_AXI_INSTR_awcache,
    DPU1_M_AXI_INSTR_awid,
    DPU1_M_AXI_INSTR_awlen,
    DPU1_M_AXI_INSTR_awlock,
    DPU1_M_AXI_INSTR_awprot,
    DPU1_M_AXI_INSTR_awqos,
    DPU1_M_AXI_INSTR_awready,
    DPU1_M_AXI_INSTR_awsize,
    DPU1_M_AXI_INSTR_awuser,
    DPU1_M_AXI_INSTR_awvalid,
    DPU1_M_AXI_INSTR_bid,
    DPU1_M_AXI_INSTR_bready,
    DPU1_M_AXI_INSTR_bresp,
    DPU1_M_AXI_INSTR_bvalid,
    DPU1_M_AXI_INSTR_rdata,
    DPU1_M_AXI_INSTR_rid,
    DPU1_M_AXI_INSTR_rlast,
    DPU1_M_AXI_INSTR_rready,
    DPU1_M_AXI_INSTR_rresp,
    DPU1_M_AXI_INSTR_rvalid,
    DPU1_M_AXI_INSTR_wdata,
    DPU1_M_AXI_INSTR_wlast,
    DPU1_M_AXI_INSTR_wready,
    DPU1_M_AXI_INSTR_wstrb,
    DPU1_M_AXI_INSTR_wvalid,
    DPU2_M_AXI_DATA0_araddr,
    DPU2_M_AXI_DATA0_arburst,
    DPU2_M_AXI_DATA0_arcache,
    DPU2_M_AXI_DATA0_arid,
    DPU2_M_AXI_DATA0_arlen,
    DPU2_M_AXI_DATA0_arlock,
    DPU2_M_AXI_DATA0_arprot,
    DPU2_M_AXI_DATA0_arqos,
    DPU2_M_AXI_DATA0_arready,
    DPU2_M_AXI_DATA0_arsize,
    DPU2_M_AXI_DATA0_aruser,
    DPU2_M_AXI_DATA0_arvalid,
    DPU2_M_AXI_DATA0_awaddr,
    DPU2_M_AXI_DATA0_awburst,
    DPU2_M_AXI_DATA0_awcache,
    DPU2_M_AXI_DATA0_awid,
    DPU2_M_AXI_DATA0_awlen,
    DPU2_M_AXI_DATA0_awlock,
    DPU2_M_AXI_DATA0_awprot,
    DPU2_M_AXI_DATA0_awqos,
    DPU2_M_AXI_DATA0_awready,
    DPU2_M_AXI_DATA0_awsize,
    DPU2_M_AXI_DATA0_awuser,
    DPU2_M_AXI_DATA0_awvalid,
    DPU2_M_AXI_DATA0_bid,
    DPU2_M_AXI_DATA0_bready,
    DPU2_M_AXI_DATA0_bresp,
    DPU2_M_AXI_DATA0_bvalid,
    DPU2_M_AXI_DATA0_rdata,
    DPU2_M_AXI_DATA0_rid,
    DPU2_M_AXI_DATA0_rlast,
    DPU2_M_AXI_DATA0_rready,
    DPU2_M_AXI_DATA0_rresp,
    DPU2_M_AXI_DATA0_rvalid,
    DPU2_M_AXI_DATA0_wdata,
    DPU2_M_AXI_DATA0_wlast,
    DPU2_M_AXI_DATA0_wready,
    DPU2_M_AXI_DATA0_wstrb,
    DPU2_M_AXI_DATA0_wvalid,
    DPU2_M_AXI_DATA1_araddr,
    DPU2_M_AXI_DATA1_arburst,
    DPU2_M_AXI_DATA1_arcache,
    DPU2_M_AXI_DATA1_arid,
    DPU2_M_AXI_DATA1_arlen,
    DPU2_M_AXI_DATA1_arlock,
    DPU2_M_AXI_DATA1_arprot,
    DPU2_M_AXI_DATA1_arqos,
    DPU2_M_AXI_DATA1_arready,
    DPU2_M_AXI_DATA1_arsize,
    DPU2_M_AXI_DATA1_aruser,
    DPU2_M_AXI_DATA1_arvalid,
    DPU2_M_AXI_DATA1_awaddr,
    DPU2_M_AXI_DATA1_awburst,
    DPU2_M_AXI_DATA1_awcache,
    DPU2_M_AXI_DATA1_awid,
    DPU2_M_AXI_DATA1_awlen,
    DPU2_M_AXI_DATA1_awlock,
    DPU2_M_AXI_DATA1_awprot,
    DPU2_M_AXI_DATA1_awqos,
    DPU2_M_AXI_DATA1_awready,
    DPU2_M_AXI_DATA1_awsize,
    DPU2_M_AXI_DATA1_awuser,
    DPU2_M_AXI_DATA1_awvalid,
    DPU2_M_AXI_DATA1_bid,
    DPU2_M_AXI_DATA1_bready,
    DPU2_M_AXI_DATA1_bresp,
    DPU2_M_AXI_DATA1_bvalid,
    DPU2_M_AXI_DATA1_rdata,
    DPU2_M_AXI_DATA1_rid,
    DPU2_M_AXI_DATA1_rlast,
    DPU2_M_AXI_DATA1_rready,
    DPU2_M_AXI_DATA1_rresp,
    DPU2_M_AXI_DATA1_rvalid,
    DPU2_M_AXI_DATA1_wdata,
    DPU2_M_AXI_DATA1_wlast,
    DPU2_M_AXI_DATA1_wready,
    DPU2_M_AXI_DATA1_wstrb,
    DPU2_M_AXI_DATA1_wvalid,
    DPU2_M_AXI_INSTR_araddr,
    DPU2_M_AXI_INSTR_arburst,
    DPU2_M_AXI_INSTR_arcache,
    DPU2_M_AXI_INSTR_arid,
    DPU2_M_AXI_INSTR_arlen,
    DPU2_M_AXI_INSTR_arlock,
    DPU2_M_AXI_INSTR_arprot,
    DPU2_M_AXI_INSTR_arqos,
    DPU2_M_AXI_INSTR_arready,
    DPU2_M_AXI_INSTR_arsize,
    DPU2_M_AXI_INSTR_aruser,
    DPU2_M_AXI_INSTR_arvalid,
    DPU2_M_AXI_INSTR_awaddr,
    DPU2_M_AXI_INSTR_awburst,
    DPU2_M_AXI_INSTR_awcache,
    DPU2_M_AXI_INSTR_awid,
    DPU2_M_AXI_INSTR_awlen,
    DPU2_M_AXI_INSTR_awlock,
    DPU2_M_AXI_INSTR_awprot,
    DPU2_M_AXI_INSTR_awqos,
    DPU2_M_AXI_INSTR_awready,
    DPU2_M_AXI_INSTR_awsize,
    DPU2_M_AXI_INSTR_awuser,
    DPU2_M_AXI_INSTR_awvalid,
    DPU2_M_AXI_INSTR_bid,
    DPU2_M_AXI_INSTR_bready,
    DPU2_M_AXI_INSTR_bresp,
    DPU2_M_AXI_INSTR_bvalid,
    DPU2_M_AXI_INSTR_rdata,
    DPU2_M_AXI_INSTR_rid,
    DPU2_M_AXI_INSTR_rlast,
    DPU2_M_AXI_INSTR_rready,
    DPU2_M_AXI_INSTR_rresp,
    DPU2_M_AXI_INSTR_rvalid,
    DPU2_M_AXI_INSTR_wdata,
    DPU2_M_AXI_INSTR_wlast,
    DPU2_M_AXI_INSTR_wready,
    DPU2_M_AXI_INSTR_wstrb,
    DPU2_M_AXI_INSTR_wvalid,
    GHP_CLK_I,
    GHP_CLK_O,
    GHP_RSTn,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_HP2_FPD_araddr,
    M_AXI_HP2_FPD_arburst,
    M_AXI_HP2_FPD_arcache,
    M_AXI_HP2_FPD_arid,
    M_AXI_HP2_FPD_arlen,
    M_AXI_HP2_FPD_arlock,
    M_AXI_HP2_FPD_arprot,
    M_AXI_HP2_FPD_arqos,
    M_AXI_HP2_FPD_arready,
    M_AXI_HP2_FPD_arsize,
    M_AXI_HP2_FPD_aruser,
    M_AXI_HP2_FPD_arvalid,
    M_AXI_HP2_FPD_awaddr,
    M_AXI_HP2_FPD_awburst,
    M_AXI_HP2_FPD_awcache,
    M_AXI_HP2_FPD_awid,
    M_AXI_HP2_FPD_awlen,
    M_AXI_HP2_FPD_awlock,
    M_AXI_HP2_FPD_awprot,
    M_AXI_HP2_FPD_awqos,
    M_AXI_HP2_FPD_awready,
    M_AXI_HP2_FPD_awsize,
    M_AXI_HP2_FPD_awuser,
    M_AXI_HP2_FPD_awvalid,
    M_AXI_HP2_FPD_bid,
    M_AXI_HP2_FPD_bready,
    M_AXI_HP2_FPD_bresp,
    M_AXI_HP2_FPD_bvalid,
    M_AXI_HP2_FPD_rdata,
    M_AXI_HP2_FPD_rid,
    M_AXI_HP2_FPD_rlast,
    M_AXI_HP2_FPD_rready,
    M_AXI_HP2_FPD_rresp,
    M_AXI_HP2_FPD_rvalid,
    M_AXI_HP2_FPD_wdata,
    M_AXI_HP2_FPD_wlast,
    M_AXI_HP2_FPD_wready,
    M_AXI_HP2_FPD_wstrb,
    M_AXI_HP2_FPD_wvalid,
    M_AXI_HP3_FPD_araddr,
    M_AXI_HP3_FPD_arburst,
    M_AXI_HP3_FPD_arcache,
    M_AXI_HP3_FPD_arid,
    M_AXI_HP3_FPD_arlen,
    M_AXI_HP3_FPD_arlock,
    M_AXI_HP3_FPD_arprot,
    M_AXI_HP3_FPD_arqos,
    M_AXI_HP3_FPD_arready,
    M_AXI_HP3_FPD_arsize,
    M_AXI_HP3_FPD_aruser,
    M_AXI_HP3_FPD_arvalid,
    M_AXI_HP3_FPD_awaddr,
    M_AXI_HP3_FPD_awburst,
    M_AXI_HP3_FPD_awcache,
    M_AXI_HP3_FPD_awid,
    M_AXI_HP3_FPD_awlen,
    M_AXI_HP3_FPD_awlock,
    M_AXI_HP3_FPD_awprot,
    M_AXI_HP3_FPD_awqos,
    M_AXI_HP3_FPD_awready,
    M_AXI_HP3_FPD_awsize,
    M_AXI_HP3_FPD_awuser,
    M_AXI_HP3_FPD_awvalid,
    M_AXI_HP3_FPD_bid,
    M_AXI_HP3_FPD_bready,
    M_AXI_HP3_FPD_bresp,
    M_AXI_HP3_FPD_bvalid,
    M_AXI_HP3_FPD_rdata,
    M_AXI_HP3_FPD_rid,
    M_AXI_HP3_FPD_rlast,
    M_AXI_HP3_FPD_rready,
    M_AXI_HP3_FPD_rresp,
    M_AXI_HP3_FPD_rvalid,
    M_AXI_HP3_FPD_wdata,
    M_AXI_HP3_FPD_wlast,
    M_AXI_HP3_FPD_wready,
    M_AXI_HP3_FPD_wstrb,
    M_AXI_HP3_FPD_wvalid,
    M_AXI_HPC0_FPD_araddr,
    M_AXI_HPC0_FPD_arburst,
    M_AXI_HPC0_FPD_arcache,
    M_AXI_HPC0_FPD_arid,
    M_AXI_HPC0_FPD_arlen,
    M_AXI_HPC0_FPD_arlock,
    M_AXI_HPC0_FPD_arprot,
    M_AXI_HPC0_FPD_arqos,
    M_AXI_HPC0_FPD_arready,
    M_AXI_HPC0_FPD_arsize,
    M_AXI_HPC0_FPD_aruser,
    M_AXI_HPC0_FPD_arvalid,
    M_AXI_HPC0_FPD_awaddr,
    M_AXI_HPC0_FPD_awburst,
    M_AXI_HPC0_FPD_awcache,
    M_AXI_HPC0_FPD_awid,
    M_AXI_HPC0_FPD_awlen,
    M_AXI_HPC0_FPD_awlock,
    M_AXI_HPC0_FPD_awprot,
    M_AXI_HPC0_FPD_awqos,
    M_AXI_HPC0_FPD_awready,
    M_AXI_HPC0_FPD_awsize,
    M_AXI_HPC0_FPD_awuser,
    M_AXI_HPC0_FPD_awvalid,
    M_AXI_HPC0_FPD_bid,
    M_AXI_HPC0_FPD_bready,
    M_AXI_HPC0_FPD_bresp,
    M_AXI_HPC0_FPD_bvalid,
    M_AXI_HPC0_FPD_rdata,
    M_AXI_HPC0_FPD_rid,
    M_AXI_HPC0_FPD_rlast,
    M_AXI_HPC0_FPD_rready,
    M_AXI_HPC0_FPD_rresp,
    M_AXI_HPC0_FPD_rvalid,
    M_AXI_HPC0_FPD_wdata,
    M_AXI_HPC0_FPD_wlast,
    M_AXI_HPC0_FPD_wready,
    M_AXI_HPC0_FPD_wstrb,
    M_AXI_HPC0_FPD_wvalid,
    M_AXI_HPC1_FPD_araddr,
    M_AXI_HPC1_FPD_arburst,
    M_AXI_HPC1_FPD_arcache,
    M_AXI_HPC1_FPD_arid,
    M_AXI_HPC1_FPD_arlen,
    M_AXI_HPC1_FPD_arlock,
    M_AXI_HPC1_FPD_arprot,
    M_AXI_HPC1_FPD_arqos,
    M_AXI_HPC1_FPD_arready,
    M_AXI_HPC1_FPD_arsize,
    M_AXI_HPC1_FPD_aruser,
    M_AXI_HPC1_FPD_arvalid,
    M_AXI_HPC1_FPD_awaddr,
    M_AXI_HPC1_FPD_awburst,
    M_AXI_HPC1_FPD_awcache,
    M_AXI_HPC1_FPD_awid,
    M_AXI_HPC1_FPD_awlen,
    M_AXI_HPC1_FPD_awlock,
    M_AXI_HPC1_FPD_awprot,
    M_AXI_HPC1_FPD_awqos,
    M_AXI_HPC1_FPD_awready,
    M_AXI_HPC1_FPD_awsize,
    M_AXI_HPC1_FPD_awuser,
    M_AXI_HPC1_FPD_awvalid,
    M_AXI_HPC1_FPD_bid,
    M_AXI_HPC1_FPD_bready,
    M_AXI_HPC1_FPD_bresp,
    M_AXI_HPC1_FPD_bvalid,
    M_AXI_HPC1_FPD_rdata,
    M_AXI_HPC1_FPD_rid,
    M_AXI_HPC1_FPD_rlast,
    M_AXI_HPC1_FPD_rready,
    M_AXI_HPC1_FPD_rresp,
    M_AXI_HPC1_FPD_rvalid,
    M_AXI_HPC1_FPD_wdata,
    M_AXI_HPC1_FPD_wlast,
    M_AXI_HPC1_FPD_wready,
    M_AXI_HPC1_FPD_wstrb,
    M_AXI_HPC1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn_INTC,
    RSTn_PERI,
    SFM_M_AXI_araddr,
    SFM_M_AXI_arburst,
    SFM_M_AXI_arcache,
    SFM_M_AXI_arid,
    SFM_M_AXI_arlen,
    SFM_M_AXI_arlock,
    SFM_M_AXI_arprot,
    SFM_M_AXI_arqos,
    SFM_M_AXI_arready,
    SFM_M_AXI_arsize,
    SFM_M_AXI_aruser,
    SFM_M_AXI_arvalid,
    SFM_M_AXI_awaddr,
    SFM_M_AXI_awburst,
    SFM_M_AXI_awcache,
    SFM_M_AXI_awid,
    SFM_M_AXI_awlen,
    SFM_M_AXI_awlock,
    SFM_M_AXI_awprot,
    SFM_M_AXI_awqos,
    SFM_M_AXI_awready,
    SFM_M_AXI_awsize,
    SFM_M_AXI_awuser,
    SFM_M_AXI_awvalid,
    SFM_M_AXI_bid,
    SFM_M_AXI_bready,
    SFM_M_AXI_bresp,
    SFM_M_AXI_bvalid,
    SFM_M_AXI_rdata,
    SFM_M_AXI_rid,
    SFM_M_AXI_rlast,
    SFM_M_AXI_rready,
    SFM_M_AXI_rresp,
    SFM_M_AXI_rvalid,
    SFM_M_AXI_wdata,
    SFM_M_AXI_wlast,
    SFM_M_AXI_wready,
    SFM_M_AXI_wstrb,
    SFM_M_AXI_wvalid);
  input CLK;
  input [39:0]DPU0_M_AXI_DATA0_araddr;
  input [1:0]DPU0_M_AXI_DATA0_arburst;
  input [3:0]DPU0_M_AXI_DATA0_arcache;
  input [1:0]DPU0_M_AXI_DATA0_arid;
  input [7:0]DPU0_M_AXI_DATA0_arlen;
  input DPU0_M_AXI_DATA0_arlock;
  input [2:0]DPU0_M_AXI_DATA0_arprot;
  input [3:0]DPU0_M_AXI_DATA0_arqos;
  output DPU0_M_AXI_DATA0_arready;
  input [2:0]DPU0_M_AXI_DATA0_arsize;
  input DPU0_M_AXI_DATA0_aruser;
  input DPU0_M_AXI_DATA0_arvalid;
  input [39:0]DPU0_M_AXI_DATA0_awaddr;
  input [1:0]DPU0_M_AXI_DATA0_awburst;
  input [3:0]DPU0_M_AXI_DATA0_awcache;
  input [1:0]DPU0_M_AXI_DATA0_awid;
  input [7:0]DPU0_M_AXI_DATA0_awlen;
  input DPU0_M_AXI_DATA0_awlock;
  input [2:0]DPU0_M_AXI_DATA0_awprot;
  input [3:0]DPU0_M_AXI_DATA0_awqos;
  output DPU0_M_AXI_DATA0_awready;
  input [2:0]DPU0_M_AXI_DATA0_awsize;
  input DPU0_M_AXI_DATA0_awuser;
  input DPU0_M_AXI_DATA0_awvalid;
  output [5:0]DPU0_M_AXI_DATA0_bid;
  input DPU0_M_AXI_DATA0_bready;
  output [1:0]DPU0_M_AXI_DATA0_bresp;
  output DPU0_M_AXI_DATA0_bvalid;
  output [127:0]DPU0_M_AXI_DATA0_rdata;
  output [5:0]DPU0_M_AXI_DATA0_rid;
  output DPU0_M_AXI_DATA0_rlast;
  input DPU0_M_AXI_DATA0_rready;
  output [1:0]DPU0_M_AXI_DATA0_rresp;
  output DPU0_M_AXI_DATA0_rvalid;
  input [127:0]DPU0_M_AXI_DATA0_wdata;
  input DPU0_M_AXI_DATA0_wlast;
  output DPU0_M_AXI_DATA0_wready;
  input [15:0]DPU0_M_AXI_DATA0_wstrb;
  input DPU0_M_AXI_DATA0_wvalid;
  input [39:0]DPU0_M_AXI_DATA1_araddr;
  input [1:0]DPU0_M_AXI_DATA1_arburst;
  input [3:0]DPU0_M_AXI_DATA1_arcache;
  input [1:0]DPU0_M_AXI_DATA1_arid;
  input [7:0]DPU0_M_AXI_DATA1_arlen;
  input DPU0_M_AXI_DATA1_arlock;
  input [2:0]DPU0_M_AXI_DATA1_arprot;
  input [3:0]DPU0_M_AXI_DATA1_arqos;
  output DPU0_M_AXI_DATA1_arready;
  input [2:0]DPU0_M_AXI_DATA1_arsize;
  input DPU0_M_AXI_DATA1_aruser;
  input DPU0_M_AXI_DATA1_arvalid;
  input [39:0]DPU0_M_AXI_DATA1_awaddr;
  input [1:0]DPU0_M_AXI_DATA1_awburst;
  input [3:0]DPU0_M_AXI_DATA1_awcache;
  input [1:0]DPU0_M_AXI_DATA1_awid;
  input [7:0]DPU0_M_AXI_DATA1_awlen;
  input DPU0_M_AXI_DATA1_awlock;
  input [2:0]DPU0_M_AXI_DATA1_awprot;
  input [3:0]DPU0_M_AXI_DATA1_awqos;
  output DPU0_M_AXI_DATA1_awready;
  input [2:0]DPU0_M_AXI_DATA1_awsize;
  input DPU0_M_AXI_DATA1_awuser;
  input DPU0_M_AXI_DATA1_awvalid;
  output [5:0]DPU0_M_AXI_DATA1_bid;
  input DPU0_M_AXI_DATA1_bready;
  output [1:0]DPU0_M_AXI_DATA1_bresp;
  output DPU0_M_AXI_DATA1_bvalid;
  output [127:0]DPU0_M_AXI_DATA1_rdata;
  output [5:0]DPU0_M_AXI_DATA1_rid;
  output DPU0_M_AXI_DATA1_rlast;
  input DPU0_M_AXI_DATA1_rready;
  output [1:0]DPU0_M_AXI_DATA1_rresp;
  output DPU0_M_AXI_DATA1_rvalid;
  input [127:0]DPU0_M_AXI_DATA1_wdata;
  input DPU0_M_AXI_DATA1_wlast;
  output DPU0_M_AXI_DATA1_wready;
  input [15:0]DPU0_M_AXI_DATA1_wstrb;
  input DPU0_M_AXI_DATA1_wvalid;
  input [39:0]DPU0_M_AXI_INSTR_araddr;
  input [1:0]DPU0_M_AXI_INSTR_arburst;
  input [3:0]DPU0_M_AXI_INSTR_arcache;
  input [1:0]DPU0_M_AXI_INSTR_arid;
  input [7:0]DPU0_M_AXI_INSTR_arlen;
  input [0:0]DPU0_M_AXI_INSTR_arlock;
  input [2:0]DPU0_M_AXI_INSTR_arprot;
  input [3:0]DPU0_M_AXI_INSTR_arqos;
  output DPU0_M_AXI_INSTR_arready;
  input [2:0]DPU0_M_AXI_INSTR_arsize;
  input [0:0]DPU0_M_AXI_INSTR_aruser;
  input DPU0_M_AXI_INSTR_arvalid;
  input [39:0]DPU0_M_AXI_INSTR_awaddr;
  input [1:0]DPU0_M_AXI_INSTR_awburst;
  input [3:0]DPU0_M_AXI_INSTR_awcache;
  input [1:0]DPU0_M_AXI_INSTR_awid;
  input [7:0]DPU0_M_AXI_INSTR_awlen;
  input [0:0]DPU0_M_AXI_INSTR_awlock;
  input [2:0]DPU0_M_AXI_INSTR_awprot;
  input [3:0]DPU0_M_AXI_INSTR_awqos;
  output DPU0_M_AXI_INSTR_awready;
  input [2:0]DPU0_M_AXI_INSTR_awsize;
  input [0:0]DPU0_M_AXI_INSTR_awuser;
  input DPU0_M_AXI_INSTR_awvalid;
  output [3:0]DPU0_M_AXI_INSTR_bid;
  input DPU0_M_AXI_INSTR_bready;
  output [1:0]DPU0_M_AXI_INSTR_bresp;
  output DPU0_M_AXI_INSTR_bvalid;
  output [31:0]DPU0_M_AXI_INSTR_rdata;
  output [3:0]DPU0_M_AXI_INSTR_rid;
  output DPU0_M_AXI_INSTR_rlast;
  input DPU0_M_AXI_INSTR_rready;
  output [1:0]DPU0_M_AXI_INSTR_rresp;
  output DPU0_M_AXI_INSTR_rvalid;
  input [31:0]DPU0_M_AXI_INSTR_wdata;
  input DPU0_M_AXI_INSTR_wlast;
  output DPU0_M_AXI_INSTR_wready;
  input [3:0]DPU0_M_AXI_INSTR_wstrb;
  input DPU0_M_AXI_INSTR_wvalid;
  input [39:0]DPU1_M_AXI_DATA0_araddr;
  input [1:0]DPU1_M_AXI_DATA0_arburst;
  input [3:0]DPU1_M_AXI_DATA0_arcache;
  input [1:0]DPU1_M_AXI_DATA0_arid;
  input [7:0]DPU1_M_AXI_DATA0_arlen;
  input DPU1_M_AXI_DATA0_arlock;
  input [2:0]DPU1_M_AXI_DATA0_arprot;
  input [3:0]DPU1_M_AXI_DATA0_arqos;
  output DPU1_M_AXI_DATA0_arready;
  input [2:0]DPU1_M_AXI_DATA0_arsize;
  input DPU1_M_AXI_DATA0_aruser;
  input DPU1_M_AXI_DATA0_arvalid;
  input [39:0]DPU1_M_AXI_DATA0_awaddr;
  input [1:0]DPU1_M_AXI_DATA0_awburst;
  input [3:0]DPU1_M_AXI_DATA0_awcache;
  input [1:0]DPU1_M_AXI_DATA0_awid;
  input [7:0]DPU1_M_AXI_DATA0_awlen;
  input DPU1_M_AXI_DATA0_awlock;
  input [2:0]DPU1_M_AXI_DATA0_awprot;
  input [3:0]DPU1_M_AXI_DATA0_awqos;
  output DPU1_M_AXI_DATA0_awready;
  input [2:0]DPU1_M_AXI_DATA0_awsize;
  input DPU1_M_AXI_DATA0_awuser;
  input DPU1_M_AXI_DATA0_awvalid;
  output [5:0]DPU1_M_AXI_DATA0_bid;
  input DPU1_M_AXI_DATA0_bready;
  output [1:0]DPU1_M_AXI_DATA0_bresp;
  output DPU1_M_AXI_DATA0_bvalid;
  output [127:0]DPU1_M_AXI_DATA0_rdata;
  output [5:0]DPU1_M_AXI_DATA0_rid;
  output DPU1_M_AXI_DATA0_rlast;
  input DPU1_M_AXI_DATA0_rready;
  output [1:0]DPU1_M_AXI_DATA0_rresp;
  output DPU1_M_AXI_DATA0_rvalid;
  input [127:0]DPU1_M_AXI_DATA0_wdata;
  input DPU1_M_AXI_DATA0_wlast;
  output DPU1_M_AXI_DATA0_wready;
  input [15:0]DPU1_M_AXI_DATA0_wstrb;
  input DPU1_M_AXI_DATA0_wvalid;
  input [39:0]DPU1_M_AXI_DATA1_araddr;
  input [1:0]DPU1_M_AXI_DATA1_arburst;
  input [3:0]DPU1_M_AXI_DATA1_arcache;
  input [1:0]DPU1_M_AXI_DATA1_arid;
  input [7:0]DPU1_M_AXI_DATA1_arlen;
  input DPU1_M_AXI_DATA1_arlock;
  input [2:0]DPU1_M_AXI_DATA1_arprot;
  input [3:0]DPU1_M_AXI_DATA1_arqos;
  output DPU1_M_AXI_DATA1_arready;
  input [2:0]DPU1_M_AXI_DATA1_arsize;
  input DPU1_M_AXI_DATA1_aruser;
  input DPU1_M_AXI_DATA1_arvalid;
  input [39:0]DPU1_M_AXI_DATA1_awaddr;
  input [1:0]DPU1_M_AXI_DATA1_awburst;
  input [3:0]DPU1_M_AXI_DATA1_awcache;
  input [1:0]DPU1_M_AXI_DATA1_awid;
  input [7:0]DPU1_M_AXI_DATA1_awlen;
  input DPU1_M_AXI_DATA1_awlock;
  input [2:0]DPU1_M_AXI_DATA1_awprot;
  input [3:0]DPU1_M_AXI_DATA1_awqos;
  output DPU1_M_AXI_DATA1_awready;
  input [2:0]DPU1_M_AXI_DATA1_awsize;
  input DPU1_M_AXI_DATA1_awuser;
  input DPU1_M_AXI_DATA1_awvalid;
  output [5:0]DPU1_M_AXI_DATA1_bid;
  input DPU1_M_AXI_DATA1_bready;
  output [1:0]DPU1_M_AXI_DATA1_bresp;
  output DPU1_M_AXI_DATA1_bvalid;
  output [127:0]DPU1_M_AXI_DATA1_rdata;
  output [5:0]DPU1_M_AXI_DATA1_rid;
  output DPU1_M_AXI_DATA1_rlast;
  input DPU1_M_AXI_DATA1_rready;
  output [1:0]DPU1_M_AXI_DATA1_rresp;
  output DPU1_M_AXI_DATA1_rvalid;
  input [127:0]DPU1_M_AXI_DATA1_wdata;
  input DPU1_M_AXI_DATA1_wlast;
  output DPU1_M_AXI_DATA1_wready;
  input [15:0]DPU1_M_AXI_DATA1_wstrb;
  input DPU1_M_AXI_DATA1_wvalid;
  input [39:0]DPU1_M_AXI_INSTR_araddr;
  input [1:0]DPU1_M_AXI_INSTR_arburst;
  input [3:0]DPU1_M_AXI_INSTR_arcache;
  input [1:0]DPU1_M_AXI_INSTR_arid;
  input [7:0]DPU1_M_AXI_INSTR_arlen;
  input [0:0]DPU1_M_AXI_INSTR_arlock;
  input [2:0]DPU1_M_AXI_INSTR_arprot;
  input [3:0]DPU1_M_AXI_INSTR_arqos;
  output DPU1_M_AXI_INSTR_arready;
  input [2:0]DPU1_M_AXI_INSTR_arsize;
  input [0:0]DPU1_M_AXI_INSTR_aruser;
  input DPU1_M_AXI_INSTR_arvalid;
  input [39:0]DPU1_M_AXI_INSTR_awaddr;
  input [1:0]DPU1_M_AXI_INSTR_awburst;
  input [3:0]DPU1_M_AXI_INSTR_awcache;
  input [1:0]DPU1_M_AXI_INSTR_awid;
  input [7:0]DPU1_M_AXI_INSTR_awlen;
  input [0:0]DPU1_M_AXI_INSTR_awlock;
  input [2:0]DPU1_M_AXI_INSTR_awprot;
  input [3:0]DPU1_M_AXI_INSTR_awqos;
  output DPU1_M_AXI_INSTR_awready;
  input [2:0]DPU1_M_AXI_INSTR_awsize;
  input [0:0]DPU1_M_AXI_INSTR_awuser;
  input DPU1_M_AXI_INSTR_awvalid;
  output [3:0]DPU1_M_AXI_INSTR_bid;
  input DPU1_M_AXI_INSTR_bready;
  output [1:0]DPU1_M_AXI_INSTR_bresp;
  output DPU1_M_AXI_INSTR_bvalid;
  output [31:0]DPU1_M_AXI_INSTR_rdata;
  output [3:0]DPU1_M_AXI_INSTR_rid;
  output DPU1_M_AXI_INSTR_rlast;
  input DPU1_M_AXI_INSTR_rready;
  output [1:0]DPU1_M_AXI_INSTR_rresp;
  output DPU1_M_AXI_INSTR_rvalid;
  input [31:0]DPU1_M_AXI_INSTR_wdata;
  input DPU1_M_AXI_INSTR_wlast;
  output DPU1_M_AXI_INSTR_wready;
  input [3:0]DPU1_M_AXI_INSTR_wstrb;
  input DPU1_M_AXI_INSTR_wvalid;
  input [39:0]DPU2_M_AXI_DATA0_araddr;
  input [1:0]DPU2_M_AXI_DATA0_arburst;
  input [3:0]DPU2_M_AXI_DATA0_arcache;
  input [1:0]DPU2_M_AXI_DATA0_arid;
  input [7:0]DPU2_M_AXI_DATA0_arlen;
  input DPU2_M_AXI_DATA0_arlock;
  input [2:0]DPU2_M_AXI_DATA0_arprot;
  input [3:0]DPU2_M_AXI_DATA0_arqos;
  output DPU2_M_AXI_DATA0_arready;
  input [2:0]DPU2_M_AXI_DATA0_arsize;
  input DPU2_M_AXI_DATA0_aruser;
  input DPU2_M_AXI_DATA0_arvalid;
  input [39:0]DPU2_M_AXI_DATA0_awaddr;
  input [1:0]DPU2_M_AXI_DATA0_awburst;
  input [3:0]DPU2_M_AXI_DATA0_awcache;
  input [1:0]DPU2_M_AXI_DATA0_awid;
  input [7:0]DPU2_M_AXI_DATA0_awlen;
  input DPU2_M_AXI_DATA0_awlock;
  input [2:0]DPU2_M_AXI_DATA0_awprot;
  input [3:0]DPU2_M_AXI_DATA0_awqos;
  output DPU2_M_AXI_DATA0_awready;
  input [2:0]DPU2_M_AXI_DATA0_awsize;
  input DPU2_M_AXI_DATA0_awuser;
  input DPU2_M_AXI_DATA0_awvalid;
  output [5:0]DPU2_M_AXI_DATA0_bid;
  input DPU2_M_AXI_DATA0_bready;
  output [1:0]DPU2_M_AXI_DATA0_bresp;
  output DPU2_M_AXI_DATA0_bvalid;
  output [127:0]DPU2_M_AXI_DATA0_rdata;
  output [5:0]DPU2_M_AXI_DATA0_rid;
  output DPU2_M_AXI_DATA0_rlast;
  input DPU2_M_AXI_DATA0_rready;
  output [1:0]DPU2_M_AXI_DATA0_rresp;
  output DPU2_M_AXI_DATA0_rvalid;
  input [127:0]DPU2_M_AXI_DATA0_wdata;
  input DPU2_M_AXI_DATA0_wlast;
  output DPU2_M_AXI_DATA0_wready;
  input [15:0]DPU2_M_AXI_DATA0_wstrb;
  input DPU2_M_AXI_DATA0_wvalid;
  input [39:0]DPU2_M_AXI_DATA1_araddr;
  input [1:0]DPU2_M_AXI_DATA1_arburst;
  input [3:0]DPU2_M_AXI_DATA1_arcache;
  input [1:0]DPU2_M_AXI_DATA1_arid;
  input [7:0]DPU2_M_AXI_DATA1_arlen;
  input [0:0]DPU2_M_AXI_DATA1_arlock;
  input [2:0]DPU2_M_AXI_DATA1_arprot;
  input [3:0]DPU2_M_AXI_DATA1_arqos;
  output DPU2_M_AXI_DATA1_arready;
  input [2:0]DPU2_M_AXI_DATA1_arsize;
  input [0:0]DPU2_M_AXI_DATA1_aruser;
  input DPU2_M_AXI_DATA1_arvalid;
  input [39:0]DPU2_M_AXI_DATA1_awaddr;
  input [1:0]DPU2_M_AXI_DATA1_awburst;
  input [3:0]DPU2_M_AXI_DATA1_awcache;
  input [1:0]DPU2_M_AXI_DATA1_awid;
  input [7:0]DPU2_M_AXI_DATA1_awlen;
  input [0:0]DPU2_M_AXI_DATA1_awlock;
  input [2:0]DPU2_M_AXI_DATA1_awprot;
  input [3:0]DPU2_M_AXI_DATA1_awqos;
  output DPU2_M_AXI_DATA1_awready;
  input [2:0]DPU2_M_AXI_DATA1_awsize;
  input [0:0]DPU2_M_AXI_DATA1_awuser;
  input DPU2_M_AXI_DATA1_awvalid;
  output [2:0]DPU2_M_AXI_DATA1_bid;
  input DPU2_M_AXI_DATA1_bready;
  output [1:0]DPU2_M_AXI_DATA1_bresp;
  output DPU2_M_AXI_DATA1_bvalid;
  output [127:0]DPU2_M_AXI_DATA1_rdata;
  output [2:0]DPU2_M_AXI_DATA1_rid;
  output DPU2_M_AXI_DATA1_rlast;
  input DPU2_M_AXI_DATA1_rready;
  output [1:0]DPU2_M_AXI_DATA1_rresp;
  output DPU2_M_AXI_DATA1_rvalid;
  input [127:0]DPU2_M_AXI_DATA1_wdata;
  input DPU2_M_AXI_DATA1_wlast;
  output DPU2_M_AXI_DATA1_wready;
  input [15:0]DPU2_M_AXI_DATA1_wstrb;
  input DPU2_M_AXI_DATA1_wvalid;
  input [39:0]DPU2_M_AXI_INSTR_araddr;
  input [1:0]DPU2_M_AXI_INSTR_arburst;
  input [3:0]DPU2_M_AXI_INSTR_arcache;
  input [1:0]DPU2_M_AXI_INSTR_arid;
  input [7:0]DPU2_M_AXI_INSTR_arlen;
  input [0:0]DPU2_M_AXI_INSTR_arlock;
  input [2:0]DPU2_M_AXI_INSTR_arprot;
  input [3:0]DPU2_M_AXI_INSTR_arqos;
  output DPU2_M_AXI_INSTR_arready;
  input [2:0]DPU2_M_AXI_INSTR_arsize;
  input [0:0]DPU2_M_AXI_INSTR_aruser;
  input DPU2_M_AXI_INSTR_arvalid;
  input [39:0]DPU2_M_AXI_INSTR_awaddr;
  input [1:0]DPU2_M_AXI_INSTR_awburst;
  input [3:0]DPU2_M_AXI_INSTR_awcache;
  input [1:0]DPU2_M_AXI_INSTR_awid;
  input [7:0]DPU2_M_AXI_INSTR_awlen;
  input [0:0]DPU2_M_AXI_INSTR_awlock;
  input [2:0]DPU2_M_AXI_INSTR_awprot;
  input [3:0]DPU2_M_AXI_INSTR_awqos;
  output DPU2_M_AXI_INSTR_awready;
  input [2:0]DPU2_M_AXI_INSTR_awsize;
  input [0:0]DPU2_M_AXI_INSTR_awuser;
  input DPU2_M_AXI_INSTR_awvalid;
  output [3:0]DPU2_M_AXI_INSTR_bid;
  input DPU2_M_AXI_INSTR_bready;
  output [1:0]DPU2_M_AXI_INSTR_bresp;
  output DPU2_M_AXI_INSTR_bvalid;
  output [31:0]DPU2_M_AXI_INSTR_rdata;
  output [3:0]DPU2_M_AXI_INSTR_rid;
  output DPU2_M_AXI_INSTR_rlast;
  input DPU2_M_AXI_INSTR_rready;
  output [1:0]DPU2_M_AXI_INSTR_rresp;
  output DPU2_M_AXI_INSTR_rvalid;
  input [31:0]DPU2_M_AXI_INSTR_wdata;
  input DPU2_M_AXI_INSTR_wlast;
  output DPU2_M_AXI_INSTR_wready;
  input [3:0]DPU2_M_AXI_INSTR_wstrb;
  input DPU2_M_AXI_INSTR_wvalid;
  input GHP_CLK_I;
  output GHP_CLK_O;
  input GHP_RSTn;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_HP2_FPD_araddr;
  output [1:0]M_AXI_HP2_FPD_arburst;
  output [3:0]M_AXI_HP2_FPD_arcache;
  output [1:0]M_AXI_HP2_FPD_arid;
  output [7:0]M_AXI_HP2_FPD_arlen;
  output M_AXI_HP2_FPD_arlock;
  output [2:0]M_AXI_HP2_FPD_arprot;
  output [3:0]M_AXI_HP2_FPD_arqos;
  input M_AXI_HP2_FPD_arready;
  output [2:0]M_AXI_HP2_FPD_arsize;
  output M_AXI_HP2_FPD_aruser;
  output M_AXI_HP2_FPD_arvalid;
  output [39:0]M_AXI_HP2_FPD_awaddr;
  output [1:0]M_AXI_HP2_FPD_awburst;
  output [3:0]M_AXI_HP2_FPD_awcache;
  output [1:0]M_AXI_HP2_FPD_awid;
  output [7:0]M_AXI_HP2_FPD_awlen;
  output M_AXI_HP2_FPD_awlock;
  output [2:0]M_AXI_HP2_FPD_awprot;
  output [3:0]M_AXI_HP2_FPD_awqos;
  input M_AXI_HP2_FPD_awready;
  output [2:0]M_AXI_HP2_FPD_awsize;
  output M_AXI_HP2_FPD_awuser;
  output M_AXI_HP2_FPD_awvalid;
  input [5:0]M_AXI_HP2_FPD_bid;
  output M_AXI_HP2_FPD_bready;
  input [1:0]M_AXI_HP2_FPD_bresp;
  input M_AXI_HP2_FPD_bvalid;
  input [127:0]M_AXI_HP2_FPD_rdata;
  input [5:0]M_AXI_HP2_FPD_rid;
  input M_AXI_HP2_FPD_rlast;
  output M_AXI_HP2_FPD_rready;
  input [1:0]M_AXI_HP2_FPD_rresp;
  input M_AXI_HP2_FPD_rvalid;
  output [127:0]M_AXI_HP2_FPD_wdata;
  output M_AXI_HP2_FPD_wlast;
  input M_AXI_HP2_FPD_wready;
  output [15:0]M_AXI_HP2_FPD_wstrb;
  output M_AXI_HP2_FPD_wvalid;
  output [39:0]M_AXI_HP3_FPD_araddr;
  output [1:0]M_AXI_HP3_FPD_arburst;
  output [3:0]M_AXI_HP3_FPD_arcache;
  output [1:0]M_AXI_HP3_FPD_arid;
  output [7:0]M_AXI_HP3_FPD_arlen;
  output M_AXI_HP3_FPD_arlock;
  output [2:0]M_AXI_HP3_FPD_arprot;
  output [3:0]M_AXI_HP3_FPD_arqos;
  input M_AXI_HP3_FPD_arready;
  output [2:0]M_AXI_HP3_FPD_arsize;
  output M_AXI_HP3_FPD_aruser;
  output M_AXI_HP3_FPD_arvalid;
  output [39:0]M_AXI_HP3_FPD_awaddr;
  output [1:0]M_AXI_HP3_FPD_awburst;
  output [3:0]M_AXI_HP3_FPD_awcache;
  output [1:0]M_AXI_HP3_FPD_awid;
  output [7:0]M_AXI_HP3_FPD_awlen;
  output M_AXI_HP3_FPD_awlock;
  output [2:0]M_AXI_HP3_FPD_awprot;
  output [3:0]M_AXI_HP3_FPD_awqos;
  input M_AXI_HP3_FPD_awready;
  output [2:0]M_AXI_HP3_FPD_awsize;
  output M_AXI_HP3_FPD_awuser;
  output M_AXI_HP3_FPD_awvalid;
  input [5:0]M_AXI_HP3_FPD_bid;
  output M_AXI_HP3_FPD_bready;
  input [1:0]M_AXI_HP3_FPD_bresp;
  input M_AXI_HP3_FPD_bvalid;
  input [127:0]M_AXI_HP3_FPD_rdata;
  input [5:0]M_AXI_HP3_FPD_rid;
  input M_AXI_HP3_FPD_rlast;
  output M_AXI_HP3_FPD_rready;
  input [1:0]M_AXI_HP3_FPD_rresp;
  input M_AXI_HP3_FPD_rvalid;
  output [127:0]M_AXI_HP3_FPD_wdata;
  output M_AXI_HP3_FPD_wlast;
  input M_AXI_HP3_FPD_wready;
  output [15:0]M_AXI_HP3_FPD_wstrb;
  output M_AXI_HP3_FPD_wvalid;
  output [39:0]M_AXI_HPC0_FPD_araddr;
  output [1:0]M_AXI_HPC0_FPD_arburst;
  output [3:0]M_AXI_HPC0_FPD_arcache;
  output [1:0]M_AXI_HPC0_FPD_arid;
  output [7:0]M_AXI_HPC0_FPD_arlen;
  output M_AXI_HPC0_FPD_arlock;
  output [2:0]M_AXI_HPC0_FPD_arprot;
  output [3:0]M_AXI_HPC0_FPD_arqos;
  input M_AXI_HPC0_FPD_arready;
  output [2:0]M_AXI_HPC0_FPD_arsize;
  output M_AXI_HPC0_FPD_aruser;
  output M_AXI_HPC0_FPD_arvalid;
  output [39:0]M_AXI_HPC0_FPD_awaddr;
  output [1:0]M_AXI_HPC0_FPD_awburst;
  output [3:0]M_AXI_HPC0_FPD_awcache;
  output [1:0]M_AXI_HPC0_FPD_awid;
  output [7:0]M_AXI_HPC0_FPD_awlen;
  output M_AXI_HPC0_FPD_awlock;
  output [2:0]M_AXI_HPC0_FPD_awprot;
  output [3:0]M_AXI_HPC0_FPD_awqos;
  input M_AXI_HPC0_FPD_awready;
  output [2:0]M_AXI_HPC0_FPD_awsize;
  output M_AXI_HPC0_FPD_awuser;
  output M_AXI_HPC0_FPD_awvalid;
  input [5:0]M_AXI_HPC0_FPD_bid;
  output M_AXI_HPC0_FPD_bready;
  input [1:0]M_AXI_HPC0_FPD_bresp;
  input M_AXI_HPC0_FPD_bvalid;
  input [127:0]M_AXI_HPC0_FPD_rdata;
  input [5:0]M_AXI_HPC0_FPD_rid;
  input M_AXI_HPC0_FPD_rlast;
  output M_AXI_HPC0_FPD_rready;
  input [1:0]M_AXI_HPC0_FPD_rresp;
  input M_AXI_HPC0_FPD_rvalid;
  output [127:0]M_AXI_HPC0_FPD_wdata;
  output M_AXI_HPC0_FPD_wlast;
  input M_AXI_HPC0_FPD_wready;
  output [15:0]M_AXI_HPC0_FPD_wstrb;
  output M_AXI_HPC0_FPD_wvalid;
  output [39:0]M_AXI_HPC1_FPD_araddr;
  output [1:0]M_AXI_HPC1_FPD_arburst;
  output [3:0]M_AXI_HPC1_FPD_arcache;
  output [2:0]M_AXI_HPC1_FPD_arid;
  output [7:0]M_AXI_HPC1_FPD_arlen;
  output M_AXI_HPC1_FPD_arlock;
  output [2:0]M_AXI_HPC1_FPD_arprot;
  output [3:0]M_AXI_HPC1_FPD_arqos;
  input M_AXI_HPC1_FPD_arready;
  output [2:0]M_AXI_HPC1_FPD_arsize;
  output M_AXI_HPC1_FPD_aruser;
  output M_AXI_HPC1_FPD_arvalid;
  output [39:0]M_AXI_HPC1_FPD_awaddr;
  output [1:0]M_AXI_HPC1_FPD_awburst;
  output [3:0]M_AXI_HPC1_FPD_awcache;
  output [2:0]M_AXI_HPC1_FPD_awid;
  output [7:0]M_AXI_HPC1_FPD_awlen;
  output M_AXI_HPC1_FPD_awlock;
  output [2:0]M_AXI_HPC1_FPD_awprot;
  output [3:0]M_AXI_HPC1_FPD_awqos;
  input M_AXI_HPC1_FPD_awready;
  output [2:0]M_AXI_HPC1_FPD_awsize;
  output M_AXI_HPC1_FPD_awuser;
  output M_AXI_HPC1_FPD_awvalid;
  input [5:0]M_AXI_HPC1_FPD_bid;
  output M_AXI_HPC1_FPD_bready;
  input [1:0]M_AXI_HPC1_FPD_bresp;
  input M_AXI_HPC1_FPD_bvalid;
  input [127:0]M_AXI_HPC1_FPD_rdata;
  input [5:0]M_AXI_HPC1_FPD_rid;
  input M_AXI_HPC1_FPD_rlast;
  output M_AXI_HPC1_FPD_rready;
  input [1:0]M_AXI_HPC1_FPD_rresp;
  input M_AXI_HPC1_FPD_rvalid;
  output [127:0]M_AXI_HPC1_FPD_wdata;
  output M_AXI_HPC1_FPD_wlast;
  input M_AXI_HPC1_FPD_wready;
  output [15:0]M_AXI_HPC1_FPD_wstrb;
  output M_AXI_HPC1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [3:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [3:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn_INTC;
  input RSTn_PERI;
  input [39:0]SFM_M_AXI_araddr;
  input [1:0]SFM_M_AXI_arburst;
  input [3:0]SFM_M_AXI_arcache;
  input [1:0]SFM_M_AXI_arid;
  input [7:0]SFM_M_AXI_arlen;
  input [0:0]SFM_M_AXI_arlock;
  input [2:0]SFM_M_AXI_arprot;
  input [3:0]SFM_M_AXI_arqos;
  output SFM_M_AXI_arready;
  input [2:0]SFM_M_AXI_arsize;
  input [0:0]SFM_M_AXI_aruser;
  input SFM_M_AXI_arvalid;
  input [39:0]SFM_M_AXI_awaddr;
  input [1:0]SFM_M_AXI_awburst;
  input [3:0]SFM_M_AXI_awcache;
  input [1:0]SFM_M_AXI_awid;
  input [7:0]SFM_M_AXI_awlen;
  input [0:0]SFM_M_AXI_awlock;
  input [2:0]SFM_M_AXI_awprot;
  input [3:0]SFM_M_AXI_awqos;
  output SFM_M_AXI_awready;
  input [2:0]SFM_M_AXI_awsize;
  input [0:0]SFM_M_AXI_awuser;
  input SFM_M_AXI_awvalid;
  output [2:0]SFM_M_AXI_bid;
  input SFM_M_AXI_bready;
  output [1:0]SFM_M_AXI_bresp;
  output SFM_M_AXI_bvalid;
  output [127:0]SFM_M_AXI_rdata;
  output [2:0]SFM_M_AXI_rid;
  output SFM_M_AXI_rlast;
  input SFM_M_AXI_rready;
  output [1:0]SFM_M_AXI_rresp;
  output SFM_M_AXI_rvalid;
  input [127:0]SFM_M_AXI_wdata;
  input SFM_M_AXI_wlast;
  output SFM_M_AXI_wready;
  input [15:0]SFM_M_AXI_wstrb;
  input SFM_M_AXI_wvalid;

  wire CLK;
  wire DPU0_M_AXI_DATA0_arready;
  wire DPU0_M_AXI_DATA0_awready;
  wire [5:0]DPU0_M_AXI_DATA0_bid;
  wire [1:0]DPU0_M_AXI_DATA0_bresp;
  wire DPU0_M_AXI_DATA0_bvalid;
  wire [127:0]DPU0_M_AXI_DATA0_rdata;
  wire [5:0]DPU0_M_AXI_DATA0_rid;
  wire DPU0_M_AXI_DATA0_rlast;
  wire [1:0]DPU0_M_AXI_DATA0_rresp;
  wire DPU0_M_AXI_DATA0_rvalid;
  wire DPU0_M_AXI_DATA0_wready;
  wire DPU0_M_AXI_DATA1_arready;
  wire DPU0_M_AXI_DATA1_awready;
  wire [5:0]DPU0_M_AXI_DATA1_bid;
  wire [1:0]DPU0_M_AXI_DATA1_bresp;
  wire DPU0_M_AXI_DATA1_bvalid;
  wire [127:0]DPU0_M_AXI_DATA1_rdata;
  wire [5:0]DPU0_M_AXI_DATA1_rid;
  wire DPU0_M_AXI_DATA1_rlast;
  wire [1:0]DPU0_M_AXI_DATA1_rresp;
  wire DPU0_M_AXI_DATA1_rvalid;
  wire DPU0_M_AXI_DATA1_wready;
  wire [39:0]DPU0_M_AXI_INSTR_araddr;
  wire [1:0]DPU0_M_AXI_INSTR_arburst;
  wire [3:0]DPU0_M_AXI_INSTR_arcache;
  wire [1:0]DPU0_M_AXI_INSTR_arid;
  wire [7:0]DPU0_M_AXI_INSTR_arlen;
  wire [0:0]DPU0_M_AXI_INSTR_arlock;
  wire [2:0]DPU0_M_AXI_INSTR_arprot;
  wire [3:0]DPU0_M_AXI_INSTR_arqos;
  wire DPU0_M_AXI_INSTR_arready;
  wire [2:0]DPU0_M_AXI_INSTR_arsize;
  wire [0:0]DPU0_M_AXI_INSTR_aruser;
  wire DPU0_M_AXI_INSTR_arvalid;
  wire [39:0]DPU0_M_AXI_INSTR_awaddr;
  wire [1:0]DPU0_M_AXI_INSTR_awburst;
  wire [3:0]DPU0_M_AXI_INSTR_awcache;
  wire [1:0]DPU0_M_AXI_INSTR_awid;
  wire [7:0]DPU0_M_AXI_INSTR_awlen;
  wire [0:0]DPU0_M_AXI_INSTR_awlock;
  wire [2:0]DPU0_M_AXI_INSTR_awprot;
  wire [3:0]DPU0_M_AXI_INSTR_awqos;
  wire DPU0_M_AXI_INSTR_awready;
  wire [2:0]DPU0_M_AXI_INSTR_awsize;
  wire [0:0]DPU0_M_AXI_INSTR_awuser;
  wire DPU0_M_AXI_INSTR_awvalid;
  wire [3:0]DPU0_M_AXI_INSTR_bid;
  wire DPU0_M_AXI_INSTR_bready;
  wire [1:0]DPU0_M_AXI_INSTR_bresp;
  wire DPU0_M_AXI_INSTR_bvalid;
  wire [31:0]DPU0_M_AXI_INSTR_rdata;
  wire [3:0]DPU0_M_AXI_INSTR_rid;
  wire DPU0_M_AXI_INSTR_rlast;
  wire DPU0_M_AXI_INSTR_rready;
  wire [1:0]DPU0_M_AXI_INSTR_rresp;
  wire DPU0_M_AXI_INSTR_rvalid;
  wire [31:0]DPU0_M_AXI_INSTR_wdata;
  wire DPU0_M_AXI_INSTR_wlast;
  wire DPU0_M_AXI_INSTR_wready;
  wire [3:0]DPU0_M_AXI_INSTR_wstrb;
  wire DPU0_M_AXI_INSTR_wvalid;
  wire DPU1_M_AXI_DATA0_arready;
  wire DPU1_M_AXI_DATA0_awready;
  wire [5:0]DPU1_M_AXI_DATA0_bid;
  wire [1:0]DPU1_M_AXI_DATA0_bresp;
  wire DPU1_M_AXI_DATA0_bvalid;
  wire [127:0]DPU1_M_AXI_DATA0_rdata;
  wire [5:0]DPU1_M_AXI_DATA0_rid;
  wire DPU1_M_AXI_DATA0_rlast;
  wire [1:0]DPU1_M_AXI_DATA0_rresp;
  wire DPU1_M_AXI_DATA0_rvalid;
  wire DPU1_M_AXI_DATA0_wready;
  wire DPU1_M_AXI_DATA1_arready;
  wire DPU1_M_AXI_DATA1_awready;
  wire [5:0]DPU1_M_AXI_DATA1_bid;
  wire [1:0]DPU1_M_AXI_DATA1_bresp;
  wire DPU1_M_AXI_DATA1_bvalid;
  wire [127:0]DPU1_M_AXI_DATA1_rdata;
  wire [5:0]DPU1_M_AXI_DATA1_rid;
  wire DPU1_M_AXI_DATA1_rlast;
  wire [1:0]DPU1_M_AXI_DATA1_rresp;
  wire DPU1_M_AXI_DATA1_rvalid;
  wire DPU1_M_AXI_DATA1_wready;
  wire [39:0]DPU1_M_AXI_INSTR_araddr;
  wire [1:0]DPU1_M_AXI_INSTR_arburst;
  wire [3:0]DPU1_M_AXI_INSTR_arcache;
  wire [1:0]DPU1_M_AXI_INSTR_arid;
  wire [7:0]DPU1_M_AXI_INSTR_arlen;
  wire [0:0]DPU1_M_AXI_INSTR_arlock;
  wire [2:0]DPU1_M_AXI_INSTR_arprot;
  wire [3:0]DPU1_M_AXI_INSTR_arqos;
  wire DPU1_M_AXI_INSTR_arready;
  wire [2:0]DPU1_M_AXI_INSTR_arsize;
  wire [0:0]DPU1_M_AXI_INSTR_aruser;
  wire DPU1_M_AXI_INSTR_arvalid;
  wire [39:0]DPU1_M_AXI_INSTR_awaddr;
  wire [1:0]DPU1_M_AXI_INSTR_awburst;
  wire [3:0]DPU1_M_AXI_INSTR_awcache;
  wire [1:0]DPU1_M_AXI_INSTR_awid;
  wire [7:0]DPU1_M_AXI_INSTR_awlen;
  wire [0:0]DPU1_M_AXI_INSTR_awlock;
  wire [2:0]DPU1_M_AXI_INSTR_awprot;
  wire [3:0]DPU1_M_AXI_INSTR_awqos;
  wire DPU1_M_AXI_INSTR_awready;
  wire [2:0]DPU1_M_AXI_INSTR_awsize;
  wire [0:0]DPU1_M_AXI_INSTR_awuser;
  wire DPU1_M_AXI_INSTR_awvalid;
  wire [3:0]DPU1_M_AXI_INSTR_bid;
  wire DPU1_M_AXI_INSTR_bready;
  wire [1:0]DPU1_M_AXI_INSTR_bresp;
  wire DPU1_M_AXI_INSTR_bvalid;
  wire [31:0]DPU1_M_AXI_INSTR_rdata;
  wire [3:0]DPU1_M_AXI_INSTR_rid;
  wire DPU1_M_AXI_INSTR_rlast;
  wire DPU1_M_AXI_INSTR_rready;
  wire [1:0]DPU1_M_AXI_INSTR_rresp;
  wire DPU1_M_AXI_INSTR_rvalid;
  wire [31:0]DPU1_M_AXI_INSTR_wdata;
  wire DPU1_M_AXI_INSTR_wlast;
  wire DPU1_M_AXI_INSTR_wready;
  wire [3:0]DPU1_M_AXI_INSTR_wstrb;
  wire DPU1_M_AXI_INSTR_wvalid;
  wire DPU2_M_AXI_DATA0_arready;
  wire DPU2_M_AXI_DATA0_awready;
  wire [5:0]DPU2_M_AXI_DATA0_bid;
  wire [1:0]DPU2_M_AXI_DATA0_bresp;
  wire DPU2_M_AXI_DATA0_bvalid;
  wire [127:0]DPU2_M_AXI_DATA0_rdata;
  wire [5:0]DPU2_M_AXI_DATA0_rid;
  wire DPU2_M_AXI_DATA0_rlast;
  wire [1:0]DPU2_M_AXI_DATA0_rresp;
  wire DPU2_M_AXI_DATA0_rvalid;
  wire DPU2_M_AXI_DATA0_wready;
  wire [39:0]DPU2_M_AXI_DATA1_araddr;
  wire [1:0]DPU2_M_AXI_DATA1_arburst;
  wire [3:0]DPU2_M_AXI_DATA1_arcache;
  wire [1:0]DPU2_M_AXI_DATA1_arid;
  wire [7:0]DPU2_M_AXI_DATA1_arlen;
  wire [0:0]DPU2_M_AXI_DATA1_arlock;
  wire [2:0]DPU2_M_AXI_DATA1_arprot;
  wire [3:0]DPU2_M_AXI_DATA1_arqos;
  wire DPU2_M_AXI_DATA1_arready;
  wire [2:0]DPU2_M_AXI_DATA1_arsize;
  wire [0:0]DPU2_M_AXI_DATA1_aruser;
  wire DPU2_M_AXI_DATA1_arvalid;
  wire [39:0]DPU2_M_AXI_DATA1_awaddr;
  wire [1:0]DPU2_M_AXI_DATA1_awburst;
  wire [3:0]DPU2_M_AXI_DATA1_awcache;
  wire [1:0]DPU2_M_AXI_DATA1_awid;
  wire [7:0]DPU2_M_AXI_DATA1_awlen;
  wire [0:0]DPU2_M_AXI_DATA1_awlock;
  wire [2:0]DPU2_M_AXI_DATA1_awprot;
  wire [3:0]DPU2_M_AXI_DATA1_awqos;
  wire DPU2_M_AXI_DATA1_awready;
  wire [2:0]DPU2_M_AXI_DATA1_awsize;
  wire [0:0]DPU2_M_AXI_DATA1_awuser;
  wire DPU2_M_AXI_DATA1_awvalid;
  wire [2:0]DPU2_M_AXI_DATA1_bid;
  wire DPU2_M_AXI_DATA1_bready;
  wire [1:0]DPU2_M_AXI_DATA1_bresp;
  wire DPU2_M_AXI_DATA1_bvalid;
  wire [127:0]DPU2_M_AXI_DATA1_rdata;
  wire [2:0]DPU2_M_AXI_DATA1_rid;
  wire DPU2_M_AXI_DATA1_rlast;
  wire DPU2_M_AXI_DATA1_rready;
  wire [1:0]DPU2_M_AXI_DATA1_rresp;
  wire DPU2_M_AXI_DATA1_rvalid;
  wire [127:0]DPU2_M_AXI_DATA1_wdata;
  wire DPU2_M_AXI_DATA1_wlast;
  wire DPU2_M_AXI_DATA1_wready;
  wire [15:0]DPU2_M_AXI_DATA1_wstrb;
  wire DPU2_M_AXI_DATA1_wvalid;
  wire [39:0]DPU2_M_AXI_INSTR_araddr;
  wire [1:0]DPU2_M_AXI_INSTR_arburst;
  wire [3:0]DPU2_M_AXI_INSTR_arcache;
  wire [1:0]DPU2_M_AXI_INSTR_arid;
  wire [7:0]DPU2_M_AXI_INSTR_arlen;
  wire [0:0]DPU2_M_AXI_INSTR_arlock;
  wire [2:0]DPU2_M_AXI_INSTR_arprot;
  wire [3:0]DPU2_M_AXI_INSTR_arqos;
  wire DPU2_M_AXI_INSTR_arready;
  wire [2:0]DPU2_M_AXI_INSTR_arsize;
  wire [0:0]DPU2_M_AXI_INSTR_aruser;
  wire DPU2_M_AXI_INSTR_arvalid;
  wire [39:0]DPU2_M_AXI_INSTR_awaddr;
  wire [1:0]DPU2_M_AXI_INSTR_awburst;
  wire [3:0]DPU2_M_AXI_INSTR_awcache;
  wire [1:0]DPU2_M_AXI_INSTR_awid;
  wire [7:0]DPU2_M_AXI_INSTR_awlen;
  wire [0:0]DPU2_M_AXI_INSTR_awlock;
  wire [2:0]DPU2_M_AXI_INSTR_awprot;
  wire [3:0]DPU2_M_AXI_INSTR_awqos;
  wire DPU2_M_AXI_INSTR_awready;
  wire [2:0]DPU2_M_AXI_INSTR_awsize;
  wire [0:0]DPU2_M_AXI_INSTR_awuser;
  wire DPU2_M_AXI_INSTR_awvalid;
  wire [3:0]DPU2_M_AXI_INSTR_bid;
  wire DPU2_M_AXI_INSTR_bready;
  wire [1:0]DPU2_M_AXI_INSTR_bresp;
  wire DPU2_M_AXI_INSTR_bvalid;
  wire [31:0]DPU2_M_AXI_INSTR_rdata;
  wire [3:0]DPU2_M_AXI_INSTR_rid;
  wire DPU2_M_AXI_INSTR_rlast;
  wire DPU2_M_AXI_INSTR_rready;
  wire [1:0]DPU2_M_AXI_INSTR_rresp;
  wire DPU2_M_AXI_INSTR_rvalid;
  wire [31:0]DPU2_M_AXI_INSTR_wdata;
  wire DPU2_M_AXI_INSTR_wlast;
  wire DPU2_M_AXI_INSTR_wready;
  wire [3:0]DPU2_M_AXI_INSTR_wstrb;
  wire DPU2_M_AXI_INSTR_wvalid;
  wire GHP_CLK_O;
  wire GHP_RSTn;
  wire [39:0]M_AXI_HP0_FPD_araddr;
  wire [1:0]M_AXI_HP0_FPD_arburst;
  wire [3:0]M_AXI_HP0_FPD_arcache;
  wire [1:0]M_AXI_HP0_FPD_arid;
  wire [7:0]M_AXI_HP0_FPD_arlen;
  wire M_AXI_HP0_FPD_arlock;
  wire [2:0]M_AXI_HP0_FPD_arprot;
  wire [3:0]M_AXI_HP0_FPD_arqos;
  wire [2:0]M_AXI_HP0_FPD_arsize;
  wire M_AXI_HP0_FPD_aruser;
  wire M_AXI_HP0_FPD_arvalid;
  wire [39:0]M_AXI_HP0_FPD_awaddr;
  wire [1:0]M_AXI_HP0_FPD_awburst;
  wire [3:0]M_AXI_HP0_FPD_awcache;
  wire [1:0]M_AXI_HP0_FPD_awid;
  wire [7:0]M_AXI_HP0_FPD_awlen;
  wire M_AXI_HP0_FPD_awlock;
  wire [2:0]M_AXI_HP0_FPD_awprot;
  wire [3:0]M_AXI_HP0_FPD_awqos;
  wire [2:0]M_AXI_HP0_FPD_awsize;
  wire M_AXI_HP0_FPD_awuser;
  wire M_AXI_HP0_FPD_awvalid;
  wire M_AXI_HP0_FPD_bready;
  wire M_AXI_HP0_FPD_rready;
  wire [127:0]M_AXI_HP0_FPD_wdata;
  wire M_AXI_HP0_FPD_wlast;
  wire [15:0]M_AXI_HP0_FPD_wstrb;
  wire M_AXI_HP0_FPD_wvalid;
  wire [39:0]M_AXI_HP1_FPD_araddr;
  wire [1:0]M_AXI_HP1_FPD_arburst;
  wire [3:0]M_AXI_HP1_FPD_arcache;
  wire [1:0]M_AXI_HP1_FPD_arid;
  wire [7:0]M_AXI_HP1_FPD_arlen;
  wire M_AXI_HP1_FPD_arlock;
  wire [2:0]M_AXI_HP1_FPD_arprot;
  wire [3:0]M_AXI_HP1_FPD_arqos;
  wire [2:0]M_AXI_HP1_FPD_arsize;
  wire M_AXI_HP1_FPD_aruser;
  wire M_AXI_HP1_FPD_arvalid;
  wire [39:0]M_AXI_HP1_FPD_awaddr;
  wire [1:0]M_AXI_HP1_FPD_awburst;
  wire [3:0]M_AXI_HP1_FPD_awcache;
  wire [1:0]M_AXI_HP1_FPD_awid;
  wire [7:0]M_AXI_HP1_FPD_awlen;
  wire M_AXI_HP1_FPD_awlock;
  wire [2:0]M_AXI_HP1_FPD_awprot;
  wire [3:0]M_AXI_HP1_FPD_awqos;
  wire [2:0]M_AXI_HP1_FPD_awsize;
  wire M_AXI_HP1_FPD_awuser;
  wire M_AXI_HP1_FPD_awvalid;
  wire M_AXI_HP1_FPD_bready;
  wire M_AXI_HP1_FPD_rready;
  wire [127:0]M_AXI_HP1_FPD_wdata;
  wire M_AXI_HP1_FPD_wlast;
  wire [15:0]M_AXI_HP1_FPD_wstrb;
  wire M_AXI_HP1_FPD_wvalid;
  wire [39:0]M_AXI_HP2_FPD_araddr;
  wire [1:0]M_AXI_HP2_FPD_arburst;
  wire [3:0]M_AXI_HP2_FPD_arcache;
  wire [1:0]M_AXI_HP2_FPD_arid;
  wire [7:0]M_AXI_HP2_FPD_arlen;
  wire M_AXI_HP2_FPD_arlock;
  wire [2:0]M_AXI_HP2_FPD_arprot;
  wire [3:0]M_AXI_HP2_FPD_arqos;
  wire [2:0]M_AXI_HP2_FPD_arsize;
  wire M_AXI_HP2_FPD_aruser;
  wire M_AXI_HP2_FPD_arvalid;
  wire [39:0]M_AXI_HP2_FPD_awaddr;
  wire [1:0]M_AXI_HP2_FPD_awburst;
  wire [3:0]M_AXI_HP2_FPD_awcache;
  wire [1:0]M_AXI_HP2_FPD_awid;
  wire [7:0]M_AXI_HP2_FPD_awlen;
  wire M_AXI_HP2_FPD_awlock;
  wire [2:0]M_AXI_HP2_FPD_awprot;
  wire [3:0]M_AXI_HP2_FPD_awqos;
  wire [2:0]M_AXI_HP2_FPD_awsize;
  wire M_AXI_HP2_FPD_awuser;
  wire M_AXI_HP2_FPD_awvalid;
  wire M_AXI_HP2_FPD_bready;
  wire M_AXI_HP2_FPD_rready;
  wire [127:0]M_AXI_HP2_FPD_wdata;
  wire M_AXI_HP2_FPD_wlast;
  wire [15:0]M_AXI_HP2_FPD_wstrb;
  wire M_AXI_HP2_FPD_wvalid;
  wire [39:0]M_AXI_HP3_FPD_araddr;
  wire [1:0]M_AXI_HP3_FPD_arburst;
  wire [3:0]M_AXI_HP3_FPD_arcache;
  wire [1:0]M_AXI_HP3_FPD_arid;
  wire [7:0]M_AXI_HP3_FPD_arlen;
  wire M_AXI_HP3_FPD_arlock;
  wire [2:0]M_AXI_HP3_FPD_arprot;
  wire [3:0]M_AXI_HP3_FPD_arqos;
  wire [2:0]M_AXI_HP3_FPD_arsize;
  wire M_AXI_HP3_FPD_aruser;
  wire M_AXI_HP3_FPD_arvalid;
  wire [39:0]M_AXI_HP3_FPD_awaddr;
  wire [1:0]M_AXI_HP3_FPD_awburst;
  wire [3:0]M_AXI_HP3_FPD_awcache;
  wire [1:0]M_AXI_HP3_FPD_awid;
  wire [7:0]M_AXI_HP3_FPD_awlen;
  wire M_AXI_HP3_FPD_awlock;
  wire [2:0]M_AXI_HP3_FPD_awprot;
  wire [3:0]M_AXI_HP3_FPD_awqos;
  wire [2:0]M_AXI_HP3_FPD_awsize;
  wire M_AXI_HP3_FPD_awuser;
  wire M_AXI_HP3_FPD_awvalid;
  wire M_AXI_HP3_FPD_bready;
  wire M_AXI_HP3_FPD_rready;
  wire [127:0]M_AXI_HP3_FPD_wdata;
  wire M_AXI_HP3_FPD_wlast;
  wire [15:0]M_AXI_HP3_FPD_wstrb;
  wire M_AXI_HP3_FPD_wvalid;
  wire [39:0]M_AXI_HPC0_FPD_araddr;
  wire [1:0]M_AXI_HPC0_FPD_arburst;
  wire [3:0]M_AXI_HPC0_FPD_arcache;
  wire [1:0]M_AXI_HPC0_FPD_arid;
  wire [7:0]M_AXI_HPC0_FPD_arlen;
  wire M_AXI_HPC0_FPD_arlock;
  wire [2:0]M_AXI_HPC0_FPD_arprot;
  wire [3:0]M_AXI_HPC0_FPD_arqos;
  wire [2:0]M_AXI_HPC0_FPD_arsize;
  wire M_AXI_HPC0_FPD_aruser;
  wire M_AXI_HPC0_FPD_arvalid;
  wire [39:0]M_AXI_HPC0_FPD_awaddr;
  wire [1:0]M_AXI_HPC0_FPD_awburst;
  wire [3:0]M_AXI_HPC0_FPD_awcache;
  wire [1:0]M_AXI_HPC0_FPD_awid;
  wire [7:0]M_AXI_HPC0_FPD_awlen;
  wire M_AXI_HPC0_FPD_awlock;
  wire [2:0]M_AXI_HPC0_FPD_awprot;
  wire [3:0]M_AXI_HPC0_FPD_awqos;
  wire [2:0]M_AXI_HPC0_FPD_awsize;
  wire M_AXI_HPC0_FPD_awuser;
  wire M_AXI_HPC0_FPD_awvalid;
  wire M_AXI_HPC0_FPD_bready;
  wire M_AXI_HPC0_FPD_rready;
  wire [127:0]M_AXI_HPC0_FPD_wdata;
  wire M_AXI_HPC0_FPD_wlast;
  wire [15:0]M_AXI_HPC0_FPD_wstrb;
  wire M_AXI_HPC0_FPD_wvalid;
  wire [39:0]M_AXI_HPC1_FPD_araddr;
  wire [1:0]M_AXI_HPC1_FPD_arburst;
  wire [3:0]M_AXI_HPC1_FPD_arcache;
  wire [2:0]M_AXI_HPC1_FPD_arid;
  wire [7:0]M_AXI_HPC1_FPD_arlen;
  wire M_AXI_HPC1_FPD_arlock;
  wire [2:0]M_AXI_HPC1_FPD_arprot;
  wire [3:0]M_AXI_HPC1_FPD_arqos;
  wire M_AXI_HPC1_FPD_arready;
  wire [2:0]M_AXI_HPC1_FPD_arsize;
  wire M_AXI_HPC1_FPD_aruser;
  wire M_AXI_HPC1_FPD_arvalid;
  wire [39:0]M_AXI_HPC1_FPD_awaddr;
  wire [1:0]M_AXI_HPC1_FPD_awburst;
  wire [3:0]M_AXI_HPC1_FPD_awcache;
  wire [2:0]M_AXI_HPC1_FPD_awid;
  wire [7:0]M_AXI_HPC1_FPD_awlen;
  wire M_AXI_HPC1_FPD_awlock;
  wire [2:0]M_AXI_HPC1_FPD_awprot;
  wire [3:0]M_AXI_HPC1_FPD_awqos;
  wire M_AXI_HPC1_FPD_awready;
  wire [2:0]M_AXI_HPC1_FPD_awsize;
  wire M_AXI_HPC1_FPD_awuser;
  wire M_AXI_HPC1_FPD_awvalid;
  wire [5:0]M_AXI_HPC1_FPD_bid;
  wire M_AXI_HPC1_FPD_bready;
  wire [1:0]M_AXI_HPC1_FPD_bresp;
  wire M_AXI_HPC1_FPD_bvalid;
  wire [127:0]M_AXI_HPC1_FPD_rdata;
  wire [5:0]M_AXI_HPC1_FPD_rid;
  wire M_AXI_HPC1_FPD_rlast;
  wire M_AXI_HPC1_FPD_rready;
  wire [1:0]M_AXI_HPC1_FPD_rresp;
  wire M_AXI_HPC1_FPD_rvalid;
  wire [127:0]M_AXI_HPC1_FPD_wdata;
  wire M_AXI_HPC1_FPD_wlast;
  wire M_AXI_HPC1_FPD_wready;
  wire [15:0]M_AXI_HPC1_FPD_wstrb;
  wire M_AXI_HPC1_FPD_wvalid;
  wire [39:0]M_AXI_LPD_araddr;
  wire [1:0]M_AXI_LPD_arburst;
  wire [3:0]M_AXI_LPD_arcache;
  wire [3:0]M_AXI_LPD_arid;
  wire [7:0]M_AXI_LPD_arlen;
  wire M_AXI_LPD_arlock;
  wire [2:0]M_AXI_LPD_arprot;
  wire [3:0]M_AXI_LPD_arqos;
  wire M_AXI_LPD_arready;
  wire [2:0]M_AXI_LPD_arsize;
  wire M_AXI_LPD_aruser;
  wire M_AXI_LPD_arvalid;
  wire [39:0]M_AXI_LPD_awaddr;
  wire [1:0]M_AXI_LPD_awburst;
  wire [3:0]M_AXI_LPD_awcache;
  wire [3:0]M_AXI_LPD_awid;
  wire [7:0]M_AXI_LPD_awlen;
  wire M_AXI_LPD_awlock;
  wire [2:0]M_AXI_LPD_awprot;
  wire [3:0]M_AXI_LPD_awqos;
  wire M_AXI_LPD_awready;
  wire [2:0]M_AXI_LPD_awsize;
  wire M_AXI_LPD_awuser;
  wire M_AXI_LPD_awvalid;
  wire [5:0]M_AXI_LPD_bid;
  wire M_AXI_LPD_bready;
  wire [1:0]M_AXI_LPD_bresp;
  wire M_AXI_LPD_bvalid;
  wire [31:0]M_AXI_LPD_rdata;
  wire [5:0]M_AXI_LPD_rid;
  wire M_AXI_LPD_rlast;
  wire M_AXI_LPD_rready;
  wire [1:0]M_AXI_LPD_rresp;
  wire M_AXI_LPD_rvalid;
  wire [31:0]M_AXI_LPD_wdata;
  wire M_AXI_LPD_wlast;
  wire M_AXI_LPD_wready;
  wire [3:0]M_AXI_LPD_wstrb;
  wire M_AXI_LPD_wvalid;
  wire RSTn_INTC;
  wire RSTn_PERI;
  wire [39:0]SFM_M_AXI_araddr;
  wire [1:0]SFM_M_AXI_arburst;
  wire [3:0]SFM_M_AXI_arcache;
  wire [1:0]SFM_M_AXI_arid;
  wire [7:0]SFM_M_AXI_arlen;
  wire [0:0]SFM_M_AXI_arlock;
  wire [2:0]SFM_M_AXI_arprot;
  wire [3:0]SFM_M_AXI_arqos;
  wire SFM_M_AXI_arready;
  wire [2:0]SFM_M_AXI_arsize;
  wire [0:0]SFM_M_AXI_aruser;
  wire SFM_M_AXI_arvalid;
  wire [39:0]SFM_M_AXI_awaddr;
  wire [1:0]SFM_M_AXI_awburst;
  wire [3:0]SFM_M_AXI_awcache;
  wire [1:0]SFM_M_AXI_awid;
  wire [7:0]SFM_M_AXI_awlen;
  wire [0:0]SFM_M_AXI_awlock;
  wire [2:0]SFM_M_AXI_awprot;
  wire [3:0]SFM_M_AXI_awqos;
  wire SFM_M_AXI_awready;
  wire [2:0]SFM_M_AXI_awsize;
  wire [0:0]SFM_M_AXI_awuser;
  wire SFM_M_AXI_awvalid;
  wire [2:0]SFM_M_AXI_bid;
  wire SFM_M_AXI_bready;
  wire [1:0]SFM_M_AXI_bresp;
  wire SFM_M_AXI_bvalid;
  wire [127:0]SFM_M_AXI_rdata;
  wire [2:0]SFM_M_AXI_rid;
  wire SFM_M_AXI_rlast;
  wire SFM_M_AXI_rready;
  wire [1:0]SFM_M_AXI_rresp;
  wire SFM_M_AXI_rvalid;
  wire [127:0]SFM_M_AXI_wdata;
  wire SFM_M_AXI_wlast;
  wire SFM_M_AXI_wready;
  wire [15:0]SFM_M_AXI_wstrb;
  wire SFM_M_AXI_wvalid;

  assign DPU0_M_AXI_DATA0_arready = M_AXI_HP0_FPD_arready;
  assign DPU0_M_AXI_DATA0_awready = M_AXI_HP0_FPD_awready;
  assign DPU0_M_AXI_DATA0_bid = M_AXI_HP0_FPD_bid[5:0];
  assign DPU0_M_AXI_DATA0_bresp = M_AXI_HP0_FPD_bresp[1:0];
  assign DPU0_M_AXI_DATA0_bvalid = M_AXI_HP0_FPD_bvalid;
  assign DPU0_M_AXI_DATA0_rdata = M_AXI_HP0_FPD_rdata[127:0];
  assign DPU0_M_AXI_DATA0_rid = M_AXI_HP0_FPD_rid[5:0];
  assign DPU0_M_AXI_DATA0_rlast = M_AXI_HP0_FPD_rlast;
  assign DPU0_M_AXI_DATA0_rresp = M_AXI_HP0_FPD_rresp[1:0];
  assign DPU0_M_AXI_DATA0_rvalid = M_AXI_HP0_FPD_rvalid;
  assign DPU0_M_AXI_DATA0_wready = M_AXI_HP0_FPD_wready;
  assign DPU0_M_AXI_DATA1_arready = M_AXI_HP1_FPD_arready;
  assign DPU0_M_AXI_DATA1_awready = M_AXI_HP1_FPD_awready;
  assign DPU0_M_AXI_DATA1_bid = M_AXI_HP1_FPD_bid[5:0];
  assign DPU0_M_AXI_DATA1_bresp = M_AXI_HP1_FPD_bresp[1:0];
  assign DPU0_M_AXI_DATA1_bvalid = M_AXI_HP1_FPD_bvalid;
  assign DPU0_M_AXI_DATA1_rdata = M_AXI_HP1_FPD_rdata[127:0];
  assign DPU0_M_AXI_DATA1_rid = M_AXI_HP1_FPD_rid[5:0];
  assign DPU0_M_AXI_DATA1_rlast = M_AXI_HP1_FPD_rlast;
  assign DPU0_M_AXI_DATA1_rresp = M_AXI_HP1_FPD_rresp[1:0];
  assign DPU0_M_AXI_DATA1_rvalid = M_AXI_HP1_FPD_rvalid;
  assign DPU0_M_AXI_DATA1_wready = M_AXI_HP1_FPD_wready;
  assign DPU1_M_AXI_DATA0_arready = M_AXI_HP2_FPD_arready;
  assign DPU1_M_AXI_DATA0_awready = M_AXI_HP2_FPD_awready;
  assign DPU1_M_AXI_DATA0_bid = M_AXI_HP2_FPD_bid[5:0];
  assign DPU1_M_AXI_DATA0_bresp = M_AXI_HP2_FPD_bresp[1:0];
  assign DPU1_M_AXI_DATA0_bvalid = M_AXI_HP2_FPD_bvalid;
  assign DPU1_M_AXI_DATA0_rdata = M_AXI_HP2_FPD_rdata[127:0];
  assign DPU1_M_AXI_DATA0_rid = M_AXI_HP2_FPD_rid[5:0];
  assign DPU1_M_AXI_DATA0_rlast = M_AXI_HP2_FPD_rlast;
  assign DPU1_M_AXI_DATA0_rresp = M_AXI_HP2_FPD_rresp[1:0];
  assign DPU1_M_AXI_DATA0_rvalid = M_AXI_HP2_FPD_rvalid;
  assign DPU1_M_AXI_DATA0_wready = M_AXI_HP2_FPD_wready;
  assign DPU1_M_AXI_DATA1_arready = M_AXI_HP3_FPD_arready;
  assign DPU1_M_AXI_DATA1_awready = M_AXI_HP3_FPD_awready;
  assign DPU1_M_AXI_DATA1_bid = M_AXI_HP3_FPD_bid[5:0];
  assign DPU1_M_AXI_DATA1_bresp = M_AXI_HP3_FPD_bresp[1:0];
  assign DPU1_M_AXI_DATA1_bvalid = M_AXI_HP3_FPD_bvalid;
  assign DPU1_M_AXI_DATA1_rdata = M_AXI_HP3_FPD_rdata[127:0];
  assign DPU1_M_AXI_DATA1_rid = M_AXI_HP3_FPD_rid[5:0];
  assign DPU1_M_AXI_DATA1_rlast = M_AXI_HP3_FPD_rlast;
  assign DPU1_M_AXI_DATA1_rresp = M_AXI_HP3_FPD_rresp[1:0];
  assign DPU1_M_AXI_DATA1_rvalid = M_AXI_HP3_FPD_rvalid;
  assign DPU1_M_AXI_DATA1_wready = M_AXI_HP3_FPD_wready;
  assign DPU2_M_AXI_DATA0_arready = M_AXI_HPC0_FPD_arready;
  assign DPU2_M_AXI_DATA0_awready = M_AXI_HPC0_FPD_awready;
  assign DPU2_M_AXI_DATA0_bid = M_AXI_HPC0_FPD_bid[5:0];
  assign DPU2_M_AXI_DATA0_bresp = M_AXI_HPC0_FPD_bresp[1:0];
  assign DPU2_M_AXI_DATA0_bvalid = M_AXI_HPC0_FPD_bvalid;
  assign DPU2_M_AXI_DATA0_rdata = M_AXI_HPC0_FPD_rdata[127:0];
  assign DPU2_M_AXI_DATA0_rid = M_AXI_HPC0_FPD_rid[5:0];
  assign DPU2_M_AXI_DATA0_rlast = M_AXI_HPC0_FPD_rlast;
  assign DPU2_M_AXI_DATA0_rresp = M_AXI_HPC0_FPD_rresp[1:0];
  assign DPU2_M_AXI_DATA0_rvalid = M_AXI_HPC0_FPD_rvalid;
  assign DPU2_M_AXI_DATA0_wready = M_AXI_HPC0_FPD_wready;
  assign GHP_CLK_O = GHP_CLK_I;
  assign M_AXI_HP0_FPD_araddr = DPU0_M_AXI_DATA0_araddr[39:0];
  assign M_AXI_HP0_FPD_arburst = DPU0_M_AXI_DATA0_arburst[1:0];
  assign M_AXI_HP0_FPD_arcache = DPU0_M_AXI_DATA0_arcache[3:0];
  assign M_AXI_HP0_FPD_arid = DPU0_M_AXI_DATA0_arid[1:0];
  assign M_AXI_HP0_FPD_arlen = DPU0_M_AXI_DATA0_arlen[7:0];
  assign M_AXI_HP0_FPD_arlock = DPU0_M_AXI_DATA0_arlock;
  assign M_AXI_HP0_FPD_arprot = DPU0_M_AXI_DATA0_arprot[2:0];
  assign M_AXI_HP0_FPD_arqos = DPU0_M_AXI_DATA0_arqos[3:0];
  assign M_AXI_HP0_FPD_arsize = DPU0_M_AXI_DATA0_arsize[2:0];
  assign M_AXI_HP0_FPD_aruser = DPU0_M_AXI_DATA0_aruser;
  assign M_AXI_HP0_FPD_arvalid = DPU0_M_AXI_DATA0_arvalid;
  assign M_AXI_HP0_FPD_awaddr = DPU0_M_AXI_DATA0_awaddr[39:0];
  assign M_AXI_HP0_FPD_awburst = DPU0_M_AXI_DATA0_awburst[1:0];
  assign M_AXI_HP0_FPD_awcache = DPU0_M_AXI_DATA0_awcache[3:0];
  assign M_AXI_HP0_FPD_awid = DPU0_M_AXI_DATA0_awid[1:0];
  assign M_AXI_HP0_FPD_awlen = DPU0_M_AXI_DATA0_awlen[7:0];
  assign M_AXI_HP0_FPD_awlock = DPU0_M_AXI_DATA0_awlock;
  assign M_AXI_HP0_FPD_awprot = DPU0_M_AXI_DATA0_awprot[2:0];
  assign M_AXI_HP0_FPD_awqos = DPU0_M_AXI_DATA0_awqos[3:0];
  assign M_AXI_HP0_FPD_awsize = DPU0_M_AXI_DATA0_awsize[2:0];
  assign M_AXI_HP0_FPD_awuser = DPU0_M_AXI_DATA0_awuser;
  assign M_AXI_HP0_FPD_awvalid = DPU0_M_AXI_DATA0_awvalid;
  assign M_AXI_HP0_FPD_bready = DPU0_M_AXI_DATA0_bready;
  assign M_AXI_HP0_FPD_rready = DPU0_M_AXI_DATA0_rready;
  assign M_AXI_HP0_FPD_wdata = DPU0_M_AXI_DATA0_wdata[127:0];
  assign M_AXI_HP0_FPD_wlast = DPU0_M_AXI_DATA0_wlast;
  assign M_AXI_HP0_FPD_wstrb = DPU0_M_AXI_DATA0_wstrb[15:0];
  assign M_AXI_HP0_FPD_wvalid = DPU0_M_AXI_DATA0_wvalid;
  assign M_AXI_HP1_FPD_araddr = DPU0_M_AXI_DATA1_araddr[39:0];
  assign M_AXI_HP1_FPD_arburst = DPU0_M_AXI_DATA1_arburst[1:0];
  assign M_AXI_HP1_FPD_arcache = DPU0_M_AXI_DATA1_arcache[3:0];
  assign M_AXI_HP1_FPD_arid = DPU0_M_AXI_DATA1_arid[1:0];
  assign M_AXI_HP1_FPD_arlen = DPU0_M_AXI_DATA1_arlen[7:0];
  assign M_AXI_HP1_FPD_arlock = DPU0_M_AXI_DATA1_arlock;
  assign M_AXI_HP1_FPD_arprot = DPU0_M_AXI_DATA1_arprot[2:0];
  assign M_AXI_HP1_FPD_arqos = DPU0_M_AXI_DATA1_arqos[3:0];
  assign M_AXI_HP1_FPD_arsize = DPU0_M_AXI_DATA1_arsize[2:0];
  assign M_AXI_HP1_FPD_aruser = DPU0_M_AXI_DATA1_aruser;
  assign M_AXI_HP1_FPD_arvalid = DPU0_M_AXI_DATA1_arvalid;
  assign M_AXI_HP1_FPD_awaddr = DPU0_M_AXI_DATA1_awaddr[39:0];
  assign M_AXI_HP1_FPD_awburst = DPU0_M_AXI_DATA1_awburst[1:0];
  assign M_AXI_HP1_FPD_awcache = DPU0_M_AXI_DATA1_awcache[3:0];
  assign M_AXI_HP1_FPD_awid = DPU0_M_AXI_DATA1_awid[1:0];
  assign M_AXI_HP1_FPD_awlen = DPU0_M_AXI_DATA1_awlen[7:0];
  assign M_AXI_HP1_FPD_awlock = DPU0_M_AXI_DATA1_awlock;
  assign M_AXI_HP1_FPD_awprot = DPU0_M_AXI_DATA1_awprot[2:0];
  assign M_AXI_HP1_FPD_awqos = DPU0_M_AXI_DATA1_awqos[3:0];
  assign M_AXI_HP1_FPD_awsize = DPU0_M_AXI_DATA1_awsize[2:0];
  assign M_AXI_HP1_FPD_awuser = DPU0_M_AXI_DATA1_awuser;
  assign M_AXI_HP1_FPD_awvalid = DPU0_M_AXI_DATA1_awvalid;
  assign M_AXI_HP1_FPD_bready = DPU0_M_AXI_DATA1_bready;
  assign M_AXI_HP1_FPD_rready = DPU0_M_AXI_DATA1_rready;
  assign M_AXI_HP1_FPD_wdata = DPU0_M_AXI_DATA1_wdata[127:0];
  assign M_AXI_HP1_FPD_wlast = DPU0_M_AXI_DATA1_wlast;
  assign M_AXI_HP1_FPD_wstrb = DPU0_M_AXI_DATA1_wstrb[15:0];
  assign M_AXI_HP1_FPD_wvalid = DPU0_M_AXI_DATA1_wvalid;
  assign M_AXI_HP2_FPD_araddr = DPU1_M_AXI_DATA0_araddr[39:0];
  assign M_AXI_HP2_FPD_arburst = DPU1_M_AXI_DATA0_arburst[1:0];
  assign M_AXI_HP2_FPD_arcache = DPU1_M_AXI_DATA0_arcache[3:0];
  assign M_AXI_HP2_FPD_arid = DPU1_M_AXI_DATA0_arid[1:0];
  assign M_AXI_HP2_FPD_arlen = DPU1_M_AXI_DATA0_arlen[7:0];
  assign M_AXI_HP2_FPD_arlock = DPU1_M_AXI_DATA0_arlock;
  assign M_AXI_HP2_FPD_arprot = DPU1_M_AXI_DATA0_arprot[2:0];
  assign M_AXI_HP2_FPD_arqos = DPU1_M_AXI_DATA0_arqos[3:0];
  assign M_AXI_HP2_FPD_arsize = DPU1_M_AXI_DATA0_arsize[2:0];
  assign M_AXI_HP2_FPD_aruser = DPU1_M_AXI_DATA0_aruser;
  assign M_AXI_HP2_FPD_arvalid = DPU1_M_AXI_DATA0_arvalid;
  assign M_AXI_HP2_FPD_awaddr = DPU1_M_AXI_DATA0_awaddr[39:0];
  assign M_AXI_HP2_FPD_awburst = DPU1_M_AXI_DATA0_awburst[1:0];
  assign M_AXI_HP2_FPD_awcache = DPU1_M_AXI_DATA0_awcache[3:0];
  assign M_AXI_HP2_FPD_awid = DPU1_M_AXI_DATA0_awid[1:0];
  assign M_AXI_HP2_FPD_awlen = DPU1_M_AXI_DATA0_awlen[7:0];
  assign M_AXI_HP2_FPD_awlock = DPU1_M_AXI_DATA0_awlock;
  assign M_AXI_HP2_FPD_awprot = DPU1_M_AXI_DATA0_awprot[2:0];
  assign M_AXI_HP2_FPD_awqos = DPU1_M_AXI_DATA0_awqos[3:0];
  assign M_AXI_HP2_FPD_awsize = DPU1_M_AXI_DATA0_awsize[2:0];
  assign M_AXI_HP2_FPD_awuser = DPU1_M_AXI_DATA0_awuser;
  assign M_AXI_HP2_FPD_awvalid = DPU1_M_AXI_DATA0_awvalid;
  assign M_AXI_HP2_FPD_bready = DPU1_M_AXI_DATA0_bready;
  assign M_AXI_HP2_FPD_rready = DPU1_M_AXI_DATA0_rready;
  assign M_AXI_HP2_FPD_wdata = DPU1_M_AXI_DATA0_wdata[127:0];
  assign M_AXI_HP2_FPD_wlast = DPU1_M_AXI_DATA0_wlast;
  assign M_AXI_HP2_FPD_wstrb = DPU1_M_AXI_DATA0_wstrb[15:0];
  assign M_AXI_HP2_FPD_wvalid = DPU1_M_AXI_DATA0_wvalid;
  assign M_AXI_HP3_FPD_araddr = DPU1_M_AXI_DATA1_araddr[39:0];
  assign M_AXI_HP3_FPD_arburst = DPU1_M_AXI_DATA1_arburst[1:0];
  assign M_AXI_HP3_FPD_arcache = DPU1_M_AXI_DATA1_arcache[3:0];
  assign M_AXI_HP3_FPD_arid = DPU1_M_AXI_DATA1_arid[1:0];
  assign M_AXI_HP3_FPD_arlen = DPU1_M_AXI_DATA1_arlen[7:0];
  assign M_AXI_HP3_FPD_arlock = DPU1_M_AXI_DATA1_arlock;
  assign M_AXI_HP3_FPD_arprot = DPU1_M_AXI_DATA1_arprot[2:0];
  assign M_AXI_HP3_FPD_arqos = DPU1_M_AXI_DATA1_arqos[3:0];
  assign M_AXI_HP3_FPD_arsize = DPU1_M_AXI_DATA1_arsize[2:0];
  assign M_AXI_HP3_FPD_aruser = DPU1_M_AXI_DATA1_aruser;
  assign M_AXI_HP3_FPD_arvalid = DPU1_M_AXI_DATA1_arvalid;
  assign M_AXI_HP3_FPD_awaddr = DPU1_M_AXI_DATA1_awaddr[39:0];
  assign M_AXI_HP3_FPD_awburst = DPU1_M_AXI_DATA1_awburst[1:0];
  assign M_AXI_HP3_FPD_awcache = DPU1_M_AXI_DATA1_awcache[3:0];
  assign M_AXI_HP3_FPD_awid = DPU1_M_AXI_DATA1_awid[1:0];
  assign M_AXI_HP3_FPD_awlen = DPU1_M_AXI_DATA1_awlen[7:0];
  assign M_AXI_HP3_FPD_awlock = DPU1_M_AXI_DATA1_awlock;
  assign M_AXI_HP3_FPD_awprot = DPU1_M_AXI_DATA1_awprot[2:0];
  assign M_AXI_HP3_FPD_awqos = DPU1_M_AXI_DATA1_awqos[3:0];
  assign M_AXI_HP3_FPD_awsize = DPU1_M_AXI_DATA1_awsize[2:0];
  assign M_AXI_HP3_FPD_awuser = DPU1_M_AXI_DATA1_awuser;
  assign M_AXI_HP3_FPD_awvalid = DPU1_M_AXI_DATA1_awvalid;
  assign M_AXI_HP3_FPD_bready = DPU1_M_AXI_DATA1_bready;
  assign M_AXI_HP3_FPD_rready = DPU1_M_AXI_DATA1_rready;
  assign M_AXI_HP3_FPD_wdata = DPU1_M_AXI_DATA1_wdata[127:0];
  assign M_AXI_HP3_FPD_wlast = DPU1_M_AXI_DATA1_wlast;
  assign M_AXI_HP3_FPD_wstrb = DPU1_M_AXI_DATA1_wstrb[15:0];
  assign M_AXI_HP3_FPD_wvalid = DPU1_M_AXI_DATA1_wvalid;
  assign M_AXI_HPC0_FPD_araddr = DPU2_M_AXI_DATA0_araddr[39:0];
  assign M_AXI_HPC0_FPD_arburst = DPU2_M_AXI_DATA0_arburst[1:0];
  assign M_AXI_HPC0_FPD_arcache = DPU2_M_AXI_DATA0_arcache[3:0];
  assign M_AXI_HPC0_FPD_arid = DPU2_M_AXI_DATA0_arid[1:0];
  assign M_AXI_HPC0_FPD_arlen = DPU2_M_AXI_DATA0_arlen[7:0];
  assign M_AXI_HPC0_FPD_arlock = DPU2_M_AXI_DATA0_arlock;
  assign M_AXI_HPC0_FPD_arprot = DPU2_M_AXI_DATA0_arprot[2:0];
  assign M_AXI_HPC0_FPD_arqos = DPU2_M_AXI_DATA0_arqos[3:0];
  assign M_AXI_HPC0_FPD_arsize = DPU2_M_AXI_DATA0_arsize[2:0];
  assign M_AXI_HPC0_FPD_aruser = DPU2_M_AXI_DATA0_aruser;
  assign M_AXI_HPC0_FPD_arvalid = DPU2_M_AXI_DATA0_arvalid;
  assign M_AXI_HPC0_FPD_awaddr = DPU2_M_AXI_DATA0_awaddr[39:0];
  assign M_AXI_HPC0_FPD_awburst = DPU2_M_AXI_DATA0_awburst[1:0];
  assign M_AXI_HPC0_FPD_awcache = DPU2_M_AXI_DATA0_awcache[3:0];
  assign M_AXI_HPC0_FPD_awid = DPU2_M_AXI_DATA0_awid[1:0];
  assign M_AXI_HPC0_FPD_awlen = DPU2_M_AXI_DATA0_awlen[7:0];
  assign M_AXI_HPC0_FPD_awlock = DPU2_M_AXI_DATA0_awlock;
  assign M_AXI_HPC0_FPD_awprot = DPU2_M_AXI_DATA0_awprot[2:0];
  assign M_AXI_HPC0_FPD_awqos = DPU2_M_AXI_DATA0_awqos[3:0];
  assign M_AXI_HPC0_FPD_awsize = DPU2_M_AXI_DATA0_awsize[2:0];
  assign M_AXI_HPC0_FPD_awuser = DPU2_M_AXI_DATA0_awuser;
  assign M_AXI_HPC0_FPD_awvalid = DPU2_M_AXI_DATA0_awvalid;
  assign M_AXI_HPC0_FPD_bready = DPU2_M_AXI_DATA0_bready;
  assign M_AXI_HPC0_FPD_rready = DPU2_M_AXI_DATA0_rready;
  assign M_AXI_HPC0_FPD_wdata = DPU2_M_AXI_DATA0_wdata[127:0];
  assign M_AXI_HPC0_FPD_wlast = DPU2_M_AXI_DATA0_wlast;
  assign M_AXI_HPC0_FPD_wstrb = DPU2_M_AXI_DATA0_wstrb[15:0];
  assign M_AXI_HPC0_FPD_wvalid = DPU2_M_AXI_DATA0_wvalid;
  top_dpu_intc_M_AXI_HPC1_FPD_0 dpu_intc_M_AXI_HPC1_FPD
       (.ACLK(CLK),
        .ARESETN(RSTn_INTC),
        .M00_ACLK(GHP_CLK_O),
        .M00_ARESETN(GHP_RSTn),
        .M00_AXI_araddr(M_AXI_HPC1_FPD_araddr),
        .M00_AXI_arburst(M_AXI_HPC1_FPD_arburst),
        .M00_AXI_arcache(M_AXI_HPC1_FPD_arcache),
        .M00_AXI_arid(M_AXI_HPC1_FPD_arid),
        .M00_AXI_arlen(M_AXI_HPC1_FPD_arlen),
        .M00_AXI_arlock(M_AXI_HPC1_FPD_arlock),
        .M00_AXI_arprot(M_AXI_HPC1_FPD_arprot),
        .M00_AXI_arqos(M_AXI_HPC1_FPD_arqos),
        .M00_AXI_arready(M_AXI_HPC1_FPD_arready),
        .M00_AXI_arsize(M_AXI_HPC1_FPD_arsize),
        .M00_AXI_aruser(M_AXI_HPC1_FPD_aruser),
        .M00_AXI_arvalid(M_AXI_HPC1_FPD_arvalid),
        .M00_AXI_awaddr(M_AXI_HPC1_FPD_awaddr),
        .M00_AXI_awburst(M_AXI_HPC1_FPD_awburst),
        .M00_AXI_awcache(M_AXI_HPC1_FPD_awcache),
        .M00_AXI_awid(M_AXI_HPC1_FPD_awid),
        .M00_AXI_awlen(M_AXI_HPC1_FPD_awlen),
        .M00_AXI_awlock(M_AXI_HPC1_FPD_awlock),
        .M00_AXI_awprot(M_AXI_HPC1_FPD_awprot),
        .M00_AXI_awqos(M_AXI_HPC1_FPD_awqos),
        .M00_AXI_awready(M_AXI_HPC1_FPD_awready),
        .M00_AXI_awsize(M_AXI_HPC1_FPD_awsize),
        .M00_AXI_awuser(M_AXI_HPC1_FPD_awuser),
        .M00_AXI_awvalid(M_AXI_HPC1_FPD_awvalid),
        .M00_AXI_bid(M_AXI_HPC1_FPD_bid),
        .M00_AXI_bready(M_AXI_HPC1_FPD_bready),
        .M00_AXI_bresp(M_AXI_HPC1_FPD_bresp),
        .M00_AXI_bvalid(M_AXI_HPC1_FPD_bvalid),
        .M00_AXI_rdata(M_AXI_HPC1_FPD_rdata),
        .M00_AXI_rid(M_AXI_HPC1_FPD_rid),
        .M00_AXI_rlast(M_AXI_HPC1_FPD_rlast),
        .M00_AXI_rready(M_AXI_HPC1_FPD_rready),
        .M00_AXI_rresp(M_AXI_HPC1_FPD_rresp),
        .M00_AXI_rvalid(M_AXI_HPC1_FPD_rvalid),
        .M00_AXI_wdata(M_AXI_HPC1_FPD_wdata),
        .M00_AXI_wlast(M_AXI_HPC1_FPD_wlast),
        .M00_AXI_wready(M_AXI_HPC1_FPD_wready),
        .M00_AXI_wstrb(M_AXI_HPC1_FPD_wstrb),
        .M00_AXI_wvalid(M_AXI_HPC1_FPD_wvalid),
        .S00_ACLK(CLK),
        .S00_ARESETN(RSTn_PERI),
        .S00_AXI_araddr(DPU2_M_AXI_DATA1_araddr),
        .S00_AXI_arburst(DPU2_M_AXI_DATA1_arburst),
        .S00_AXI_arcache(DPU2_M_AXI_DATA1_arcache),
        .S00_AXI_arid(DPU2_M_AXI_DATA1_arid),
        .S00_AXI_arlen(DPU2_M_AXI_DATA1_arlen),
        .S00_AXI_arlock(DPU2_M_AXI_DATA1_arlock),
        .S00_AXI_arprot(DPU2_M_AXI_DATA1_arprot),
        .S00_AXI_arqos(DPU2_M_AXI_DATA1_arqos),
        .S00_AXI_arready(DPU2_M_AXI_DATA1_arready),
        .S00_AXI_arsize(DPU2_M_AXI_DATA1_arsize),
        .S00_AXI_aruser(DPU2_M_AXI_DATA1_aruser),
        .S00_AXI_arvalid(DPU2_M_AXI_DATA1_arvalid),
        .S00_AXI_awaddr(DPU2_M_AXI_DATA1_awaddr),
        .S00_AXI_awburst(DPU2_M_AXI_DATA1_awburst),
        .S00_AXI_awcache(DPU2_M_AXI_DATA1_awcache),
        .S00_AXI_awid(DPU2_M_AXI_DATA1_awid),
        .S00_AXI_awlen(DPU2_M_AXI_DATA1_awlen),
        .S00_AXI_awlock(DPU2_M_AXI_DATA1_awlock),
        .S00_AXI_awprot(DPU2_M_AXI_DATA1_awprot),
        .S00_AXI_awqos(DPU2_M_AXI_DATA1_awqos),
        .S00_AXI_awready(DPU2_M_AXI_DATA1_awready),
        .S00_AXI_awsize(DPU2_M_AXI_DATA1_awsize),
        .S00_AXI_awuser(DPU2_M_AXI_DATA1_awuser),
        .S00_AXI_awvalid(DPU2_M_AXI_DATA1_awvalid),
        .S00_AXI_bid(DPU2_M_AXI_DATA1_bid),
        .S00_AXI_bready(DPU2_M_AXI_DATA1_bready),
        .S00_AXI_bresp(DPU2_M_AXI_DATA1_bresp),
        .S00_AXI_bvalid(DPU2_M_AXI_DATA1_bvalid),
        .S00_AXI_rdata(DPU2_M_AXI_DATA1_rdata),
        .S00_AXI_rid(DPU2_M_AXI_DATA1_rid),
        .S00_AXI_rlast(DPU2_M_AXI_DATA1_rlast),
        .S00_AXI_rready(DPU2_M_AXI_DATA1_rready),
        .S00_AXI_rresp(DPU2_M_AXI_DATA1_rresp),
        .S00_AXI_rvalid(DPU2_M_AXI_DATA1_rvalid),
        .S00_AXI_wdata(DPU2_M_AXI_DATA1_wdata),
        .S00_AXI_wlast(DPU2_M_AXI_DATA1_wlast),
        .S00_AXI_wready(DPU2_M_AXI_DATA1_wready),
        .S00_AXI_wstrb(DPU2_M_AXI_DATA1_wstrb),
        .S00_AXI_wvalid(DPU2_M_AXI_DATA1_wvalid),
        .S01_ACLK(CLK),
        .S01_ARESETN(RSTn_PERI),
        .S01_AXI_araddr(SFM_M_AXI_araddr),
        .S01_AXI_arburst(SFM_M_AXI_arburst),
        .S01_AXI_arcache(SFM_M_AXI_arcache),
        .S01_AXI_arid(SFM_M_AXI_arid),
        .S01_AXI_arlen(SFM_M_AXI_arlen),
        .S01_AXI_arlock(SFM_M_AXI_arlock),
        .S01_AXI_arprot(SFM_M_AXI_arprot),
        .S01_AXI_arqos(SFM_M_AXI_arqos),
        .S01_AXI_arready(SFM_M_AXI_arready),
        .S01_AXI_arsize(SFM_M_AXI_arsize),
        .S01_AXI_aruser(SFM_M_AXI_aruser),
        .S01_AXI_arvalid(SFM_M_AXI_arvalid),
        .S01_AXI_awaddr(SFM_M_AXI_awaddr),
        .S01_AXI_awburst(SFM_M_AXI_awburst),
        .S01_AXI_awcache(SFM_M_AXI_awcache),
        .S01_AXI_awid(SFM_M_AXI_awid),
        .S01_AXI_awlen(SFM_M_AXI_awlen),
        .S01_AXI_awlock(SFM_M_AXI_awlock),
        .S01_AXI_awprot(SFM_M_AXI_awprot),
        .S01_AXI_awqos(SFM_M_AXI_awqos),
        .S01_AXI_awready(SFM_M_AXI_awready),
        .S01_AXI_awsize(SFM_M_AXI_awsize),
        .S01_AXI_awuser(SFM_M_AXI_awuser),
        .S01_AXI_awvalid(SFM_M_AXI_awvalid),
        .S01_AXI_bid(SFM_M_AXI_bid),
        .S01_AXI_bready(SFM_M_AXI_bready),
        .S01_AXI_bresp(SFM_M_AXI_bresp),
        .S01_AXI_bvalid(SFM_M_AXI_bvalid),
        .S01_AXI_rdata(SFM_M_AXI_rdata),
        .S01_AXI_rid(SFM_M_AXI_rid),
        .S01_AXI_rlast(SFM_M_AXI_rlast),
        .S01_AXI_rready(SFM_M_AXI_rready),
        .S01_AXI_rresp(SFM_M_AXI_rresp),
        .S01_AXI_rvalid(SFM_M_AXI_rvalid),
        .S01_AXI_wdata(SFM_M_AXI_wdata),
        .S01_AXI_wlast(SFM_M_AXI_wlast),
        .S01_AXI_wready(SFM_M_AXI_wready),
        .S01_AXI_wstrb(SFM_M_AXI_wstrb),
        .S01_AXI_wvalid(SFM_M_AXI_wvalid));
  top_dpu_intc_M_AXI_LPD_0 dpu_intc_M_AXI_LPD
       (.ACLK(CLK),
        .ARESETN(RSTn_INTC),
        .M00_ACLK(GHP_CLK_O),
        .M00_ARESETN(GHP_RSTn),
        .M00_AXI_araddr(M_AXI_LPD_araddr),
        .M00_AXI_arburst(M_AXI_LPD_arburst),
        .M00_AXI_arcache(M_AXI_LPD_arcache),
        .M00_AXI_arid(M_AXI_LPD_arid),
        .M00_AXI_arlen(M_AXI_LPD_arlen),
        .M00_AXI_arlock(M_AXI_LPD_arlock),
        .M00_AXI_arprot(M_AXI_LPD_arprot),
        .M00_AXI_arqos(M_AXI_LPD_arqos),
        .M00_AXI_arready(M_AXI_LPD_arready),
        .M00_AXI_arsize(M_AXI_LPD_arsize),
        .M00_AXI_aruser(M_AXI_LPD_aruser),
        .M00_AXI_arvalid(M_AXI_LPD_arvalid),
        .M00_AXI_awaddr(M_AXI_LPD_awaddr),
        .M00_AXI_awburst(M_AXI_LPD_awburst),
        .M00_AXI_awcache(M_AXI_LPD_awcache),
        .M00_AXI_awid(M_AXI_LPD_awid),
        .M00_AXI_awlen(M_AXI_LPD_awlen),
        .M00_AXI_awlock(M_AXI_LPD_awlock),
        .M00_AXI_awprot(M_AXI_LPD_awprot),
        .M00_AXI_awqos(M_AXI_LPD_awqos),
        .M00_AXI_awready(M_AXI_LPD_awready),
        .M00_AXI_awsize(M_AXI_LPD_awsize),
        .M00_AXI_awuser(M_AXI_LPD_awuser),
        .M00_AXI_awvalid(M_AXI_LPD_awvalid),
        .M00_AXI_bid(M_AXI_LPD_bid),
        .M00_AXI_bready(M_AXI_LPD_bready),
        .M00_AXI_bresp(M_AXI_LPD_bresp),
        .M00_AXI_bvalid(M_AXI_LPD_bvalid),
        .M00_AXI_rdata(M_AXI_LPD_rdata),
        .M00_AXI_rid(M_AXI_LPD_rid),
        .M00_AXI_rlast(M_AXI_LPD_rlast),
        .M00_AXI_rready(M_AXI_LPD_rready),
        .M00_AXI_rresp(M_AXI_LPD_rresp),
        .M00_AXI_rvalid(M_AXI_LPD_rvalid),
        .M00_AXI_wdata(M_AXI_LPD_wdata),
        .M00_AXI_wlast(M_AXI_LPD_wlast),
        .M00_AXI_wready(M_AXI_LPD_wready),
        .M00_AXI_wstrb(M_AXI_LPD_wstrb),
        .M00_AXI_wvalid(M_AXI_LPD_wvalid),
        .S00_ACLK(CLK),
        .S00_ARESETN(RSTn_PERI),
        .S00_AXI_araddr(DPU0_M_AXI_INSTR_araddr),
        .S00_AXI_arburst(DPU0_M_AXI_INSTR_arburst),
        .S00_AXI_arcache(DPU0_M_AXI_INSTR_arcache),
        .S00_AXI_arid(DPU0_M_AXI_INSTR_arid),
        .S00_AXI_arlen(DPU0_M_AXI_INSTR_arlen),
        .S00_AXI_arlock(DPU0_M_AXI_INSTR_arlock),
        .S00_AXI_arprot(DPU0_M_AXI_INSTR_arprot),
        .S00_AXI_arqos(DPU0_M_AXI_INSTR_arqos),
        .S00_AXI_arready(DPU0_M_AXI_INSTR_arready),
        .S00_AXI_arsize(DPU0_M_AXI_INSTR_arsize),
        .S00_AXI_aruser(DPU0_M_AXI_INSTR_aruser),
        .S00_AXI_arvalid(DPU0_M_AXI_INSTR_arvalid),
        .S00_AXI_awaddr(DPU0_M_AXI_INSTR_awaddr),
        .S00_AXI_awburst(DPU0_M_AXI_INSTR_awburst),
        .S00_AXI_awcache(DPU0_M_AXI_INSTR_awcache),
        .S00_AXI_awid(DPU0_M_AXI_INSTR_awid),
        .S00_AXI_awlen(DPU0_M_AXI_INSTR_awlen),
        .S00_AXI_awlock(DPU0_M_AXI_INSTR_awlock),
        .S00_AXI_awprot(DPU0_M_AXI_INSTR_awprot),
        .S00_AXI_awqos(DPU0_M_AXI_INSTR_awqos),
        .S00_AXI_awready(DPU0_M_AXI_INSTR_awready),
        .S00_AXI_awsize(DPU0_M_AXI_INSTR_awsize),
        .S00_AXI_awuser(DPU0_M_AXI_INSTR_awuser),
        .S00_AXI_awvalid(DPU0_M_AXI_INSTR_awvalid),
        .S00_AXI_bid(DPU0_M_AXI_INSTR_bid),
        .S00_AXI_bready(DPU0_M_AXI_INSTR_bready),
        .S00_AXI_bresp(DPU0_M_AXI_INSTR_bresp),
        .S00_AXI_bvalid(DPU0_M_AXI_INSTR_bvalid),
        .S00_AXI_rdata(DPU0_M_AXI_INSTR_rdata),
        .S00_AXI_rid(DPU0_M_AXI_INSTR_rid),
        .S00_AXI_rlast(DPU0_M_AXI_INSTR_rlast),
        .S00_AXI_rready(DPU0_M_AXI_INSTR_rready),
        .S00_AXI_rresp(DPU0_M_AXI_INSTR_rresp),
        .S00_AXI_rvalid(DPU0_M_AXI_INSTR_rvalid),
        .S00_AXI_wdata(DPU0_M_AXI_INSTR_wdata),
        .S00_AXI_wlast(DPU0_M_AXI_INSTR_wlast),
        .S00_AXI_wready(DPU0_M_AXI_INSTR_wready),
        .S00_AXI_wstrb(DPU0_M_AXI_INSTR_wstrb),
        .S00_AXI_wvalid(DPU0_M_AXI_INSTR_wvalid),
        .S01_ACLK(CLK),
        .S01_ARESETN(RSTn_PERI),
        .S01_AXI_araddr(DPU1_M_AXI_INSTR_araddr),
        .S01_AXI_arburst(DPU1_M_AXI_INSTR_arburst),
        .S01_AXI_arcache(DPU1_M_AXI_INSTR_arcache),
        .S01_AXI_arid(DPU1_M_AXI_INSTR_arid),
        .S01_AXI_arlen(DPU1_M_AXI_INSTR_arlen),
        .S01_AXI_arlock(DPU1_M_AXI_INSTR_arlock),
        .S01_AXI_arprot(DPU1_M_AXI_INSTR_arprot),
        .S01_AXI_arqos(DPU1_M_AXI_INSTR_arqos),
        .S01_AXI_arready(DPU1_M_AXI_INSTR_arready),
        .S01_AXI_arsize(DPU1_M_AXI_INSTR_arsize),
        .S01_AXI_aruser(DPU1_M_AXI_INSTR_aruser),
        .S01_AXI_arvalid(DPU1_M_AXI_INSTR_arvalid),
        .S01_AXI_awaddr(DPU1_M_AXI_INSTR_awaddr),
        .S01_AXI_awburst(DPU1_M_AXI_INSTR_awburst),
        .S01_AXI_awcache(DPU1_M_AXI_INSTR_awcache),
        .S01_AXI_awid(DPU1_M_AXI_INSTR_awid),
        .S01_AXI_awlen(DPU1_M_AXI_INSTR_awlen),
        .S01_AXI_awlock(DPU1_M_AXI_INSTR_awlock),
        .S01_AXI_awprot(DPU1_M_AXI_INSTR_awprot),
        .S01_AXI_awqos(DPU1_M_AXI_INSTR_awqos),
        .S01_AXI_awready(DPU1_M_AXI_INSTR_awready),
        .S01_AXI_awsize(DPU1_M_AXI_INSTR_awsize),
        .S01_AXI_awuser(DPU1_M_AXI_INSTR_awuser),
        .S01_AXI_awvalid(DPU1_M_AXI_INSTR_awvalid),
        .S01_AXI_bid(DPU1_M_AXI_INSTR_bid),
        .S01_AXI_bready(DPU1_M_AXI_INSTR_bready),
        .S01_AXI_bresp(DPU1_M_AXI_INSTR_bresp),
        .S01_AXI_bvalid(DPU1_M_AXI_INSTR_bvalid),
        .S01_AXI_rdata(DPU1_M_AXI_INSTR_rdata),
        .S01_AXI_rid(DPU1_M_AXI_INSTR_rid),
        .S01_AXI_rlast(DPU1_M_AXI_INSTR_rlast),
        .S01_AXI_rready(DPU1_M_AXI_INSTR_rready),
        .S01_AXI_rresp(DPU1_M_AXI_INSTR_rresp),
        .S01_AXI_rvalid(DPU1_M_AXI_INSTR_rvalid),
        .S01_AXI_wdata(DPU1_M_AXI_INSTR_wdata),
        .S01_AXI_wlast(DPU1_M_AXI_INSTR_wlast),
        .S01_AXI_wready(DPU1_M_AXI_INSTR_wready),
        .S01_AXI_wstrb(DPU1_M_AXI_INSTR_wstrb),
        .S01_AXI_wvalid(DPU1_M_AXI_INSTR_wvalid),
        .S02_ACLK(CLK),
        .S02_ARESETN(RSTn_PERI),
        .S02_AXI_araddr(DPU2_M_AXI_INSTR_araddr),
        .S02_AXI_arburst(DPU2_M_AXI_INSTR_arburst),
        .S02_AXI_arcache(DPU2_M_AXI_INSTR_arcache),
        .S02_AXI_arid(DPU2_M_AXI_INSTR_arid),
        .S02_AXI_arlen(DPU2_M_AXI_INSTR_arlen),
        .S02_AXI_arlock(DPU2_M_AXI_INSTR_arlock),
        .S02_AXI_arprot(DPU2_M_AXI_INSTR_arprot),
        .S02_AXI_arqos(DPU2_M_AXI_INSTR_arqos),
        .S02_AXI_arready(DPU2_M_AXI_INSTR_arready),
        .S02_AXI_arsize(DPU2_M_AXI_INSTR_arsize),
        .S02_AXI_aruser(DPU2_M_AXI_INSTR_aruser),
        .S02_AXI_arvalid(DPU2_M_AXI_INSTR_arvalid),
        .S02_AXI_awaddr(DPU2_M_AXI_INSTR_awaddr),
        .S02_AXI_awburst(DPU2_M_AXI_INSTR_awburst),
        .S02_AXI_awcache(DPU2_M_AXI_INSTR_awcache),
        .S02_AXI_awid(DPU2_M_AXI_INSTR_awid),
        .S02_AXI_awlen(DPU2_M_AXI_INSTR_awlen),
        .S02_AXI_awlock(DPU2_M_AXI_INSTR_awlock),
        .S02_AXI_awprot(DPU2_M_AXI_INSTR_awprot),
        .S02_AXI_awqos(DPU2_M_AXI_INSTR_awqos),
        .S02_AXI_awready(DPU2_M_AXI_INSTR_awready),
        .S02_AXI_awsize(DPU2_M_AXI_INSTR_awsize),
        .S02_AXI_awuser(DPU2_M_AXI_INSTR_awuser),
        .S02_AXI_awvalid(DPU2_M_AXI_INSTR_awvalid),
        .S02_AXI_bid(DPU2_M_AXI_INSTR_bid),
        .S02_AXI_bready(DPU2_M_AXI_INSTR_bready),
        .S02_AXI_bresp(DPU2_M_AXI_INSTR_bresp),
        .S02_AXI_bvalid(DPU2_M_AXI_INSTR_bvalid),
        .S02_AXI_rdata(DPU2_M_AXI_INSTR_rdata),
        .S02_AXI_rid(DPU2_M_AXI_INSTR_rid),
        .S02_AXI_rlast(DPU2_M_AXI_INSTR_rlast),
        .S02_AXI_rready(DPU2_M_AXI_INSTR_rready),
        .S02_AXI_rresp(DPU2_M_AXI_INSTR_rresp),
        .S02_AXI_rvalid(DPU2_M_AXI_INSTR_rvalid),
        .S02_AXI_wdata(DPU2_M_AXI_INSTR_wdata),
        .S02_AXI_wlast(DPU2_M_AXI_INSTR_wlast),
        .S02_AXI_wready(DPU2_M_AXI_INSTR_wready),
        .S02_AXI_wstrb(DPU2_M_AXI_INSTR_wstrb),
        .S02_AXI_wvalid(DPU2_M_AXI_INSTR_wvalid));
endmodule

module hier_dpu_imp_CAA3KC
   (CLK,
    GHP_CLK_O,
    INTR,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_HP2_FPD_araddr,
    M_AXI_HP2_FPD_arburst,
    M_AXI_HP2_FPD_arcache,
    M_AXI_HP2_FPD_arid,
    M_AXI_HP2_FPD_arlen,
    M_AXI_HP2_FPD_arlock,
    M_AXI_HP2_FPD_arprot,
    M_AXI_HP2_FPD_arqos,
    M_AXI_HP2_FPD_arready,
    M_AXI_HP2_FPD_arsize,
    M_AXI_HP2_FPD_aruser,
    M_AXI_HP2_FPD_arvalid,
    M_AXI_HP2_FPD_awaddr,
    M_AXI_HP2_FPD_awburst,
    M_AXI_HP2_FPD_awcache,
    M_AXI_HP2_FPD_awid,
    M_AXI_HP2_FPD_awlen,
    M_AXI_HP2_FPD_awlock,
    M_AXI_HP2_FPD_awprot,
    M_AXI_HP2_FPD_awqos,
    M_AXI_HP2_FPD_awready,
    M_AXI_HP2_FPD_awsize,
    M_AXI_HP2_FPD_awuser,
    M_AXI_HP2_FPD_awvalid,
    M_AXI_HP2_FPD_bid,
    M_AXI_HP2_FPD_bready,
    M_AXI_HP2_FPD_bresp,
    M_AXI_HP2_FPD_bvalid,
    M_AXI_HP2_FPD_rdata,
    M_AXI_HP2_FPD_rid,
    M_AXI_HP2_FPD_rlast,
    M_AXI_HP2_FPD_rready,
    M_AXI_HP2_FPD_rresp,
    M_AXI_HP2_FPD_rvalid,
    M_AXI_HP2_FPD_wdata,
    M_AXI_HP2_FPD_wlast,
    M_AXI_HP2_FPD_wready,
    M_AXI_HP2_FPD_wstrb,
    M_AXI_HP2_FPD_wvalid,
    M_AXI_HP3_FPD_araddr,
    M_AXI_HP3_FPD_arburst,
    M_AXI_HP3_FPD_arcache,
    M_AXI_HP3_FPD_arid,
    M_AXI_HP3_FPD_arlen,
    M_AXI_HP3_FPD_arlock,
    M_AXI_HP3_FPD_arprot,
    M_AXI_HP3_FPD_arqos,
    M_AXI_HP3_FPD_arready,
    M_AXI_HP3_FPD_arsize,
    M_AXI_HP3_FPD_aruser,
    M_AXI_HP3_FPD_arvalid,
    M_AXI_HP3_FPD_awaddr,
    M_AXI_HP3_FPD_awburst,
    M_AXI_HP3_FPD_awcache,
    M_AXI_HP3_FPD_awid,
    M_AXI_HP3_FPD_awlen,
    M_AXI_HP3_FPD_awlock,
    M_AXI_HP3_FPD_awprot,
    M_AXI_HP3_FPD_awqos,
    M_AXI_HP3_FPD_awready,
    M_AXI_HP3_FPD_awsize,
    M_AXI_HP3_FPD_awuser,
    M_AXI_HP3_FPD_awvalid,
    M_AXI_HP3_FPD_bid,
    M_AXI_HP3_FPD_bready,
    M_AXI_HP3_FPD_bresp,
    M_AXI_HP3_FPD_bvalid,
    M_AXI_HP3_FPD_rdata,
    M_AXI_HP3_FPD_rid,
    M_AXI_HP3_FPD_rlast,
    M_AXI_HP3_FPD_rready,
    M_AXI_HP3_FPD_rresp,
    M_AXI_HP3_FPD_rvalid,
    M_AXI_HP3_FPD_wdata,
    M_AXI_HP3_FPD_wlast,
    M_AXI_HP3_FPD_wready,
    M_AXI_HP3_FPD_wstrb,
    M_AXI_HP3_FPD_wvalid,
    M_AXI_HPC0_FPD_araddr,
    M_AXI_HPC0_FPD_arburst,
    M_AXI_HPC0_FPD_arcache,
    M_AXI_HPC0_FPD_arid,
    M_AXI_HPC0_FPD_arlen,
    M_AXI_HPC0_FPD_arlock,
    M_AXI_HPC0_FPD_arprot,
    M_AXI_HPC0_FPD_arqos,
    M_AXI_HPC0_FPD_arready,
    M_AXI_HPC0_FPD_arsize,
    M_AXI_HPC0_FPD_aruser,
    M_AXI_HPC0_FPD_arvalid,
    M_AXI_HPC0_FPD_awaddr,
    M_AXI_HPC0_FPD_awburst,
    M_AXI_HPC0_FPD_awcache,
    M_AXI_HPC0_FPD_awid,
    M_AXI_HPC0_FPD_awlen,
    M_AXI_HPC0_FPD_awlock,
    M_AXI_HPC0_FPD_awprot,
    M_AXI_HPC0_FPD_awqos,
    M_AXI_HPC0_FPD_awready,
    M_AXI_HPC0_FPD_awsize,
    M_AXI_HPC0_FPD_awuser,
    M_AXI_HPC0_FPD_awvalid,
    M_AXI_HPC0_FPD_bid,
    M_AXI_HPC0_FPD_bready,
    M_AXI_HPC0_FPD_bresp,
    M_AXI_HPC0_FPD_bvalid,
    M_AXI_HPC0_FPD_rdata,
    M_AXI_HPC0_FPD_rid,
    M_AXI_HPC0_FPD_rlast,
    M_AXI_HPC0_FPD_rready,
    M_AXI_HPC0_FPD_rresp,
    M_AXI_HPC0_FPD_rvalid,
    M_AXI_HPC0_FPD_wdata,
    M_AXI_HPC0_FPD_wlast,
    M_AXI_HPC0_FPD_wready,
    M_AXI_HPC0_FPD_wstrb,
    M_AXI_HPC0_FPD_wvalid,
    M_AXI_HPC1_FPD_araddr,
    M_AXI_HPC1_FPD_arburst,
    M_AXI_HPC1_FPD_arcache,
    M_AXI_HPC1_FPD_arid,
    M_AXI_HPC1_FPD_arlen,
    M_AXI_HPC1_FPD_arlock,
    M_AXI_HPC1_FPD_arprot,
    M_AXI_HPC1_FPD_arqos,
    M_AXI_HPC1_FPD_arready,
    M_AXI_HPC1_FPD_arsize,
    M_AXI_HPC1_FPD_aruser,
    M_AXI_HPC1_FPD_arvalid,
    M_AXI_HPC1_FPD_awaddr,
    M_AXI_HPC1_FPD_awburst,
    M_AXI_HPC1_FPD_awcache,
    M_AXI_HPC1_FPD_awid,
    M_AXI_HPC1_FPD_awlen,
    M_AXI_HPC1_FPD_awlock,
    M_AXI_HPC1_FPD_awprot,
    M_AXI_HPC1_FPD_awqos,
    M_AXI_HPC1_FPD_awready,
    M_AXI_HPC1_FPD_awsize,
    M_AXI_HPC1_FPD_awuser,
    M_AXI_HPC1_FPD_awvalid,
    M_AXI_HPC1_FPD_bid,
    M_AXI_HPC1_FPD_bready,
    M_AXI_HPC1_FPD_bresp,
    M_AXI_HPC1_FPD_bvalid,
    M_AXI_HPC1_FPD_rdata,
    M_AXI_HPC1_FPD_rid,
    M_AXI_HPC1_FPD_rlast,
    M_AXI_HPC1_FPD_rready,
    M_AXI_HPC1_FPD_rresp,
    M_AXI_HPC1_FPD_rvalid,
    M_AXI_HPC1_FPD_wdata,
    M_AXI_HPC1_FPD_wlast,
    M_AXI_HPC1_FPD_wready,
    M_AXI_HPC1_FPD_wstrb,
    M_AXI_HPC1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn,
    S_AXI_CLK,
    S_AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input CLK;
  output GHP_CLK_O;
  output [3:0]INTR;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_HP2_FPD_araddr;
  output [1:0]M_AXI_HP2_FPD_arburst;
  output [3:0]M_AXI_HP2_FPD_arcache;
  output [1:0]M_AXI_HP2_FPD_arid;
  output [7:0]M_AXI_HP2_FPD_arlen;
  output M_AXI_HP2_FPD_arlock;
  output [2:0]M_AXI_HP2_FPD_arprot;
  output [3:0]M_AXI_HP2_FPD_arqos;
  input M_AXI_HP2_FPD_arready;
  output [2:0]M_AXI_HP2_FPD_arsize;
  output M_AXI_HP2_FPD_aruser;
  output M_AXI_HP2_FPD_arvalid;
  output [39:0]M_AXI_HP2_FPD_awaddr;
  output [1:0]M_AXI_HP2_FPD_awburst;
  output [3:0]M_AXI_HP2_FPD_awcache;
  output [1:0]M_AXI_HP2_FPD_awid;
  output [7:0]M_AXI_HP2_FPD_awlen;
  output M_AXI_HP2_FPD_awlock;
  output [2:0]M_AXI_HP2_FPD_awprot;
  output [3:0]M_AXI_HP2_FPD_awqos;
  input M_AXI_HP2_FPD_awready;
  output [2:0]M_AXI_HP2_FPD_awsize;
  output M_AXI_HP2_FPD_awuser;
  output M_AXI_HP2_FPD_awvalid;
  input [5:0]M_AXI_HP2_FPD_bid;
  output M_AXI_HP2_FPD_bready;
  input [1:0]M_AXI_HP2_FPD_bresp;
  input M_AXI_HP2_FPD_bvalid;
  input [127:0]M_AXI_HP2_FPD_rdata;
  input [5:0]M_AXI_HP2_FPD_rid;
  input M_AXI_HP2_FPD_rlast;
  output M_AXI_HP2_FPD_rready;
  input [1:0]M_AXI_HP2_FPD_rresp;
  input M_AXI_HP2_FPD_rvalid;
  output [127:0]M_AXI_HP2_FPD_wdata;
  output M_AXI_HP2_FPD_wlast;
  input M_AXI_HP2_FPD_wready;
  output [15:0]M_AXI_HP2_FPD_wstrb;
  output M_AXI_HP2_FPD_wvalid;
  output [39:0]M_AXI_HP3_FPD_araddr;
  output [1:0]M_AXI_HP3_FPD_arburst;
  output [3:0]M_AXI_HP3_FPD_arcache;
  output [1:0]M_AXI_HP3_FPD_arid;
  output [7:0]M_AXI_HP3_FPD_arlen;
  output M_AXI_HP3_FPD_arlock;
  output [2:0]M_AXI_HP3_FPD_arprot;
  output [3:0]M_AXI_HP3_FPD_arqos;
  input M_AXI_HP3_FPD_arready;
  output [2:0]M_AXI_HP3_FPD_arsize;
  output M_AXI_HP3_FPD_aruser;
  output M_AXI_HP3_FPD_arvalid;
  output [39:0]M_AXI_HP3_FPD_awaddr;
  output [1:0]M_AXI_HP3_FPD_awburst;
  output [3:0]M_AXI_HP3_FPD_awcache;
  output [1:0]M_AXI_HP3_FPD_awid;
  output [7:0]M_AXI_HP3_FPD_awlen;
  output M_AXI_HP3_FPD_awlock;
  output [2:0]M_AXI_HP3_FPD_awprot;
  output [3:0]M_AXI_HP3_FPD_awqos;
  input M_AXI_HP3_FPD_awready;
  output [2:0]M_AXI_HP3_FPD_awsize;
  output M_AXI_HP3_FPD_awuser;
  output M_AXI_HP3_FPD_awvalid;
  input [5:0]M_AXI_HP3_FPD_bid;
  output M_AXI_HP3_FPD_bready;
  input [1:0]M_AXI_HP3_FPD_bresp;
  input M_AXI_HP3_FPD_bvalid;
  input [127:0]M_AXI_HP3_FPD_rdata;
  input [5:0]M_AXI_HP3_FPD_rid;
  input M_AXI_HP3_FPD_rlast;
  output M_AXI_HP3_FPD_rready;
  input [1:0]M_AXI_HP3_FPD_rresp;
  input M_AXI_HP3_FPD_rvalid;
  output [127:0]M_AXI_HP3_FPD_wdata;
  output M_AXI_HP3_FPD_wlast;
  input M_AXI_HP3_FPD_wready;
  output [15:0]M_AXI_HP3_FPD_wstrb;
  output M_AXI_HP3_FPD_wvalid;
  output [39:0]M_AXI_HPC0_FPD_araddr;
  output [1:0]M_AXI_HPC0_FPD_arburst;
  output [3:0]M_AXI_HPC0_FPD_arcache;
  output [1:0]M_AXI_HPC0_FPD_arid;
  output [7:0]M_AXI_HPC0_FPD_arlen;
  output M_AXI_HPC0_FPD_arlock;
  output [2:0]M_AXI_HPC0_FPD_arprot;
  output [3:0]M_AXI_HPC0_FPD_arqos;
  input M_AXI_HPC0_FPD_arready;
  output [2:0]M_AXI_HPC0_FPD_arsize;
  output M_AXI_HPC0_FPD_aruser;
  output M_AXI_HPC0_FPD_arvalid;
  output [39:0]M_AXI_HPC0_FPD_awaddr;
  output [1:0]M_AXI_HPC0_FPD_awburst;
  output [3:0]M_AXI_HPC0_FPD_awcache;
  output [1:0]M_AXI_HPC0_FPD_awid;
  output [7:0]M_AXI_HPC0_FPD_awlen;
  output M_AXI_HPC0_FPD_awlock;
  output [2:0]M_AXI_HPC0_FPD_awprot;
  output [3:0]M_AXI_HPC0_FPD_awqos;
  input M_AXI_HPC0_FPD_awready;
  output [2:0]M_AXI_HPC0_FPD_awsize;
  output M_AXI_HPC0_FPD_awuser;
  output M_AXI_HPC0_FPD_awvalid;
  input [5:0]M_AXI_HPC0_FPD_bid;
  output M_AXI_HPC0_FPD_bready;
  input [1:0]M_AXI_HPC0_FPD_bresp;
  input M_AXI_HPC0_FPD_bvalid;
  input [127:0]M_AXI_HPC0_FPD_rdata;
  input [5:0]M_AXI_HPC0_FPD_rid;
  input M_AXI_HPC0_FPD_rlast;
  output M_AXI_HPC0_FPD_rready;
  input [1:0]M_AXI_HPC0_FPD_rresp;
  input M_AXI_HPC0_FPD_rvalid;
  output [127:0]M_AXI_HPC0_FPD_wdata;
  output M_AXI_HPC0_FPD_wlast;
  input M_AXI_HPC0_FPD_wready;
  output [15:0]M_AXI_HPC0_FPD_wstrb;
  output M_AXI_HPC0_FPD_wvalid;
  output [39:0]M_AXI_HPC1_FPD_araddr;
  output [1:0]M_AXI_HPC1_FPD_arburst;
  output [3:0]M_AXI_HPC1_FPD_arcache;
  output [2:0]M_AXI_HPC1_FPD_arid;
  output [7:0]M_AXI_HPC1_FPD_arlen;
  output M_AXI_HPC1_FPD_arlock;
  output [2:0]M_AXI_HPC1_FPD_arprot;
  output [3:0]M_AXI_HPC1_FPD_arqos;
  input M_AXI_HPC1_FPD_arready;
  output [2:0]M_AXI_HPC1_FPD_arsize;
  output M_AXI_HPC1_FPD_aruser;
  output M_AXI_HPC1_FPD_arvalid;
  output [39:0]M_AXI_HPC1_FPD_awaddr;
  output [1:0]M_AXI_HPC1_FPD_awburst;
  output [3:0]M_AXI_HPC1_FPD_awcache;
  output [2:0]M_AXI_HPC1_FPD_awid;
  output [7:0]M_AXI_HPC1_FPD_awlen;
  output M_AXI_HPC1_FPD_awlock;
  output [2:0]M_AXI_HPC1_FPD_awprot;
  output [3:0]M_AXI_HPC1_FPD_awqos;
  input M_AXI_HPC1_FPD_awready;
  output [2:0]M_AXI_HPC1_FPD_awsize;
  output M_AXI_HPC1_FPD_awuser;
  output M_AXI_HPC1_FPD_awvalid;
  input [5:0]M_AXI_HPC1_FPD_bid;
  output M_AXI_HPC1_FPD_bready;
  input [1:0]M_AXI_HPC1_FPD_bresp;
  input M_AXI_HPC1_FPD_bvalid;
  input [127:0]M_AXI_HPC1_FPD_rdata;
  input [5:0]M_AXI_HPC1_FPD_rid;
  input M_AXI_HPC1_FPD_rlast;
  output M_AXI_HPC1_FPD_rready;
  input [1:0]M_AXI_HPC1_FPD_rresp;
  input M_AXI_HPC1_FPD_rvalid;
  output [127:0]M_AXI_HPC1_FPD_wdata;
  output M_AXI_HPC1_FPD_wlast;
  input M_AXI_HPC1_FPD_wready;
  output [15:0]M_AXI_HPC1_FPD_wstrb;
  output M_AXI_HPC1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [3:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [3:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn;
  input S_AXI_CLK;
  input S_AXI_RSTn;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire CLK;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARQOS;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_ARREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA0_ARUSER;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_ARVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWQOS;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_AWREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA0_AWUSER;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_AWVALID;
  wire [5:0]DPUCZDX8G_DPU1_M_AXI_DATA0_BID;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_BREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_BRESP;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_BVALID;
  wire [127:0]DPUCZDX8G_DPU1_M_AXI_DATA0_RDATA;
  wire [5:0]DPUCZDX8G_DPU1_M_AXI_DATA0_RID;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_RLAST;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_RREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA0_RRESP;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_RVALID;
  wire [127:0]DPUCZDX8G_DPU1_M_AXI_DATA0_WDATA;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_WLAST;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_WREADY;
  wire [15:0]DPUCZDX8G_DPU1_M_AXI_DATA0_WSTRB;
  wire DPUCZDX8G_DPU1_M_AXI_DATA0_WVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARQOS;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_ARREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA1_ARUSER;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_ARVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWQOS;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_AWREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_DATA1_AWUSER;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_AWVALID;
  wire [5:0]DPUCZDX8G_DPU1_M_AXI_DATA1_BID;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_BREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_BRESP;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_BVALID;
  wire [127:0]DPUCZDX8G_DPU1_M_AXI_DATA1_RDATA;
  wire [5:0]DPUCZDX8G_DPU1_M_AXI_DATA1_RID;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_RLAST;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_RREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_DATA1_RRESP;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_RVALID;
  wire [127:0]DPUCZDX8G_DPU1_M_AXI_DATA1_WDATA;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_WLAST;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_WREADY;
  wire [15:0]DPUCZDX8G_DPU1_M_AXI_DATA1_WSTRB;
  wire DPUCZDX8G_DPU1_M_AXI_DATA1_WVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARQOS;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_ARREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_INSTR_ARUSER;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_ARVALID;
  wire [39:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWADDR;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWBURST;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWID;
  wire [7:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWLEN;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWPROT;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWQOS;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_AWREADY;
  wire [2:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU1_M_AXI_INSTR_AWUSER;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_AWVALID;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_BID;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_BREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_BRESP;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_BVALID;
  wire [31:0]DPUCZDX8G_DPU1_M_AXI_INSTR_RDATA;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_RID;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_RLAST;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_RREADY;
  wire [1:0]DPUCZDX8G_DPU1_M_AXI_INSTR_RRESP;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_RVALID;
  wire [31:0]DPUCZDX8G_DPU1_M_AXI_INSTR_WDATA;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_WLAST;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_WREADY;
  wire [3:0]DPUCZDX8G_DPU1_M_AXI_INSTR_WSTRB;
  wire DPUCZDX8G_DPU1_M_AXI_INSTR_WVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARQOS;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_ARREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA0_ARUSER;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_ARVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWQOS;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_AWREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA0_AWUSER;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_AWVALID;
  wire [5:0]DPUCZDX8G_DPU2_M_AXI_DATA0_BID;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_BREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_BRESP;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_BVALID;
  wire [127:0]DPUCZDX8G_DPU2_M_AXI_DATA0_RDATA;
  wire [5:0]DPUCZDX8G_DPU2_M_AXI_DATA0_RID;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_RLAST;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_RREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA0_RRESP;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_RVALID;
  wire [127:0]DPUCZDX8G_DPU2_M_AXI_DATA0_WDATA;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_WLAST;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_WREADY;
  wire [15:0]DPUCZDX8G_DPU2_M_AXI_DATA0_WSTRB;
  wire DPUCZDX8G_DPU2_M_AXI_DATA0_WVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARQOS;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_ARREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA1_ARUSER;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_ARVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWQOS;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_AWREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_DATA1_AWUSER;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_AWVALID;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_BID;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_BREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_BRESP;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_BVALID;
  wire [127:0]DPUCZDX8G_DPU2_M_AXI_DATA1_RDATA;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_DATA1_RID;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_RLAST;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_RREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_DATA1_RRESP;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_RVALID;
  wire [127:0]DPUCZDX8G_DPU2_M_AXI_DATA1_WDATA;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_WLAST;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_WREADY;
  wire [15:0]DPUCZDX8G_DPU2_M_AXI_DATA1_WSTRB;
  wire DPUCZDX8G_DPU2_M_AXI_DATA1_WVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARQOS;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_ARREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_INSTR_ARUSER;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_ARVALID;
  wire [39:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWADDR;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWBURST;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWID;
  wire [7:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWLEN;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWPROT;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWQOS;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_AWREADY;
  wire [2:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU2_M_AXI_INSTR_AWUSER;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_AWVALID;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_BID;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_BREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_BRESP;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_BVALID;
  wire [31:0]DPUCZDX8G_DPU2_M_AXI_INSTR_RDATA;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_RID;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_RLAST;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_RREADY;
  wire [1:0]DPUCZDX8G_DPU2_M_AXI_INSTR_RRESP;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_RVALID;
  wire [31:0]DPUCZDX8G_DPU2_M_AXI_INSTR_WDATA;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_WLAST;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_WREADY;
  wire [3:0]DPUCZDX8G_DPU2_M_AXI_INSTR_WSTRB;
  wire DPUCZDX8G_DPU2_M_AXI_INSTR_WVALID;
  wire [39:0]DPUCZDX8G_SFM_M_AXI_ARADDR;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_ARBURST;
  wire [3:0]DPUCZDX8G_SFM_M_AXI_ARCACHE;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_ARID;
  wire [7:0]DPUCZDX8G_SFM_M_AXI_ARLEN;
  wire [0:0]DPUCZDX8G_SFM_M_AXI_ARLOCK;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_ARPROT;
  wire [3:0]DPUCZDX8G_SFM_M_AXI_ARQOS;
  wire DPUCZDX8G_SFM_M_AXI_ARREADY;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_ARSIZE;
  wire [0:0]DPUCZDX8G_SFM_M_AXI_ARUSER;
  wire DPUCZDX8G_SFM_M_AXI_ARVALID;
  wire [39:0]DPUCZDX8G_SFM_M_AXI_AWADDR;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_AWBURST;
  wire [3:0]DPUCZDX8G_SFM_M_AXI_AWCACHE;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_AWID;
  wire [7:0]DPUCZDX8G_SFM_M_AXI_AWLEN;
  wire [0:0]DPUCZDX8G_SFM_M_AXI_AWLOCK;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_AWPROT;
  wire [3:0]DPUCZDX8G_SFM_M_AXI_AWQOS;
  wire DPUCZDX8G_SFM_M_AXI_AWREADY;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_AWSIZE;
  wire [0:0]DPUCZDX8G_SFM_M_AXI_AWUSER;
  wire DPUCZDX8G_SFM_M_AXI_AWVALID;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_BID;
  wire DPUCZDX8G_SFM_M_AXI_BREADY;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_BRESP;
  wire DPUCZDX8G_SFM_M_AXI_BVALID;
  wire [127:0]DPUCZDX8G_SFM_M_AXI_RDATA;
  wire [2:0]DPUCZDX8G_SFM_M_AXI_RID;
  wire DPUCZDX8G_SFM_M_AXI_RLAST;
  wire DPUCZDX8G_SFM_M_AXI_RREADY;
  wire [1:0]DPUCZDX8G_SFM_M_AXI_RRESP;
  wire DPUCZDX8G_SFM_M_AXI_RVALID;
  wire [127:0]DPUCZDX8G_SFM_M_AXI_WDATA;
  wire DPUCZDX8G_SFM_M_AXI_WLAST;
  wire DPUCZDX8G_SFM_M_AXI_WREADY;
  wire [15:0]DPUCZDX8G_SFM_M_AXI_WSTRB;
  wire DPUCZDX8G_SFM_M_AXI_WVALID;
  wire DPUCZDX8G_dpu0_interrupt;
  wire DPUCZDX8G_dpu1_2x_clk_ce;
  wire DPUCZDX8G_dpu1_interrupt;
  wire DPUCZDX8G_dpu2_2x_clk_ce;
  wire DPUCZDX8G_dpu2_interrupt;
  wire DPUCZDX8G_dpu_2x_clk_ce;
  wire DPUCZDX8G_sfm_interrupt;
  wire GHP_CLK_O;
  wire [3:0]INTR;
  wire [39:0]M_AXI_HP0_FPD_araddr;
  wire [1:0]M_AXI_HP0_FPD_arburst;
  wire [3:0]M_AXI_HP0_FPD_arcache;
  wire [1:0]M_AXI_HP0_FPD_arid;
  wire [7:0]M_AXI_HP0_FPD_arlen;
  wire M_AXI_HP0_FPD_arlock;
  wire [2:0]M_AXI_HP0_FPD_arprot;
  wire [3:0]M_AXI_HP0_FPD_arqos;
  wire M_AXI_HP0_FPD_arready;
  wire [2:0]M_AXI_HP0_FPD_arsize;
  wire M_AXI_HP0_FPD_aruser;
  wire M_AXI_HP0_FPD_arvalid;
  wire [39:0]M_AXI_HP0_FPD_awaddr;
  wire [1:0]M_AXI_HP0_FPD_awburst;
  wire [3:0]M_AXI_HP0_FPD_awcache;
  wire [1:0]M_AXI_HP0_FPD_awid;
  wire [7:0]M_AXI_HP0_FPD_awlen;
  wire M_AXI_HP0_FPD_awlock;
  wire [2:0]M_AXI_HP0_FPD_awprot;
  wire [3:0]M_AXI_HP0_FPD_awqos;
  wire M_AXI_HP0_FPD_awready;
  wire [2:0]M_AXI_HP0_FPD_awsize;
  wire M_AXI_HP0_FPD_awuser;
  wire M_AXI_HP0_FPD_awvalid;
  wire [5:0]M_AXI_HP0_FPD_bid;
  wire M_AXI_HP0_FPD_bready;
  wire [1:0]M_AXI_HP0_FPD_bresp;
  wire M_AXI_HP0_FPD_bvalid;
  wire [127:0]M_AXI_HP0_FPD_rdata;
  wire [5:0]M_AXI_HP0_FPD_rid;
  wire M_AXI_HP0_FPD_rlast;
  wire M_AXI_HP0_FPD_rready;
  wire [1:0]M_AXI_HP0_FPD_rresp;
  wire M_AXI_HP0_FPD_rvalid;
  wire [127:0]M_AXI_HP0_FPD_wdata;
  wire M_AXI_HP0_FPD_wlast;
  wire M_AXI_HP0_FPD_wready;
  wire [15:0]M_AXI_HP0_FPD_wstrb;
  wire M_AXI_HP0_FPD_wvalid;
  wire [39:0]M_AXI_HP1_FPD_araddr;
  wire [1:0]M_AXI_HP1_FPD_arburst;
  wire [3:0]M_AXI_HP1_FPD_arcache;
  wire [1:0]M_AXI_HP1_FPD_arid;
  wire [7:0]M_AXI_HP1_FPD_arlen;
  wire M_AXI_HP1_FPD_arlock;
  wire [2:0]M_AXI_HP1_FPD_arprot;
  wire [3:0]M_AXI_HP1_FPD_arqos;
  wire M_AXI_HP1_FPD_arready;
  wire [2:0]M_AXI_HP1_FPD_arsize;
  wire M_AXI_HP1_FPD_aruser;
  wire M_AXI_HP1_FPD_arvalid;
  wire [39:0]M_AXI_HP1_FPD_awaddr;
  wire [1:0]M_AXI_HP1_FPD_awburst;
  wire [3:0]M_AXI_HP1_FPD_awcache;
  wire [1:0]M_AXI_HP1_FPD_awid;
  wire [7:0]M_AXI_HP1_FPD_awlen;
  wire M_AXI_HP1_FPD_awlock;
  wire [2:0]M_AXI_HP1_FPD_awprot;
  wire [3:0]M_AXI_HP1_FPD_awqos;
  wire M_AXI_HP1_FPD_awready;
  wire [2:0]M_AXI_HP1_FPD_awsize;
  wire M_AXI_HP1_FPD_awuser;
  wire M_AXI_HP1_FPD_awvalid;
  wire [5:0]M_AXI_HP1_FPD_bid;
  wire M_AXI_HP1_FPD_bready;
  wire [1:0]M_AXI_HP1_FPD_bresp;
  wire M_AXI_HP1_FPD_bvalid;
  wire [127:0]M_AXI_HP1_FPD_rdata;
  wire [5:0]M_AXI_HP1_FPD_rid;
  wire M_AXI_HP1_FPD_rlast;
  wire M_AXI_HP1_FPD_rready;
  wire [1:0]M_AXI_HP1_FPD_rresp;
  wire M_AXI_HP1_FPD_rvalid;
  wire [127:0]M_AXI_HP1_FPD_wdata;
  wire M_AXI_HP1_FPD_wlast;
  wire M_AXI_HP1_FPD_wready;
  wire [15:0]M_AXI_HP1_FPD_wstrb;
  wire M_AXI_HP1_FPD_wvalid;
  wire [39:0]M_AXI_HP2_FPD_araddr;
  wire [1:0]M_AXI_HP2_FPD_arburst;
  wire [3:0]M_AXI_HP2_FPD_arcache;
  wire [1:0]M_AXI_HP2_FPD_arid;
  wire [7:0]M_AXI_HP2_FPD_arlen;
  wire M_AXI_HP2_FPD_arlock;
  wire [2:0]M_AXI_HP2_FPD_arprot;
  wire [3:0]M_AXI_HP2_FPD_arqos;
  wire M_AXI_HP2_FPD_arready;
  wire [2:0]M_AXI_HP2_FPD_arsize;
  wire M_AXI_HP2_FPD_aruser;
  wire M_AXI_HP2_FPD_arvalid;
  wire [39:0]M_AXI_HP2_FPD_awaddr;
  wire [1:0]M_AXI_HP2_FPD_awburst;
  wire [3:0]M_AXI_HP2_FPD_awcache;
  wire [1:0]M_AXI_HP2_FPD_awid;
  wire [7:0]M_AXI_HP2_FPD_awlen;
  wire M_AXI_HP2_FPD_awlock;
  wire [2:0]M_AXI_HP2_FPD_awprot;
  wire [3:0]M_AXI_HP2_FPD_awqos;
  wire M_AXI_HP2_FPD_awready;
  wire [2:0]M_AXI_HP2_FPD_awsize;
  wire M_AXI_HP2_FPD_awuser;
  wire M_AXI_HP2_FPD_awvalid;
  wire [5:0]M_AXI_HP2_FPD_bid;
  wire M_AXI_HP2_FPD_bready;
  wire [1:0]M_AXI_HP2_FPD_bresp;
  wire M_AXI_HP2_FPD_bvalid;
  wire [127:0]M_AXI_HP2_FPD_rdata;
  wire [5:0]M_AXI_HP2_FPD_rid;
  wire M_AXI_HP2_FPD_rlast;
  wire M_AXI_HP2_FPD_rready;
  wire [1:0]M_AXI_HP2_FPD_rresp;
  wire M_AXI_HP2_FPD_rvalid;
  wire [127:0]M_AXI_HP2_FPD_wdata;
  wire M_AXI_HP2_FPD_wlast;
  wire M_AXI_HP2_FPD_wready;
  wire [15:0]M_AXI_HP2_FPD_wstrb;
  wire M_AXI_HP2_FPD_wvalid;
  wire [39:0]M_AXI_HP3_FPD_araddr;
  wire [1:0]M_AXI_HP3_FPD_arburst;
  wire [3:0]M_AXI_HP3_FPD_arcache;
  wire [1:0]M_AXI_HP3_FPD_arid;
  wire [7:0]M_AXI_HP3_FPD_arlen;
  wire M_AXI_HP3_FPD_arlock;
  wire [2:0]M_AXI_HP3_FPD_arprot;
  wire [3:0]M_AXI_HP3_FPD_arqos;
  wire M_AXI_HP3_FPD_arready;
  wire [2:0]M_AXI_HP3_FPD_arsize;
  wire M_AXI_HP3_FPD_aruser;
  wire M_AXI_HP3_FPD_arvalid;
  wire [39:0]M_AXI_HP3_FPD_awaddr;
  wire [1:0]M_AXI_HP3_FPD_awburst;
  wire [3:0]M_AXI_HP3_FPD_awcache;
  wire [1:0]M_AXI_HP3_FPD_awid;
  wire [7:0]M_AXI_HP3_FPD_awlen;
  wire M_AXI_HP3_FPD_awlock;
  wire [2:0]M_AXI_HP3_FPD_awprot;
  wire [3:0]M_AXI_HP3_FPD_awqos;
  wire M_AXI_HP3_FPD_awready;
  wire [2:0]M_AXI_HP3_FPD_awsize;
  wire M_AXI_HP3_FPD_awuser;
  wire M_AXI_HP3_FPD_awvalid;
  wire [5:0]M_AXI_HP3_FPD_bid;
  wire M_AXI_HP3_FPD_bready;
  wire [1:0]M_AXI_HP3_FPD_bresp;
  wire M_AXI_HP3_FPD_bvalid;
  wire [127:0]M_AXI_HP3_FPD_rdata;
  wire [5:0]M_AXI_HP3_FPD_rid;
  wire M_AXI_HP3_FPD_rlast;
  wire M_AXI_HP3_FPD_rready;
  wire [1:0]M_AXI_HP3_FPD_rresp;
  wire M_AXI_HP3_FPD_rvalid;
  wire [127:0]M_AXI_HP3_FPD_wdata;
  wire M_AXI_HP3_FPD_wlast;
  wire M_AXI_HP3_FPD_wready;
  wire [15:0]M_AXI_HP3_FPD_wstrb;
  wire M_AXI_HP3_FPD_wvalid;
  wire [39:0]M_AXI_HPC0_FPD_araddr;
  wire [1:0]M_AXI_HPC0_FPD_arburst;
  wire [3:0]M_AXI_HPC0_FPD_arcache;
  wire [1:0]M_AXI_HPC0_FPD_arid;
  wire [7:0]M_AXI_HPC0_FPD_arlen;
  wire M_AXI_HPC0_FPD_arlock;
  wire [2:0]M_AXI_HPC0_FPD_arprot;
  wire [3:0]M_AXI_HPC0_FPD_arqos;
  wire M_AXI_HPC0_FPD_arready;
  wire [2:0]M_AXI_HPC0_FPD_arsize;
  wire M_AXI_HPC0_FPD_aruser;
  wire M_AXI_HPC0_FPD_arvalid;
  wire [39:0]M_AXI_HPC0_FPD_awaddr;
  wire [1:0]M_AXI_HPC0_FPD_awburst;
  wire [3:0]M_AXI_HPC0_FPD_awcache;
  wire [1:0]M_AXI_HPC0_FPD_awid;
  wire [7:0]M_AXI_HPC0_FPD_awlen;
  wire M_AXI_HPC0_FPD_awlock;
  wire [2:0]M_AXI_HPC0_FPD_awprot;
  wire [3:0]M_AXI_HPC0_FPD_awqos;
  wire M_AXI_HPC0_FPD_awready;
  wire [2:0]M_AXI_HPC0_FPD_awsize;
  wire M_AXI_HPC0_FPD_awuser;
  wire M_AXI_HPC0_FPD_awvalid;
  wire [5:0]M_AXI_HPC0_FPD_bid;
  wire M_AXI_HPC0_FPD_bready;
  wire [1:0]M_AXI_HPC0_FPD_bresp;
  wire M_AXI_HPC0_FPD_bvalid;
  wire [127:0]M_AXI_HPC0_FPD_rdata;
  wire [5:0]M_AXI_HPC0_FPD_rid;
  wire M_AXI_HPC0_FPD_rlast;
  wire M_AXI_HPC0_FPD_rready;
  wire [1:0]M_AXI_HPC0_FPD_rresp;
  wire M_AXI_HPC0_FPD_rvalid;
  wire [127:0]M_AXI_HPC0_FPD_wdata;
  wire M_AXI_HPC0_FPD_wlast;
  wire M_AXI_HPC0_FPD_wready;
  wire [15:0]M_AXI_HPC0_FPD_wstrb;
  wire M_AXI_HPC0_FPD_wvalid;
  wire [39:0]M_AXI_HPC1_FPD_araddr;
  wire [1:0]M_AXI_HPC1_FPD_arburst;
  wire [3:0]M_AXI_HPC1_FPD_arcache;
  wire [2:0]M_AXI_HPC1_FPD_arid;
  wire [7:0]M_AXI_HPC1_FPD_arlen;
  wire M_AXI_HPC1_FPD_arlock;
  wire [2:0]M_AXI_HPC1_FPD_arprot;
  wire [3:0]M_AXI_HPC1_FPD_arqos;
  wire M_AXI_HPC1_FPD_arready;
  wire [2:0]M_AXI_HPC1_FPD_arsize;
  wire M_AXI_HPC1_FPD_aruser;
  wire M_AXI_HPC1_FPD_arvalid;
  wire [39:0]M_AXI_HPC1_FPD_awaddr;
  wire [1:0]M_AXI_HPC1_FPD_awburst;
  wire [3:0]M_AXI_HPC1_FPD_awcache;
  wire [2:0]M_AXI_HPC1_FPD_awid;
  wire [7:0]M_AXI_HPC1_FPD_awlen;
  wire M_AXI_HPC1_FPD_awlock;
  wire [2:0]M_AXI_HPC1_FPD_awprot;
  wire [3:0]M_AXI_HPC1_FPD_awqos;
  wire M_AXI_HPC1_FPD_awready;
  wire [2:0]M_AXI_HPC1_FPD_awsize;
  wire M_AXI_HPC1_FPD_awuser;
  wire M_AXI_HPC1_FPD_awvalid;
  wire [5:0]M_AXI_HPC1_FPD_bid;
  wire M_AXI_HPC1_FPD_bready;
  wire [1:0]M_AXI_HPC1_FPD_bresp;
  wire M_AXI_HPC1_FPD_bvalid;
  wire [127:0]M_AXI_HPC1_FPD_rdata;
  wire [5:0]M_AXI_HPC1_FPD_rid;
  wire M_AXI_HPC1_FPD_rlast;
  wire M_AXI_HPC1_FPD_rready;
  wire [1:0]M_AXI_HPC1_FPD_rresp;
  wire M_AXI_HPC1_FPD_rvalid;
  wire [127:0]M_AXI_HPC1_FPD_wdata;
  wire M_AXI_HPC1_FPD_wlast;
  wire M_AXI_HPC1_FPD_wready;
  wire [15:0]M_AXI_HPC1_FPD_wstrb;
  wire M_AXI_HPC1_FPD_wvalid;
  wire [39:0]M_AXI_LPD_araddr;
  wire [1:0]M_AXI_LPD_arburst;
  wire [3:0]M_AXI_LPD_arcache;
  wire [3:0]M_AXI_LPD_arid;
  wire [7:0]M_AXI_LPD_arlen;
  wire M_AXI_LPD_arlock;
  wire [2:0]M_AXI_LPD_arprot;
  wire [3:0]M_AXI_LPD_arqos;
  wire M_AXI_LPD_arready;
  wire [2:0]M_AXI_LPD_arsize;
  wire M_AXI_LPD_aruser;
  wire M_AXI_LPD_arvalid;
  wire [39:0]M_AXI_LPD_awaddr;
  wire [1:0]M_AXI_LPD_awburst;
  wire [3:0]M_AXI_LPD_awcache;
  wire [3:0]M_AXI_LPD_awid;
  wire [7:0]M_AXI_LPD_awlen;
  wire M_AXI_LPD_awlock;
  wire [2:0]M_AXI_LPD_awprot;
  wire [3:0]M_AXI_LPD_awqos;
  wire M_AXI_LPD_awready;
  wire [2:0]M_AXI_LPD_awsize;
  wire M_AXI_LPD_awuser;
  wire M_AXI_LPD_awvalid;
  wire [5:0]M_AXI_LPD_bid;
  wire M_AXI_LPD_bready;
  wire [1:0]M_AXI_LPD_bresp;
  wire M_AXI_LPD_bvalid;
  wire [31:0]M_AXI_LPD_rdata;
  wire [5:0]M_AXI_LPD_rid;
  wire M_AXI_LPD_rlast;
  wire M_AXI_LPD_rready;
  wire [1:0]M_AXI_LPD_rresp;
  wire M_AXI_LPD_rvalid;
  wire [31:0]M_AXI_LPD_wdata;
  wire M_AXI_LPD_wlast;
  wire M_AXI_LPD_wready;
  wire [3:0]M_AXI_LPD_wstrb;
  wire M_AXI_LPD_wvalid;
  wire RSTn;
  wire S_AXI_CLK;
  wire S_AXI_RSTn;
  wire [39:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [15:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire [15:0]S_AXI_aruser;
  wire S_AXI_arvalid;
  wire [39:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [15:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire [15:0]S_AXI_awuser;
  wire S_AXI_awvalid;
  wire [15:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [15:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire hier_dpu_clk_DPU_CLK;
  wire hier_dpu_clk_DSP_CLK;
  wire hier_dpu_clk_DSP_CLK1;
  wire hier_dpu_clk_DSP_CLK2;
  wire [0:0]hier_dpu_clk_RSTn_DSP;
  wire [0:0]hier_dpu_clk_RSTn_INTC;
  wire [0:0]hier_dpu_clk_RSTn_PERI;

  top_DPUCZDX8G_0 DPUCZDX8G
       (.dpu0_interrupt(DPUCZDX8G_dpu0_interrupt),
        .dpu0_m_axi_data0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .dpu0_m_axi_data0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .dpu0_m_axi_data0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .dpu0_m_axi_data0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .dpu0_m_axi_data0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .dpu0_m_axi_data0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .dpu0_m_axi_data0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .dpu0_m_axi_data0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .dpu0_m_axi_data0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .dpu0_m_axi_data0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .dpu0_m_axi_data0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .dpu0_m_axi_data0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .dpu0_m_axi_data0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .dpu0_m_axi_data0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .dpu0_m_axi_data0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .dpu0_m_axi_data0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .dpu0_m_axi_data0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .dpu0_m_axi_data0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .dpu0_m_axi_data0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .dpu0_m_axi_data0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .dpu0_m_axi_data0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .dpu0_m_axi_data0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .dpu0_m_axi_data0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .dpu0_m_axi_data0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .dpu0_m_axi_data0_bid(DPUCZDX8G_DPU0_M_AXI_DATA0_BID),
        .dpu0_m_axi_data0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .dpu0_m_axi_data0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .dpu0_m_axi_data0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .dpu0_m_axi_data0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .dpu0_m_axi_data0_rid(DPUCZDX8G_DPU0_M_AXI_DATA0_RID),
        .dpu0_m_axi_data0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .dpu0_m_axi_data0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .dpu0_m_axi_data0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .dpu0_m_axi_data0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .dpu0_m_axi_data0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .dpu0_m_axi_data0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .dpu0_m_axi_data0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .dpu0_m_axi_data0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .dpu0_m_axi_data0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .dpu0_m_axi_data1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .dpu0_m_axi_data1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .dpu0_m_axi_data1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .dpu0_m_axi_data1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .dpu0_m_axi_data1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .dpu0_m_axi_data1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .dpu0_m_axi_data1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .dpu0_m_axi_data1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .dpu0_m_axi_data1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .dpu0_m_axi_data1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .dpu0_m_axi_data1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .dpu0_m_axi_data1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .dpu0_m_axi_data1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .dpu0_m_axi_data1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .dpu0_m_axi_data1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .dpu0_m_axi_data1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .dpu0_m_axi_data1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .dpu0_m_axi_data1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .dpu0_m_axi_data1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .dpu0_m_axi_data1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .dpu0_m_axi_data1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .dpu0_m_axi_data1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .dpu0_m_axi_data1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .dpu0_m_axi_data1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .dpu0_m_axi_data1_bid(DPUCZDX8G_DPU0_M_AXI_DATA1_BID),
        .dpu0_m_axi_data1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .dpu0_m_axi_data1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .dpu0_m_axi_data1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .dpu0_m_axi_data1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .dpu0_m_axi_data1_rid(DPUCZDX8G_DPU0_M_AXI_DATA1_RID),
        .dpu0_m_axi_data1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .dpu0_m_axi_data1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .dpu0_m_axi_data1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .dpu0_m_axi_data1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .dpu0_m_axi_data1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .dpu0_m_axi_data1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .dpu0_m_axi_data1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .dpu0_m_axi_data1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .dpu0_m_axi_data1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .dpu0_m_axi_instr_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .dpu0_m_axi_instr_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .dpu0_m_axi_instr_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .dpu0_m_axi_instr_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .dpu0_m_axi_instr_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .dpu0_m_axi_instr_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .dpu0_m_axi_instr_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .dpu0_m_axi_instr_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .dpu0_m_axi_instr_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .dpu0_m_axi_instr_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .dpu0_m_axi_instr_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .dpu0_m_axi_instr_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .dpu0_m_axi_instr_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .dpu0_m_axi_instr_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .dpu0_m_axi_instr_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .dpu0_m_axi_instr_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .dpu0_m_axi_instr_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .dpu0_m_axi_instr_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .dpu0_m_axi_instr_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .dpu0_m_axi_instr_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .dpu0_m_axi_instr_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .dpu0_m_axi_instr_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .dpu0_m_axi_instr_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .dpu0_m_axi_instr_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .dpu0_m_axi_instr_bid({1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_INSTR_BID}),
        .dpu0_m_axi_instr_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .dpu0_m_axi_instr_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .dpu0_m_axi_instr_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .dpu0_m_axi_instr_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .dpu0_m_axi_instr_rid({1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_INSTR_RID}),
        .dpu0_m_axi_instr_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .dpu0_m_axi_instr_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .dpu0_m_axi_instr_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .dpu0_m_axi_instr_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .dpu0_m_axi_instr_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .dpu0_m_axi_instr_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .dpu0_m_axi_instr_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .dpu0_m_axi_instr_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .dpu0_m_axi_instr_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .dpu1_2x_clk(hier_dpu_clk_DSP_CLK1),
        .dpu1_2x_clk_ce(DPUCZDX8G_dpu1_2x_clk_ce),
        .dpu1_interrupt(DPUCZDX8G_dpu1_interrupt),
        .dpu1_m_axi_data0_araddr(DPUCZDX8G_DPU1_M_AXI_DATA0_ARADDR),
        .dpu1_m_axi_data0_arburst(DPUCZDX8G_DPU1_M_AXI_DATA0_ARBURST),
        .dpu1_m_axi_data0_arcache(DPUCZDX8G_DPU1_M_AXI_DATA0_ARCACHE),
        .dpu1_m_axi_data0_arid(DPUCZDX8G_DPU1_M_AXI_DATA0_ARID),
        .dpu1_m_axi_data0_arlen(DPUCZDX8G_DPU1_M_AXI_DATA0_ARLEN),
        .dpu1_m_axi_data0_arlock(DPUCZDX8G_DPU1_M_AXI_DATA0_ARLOCK),
        .dpu1_m_axi_data0_arprot(DPUCZDX8G_DPU1_M_AXI_DATA0_ARPROT),
        .dpu1_m_axi_data0_arqos(DPUCZDX8G_DPU1_M_AXI_DATA0_ARQOS),
        .dpu1_m_axi_data0_arready(DPUCZDX8G_DPU1_M_AXI_DATA0_ARREADY),
        .dpu1_m_axi_data0_arsize(DPUCZDX8G_DPU1_M_AXI_DATA0_ARSIZE),
        .dpu1_m_axi_data0_aruser(DPUCZDX8G_DPU1_M_AXI_DATA0_ARUSER),
        .dpu1_m_axi_data0_arvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_ARVALID),
        .dpu1_m_axi_data0_awaddr(DPUCZDX8G_DPU1_M_AXI_DATA0_AWADDR),
        .dpu1_m_axi_data0_awburst(DPUCZDX8G_DPU1_M_AXI_DATA0_AWBURST),
        .dpu1_m_axi_data0_awcache(DPUCZDX8G_DPU1_M_AXI_DATA0_AWCACHE),
        .dpu1_m_axi_data0_awid(DPUCZDX8G_DPU1_M_AXI_DATA0_AWID),
        .dpu1_m_axi_data0_awlen(DPUCZDX8G_DPU1_M_AXI_DATA0_AWLEN),
        .dpu1_m_axi_data0_awlock(DPUCZDX8G_DPU1_M_AXI_DATA0_AWLOCK),
        .dpu1_m_axi_data0_awprot(DPUCZDX8G_DPU1_M_AXI_DATA0_AWPROT),
        .dpu1_m_axi_data0_awqos(DPUCZDX8G_DPU1_M_AXI_DATA0_AWQOS),
        .dpu1_m_axi_data0_awready(DPUCZDX8G_DPU1_M_AXI_DATA0_AWREADY),
        .dpu1_m_axi_data0_awsize(DPUCZDX8G_DPU1_M_AXI_DATA0_AWSIZE),
        .dpu1_m_axi_data0_awuser(DPUCZDX8G_DPU1_M_AXI_DATA0_AWUSER),
        .dpu1_m_axi_data0_awvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_AWVALID),
        .dpu1_m_axi_data0_bid(DPUCZDX8G_DPU1_M_AXI_DATA0_BID),
        .dpu1_m_axi_data0_bready(DPUCZDX8G_DPU1_M_AXI_DATA0_BREADY),
        .dpu1_m_axi_data0_bresp(DPUCZDX8G_DPU1_M_AXI_DATA0_BRESP),
        .dpu1_m_axi_data0_bvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_BVALID),
        .dpu1_m_axi_data0_rdata(DPUCZDX8G_DPU1_M_AXI_DATA0_RDATA),
        .dpu1_m_axi_data0_rid(DPUCZDX8G_DPU1_M_AXI_DATA0_RID),
        .dpu1_m_axi_data0_rlast(DPUCZDX8G_DPU1_M_AXI_DATA0_RLAST),
        .dpu1_m_axi_data0_rready(DPUCZDX8G_DPU1_M_AXI_DATA0_RREADY),
        .dpu1_m_axi_data0_rresp(DPUCZDX8G_DPU1_M_AXI_DATA0_RRESP),
        .dpu1_m_axi_data0_rvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_RVALID),
        .dpu1_m_axi_data0_wdata(DPUCZDX8G_DPU1_M_AXI_DATA0_WDATA),
        .dpu1_m_axi_data0_wlast(DPUCZDX8G_DPU1_M_AXI_DATA0_WLAST),
        .dpu1_m_axi_data0_wready(DPUCZDX8G_DPU1_M_AXI_DATA0_WREADY),
        .dpu1_m_axi_data0_wstrb(DPUCZDX8G_DPU1_M_AXI_DATA0_WSTRB),
        .dpu1_m_axi_data0_wvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_WVALID),
        .dpu1_m_axi_data1_araddr(DPUCZDX8G_DPU1_M_AXI_DATA1_ARADDR),
        .dpu1_m_axi_data1_arburst(DPUCZDX8G_DPU1_M_AXI_DATA1_ARBURST),
        .dpu1_m_axi_data1_arcache(DPUCZDX8G_DPU1_M_AXI_DATA1_ARCACHE),
        .dpu1_m_axi_data1_arid(DPUCZDX8G_DPU1_M_AXI_DATA1_ARID),
        .dpu1_m_axi_data1_arlen(DPUCZDX8G_DPU1_M_AXI_DATA1_ARLEN),
        .dpu1_m_axi_data1_arlock(DPUCZDX8G_DPU1_M_AXI_DATA1_ARLOCK),
        .dpu1_m_axi_data1_arprot(DPUCZDX8G_DPU1_M_AXI_DATA1_ARPROT),
        .dpu1_m_axi_data1_arqos(DPUCZDX8G_DPU1_M_AXI_DATA1_ARQOS),
        .dpu1_m_axi_data1_arready(DPUCZDX8G_DPU1_M_AXI_DATA1_ARREADY),
        .dpu1_m_axi_data1_arsize(DPUCZDX8G_DPU1_M_AXI_DATA1_ARSIZE),
        .dpu1_m_axi_data1_aruser(DPUCZDX8G_DPU1_M_AXI_DATA1_ARUSER),
        .dpu1_m_axi_data1_arvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_ARVALID),
        .dpu1_m_axi_data1_awaddr(DPUCZDX8G_DPU1_M_AXI_DATA1_AWADDR),
        .dpu1_m_axi_data1_awburst(DPUCZDX8G_DPU1_M_AXI_DATA1_AWBURST),
        .dpu1_m_axi_data1_awcache(DPUCZDX8G_DPU1_M_AXI_DATA1_AWCACHE),
        .dpu1_m_axi_data1_awid(DPUCZDX8G_DPU1_M_AXI_DATA1_AWID),
        .dpu1_m_axi_data1_awlen(DPUCZDX8G_DPU1_M_AXI_DATA1_AWLEN),
        .dpu1_m_axi_data1_awlock(DPUCZDX8G_DPU1_M_AXI_DATA1_AWLOCK),
        .dpu1_m_axi_data1_awprot(DPUCZDX8G_DPU1_M_AXI_DATA1_AWPROT),
        .dpu1_m_axi_data1_awqos(DPUCZDX8G_DPU1_M_AXI_DATA1_AWQOS),
        .dpu1_m_axi_data1_awready(DPUCZDX8G_DPU1_M_AXI_DATA1_AWREADY),
        .dpu1_m_axi_data1_awsize(DPUCZDX8G_DPU1_M_AXI_DATA1_AWSIZE),
        .dpu1_m_axi_data1_awuser(DPUCZDX8G_DPU1_M_AXI_DATA1_AWUSER),
        .dpu1_m_axi_data1_awvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_AWVALID),
        .dpu1_m_axi_data1_bid(DPUCZDX8G_DPU1_M_AXI_DATA1_BID),
        .dpu1_m_axi_data1_bready(DPUCZDX8G_DPU1_M_AXI_DATA1_BREADY),
        .dpu1_m_axi_data1_bresp(DPUCZDX8G_DPU1_M_AXI_DATA1_BRESP),
        .dpu1_m_axi_data1_bvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_BVALID),
        .dpu1_m_axi_data1_rdata(DPUCZDX8G_DPU1_M_AXI_DATA1_RDATA),
        .dpu1_m_axi_data1_rid(DPUCZDX8G_DPU1_M_AXI_DATA1_RID),
        .dpu1_m_axi_data1_rlast(DPUCZDX8G_DPU1_M_AXI_DATA1_RLAST),
        .dpu1_m_axi_data1_rready(DPUCZDX8G_DPU1_M_AXI_DATA1_RREADY),
        .dpu1_m_axi_data1_rresp(DPUCZDX8G_DPU1_M_AXI_DATA1_RRESP),
        .dpu1_m_axi_data1_rvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_RVALID),
        .dpu1_m_axi_data1_wdata(DPUCZDX8G_DPU1_M_AXI_DATA1_WDATA),
        .dpu1_m_axi_data1_wlast(DPUCZDX8G_DPU1_M_AXI_DATA1_WLAST),
        .dpu1_m_axi_data1_wready(DPUCZDX8G_DPU1_M_AXI_DATA1_WREADY),
        .dpu1_m_axi_data1_wstrb(DPUCZDX8G_DPU1_M_AXI_DATA1_WSTRB),
        .dpu1_m_axi_data1_wvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_WVALID),
        .dpu1_m_axi_instr_araddr(DPUCZDX8G_DPU1_M_AXI_INSTR_ARADDR),
        .dpu1_m_axi_instr_arburst(DPUCZDX8G_DPU1_M_AXI_INSTR_ARBURST),
        .dpu1_m_axi_instr_arcache(DPUCZDX8G_DPU1_M_AXI_INSTR_ARCACHE),
        .dpu1_m_axi_instr_arid(DPUCZDX8G_DPU1_M_AXI_INSTR_ARID),
        .dpu1_m_axi_instr_arlen(DPUCZDX8G_DPU1_M_AXI_INSTR_ARLEN),
        .dpu1_m_axi_instr_arlock(DPUCZDX8G_DPU1_M_AXI_INSTR_ARLOCK),
        .dpu1_m_axi_instr_arprot(DPUCZDX8G_DPU1_M_AXI_INSTR_ARPROT),
        .dpu1_m_axi_instr_arqos(DPUCZDX8G_DPU1_M_AXI_INSTR_ARQOS),
        .dpu1_m_axi_instr_arready(DPUCZDX8G_DPU1_M_AXI_INSTR_ARREADY),
        .dpu1_m_axi_instr_arsize(DPUCZDX8G_DPU1_M_AXI_INSTR_ARSIZE),
        .dpu1_m_axi_instr_aruser(DPUCZDX8G_DPU1_M_AXI_INSTR_ARUSER),
        .dpu1_m_axi_instr_arvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_ARVALID),
        .dpu1_m_axi_instr_awaddr(DPUCZDX8G_DPU1_M_AXI_INSTR_AWADDR),
        .dpu1_m_axi_instr_awburst(DPUCZDX8G_DPU1_M_AXI_INSTR_AWBURST),
        .dpu1_m_axi_instr_awcache(DPUCZDX8G_DPU1_M_AXI_INSTR_AWCACHE),
        .dpu1_m_axi_instr_awid(DPUCZDX8G_DPU1_M_AXI_INSTR_AWID),
        .dpu1_m_axi_instr_awlen(DPUCZDX8G_DPU1_M_AXI_INSTR_AWLEN),
        .dpu1_m_axi_instr_awlock(DPUCZDX8G_DPU1_M_AXI_INSTR_AWLOCK),
        .dpu1_m_axi_instr_awprot(DPUCZDX8G_DPU1_M_AXI_INSTR_AWPROT),
        .dpu1_m_axi_instr_awqos(DPUCZDX8G_DPU1_M_AXI_INSTR_AWQOS),
        .dpu1_m_axi_instr_awready(DPUCZDX8G_DPU1_M_AXI_INSTR_AWREADY),
        .dpu1_m_axi_instr_awsize(DPUCZDX8G_DPU1_M_AXI_INSTR_AWSIZE),
        .dpu1_m_axi_instr_awuser(DPUCZDX8G_DPU1_M_AXI_INSTR_AWUSER),
        .dpu1_m_axi_instr_awvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_AWVALID),
        .dpu1_m_axi_instr_bid({1'b0,1'b0,DPUCZDX8G_DPU1_M_AXI_INSTR_BID}),
        .dpu1_m_axi_instr_bready(DPUCZDX8G_DPU1_M_AXI_INSTR_BREADY),
        .dpu1_m_axi_instr_bresp(DPUCZDX8G_DPU1_M_AXI_INSTR_BRESP),
        .dpu1_m_axi_instr_bvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_BVALID),
        .dpu1_m_axi_instr_rdata(DPUCZDX8G_DPU1_M_AXI_INSTR_RDATA),
        .dpu1_m_axi_instr_rid({1'b0,1'b0,DPUCZDX8G_DPU1_M_AXI_INSTR_RID}),
        .dpu1_m_axi_instr_rlast(DPUCZDX8G_DPU1_M_AXI_INSTR_RLAST),
        .dpu1_m_axi_instr_rready(DPUCZDX8G_DPU1_M_AXI_INSTR_RREADY),
        .dpu1_m_axi_instr_rresp(DPUCZDX8G_DPU1_M_AXI_INSTR_RRESP),
        .dpu1_m_axi_instr_rvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_RVALID),
        .dpu1_m_axi_instr_wdata(DPUCZDX8G_DPU1_M_AXI_INSTR_WDATA),
        .dpu1_m_axi_instr_wlast(DPUCZDX8G_DPU1_M_AXI_INSTR_WLAST),
        .dpu1_m_axi_instr_wready(DPUCZDX8G_DPU1_M_AXI_INSTR_WREADY),
        .dpu1_m_axi_instr_wstrb(DPUCZDX8G_DPU1_M_AXI_INSTR_WSTRB),
        .dpu1_m_axi_instr_wvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_WVALID),
        .dpu2_2x_clk(hier_dpu_clk_DSP_CLK2),
        .dpu2_2x_clk_ce(DPUCZDX8G_dpu2_2x_clk_ce),
        .dpu2_interrupt(DPUCZDX8G_dpu2_interrupt),
        .dpu2_m_axi_data0_araddr(DPUCZDX8G_DPU2_M_AXI_DATA0_ARADDR),
        .dpu2_m_axi_data0_arburst(DPUCZDX8G_DPU2_M_AXI_DATA0_ARBURST),
        .dpu2_m_axi_data0_arcache(DPUCZDX8G_DPU2_M_AXI_DATA0_ARCACHE),
        .dpu2_m_axi_data0_arid(DPUCZDX8G_DPU2_M_AXI_DATA0_ARID),
        .dpu2_m_axi_data0_arlen(DPUCZDX8G_DPU2_M_AXI_DATA0_ARLEN),
        .dpu2_m_axi_data0_arlock(DPUCZDX8G_DPU2_M_AXI_DATA0_ARLOCK),
        .dpu2_m_axi_data0_arprot(DPUCZDX8G_DPU2_M_AXI_DATA0_ARPROT),
        .dpu2_m_axi_data0_arqos(DPUCZDX8G_DPU2_M_AXI_DATA0_ARQOS),
        .dpu2_m_axi_data0_arready(DPUCZDX8G_DPU2_M_AXI_DATA0_ARREADY),
        .dpu2_m_axi_data0_arsize(DPUCZDX8G_DPU2_M_AXI_DATA0_ARSIZE),
        .dpu2_m_axi_data0_aruser(DPUCZDX8G_DPU2_M_AXI_DATA0_ARUSER),
        .dpu2_m_axi_data0_arvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_ARVALID),
        .dpu2_m_axi_data0_awaddr(DPUCZDX8G_DPU2_M_AXI_DATA0_AWADDR),
        .dpu2_m_axi_data0_awburst(DPUCZDX8G_DPU2_M_AXI_DATA0_AWBURST),
        .dpu2_m_axi_data0_awcache(DPUCZDX8G_DPU2_M_AXI_DATA0_AWCACHE),
        .dpu2_m_axi_data0_awid(DPUCZDX8G_DPU2_M_AXI_DATA0_AWID),
        .dpu2_m_axi_data0_awlen(DPUCZDX8G_DPU2_M_AXI_DATA0_AWLEN),
        .dpu2_m_axi_data0_awlock(DPUCZDX8G_DPU2_M_AXI_DATA0_AWLOCK),
        .dpu2_m_axi_data0_awprot(DPUCZDX8G_DPU2_M_AXI_DATA0_AWPROT),
        .dpu2_m_axi_data0_awqos(DPUCZDX8G_DPU2_M_AXI_DATA0_AWQOS),
        .dpu2_m_axi_data0_awready(DPUCZDX8G_DPU2_M_AXI_DATA0_AWREADY),
        .dpu2_m_axi_data0_awsize(DPUCZDX8G_DPU2_M_AXI_DATA0_AWSIZE),
        .dpu2_m_axi_data0_awuser(DPUCZDX8G_DPU2_M_AXI_DATA0_AWUSER),
        .dpu2_m_axi_data0_awvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_AWVALID),
        .dpu2_m_axi_data0_bid(DPUCZDX8G_DPU2_M_AXI_DATA0_BID),
        .dpu2_m_axi_data0_bready(DPUCZDX8G_DPU2_M_AXI_DATA0_BREADY),
        .dpu2_m_axi_data0_bresp(DPUCZDX8G_DPU2_M_AXI_DATA0_BRESP),
        .dpu2_m_axi_data0_bvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_BVALID),
        .dpu2_m_axi_data0_rdata(DPUCZDX8G_DPU2_M_AXI_DATA0_RDATA),
        .dpu2_m_axi_data0_rid(DPUCZDX8G_DPU2_M_AXI_DATA0_RID),
        .dpu2_m_axi_data0_rlast(DPUCZDX8G_DPU2_M_AXI_DATA0_RLAST),
        .dpu2_m_axi_data0_rready(DPUCZDX8G_DPU2_M_AXI_DATA0_RREADY),
        .dpu2_m_axi_data0_rresp(DPUCZDX8G_DPU2_M_AXI_DATA0_RRESP),
        .dpu2_m_axi_data0_rvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_RVALID),
        .dpu2_m_axi_data0_wdata(DPUCZDX8G_DPU2_M_AXI_DATA0_WDATA),
        .dpu2_m_axi_data0_wlast(DPUCZDX8G_DPU2_M_AXI_DATA0_WLAST),
        .dpu2_m_axi_data0_wready(DPUCZDX8G_DPU2_M_AXI_DATA0_WREADY),
        .dpu2_m_axi_data0_wstrb(DPUCZDX8G_DPU2_M_AXI_DATA0_WSTRB),
        .dpu2_m_axi_data0_wvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_WVALID),
        .dpu2_m_axi_data1_araddr(DPUCZDX8G_DPU2_M_AXI_DATA1_ARADDR),
        .dpu2_m_axi_data1_arburst(DPUCZDX8G_DPU2_M_AXI_DATA1_ARBURST),
        .dpu2_m_axi_data1_arcache(DPUCZDX8G_DPU2_M_AXI_DATA1_ARCACHE),
        .dpu2_m_axi_data1_arid(DPUCZDX8G_DPU2_M_AXI_DATA1_ARID),
        .dpu2_m_axi_data1_arlen(DPUCZDX8G_DPU2_M_AXI_DATA1_ARLEN),
        .dpu2_m_axi_data1_arlock(DPUCZDX8G_DPU2_M_AXI_DATA1_ARLOCK),
        .dpu2_m_axi_data1_arprot(DPUCZDX8G_DPU2_M_AXI_DATA1_ARPROT),
        .dpu2_m_axi_data1_arqos(DPUCZDX8G_DPU2_M_AXI_DATA1_ARQOS),
        .dpu2_m_axi_data1_arready(DPUCZDX8G_DPU2_M_AXI_DATA1_ARREADY),
        .dpu2_m_axi_data1_arsize(DPUCZDX8G_DPU2_M_AXI_DATA1_ARSIZE),
        .dpu2_m_axi_data1_aruser(DPUCZDX8G_DPU2_M_AXI_DATA1_ARUSER),
        .dpu2_m_axi_data1_arvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_ARVALID),
        .dpu2_m_axi_data1_awaddr(DPUCZDX8G_DPU2_M_AXI_DATA1_AWADDR),
        .dpu2_m_axi_data1_awburst(DPUCZDX8G_DPU2_M_AXI_DATA1_AWBURST),
        .dpu2_m_axi_data1_awcache(DPUCZDX8G_DPU2_M_AXI_DATA1_AWCACHE),
        .dpu2_m_axi_data1_awid(DPUCZDX8G_DPU2_M_AXI_DATA1_AWID),
        .dpu2_m_axi_data1_awlen(DPUCZDX8G_DPU2_M_AXI_DATA1_AWLEN),
        .dpu2_m_axi_data1_awlock(DPUCZDX8G_DPU2_M_AXI_DATA1_AWLOCK),
        .dpu2_m_axi_data1_awprot(DPUCZDX8G_DPU2_M_AXI_DATA1_AWPROT),
        .dpu2_m_axi_data1_awqos(DPUCZDX8G_DPU2_M_AXI_DATA1_AWQOS),
        .dpu2_m_axi_data1_awready(DPUCZDX8G_DPU2_M_AXI_DATA1_AWREADY),
        .dpu2_m_axi_data1_awsize(DPUCZDX8G_DPU2_M_AXI_DATA1_AWSIZE),
        .dpu2_m_axi_data1_awuser(DPUCZDX8G_DPU2_M_AXI_DATA1_AWUSER),
        .dpu2_m_axi_data1_awvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_AWVALID),
        .dpu2_m_axi_data1_bid({1'b0,1'b0,1'b0,DPUCZDX8G_DPU2_M_AXI_DATA1_BID}),
        .dpu2_m_axi_data1_bready(DPUCZDX8G_DPU2_M_AXI_DATA1_BREADY),
        .dpu2_m_axi_data1_bresp(DPUCZDX8G_DPU2_M_AXI_DATA1_BRESP),
        .dpu2_m_axi_data1_bvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_BVALID),
        .dpu2_m_axi_data1_rdata(DPUCZDX8G_DPU2_M_AXI_DATA1_RDATA),
        .dpu2_m_axi_data1_rid({1'b0,1'b0,1'b0,DPUCZDX8G_DPU2_M_AXI_DATA1_RID}),
        .dpu2_m_axi_data1_rlast(DPUCZDX8G_DPU2_M_AXI_DATA1_RLAST),
        .dpu2_m_axi_data1_rready(DPUCZDX8G_DPU2_M_AXI_DATA1_RREADY),
        .dpu2_m_axi_data1_rresp(DPUCZDX8G_DPU2_M_AXI_DATA1_RRESP),
        .dpu2_m_axi_data1_rvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_RVALID),
        .dpu2_m_axi_data1_wdata(DPUCZDX8G_DPU2_M_AXI_DATA1_WDATA),
        .dpu2_m_axi_data1_wlast(DPUCZDX8G_DPU2_M_AXI_DATA1_WLAST),
        .dpu2_m_axi_data1_wready(DPUCZDX8G_DPU2_M_AXI_DATA1_WREADY),
        .dpu2_m_axi_data1_wstrb(DPUCZDX8G_DPU2_M_AXI_DATA1_WSTRB),
        .dpu2_m_axi_data1_wvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_WVALID),
        .dpu2_m_axi_instr_araddr(DPUCZDX8G_DPU2_M_AXI_INSTR_ARADDR),
        .dpu2_m_axi_instr_arburst(DPUCZDX8G_DPU2_M_AXI_INSTR_ARBURST),
        .dpu2_m_axi_instr_arcache(DPUCZDX8G_DPU2_M_AXI_INSTR_ARCACHE),
        .dpu2_m_axi_instr_arid(DPUCZDX8G_DPU2_M_AXI_INSTR_ARID),
        .dpu2_m_axi_instr_arlen(DPUCZDX8G_DPU2_M_AXI_INSTR_ARLEN),
        .dpu2_m_axi_instr_arlock(DPUCZDX8G_DPU2_M_AXI_INSTR_ARLOCK),
        .dpu2_m_axi_instr_arprot(DPUCZDX8G_DPU2_M_AXI_INSTR_ARPROT),
        .dpu2_m_axi_instr_arqos(DPUCZDX8G_DPU2_M_AXI_INSTR_ARQOS),
        .dpu2_m_axi_instr_arready(DPUCZDX8G_DPU2_M_AXI_INSTR_ARREADY),
        .dpu2_m_axi_instr_arsize(DPUCZDX8G_DPU2_M_AXI_INSTR_ARSIZE),
        .dpu2_m_axi_instr_aruser(DPUCZDX8G_DPU2_M_AXI_INSTR_ARUSER),
        .dpu2_m_axi_instr_arvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_ARVALID),
        .dpu2_m_axi_instr_awaddr(DPUCZDX8G_DPU2_M_AXI_INSTR_AWADDR),
        .dpu2_m_axi_instr_awburst(DPUCZDX8G_DPU2_M_AXI_INSTR_AWBURST),
        .dpu2_m_axi_instr_awcache(DPUCZDX8G_DPU2_M_AXI_INSTR_AWCACHE),
        .dpu2_m_axi_instr_awid(DPUCZDX8G_DPU2_M_AXI_INSTR_AWID),
        .dpu2_m_axi_instr_awlen(DPUCZDX8G_DPU2_M_AXI_INSTR_AWLEN),
        .dpu2_m_axi_instr_awlock(DPUCZDX8G_DPU2_M_AXI_INSTR_AWLOCK),
        .dpu2_m_axi_instr_awprot(DPUCZDX8G_DPU2_M_AXI_INSTR_AWPROT),
        .dpu2_m_axi_instr_awqos(DPUCZDX8G_DPU2_M_AXI_INSTR_AWQOS),
        .dpu2_m_axi_instr_awready(DPUCZDX8G_DPU2_M_AXI_INSTR_AWREADY),
        .dpu2_m_axi_instr_awsize(DPUCZDX8G_DPU2_M_AXI_INSTR_AWSIZE),
        .dpu2_m_axi_instr_awuser(DPUCZDX8G_DPU2_M_AXI_INSTR_AWUSER),
        .dpu2_m_axi_instr_awvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_AWVALID),
        .dpu2_m_axi_instr_bid({1'b0,1'b0,DPUCZDX8G_DPU2_M_AXI_INSTR_BID}),
        .dpu2_m_axi_instr_bready(DPUCZDX8G_DPU2_M_AXI_INSTR_BREADY),
        .dpu2_m_axi_instr_bresp(DPUCZDX8G_DPU2_M_AXI_INSTR_BRESP),
        .dpu2_m_axi_instr_bvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_BVALID),
        .dpu2_m_axi_instr_rdata(DPUCZDX8G_DPU2_M_AXI_INSTR_RDATA),
        .dpu2_m_axi_instr_rid({1'b0,1'b0,DPUCZDX8G_DPU2_M_AXI_INSTR_RID}),
        .dpu2_m_axi_instr_rlast(DPUCZDX8G_DPU2_M_AXI_INSTR_RLAST),
        .dpu2_m_axi_instr_rready(DPUCZDX8G_DPU2_M_AXI_INSTR_RREADY),
        .dpu2_m_axi_instr_rresp(DPUCZDX8G_DPU2_M_AXI_INSTR_RRESP),
        .dpu2_m_axi_instr_rvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_RVALID),
        .dpu2_m_axi_instr_wdata(DPUCZDX8G_DPU2_M_AXI_INSTR_WDATA),
        .dpu2_m_axi_instr_wlast(DPUCZDX8G_DPU2_M_AXI_INSTR_WLAST),
        .dpu2_m_axi_instr_wready(DPUCZDX8G_DPU2_M_AXI_INSTR_WREADY),
        .dpu2_m_axi_instr_wstrb(DPUCZDX8G_DPU2_M_AXI_INSTR_WSTRB),
        .dpu2_m_axi_instr_wvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_WVALID),
        .dpu_2x_clk(hier_dpu_clk_DSP_CLK),
        .dpu_2x_clk_ce(DPUCZDX8G_dpu_2x_clk_ce),
        .dpu_2x_resetn(hier_dpu_clk_RSTn_DSP),
        .m_axi_dpu_aclk(hier_dpu_clk_DPU_CLK),
        .m_axi_dpu_aresetn(hier_dpu_clk_RSTn_PERI),
        .s_axi_aclk(S_AXI_CLK),
        .s_axi_araddr(S_AXI_araddr[31:0]),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_aresetn(S_AXI_RSTn),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock({S_AXI_arlock,S_AXI_arlock}),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_aruser(S_AXI_aruser),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr[31:0]),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock({S_AXI_awlock,S_AXI_awlock}),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awuser(S_AXI_awuser),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid),
        .sfm_interrupt(DPUCZDX8G_sfm_interrupt),
        .sfm_m_axi_araddr(DPUCZDX8G_SFM_M_AXI_ARADDR),
        .sfm_m_axi_arburst(DPUCZDX8G_SFM_M_AXI_ARBURST),
        .sfm_m_axi_arcache(DPUCZDX8G_SFM_M_AXI_ARCACHE),
        .sfm_m_axi_arid(DPUCZDX8G_SFM_M_AXI_ARID),
        .sfm_m_axi_arlen(DPUCZDX8G_SFM_M_AXI_ARLEN),
        .sfm_m_axi_arlock(DPUCZDX8G_SFM_M_AXI_ARLOCK),
        .sfm_m_axi_arprot(DPUCZDX8G_SFM_M_AXI_ARPROT),
        .sfm_m_axi_arqos(DPUCZDX8G_SFM_M_AXI_ARQOS),
        .sfm_m_axi_arready(DPUCZDX8G_SFM_M_AXI_ARREADY),
        .sfm_m_axi_arsize(DPUCZDX8G_SFM_M_AXI_ARSIZE),
        .sfm_m_axi_aruser(DPUCZDX8G_SFM_M_AXI_ARUSER),
        .sfm_m_axi_arvalid(DPUCZDX8G_SFM_M_AXI_ARVALID),
        .sfm_m_axi_awaddr(DPUCZDX8G_SFM_M_AXI_AWADDR),
        .sfm_m_axi_awburst(DPUCZDX8G_SFM_M_AXI_AWBURST),
        .sfm_m_axi_awcache(DPUCZDX8G_SFM_M_AXI_AWCACHE),
        .sfm_m_axi_awid(DPUCZDX8G_SFM_M_AXI_AWID),
        .sfm_m_axi_awlen(DPUCZDX8G_SFM_M_AXI_AWLEN),
        .sfm_m_axi_awlock(DPUCZDX8G_SFM_M_AXI_AWLOCK),
        .sfm_m_axi_awprot(DPUCZDX8G_SFM_M_AXI_AWPROT),
        .sfm_m_axi_awqos(DPUCZDX8G_SFM_M_AXI_AWQOS),
        .sfm_m_axi_awready(DPUCZDX8G_SFM_M_AXI_AWREADY),
        .sfm_m_axi_awsize(DPUCZDX8G_SFM_M_AXI_AWSIZE),
        .sfm_m_axi_awuser(DPUCZDX8G_SFM_M_AXI_AWUSER),
        .sfm_m_axi_awvalid(DPUCZDX8G_SFM_M_AXI_AWVALID),
        .sfm_m_axi_bid({1'b0,1'b0,1'b0,DPUCZDX8G_SFM_M_AXI_BID}),
        .sfm_m_axi_bready(DPUCZDX8G_SFM_M_AXI_BREADY),
        .sfm_m_axi_bresp(DPUCZDX8G_SFM_M_AXI_BRESP),
        .sfm_m_axi_bvalid(DPUCZDX8G_SFM_M_AXI_BVALID),
        .sfm_m_axi_rdata(DPUCZDX8G_SFM_M_AXI_RDATA),
        .sfm_m_axi_rid({1'b0,1'b0,1'b0,DPUCZDX8G_SFM_M_AXI_RID}),
        .sfm_m_axi_rlast(DPUCZDX8G_SFM_M_AXI_RLAST),
        .sfm_m_axi_rready(DPUCZDX8G_SFM_M_AXI_RREADY),
        .sfm_m_axi_rresp(DPUCZDX8G_SFM_M_AXI_RRESP),
        .sfm_m_axi_rvalid(DPUCZDX8G_SFM_M_AXI_RVALID),
        .sfm_m_axi_wdata(DPUCZDX8G_SFM_M_AXI_WDATA),
        .sfm_m_axi_wlast(DPUCZDX8G_SFM_M_AXI_WLAST),
        .sfm_m_axi_wready(DPUCZDX8G_SFM_M_AXI_WREADY),
        .sfm_m_axi_wstrb(DPUCZDX8G_SFM_M_AXI_WSTRB),
        .sfm_m_axi_wvalid(DPUCZDX8G_SFM_M_AXI_WVALID));
  hier_dpu_clk_imp_P5CT15 hier_dpu_clk
       (.CLK(CLK),
        .DPU_CLK(hier_dpu_clk_DPU_CLK),
        .DSP_CLK(hier_dpu_clk_DSP_CLK),
        .DSP_CLK1(hier_dpu_clk_DSP_CLK1),
        .DSP_CLK2(hier_dpu_clk_DSP_CLK2),
        .RSTn(RSTn),
        .RSTn_DSP(hier_dpu_clk_RSTn_DSP),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI),
        .clk_dsp1_ce(DPUCZDX8G_dpu1_2x_clk_ce),
        .clk_dsp2_ce(DPUCZDX8G_dpu2_2x_clk_ce),
        .clk_dsp_ce(DPUCZDX8G_dpu_2x_clk_ce));
  hier_dpu_ghp_imp_1DUMQPD hier_dpu_ghp
       (.CLK(hier_dpu_clk_DPU_CLK),
        .DPU0_M_AXI_DATA0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .DPU0_M_AXI_DATA0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .DPU0_M_AXI_DATA0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .DPU0_M_AXI_DATA0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .DPU0_M_AXI_DATA0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .DPU0_M_AXI_DATA0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .DPU0_M_AXI_DATA0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .DPU0_M_AXI_DATA0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .DPU0_M_AXI_DATA0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .DPU0_M_AXI_DATA0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .DPU0_M_AXI_DATA0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .DPU0_M_AXI_DATA0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .DPU0_M_AXI_DATA0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .DPU0_M_AXI_DATA0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .DPU0_M_AXI_DATA0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .DPU0_M_AXI_DATA0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .DPU0_M_AXI_DATA0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .DPU0_M_AXI_DATA0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .DPU0_M_AXI_DATA0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .DPU0_M_AXI_DATA0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .DPU0_M_AXI_DATA0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .DPU0_M_AXI_DATA0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .DPU0_M_AXI_DATA0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .DPU0_M_AXI_DATA0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .DPU0_M_AXI_DATA0_bid(DPUCZDX8G_DPU0_M_AXI_DATA0_BID),
        .DPU0_M_AXI_DATA0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .DPU0_M_AXI_DATA0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .DPU0_M_AXI_DATA0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .DPU0_M_AXI_DATA0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .DPU0_M_AXI_DATA0_rid(DPUCZDX8G_DPU0_M_AXI_DATA0_RID),
        .DPU0_M_AXI_DATA0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .DPU0_M_AXI_DATA0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .DPU0_M_AXI_DATA0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .DPU0_M_AXI_DATA0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .DPU0_M_AXI_DATA0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .DPU0_M_AXI_DATA0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .DPU0_M_AXI_DATA0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .DPU0_M_AXI_DATA0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .DPU0_M_AXI_DATA0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .DPU0_M_AXI_DATA1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .DPU0_M_AXI_DATA1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .DPU0_M_AXI_DATA1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .DPU0_M_AXI_DATA1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .DPU0_M_AXI_DATA1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .DPU0_M_AXI_DATA1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .DPU0_M_AXI_DATA1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .DPU0_M_AXI_DATA1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .DPU0_M_AXI_DATA1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .DPU0_M_AXI_DATA1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .DPU0_M_AXI_DATA1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .DPU0_M_AXI_DATA1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .DPU0_M_AXI_DATA1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .DPU0_M_AXI_DATA1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .DPU0_M_AXI_DATA1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .DPU0_M_AXI_DATA1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .DPU0_M_AXI_DATA1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .DPU0_M_AXI_DATA1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .DPU0_M_AXI_DATA1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .DPU0_M_AXI_DATA1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .DPU0_M_AXI_DATA1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .DPU0_M_AXI_DATA1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .DPU0_M_AXI_DATA1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .DPU0_M_AXI_DATA1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .DPU0_M_AXI_DATA1_bid(DPUCZDX8G_DPU0_M_AXI_DATA1_BID),
        .DPU0_M_AXI_DATA1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .DPU0_M_AXI_DATA1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .DPU0_M_AXI_DATA1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .DPU0_M_AXI_DATA1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .DPU0_M_AXI_DATA1_rid(DPUCZDX8G_DPU0_M_AXI_DATA1_RID),
        .DPU0_M_AXI_DATA1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .DPU0_M_AXI_DATA1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .DPU0_M_AXI_DATA1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .DPU0_M_AXI_DATA1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .DPU0_M_AXI_DATA1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .DPU0_M_AXI_DATA1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .DPU0_M_AXI_DATA1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .DPU0_M_AXI_DATA1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .DPU0_M_AXI_DATA1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .DPU0_M_AXI_INSTR_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .DPU0_M_AXI_INSTR_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .DPU0_M_AXI_INSTR_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .DPU0_M_AXI_INSTR_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .DPU0_M_AXI_INSTR_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .DPU0_M_AXI_INSTR_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .DPU0_M_AXI_INSTR_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .DPU0_M_AXI_INSTR_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .DPU0_M_AXI_INSTR_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .DPU0_M_AXI_INSTR_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .DPU0_M_AXI_INSTR_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .DPU0_M_AXI_INSTR_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .DPU0_M_AXI_INSTR_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .DPU0_M_AXI_INSTR_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .DPU0_M_AXI_INSTR_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .DPU0_M_AXI_INSTR_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .DPU0_M_AXI_INSTR_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .DPU0_M_AXI_INSTR_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .DPU0_M_AXI_INSTR_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .DPU0_M_AXI_INSTR_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .DPU0_M_AXI_INSTR_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .DPU0_M_AXI_INSTR_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .DPU0_M_AXI_INSTR_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .DPU0_M_AXI_INSTR_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .DPU0_M_AXI_INSTR_bid(DPUCZDX8G_DPU0_M_AXI_INSTR_BID),
        .DPU0_M_AXI_INSTR_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .DPU0_M_AXI_INSTR_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .DPU0_M_AXI_INSTR_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .DPU0_M_AXI_INSTR_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .DPU0_M_AXI_INSTR_rid(DPUCZDX8G_DPU0_M_AXI_INSTR_RID),
        .DPU0_M_AXI_INSTR_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .DPU0_M_AXI_INSTR_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .DPU0_M_AXI_INSTR_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .DPU0_M_AXI_INSTR_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .DPU0_M_AXI_INSTR_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .DPU0_M_AXI_INSTR_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .DPU0_M_AXI_INSTR_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .DPU0_M_AXI_INSTR_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .DPU0_M_AXI_INSTR_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .DPU1_M_AXI_DATA0_araddr(DPUCZDX8G_DPU1_M_AXI_DATA0_ARADDR),
        .DPU1_M_AXI_DATA0_arburst(DPUCZDX8G_DPU1_M_AXI_DATA0_ARBURST),
        .DPU1_M_AXI_DATA0_arcache(DPUCZDX8G_DPU1_M_AXI_DATA0_ARCACHE),
        .DPU1_M_AXI_DATA0_arid(DPUCZDX8G_DPU1_M_AXI_DATA0_ARID),
        .DPU1_M_AXI_DATA0_arlen(DPUCZDX8G_DPU1_M_AXI_DATA0_ARLEN),
        .DPU1_M_AXI_DATA0_arlock(DPUCZDX8G_DPU1_M_AXI_DATA0_ARLOCK),
        .DPU1_M_AXI_DATA0_arprot(DPUCZDX8G_DPU1_M_AXI_DATA0_ARPROT),
        .DPU1_M_AXI_DATA0_arqos(DPUCZDX8G_DPU1_M_AXI_DATA0_ARQOS),
        .DPU1_M_AXI_DATA0_arready(DPUCZDX8G_DPU1_M_AXI_DATA0_ARREADY),
        .DPU1_M_AXI_DATA0_arsize(DPUCZDX8G_DPU1_M_AXI_DATA0_ARSIZE),
        .DPU1_M_AXI_DATA0_aruser(DPUCZDX8G_DPU1_M_AXI_DATA0_ARUSER),
        .DPU1_M_AXI_DATA0_arvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_ARVALID),
        .DPU1_M_AXI_DATA0_awaddr(DPUCZDX8G_DPU1_M_AXI_DATA0_AWADDR),
        .DPU1_M_AXI_DATA0_awburst(DPUCZDX8G_DPU1_M_AXI_DATA0_AWBURST),
        .DPU1_M_AXI_DATA0_awcache(DPUCZDX8G_DPU1_M_AXI_DATA0_AWCACHE),
        .DPU1_M_AXI_DATA0_awid(DPUCZDX8G_DPU1_M_AXI_DATA0_AWID),
        .DPU1_M_AXI_DATA0_awlen(DPUCZDX8G_DPU1_M_AXI_DATA0_AWLEN),
        .DPU1_M_AXI_DATA0_awlock(DPUCZDX8G_DPU1_M_AXI_DATA0_AWLOCK),
        .DPU1_M_AXI_DATA0_awprot(DPUCZDX8G_DPU1_M_AXI_DATA0_AWPROT),
        .DPU1_M_AXI_DATA0_awqos(DPUCZDX8G_DPU1_M_AXI_DATA0_AWQOS),
        .DPU1_M_AXI_DATA0_awready(DPUCZDX8G_DPU1_M_AXI_DATA0_AWREADY),
        .DPU1_M_AXI_DATA0_awsize(DPUCZDX8G_DPU1_M_AXI_DATA0_AWSIZE),
        .DPU1_M_AXI_DATA0_awuser(DPUCZDX8G_DPU1_M_AXI_DATA0_AWUSER),
        .DPU1_M_AXI_DATA0_awvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_AWVALID),
        .DPU1_M_AXI_DATA0_bid(DPUCZDX8G_DPU1_M_AXI_DATA0_BID),
        .DPU1_M_AXI_DATA0_bready(DPUCZDX8G_DPU1_M_AXI_DATA0_BREADY),
        .DPU1_M_AXI_DATA0_bresp(DPUCZDX8G_DPU1_M_AXI_DATA0_BRESP),
        .DPU1_M_AXI_DATA0_bvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_BVALID),
        .DPU1_M_AXI_DATA0_rdata(DPUCZDX8G_DPU1_M_AXI_DATA0_RDATA),
        .DPU1_M_AXI_DATA0_rid(DPUCZDX8G_DPU1_M_AXI_DATA0_RID),
        .DPU1_M_AXI_DATA0_rlast(DPUCZDX8G_DPU1_M_AXI_DATA0_RLAST),
        .DPU1_M_AXI_DATA0_rready(DPUCZDX8G_DPU1_M_AXI_DATA0_RREADY),
        .DPU1_M_AXI_DATA0_rresp(DPUCZDX8G_DPU1_M_AXI_DATA0_RRESP),
        .DPU1_M_AXI_DATA0_rvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_RVALID),
        .DPU1_M_AXI_DATA0_wdata(DPUCZDX8G_DPU1_M_AXI_DATA0_WDATA),
        .DPU1_M_AXI_DATA0_wlast(DPUCZDX8G_DPU1_M_AXI_DATA0_WLAST),
        .DPU1_M_AXI_DATA0_wready(DPUCZDX8G_DPU1_M_AXI_DATA0_WREADY),
        .DPU1_M_AXI_DATA0_wstrb(DPUCZDX8G_DPU1_M_AXI_DATA0_WSTRB),
        .DPU1_M_AXI_DATA0_wvalid(DPUCZDX8G_DPU1_M_AXI_DATA0_WVALID),
        .DPU1_M_AXI_DATA1_araddr(DPUCZDX8G_DPU1_M_AXI_DATA1_ARADDR),
        .DPU1_M_AXI_DATA1_arburst(DPUCZDX8G_DPU1_M_AXI_DATA1_ARBURST),
        .DPU1_M_AXI_DATA1_arcache(DPUCZDX8G_DPU1_M_AXI_DATA1_ARCACHE),
        .DPU1_M_AXI_DATA1_arid(DPUCZDX8G_DPU1_M_AXI_DATA1_ARID),
        .DPU1_M_AXI_DATA1_arlen(DPUCZDX8G_DPU1_M_AXI_DATA1_ARLEN),
        .DPU1_M_AXI_DATA1_arlock(DPUCZDX8G_DPU1_M_AXI_DATA1_ARLOCK),
        .DPU1_M_AXI_DATA1_arprot(DPUCZDX8G_DPU1_M_AXI_DATA1_ARPROT),
        .DPU1_M_AXI_DATA1_arqos(DPUCZDX8G_DPU1_M_AXI_DATA1_ARQOS),
        .DPU1_M_AXI_DATA1_arready(DPUCZDX8G_DPU1_M_AXI_DATA1_ARREADY),
        .DPU1_M_AXI_DATA1_arsize(DPUCZDX8G_DPU1_M_AXI_DATA1_ARSIZE),
        .DPU1_M_AXI_DATA1_aruser(DPUCZDX8G_DPU1_M_AXI_DATA1_ARUSER),
        .DPU1_M_AXI_DATA1_arvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_ARVALID),
        .DPU1_M_AXI_DATA1_awaddr(DPUCZDX8G_DPU1_M_AXI_DATA1_AWADDR),
        .DPU1_M_AXI_DATA1_awburst(DPUCZDX8G_DPU1_M_AXI_DATA1_AWBURST),
        .DPU1_M_AXI_DATA1_awcache(DPUCZDX8G_DPU1_M_AXI_DATA1_AWCACHE),
        .DPU1_M_AXI_DATA1_awid(DPUCZDX8G_DPU1_M_AXI_DATA1_AWID),
        .DPU1_M_AXI_DATA1_awlen(DPUCZDX8G_DPU1_M_AXI_DATA1_AWLEN),
        .DPU1_M_AXI_DATA1_awlock(DPUCZDX8G_DPU1_M_AXI_DATA1_AWLOCK),
        .DPU1_M_AXI_DATA1_awprot(DPUCZDX8G_DPU1_M_AXI_DATA1_AWPROT),
        .DPU1_M_AXI_DATA1_awqos(DPUCZDX8G_DPU1_M_AXI_DATA1_AWQOS),
        .DPU1_M_AXI_DATA1_awready(DPUCZDX8G_DPU1_M_AXI_DATA1_AWREADY),
        .DPU1_M_AXI_DATA1_awsize(DPUCZDX8G_DPU1_M_AXI_DATA1_AWSIZE),
        .DPU1_M_AXI_DATA1_awuser(DPUCZDX8G_DPU1_M_AXI_DATA1_AWUSER),
        .DPU1_M_AXI_DATA1_awvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_AWVALID),
        .DPU1_M_AXI_DATA1_bid(DPUCZDX8G_DPU1_M_AXI_DATA1_BID),
        .DPU1_M_AXI_DATA1_bready(DPUCZDX8G_DPU1_M_AXI_DATA1_BREADY),
        .DPU1_M_AXI_DATA1_bresp(DPUCZDX8G_DPU1_M_AXI_DATA1_BRESP),
        .DPU1_M_AXI_DATA1_bvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_BVALID),
        .DPU1_M_AXI_DATA1_rdata(DPUCZDX8G_DPU1_M_AXI_DATA1_RDATA),
        .DPU1_M_AXI_DATA1_rid(DPUCZDX8G_DPU1_M_AXI_DATA1_RID),
        .DPU1_M_AXI_DATA1_rlast(DPUCZDX8G_DPU1_M_AXI_DATA1_RLAST),
        .DPU1_M_AXI_DATA1_rready(DPUCZDX8G_DPU1_M_AXI_DATA1_RREADY),
        .DPU1_M_AXI_DATA1_rresp(DPUCZDX8G_DPU1_M_AXI_DATA1_RRESP),
        .DPU1_M_AXI_DATA1_rvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_RVALID),
        .DPU1_M_AXI_DATA1_wdata(DPUCZDX8G_DPU1_M_AXI_DATA1_WDATA),
        .DPU1_M_AXI_DATA1_wlast(DPUCZDX8G_DPU1_M_AXI_DATA1_WLAST),
        .DPU1_M_AXI_DATA1_wready(DPUCZDX8G_DPU1_M_AXI_DATA1_WREADY),
        .DPU1_M_AXI_DATA1_wstrb(DPUCZDX8G_DPU1_M_AXI_DATA1_WSTRB),
        .DPU1_M_AXI_DATA1_wvalid(DPUCZDX8G_DPU1_M_AXI_DATA1_WVALID),
        .DPU1_M_AXI_INSTR_araddr(DPUCZDX8G_DPU1_M_AXI_INSTR_ARADDR),
        .DPU1_M_AXI_INSTR_arburst(DPUCZDX8G_DPU1_M_AXI_INSTR_ARBURST),
        .DPU1_M_AXI_INSTR_arcache(DPUCZDX8G_DPU1_M_AXI_INSTR_ARCACHE),
        .DPU1_M_AXI_INSTR_arid(DPUCZDX8G_DPU1_M_AXI_INSTR_ARID),
        .DPU1_M_AXI_INSTR_arlen(DPUCZDX8G_DPU1_M_AXI_INSTR_ARLEN),
        .DPU1_M_AXI_INSTR_arlock(DPUCZDX8G_DPU1_M_AXI_INSTR_ARLOCK),
        .DPU1_M_AXI_INSTR_arprot(DPUCZDX8G_DPU1_M_AXI_INSTR_ARPROT),
        .DPU1_M_AXI_INSTR_arqos(DPUCZDX8G_DPU1_M_AXI_INSTR_ARQOS),
        .DPU1_M_AXI_INSTR_arready(DPUCZDX8G_DPU1_M_AXI_INSTR_ARREADY),
        .DPU1_M_AXI_INSTR_arsize(DPUCZDX8G_DPU1_M_AXI_INSTR_ARSIZE),
        .DPU1_M_AXI_INSTR_aruser(DPUCZDX8G_DPU1_M_AXI_INSTR_ARUSER),
        .DPU1_M_AXI_INSTR_arvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_ARVALID),
        .DPU1_M_AXI_INSTR_awaddr(DPUCZDX8G_DPU1_M_AXI_INSTR_AWADDR),
        .DPU1_M_AXI_INSTR_awburst(DPUCZDX8G_DPU1_M_AXI_INSTR_AWBURST),
        .DPU1_M_AXI_INSTR_awcache(DPUCZDX8G_DPU1_M_AXI_INSTR_AWCACHE),
        .DPU1_M_AXI_INSTR_awid(DPUCZDX8G_DPU1_M_AXI_INSTR_AWID),
        .DPU1_M_AXI_INSTR_awlen(DPUCZDX8G_DPU1_M_AXI_INSTR_AWLEN),
        .DPU1_M_AXI_INSTR_awlock(DPUCZDX8G_DPU1_M_AXI_INSTR_AWLOCK),
        .DPU1_M_AXI_INSTR_awprot(DPUCZDX8G_DPU1_M_AXI_INSTR_AWPROT),
        .DPU1_M_AXI_INSTR_awqos(DPUCZDX8G_DPU1_M_AXI_INSTR_AWQOS),
        .DPU1_M_AXI_INSTR_awready(DPUCZDX8G_DPU1_M_AXI_INSTR_AWREADY),
        .DPU1_M_AXI_INSTR_awsize(DPUCZDX8G_DPU1_M_AXI_INSTR_AWSIZE),
        .DPU1_M_AXI_INSTR_awuser(DPUCZDX8G_DPU1_M_AXI_INSTR_AWUSER),
        .DPU1_M_AXI_INSTR_awvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_AWVALID),
        .DPU1_M_AXI_INSTR_bid(DPUCZDX8G_DPU1_M_AXI_INSTR_BID),
        .DPU1_M_AXI_INSTR_bready(DPUCZDX8G_DPU1_M_AXI_INSTR_BREADY),
        .DPU1_M_AXI_INSTR_bresp(DPUCZDX8G_DPU1_M_AXI_INSTR_BRESP),
        .DPU1_M_AXI_INSTR_bvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_BVALID),
        .DPU1_M_AXI_INSTR_rdata(DPUCZDX8G_DPU1_M_AXI_INSTR_RDATA),
        .DPU1_M_AXI_INSTR_rid(DPUCZDX8G_DPU1_M_AXI_INSTR_RID),
        .DPU1_M_AXI_INSTR_rlast(DPUCZDX8G_DPU1_M_AXI_INSTR_RLAST),
        .DPU1_M_AXI_INSTR_rready(DPUCZDX8G_DPU1_M_AXI_INSTR_RREADY),
        .DPU1_M_AXI_INSTR_rresp(DPUCZDX8G_DPU1_M_AXI_INSTR_RRESP),
        .DPU1_M_AXI_INSTR_rvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_RVALID),
        .DPU1_M_AXI_INSTR_wdata(DPUCZDX8G_DPU1_M_AXI_INSTR_WDATA),
        .DPU1_M_AXI_INSTR_wlast(DPUCZDX8G_DPU1_M_AXI_INSTR_WLAST),
        .DPU1_M_AXI_INSTR_wready(DPUCZDX8G_DPU1_M_AXI_INSTR_WREADY),
        .DPU1_M_AXI_INSTR_wstrb(DPUCZDX8G_DPU1_M_AXI_INSTR_WSTRB),
        .DPU1_M_AXI_INSTR_wvalid(DPUCZDX8G_DPU1_M_AXI_INSTR_WVALID),
        .DPU2_M_AXI_DATA0_araddr(DPUCZDX8G_DPU2_M_AXI_DATA0_ARADDR),
        .DPU2_M_AXI_DATA0_arburst(DPUCZDX8G_DPU2_M_AXI_DATA0_ARBURST),
        .DPU2_M_AXI_DATA0_arcache(DPUCZDX8G_DPU2_M_AXI_DATA0_ARCACHE),
        .DPU2_M_AXI_DATA0_arid(DPUCZDX8G_DPU2_M_AXI_DATA0_ARID),
        .DPU2_M_AXI_DATA0_arlen(DPUCZDX8G_DPU2_M_AXI_DATA0_ARLEN),
        .DPU2_M_AXI_DATA0_arlock(DPUCZDX8G_DPU2_M_AXI_DATA0_ARLOCK),
        .DPU2_M_AXI_DATA0_arprot(DPUCZDX8G_DPU2_M_AXI_DATA0_ARPROT),
        .DPU2_M_AXI_DATA0_arqos(DPUCZDX8G_DPU2_M_AXI_DATA0_ARQOS),
        .DPU2_M_AXI_DATA0_arready(DPUCZDX8G_DPU2_M_AXI_DATA0_ARREADY),
        .DPU2_M_AXI_DATA0_arsize(DPUCZDX8G_DPU2_M_AXI_DATA0_ARSIZE),
        .DPU2_M_AXI_DATA0_aruser(DPUCZDX8G_DPU2_M_AXI_DATA0_ARUSER),
        .DPU2_M_AXI_DATA0_arvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_ARVALID),
        .DPU2_M_AXI_DATA0_awaddr(DPUCZDX8G_DPU2_M_AXI_DATA0_AWADDR),
        .DPU2_M_AXI_DATA0_awburst(DPUCZDX8G_DPU2_M_AXI_DATA0_AWBURST),
        .DPU2_M_AXI_DATA0_awcache(DPUCZDX8G_DPU2_M_AXI_DATA0_AWCACHE),
        .DPU2_M_AXI_DATA0_awid(DPUCZDX8G_DPU2_M_AXI_DATA0_AWID),
        .DPU2_M_AXI_DATA0_awlen(DPUCZDX8G_DPU2_M_AXI_DATA0_AWLEN),
        .DPU2_M_AXI_DATA0_awlock(DPUCZDX8G_DPU2_M_AXI_DATA0_AWLOCK),
        .DPU2_M_AXI_DATA0_awprot(DPUCZDX8G_DPU2_M_AXI_DATA0_AWPROT),
        .DPU2_M_AXI_DATA0_awqos(DPUCZDX8G_DPU2_M_AXI_DATA0_AWQOS),
        .DPU2_M_AXI_DATA0_awready(DPUCZDX8G_DPU2_M_AXI_DATA0_AWREADY),
        .DPU2_M_AXI_DATA0_awsize(DPUCZDX8G_DPU2_M_AXI_DATA0_AWSIZE),
        .DPU2_M_AXI_DATA0_awuser(DPUCZDX8G_DPU2_M_AXI_DATA0_AWUSER),
        .DPU2_M_AXI_DATA0_awvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_AWVALID),
        .DPU2_M_AXI_DATA0_bid(DPUCZDX8G_DPU2_M_AXI_DATA0_BID),
        .DPU2_M_AXI_DATA0_bready(DPUCZDX8G_DPU2_M_AXI_DATA0_BREADY),
        .DPU2_M_AXI_DATA0_bresp(DPUCZDX8G_DPU2_M_AXI_DATA0_BRESP),
        .DPU2_M_AXI_DATA0_bvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_BVALID),
        .DPU2_M_AXI_DATA0_rdata(DPUCZDX8G_DPU2_M_AXI_DATA0_RDATA),
        .DPU2_M_AXI_DATA0_rid(DPUCZDX8G_DPU2_M_AXI_DATA0_RID),
        .DPU2_M_AXI_DATA0_rlast(DPUCZDX8G_DPU2_M_AXI_DATA0_RLAST),
        .DPU2_M_AXI_DATA0_rready(DPUCZDX8G_DPU2_M_AXI_DATA0_RREADY),
        .DPU2_M_AXI_DATA0_rresp(DPUCZDX8G_DPU2_M_AXI_DATA0_RRESP),
        .DPU2_M_AXI_DATA0_rvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_RVALID),
        .DPU2_M_AXI_DATA0_wdata(DPUCZDX8G_DPU2_M_AXI_DATA0_WDATA),
        .DPU2_M_AXI_DATA0_wlast(DPUCZDX8G_DPU2_M_AXI_DATA0_WLAST),
        .DPU2_M_AXI_DATA0_wready(DPUCZDX8G_DPU2_M_AXI_DATA0_WREADY),
        .DPU2_M_AXI_DATA0_wstrb(DPUCZDX8G_DPU2_M_AXI_DATA0_WSTRB),
        .DPU2_M_AXI_DATA0_wvalid(DPUCZDX8G_DPU2_M_AXI_DATA0_WVALID),
        .DPU2_M_AXI_DATA1_araddr(DPUCZDX8G_DPU2_M_AXI_DATA1_ARADDR),
        .DPU2_M_AXI_DATA1_arburst(DPUCZDX8G_DPU2_M_AXI_DATA1_ARBURST),
        .DPU2_M_AXI_DATA1_arcache(DPUCZDX8G_DPU2_M_AXI_DATA1_ARCACHE),
        .DPU2_M_AXI_DATA1_arid(DPUCZDX8G_DPU2_M_AXI_DATA1_ARID),
        .DPU2_M_AXI_DATA1_arlen(DPUCZDX8G_DPU2_M_AXI_DATA1_ARLEN),
        .DPU2_M_AXI_DATA1_arlock(DPUCZDX8G_DPU2_M_AXI_DATA1_ARLOCK),
        .DPU2_M_AXI_DATA1_arprot(DPUCZDX8G_DPU2_M_AXI_DATA1_ARPROT),
        .DPU2_M_AXI_DATA1_arqos(DPUCZDX8G_DPU2_M_AXI_DATA1_ARQOS),
        .DPU2_M_AXI_DATA1_arready(DPUCZDX8G_DPU2_M_AXI_DATA1_ARREADY),
        .DPU2_M_AXI_DATA1_arsize(DPUCZDX8G_DPU2_M_AXI_DATA1_ARSIZE),
        .DPU2_M_AXI_DATA1_aruser(DPUCZDX8G_DPU2_M_AXI_DATA1_ARUSER),
        .DPU2_M_AXI_DATA1_arvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_ARVALID),
        .DPU2_M_AXI_DATA1_awaddr(DPUCZDX8G_DPU2_M_AXI_DATA1_AWADDR),
        .DPU2_M_AXI_DATA1_awburst(DPUCZDX8G_DPU2_M_AXI_DATA1_AWBURST),
        .DPU2_M_AXI_DATA1_awcache(DPUCZDX8G_DPU2_M_AXI_DATA1_AWCACHE),
        .DPU2_M_AXI_DATA1_awid(DPUCZDX8G_DPU2_M_AXI_DATA1_AWID),
        .DPU2_M_AXI_DATA1_awlen(DPUCZDX8G_DPU2_M_AXI_DATA1_AWLEN),
        .DPU2_M_AXI_DATA1_awlock(DPUCZDX8G_DPU2_M_AXI_DATA1_AWLOCK),
        .DPU2_M_AXI_DATA1_awprot(DPUCZDX8G_DPU2_M_AXI_DATA1_AWPROT),
        .DPU2_M_AXI_DATA1_awqos(DPUCZDX8G_DPU2_M_AXI_DATA1_AWQOS),
        .DPU2_M_AXI_DATA1_awready(DPUCZDX8G_DPU2_M_AXI_DATA1_AWREADY),
        .DPU2_M_AXI_DATA1_awsize(DPUCZDX8G_DPU2_M_AXI_DATA1_AWSIZE),
        .DPU2_M_AXI_DATA1_awuser(DPUCZDX8G_DPU2_M_AXI_DATA1_AWUSER),
        .DPU2_M_AXI_DATA1_awvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_AWVALID),
        .DPU2_M_AXI_DATA1_bid(DPUCZDX8G_DPU2_M_AXI_DATA1_BID),
        .DPU2_M_AXI_DATA1_bready(DPUCZDX8G_DPU2_M_AXI_DATA1_BREADY),
        .DPU2_M_AXI_DATA1_bresp(DPUCZDX8G_DPU2_M_AXI_DATA1_BRESP),
        .DPU2_M_AXI_DATA1_bvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_BVALID),
        .DPU2_M_AXI_DATA1_rdata(DPUCZDX8G_DPU2_M_AXI_DATA1_RDATA),
        .DPU2_M_AXI_DATA1_rid(DPUCZDX8G_DPU2_M_AXI_DATA1_RID),
        .DPU2_M_AXI_DATA1_rlast(DPUCZDX8G_DPU2_M_AXI_DATA1_RLAST),
        .DPU2_M_AXI_DATA1_rready(DPUCZDX8G_DPU2_M_AXI_DATA1_RREADY),
        .DPU2_M_AXI_DATA1_rresp(DPUCZDX8G_DPU2_M_AXI_DATA1_RRESP),
        .DPU2_M_AXI_DATA1_rvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_RVALID),
        .DPU2_M_AXI_DATA1_wdata(DPUCZDX8G_DPU2_M_AXI_DATA1_WDATA),
        .DPU2_M_AXI_DATA1_wlast(DPUCZDX8G_DPU2_M_AXI_DATA1_WLAST),
        .DPU2_M_AXI_DATA1_wready(DPUCZDX8G_DPU2_M_AXI_DATA1_WREADY),
        .DPU2_M_AXI_DATA1_wstrb(DPUCZDX8G_DPU2_M_AXI_DATA1_WSTRB),
        .DPU2_M_AXI_DATA1_wvalid(DPUCZDX8G_DPU2_M_AXI_DATA1_WVALID),
        .DPU2_M_AXI_INSTR_araddr(DPUCZDX8G_DPU2_M_AXI_INSTR_ARADDR),
        .DPU2_M_AXI_INSTR_arburst(DPUCZDX8G_DPU2_M_AXI_INSTR_ARBURST),
        .DPU2_M_AXI_INSTR_arcache(DPUCZDX8G_DPU2_M_AXI_INSTR_ARCACHE),
        .DPU2_M_AXI_INSTR_arid(DPUCZDX8G_DPU2_M_AXI_INSTR_ARID),
        .DPU2_M_AXI_INSTR_arlen(DPUCZDX8G_DPU2_M_AXI_INSTR_ARLEN),
        .DPU2_M_AXI_INSTR_arlock(DPUCZDX8G_DPU2_M_AXI_INSTR_ARLOCK),
        .DPU2_M_AXI_INSTR_arprot(DPUCZDX8G_DPU2_M_AXI_INSTR_ARPROT),
        .DPU2_M_AXI_INSTR_arqos(DPUCZDX8G_DPU2_M_AXI_INSTR_ARQOS),
        .DPU2_M_AXI_INSTR_arready(DPUCZDX8G_DPU2_M_AXI_INSTR_ARREADY),
        .DPU2_M_AXI_INSTR_arsize(DPUCZDX8G_DPU2_M_AXI_INSTR_ARSIZE),
        .DPU2_M_AXI_INSTR_aruser(DPUCZDX8G_DPU2_M_AXI_INSTR_ARUSER),
        .DPU2_M_AXI_INSTR_arvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_ARVALID),
        .DPU2_M_AXI_INSTR_awaddr(DPUCZDX8G_DPU2_M_AXI_INSTR_AWADDR),
        .DPU2_M_AXI_INSTR_awburst(DPUCZDX8G_DPU2_M_AXI_INSTR_AWBURST),
        .DPU2_M_AXI_INSTR_awcache(DPUCZDX8G_DPU2_M_AXI_INSTR_AWCACHE),
        .DPU2_M_AXI_INSTR_awid(DPUCZDX8G_DPU2_M_AXI_INSTR_AWID),
        .DPU2_M_AXI_INSTR_awlen(DPUCZDX8G_DPU2_M_AXI_INSTR_AWLEN),
        .DPU2_M_AXI_INSTR_awlock(DPUCZDX8G_DPU2_M_AXI_INSTR_AWLOCK),
        .DPU2_M_AXI_INSTR_awprot(DPUCZDX8G_DPU2_M_AXI_INSTR_AWPROT),
        .DPU2_M_AXI_INSTR_awqos(DPUCZDX8G_DPU2_M_AXI_INSTR_AWQOS),
        .DPU2_M_AXI_INSTR_awready(DPUCZDX8G_DPU2_M_AXI_INSTR_AWREADY),
        .DPU2_M_AXI_INSTR_awsize(DPUCZDX8G_DPU2_M_AXI_INSTR_AWSIZE),
        .DPU2_M_AXI_INSTR_awuser(DPUCZDX8G_DPU2_M_AXI_INSTR_AWUSER),
        .DPU2_M_AXI_INSTR_awvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_AWVALID),
        .DPU2_M_AXI_INSTR_bid(DPUCZDX8G_DPU2_M_AXI_INSTR_BID),
        .DPU2_M_AXI_INSTR_bready(DPUCZDX8G_DPU2_M_AXI_INSTR_BREADY),
        .DPU2_M_AXI_INSTR_bresp(DPUCZDX8G_DPU2_M_AXI_INSTR_BRESP),
        .DPU2_M_AXI_INSTR_bvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_BVALID),
        .DPU2_M_AXI_INSTR_rdata(DPUCZDX8G_DPU2_M_AXI_INSTR_RDATA),
        .DPU2_M_AXI_INSTR_rid(DPUCZDX8G_DPU2_M_AXI_INSTR_RID),
        .DPU2_M_AXI_INSTR_rlast(DPUCZDX8G_DPU2_M_AXI_INSTR_RLAST),
        .DPU2_M_AXI_INSTR_rready(DPUCZDX8G_DPU2_M_AXI_INSTR_RREADY),
        .DPU2_M_AXI_INSTR_rresp(DPUCZDX8G_DPU2_M_AXI_INSTR_RRESP),
        .DPU2_M_AXI_INSTR_rvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_RVALID),
        .DPU2_M_AXI_INSTR_wdata(DPUCZDX8G_DPU2_M_AXI_INSTR_WDATA),
        .DPU2_M_AXI_INSTR_wlast(DPUCZDX8G_DPU2_M_AXI_INSTR_WLAST),
        .DPU2_M_AXI_INSTR_wready(DPUCZDX8G_DPU2_M_AXI_INSTR_WREADY),
        .DPU2_M_AXI_INSTR_wstrb(DPUCZDX8G_DPU2_M_AXI_INSTR_WSTRB),
        .DPU2_M_AXI_INSTR_wvalid(DPUCZDX8G_DPU2_M_AXI_INSTR_WVALID),
        .GHP_CLK_I(hier_dpu_clk_DPU_CLK),
        .GHP_CLK_O(GHP_CLK_O),
        .GHP_RSTn(hier_dpu_clk_RSTn_PERI),
        .M_AXI_HP0_FPD_araddr(M_AXI_HP0_FPD_araddr),
        .M_AXI_HP0_FPD_arburst(M_AXI_HP0_FPD_arburst),
        .M_AXI_HP0_FPD_arcache(M_AXI_HP0_FPD_arcache),
        .M_AXI_HP0_FPD_arid(M_AXI_HP0_FPD_arid),
        .M_AXI_HP0_FPD_arlen(M_AXI_HP0_FPD_arlen),
        .M_AXI_HP0_FPD_arlock(M_AXI_HP0_FPD_arlock),
        .M_AXI_HP0_FPD_arprot(M_AXI_HP0_FPD_arprot),
        .M_AXI_HP0_FPD_arqos(M_AXI_HP0_FPD_arqos),
        .M_AXI_HP0_FPD_arready(M_AXI_HP0_FPD_arready),
        .M_AXI_HP0_FPD_arsize(M_AXI_HP0_FPD_arsize),
        .M_AXI_HP0_FPD_aruser(M_AXI_HP0_FPD_aruser),
        .M_AXI_HP0_FPD_arvalid(M_AXI_HP0_FPD_arvalid),
        .M_AXI_HP0_FPD_awaddr(M_AXI_HP0_FPD_awaddr),
        .M_AXI_HP0_FPD_awburst(M_AXI_HP0_FPD_awburst),
        .M_AXI_HP0_FPD_awcache(M_AXI_HP0_FPD_awcache),
        .M_AXI_HP0_FPD_awid(M_AXI_HP0_FPD_awid),
        .M_AXI_HP0_FPD_awlen(M_AXI_HP0_FPD_awlen),
        .M_AXI_HP0_FPD_awlock(M_AXI_HP0_FPD_awlock),
        .M_AXI_HP0_FPD_awprot(M_AXI_HP0_FPD_awprot),
        .M_AXI_HP0_FPD_awqos(M_AXI_HP0_FPD_awqos),
        .M_AXI_HP0_FPD_awready(M_AXI_HP0_FPD_awready),
        .M_AXI_HP0_FPD_awsize(M_AXI_HP0_FPD_awsize),
        .M_AXI_HP0_FPD_awuser(M_AXI_HP0_FPD_awuser),
        .M_AXI_HP0_FPD_awvalid(M_AXI_HP0_FPD_awvalid),
        .M_AXI_HP0_FPD_bid(M_AXI_HP0_FPD_bid),
        .M_AXI_HP0_FPD_bready(M_AXI_HP0_FPD_bready),
        .M_AXI_HP0_FPD_bresp(M_AXI_HP0_FPD_bresp),
        .M_AXI_HP0_FPD_bvalid(M_AXI_HP0_FPD_bvalid),
        .M_AXI_HP0_FPD_rdata(M_AXI_HP0_FPD_rdata),
        .M_AXI_HP0_FPD_rid(M_AXI_HP0_FPD_rid),
        .M_AXI_HP0_FPD_rlast(M_AXI_HP0_FPD_rlast),
        .M_AXI_HP0_FPD_rready(M_AXI_HP0_FPD_rready),
        .M_AXI_HP0_FPD_rresp(M_AXI_HP0_FPD_rresp),
        .M_AXI_HP0_FPD_rvalid(M_AXI_HP0_FPD_rvalid),
        .M_AXI_HP0_FPD_wdata(M_AXI_HP0_FPD_wdata),
        .M_AXI_HP0_FPD_wlast(M_AXI_HP0_FPD_wlast),
        .M_AXI_HP0_FPD_wready(M_AXI_HP0_FPD_wready),
        .M_AXI_HP0_FPD_wstrb(M_AXI_HP0_FPD_wstrb),
        .M_AXI_HP0_FPD_wvalid(M_AXI_HP0_FPD_wvalid),
        .M_AXI_HP1_FPD_araddr(M_AXI_HP1_FPD_araddr),
        .M_AXI_HP1_FPD_arburst(M_AXI_HP1_FPD_arburst),
        .M_AXI_HP1_FPD_arcache(M_AXI_HP1_FPD_arcache),
        .M_AXI_HP1_FPD_arid(M_AXI_HP1_FPD_arid),
        .M_AXI_HP1_FPD_arlen(M_AXI_HP1_FPD_arlen),
        .M_AXI_HP1_FPD_arlock(M_AXI_HP1_FPD_arlock),
        .M_AXI_HP1_FPD_arprot(M_AXI_HP1_FPD_arprot),
        .M_AXI_HP1_FPD_arqos(M_AXI_HP1_FPD_arqos),
        .M_AXI_HP1_FPD_arready(M_AXI_HP1_FPD_arready),
        .M_AXI_HP1_FPD_arsize(M_AXI_HP1_FPD_arsize),
        .M_AXI_HP1_FPD_aruser(M_AXI_HP1_FPD_aruser),
        .M_AXI_HP1_FPD_arvalid(M_AXI_HP1_FPD_arvalid),
        .M_AXI_HP1_FPD_awaddr(M_AXI_HP1_FPD_awaddr),
        .M_AXI_HP1_FPD_awburst(M_AXI_HP1_FPD_awburst),
        .M_AXI_HP1_FPD_awcache(M_AXI_HP1_FPD_awcache),
        .M_AXI_HP1_FPD_awid(M_AXI_HP1_FPD_awid),
        .M_AXI_HP1_FPD_awlen(M_AXI_HP1_FPD_awlen),
        .M_AXI_HP1_FPD_awlock(M_AXI_HP1_FPD_awlock),
        .M_AXI_HP1_FPD_awprot(M_AXI_HP1_FPD_awprot),
        .M_AXI_HP1_FPD_awqos(M_AXI_HP1_FPD_awqos),
        .M_AXI_HP1_FPD_awready(M_AXI_HP1_FPD_awready),
        .M_AXI_HP1_FPD_awsize(M_AXI_HP1_FPD_awsize),
        .M_AXI_HP1_FPD_awuser(M_AXI_HP1_FPD_awuser),
        .M_AXI_HP1_FPD_awvalid(M_AXI_HP1_FPD_awvalid),
        .M_AXI_HP1_FPD_bid(M_AXI_HP1_FPD_bid),
        .M_AXI_HP1_FPD_bready(M_AXI_HP1_FPD_bready),
        .M_AXI_HP1_FPD_bresp(M_AXI_HP1_FPD_bresp),
        .M_AXI_HP1_FPD_bvalid(M_AXI_HP1_FPD_bvalid),
        .M_AXI_HP1_FPD_rdata(M_AXI_HP1_FPD_rdata),
        .M_AXI_HP1_FPD_rid(M_AXI_HP1_FPD_rid),
        .M_AXI_HP1_FPD_rlast(M_AXI_HP1_FPD_rlast),
        .M_AXI_HP1_FPD_rready(M_AXI_HP1_FPD_rready),
        .M_AXI_HP1_FPD_rresp(M_AXI_HP1_FPD_rresp),
        .M_AXI_HP1_FPD_rvalid(M_AXI_HP1_FPD_rvalid),
        .M_AXI_HP1_FPD_wdata(M_AXI_HP1_FPD_wdata),
        .M_AXI_HP1_FPD_wlast(M_AXI_HP1_FPD_wlast),
        .M_AXI_HP1_FPD_wready(M_AXI_HP1_FPD_wready),
        .M_AXI_HP1_FPD_wstrb(M_AXI_HP1_FPD_wstrb),
        .M_AXI_HP1_FPD_wvalid(M_AXI_HP1_FPD_wvalid),
        .M_AXI_HP2_FPD_araddr(M_AXI_HP2_FPD_araddr),
        .M_AXI_HP2_FPD_arburst(M_AXI_HP2_FPD_arburst),
        .M_AXI_HP2_FPD_arcache(M_AXI_HP2_FPD_arcache),
        .M_AXI_HP2_FPD_arid(M_AXI_HP2_FPD_arid),
        .M_AXI_HP2_FPD_arlen(M_AXI_HP2_FPD_arlen),
        .M_AXI_HP2_FPD_arlock(M_AXI_HP2_FPD_arlock),
        .M_AXI_HP2_FPD_arprot(M_AXI_HP2_FPD_arprot),
        .M_AXI_HP2_FPD_arqos(M_AXI_HP2_FPD_arqos),
        .M_AXI_HP2_FPD_arready(M_AXI_HP2_FPD_arready),
        .M_AXI_HP2_FPD_arsize(M_AXI_HP2_FPD_arsize),
        .M_AXI_HP2_FPD_aruser(M_AXI_HP2_FPD_aruser),
        .M_AXI_HP2_FPD_arvalid(M_AXI_HP2_FPD_arvalid),
        .M_AXI_HP2_FPD_awaddr(M_AXI_HP2_FPD_awaddr),
        .M_AXI_HP2_FPD_awburst(M_AXI_HP2_FPD_awburst),
        .M_AXI_HP2_FPD_awcache(M_AXI_HP2_FPD_awcache),
        .M_AXI_HP2_FPD_awid(M_AXI_HP2_FPD_awid),
        .M_AXI_HP2_FPD_awlen(M_AXI_HP2_FPD_awlen),
        .M_AXI_HP2_FPD_awlock(M_AXI_HP2_FPD_awlock),
        .M_AXI_HP2_FPD_awprot(M_AXI_HP2_FPD_awprot),
        .M_AXI_HP2_FPD_awqos(M_AXI_HP2_FPD_awqos),
        .M_AXI_HP2_FPD_awready(M_AXI_HP2_FPD_awready),
        .M_AXI_HP2_FPD_awsize(M_AXI_HP2_FPD_awsize),
        .M_AXI_HP2_FPD_awuser(M_AXI_HP2_FPD_awuser),
        .M_AXI_HP2_FPD_awvalid(M_AXI_HP2_FPD_awvalid),
        .M_AXI_HP2_FPD_bid(M_AXI_HP2_FPD_bid),
        .M_AXI_HP2_FPD_bready(M_AXI_HP2_FPD_bready),
        .M_AXI_HP2_FPD_bresp(M_AXI_HP2_FPD_bresp),
        .M_AXI_HP2_FPD_bvalid(M_AXI_HP2_FPD_bvalid),
        .M_AXI_HP2_FPD_rdata(M_AXI_HP2_FPD_rdata),
        .M_AXI_HP2_FPD_rid(M_AXI_HP2_FPD_rid),
        .M_AXI_HP2_FPD_rlast(M_AXI_HP2_FPD_rlast),
        .M_AXI_HP2_FPD_rready(M_AXI_HP2_FPD_rready),
        .M_AXI_HP2_FPD_rresp(M_AXI_HP2_FPD_rresp),
        .M_AXI_HP2_FPD_rvalid(M_AXI_HP2_FPD_rvalid),
        .M_AXI_HP2_FPD_wdata(M_AXI_HP2_FPD_wdata),
        .M_AXI_HP2_FPD_wlast(M_AXI_HP2_FPD_wlast),
        .M_AXI_HP2_FPD_wready(M_AXI_HP2_FPD_wready),
        .M_AXI_HP2_FPD_wstrb(M_AXI_HP2_FPD_wstrb),
        .M_AXI_HP2_FPD_wvalid(M_AXI_HP2_FPD_wvalid),
        .M_AXI_HP3_FPD_araddr(M_AXI_HP3_FPD_araddr),
        .M_AXI_HP3_FPD_arburst(M_AXI_HP3_FPD_arburst),
        .M_AXI_HP3_FPD_arcache(M_AXI_HP3_FPD_arcache),
        .M_AXI_HP3_FPD_arid(M_AXI_HP3_FPD_arid),
        .M_AXI_HP3_FPD_arlen(M_AXI_HP3_FPD_arlen),
        .M_AXI_HP3_FPD_arlock(M_AXI_HP3_FPD_arlock),
        .M_AXI_HP3_FPD_arprot(M_AXI_HP3_FPD_arprot),
        .M_AXI_HP3_FPD_arqos(M_AXI_HP3_FPD_arqos),
        .M_AXI_HP3_FPD_arready(M_AXI_HP3_FPD_arready),
        .M_AXI_HP3_FPD_arsize(M_AXI_HP3_FPD_arsize),
        .M_AXI_HP3_FPD_aruser(M_AXI_HP3_FPD_aruser),
        .M_AXI_HP3_FPD_arvalid(M_AXI_HP3_FPD_arvalid),
        .M_AXI_HP3_FPD_awaddr(M_AXI_HP3_FPD_awaddr),
        .M_AXI_HP3_FPD_awburst(M_AXI_HP3_FPD_awburst),
        .M_AXI_HP3_FPD_awcache(M_AXI_HP3_FPD_awcache),
        .M_AXI_HP3_FPD_awid(M_AXI_HP3_FPD_awid),
        .M_AXI_HP3_FPD_awlen(M_AXI_HP3_FPD_awlen),
        .M_AXI_HP3_FPD_awlock(M_AXI_HP3_FPD_awlock),
        .M_AXI_HP3_FPD_awprot(M_AXI_HP3_FPD_awprot),
        .M_AXI_HP3_FPD_awqos(M_AXI_HP3_FPD_awqos),
        .M_AXI_HP3_FPD_awready(M_AXI_HP3_FPD_awready),
        .M_AXI_HP3_FPD_awsize(M_AXI_HP3_FPD_awsize),
        .M_AXI_HP3_FPD_awuser(M_AXI_HP3_FPD_awuser),
        .M_AXI_HP3_FPD_awvalid(M_AXI_HP3_FPD_awvalid),
        .M_AXI_HP3_FPD_bid(M_AXI_HP3_FPD_bid),
        .M_AXI_HP3_FPD_bready(M_AXI_HP3_FPD_bready),
        .M_AXI_HP3_FPD_bresp(M_AXI_HP3_FPD_bresp),
        .M_AXI_HP3_FPD_bvalid(M_AXI_HP3_FPD_bvalid),
        .M_AXI_HP3_FPD_rdata(M_AXI_HP3_FPD_rdata),
        .M_AXI_HP3_FPD_rid(M_AXI_HP3_FPD_rid),
        .M_AXI_HP3_FPD_rlast(M_AXI_HP3_FPD_rlast),
        .M_AXI_HP3_FPD_rready(M_AXI_HP3_FPD_rready),
        .M_AXI_HP3_FPD_rresp(M_AXI_HP3_FPD_rresp),
        .M_AXI_HP3_FPD_rvalid(M_AXI_HP3_FPD_rvalid),
        .M_AXI_HP3_FPD_wdata(M_AXI_HP3_FPD_wdata),
        .M_AXI_HP3_FPD_wlast(M_AXI_HP3_FPD_wlast),
        .M_AXI_HP3_FPD_wready(M_AXI_HP3_FPD_wready),
        .M_AXI_HP3_FPD_wstrb(M_AXI_HP3_FPD_wstrb),
        .M_AXI_HP3_FPD_wvalid(M_AXI_HP3_FPD_wvalid),
        .M_AXI_HPC0_FPD_araddr(M_AXI_HPC0_FPD_araddr),
        .M_AXI_HPC0_FPD_arburst(M_AXI_HPC0_FPD_arburst),
        .M_AXI_HPC0_FPD_arcache(M_AXI_HPC0_FPD_arcache),
        .M_AXI_HPC0_FPD_arid(M_AXI_HPC0_FPD_arid),
        .M_AXI_HPC0_FPD_arlen(M_AXI_HPC0_FPD_arlen),
        .M_AXI_HPC0_FPD_arlock(M_AXI_HPC0_FPD_arlock),
        .M_AXI_HPC0_FPD_arprot(M_AXI_HPC0_FPD_arprot),
        .M_AXI_HPC0_FPD_arqos(M_AXI_HPC0_FPD_arqos),
        .M_AXI_HPC0_FPD_arready(M_AXI_HPC0_FPD_arready),
        .M_AXI_HPC0_FPD_arsize(M_AXI_HPC0_FPD_arsize),
        .M_AXI_HPC0_FPD_aruser(M_AXI_HPC0_FPD_aruser),
        .M_AXI_HPC0_FPD_arvalid(M_AXI_HPC0_FPD_arvalid),
        .M_AXI_HPC0_FPD_awaddr(M_AXI_HPC0_FPD_awaddr),
        .M_AXI_HPC0_FPD_awburst(M_AXI_HPC0_FPD_awburst),
        .M_AXI_HPC0_FPD_awcache(M_AXI_HPC0_FPD_awcache),
        .M_AXI_HPC0_FPD_awid(M_AXI_HPC0_FPD_awid),
        .M_AXI_HPC0_FPD_awlen(M_AXI_HPC0_FPD_awlen),
        .M_AXI_HPC0_FPD_awlock(M_AXI_HPC0_FPD_awlock),
        .M_AXI_HPC0_FPD_awprot(M_AXI_HPC0_FPD_awprot),
        .M_AXI_HPC0_FPD_awqos(M_AXI_HPC0_FPD_awqos),
        .M_AXI_HPC0_FPD_awready(M_AXI_HPC0_FPD_awready),
        .M_AXI_HPC0_FPD_awsize(M_AXI_HPC0_FPD_awsize),
        .M_AXI_HPC0_FPD_awuser(M_AXI_HPC0_FPD_awuser),
        .M_AXI_HPC0_FPD_awvalid(M_AXI_HPC0_FPD_awvalid),
        .M_AXI_HPC0_FPD_bid(M_AXI_HPC0_FPD_bid),
        .M_AXI_HPC0_FPD_bready(M_AXI_HPC0_FPD_bready),
        .M_AXI_HPC0_FPD_bresp(M_AXI_HPC0_FPD_bresp),
        .M_AXI_HPC0_FPD_bvalid(M_AXI_HPC0_FPD_bvalid),
        .M_AXI_HPC0_FPD_rdata(M_AXI_HPC0_FPD_rdata),
        .M_AXI_HPC0_FPD_rid(M_AXI_HPC0_FPD_rid),
        .M_AXI_HPC0_FPD_rlast(M_AXI_HPC0_FPD_rlast),
        .M_AXI_HPC0_FPD_rready(M_AXI_HPC0_FPD_rready),
        .M_AXI_HPC0_FPD_rresp(M_AXI_HPC0_FPD_rresp),
        .M_AXI_HPC0_FPD_rvalid(M_AXI_HPC0_FPD_rvalid),
        .M_AXI_HPC0_FPD_wdata(M_AXI_HPC0_FPD_wdata),
        .M_AXI_HPC0_FPD_wlast(M_AXI_HPC0_FPD_wlast),
        .M_AXI_HPC0_FPD_wready(M_AXI_HPC0_FPD_wready),
        .M_AXI_HPC0_FPD_wstrb(M_AXI_HPC0_FPD_wstrb),
        .M_AXI_HPC0_FPD_wvalid(M_AXI_HPC0_FPD_wvalid),
        .M_AXI_HPC1_FPD_araddr(M_AXI_HPC1_FPD_araddr),
        .M_AXI_HPC1_FPD_arburst(M_AXI_HPC1_FPD_arburst),
        .M_AXI_HPC1_FPD_arcache(M_AXI_HPC1_FPD_arcache),
        .M_AXI_HPC1_FPD_arid(M_AXI_HPC1_FPD_arid),
        .M_AXI_HPC1_FPD_arlen(M_AXI_HPC1_FPD_arlen),
        .M_AXI_HPC1_FPD_arlock(M_AXI_HPC1_FPD_arlock),
        .M_AXI_HPC1_FPD_arprot(M_AXI_HPC1_FPD_arprot),
        .M_AXI_HPC1_FPD_arqos(M_AXI_HPC1_FPD_arqos),
        .M_AXI_HPC1_FPD_arready(M_AXI_HPC1_FPD_arready),
        .M_AXI_HPC1_FPD_arsize(M_AXI_HPC1_FPD_arsize),
        .M_AXI_HPC1_FPD_aruser(M_AXI_HPC1_FPD_aruser),
        .M_AXI_HPC1_FPD_arvalid(M_AXI_HPC1_FPD_arvalid),
        .M_AXI_HPC1_FPD_awaddr(M_AXI_HPC1_FPD_awaddr),
        .M_AXI_HPC1_FPD_awburst(M_AXI_HPC1_FPD_awburst),
        .M_AXI_HPC1_FPD_awcache(M_AXI_HPC1_FPD_awcache),
        .M_AXI_HPC1_FPD_awid(M_AXI_HPC1_FPD_awid),
        .M_AXI_HPC1_FPD_awlen(M_AXI_HPC1_FPD_awlen),
        .M_AXI_HPC1_FPD_awlock(M_AXI_HPC1_FPD_awlock),
        .M_AXI_HPC1_FPD_awprot(M_AXI_HPC1_FPD_awprot),
        .M_AXI_HPC1_FPD_awqos(M_AXI_HPC1_FPD_awqos),
        .M_AXI_HPC1_FPD_awready(M_AXI_HPC1_FPD_awready),
        .M_AXI_HPC1_FPD_awsize(M_AXI_HPC1_FPD_awsize),
        .M_AXI_HPC1_FPD_awuser(M_AXI_HPC1_FPD_awuser),
        .M_AXI_HPC1_FPD_awvalid(M_AXI_HPC1_FPD_awvalid),
        .M_AXI_HPC1_FPD_bid(M_AXI_HPC1_FPD_bid),
        .M_AXI_HPC1_FPD_bready(M_AXI_HPC1_FPD_bready),
        .M_AXI_HPC1_FPD_bresp(M_AXI_HPC1_FPD_bresp),
        .M_AXI_HPC1_FPD_bvalid(M_AXI_HPC1_FPD_bvalid),
        .M_AXI_HPC1_FPD_rdata(M_AXI_HPC1_FPD_rdata),
        .M_AXI_HPC1_FPD_rid(M_AXI_HPC1_FPD_rid),
        .M_AXI_HPC1_FPD_rlast(M_AXI_HPC1_FPD_rlast),
        .M_AXI_HPC1_FPD_rready(M_AXI_HPC1_FPD_rready),
        .M_AXI_HPC1_FPD_rresp(M_AXI_HPC1_FPD_rresp),
        .M_AXI_HPC1_FPD_rvalid(M_AXI_HPC1_FPD_rvalid),
        .M_AXI_HPC1_FPD_wdata(M_AXI_HPC1_FPD_wdata),
        .M_AXI_HPC1_FPD_wlast(M_AXI_HPC1_FPD_wlast),
        .M_AXI_HPC1_FPD_wready(M_AXI_HPC1_FPD_wready),
        .M_AXI_HPC1_FPD_wstrb(M_AXI_HPC1_FPD_wstrb),
        .M_AXI_HPC1_FPD_wvalid(M_AXI_HPC1_FPD_wvalid),
        .M_AXI_LPD_araddr(M_AXI_LPD_araddr),
        .M_AXI_LPD_arburst(M_AXI_LPD_arburst),
        .M_AXI_LPD_arcache(M_AXI_LPD_arcache),
        .M_AXI_LPD_arid(M_AXI_LPD_arid),
        .M_AXI_LPD_arlen(M_AXI_LPD_arlen),
        .M_AXI_LPD_arlock(M_AXI_LPD_arlock),
        .M_AXI_LPD_arprot(M_AXI_LPD_arprot),
        .M_AXI_LPD_arqos(M_AXI_LPD_arqos),
        .M_AXI_LPD_arready(M_AXI_LPD_arready),
        .M_AXI_LPD_arsize(M_AXI_LPD_arsize),
        .M_AXI_LPD_aruser(M_AXI_LPD_aruser),
        .M_AXI_LPD_arvalid(M_AXI_LPD_arvalid),
        .M_AXI_LPD_awaddr(M_AXI_LPD_awaddr),
        .M_AXI_LPD_awburst(M_AXI_LPD_awburst),
        .M_AXI_LPD_awcache(M_AXI_LPD_awcache),
        .M_AXI_LPD_awid(M_AXI_LPD_awid),
        .M_AXI_LPD_awlen(M_AXI_LPD_awlen),
        .M_AXI_LPD_awlock(M_AXI_LPD_awlock),
        .M_AXI_LPD_awprot(M_AXI_LPD_awprot),
        .M_AXI_LPD_awqos(M_AXI_LPD_awqos),
        .M_AXI_LPD_awready(M_AXI_LPD_awready),
        .M_AXI_LPD_awsize(M_AXI_LPD_awsize),
        .M_AXI_LPD_awuser(M_AXI_LPD_awuser),
        .M_AXI_LPD_awvalid(M_AXI_LPD_awvalid),
        .M_AXI_LPD_bid(M_AXI_LPD_bid),
        .M_AXI_LPD_bready(M_AXI_LPD_bready),
        .M_AXI_LPD_bresp(M_AXI_LPD_bresp),
        .M_AXI_LPD_bvalid(M_AXI_LPD_bvalid),
        .M_AXI_LPD_rdata(M_AXI_LPD_rdata),
        .M_AXI_LPD_rid(M_AXI_LPD_rid),
        .M_AXI_LPD_rlast(M_AXI_LPD_rlast),
        .M_AXI_LPD_rready(M_AXI_LPD_rready),
        .M_AXI_LPD_rresp(M_AXI_LPD_rresp),
        .M_AXI_LPD_rvalid(M_AXI_LPD_rvalid),
        .M_AXI_LPD_wdata(M_AXI_LPD_wdata),
        .M_AXI_LPD_wlast(M_AXI_LPD_wlast),
        .M_AXI_LPD_wready(M_AXI_LPD_wready),
        .M_AXI_LPD_wstrb(M_AXI_LPD_wstrb),
        .M_AXI_LPD_wvalid(M_AXI_LPD_wvalid),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI),
        .SFM_M_AXI_araddr(DPUCZDX8G_SFM_M_AXI_ARADDR),
        .SFM_M_AXI_arburst(DPUCZDX8G_SFM_M_AXI_ARBURST),
        .SFM_M_AXI_arcache(DPUCZDX8G_SFM_M_AXI_ARCACHE),
        .SFM_M_AXI_arid(DPUCZDX8G_SFM_M_AXI_ARID),
        .SFM_M_AXI_arlen(DPUCZDX8G_SFM_M_AXI_ARLEN),
        .SFM_M_AXI_arlock(DPUCZDX8G_SFM_M_AXI_ARLOCK),
        .SFM_M_AXI_arprot(DPUCZDX8G_SFM_M_AXI_ARPROT),
        .SFM_M_AXI_arqos(DPUCZDX8G_SFM_M_AXI_ARQOS),
        .SFM_M_AXI_arready(DPUCZDX8G_SFM_M_AXI_ARREADY),
        .SFM_M_AXI_arsize(DPUCZDX8G_SFM_M_AXI_ARSIZE),
        .SFM_M_AXI_aruser(DPUCZDX8G_SFM_M_AXI_ARUSER),
        .SFM_M_AXI_arvalid(DPUCZDX8G_SFM_M_AXI_ARVALID),
        .SFM_M_AXI_awaddr(DPUCZDX8G_SFM_M_AXI_AWADDR),
        .SFM_M_AXI_awburst(DPUCZDX8G_SFM_M_AXI_AWBURST),
        .SFM_M_AXI_awcache(DPUCZDX8G_SFM_M_AXI_AWCACHE),
        .SFM_M_AXI_awid(DPUCZDX8G_SFM_M_AXI_AWID),
        .SFM_M_AXI_awlen(DPUCZDX8G_SFM_M_AXI_AWLEN),
        .SFM_M_AXI_awlock(DPUCZDX8G_SFM_M_AXI_AWLOCK),
        .SFM_M_AXI_awprot(DPUCZDX8G_SFM_M_AXI_AWPROT),
        .SFM_M_AXI_awqos(DPUCZDX8G_SFM_M_AXI_AWQOS),
        .SFM_M_AXI_awready(DPUCZDX8G_SFM_M_AXI_AWREADY),
        .SFM_M_AXI_awsize(DPUCZDX8G_SFM_M_AXI_AWSIZE),
        .SFM_M_AXI_awuser(DPUCZDX8G_SFM_M_AXI_AWUSER),
        .SFM_M_AXI_awvalid(DPUCZDX8G_SFM_M_AXI_AWVALID),
        .SFM_M_AXI_bid(DPUCZDX8G_SFM_M_AXI_BID),
        .SFM_M_AXI_bready(DPUCZDX8G_SFM_M_AXI_BREADY),
        .SFM_M_AXI_bresp(DPUCZDX8G_SFM_M_AXI_BRESP),
        .SFM_M_AXI_bvalid(DPUCZDX8G_SFM_M_AXI_BVALID),
        .SFM_M_AXI_rdata(DPUCZDX8G_SFM_M_AXI_RDATA),
        .SFM_M_AXI_rid(DPUCZDX8G_SFM_M_AXI_RID),
        .SFM_M_AXI_rlast(DPUCZDX8G_SFM_M_AXI_RLAST),
        .SFM_M_AXI_rready(DPUCZDX8G_SFM_M_AXI_RREADY),
        .SFM_M_AXI_rresp(DPUCZDX8G_SFM_M_AXI_RRESP),
        .SFM_M_AXI_rvalid(DPUCZDX8G_SFM_M_AXI_RVALID),
        .SFM_M_AXI_wdata(DPUCZDX8G_SFM_M_AXI_WDATA),
        .SFM_M_AXI_wlast(DPUCZDX8G_SFM_M_AXI_WLAST),
        .SFM_M_AXI_wready(DPUCZDX8G_SFM_M_AXI_WREADY),
        .SFM_M_AXI_wstrb(DPUCZDX8G_SFM_M_AXI_WSTRB),
        .SFM_M_AXI_wvalid(DPUCZDX8G_SFM_M_AXI_WVALID));
  hier_dpu_irq_imp_7KP66F hier_dpu_irq
       (.INTR(INTR),
        .In0(DPUCZDX8G_dpu0_interrupt),
        .In1(DPUCZDX8G_dpu1_interrupt),
        .In2(DPUCZDX8G_dpu2_interrupt),
        .In3(DPUCZDX8G_sfm_interrupt));
endmodule

module hier_dpu_irq_imp_7KP66F
   (INTR,
    In0,
    In1,
    In2,
    In3);
  output [3:0]INTR;
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;

  wire [3:0]INTR;
  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;
  wire [0:0]In3;

  top_dpu_concat_irq_inner_0 dpu_concat_irq_inner
       (.In0(In0),
        .In1(In1),
        .In2(In2),
        .In3(In3),
        .dout(INTR));
endmodule

module m00_couplers_imp_1OK2ZUD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [5:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [5:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[3:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock;
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser;
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[3:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock;
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser;
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[5:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rid = M_AXI_rid[5:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m00_couplers_imp_MIS0T2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [2:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [2:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [5:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [5:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[2:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock;
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser;
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[2:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock;
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser;
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[127:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[15:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[5:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[127:0];
  assign S_AXI_rid = M_AXI_rid[5:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s00_couplers_imp_1WVHYY4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [2:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [2:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[1:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser[0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[1:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser[0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[127:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[15:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[2:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[127:0];
  assign S_AXI_rid = M_AXI_rid[2:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s00_couplers_imp_VZUKLR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [3:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [3:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[1:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser[0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[1:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser[0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[3:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rid = M_AXI_rid[3:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s01_couplers_imp_1CHS5E2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [3:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [3:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[1:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser[0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[1:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser[0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[3:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rid = M_AXI_rid[3:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s01_couplers_imp_AGALK9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [127:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [15:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [2:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [2:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[1:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser[0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[1:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser[0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[127:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[15:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[2:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[127:0];
  assign S_AXI_rid = M_AXI_rid[2:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module s02_couplers_imp_5A99QC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [1:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire [2:0]M_AXI_arsize;
  wire [0:0]M_AXI_aruser;
  wire M_AXI_arvalid;
  wire [39:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [1:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire [2:0]M_AXI_awsize;
  wire [0:0]M_AXI_awuser;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [3:0]S_AXI_bid;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [3:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[39:0];
  assign M_AXI_arburst = S_AXI_arburst[1:0];
  assign M_AXI_arcache = S_AXI_arcache[3:0];
  assign M_AXI_arid = S_AXI_arid[1:0];
  assign M_AXI_arlen = S_AXI_arlen[7:0];
  assign M_AXI_arlock = S_AXI_arlock[0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arqos = S_AXI_arqos[3:0];
  assign M_AXI_arsize = S_AXI_arsize[2:0];
  assign M_AXI_aruser = S_AXI_aruser[0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[39:0];
  assign M_AXI_awburst = S_AXI_awburst[1:0];
  assign M_AXI_awcache = S_AXI_awcache[3:0];
  assign M_AXI_awid = S_AXI_awid[1:0];
  assign M_AXI_awlen = S_AXI_awlen[7:0];
  assign M_AXI_awlock = S_AXI_awlock[0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awqos = S_AXI_awqos[3:0];
  assign M_AXI_awsize = S_AXI_awsize[2:0];
  assign M_AXI_awuser = S_AXI_awuser[0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wlast = S_AXI_wlast;
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bid = M_AXI_bid[3:0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rid = M_AXI_rid[3:0];
  assign S_AXI_rlast = M_AXI_rlast;
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=23,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=13,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   ();

  wire [3:0]dpu_concat_irq_dout;
  wire hier_dpu_GHP_CLK_O;
  wire [3:0]hier_dpu_INTR;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP0_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP0_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP0_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP0_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP0_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP0_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_BID;
  wire hier_dpu_M_AXI_HP0_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_BRESP;
  wire hier_dpu_M_AXI_HP0_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_RID;
  wire hier_dpu_M_AXI_HP0_FPD_RLAST;
  wire hier_dpu_M_AXI_HP0_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_RRESP;
  wire hier_dpu_M_AXI_HP0_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_WDATA;
  wire hier_dpu_M_AXI_HP0_FPD_WLAST;
  wire hier_dpu_M_AXI_HP0_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP0_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP0_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP1_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP1_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP1_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP1_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP1_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP1_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_BID;
  wire hier_dpu_M_AXI_HP1_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_BRESP;
  wire hier_dpu_M_AXI_HP1_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_RID;
  wire hier_dpu_M_AXI_HP1_FPD_RLAST;
  wire hier_dpu_M_AXI_HP1_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_RRESP;
  wire hier_dpu_M_AXI_HP1_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_WDATA;
  wire hier_dpu_M_AXI_HP1_FPD_WLAST;
  wire hier_dpu_M_AXI_HP1_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP1_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP1_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HP2_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP2_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP2_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP2_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP2_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP2_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP2_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP2_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP2_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP2_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP2_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP2_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP2_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP2_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP2_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP2_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP2_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP2_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP2_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP2_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP2_FPD_BID;
  wire hier_dpu_M_AXI_HP2_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_BRESP;
  wire hier_dpu_M_AXI_HP2_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP2_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP2_FPD_RID;
  wire hier_dpu_M_AXI_HP2_FPD_RLAST;
  wire hier_dpu_M_AXI_HP2_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP2_FPD_RRESP;
  wire hier_dpu_M_AXI_HP2_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP2_FPD_WDATA;
  wire hier_dpu_M_AXI_HP2_FPD_WLAST;
  wire hier_dpu_M_AXI_HP2_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP2_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP2_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HP3_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP3_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP3_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP3_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP3_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP3_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP3_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP3_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP3_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP3_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP3_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP3_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP3_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP3_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP3_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP3_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP3_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP3_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP3_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP3_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP3_FPD_BID;
  wire hier_dpu_M_AXI_HP3_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_BRESP;
  wire hier_dpu_M_AXI_HP3_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP3_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP3_FPD_RID;
  wire hier_dpu_M_AXI_HP3_FPD_RLAST;
  wire hier_dpu_M_AXI_HP3_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP3_FPD_RRESP;
  wire hier_dpu_M_AXI_HP3_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP3_FPD_WDATA;
  wire hier_dpu_M_AXI_HP3_FPD_WLAST;
  wire hier_dpu_M_AXI_HP3_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP3_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP3_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HPC0_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HPC0_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HPC0_FPD_ARLEN;
  wire hier_dpu_M_AXI_HPC0_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HPC0_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HPC0_FPD_ARQOS;
  wire hier_dpu_M_AXI_HPC0_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HPC0_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HPC0_FPD_ARUSER;
  wire hier_dpu_M_AXI_HPC0_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HPC0_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HPC0_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HPC0_FPD_AWLEN;
  wire hier_dpu_M_AXI_HPC0_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HPC0_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HPC0_FPD_AWQOS;
  wire hier_dpu_M_AXI_HPC0_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HPC0_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HPC0_FPD_AWUSER;
  wire hier_dpu_M_AXI_HPC0_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HPC0_FPD_BID;
  wire hier_dpu_M_AXI_HPC0_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_BRESP;
  wire hier_dpu_M_AXI_HPC0_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HPC0_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HPC0_FPD_RID;
  wire hier_dpu_M_AXI_HPC0_FPD_RLAST;
  wire hier_dpu_M_AXI_HPC0_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HPC0_FPD_RRESP;
  wire hier_dpu_M_AXI_HPC0_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HPC0_FPD_WDATA;
  wire hier_dpu_M_AXI_HPC0_FPD_WLAST;
  wire hier_dpu_M_AXI_HPC0_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HPC0_FPD_WSTRB;
  wire hier_dpu_M_AXI_HPC0_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HPC1_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HPC1_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HPC1_FPD_ARCACHE;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HPC1_FPD_ARLEN;
  wire hier_dpu_M_AXI_HPC1_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HPC1_FPD_ARQOS;
  wire hier_dpu_M_AXI_HPC1_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HPC1_FPD_ARUSER;
  wire hier_dpu_M_AXI_HPC1_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HPC1_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HPC1_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HPC1_FPD_AWCACHE;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HPC1_FPD_AWLEN;
  wire hier_dpu_M_AXI_HPC1_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HPC1_FPD_AWQOS;
  wire hier_dpu_M_AXI_HPC1_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HPC1_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HPC1_FPD_AWUSER;
  wire hier_dpu_M_AXI_HPC1_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HPC1_FPD_BID;
  wire hier_dpu_M_AXI_HPC1_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HPC1_FPD_BRESP;
  wire hier_dpu_M_AXI_HPC1_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HPC1_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HPC1_FPD_RID;
  wire hier_dpu_M_AXI_HPC1_FPD_RLAST;
  wire hier_dpu_M_AXI_HPC1_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HPC1_FPD_RRESP;
  wire hier_dpu_M_AXI_HPC1_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HPC1_FPD_WDATA;
  wire hier_dpu_M_AXI_HPC1_FPD_WLAST;
  wire hier_dpu_M_AXI_HPC1_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HPC1_FPD_WSTRB;
  wire hier_dpu_M_AXI_HPC1_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_ARCACHE;
  wire [3:0]hier_dpu_M_AXI_LPD_ARID;
  wire [7:0]hier_dpu_M_AXI_LPD_ARLEN;
  wire hier_dpu_M_AXI_LPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_ARQOS;
  wire hier_dpu_M_AXI_LPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_ARSIZE;
  wire hier_dpu_M_AXI_LPD_ARUSER;
  wire hier_dpu_M_AXI_LPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_AWCACHE;
  wire [3:0]hier_dpu_M_AXI_LPD_AWID;
  wire [7:0]hier_dpu_M_AXI_LPD_AWLEN;
  wire hier_dpu_M_AXI_LPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_AWQOS;
  wire hier_dpu_M_AXI_LPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_AWSIZE;
  wire hier_dpu_M_AXI_LPD_AWUSER;
  wire hier_dpu_M_AXI_LPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_LPD_BID;
  wire hier_dpu_M_AXI_LPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_BRESP;
  wire hier_dpu_M_AXI_LPD_BVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_LPD_RID;
  wire hier_dpu_M_AXI_LPD_RLAST;
  wire hier_dpu_M_AXI_LPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_RRESP;
  wire hier_dpu_M_AXI_LPD_RVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_WDATA;
  wire hier_dpu_M_AXI_LPD_WLAST;
  wire hier_dpu_M_AXI_LPD_WREADY;
  wire [3:0]hier_dpu_M_AXI_LPD_WSTRB;
  wire hier_dpu_M_AXI_LPD_WVALID;
  wire [0:0]rst_gen_reg_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_pl_clk0;
  wire zynq_ultra_ps_e_pl_resetn0;

  top_dpu_concat_irq_0 dpu_concat_irq
       (.In0(hier_dpu_INTR),
        .dout(dpu_concat_irq_dout));
  hier_dpu_imp_CAA3KC hier_dpu
       (.CLK(zynq_ultra_ps_e_pl_clk0),
        .GHP_CLK_O(hier_dpu_GHP_CLK_O),
        .INTR(hier_dpu_INTR),
        .M_AXI_HP0_FPD_araddr(hier_dpu_M_AXI_HP0_FPD_ARADDR),
        .M_AXI_HP0_FPD_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .M_AXI_HP0_FPD_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .M_AXI_HP0_FPD_arid(hier_dpu_M_AXI_HP0_FPD_ARID),
        .M_AXI_HP0_FPD_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .M_AXI_HP0_FPD_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .M_AXI_HP0_FPD_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .M_AXI_HP0_FPD_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .M_AXI_HP0_FPD_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .M_AXI_HP0_FPD_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .M_AXI_HP0_FPD_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .M_AXI_HP0_FPD_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .M_AXI_HP0_FPD_awaddr(hier_dpu_M_AXI_HP0_FPD_AWADDR),
        .M_AXI_HP0_FPD_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .M_AXI_HP0_FPD_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .M_AXI_HP0_FPD_awid(hier_dpu_M_AXI_HP0_FPD_AWID),
        .M_AXI_HP0_FPD_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .M_AXI_HP0_FPD_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .M_AXI_HP0_FPD_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .M_AXI_HP0_FPD_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .M_AXI_HP0_FPD_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .M_AXI_HP0_FPD_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .M_AXI_HP0_FPD_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .M_AXI_HP0_FPD_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .M_AXI_HP0_FPD_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .M_AXI_HP0_FPD_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .M_AXI_HP0_FPD_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .M_AXI_HP0_FPD_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .M_AXI_HP0_FPD_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .M_AXI_HP0_FPD_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .M_AXI_HP0_FPD_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .M_AXI_HP0_FPD_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .M_AXI_HP0_FPD_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .M_AXI_HP0_FPD_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .M_AXI_HP0_FPD_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .M_AXI_HP0_FPD_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .M_AXI_HP0_FPD_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .M_AXI_HP0_FPD_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .M_AXI_HP0_FPD_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .M_AXI_HP1_FPD_araddr(hier_dpu_M_AXI_HP1_FPD_ARADDR),
        .M_AXI_HP1_FPD_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .M_AXI_HP1_FPD_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .M_AXI_HP1_FPD_arid(hier_dpu_M_AXI_HP1_FPD_ARID),
        .M_AXI_HP1_FPD_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .M_AXI_HP1_FPD_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .M_AXI_HP1_FPD_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .M_AXI_HP1_FPD_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .M_AXI_HP1_FPD_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .M_AXI_HP1_FPD_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .M_AXI_HP1_FPD_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .M_AXI_HP1_FPD_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .M_AXI_HP1_FPD_awaddr(hier_dpu_M_AXI_HP1_FPD_AWADDR),
        .M_AXI_HP1_FPD_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .M_AXI_HP1_FPD_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .M_AXI_HP1_FPD_awid(hier_dpu_M_AXI_HP1_FPD_AWID),
        .M_AXI_HP1_FPD_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .M_AXI_HP1_FPD_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .M_AXI_HP1_FPD_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .M_AXI_HP1_FPD_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .M_AXI_HP1_FPD_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .M_AXI_HP1_FPD_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .M_AXI_HP1_FPD_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .M_AXI_HP1_FPD_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .M_AXI_HP1_FPD_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .M_AXI_HP1_FPD_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .M_AXI_HP1_FPD_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .M_AXI_HP1_FPD_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .M_AXI_HP1_FPD_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .M_AXI_HP1_FPD_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .M_AXI_HP1_FPD_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .M_AXI_HP1_FPD_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .M_AXI_HP1_FPD_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .M_AXI_HP1_FPD_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .M_AXI_HP1_FPD_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .M_AXI_HP1_FPD_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .M_AXI_HP1_FPD_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .M_AXI_HP1_FPD_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .M_AXI_HP1_FPD_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .M_AXI_HP2_FPD_araddr(hier_dpu_M_AXI_HP2_FPD_ARADDR),
        .M_AXI_HP2_FPD_arburst(hier_dpu_M_AXI_HP2_FPD_ARBURST),
        .M_AXI_HP2_FPD_arcache(hier_dpu_M_AXI_HP2_FPD_ARCACHE),
        .M_AXI_HP2_FPD_arid(hier_dpu_M_AXI_HP2_FPD_ARID),
        .M_AXI_HP2_FPD_arlen(hier_dpu_M_AXI_HP2_FPD_ARLEN),
        .M_AXI_HP2_FPD_arlock(hier_dpu_M_AXI_HP2_FPD_ARLOCK),
        .M_AXI_HP2_FPD_arprot(hier_dpu_M_AXI_HP2_FPD_ARPROT),
        .M_AXI_HP2_FPD_arqos(hier_dpu_M_AXI_HP2_FPD_ARQOS),
        .M_AXI_HP2_FPD_arready(hier_dpu_M_AXI_HP2_FPD_ARREADY),
        .M_AXI_HP2_FPD_arsize(hier_dpu_M_AXI_HP2_FPD_ARSIZE),
        .M_AXI_HP2_FPD_aruser(hier_dpu_M_AXI_HP2_FPD_ARUSER),
        .M_AXI_HP2_FPD_arvalid(hier_dpu_M_AXI_HP2_FPD_ARVALID),
        .M_AXI_HP2_FPD_awaddr(hier_dpu_M_AXI_HP2_FPD_AWADDR),
        .M_AXI_HP2_FPD_awburst(hier_dpu_M_AXI_HP2_FPD_AWBURST),
        .M_AXI_HP2_FPD_awcache(hier_dpu_M_AXI_HP2_FPD_AWCACHE),
        .M_AXI_HP2_FPD_awid(hier_dpu_M_AXI_HP2_FPD_AWID),
        .M_AXI_HP2_FPD_awlen(hier_dpu_M_AXI_HP2_FPD_AWLEN),
        .M_AXI_HP2_FPD_awlock(hier_dpu_M_AXI_HP2_FPD_AWLOCK),
        .M_AXI_HP2_FPD_awprot(hier_dpu_M_AXI_HP2_FPD_AWPROT),
        .M_AXI_HP2_FPD_awqos(hier_dpu_M_AXI_HP2_FPD_AWQOS),
        .M_AXI_HP2_FPD_awready(hier_dpu_M_AXI_HP2_FPD_AWREADY),
        .M_AXI_HP2_FPD_awsize(hier_dpu_M_AXI_HP2_FPD_AWSIZE),
        .M_AXI_HP2_FPD_awuser(hier_dpu_M_AXI_HP2_FPD_AWUSER),
        .M_AXI_HP2_FPD_awvalid(hier_dpu_M_AXI_HP2_FPD_AWVALID),
        .M_AXI_HP2_FPD_bid(hier_dpu_M_AXI_HP2_FPD_BID),
        .M_AXI_HP2_FPD_bready(hier_dpu_M_AXI_HP2_FPD_BREADY),
        .M_AXI_HP2_FPD_bresp(hier_dpu_M_AXI_HP2_FPD_BRESP),
        .M_AXI_HP2_FPD_bvalid(hier_dpu_M_AXI_HP2_FPD_BVALID),
        .M_AXI_HP2_FPD_rdata(hier_dpu_M_AXI_HP2_FPD_RDATA),
        .M_AXI_HP2_FPD_rid(hier_dpu_M_AXI_HP2_FPD_RID),
        .M_AXI_HP2_FPD_rlast(hier_dpu_M_AXI_HP2_FPD_RLAST),
        .M_AXI_HP2_FPD_rready(hier_dpu_M_AXI_HP2_FPD_RREADY),
        .M_AXI_HP2_FPD_rresp(hier_dpu_M_AXI_HP2_FPD_RRESP),
        .M_AXI_HP2_FPD_rvalid(hier_dpu_M_AXI_HP2_FPD_RVALID),
        .M_AXI_HP2_FPD_wdata(hier_dpu_M_AXI_HP2_FPD_WDATA),
        .M_AXI_HP2_FPD_wlast(hier_dpu_M_AXI_HP2_FPD_WLAST),
        .M_AXI_HP2_FPD_wready(hier_dpu_M_AXI_HP2_FPD_WREADY),
        .M_AXI_HP2_FPD_wstrb(hier_dpu_M_AXI_HP2_FPD_WSTRB),
        .M_AXI_HP2_FPD_wvalid(hier_dpu_M_AXI_HP2_FPD_WVALID),
        .M_AXI_HP3_FPD_araddr(hier_dpu_M_AXI_HP3_FPD_ARADDR),
        .M_AXI_HP3_FPD_arburst(hier_dpu_M_AXI_HP3_FPD_ARBURST),
        .M_AXI_HP3_FPD_arcache(hier_dpu_M_AXI_HP3_FPD_ARCACHE),
        .M_AXI_HP3_FPD_arid(hier_dpu_M_AXI_HP3_FPD_ARID),
        .M_AXI_HP3_FPD_arlen(hier_dpu_M_AXI_HP3_FPD_ARLEN),
        .M_AXI_HP3_FPD_arlock(hier_dpu_M_AXI_HP3_FPD_ARLOCK),
        .M_AXI_HP3_FPD_arprot(hier_dpu_M_AXI_HP3_FPD_ARPROT),
        .M_AXI_HP3_FPD_arqos(hier_dpu_M_AXI_HP3_FPD_ARQOS),
        .M_AXI_HP3_FPD_arready(hier_dpu_M_AXI_HP3_FPD_ARREADY),
        .M_AXI_HP3_FPD_arsize(hier_dpu_M_AXI_HP3_FPD_ARSIZE),
        .M_AXI_HP3_FPD_aruser(hier_dpu_M_AXI_HP3_FPD_ARUSER),
        .M_AXI_HP3_FPD_arvalid(hier_dpu_M_AXI_HP3_FPD_ARVALID),
        .M_AXI_HP3_FPD_awaddr(hier_dpu_M_AXI_HP3_FPD_AWADDR),
        .M_AXI_HP3_FPD_awburst(hier_dpu_M_AXI_HP3_FPD_AWBURST),
        .M_AXI_HP3_FPD_awcache(hier_dpu_M_AXI_HP3_FPD_AWCACHE),
        .M_AXI_HP3_FPD_awid(hier_dpu_M_AXI_HP3_FPD_AWID),
        .M_AXI_HP3_FPD_awlen(hier_dpu_M_AXI_HP3_FPD_AWLEN),
        .M_AXI_HP3_FPD_awlock(hier_dpu_M_AXI_HP3_FPD_AWLOCK),
        .M_AXI_HP3_FPD_awprot(hier_dpu_M_AXI_HP3_FPD_AWPROT),
        .M_AXI_HP3_FPD_awqos(hier_dpu_M_AXI_HP3_FPD_AWQOS),
        .M_AXI_HP3_FPD_awready(hier_dpu_M_AXI_HP3_FPD_AWREADY),
        .M_AXI_HP3_FPD_awsize(hier_dpu_M_AXI_HP3_FPD_AWSIZE),
        .M_AXI_HP3_FPD_awuser(hier_dpu_M_AXI_HP3_FPD_AWUSER),
        .M_AXI_HP3_FPD_awvalid(hier_dpu_M_AXI_HP3_FPD_AWVALID),
        .M_AXI_HP3_FPD_bid(hier_dpu_M_AXI_HP3_FPD_BID),
        .M_AXI_HP3_FPD_bready(hier_dpu_M_AXI_HP3_FPD_BREADY),
        .M_AXI_HP3_FPD_bresp(hier_dpu_M_AXI_HP3_FPD_BRESP),
        .M_AXI_HP3_FPD_bvalid(hier_dpu_M_AXI_HP3_FPD_BVALID),
        .M_AXI_HP3_FPD_rdata(hier_dpu_M_AXI_HP3_FPD_RDATA),
        .M_AXI_HP3_FPD_rid(hier_dpu_M_AXI_HP3_FPD_RID),
        .M_AXI_HP3_FPD_rlast(hier_dpu_M_AXI_HP3_FPD_RLAST),
        .M_AXI_HP3_FPD_rready(hier_dpu_M_AXI_HP3_FPD_RREADY),
        .M_AXI_HP3_FPD_rresp(hier_dpu_M_AXI_HP3_FPD_RRESP),
        .M_AXI_HP3_FPD_rvalid(hier_dpu_M_AXI_HP3_FPD_RVALID),
        .M_AXI_HP3_FPD_wdata(hier_dpu_M_AXI_HP3_FPD_WDATA),
        .M_AXI_HP3_FPD_wlast(hier_dpu_M_AXI_HP3_FPD_WLAST),
        .M_AXI_HP3_FPD_wready(hier_dpu_M_AXI_HP3_FPD_WREADY),
        .M_AXI_HP3_FPD_wstrb(hier_dpu_M_AXI_HP3_FPD_WSTRB),
        .M_AXI_HP3_FPD_wvalid(hier_dpu_M_AXI_HP3_FPD_WVALID),
        .M_AXI_HPC0_FPD_araddr(hier_dpu_M_AXI_HPC0_FPD_ARADDR),
        .M_AXI_HPC0_FPD_arburst(hier_dpu_M_AXI_HPC0_FPD_ARBURST),
        .M_AXI_HPC0_FPD_arcache(hier_dpu_M_AXI_HPC0_FPD_ARCACHE),
        .M_AXI_HPC0_FPD_arid(hier_dpu_M_AXI_HPC0_FPD_ARID),
        .M_AXI_HPC0_FPD_arlen(hier_dpu_M_AXI_HPC0_FPD_ARLEN),
        .M_AXI_HPC0_FPD_arlock(hier_dpu_M_AXI_HPC0_FPD_ARLOCK),
        .M_AXI_HPC0_FPD_arprot(hier_dpu_M_AXI_HPC0_FPD_ARPROT),
        .M_AXI_HPC0_FPD_arqos(hier_dpu_M_AXI_HPC0_FPD_ARQOS),
        .M_AXI_HPC0_FPD_arready(hier_dpu_M_AXI_HPC0_FPD_ARREADY),
        .M_AXI_HPC0_FPD_arsize(hier_dpu_M_AXI_HPC0_FPD_ARSIZE),
        .M_AXI_HPC0_FPD_aruser(hier_dpu_M_AXI_HPC0_FPD_ARUSER),
        .M_AXI_HPC0_FPD_arvalid(hier_dpu_M_AXI_HPC0_FPD_ARVALID),
        .M_AXI_HPC0_FPD_awaddr(hier_dpu_M_AXI_HPC0_FPD_AWADDR),
        .M_AXI_HPC0_FPD_awburst(hier_dpu_M_AXI_HPC0_FPD_AWBURST),
        .M_AXI_HPC0_FPD_awcache(hier_dpu_M_AXI_HPC0_FPD_AWCACHE),
        .M_AXI_HPC0_FPD_awid(hier_dpu_M_AXI_HPC0_FPD_AWID),
        .M_AXI_HPC0_FPD_awlen(hier_dpu_M_AXI_HPC0_FPD_AWLEN),
        .M_AXI_HPC0_FPD_awlock(hier_dpu_M_AXI_HPC0_FPD_AWLOCK),
        .M_AXI_HPC0_FPD_awprot(hier_dpu_M_AXI_HPC0_FPD_AWPROT),
        .M_AXI_HPC0_FPD_awqos(hier_dpu_M_AXI_HPC0_FPD_AWQOS),
        .M_AXI_HPC0_FPD_awready(hier_dpu_M_AXI_HPC0_FPD_AWREADY),
        .M_AXI_HPC0_FPD_awsize(hier_dpu_M_AXI_HPC0_FPD_AWSIZE),
        .M_AXI_HPC0_FPD_awuser(hier_dpu_M_AXI_HPC0_FPD_AWUSER),
        .M_AXI_HPC0_FPD_awvalid(hier_dpu_M_AXI_HPC0_FPD_AWVALID),
        .M_AXI_HPC0_FPD_bid(hier_dpu_M_AXI_HPC0_FPD_BID),
        .M_AXI_HPC0_FPD_bready(hier_dpu_M_AXI_HPC0_FPD_BREADY),
        .M_AXI_HPC0_FPD_bresp(hier_dpu_M_AXI_HPC0_FPD_BRESP),
        .M_AXI_HPC0_FPD_bvalid(hier_dpu_M_AXI_HPC0_FPD_BVALID),
        .M_AXI_HPC0_FPD_rdata(hier_dpu_M_AXI_HPC0_FPD_RDATA),
        .M_AXI_HPC0_FPD_rid(hier_dpu_M_AXI_HPC0_FPD_RID),
        .M_AXI_HPC0_FPD_rlast(hier_dpu_M_AXI_HPC0_FPD_RLAST),
        .M_AXI_HPC0_FPD_rready(hier_dpu_M_AXI_HPC0_FPD_RREADY),
        .M_AXI_HPC0_FPD_rresp(hier_dpu_M_AXI_HPC0_FPD_RRESP),
        .M_AXI_HPC0_FPD_rvalid(hier_dpu_M_AXI_HPC0_FPD_RVALID),
        .M_AXI_HPC0_FPD_wdata(hier_dpu_M_AXI_HPC0_FPD_WDATA),
        .M_AXI_HPC0_FPD_wlast(hier_dpu_M_AXI_HPC0_FPD_WLAST),
        .M_AXI_HPC0_FPD_wready(hier_dpu_M_AXI_HPC0_FPD_WREADY),
        .M_AXI_HPC0_FPD_wstrb(hier_dpu_M_AXI_HPC0_FPD_WSTRB),
        .M_AXI_HPC0_FPD_wvalid(hier_dpu_M_AXI_HPC0_FPD_WVALID),
        .M_AXI_HPC1_FPD_araddr(hier_dpu_M_AXI_HPC1_FPD_ARADDR),
        .M_AXI_HPC1_FPD_arburst(hier_dpu_M_AXI_HPC1_FPD_ARBURST),
        .M_AXI_HPC1_FPD_arcache(hier_dpu_M_AXI_HPC1_FPD_ARCACHE),
        .M_AXI_HPC1_FPD_arid(hier_dpu_M_AXI_HPC1_FPD_ARID),
        .M_AXI_HPC1_FPD_arlen(hier_dpu_M_AXI_HPC1_FPD_ARLEN),
        .M_AXI_HPC1_FPD_arlock(hier_dpu_M_AXI_HPC1_FPD_ARLOCK),
        .M_AXI_HPC1_FPD_arprot(hier_dpu_M_AXI_HPC1_FPD_ARPROT),
        .M_AXI_HPC1_FPD_arqos(hier_dpu_M_AXI_HPC1_FPD_ARQOS),
        .M_AXI_HPC1_FPD_arready(hier_dpu_M_AXI_HPC1_FPD_ARREADY),
        .M_AXI_HPC1_FPD_arsize(hier_dpu_M_AXI_HPC1_FPD_ARSIZE),
        .M_AXI_HPC1_FPD_aruser(hier_dpu_M_AXI_HPC1_FPD_ARUSER),
        .M_AXI_HPC1_FPD_arvalid(hier_dpu_M_AXI_HPC1_FPD_ARVALID),
        .M_AXI_HPC1_FPD_awaddr(hier_dpu_M_AXI_HPC1_FPD_AWADDR),
        .M_AXI_HPC1_FPD_awburst(hier_dpu_M_AXI_HPC1_FPD_AWBURST),
        .M_AXI_HPC1_FPD_awcache(hier_dpu_M_AXI_HPC1_FPD_AWCACHE),
        .M_AXI_HPC1_FPD_awid(hier_dpu_M_AXI_HPC1_FPD_AWID),
        .M_AXI_HPC1_FPD_awlen(hier_dpu_M_AXI_HPC1_FPD_AWLEN),
        .M_AXI_HPC1_FPD_awlock(hier_dpu_M_AXI_HPC1_FPD_AWLOCK),
        .M_AXI_HPC1_FPD_awprot(hier_dpu_M_AXI_HPC1_FPD_AWPROT),
        .M_AXI_HPC1_FPD_awqos(hier_dpu_M_AXI_HPC1_FPD_AWQOS),
        .M_AXI_HPC1_FPD_awready(hier_dpu_M_AXI_HPC1_FPD_AWREADY),
        .M_AXI_HPC1_FPD_awsize(hier_dpu_M_AXI_HPC1_FPD_AWSIZE),
        .M_AXI_HPC1_FPD_awuser(hier_dpu_M_AXI_HPC1_FPD_AWUSER),
        .M_AXI_HPC1_FPD_awvalid(hier_dpu_M_AXI_HPC1_FPD_AWVALID),
        .M_AXI_HPC1_FPD_bid(hier_dpu_M_AXI_HPC1_FPD_BID),
        .M_AXI_HPC1_FPD_bready(hier_dpu_M_AXI_HPC1_FPD_BREADY),
        .M_AXI_HPC1_FPD_bresp(hier_dpu_M_AXI_HPC1_FPD_BRESP),
        .M_AXI_HPC1_FPD_bvalid(hier_dpu_M_AXI_HPC1_FPD_BVALID),
        .M_AXI_HPC1_FPD_rdata(hier_dpu_M_AXI_HPC1_FPD_RDATA),
        .M_AXI_HPC1_FPD_rid(hier_dpu_M_AXI_HPC1_FPD_RID),
        .M_AXI_HPC1_FPD_rlast(hier_dpu_M_AXI_HPC1_FPD_RLAST),
        .M_AXI_HPC1_FPD_rready(hier_dpu_M_AXI_HPC1_FPD_RREADY),
        .M_AXI_HPC1_FPD_rresp(hier_dpu_M_AXI_HPC1_FPD_RRESP),
        .M_AXI_HPC1_FPD_rvalid(hier_dpu_M_AXI_HPC1_FPD_RVALID),
        .M_AXI_HPC1_FPD_wdata(hier_dpu_M_AXI_HPC1_FPD_WDATA),
        .M_AXI_HPC1_FPD_wlast(hier_dpu_M_AXI_HPC1_FPD_WLAST),
        .M_AXI_HPC1_FPD_wready(hier_dpu_M_AXI_HPC1_FPD_WREADY),
        .M_AXI_HPC1_FPD_wstrb(hier_dpu_M_AXI_HPC1_FPD_WSTRB),
        .M_AXI_HPC1_FPD_wvalid(hier_dpu_M_AXI_HPC1_FPD_WVALID),
        .M_AXI_LPD_araddr(hier_dpu_M_AXI_LPD_ARADDR),
        .M_AXI_LPD_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .M_AXI_LPD_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .M_AXI_LPD_arid(hier_dpu_M_AXI_LPD_ARID),
        .M_AXI_LPD_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .M_AXI_LPD_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .M_AXI_LPD_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .M_AXI_LPD_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .M_AXI_LPD_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .M_AXI_LPD_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .M_AXI_LPD_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .M_AXI_LPD_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .M_AXI_LPD_awaddr(hier_dpu_M_AXI_LPD_AWADDR),
        .M_AXI_LPD_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .M_AXI_LPD_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .M_AXI_LPD_awid(hier_dpu_M_AXI_LPD_AWID),
        .M_AXI_LPD_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .M_AXI_LPD_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .M_AXI_LPD_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .M_AXI_LPD_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .M_AXI_LPD_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .M_AXI_LPD_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .M_AXI_LPD_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .M_AXI_LPD_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .M_AXI_LPD_bid(hier_dpu_M_AXI_LPD_BID),
        .M_AXI_LPD_bready(hier_dpu_M_AXI_LPD_BREADY),
        .M_AXI_LPD_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .M_AXI_LPD_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .M_AXI_LPD_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .M_AXI_LPD_rid(hier_dpu_M_AXI_LPD_RID),
        .M_AXI_LPD_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .M_AXI_LPD_rready(hier_dpu_M_AXI_LPD_RREADY),
        .M_AXI_LPD_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .M_AXI_LPD_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .M_AXI_LPD_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .M_AXI_LPD_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .M_AXI_LPD_wready(hier_dpu_M_AXI_LPD_WREADY),
        .M_AXI_LPD_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .M_AXI_LPD_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_CLK(zynq_ultra_ps_e_pl_clk0),
        .S_AXI_RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .S_AXI_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .S_AXI_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .S_AXI_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .S_AXI_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .S_AXI_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .S_AXI_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .S_AXI_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .S_AXI_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .S_AXI_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .S_AXI_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .S_AXI_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .S_AXI_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .S_AXI_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .S_AXI_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .S_AXI_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .S_AXI_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .S_AXI_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .S_AXI_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .S_AXI_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .S_AXI_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .S_AXI_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .S_AXI_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .S_AXI_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .S_AXI_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .S_AXI_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .S_AXI_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .S_AXI_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .S_AXI_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .S_AXI_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .S_AXI_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .S_AXI_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .S_AXI_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .S_AXI_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .S_AXI_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .S_AXI_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .S_AXI_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .S_AXI_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .S_AXI_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID));
  top_rst_gen_reg_0 rst_gen_reg
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_reg_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_pl_clk0));
  top_zynq_ultra_ps_e_0 zynq_ultra_ps_e
       (.maxigp2_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_pl_clk0),
        .pl_ps_irq0(dpu_concat_irq_dout),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_pl_resetn0),
        .saxi_lpd_aclk(hier_dpu_GHP_CLK_O),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC0_FPD_ARADDR}),
        .saxigp0_arburst(hier_dpu_M_AXI_HPC0_FPD_ARBURST),
        .saxigp0_arcache(hier_dpu_M_AXI_HPC0_FPD_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC0_FPD_ARID}),
        .saxigp0_arlen(hier_dpu_M_AXI_HPC0_FPD_ARLEN),
        .saxigp0_arlock(hier_dpu_M_AXI_HPC0_FPD_ARLOCK),
        .saxigp0_arprot(hier_dpu_M_AXI_HPC0_FPD_ARPROT),
        .saxigp0_arqos(hier_dpu_M_AXI_HPC0_FPD_ARQOS),
        .saxigp0_arready(hier_dpu_M_AXI_HPC0_FPD_ARREADY),
        .saxigp0_arsize(hier_dpu_M_AXI_HPC0_FPD_ARSIZE),
        .saxigp0_aruser(hier_dpu_M_AXI_HPC0_FPD_ARUSER),
        .saxigp0_arvalid(hier_dpu_M_AXI_HPC0_FPD_ARVALID),
        .saxigp0_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC0_FPD_AWADDR}),
        .saxigp0_awburst(hier_dpu_M_AXI_HPC0_FPD_AWBURST),
        .saxigp0_awcache(hier_dpu_M_AXI_HPC0_FPD_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC0_FPD_AWID}),
        .saxigp0_awlen(hier_dpu_M_AXI_HPC0_FPD_AWLEN),
        .saxigp0_awlock(hier_dpu_M_AXI_HPC0_FPD_AWLOCK),
        .saxigp0_awprot(hier_dpu_M_AXI_HPC0_FPD_AWPROT),
        .saxigp0_awqos(hier_dpu_M_AXI_HPC0_FPD_AWQOS),
        .saxigp0_awready(hier_dpu_M_AXI_HPC0_FPD_AWREADY),
        .saxigp0_awsize(hier_dpu_M_AXI_HPC0_FPD_AWSIZE),
        .saxigp0_awuser(hier_dpu_M_AXI_HPC0_FPD_AWUSER),
        .saxigp0_awvalid(hier_dpu_M_AXI_HPC0_FPD_AWVALID),
        .saxigp0_bid(hier_dpu_M_AXI_HPC0_FPD_BID),
        .saxigp0_bready(hier_dpu_M_AXI_HPC0_FPD_BREADY),
        .saxigp0_bresp(hier_dpu_M_AXI_HPC0_FPD_BRESP),
        .saxigp0_bvalid(hier_dpu_M_AXI_HPC0_FPD_BVALID),
        .saxigp0_rdata(hier_dpu_M_AXI_HPC0_FPD_RDATA),
        .saxigp0_rid(hier_dpu_M_AXI_HPC0_FPD_RID),
        .saxigp0_rlast(hier_dpu_M_AXI_HPC0_FPD_RLAST),
        .saxigp0_rready(hier_dpu_M_AXI_HPC0_FPD_RREADY),
        .saxigp0_rresp(hier_dpu_M_AXI_HPC0_FPD_RRESP),
        .saxigp0_rvalid(hier_dpu_M_AXI_HPC0_FPD_RVALID),
        .saxigp0_wdata(hier_dpu_M_AXI_HPC0_FPD_WDATA),
        .saxigp0_wlast(hier_dpu_M_AXI_HPC0_FPD_WLAST),
        .saxigp0_wready(hier_dpu_M_AXI_HPC0_FPD_WREADY),
        .saxigp0_wstrb(hier_dpu_M_AXI_HPC0_FPD_WSTRB),
        .saxigp0_wvalid(hier_dpu_M_AXI_HPC0_FPD_WVALID),
        .saxigp1_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC1_FPD_ARADDR}),
        .saxigp1_arburst(hier_dpu_M_AXI_HPC1_FPD_ARBURST),
        .saxigp1_arcache(hier_dpu_M_AXI_HPC1_FPD_ARCACHE),
        .saxigp1_arid({1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC1_FPD_ARID}),
        .saxigp1_arlen(hier_dpu_M_AXI_HPC1_FPD_ARLEN),
        .saxigp1_arlock(hier_dpu_M_AXI_HPC1_FPD_ARLOCK),
        .saxigp1_arprot(hier_dpu_M_AXI_HPC1_FPD_ARPROT),
        .saxigp1_arqos(hier_dpu_M_AXI_HPC1_FPD_ARQOS),
        .saxigp1_arready(hier_dpu_M_AXI_HPC1_FPD_ARREADY),
        .saxigp1_arsize(hier_dpu_M_AXI_HPC1_FPD_ARSIZE),
        .saxigp1_aruser(hier_dpu_M_AXI_HPC1_FPD_ARUSER),
        .saxigp1_arvalid(hier_dpu_M_AXI_HPC1_FPD_ARVALID),
        .saxigp1_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC1_FPD_AWADDR}),
        .saxigp1_awburst(hier_dpu_M_AXI_HPC1_FPD_AWBURST),
        .saxigp1_awcache(hier_dpu_M_AXI_HPC1_FPD_AWCACHE),
        .saxigp1_awid({1'b0,1'b0,1'b0,hier_dpu_M_AXI_HPC1_FPD_AWID}),
        .saxigp1_awlen(hier_dpu_M_AXI_HPC1_FPD_AWLEN),
        .saxigp1_awlock(hier_dpu_M_AXI_HPC1_FPD_AWLOCK),
        .saxigp1_awprot(hier_dpu_M_AXI_HPC1_FPD_AWPROT),
        .saxigp1_awqos(hier_dpu_M_AXI_HPC1_FPD_AWQOS),
        .saxigp1_awready(hier_dpu_M_AXI_HPC1_FPD_AWREADY),
        .saxigp1_awsize(hier_dpu_M_AXI_HPC1_FPD_AWSIZE),
        .saxigp1_awuser(hier_dpu_M_AXI_HPC1_FPD_AWUSER),
        .saxigp1_awvalid(hier_dpu_M_AXI_HPC1_FPD_AWVALID),
        .saxigp1_bid(hier_dpu_M_AXI_HPC1_FPD_BID),
        .saxigp1_bready(hier_dpu_M_AXI_HPC1_FPD_BREADY),
        .saxigp1_bresp(hier_dpu_M_AXI_HPC1_FPD_BRESP),
        .saxigp1_bvalid(hier_dpu_M_AXI_HPC1_FPD_BVALID),
        .saxigp1_rdata(hier_dpu_M_AXI_HPC1_FPD_RDATA),
        .saxigp1_rid(hier_dpu_M_AXI_HPC1_FPD_RID),
        .saxigp1_rlast(hier_dpu_M_AXI_HPC1_FPD_RLAST),
        .saxigp1_rready(hier_dpu_M_AXI_HPC1_FPD_RREADY),
        .saxigp1_rresp(hier_dpu_M_AXI_HPC1_FPD_RRESP),
        .saxigp1_rvalid(hier_dpu_M_AXI_HPC1_FPD_RVALID),
        .saxigp1_wdata(hier_dpu_M_AXI_HPC1_FPD_WDATA),
        .saxigp1_wlast(hier_dpu_M_AXI_HPC1_FPD_WLAST),
        .saxigp1_wready(hier_dpu_M_AXI_HPC1_FPD_WREADY),
        .saxigp1_wstrb(hier_dpu_M_AXI_HPC1_FPD_WSTRB),
        .saxigp1_wvalid(hier_dpu_M_AXI_HPC1_FPD_WVALID),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARADDR}),
        .saxigp2_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .saxigp2_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARID}),
        .saxigp2_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .saxigp2_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .saxigp2_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .saxigp2_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .saxigp2_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .saxigp2_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .saxigp2_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .saxigp2_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWADDR}),
        .saxigp2_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .saxigp2_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWID}),
        .saxigp2_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .saxigp2_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .saxigp2_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .saxigp2_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .saxigp2_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .saxigp2_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .saxigp2_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .saxigp2_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .saxigp2_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .saxigp2_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .saxigp2_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .saxigp2_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .saxigp2_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .saxigp2_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .saxigp2_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .saxigp2_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .saxigp2_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .saxigp2_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .saxigp2_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .saxigp2_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .saxigp2_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .saxigp2_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .saxigp2_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARADDR}),
        .saxigp3_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .saxigp3_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARID}),
        .saxigp3_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .saxigp3_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .saxigp3_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .saxigp3_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .saxigp3_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .saxigp3_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .saxigp3_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .saxigp3_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWADDR}),
        .saxigp3_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .saxigp3_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWID}),
        .saxigp3_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .saxigp3_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .saxigp3_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .saxigp3_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .saxigp3_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .saxigp3_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .saxigp3_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .saxigp3_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .saxigp3_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .saxigp3_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .saxigp3_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .saxigp3_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .saxigp3_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .saxigp3_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .saxigp3_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .saxigp3_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .saxigp3_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .saxigp3_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .saxigp3_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .saxigp3_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .saxigp3_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .saxigp3_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .saxigp3_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .saxigp4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP2_FPD_ARADDR}),
        .saxigp4_arburst(hier_dpu_M_AXI_HP2_FPD_ARBURST),
        .saxigp4_arcache(hier_dpu_M_AXI_HP2_FPD_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP2_FPD_ARID}),
        .saxigp4_arlen(hier_dpu_M_AXI_HP2_FPD_ARLEN),
        .saxigp4_arlock(hier_dpu_M_AXI_HP2_FPD_ARLOCK),
        .saxigp4_arprot(hier_dpu_M_AXI_HP2_FPD_ARPROT),
        .saxigp4_arqos(hier_dpu_M_AXI_HP2_FPD_ARQOS),
        .saxigp4_arready(hier_dpu_M_AXI_HP2_FPD_ARREADY),
        .saxigp4_arsize(hier_dpu_M_AXI_HP2_FPD_ARSIZE),
        .saxigp4_aruser(hier_dpu_M_AXI_HP2_FPD_ARUSER),
        .saxigp4_arvalid(hier_dpu_M_AXI_HP2_FPD_ARVALID),
        .saxigp4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP2_FPD_AWADDR}),
        .saxigp4_awburst(hier_dpu_M_AXI_HP2_FPD_AWBURST),
        .saxigp4_awcache(hier_dpu_M_AXI_HP2_FPD_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP2_FPD_AWID}),
        .saxigp4_awlen(hier_dpu_M_AXI_HP2_FPD_AWLEN),
        .saxigp4_awlock(hier_dpu_M_AXI_HP2_FPD_AWLOCK),
        .saxigp4_awprot(hier_dpu_M_AXI_HP2_FPD_AWPROT),
        .saxigp4_awqos(hier_dpu_M_AXI_HP2_FPD_AWQOS),
        .saxigp4_awready(hier_dpu_M_AXI_HP2_FPD_AWREADY),
        .saxigp4_awsize(hier_dpu_M_AXI_HP2_FPD_AWSIZE),
        .saxigp4_awuser(hier_dpu_M_AXI_HP2_FPD_AWUSER),
        .saxigp4_awvalid(hier_dpu_M_AXI_HP2_FPD_AWVALID),
        .saxigp4_bid(hier_dpu_M_AXI_HP2_FPD_BID),
        .saxigp4_bready(hier_dpu_M_AXI_HP2_FPD_BREADY),
        .saxigp4_bresp(hier_dpu_M_AXI_HP2_FPD_BRESP),
        .saxigp4_bvalid(hier_dpu_M_AXI_HP2_FPD_BVALID),
        .saxigp4_rdata(hier_dpu_M_AXI_HP2_FPD_RDATA),
        .saxigp4_rid(hier_dpu_M_AXI_HP2_FPD_RID),
        .saxigp4_rlast(hier_dpu_M_AXI_HP2_FPD_RLAST),
        .saxigp4_rready(hier_dpu_M_AXI_HP2_FPD_RREADY),
        .saxigp4_rresp(hier_dpu_M_AXI_HP2_FPD_RRESP),
        .saxigp4_rvalid(hier_dpu_M_AXI_HP2_FPD_RVALID),
        .saxigp4_wdata(hier_dpu_M_AXI_HP2_FPD_WDATA),
        .saxigp4_wlast(hier_dpu_M_AXI_HP2_FPD_WLAST),
        .saxigp4_wready(hier_dpu_M_AXI_HP2_FPD_WREADY),
        .saxigp4_wstrb(hier_dpu_M_AXI_HP2_FPD_WSTRB),
        .saxigp4_wvalid(hier_dpu_M_AXI_HP2_FPD_WVALID),
        .saxigp5_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP3_FPD_ARADDR}),
        .saxigp5_arburst(hier_dpu_M_AXI_HP3_FPD_ARBURST),
        .saxigp5_arcache(hier_dpu_M_AXI_HP3_FPD_ARCACHE),
        .saxigp5_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP3_FPD_ARID}),
        .saxigp5_arlen(hier_dpu_M_AXI_HP3_FPD_ARLEN),
        .saxigp5_arlock(hier_dpu_M_AXI_HP3_FPD_ARLOCK),
        .saxigp5_arprot(hier_dpu_M_AXI_HP3_FPD_ARPROT),
        .saxigp5_arqos(hier_dpu_M_AXI_HP3_FPD_ARQOS),
        .saxigp5_arready(hier_dpu_M_AXI_HP3_FPD_ARREADY),
        .saxigp5_arsize(hier_dpu_M_AXI_HP3_FPD_ARSIZE),
        .saxigp5_aruser(hier_dpu_M_AXI_HP3_FPD_ARUSER),
        .saxigp5_arvalid(hier_dpu_M_AXI_HP3_FPD_ARVALID),
        .saxigp5_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP3_FPD_AWADDR}),
        .saxigp5_awburst(hier_dpu_M_AXI_HP3_FPD_AWBURST),
        .saxigp5_awcache(hier_dpu_M_AXI_HP3_FPD_AWCACHE),
        .saxigp5_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP3_FPD_AWID}),
        .saxigp5_awlen(hier_dpu_M_AXI_HP3_FPD_AWLEN),
        .saxigp5_awlock(hier_dpu_M_AXI_HP3_FPD_AWLOCK),
        .saxigp5_awprot(hier_dpu_M_AXI_HP3_FPD_AWPROT),
        .saxigp5_awqos(hier_dpu_M_AXI_HP3_FPD_AWQOS),
        .saxigp5_awready(hier_dpu_M_AXI_HP3_FPD_AWREADY),
        .saxigp5_awsize(hier_dpu_M_AXI_HP3_FPD_AWSIZE),
        .saxigp5_awuser(hier_dpu_M_AXI_HP3_FPD_AWUSER),
        .saxigp5_awvalid(hier_dpu_M_AXI_HP3_FPD_AWVALID),
        .saxigp5_bid(hier_dpu_M_AXI_HP3_FPD_BID),
        .saxigp5_bready(hier_dpu_M_AXI_HP3_FPD_BREADY),
        .saxigp5_bresp(hier_dpu_M_AXI_HP3_FPD_BRESP),
        .saxigp5_bvalid(hier_dpu_M_AXI_HP3_FPD_BVALID),
        .saxigp5_rdata(hier_dpu_M_AXI_HP3_FPD_RDATA),
        .saxigp5_rid(hier_dpu_M_AXI_HP3_FPD_RID),
        .saxigp5_rlast(hier_dpu_M_AXI_HP3_FPD_RLAST),
        .saxigp5_rready(hier_dpu_M_AXI_HP3_FPD_RREADY),
        .saxigp5_rresp(hier_dpu_M_AXI_HP3_FPD_RRESP),
        .saxigp5_rvalid(hier_dpu_M_AXI_HP3_FPD_RVALID),
        .saxigp5_wdata(hier_dpu_M_AXI_HP3_FPD_WDATA),
        .saxigp5_wlast(hier_dpu_M_AXI_HP3_FPD_WLAST),
        .saxigp5_wready(hier_dpu_M_AXI_HP3_FPD_WREADY),
        .saxigp5_wstrb(hier_dpu_M_AXI_HP3_FPD_WSTRB),
        .saxigp5_wvalid(hier_dpu_M_AXI_HP3_FPD_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_ARADDR}),
        .saxigp6_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .saxigp6_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,hier_dpu_M_AXI_LPD_ARID}),
        .saxigp6_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .saxigp6_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .saxigp6_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .saxigp6_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .saxigp6_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .saxigp6_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .saxigp6_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .saxigp6_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_AWADDR}),
        .saxigp6_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .saxigp6_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,hier_dpu_M_AXI_LPD_AWID}),
        .saxigp6_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .saxigp6_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .saxigp6_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .saxigp6_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .saxigp6_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .saxigp6_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .saxigp6_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .saxigp6_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .saxigp6_bid(hier_dpu_M_AXI_LPD_BID),
        .saxigp6_bready(hier_dpu_M_AXI_LPD_BREADY),
        .saxigp6_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .saxigp6_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .saxigp6_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .saxigp6_rid(hier_dpu_M_AXI_LPD_RID),
        .saxigp6_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .saxigp6_rready(hier_dpu_M_AXI_LPD_RREADY),
        .saxigp6_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .saxigp6_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .saxigp6_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .saxigp6_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .saxigp6_wready(hier_dpu_M_AXI_LPD_WREADY),
        .saxigp6_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .saxigp6_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .saxihp0_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihp1_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihp2_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihp3_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihpc0_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihpc1_fpd_aclk(hier_dpu_GHP_CLK_O));
endmodule

module top_dpu_intc_M_AXI_HPC1_FPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_aruser,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [2:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [2:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [39:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [1:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_aruser;
  input S01_AXI_arvalid;
  input [39:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [1:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awuser;
  input S01_AXI_awvalid;
  output [2:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [127:0]S01_AXI_rdata;
  output [2:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [127:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [15:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [39:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [2:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_aruser;
  wire M00_AXI_arvalid;
  wire [39:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [2:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awuser;
  wire M00_AXI_awvalid;
  wire [5:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [127:0]M00_AXI_rdata;
  wire [5:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [127:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [15:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [39:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [1:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_aruser;
  wire S00_AXI_arvalid;
  wire [39:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [1:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awuser;
  wire S00_AXI_awvalid;
  wire [2:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [2:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire S01_ACLK;
  wire S01_ARESETN;
  wire [39:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [1:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_aruser;
  wire S01_AXI_arvalid;
  wire [39:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [1:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awuser;
  wire S01_AXI_awvalid;
  wire [2:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [127:0]S01_AXI_rdata;
  wire [2:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [127:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [15:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [1:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [1:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [2:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [2:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [127:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [15:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [1:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARUSER;
  wire s01_couplers_to_xbar_ARVALID;
  wire [39:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [1:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWUSER;
  wire s01_couplers_to_xbar_AWVALID;
  wire [5:3]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [255:128]s01_couplers_to_xbar_RDATA;
  wire [5:3]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [127:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [15:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  m00_couplers_imp_MIS0T2 m00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arburst(M00_AXI_arburst),
        .M_AXI_arcache(M00_AXI_arcache),
        .M_AXI_arid(M00_AXI_arid),
        .M_AXI_arlen(M00_AXI_arlen),
        .M_AXI_arlock(M00_AXI_arlock),
        .M_AXI_arprot(M00_AXI_arprot),
        .M_AXI_arqos(M00_AXI_arqos),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arsize(M00_AXI_arsize),
        .M_AXI_aruser(M00_AXI_aruser),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awburst(M00_AXI_awburst),
        .M_AXI_awcache(M00_AXI_awcache),
        .M_AXI_awid(M00_AXI_awid),
        .M_AXI_awlen(M00_AXI_awlen),
        .M_AXI_awlock(M00_AXI_awlock),
        .M_AXI_awprot(M00_AXI_awprot),
        .M_AXI_awqos(M00_AXI_awqos),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awsize(M00_AXI_awsize),
        .M_AXI_awuser(M00_AXI_awuser),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bid(M00_AXI_bid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rid(M00_AXI_rid),
        .M_AXI_rlast(M00_AXI_rlast),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wlast(M00_AXI_wlast),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1WVHYY4 s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arid(S00_AXI_arid),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arqos(S00_AXI_arqos),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_aruser(S00_AXI_aruser),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awid(S00_AXI_awid),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awqos(S00_AXI_awqos),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awuser(S00_AXI_awuser),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bid(S00_AXI_bid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rid(S00_AXI_rid),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
  s01_couplers_imp_AGALK9 s01_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s01_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s01_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK),
        .S_ARESETN(S01_ARESETN),
        .S_AXI_araddr(S01_AXI_araddr),
        .S_AXI_arburst(S01_AXI_arburst),
        .S_AXI_arcache(S01_AXI_arcache),
        .S_AXI_arid(S01_AXI_arid),
        .S_AXI_arlen(S01_AXI_arlen),
        .S_AXI_arlock(S01_AXI_arlock),
        .S_AXI_arprot(S01_AXI_arprot),
        .S_AXI_arqos(S01_AXI_arqos),
        .S_AXI_arready(S01_AXI_arready),
        .S_AXI_arsize(S01_AXI_arsize),
        .S_AXI_aruser(S01_AXI_aruser),
        .S_AXI_arvalid(S01_AXI_arvalid),
        .S_AXI_awaddr(S01_AXI_awaddr),
        .S_AXI_awburst(S01_AXI_awburst),
        .S_AXI_awcache(S01_AXI_awcache),
        .S_AXI_awid(S01_AXI_awid),
        .S_AXI_awlen(S01_AXI_awlen),
        .S_AXI_awlock(S01_AXI_awlock),
        .S_AXI_awprot(S01_AXI_awprot),
        .S_AXI_awqos(S01_AXI_awqos),
        .S_AXI_awready(S01_AXI_awready),
        .S_AXI_awsize(S01_AXI_awsize),
        .S_AXI_awuser(S01_AXI_awuser),
        .S_AXI_awvalid(S01_AXI_awvalid),
        .S_AXI_bid(S01_AXI_bid),
        .S_AXI_bready(S01_AXI_bready),
        .S_AXI_bresp(S01_AXI_bresp),
        .S_AXI_bvalid(S01_AXI_bvalid),
        .S_AXI_rdata(S01_AXI_rdata),
        .S_AXI_rid(S01_AXI_rid),
        .S_AXI_rlast(S01_AXI_rlast),
        .S_AXI_rready(S01_AXI_rready),
        .S_AXI_rresp(S01_AXI_rresp),
        .S_AXI_rvalid(S01_AXI_rvalid),
        .S_AXI_wdata(S01_AXI_wdata),
        .S_AXI_wlast(S01_AXI_wlast),
        .S_AXI_wready(S01_AXI_wready),
        .S_AXI_wstrb(S01_AXI_wstrb),
        .S_AXI_wvalid(S01_AXI_wvalid));
  top_dpu_intc_M_AXI_HPC1_FPD_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_aruser(xbar_to_m00_couplers_ARUSER),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awuser(xbar_to_m00_couplers_AWUSER),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID[2:0]),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID[2:0]),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s01_couplers_to_xbar_ARID,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({s01_couplers_to_xbar_ARUSER,s00_couplers_to_xbar_ARUSER}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s01_couplers_to_xbar_AWID,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({s01_couplers_to_xbar_AWUSER,s00_couplers_to_xbar_AWUSER}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module top_dpu_intc_M_AXI_LPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_aruser,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_aruser,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awuser,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [39:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [1:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_aruser;
  input S01_AXI_arvalid;
  input [39:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [1:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awuser;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [39:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [1:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input [0:0]S02_AXI_aruser;
  input S02_AXI_arvalid;
  input [39:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [1:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input [0:0]S02_AXI_awuser;
  input S02_AXI_awvalid;
  output [3:0]S02_AXI_bid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output [3:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [39:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [3:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_aruser;
  wire M00_AXI_arvalid;
  wire [39:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [3:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awuser;
  wire M00_AXI_awvalid;
  wire [5:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire [5:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [39:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [1:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_aruser;
  wire S00_AXI_arvalid;
  wire [39:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [1:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awuser;
  wire S00_AXI_awvalid;
  wire [3:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [3:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire S01_ACLK;
  wire S01_ARESETN;
  wire [39:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [1:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_aruser;
  wire S01_AXI_arvalid;
  wire [39:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [1:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awuser;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire S02_ACLK;
  wire S02_ARESETN;
  wire [39:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [1:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_aruser;
  wire S02_AXI_arvalid;
  wire [39:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [1:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awuser;
  wire S02_AXI_awvalid;
  wire [3:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire [3:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [1:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [1:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [3:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [3:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [1:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARUSER;
  wire s01_couplers_to_xbar_ARVALID;
  wire [39:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [1:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWUSER;
  wire s01_couplers_to_xbar_AWVALID;
  wire [7:4]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [7:4]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [39:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [1:0]s02_couplers_to_xbar_ARID;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire [0:0]s02_couplers_to_xbar_ARUSER;
  wire s02_couplers_to_xbar_ARVALID;
  wire [39:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [1:0]s02_couplers_to_xbar_AWID;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire [0:0]s02_couplers_to_xbar_AWUSER;
  wire s02_couplers_to_xbar_AWVALID;
  wire [11:8]s02_couplers_to_xbar_BID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [11:8]s02_couplers_to_xbar_RID;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [3:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [3:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  m00_couplers_imp_1OK2ZUD m00_couplers
       (.M_ACLK(M00_ACLK),
        .M_ARESETN(M00_ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arburst(M00_AXI_arburst),
        .M_AXI_arcache(M00_AXI_arcache),
        .M_AXI_arid(M00_AXI_arid),
        .M_AXI_arlen(M00_AXI_arlen),
        .M_AXI_arlock(M00_AXI_arlock),
        .M_AXI_arprot(M00_AXI_arprot),
        .M_AXI_arqos(M00_AXI_arqos),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arsize(M00_AXI_arsize),
        .M_AXI_aruser(M00_AXI_aruser),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awburst(M00_AXI_awburst),
        .M_AXI_awcache(M00_AXI_awcache),
        .M_AXI_awid(M00_AXI_awid),
        .M_AXI_awlen(M00_AXI_awlen),
        .M_AXI_awlock(M00_AXI_awlock),
        .M_AXI_awprot(M00_AXI_awprot),
        .M_AXI_awqos(M00_AXI_awqos),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awsize(M00_AXI_awsize),
        .M_AXI_awuser(M00_AXI_awuser),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bid(M00_AXI_bid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rid(M00_AXI_rid),
        .M_AXI_rlast(M00_AXI_rlast),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wlast(M00_AXI_wlast),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_VZUKLR s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK),
        .S_ARESETN(S00_ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arid(S00_AXI_arid),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arqos(S00_AXI_arqos),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_aruser(S00_AXI_aruser),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awid(S00_AXI_awid),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awqos(S00_AXI_awqos),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awuser(S00_AXI_awuser),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bid(S00_AXI_bid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rid(S00_AXI_rid),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
  s01_couplers_imp_1CHS5E2 s01_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s01_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s01_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK),
        .S_ARESETN(S01_ARESETN),
        .S_AXI_araddr(S01_AXI_araddr),
        .S_AXI_arburst(S01_AXI_arburst),
        .S_AXI_arcache(S01_AXI_arcache),
        .S_AXI_arid(S01_AXI_arid),
        .S_AXI_arlen(S01_AXI_arlen),
        .S_AXI_arlock(S01_AXI_arlock),
        .S_AXI_arprot(S01_AXI_arprot),
        .S_AXI_arqos(S01_AXI_arqos),
        .S_AXI_arready(S01_AXI_arready),
        .S_AXI_arsize(S01_AXI_arsize),
        .S_AXI_aruser(S01_AXI_aruser),
        .S_AXI_arvalid(S01_AXI_arvalid),
        .S_AXI_awaddr(S01_AXI_awaddr),
        .S_AXI_awburst(S01_AXI_awburst),
        .S_AXI_awcache(S01_AXI_awcache),
        .S_AXI_awid(S01_AXI_awid),
        .S_AXI_awlen(S01_AXI_awlen),
        .S_AXI_awlock(S01_AXI_awlock),
        .S_AXI_awprot(S01_AXI_awprot),
        .S_AXI_awqos(S01_AXI_awqos),
        .S_AXI_awready(S01_AXI_awready),
        .S_AXI_awsize(S01_AXI_awsize),
        .S_AXI_awuser(S01_AXI_awuser),
        .S_AXI_awvalid(S01_AXI_awvalid),
        .S_AXI_bid(S01_AXI_bid),
        .S_AXI_bready(S01_AXI_bready),
        .S_AXI_bresp(S01_AXI_bresp),
        .S_AXI_bvalid(S01_AXI_bvalid),
        .S_AXI_rdata(S01_AXI_rdata),
        .S_AXI_rid(S01_AXI_rid),
        .S_AXI_rlast(S01_AXI_rlast),
        .S_AXI_rready(S01_AXI_rready),
        .S_AXI_rresp(S01_AXI_rresp),
        .S_AXI_rvalid(S01_AXI_rvalid),
        .S_AXI_wdata(S01_AXI_wdata),
        .S_AXI_wlast(S01_AXI_wlast),
        .S_AXI_wready(S01_AXI_wready),
        .S_AXI_wstrb(S01_AXI_wstrb),
        .S_AXI_wvalid(S01_AXI_wvalid));
  s02_couplers_imp_5A99QC s02_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s02_couplers_to_xbar_ARID),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s02_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s02_couplers_to_xbar_AWID),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s02_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s02_couplers_to_xbar_BID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rid(s02_couplers_to_xbar_RID),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK),
        .S_ARESETN(S02_ARESETN),
        .S_AXI_araddr(S02_AXI_araddr),
        .S_AXI_arburst(S02_AXI_arburst),
        .S_AXI_arcache(S02_AXI_arcache),
        .S_AXI_arid(S02_AXI_arid),
        .S_AXI_arlen(S02_AXI_arlen),
        .S_AXI_arlock(S02_AXI_arlock),
        .S_AXI_arprot(S02_AXI_arprot),
        .S_AXI_arqos(S02_AXI_arqos),
        .S_AXI_arready(S02_AXI_arready),
        .S_AXI_arsize(S02_AXI_arsize),
        .S_AXI_aruser(S02_AXI_aruser),
        .S_AXI_arvalid(S02_AXI_arvalid),
        .S_AXI_awaddr(S02_AXI_awaddr),
        .S_AXI_awburst(S02_AXI_awburst),
        .S_AXI_awcache(S02_AXI_awcache),
        .S_AXI_awid(S02_AXI_awid),
        .S_AXI_awlen(S02_AXI_awlen),
        .S_AXI_awlock(S02_AXI_awlock),
        .S_AXI_awprot(S02_AXI_awprot),
        .S_AXI_awqos(S02_AXI_awqos),
        .S_AXI_awready(S02_AXI_awready),
        .S_AXI_awsize(S02_AXI_awsize),
        .S_AXI_awuser(S02_AXI_awuser),
        .S_AXI_awvalid(S02_AXI_awvalid),
        .S_AXI_bid(S02_AXI_bid),
        .S_AXI_bready(S02_AXI_bready),
        .S_AXI_bresp(S02_AXI_bresp),
        .S_AXI_bvalid(S02_AXI_bvalid),
        .S_AXI_rdata(S02_AXI_rdata),
        .S_AXI_rid(S02_AXI_rid),
        .S_AXI_rlast(S02_AXI_rlast),
        .S_AXI_rready(S02_AXI_rready),
        .S_AXI_rresp(S02_AXI_rresp),
        .S_AXI_rvalid(S02_AXI_rvalid),
        .S_AXI_wdata(S02_AXI_wdata),
        .S_AXI_wlast(S02_AXI_wlast),
        .S_AXI_wready(S02_AXI_wready),
        .S_AXI_wstrb(S02_AXI_wstrb),
        .S_AXI_wvalid(S02_AXI_wvalid));
  top_dpu_intc_M_AXI_LPD_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_aruser(xbar_to_m00_couplers_ARUSER),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awuser(xbar_to_m00_couplers_AWUSER),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID[3:0]),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID[3:0]),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,s02_couplers_to_xbar_ARID,1'b0,1'b0,s01_couplers_to_xbar_ARID,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({s02_couplers_to_xbar_ARUSER,s01_couplers_to_xbar_ARUSER,s00_couplers_to_xbar_ARUSER}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,s02_couplers_to_xbar_AWID,1'b0,1'b0,s01_couplers_to_xbar_AWID,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({s02_couplers_to_xbar_AWUSER,s01_couplers_to_xbar_AWUSER,s00_couplers_to_xbar_AWUSER}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s02_couplers_to_xbar_BID,s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s02_couplers_to_xbar_RID,s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule
