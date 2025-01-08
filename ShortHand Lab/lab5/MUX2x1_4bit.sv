`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 05:15:10 PM
// Design Name: 
// Module Name: MUX2x1_4bit
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


module MUX2x1_4bit(input logic sel1, 
                input [3:0] in0, in1,
                output reg [3:0] out
    );
    
    always @(sel1 or in0 or in1) begin
        case(sel1)
            1'b0: begin out= in0 ; end
            1'b1: begin out= in1 ; end
            default: begin out= in0 ; end
        endcase
    end
    
endmodule
