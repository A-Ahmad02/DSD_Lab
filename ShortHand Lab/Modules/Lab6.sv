`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2023 08:57:26 PM
// Design Name: 
// Module Name: Lab6
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

module Lab6(output logic [7:0] out8_7Seg, out8_Anodes,
                input logic wr,CLK,rst, 
                input [3:0] num,
                input [2:0] sel
                );
//  num = {a,b,c,d}
//  sel = {x,y,z}
//  out8_7Seg = {A,B,C,D,E,F,G,DP}
//  out8_Anodes = {a0,a1,a2,a3,a4,a5,a6,a7}
wire [2:0] cnt, anode_sel;
wire [3:0] out4, Q[7:0];
wire [7:0] decoded_sel, en;
wire clk; 

DownClocking_100 DC(.clock_in(CLK), .rst(rst), .clock_out(clk));
Counter_3bit C0(.rst(rst), .clk(clk), .cnt(cnt));
MUX2x1_3bit M1(.sel1(wr), .in0(cnt), .in1(sel), .out(anode_sel));

Decoder3x8_Anode Dec0(.a3(anode_sel), .out8(out8_Anodes));
Decoder3x8 Dec2(.a3(sel), .out8(decoded_sel));

for ( genvar i= 0; i < 8; i++) begin
    and AND_de(en[i], wr, decoded_sel[i]);
end

for ( genvar j= 0; j < 8; j++) begin
    D_FlipFlop_4bit DFF(.Q(Q[j]), .clk(clk) , .rst(rst), .en(en[j]), .D(num)); 
end

MUX8x1_4bit M0(.sel3(anode_sel), .in0(Q[0]), .in1(Q[1]), .in2(Q[2]), .in3(Q[3]),.in4(Q[4]), .in5(Q[5]), .in6(Q[6]), .in7(Q[7]), .out(out4));

Decoder4x16_7Seg Dec1(.a4(out4), .out(out8_7Seg));

endmodule
