
// file: top_dpu_clk_wiz_0.v
// (c) Copyright 2017-2018, 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// _clk_dsp__649.93500______0.000______50.0_______78.272_____82.904
// clk_dsp1__649.93500______0.000______50.0_______78.272_____82.904
// clk_dsp2__649.93500______0.000______50.0_______78.272_____82.904
// _clk_dpu__324.96750______0.000______50.0_______88.527_____82.904
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary__________99.990____________0.010

`timescale 1ps/1ps

module top_dpu_clk_wiz_0_clk_wiz 

 (// Clock in ports
  // Clock out ports
  input         clk_dsp_ce,
  output        clk_dsp,
  input         clk_dsp1_ce,
  output        clk_dsp1,
  input         clk_dsp2_ce,
  output        clk_dsp2,
  output        clk_dpu,
  // Status and control signals
  input         resetn,
  output        locked,
  input         clk_in1
 );
  // Input buffering
  //------------------------------------
wire clk_in1_top_dpu_clk_wiz_0;
wire clk_in2_top_dpu_clk_wiz_0;
  IBUF clkin1_ibuf
   (.O (clk_in1_top_dpu_clk_wiz_0),
    .I (clk_in1));




  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        clk_dsp_top_dpu_clk_wiz_0;
  wire        clk_dsp1_top_dpu_clk_wiz_0;
  wire        clk_dsp2_top_dpu_clk_wiz_0;
  wire        clk_dpu_top_dpu_clk_wiz_0;
  wire        clk_out5_top_dpu_clk_wiz_0;
  wire        clk_out6_top_dpu_clk_wiz_0;
  wire        clk_out7_top_dpu_clk_wiz_0;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_top_dpu_clk_wiz_0;
  wire        clkfboutb_unused;
    wire clkout0b_unused;
   wire clkout1b_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

 

// Auto Instantiation//

  
    PLLE4_ADV
  #(
    .COMPENSATION         ("AUTO"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT        (13),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_DIVIDE       (2),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT1_DIVIDE       (2),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKIN_PERIOD         (10.001))
  
  plle4_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_top_dpu_clk_wiz_0),
    .CLKOUT0             (clk_dsp_top_dpu_clk_wiz_0),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (clkout1_unused),
    .CLKOUT1B            (clkout1b_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_top_dpu_clk_wiz_0),
    .CLKIN               (clk_in1_top_dpu_clk_wiz_0),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    .CLKOUTPHYEN         (1'b0),
    .CLKOUTPHY           (),
    // Other control and status signals
    .LOCKED              (locked_int),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));
BUFGCE_DIV #(
      .BUFGCE_DIVIDE(1.0),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
   BUFGCE_DIV_CLK2_inst (
      .O(clk_dsp1_top_dpu_clk_wiz_0),     // 1-bit output: Buffer
      .CE(clk_dsp1_ce),   // 1-bit input: Buffer enable
      .CLR(1'b0), // 1-bit input: Asynchronous clear
      .I(clk_dsp_top_dpu_clk_wiz_0)      // 1-bit input: Buffer
   );
BUFGCE_DIV #(
      .BUFGCE_DIVIDE(1.0),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
   BUFGCE_DIV_CLK3_inst (
      .O(clk_dsp2_top_dpu_clk_wiz_0),     // 1-bit output: Buffer
      .CE(clk_dsp2_ce),   // 1-bit input: Buffer enable
      .CLR(1'b0), // 1-bit input: Asynchronous clear
      .I(clk_dsp_top_dpu_clk_wiz_0)      // 1-bit input: Buffer
   );
BUFGCE_DIV #(
      .BUFGCE_DIVIDE(2.0),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
   BUFGCE_DIV_CLK4_inst (
      .O(clk_dpu_top_dpu_clk_wiz_0),     // 1-bit output: Buffer
      .CE(1'b1),   // 1-bit input: Buffer enable
      .CLR(1'b0), // 1-bit input: Asynchronous clear
      .I(clk_dsp_top_dpu_clk_wiz_0)      // 1-bit input: Buffer
   );



  assign reset_high = ~resetn; 

  assign locked = locked_int;
// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------






  BUFGCE_DIV 
 #(
      .BUFGCE_DIVIDE(1),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
  clkout1_buf
   (.O   (clk_dsp),
    .CE  (clk_dsp_ce),   // 1-bit input: Buffer enable
    .CLR (1'b0),
    .I   (clk_dsp_top_dpu_clk_wiz_0));


  assign clk_dsp1 = clk_dsp1_top_dpu_clk_wiz_0;

  assign clk_dsp2 = clk_dsp2_top_dpu_clk_wiz_0;

  assign clk_dpu = clk_dpu_top_dpu_clk_wiz_0;



endmodule
