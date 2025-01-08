`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 07:43:31 AM
// Design Name: 
// Module Name: ShiftReg_4bit
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


module ShiftReg_4bit(output [3:0] Q,
                    input logic clk, rst, en, 
                    input [3:0] D
                    );
                    
D_FlipFlop DFF0(.q(Q[0]), .clk(clk) , .reset(rst), .enable(en), .d(D));
D_FlipFlop DFF1(.q(Q[1]), .clk(clk) , .reset(rst), .enable(en), .d(Q[0]));
D_FlipFlop DFF2(.q(Q[2]), .clk(clk) , .reset(rst), .enable(en), .d(Q[1]));
D_FlipFlop DFF3(.q(Q[3]), .clk(clk) , .reset(rst), .enable(en), .d(Q[2]));

endmodule
