`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 11:26:15 PM
// Design Name: 
// Module Name: MUX2x1_3bit
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


module MUX2x1_3bit(input logic sel1, 
                input [2:0] in0, in1,
                output logic [2:0] out
    );
    
    always @(sel1 or in0 or in1) begin
        case(sel1)
            1'b0: begin out = in0 ; end
            1'b1: begin out = in1 ; end
            default: begin out = in0 ; end
        endcase
    end
    
endmodule
