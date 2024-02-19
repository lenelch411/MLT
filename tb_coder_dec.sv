`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 10:46:28
// Design Name: 
// Module Name: tb_coder_dec
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


module tb_coder_dec();
reg data1;
reg [1:0] out;
reg clk; 
wire data2;
wire error;

coder test1(
.out(out), 
.clk(clk), 
.data(data1));

dec test2(
.out(out), 
.clk(clk), 
.data(data2),
.error(error));

    always #5 clk = ~ clk;
        
    initial begin
    clk = 1;
    #5
    data1 =  1;
    #10
    data1 = 1;
    #10
    data1 = 1;
    #10
    data1 = 0;
    
    
    #10
    data1 =  1;
    #10
    data1 = 0;
    #10
    data1 = 1;
    #10
    data1 = 0;
    
    #10
    data1 =  1;
    #10
    data1 = 0;
    #10
    data1 = 0;
    #10
    data1 = 1;
    
    
    #10
    data1 =  1;
    #10
    data1 = 0;
    #10
    data1 = 0;
    #10
    data1 = 0;
    
    #10
    data1 =  1;
    #10
    data1 = 1;
    #10
    data1 = 0;
    #10
    data1 = 1;
    #10
    data1 =  1;
    #10
    data1 = 0;
    #10
    data1 = 1;
    #10
    data1 = 1;
    
    #10
    data1 =  0;
    #10
    data1 = 0;
    #10
    data1 = 0;
    #10
    data1 = 1;    
    end

endmodule
