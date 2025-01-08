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

module Lab6(output reg [7:0] out8_7Seg, out8_Anodes,
                input logic wr,CLK,rst, 
                input [3:0] num,
                input [2:0] sel
                );
//  num = {a,b,c,d}
//  sel = {x,y,z}
//  out8_7Seg = {A,B,C,D,E,F,G,DP}
//  out8_Anodes = {a0,a1,a2,a3,a4,a5,a6,a7}
wire [3:0] out4, Q[7:0];
wire [7:0] decoded_sel, en;
wire clk; 

DownClocking DC(.clock_in(CLK), .rst(rst), .clock_out(clk));

Decoder3x8_Anode Dec0(.a3(sel), .out8(out8_Anodes));

not NOT_de0(decoded_sel[0], out8_Anodes[0]);
not NOT_de1(decoded_sel[1], out8_Anodes[1]);
not NOT_de2(decoded_sel[2], out8_Anodes[2]);
not NOT_de3(decoded_sel[3], out8_Anodes[3]);
not NOT_de4(decoded_sel[4], out8_Anodes[4]);
not NOT_de5(decoded_sel[5], out8_Anodes[5]);
not NOT_de6(decoded_sel[6], out8_Anodes[6]);
not NOT_de7(decoded_sel[7], out8_Anodes[7]);

and AND_de0(en[0], wr, decoded_sel[0]);
and AND_de1(en[1], wr, decoded_sel[1]);
and AND_de2(en[2], wr, decoded_sel[2]);
and AND_de3(en[3], wr, decoded_sel[3]);
and AND_de4(en[4], wr, decoded_sel[4]);
and AND_de5(en[5], wr, decoded_sel[5]);
and AND_de6(en[6], wr, decoded_sel[6]);
and AND_de7(en[7], wr, decoded_sel[7]);

D_FlipFlop_4bit DFF0(.Q(Q[0]), .clk(clk) , .rst(rst), .en(en[0]), .D(num));
D_FlipFlop_4bit DFF1(.Q(Q[1]), .clk(clk) , .rst(rst), .en(en[1]), .D(num));
D_FlipFlop_4bit DFF2(.Q(Q[2]), .clk(clk) , .rst(rst), .en(en[2]), .D(num));
D_FlipFlop_4bit DFF3(.Q(Q[3]), .clk(clk) , .rst(rst), .en(en[3]), .D(num));
D_FlipFlop_4bit DFF4(.Q(Q[4]), .clk(clk) , .rst(rst), .en(en[4]), .D(num));
D_FlipFlop_4bit DFF5(.Q(Q[5]), .clk(clk) , .rst(rst), .en(en[5]), .D(num));
D_FlipFlop_4bit DFF6(.Q(Q[6]), .clk(clk) , .rst(rst), .en(en[6]), .D(num));
D_FlipFlop_4bit DFF7(.Q(Q[7]), .clk(clk) , .rst(rst), .en(en[7]), .D(num));

MUX8x1_4bit M0(.sel3(sel), .in0(Q[0]), .in1(Q[1]), .in2(Q[2]), .in3(Q[3]),.in4(Q[4]), .in5(Q[5]), .in6(Q[6]), .in7(Q[7]), .out(out4));

Decoder4x16_7Seg Dec1(.a4(out4), .out(out8_7Seg));

endmodule


//for ( genvar i= 0; i < 8; i++) begin
//    and AND_de(en[i], wr, decoded_sel[i]);
//end

//for ( genvar j= 0; j < 8; j++) begin
//    D_FlipFlop_4bit DFF(.Q(Q[j]), .clk(clk) , .rst(rst), .en(en[j]), .D(num)); 
//end