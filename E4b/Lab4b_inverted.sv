`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 12:20:18 PM
// Design Name: 
// Module Name: Lab4b_inverted
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


module Lab4b_inverted( output logic A,B,C,D,E,F,G,DP, a0,a1,a2,a3,a4,a5,a6,a7,
                input logic x,y,z, a,b,c,d
    );
    
    assign a7 = x & y & z ;
    assign a6 = x & y & ~z ;
    assign a5 = x & ~y & z ;
    assign a4 = x & ~y & ~z ;
    assign a3 = ~x & y & z ;
    assign a2 = ~x & y & ~z ;
    assign a1 = ~x & ~y & z ;    
    assign a0 = ~x & ~y & ~z ;
    
    assign A = ( (~a & ~b & ~c & d) | (~a & b & ~c & ~d) ) | ( (a & b & ~c & d) | (a & ~b & c & d) );
    assign B = ( (~a & b & ~c & d ) | ( a & b & ~d ) ) | ( ( a & c & d ) | ( b & c & ~d) ) ; 
    assign C = (a & b & ~d ) | ( a & b & c ) | ( ~a & ~b & c & ~d) ;
    assign D = ( (~a & b & ~c & ~d ) | (  ~a & ~b & ~c & d ) ) | ( ( a & ~b & c & ~d ) | ( b & c & d) ) ;	
    assign E = (~a & b & ~c ) | ( ~b & ~c & d ) | ( ~a & d) ; 
    assign F =( (a & b & ~c & d ) | ( ~a & ~b & d ) ) | ( ( ~a & ~b & c ) | ( ~a & c & d) ) ; 
    assign G = (~a & ~b & ~c ) | ( ~a & b & c & d ) | (a & b & ~c & ~d) ; 
    assign DP = 1;
    

endmodule

