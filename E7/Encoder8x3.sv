`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:51:04 PM
// Design Name: 
// Module Name: Encoder3bit
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


module Encoder8x3(input [7:0] a8,
                    output reg [2:0] out3
                );

    always @(a8) begin
        case(a8)
            8'b00000001: begin out3=3'b000; end
            8'b00000010: begin out3=3'b001; end
            8'b00000100: begin out3=3'b010; end
            8'b00001000: begin out3=3'b011; end
            8'b00010000: begin out3=3'b100; end
            8'b00100000: begin out3=3'b101; end
            8'b01000000: begin out3=3'b110; end
            8'b10000000: begin out3=3'b111; end
        endcase
    end
endmodule
