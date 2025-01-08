`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2023 10:14:37 PM
// Design Name: 
// Module Name: Decoder4x16_7Seg
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


module Decoder4x16_7Seg(input [3:0] a4,
                    output reg [7:0] out
                );

    always @(a4) begin
        case(a4)            // out = {A,B,C,D,E,F,G,DP}                      
            4'b0000: begin out=8'b00000011; end
            4'b0001: begin out=8'b10011111; end
            4'b0010: begin out=8'b00100101; end
            4'b0011: begin out=8'b00001101; end
            4'b0100: begin out=8'b10011001; end
            4'b0101: begin out=8'b01001001; end
            4'b0110: begin out=8'b01000001; end
            4'b0111: begin out=8'b00011111; end
            4'b1000: begin out=8'b00000001; end
            4'b1001: begin out=8'b00001001; end
            4'b1010: begin out=8'b00010001; end
            4'b1011: begin out=8'b11000001; end
            4'b1100: begin out=8'b01100011; end
            4'b1101: begin out=8'b10000101; end
            4'b1110: begin out=8'b01100001; end
            4'b1111: begin out=8'b01110001; end
            default: begin out=8'b11111111; end
        endcase
    end
    
endmodule
