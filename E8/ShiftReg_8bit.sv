`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 04:09:44 PM
// Design Name: 
// Module Name: ShiftReg_8bit
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


module ShiftReg_8bit(   output [7:0] Q,
                        input logic clk,rst,shift
                );
    
var [7:0] num = 8'b0000_0001;

D_FlipFlop_rst DFF1(.q(Q[0]), .clk(clk) , .reset(rst), .rst_val(num[0]), .enable(shift), .d(Q[7]));   

for ( genvar j = 1; j < 7; j++) begin
    D_FlipFlop_rst DFF(.q(Q[j]), .clk(clk) , .reset(rst), .rst_val(num[j]), .enable(shift), .d(Q[j-1]));  
end

D_FlipFlop_rst DFF2(.q(Q[7]), .clk(clk) , .reset(rst), .rst_val(num[7]), .enable(shift), .d(Q[6]));   

endmodule
