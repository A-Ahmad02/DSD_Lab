`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:45:40 PM
// Design Name: 
// Module Name: MUX2bit
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


module MUX4x1(input [1:0] sel2, 
              input [3:0] in4,
              output logic out
    );
    
wire out1, out2;
MUX2x1 M0(.sel1(sel2[0]), .in2(in4[1:0]),.out(out1));
MUX2x1 M1(.sel1(sel2[0]), .in2(in4[3:2]),.out(out2));

MUX2x1 M2(.sel1(sel2[1]), .in2({out2,out1}),.out(out));

endmodule

//    always @(sel2 or in4) begin
//        case(sel2)
//            2'b00: begin out= in4[0] ; end
//            2'b01: begin out= in4[1] ; end
//            2'b10: begin out= in4[2] ; end
//            2'b11: begin out= in4[3] ; end
//        endcase
//    end
