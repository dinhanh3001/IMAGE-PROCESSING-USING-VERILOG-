`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 05:39:59 PM
// Design Name: 
// Module Name: SORT_3_MODE
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


module SORT_3_MODE(
   i_a, 
   i_b, 
   i_c, 
   o_min, 
   o_mid, 
   o_max
    );
    input [7:0] i_a, i_b, i_c; 
    output [7:0] o_min, o_mid, o_max; 
    
    wire [7:0] low1, high1; 
    wire [7:0] low2, high2;
    
    // so sanh a , b 
    compare_swap com1(
       .a(i_a),.b(i_b),.min(low1),.max(high1)
    );
    
    // so sanh tim so lon nhat 
      compare_swap com2(
       .a(high1),.b(i_c),.min(low2),.max(o_max)
    );
    
    // so sanh tim min va mid 
      compare_swap com3(
       .a(low1),.b(low2),.min(o_min),.max(o_mid)
    );
endmodule
