`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 21:36:25
// Design Name: 
// Module Name: coder
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


module coder(
input logic clk, data,
output logic [1:0] count,
output logic [1:0] out
    );
    initial begin
    count <= 2'b00;
    out <= 2'b00;

    end
    always @(negedge clk) begin  
    if (data ==  0)
    out <= out;
    
    if (data == 1)begin

        case(count)
        2'b00: out <= 2'b10;
        2'b01: out <= 2'b00;
        2'b10: out <= 2'b01;
        2'b11: out <= 2'b00;
        endcase
        count <= count + 1;
      
        end



    end
    
endmodule
