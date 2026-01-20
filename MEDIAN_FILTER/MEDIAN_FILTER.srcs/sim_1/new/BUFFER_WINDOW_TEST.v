`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/08/2025 03:22:42 PM
// Design Name: 
// Module Name: BUFFER_WINDOW_TEST
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
    input [8:0] col_counter_check; 
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
    
*/ 

module BUFFER_WINDOW_TEST(

    );
   reg clk;
   reg clk_ram2; 
   reg rst_n ; 
   reg i_valid; 
   reg[7:0] i_pixel; 
   wire [8:0] col_counter_check;
   wire [7:0]  o_p11; 
   wire [7:0] o_p12;
   wire [7:0] o_p13;
   wire [7:0] o_p21;
   wire [7:0] o_p22;
   wire [7:0] o_p23;
   wire [7:0] o_p31;
   wire [7:0] o_p32;
   wire [7:0] o_p33; 
   wire o_window_valid;
   
   BUFFER_WINDOW TEST(
    .clk(clk), 
    .clk_ram2(clk_ram2), 
    .rst_n(rst_n), 
    .i_valid(i_valid), 
    .i_pixel(i_pixel), 
    .col_counter_check(col_counter_check),
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
     localparam NUM_PIXELS = 430 * 554;
    
    integer i; 
    reg [7:0] IMG_MEMORY [0 : NUM_PIXELS - 1]; 

    // TAO clock 10ns (100MHz)
    always #5 clk = ~clk; 
    
    initial 
    begin
      clk_ram2 = 0; 
      #4; 
      forever #5 clk_ram2 = ~clk_ram2; 
    end 
    
    initial begin
       clk = 0;
        rst_n = 0;
        i_valid = 0;
        
        $readmemh("E:/HE_THONG_SO_HDL/THUC_HANH/LAB_2_VIVADO/BAI_1/input_image.hex", IMG_MEMORY);

        #13;
        rst_n = 1;  
        
       
 
        for(i = 0; i < NUM_PIXELS; i = i + 1) begin 
           i_valid = 1; 
            
            i_pixel = IMG_MEMORY[i]; 
            @(posedge clk); 
        end 
        
        
        i_valid = 0;
        #100;
        $stop;
    end 

endmodule
