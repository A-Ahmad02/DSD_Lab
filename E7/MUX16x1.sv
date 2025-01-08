`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 12:52:41 PM
// Design Name: 
// Module Name: MUX4bit
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


module MUX16x1(input [3:0] sel4, 
                input [15:0] in16,
                output logic out
    );
    
wire out1, out2;
MUX8x1 M0(.sel3(sel4[2:0]), .in8(in16[7:0]),.out(out1));
MUX8x1 M1(.sel3(sel4[2:0]), .in8(in16[15:8]),.out(out2));

MUX2x1 M2(.sel1(sel4[3]), .in2({out2,out1}),.out(out));
endmodule
//    always @(sel4 or in16) begin
//        case(sel4)
//            4'b0000: begin out= in16[0] ; end
//            4'b0001: begin out= in16[1] ; end
//            4'b0010: begin out= in16[2] ; end
//            4'b0011: begin out= in16[3] ; end
//            4'b0100: begin out= in16[4] ; end
//            4'b0101: begin out= in16[5] ; end
//            4'b0110: begin out= in16[6] ; end
//            4'b0111: begin out= in16[7] ; end
//            4'b1000: begin out= in16[8] ; end
//            4'b1001: begin out= in16[9] ; end
//            4'b1010: begin out= in16[10] ; end
//            4'b1011: begin out= in16[11] ; end
//            4'b1100: begin out= in16[12] ; end
//            4'b1101: begin out= in16[13] ; end
//            4'b1110: begin out= in16[14] ; end
//            4'b1111: begin out= in16[15] ; end
//        endcase
//    end

