`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:51:29 PM
// Design Name: 
// Module Name: Encoder2bit
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


module Encoder4x2(input [4:0] a4,
                    output reg [1:0] out2
                );
                
    always @(a4) begin
        case(a4)
            4'b0001: begin out2=2'b01; end
            4'b0010: begin out2=2'b01; end
            4'b0100: begin out2=2'b10; end
            4'b1000: begin out2=2'b11; end
        endcase
    end
endmodule
