`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 08:36:18 AM
// Design Name: 
// Module Name: WINDOW_MANAGE_UINT
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


module WINDOW_MANAGE_UINT#
    (parameter WIDTH = 430,
     parameter HEIGHT = 554,
     parameter DATA_WIDTH = 8)(
     
     input                    clk, 
     input                    clk_ram2,
     input                    rst_n, 
     input [DATA_WIDTH-1:0]   i_row_1, 
     input [DATA_WIDTH-1:0]   i_row_2,
     input [DATA_WIDTH-1:0]   i_row_3,
     
    output [DATA_WIDTH-1:0] o_p11, output [DATA_WIDTH-1:0] o_p12, output [DATA_WIDTH-1:0] o_p13,
    output [DATA_WIDTH-1:0] o_p21, output [DATA_WIDTH-1:0] o_p22, output [DATA_WIDTH-1:0] o_p23,
    output [DATA_WIDTH-1:0] o_p31, output [DATA_WIDTH-1:0] o_p32, output [DATA_WIDTH-1:0] o_p33,
    
    output                   o_window_valid
    );
    wire center_valid; 
    // ========================== TAO CUA SO TRUOT ==========================================
    // LUU CO 1 VA 2 , COT 3 LAY TRUC TIEP TU INPUT 
    
    reg [DATA_WIDTH -1:0] r1_d1, r1_d2; 
    reg [DATA_WIDTH -1:0] r2_d1, r2_d2; 
    reg [DATA_WIDTH -1:0] r3_d1, r3_d2; 
    
    always @(posedge clk_ram2 or negedge rst_n) 
    begin
       if(!rst_n) begin
        r1_d1 <=0;  r1_d2 <=0; 
        r2_d1 <=0;  r2_d2 <=0;
        r3_d1 <=0;  r3_d2 <=0;   
       end  
      else 
      begin
          // dich chuyen tu input -> d1 -> d2 
          // row 1 
          r1_d1 <= i_row_1;  // p12 
          r1_d2 <= r1_d1;    // p11
          // row 2 
          r2_d1 <= i_row_2 ;  // p22 
          r2_d2 <= r2_d1;     // p21 
          
          // row 3 
          r3_d1 <= i_row_3;   //p32  
          r3_d2 <= r3_d1;     // p31 
      end 
    end 
    
    // map thanh ghi ra output 
 assign o_p11 = r1_d2; 
 assign o_p12 = r1_d1; 
 assign o_p13 = i_row_1; 
 
 assign o_p21 = r2_d2; 
 assign o_p22 = r2_d1; 
 assign o_p23 = i_row_2; 
 
 assign o_p31 = r3_d2; 
 assign o_p32 = r3_d1; 
 assign o_p33 = i_row_3; 
 
 // =============================== QUAN LY TOA DO ===================================== 
 reg [$clog2(WIDTH)-1:0] col_cnt; 
 reg [$clog2(HEIGHT)-1:0] row_cnt; 
   
  always @(posedge clk or negedge rst_n) 
  begin
     if(!rst_n) 
     begin
      col_cnt <=0; 
      row_cnt <=0;  
     end 
     else
     begin
        if(col_cnt == WIDTH -1) 
        begin
           col_cnt <=0;
           if(row_cnt == HEIGHT -1) 
             row_cnt <=0; 
           else 
             row_cnt <= row_cnt +1; 
        end  
        else 
        begin
           col_cnt <= col_cnt +1;  
        end 
     end 
  end 
    // ==================== XU LY BIEN ========================================
  assign o_window_valid = ((col_cnt >=2 ) && (row_cnt >=2)) ? 1 :0; 
  
endmodule
