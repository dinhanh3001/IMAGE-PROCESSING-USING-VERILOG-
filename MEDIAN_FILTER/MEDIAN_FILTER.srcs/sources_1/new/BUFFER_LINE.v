`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/06/2025 01:48:36 PM
// Design Name: 
// Module Name: BUFFER_LINE
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

// kich thuoc anh 430 x 554 
module BUFFER_LINE #
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
    input        clk, rst_n; 
    input        i_valid ;         // TIN HIEU BAO PIXEL HOP LE 
    input        clk_ram2;
   // input        enable_counter; S
    input  [7:0] i_pixel;         // DU LIEU VAO 
    
    output [7:0] o_row_1;         // DONG 1 ( CU NHAT - TU RAM 2 ) 
    output [7:0] o_row_2;         // DONG 2 ( O GIUA - TU RAM 1) 
    output [7:0] o_row_3;         // DONG 3 ( MOI NHAT - DONG BO VOI RAM ) 
    output [8:0]      col_counter_check; 
    output            done_buffer; 
    localparam ADDR_WIDTH = $clog2(WIDTH); 
    reg [ADDR_WIDTH:0]      col_counter ;              // DEM SO LUONG PIXEL DA DI VAO (COT) 0->429 
    reg [7:0]               row_3_reg ;             // THANH GHI DONG BO VOI ROW 2 VA RAM 
    
    
 
    // DAY NOI RAM 
    wire [7:0] ram1_out; // DU LIEU THO TU RAM 1 
    wire [7:0] ram2_out; // DU LIEU THO TU RAM 2 

    // --- 1. LOGIC DEM SO LUONG COT ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
        begin 
            col_counter <= 0;
            row_3_reg <=0; 
        end 
        else if (i_valid) begin
            row_3_reg <= i_pixel;
            if (col_counter == WIDTH - 1) 
                col_counter <= 0;
             else 
                col_counter <= col_counter + 1;
        end
    end

 
  ///// // /////// LUU DONG 1 //////////////////////////////
    RAM #(.WIDTH(WIDTH)) RAM1(
        .clk(clk), .we(i_valid),.re(i_valid),.reset(rst_n),
        .addr(col_counter),
        .din(i_pixel),      
        .dout(o_row_2)    
    );

  /////////////// LUU DONG 2 ///////////////////////////
    RAM #(.WIDTH(WIDTH)) RAM2 (
        .clk(clk_ram2), .we(i_valid),.re(i_valid),.reset(rst_n),
        .addr(col_counter-1),
        .din(o_row_2),     
        .dout(o_row_1)      
    );

 assign o_row_3 = row_3_reg; 
assign col_counter_check = col_counter;
endmodule