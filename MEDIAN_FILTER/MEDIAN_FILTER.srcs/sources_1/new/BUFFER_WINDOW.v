`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 03:03:00 PM
// Design Name: 
// Module Name: BUFFER_WINDOW
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
/* 
WINDOW_MANAGE_UINT#
    (parameter WIDTH = 430,
     parameter HEIGHT = 554,
     parameter DATA_WIDTH = 8)(
     
     input                    clk, 
     input                    rst_n, 
     input [DATA_WIDTH-1:0]   i_row_1, 
     input [DATA_WIDTH-1:0]   i_row_2,
     input [DATA_WIDTH-1:0]   i_row_3,
     
    output [DATA_WIDTH-1:0] o_p11, output [DATA_WIDTH-1:0] o_p12, output [DATA_WIDTH-1:0] o_p13,
    output [DATA_WIDTH-1:0] o_p21, output [DATA_WIDTH-1:0] o_p22, output [DATA_WIDTH-1:0] o_p23,
    output [DATA_WIDTH-1:0] o_p31, output [DATA_WIDTH-1:0] o_p32, output [DATA_WIDTH-1:0] o_p33,
    
    output                   o_window_valid
    );
    
    
    BUFFER_LINE #
    (parameter WIDTH  = 430,  // so cot 
               HEIGHT = 554) // so hang 
    (
          clk,
          clk_ram2,
          rst_n,
          i_valid,
          i_pixel,
         // enable_counter,
          o_row_1,
          o_row_2,
          o_row_3, 
          col_counter_check,
          done_buffer
     );
*/ 

module BUFFER_WINDOW#(
   parameter WIDTH = 430,
   parameter HEIGHT = 554,
   parameter DATA_WIDTH = 8
)(
    clk, 
    clk_ram2, 
    rst_n , 
    i_valid, 
    i_pixel, 
    col_counter_check,
    o_p11,
    o_p12,
    o_p13,
    o_p21,
    o_p22,
    o_p23,
    o_p31,
    o_p32,
    o_p33, 
    o_window_valid
    );
    input clk, clk_ram2, rst_n,i_valid; 
    input [DATA_WIDTH-1:0] i_pixel; 
    output [8:0] col_counter_check; 
    output [DATA_WIDTH-1:0] o_p11;
    output [DATA_WIDTH-1:0] o_p12;
    output [DATA_WIDTH-1:0] o_p13;
    output [DATA_WIDTH-1:0] o_p21;
    output [DATA_WIDTH-1:0] o_p22; 
    output [DATA_WIDTH-1:0] o_p23;
    output [DATA_WIDTH-1:0] o_p31;
    output [DATA_WIDTH-1:0] o_p32;
    output [DATA_WIDTH-1:0] o_p33; 
    output o_window_valid; 
    
    wire [DATA_WIDTH -1:0] o_row_1; 
    wire [DATA_WIDTH -1:0] o_row_2;
    wire [DATA_WIDTH -1:0] o_row_3; 
     BUFFER_LINE #
    (.WIDTH(WIDTH),  // so cot 
     .HEIGHT(HEIGHT)) // so hang 
    BUFFER(
          .clk(clk),
          .clk_ram2(clk_ram2),
          .rst_n(rst_n),
          .i_valid(i_valid),
          .i_pixel(i_pixel),
         // enable_counter,
          .o_row_1(o_row_1),
          .o_row_2(o_row_2),
          .o_row_3(o_row_3), 
          .col_counter_check(col_counter_check),
          .done_buffer()
     );
     
     WINDOW_MANAGE_UINT#
    (.WIDTH(WIDTH),
     .HEIGHT(HEIGHT),
     .DATA_WIDTH(DATA_WIDTH)) 
     WINDOW(
     
     .clk(clk),
     .clk_ram2(clk_ram2), 
     .rst_n(rst_n), 
     .i_row_1(o_row_1), 
     .i_row_2(o_row_2),
     .i_row_3(o_row_3),
     
     .o_p11(o_p11),
     .o_p12(o_p12),
     .o_p13(o_p13),
     .o_p21(o_p21),
     .o_p22(o_p22),
     .o_p23(o_p23),
     .o_p31(o_p31),
     .o_p32(o_p32),
     .o_p33(o_p33),
    
     .o_window_valid(o_window_valid)
    );
endmodule
