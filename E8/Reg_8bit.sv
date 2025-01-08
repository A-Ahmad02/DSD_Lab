`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 04:22:27 PM
// Design Name: 
// Module Name: Reg_8bit
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


module Reg_8bit(   output [7:0] Q,
                    input logic clk,rst,wr,
                    input [7:0] D
                );
    
var [7:0] num = 'hFF;

for ( genvar j = 0; j < 8; j++) begin
    D_FlipFlop_rst DFF(.q(Q[j]), .clk(clk) , .reset(rst), .rst_val(num[j]), .enable(wr), .d(D[j]));   

end

endmodule
