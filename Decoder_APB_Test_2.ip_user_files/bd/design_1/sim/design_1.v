//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Feb 16 11:24:48 2024
//Host        : MrKaushal22 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire APB_Master_0_master_ready;
  wire [31:0]APB_Master_0_paddr;
  wire APB_Master_0_penable;
  wire [31:0]APB_Master_0_prdata;
  wire [6:0]APB_Master_0_psel;
  wire [31:0]APB_Master_0_pwdataa;
  wire APB_Master_0_pwrite;
  wire APB_Slave_0_dv;
  wire [31:0]APB_Slave_0_prdata_out;
  wire APB_Slave_0_pready;
  wire [31:0]APB_Slave_0_pwdata_out;
  wire [47:0]ENCODEC_0_fifo_data_frame;
  wire ENCODEC_0_fifo_w_en;
  wire [31:0]ENCODEC_0_o_addr;
  wire [31:0]ENCODEC_0_o_data;
  wire ENCODEC_0_o_read_en;
  wire [6:0]ENCODEC_0_o_slave_sel;
  wire ENCODEC_0_valid;
  wire ENCODEC_0_write;
  wire FIFO_0_f_empty;
  wire FIFO_0_f_full;
  wire [47:0]FIFO_0_rd_data;
  wire Net;
  wire i_enable_1;
  wire preset_n_1;
  wire [47:0]wr_data_1;
  wire wr_en_1;

  assign Net = clk;
  assign dv = APB_Slave_0_dv;
  assign f_full = FIFO_0_f_full;
  assign fifo_data_frame[47:0] = ENCODEC_0_fifo_data_frame;
  assign fifo_w_en = ENCODEC_0_fifo_w_en;
  assign i_enable_1 = i_enable;
  assign preset_n_1 = preset_n;
  assign pwdata_out[31:0] = APB_Slave_0_pwdata_out;
  assign wr_data_1 = wr_data[47:0];
  assign wr_en_1 = wr_en;
  design_1_APB_Master_0_0 APB_Master_0
       (.ext_addr(ENCODEC_0_o_addr),
        .ext_psel(ENCODEC_0_o_slave_sel),
        .ext_write(ENCODEC_0_write),
        .master_ready(APB_Master_0_master_ready),
        .paddr(APB_Master_0_paddr),
        .pclk(Net),
        .penable(APB_Master_0_penable),
        .prdata(APB_Master_0_prdata),
        .pready(APB_Slave_0_pready),
        .psel(APB_Master_0_psel),
        .pwdataa(APB_Master_0_pwdataa),
        .pwrite(APB_Master_0_pwrite),
        .slv_prdata(APB_Slave_0_prdata_out),
        .slv_pwdata(ENCODEC_0_o_data),
        .valid(ENCODEC_0_valid));
  design_1_APB_Slave_0_0 APB_Slave_0
       (.dv(APB_Slave_0_dv),
        .paddr(APB_Master_0_paddr),
        .pclk(Net),
        .penable(APB_Master_0_penable),
        .prdata_out(APB_Slave_0_prdata_out),
        .pready(APB_Slave_0_pready),
        .preset_n(preset_n_1),
        .psel(APB_Master_0_psel),
        .pwdata(APB_Master_0_pwdataa),
        .pwdata_out(APB_Slave_0_pwdata_out),
        .pwrite(APB_Master_0_pwrite));
  design_1_ENCODEC_0_0 ENCODEC_0
       (.APB_ready(APB_Master_0_master_ready),
        .clk(Net),
        .f_empty(FIFO_0_f_empty),
        .fifo_data_frame(ENCODEC_0_fifo_data_frame),
        .fifo_w_en(ENCODEC_0_fifo_w_en),
        .i_Data_Frame(FIFO_0_rd_data),
        .i_enable(i_enable_1),
        .i_read_data(APB_Master_0_prdata),
        .o_addr(ENCODEC_0_o_addr),
        .o_data(ENCODEC_0_o_data),
        .o_read_en(ENCODEC_0_o_read_en),
        .o_slave_sel(ENCODEC_0_o_slave_sel),
        .valid(ENCODEC_0_valid),
        .write(ENCODEC_0_write));
  design_1_FIFO_0_0 FIFO_0
       (.clk(Net),
        .f_empty(FIFO_0_f_empty),
        .f_full(FIFO_0_f_full),
        .rd_data(FIFO_0_rd_data),
        .rd_en(ENCODEC_0_o_read_en),
        .wr_data(wr_data_1),
        .wr_en(wr_en_1));
endmodule
