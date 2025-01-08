`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2023 10:09:03 PM
// Design Name: 
// Module Name: D_FlipFlop4bit
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


module D_FlipFlop_4bit_rst(output [3:0] Q,
                    input logic clk, rst, en, 
                    input [3:0] D, rst_val
                    );
                    
D_FlipFlop_rst DFF0(.q(Q[0]), .clk(clk) , .reset(rst), .rst_val(rst_val[0]), .enable(en), .d(D[0]));
D_FlipFlop_rst DFF1(.q(Q[1]), .clk(clk) , .reset(rst), .rst_val(rst_val[1]), .enable(en), .d(D[1]));
D_FlipFlop_rst DFF2(.q(Q[2]), .clk(clk) , .reset(rst), .rst_val(rst_val[2]), .enable(en), .d(D[2]));
D_FlipFlop_rst DFF3(.q(Q[3]), .clk(clk) , .reset(rst), .rst_val(rst_val[3]), .enable(en), .d(D[3]));

endmodule
