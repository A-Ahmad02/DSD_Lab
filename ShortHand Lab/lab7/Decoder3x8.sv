`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 10:56:22 AM
// Design Name: 
// Module Name: Decoder3bit
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

module Decoder3x8(input [2:0] a3,
                    output reg [7:0] out8
                );

    always @(a3) begin
        case(a3)
            3'b000: begin out8=8'b00000001; end
            3'b001: begin out8=8'b00000010; end
            3'b010: begin out8=8'b00000100; end
            3'b011: begin out8=8'b00001000; end
            3'b100: begin out8=8'b00010000; end
            3'b101: begin out8=8'b00100000; end
            3'b110: begin out8=8'b01000000; end
            3'b111: begin out8=8'b10000000; end
        endcase
    end
endmodule
