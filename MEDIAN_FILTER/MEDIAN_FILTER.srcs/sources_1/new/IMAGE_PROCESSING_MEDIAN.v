`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 11:47:53 PM
// Design Name: 
// Module Name: IMAGE_PROCESSING_MEDIAN
// Project Name: IMAGE_PROCESSING_MEDIAN_FILTER
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
endmodule*/ 


module IMAGE_PROCESSING_MEDIAN#(
   parameter WIDTH = 430,          // CHIEU RONG ANH 
   parameter HEIGHT = 554,         // CHIEU CAO CUA ANH 
   parameter DATA_WIDTH = 8        // KICH THUOC DU LIEU 
    )
    (
    clk, 
    clk_ram2, 
    rst_n , 
    i_valid,
    enable_out,
    i_pixel,
    col_counter_check,
    out_median_filter, 
    o_window_valid 
    );
    
    input clk, clk_ram2, rst_n,i_valid,enable_out; 
    input [DATA_WIDTH-1:0] i_pixel; 
    output [8:0] col_counter_check; 
    output [7:0] out_median_filter; 
    output  o_window_valid; 
    
    // ==============   HANG 1 , 2, 3 ======================== 
    wire [DATA_WIDTH -1:0] o_row_1; 
    wire [DATA_WIDTH -1:0] o_row_2;
    wire [DATA_WIDTH -1:0] o_row_3; 
    
    // ============= 9 PIXEL ( 3X3 ) ===========================
    wire [DATA_WIDTH-1:0] o_p11;
    wire [DATA_WIDTH-1:0] o_p12;
    wire [DATA_WIDTH-1:0] o_p13;
    wire [DATA_WIDTH-1:0] o_p21;
    wire [DATA_WIDTH-1:0] o_p22; 
    wire [DATA_WIDTH-1:0] o_p23;
    wire [DATA_WIDTH-1:0] o_p31;
    wire [DATA_WIDTH-1:0] o_p32;
    wire [DATA_WIDTH-1:0] o_p33; 
    
    
    // ============= BUFFER LINE ( LUU PIXEL DUA VAO) ====================
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
     
     // ================== CUA SO TRUOT ( MA TRAN 3 X 3 ) ===============
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
     
     // ============== BO LOC TRUNG VI ========================
     MEDIAN_FILTER FILTER(
     .enable_out(enable_out),
    .i_valid(o_window_valid), 
    .i_p11(o_p11), 
    .i_p12(o_p12), 
    .i_p13(o_p13), 
    .i_p21(o_p21), 
    .i_p22(o_p22), 
    .i_p23(o_p23), 
    .i_p31(o_p31), 
    .i_p32(o_p32), 
    .i_p33(o_p33), 
    .o_valid(), 
    .o_median(out_median_filter)
    );
endmodule
