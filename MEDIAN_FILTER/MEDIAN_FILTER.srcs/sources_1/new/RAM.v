`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: NGUYEN DINH ANH - 23520057 
// 
// Create Date: 12/06/2025 02:45:53 PM
// Design Name: 
// Module Name: RAM
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


module RAM #(
        parameter WIDTH      = 430,
        parameter DATA_WIDTH = 8 )
   (
        input                      clk, 
        input                      we,re,                  // cho phep ghi /doc 
        input                      reset,
        input [$clog2(WIDTH)-1:0]  addr,             
        
        input [DATA_WIDTH -1:0]    din,                 // du lieu vao 
        output reg [DATA_WIDTH-1:0] dout               // du lieu ra  
    );
        reg [DATA_WIDTH -1:0] MEMORY [0:WIDTH -1]; 
        
        always @(posedge clk or negedge reset) 
        begin
        if(!reset) 
        begin 
          MEMORY[0] <=0; 
        end 
        else begin 
          if(re) 
          begin
              dout <= MEMORY[addr];
            if(we) begin 
              MEMORY[addr] <= din;               // ghi gia tri moi vao  
             end 
          end  
        end 
       end 
endmodule
