`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 05:53:58 PM
// Design Name: 
// Module Name: MEDIAN_FILTER
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


module MEDIAN_FILTER(
    enable_out, 
    i_valid, 
    i_p11, 
    i_p12, 
    i_p13, 
    i_p21, 
    i_p22, 
    i_p23, 
    i_p31, 
    i_p32, 
    i_p33, 
    o_valid, 
    o_median
    );
    
    input        i_valid;      
    input        enable_out; 

    input  [7:0] i_p11, i_p12, i_p13;
    input  [7:0] i_p21, i_p22, i_p23;
    input  [7:0] i_p31, i_p32, i_p33;

    output           o_valid;    
    output reg [7:0]    o_median;
    
    
    wire [7:0] p11, p12, p13, p21, p22, p23, p31, p32, p33;
    
    wire [7:0] r1_min, r1_mid, r1_max; 
    wire [7:0] r2_min, r2_mid, r2_max;
    wire [7:0] r3_min, r3_mid, r3_max;
    
    
    wire [7:0] c1_min, c1_mid, c1_max; 
    wire [7:0] c2_min, c2_mid, c2_max;
    wire [7:0] c3_min, c3_mid, c3_max;
    wire [7:0] o_median_temp; 
    
    // ============== BUOC 1 : XU LY DU LIEU KHONG XAC DINH ==============================
 function [7:0] clean_pixel;
    input [7:0] in_val;
    integer i;
    reg has_x;
    begin
        has_x = 0;
        for (i = 0; i < 8; i = i + 1)
            if (in_val[i] !== 1'b0 && in_val[i] !== 1'b1)
                has_x = 1;

        clean_pixel = (has_x) ? 8'd0 : in_val;
    end
endfunction

     
    assign p11 = clean_pixel(i_p11);
    assign p12 = clean_pixel(i_p12);
    assign p13 = clean_pixel(i_p13);
    assign p21 = clean_pixel(i_p21);
    assign p22 = clean_pixel(i_p22);
    assign p23 = clean_pixel(i_p23);
    assign p31 = clean_pixel(i_p31);
    assign p32 = clean_pixel(i_p32);
    assign p33 = clean_pixel(i_p33);
  // ================ BUOC 2: SAP XEP ================================== 
  // SAP XEP HANG 
  SORT_3_MODE   sort_row1 (.i_a(p11), .i_b(p12), .i_c(p13), .o_min(r1_min), .o_mid(r1_mid), .o_max(r1_max));
  SORT_3_MODE   sort_row2 (.i_a(p21), .i_b(p22), .i_c(p23), .o_min(r2_min), .o_mid(r2_mid), .o_max(r2_max));
  SORT_3_MODE   sort_row3 (.i_a(p31), .i_b(p32), .i_c(p33), .o_min(r3_min), .o_mid(r3_mid), .o_max(r3_max));
 // SAP XEP COT 
 
 
  SORT_3_MODE   sort_col1 (.i_a(r1_min), .i_b(r2_min), .i_c(r3_min), .o_min(c1_min), .o_mid(c1_mid), .o_max(c1_max));
  SORT_3_MODE   sort_col2 (.i_a(r1_mid), .i_b(r2_mid), .i_c(r3_mid), .o_min(c2_min), .o_mid(c2_mid), .o_max(c2_max));
  SORT_3_MODE   sort_col3 (.i_a(r1_max), .i_b(r2_max), .i_c(r3_max), .o_min(c3_min), .o_mid(c3_mid), .o_max(c3_max));  
  
  // TIM TRUNG VI   
   
  SORT_3_MODE   MEDIAN (.i_a(c1_max), .i_b(c2_mid), .i_c(c3_min), .o_min(), .o_mid(o_median_temp), .o_max()); 
  
      always @(posedge enable_out) 
      begin 
        if(i_valid) 
        o_median = o_median_temp; 
        else 
        o_median = 8'd0;      
      end 
  
 //assign o_median = (i_valid) ? o_median_temp:8'd0; 
endmodule
