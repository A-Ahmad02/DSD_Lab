`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 09:21:24 AM
// Design Name: 
// Module Name: ShiftReg_16x4bit
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


module ShiftReg_16x4bit(output [3:0] Q[7:0],
                    input logic clk, rst, en, 
                    input [3:0] D[15:0]
                    );
                    
wire [3:0] d[15:0];
ShiftReg_4bit DFF0(.Q(d[15]), .clk(clk) , .rst(rst), .en(en), .D(d[0]));  
for ( genvar j = 1; j < 16; j++) begin
    ShiftReg_4bit DFF(.Q(d[j-1]), .clk(clk) , .rst(rst), .en(en), .D(d[j]));  
end
assign Q = d[7:0];
endmodule

