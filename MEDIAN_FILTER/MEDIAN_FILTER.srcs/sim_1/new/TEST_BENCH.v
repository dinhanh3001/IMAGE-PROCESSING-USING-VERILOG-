`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057
// 
// Create Date: 12/09/2025 12:01:41 AM
// Design Name: 
// Module Name: TEST_BENCH
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
module IMAGE_PROCESSING_MEDIAN#(
   parameter WIDTH = 430,
   parameter HEIGHT = 554,
   parameter DATA_WIDTH = 8
    )
    (
    clk, 
    clk_ram2, 
    rst_n , 
    i_valid, 
    i_pixel,
    col_counter_check,
    out_median_filter 
    );*/
module TEST_BENCH(

    );
    
   reg clk;
   reg clk_ram2; 
   reg rst_n ; 
   reg i_valid; 
   reg enable_out;
   reg[7:0] i_pixel; 
   wire [8:0] col_counter_check;
   wire [7:0] out_median_filter; 
   wire o_window_valid;   
   
   IMAGE_PROCESSING_MEDIAN#(
   .WIDTH(430),
   .HEIGHT(554),
   .DATA_WIDTH(8)
    ) UUT
    (
    .clk(clk), 
    .clk_ram2(clk_ram2), 
    .rst_n(rst_n) , 
    .i_valid(i_valid),
    .enable_out(enable_out), 
    .i_pixel(i_pixel),
    .col_counter_check(col_counter_check),
    .out_median_filter(out_median_filter),
    .o_window_valid(o_window_valid) 
    );   
     
   localparam NUM_PIXELS = 430 * 554;
    
    integer i; 
    reg [7:0] IMG_MEMORY [0 : NUM_PIXELS - 1]; 

    
    always #5 clk = ~clk; 
    
    initial 
    begin
      clk_ram2 = 0; 
      #4; 
      forever #5 clk_ram2 = ~clk_ram2; 
    end 
    
    initial begin
     enable_out= 0; 
     #2; 
     forever #5 enable_out = ~enable_out;  
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
        
        #10; 
        i_valid = 0;
        #100;
        $stop;
    end 
  
  
    integer file_out; 
    initial file_out = $fopen("E:/HE_THONG_SO_HDL/THUC_HANH/LAB_2_VIVADO/BAI_1/output_image.hex","w"); 
    
    always @(posedge enable_out) 
    begin
     if(o_window_valid)
       $fwrite (file_out,"%02x\n",out_median_filter); 
    end 
endmodule
