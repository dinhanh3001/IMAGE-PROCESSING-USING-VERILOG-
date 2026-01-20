`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/06/2025 03:32:56 PM
// Design Name: 
// Module Name: BUFFER_LINE_TESTBENCH
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
module BUFFER_LINE #
    (parameter WIDTH  = 430,  // so cot 
               HEIGHT = 554) // so hang 
    (
          clk,
          rst_n,
          i_valid,
          i_pixel,
          o_row_1,
          o_row_2,
          o_row_3
     );
    input        clk, rst_n; 
    input        i_valid ;         // TIN HIEU BAO PIXEL HOP LE 
    input  [7:0] i_pixel;         // DU LIEU VAO 
    
    output [7:0] o_row_1;         // DONG 1 ( CU NHAT - TU RAM 2 ) 
    output [7:0] o_row_2;         // DONG 2 ( O GIUA - TU RAM 1) 
    output [7:0] o_row_3;         // DONG 3 ( MOI NHAT - DONG BO VOI RAM ) 
    
*/

module BUFFER_LINE_TESTBENCH();

    reg clk; 
    reg rst_n; 
    reg i_valid; 
    reg clk_ram2;
   // reg enable_counter;
    reg [7:0] i_pixel; 
    wire [7:0] o_row_1, o_row_2, o_row_3; 
    wire [8:0] col_counter; 
    // DUT
    BUFFER_LINE #(
        .WIDTH(430), 
        .HEIGHT(554)
    ) test (
        .clk(clk),
        .rst_n(rst_n),
        .i_valid(i_valid),
        .clk_ram2(clk_ram2),
        //.enable_counter(enable_counter),
        .i_pixel(i_pixel),
        .o_row_1(o_row_1),
        .o_row_2(o_row_2),
        .o_row_3(o_row_3),
        .col_counter_check(col_counter)
    );

    // T?ng s? pixel
    localparam NUM_PIXELS = 430 * 554;
    
    integer i; 
    reg [7:0] IMG_MEMORY [0 : NUM_PIXELS - 1]; 

    // T?o clock 10ns (100MHz)
    always #5 clk = ~clk; 
    
    initial 
    begin
      clk_ram2 = 0; 
      #2; 
      forever #5 clk_ram2 = ~clk_ram2; 
    end 
    
    initial begin
       clk = 0;
        rst_n = 0;
        i_valid = 0;
        
        $readmemh("E:/HE_THONG_SO_HDL/THUC_HANH/LAB_2_VIVADO/BAI_1/input_image.hex", IMG_MEMORY);

        #13;
        rst_n = 1;  // Nh? Reset
        
       
 
        for(i = 0; i < NUM_PIXELS; i = i + 1) begin 
           i_valid = 1; 
            // Gán d? li?u TR??C s??n lên clock ?? ??m b?o setup time (mô ph?ng t?t h?n)
            i_pixel = IMG_MEMORY[i]; 
            @(posedge clk); 
        end 
        
        // Sau khi g?i h?t thì t?t valid
        i_valid = 0;
        #100;
        $stop;
    end 
endmodule
