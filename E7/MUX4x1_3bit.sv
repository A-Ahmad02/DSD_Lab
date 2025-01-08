`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 11:27:09 PM
// Design Name: 
// Module Name: MUX4x1_3bit
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


module MUX4x1_3bit(input [1:0] sel2, 
              input [2:0] in0,in1,in2,in3,
              output reg [2:0] out
    );
    
wire [2:0] out1, out2;
MUX2x1_3bit M0(.sel1(sel2[0]), .in0(in0), .in1(in1), .out(out1));
MUX2x1_3bit M1(.sel1(sel2[0]), .in0(in2), .in1(in3), .out(out2));

MUX2x1_3bit M2(.sel1(sel2[1]), .in0(out1), .in1(out2), .out(out));

endmodule
