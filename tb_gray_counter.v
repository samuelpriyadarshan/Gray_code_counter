`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 09:28:51 PM
// Design Name: 
// Module Name: tb_gray_counter
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


module tb_gray_counter;

    reg clk;
    
    gray_counter DUT (.clk(clk));
    
    always #5 clk = !clk;
    
    initial begin
        
        clk = 0;
        #350;
        $finish;
        
    end
    
endmodule
