`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 10:51:39
// Design Name: 
// Module Name: Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Testbench();

  reg clk;
  wire dv;
  wire f_full;
  wire [47:0]fifo_data_frame;
  wire fifo_w_en;
  reg i_enable;
  reg preset_n;
  wire [31:0]pwdata_out;
  reg [47:0]wr_data;
  reg wr_en;
  
design_1_wrapper design1
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
    


    
    initial 
    begin
        clk = 1;
        i_enable = 0;
        wr_data = 48'bx;
        wr_en = 0;
        preset_n = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
    begin
        # 10 preset_n = 1;
        // Write Data Frame
            wr_data = 48'h8108abcdef00;
        #10 wr_en =1;
        #10 wr_data = 48'h000012345670;
        #10 wr_data = 48'h000012345671;
        #10 wr_data = 48'h000012345672;
        #10 wr_data = 48'h000012345673;
        #10 wr_data = 48'h000012345674;
        #10 wr_data = 48'h000012345675;
        #10 wr_data = 48'h000012345676;
        #10 wr_data = 48'h000012345677;
        // Read Data Frame
//        #10 wr_data = 48'h0706adfcba00;
        
//        // Write Data Frame
        #10 wr_data = 48'h8109abeeef07;
        #10 wr_data = 48'h000012345670;
        #10 wr_data = 48'h000012345671;
        #10 wr_data = 48'h000012345672;
        #10 wr_data = 48'h000012345673;
        #10 wr_data = 48'h000012345674;
        #10 wr_data = 48'h000012345675;
        #10 wr_data = 48'h000012345676;
        #10 wr_data = 48'h000012345677;
        #10 wr_data = 48'h000012345678;
          // Read Data Frame
//        #10 wr_data = 48'h0108adfcba00;
//        // Write Data Frame
        #10 wr_data = 48'h8102abeeef07;
        #10 wr_data = 48'h000012345670;
        #10 wr_data = 48'h000012345671;
        #10 wr_en =0;
            wr_data = 48'hx;   
        #50 i_enable = 1;
            
        //#100 i_enable = 0;
    end
    
    
    initial #5000 $stop;
endmodule