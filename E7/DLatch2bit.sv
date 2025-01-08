`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 03:42:23 PM
// Design Name: 
// Module Name: DLatch2bit
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


module DLatch2bit(input logic en,
                  input [1:0] D,
                  output reg [1:0] Q
                   );
DLatch1bit D0( .en(en), .D(D[0]), .Q(Q[0]));
DLatch1bit D1(.en(en), .D(D[1]), .Q(Q[1]));   
    
endmodule
