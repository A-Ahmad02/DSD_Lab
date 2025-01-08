`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:51:54 PM
// Design Name: 
// Module Name: Encoder4bit
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


module Encoder16x4(input [15:0] a16,
                    output reg [3:0] out4
                );

    always @(a16) begin
        case(a16)
            16'b0000000000000001: begin out4=4'b0000; end
            16'b0000000000000010: begin out4=4'b0001; end
            16'b0000000000000100: begin out4=4'b0010; end
            16'b0000000000001000: begin out4=4'b0011; end
            16'b0000000000010000: begin out4=4'b0100; end
            16'b0000000000100000: begin out4=4'b0101; end
            16'b0000000001000000: begin out4=4'b0110; end
            16'b0000000010000000: begin out4=4'b0111; end
            16'b0000000100000000: begin out4=4'b1000; end
            16'b0000001000000000: begin out4=4'b1001; end
            16'b0000010000000000: begin out4=4'b1010; end
            16'b0000100000000000: begin out4=4'b1011; end
            16'b0001000000000000: begin out4=4'b1100; end
            16'b0010000000000000: begin out4=4'b1101; end
            16'b0100000000000000: begin out4=4'b1110; end
            16'b1000000000000000: begin out4=4'b1111; end
        endcase
    end
endmodule
