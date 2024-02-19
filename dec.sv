`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 00:41:18
// Design Name: 
// Module Name: dec
// Project Name: 
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


module dec(
input logic [1:0] out,
input logic clk, 
output logic data,
output logic [1:0] out_t,
output logic error
    );
 initial begin
 out_t <= 2'b00;
 error <= 0;
 end   
     always @(negedge clk) begin
     
         if(out == 2'b11)
         error <= 1;
         
         else begin
             if (out == out_t)begin
             data <= 0;
             out_t <= out;          
             end
             if (out != out_t) begin
             data <= 1;
             out_t <= out;
             end
         end
     end


 
endmodule
