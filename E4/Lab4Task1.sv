`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2023 11:20:10 AM
// Design Name: 
// Module Name: Lab4Task1
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


module Lab4Task1(output logic r,g,b,
    input logic a0,a1,b0,b1
    );

    assign r = ((~a1 & ~a0) | (b1 & b0)) | (~a1 & b1) | ((~a0 & b1) | (~a1 & b0));
    assign b = ((a1 & a0) | (~b1 & ~b0)) | (a1 & ~b1) | ((a0 & ~b1) | (a1 & ~b0));
    assign g = ((a0 & ~b0) | (a1 & ~b1)) | ((~a0 & b0) | (~a1 & b1)) ;
endmodule
