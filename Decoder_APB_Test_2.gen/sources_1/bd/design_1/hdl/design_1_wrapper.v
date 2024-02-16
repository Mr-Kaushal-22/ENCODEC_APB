//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Feb 16 11:24:48 2024
//Host        : MrKaushal22 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    dv,
    f_full,
    fifo_data_frame,
    fifo_w_en,
    i_enable,
    preset_n,
    pwdata_out,
    wr_data,
    wr_en);
  input clk;
  output dv;
  output f_full;
  output [47:0]fifo_data_frame;
  output fifo_w_en;
  input i_enable;
  input preset_n;
  output [31:0]pwdata_out;
  input [47:0]wr_data;
  input wr_en;

  wire clk;
  wire dv;
  wire f_full;
  wire [47:0]fifo_data_frame;
  wire fifo_w_en;
  wire i_enable;
  wire preset_n;
  wire [31:0]pwdata_out;
  wire [47:0]wr_data;
  wire wr_en;

  design_1 design_1_i
       (.clk(clk),
        .dv(dv),
        .f_full(f_full),
        .fifo_data_frame(fifo_data_frame),
        .fifo_w_en(fifo_w_en),
        .i_enable(i_enable),
        .preset_n(preset_n),
        .pwdata_out(pwdata_out),
        .wr_data(wr_data),
        .wr_en(wr_en));
endmodule
