//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Oct 15 14:50:38 2018
//Host        : laba01 running 64-bit major release  (build 9200)
//Command     : generate_target sys_pll_wrapper.bd
//Design      : sys_pll_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sys_pll_wrapper
   (clk_in_n,
    clk_in_p,
    clk_out,
    locked,
    rst_n);
  input clk_in_n;
  input clk_in_p;
  output clk_out;
  output locked;
  input rst_n;

  wire clk_in_n;
  wire clk_in_p;
  wire clk_out;
  wire locked;
  wire rst_n;

  sys_pll sys_pll_i
       (.clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .clk_out(clk_out),
        .locked(locked),
        .rst_n(rst_n));
endmodule
