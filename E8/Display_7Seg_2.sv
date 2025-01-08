`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 09:35:06 PM
// Design Name: 
// Module Name: Display_7Seg_2
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


module Display_7Seg_2(output logic [7:0] out8_7Seg, 
                output logic [7:0] out2_Anodes,
                input logic wr,clk,rst, 
                input [7:0] num
                );
//  out8_7Seg = {A,B,C,D,E,F,G,DP}
//  out8_Anodes = {a1,a0}
wire anode_sel;
wire [3:0] out4;
wire [7:0] Q;

Counter_1bit C0(.rst(rst), .clk(clk), .cnt(anode_sel));

always @(anode_sel) begin
    case(anode_sel)
        1'b0: out2_Anodes=8'b11111110;
        1'b1: out2_Anodes=8'b11111101;
    endcase
end

Reg_8bit DFF1(.Q(Q), .clk(clk) , .rst(rst), .wr(wr), .D(num[7:0]));  

MUX2x1_4bit M0(.sel1(anode_sel), .in0(Q[3:0]), .in1(Q[7:4]), .out(out4));

Decoder4x16_7Seg Dec1(.a4(out4), .out(out8_7Seg));

endmodule


