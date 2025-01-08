`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 03:42:46 PM
// Design Name: 
// Module Name: DLatch3bit
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


module DLatch3bit(input logic en,
                  input [2:0] D,
                  output reg [2:0] Q
                   );
DLatch2bit D0( .en(en), .D(D[1:0]), .Q(Q[1:0]));
DLatch1bit D1(.en(en), .D(D[2]), .Q(Q[2])); 

endmodule
