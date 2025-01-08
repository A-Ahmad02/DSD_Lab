`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 10:31:23 AM
// Design Name: 
// Module Name: Decoder1x2
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


module Decoder1x2(input logic a1,
                    output reg [1:0] out2
                );

    always @(a1) begin
        case(a1)
            1'b0: begin out2=2'b01; end
            1'b1: begin out2=2'b10; end
        endcase
    end
endmodule
