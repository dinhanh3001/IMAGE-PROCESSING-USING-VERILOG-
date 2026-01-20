`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 05:37:56 PM
// Design Name: 
// Module Name: compare_swap
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


module compare_swap(
       a,b,min,max
    );
      input [7:0] a, b; 
      output [7:0] max, min; 
  assign min = ( a<b) ? a : b; 
  assign max = ( a> b ) ? a : b;     
endmodule
