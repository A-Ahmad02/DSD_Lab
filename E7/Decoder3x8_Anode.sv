`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 01:05:50 PM
// Design Name: 
// Module Name: Decoder3x8_Anode
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


module Decoder3x8_Anode(input [2:0] a3,
                    output reg [7:0] out8
                );

    always @(a3) begin
        case(a3)
            3'b000: begin out8=8'b11111110; end
            3'b001: begin out8=8'b11111101; end
            3'b010: begin out8=8'b11111011; end
            3'b011: begin out8=8'b11110111; end
            3'b100: begin out8=8'b11101111; end
            3'b101: begin out8=8'b11011111; end
            3'b110: begin out8=8'b10111111; end
            3'b111: begin out8=8'b01111111; end
        endcase
    end
endmodule
