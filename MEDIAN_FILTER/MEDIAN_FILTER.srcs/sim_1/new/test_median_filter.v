`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 11:20:22 PM
// Design Name: 
// Module Name: test_median_filter
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


module test_median_filter(

    );
    
   reg i_valid; 
   reg [7:0] i_p11; 
   reg [7:0] i_p12; 
   reg [7:0] i_p13; 
   reg [7:0] i_p21; 
   reg [7:0] i_p22; 
   reg [7:0] i_p23; 
   reg [7:0] i_p31;  
   reg [7:0] i_p32; 
   reg [7:0] i_p33; 
   reg o_valid; 
   wire[7:0] o_median;
   
   
   MEDIAN_FILTER  uut(
    .i_valid(i_valid), 
    .i_p11(i_p11), 
    .i_p12(i_p12), 
    .i_p13(i_p13), 
    .i_p21(i_p21), 
    .i_p22(i_p22), 
    .i_p23(i_p23), 
    .i_p31(i_p31), 
    .i_p32(i_p32), 
    .i_p33(i_p33), 
    .o_median(o_median)
    );
    initial begin
    i_valid = 1'b1; 
    i_p11=8'hxx; 
    i_p12=8'hxx; 
    i_p13=8'hxx; 
    i_p21=8'h04; 
    i_p22=8'h05; 
    i_p23=8'h06; 
    i_p31=8'h07; 
    i_p32=8'h08; 
    i_p33=8'h09; 
    
    #10; 
    i_p11=8'h0a; 
    i_p12=8'h0b; 
    i_p13=8'h0c; 
    i_p21=8'h0d; 
    i_p22=8'h0e; 
    i_p23=8'h0f; 
    i_p31=8'h10; 
    i_p32=8'h11; 
    i_p33=8'h12; 
    #10; 
    $stop; 
    end 
endmodule
