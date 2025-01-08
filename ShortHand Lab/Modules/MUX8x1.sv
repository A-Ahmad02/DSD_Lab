`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:52:20 PM
// Design Name: 
// Module Name: MUX3bit
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


module MUX8x1(input [2:0] sel3, 
                input [7:0] in8,
                output logic out
    );
    
wire out1, out2;
MUX4x1 M0(.sel2(sel3[1:0]), .in4(in8[3:0]),.out(out1));
MUX4x1 M1(.sel2(sel3[1:0]), .in4(in8[7:4]),.out(out2));

MUX2x1 M2(.sel1(sel3[2]), .in2({out2,out1}),.out(out));
endmodule

//    always @(sel3 or in8) begin
//        case(sel3)
//            3'b000: begin out= in8[0] ; end
//            3'b001: begin out= in8[1] ; end
//            3'b010: begin out= in8[2] ; end
//            3'b011: begin out= in8[3] ; end
//            3'b100: begin out= in8[4] ; end
//            3'b101: begin out= in8[5] ; end
//            3'b110: begin out= in8[6] ; end
//            3'b111: begin out= in8[7] ; end
//        endcase
//    end
