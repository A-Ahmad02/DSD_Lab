`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 03:43:15 PM
// Design Name: 
// Module Name: DLatch4bit
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


module DLatch4bit(input logic en,
                  input [3:0] D,
                  output reg [3:0] Q
                   );
DLatch2bit D0( .en(en), .D(D[1:0]), .Q(Q[1:0]));
DLatch2bit D1(.en(en), .D(D[3:2]), .Q(Q[3:2])); 

endmodule
