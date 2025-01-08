`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 05:19:06 PM
// Design Name: 
// Module Name: MUX4x1_4bit
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


module MUX4x1_4bit(input [1:0] sel2, 
              input [3:0] in0,in1,in2,in3,
              output reg [3:0] out
    );
    
wire [3:0] out1, out2;
MUX2x1_4bit M0(.sel1(sel2[0]), .in0(in0), .in1(in1), .out(out1));
MUX2x1_4bit M1(.sel1(sel2[0]), .in0(in2), .in1(in3), .out(out2));

MUX2x1_4bit M2(.sel1(sel2[1]), .in0(out1), .in1(out2), .out(out));

endmodule
