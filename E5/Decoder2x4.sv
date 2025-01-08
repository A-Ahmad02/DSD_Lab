`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:34:56 PM
// Design Name: 
// Module Name: Decoder2bit
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


module Decoder2x4(input [1:0] a2,
                    output reg [3:0] out4
                );
always @(a2) begin
        case(a2)
            2'b00: begin out4=4'b0001; end
            2'b01: begin out4=4'b0010; end
            2'b10: begin out4=4'b0100; end
            2'b11: begin out4=4'b1000; end
        endcase
    end
    
endmodule

