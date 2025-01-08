`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 05:49:13 PM
// Design Name: 
// Module Name: MUX8x1_8bit
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


module MUX8x1_8bit(input [2:0] sel3, 
                input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,
                output reg [7:0] out
    );
    
wire [7:0] out1, out2;
MUX4x1 M0(.sel2(sel3[1:0]), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .out(out1));
MUX4x1 M1(.sel2(sel3[1:0]), .in0(in4), .in1(in5), .in2(in6), .in3(in7), .out(out2));

MUX2x1 M2(.sel1(sel3[2]),  .in0(out1), .in1(out2), .out(out));

endmodule
