`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2023 04:08:21 PM
// Design Name: 
// Module Name: Lab5
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


module Lab5( output reg A,B,C,D,E,F,G,DP, a0,a1,a2,a3,
                input logic x,y, a,b,c,d, en
    );
wire [3:0] num = {a,b,c,d};
wire [1:0] sel = {x,y};
wire [15:0] out;
wire [3:0] decoder_enable, out4;
wire en_dlatch0, en_dlatch1, en_dlatch2, en_dlatch3;
wire [3:0] dlatch_MUX0, dlatch_MUX1, dlatch_MUX2, dlatch_MUX3;

Decoder2x4 D0(.a2(sel), .out4(decoder_enable));

and AND_de0(en_dlatch0, en, decoder_enable[0]);
and AND_de1(en_dlatch1, en, decoder_enable[1]);
and AND_de2(en_dlatch2, en, decoder_enable[2]);
and AND_de3(en_dlatch3, en, decoder_enable[3]);

DLatch4bit DL0(.en(en_dlatch0),.D(num),.Q(dlatch_MUX0));
DLatch4bit DL1(.en(en_dlatch1),.D(num),.Q(dlatch_MUX1));
DLatch4bit DL2(.en(en_dlatch2),.D(num),.Q(dlatch_MUX2));
DLatch4bit DL3(.en(en_dlatch3),.D(num),.Q(dlatch_MUX3));

MUX4x1_4bit M0(.sel2(sel), .in0(dlatch_MUX0), .in1(dlatch_MUX1), .in2(dlatch_MUX2), .in3(dlatch_MUX3), .out(out4));

Decoder4x16 D1(.a4(out4), .out(out));

or or_A(A, out[1],out[4],out[11],out[13]);
or or_B(B, out[5],out[6],out[11],out[12],out[14],out[15]);
or or_C(C, out[2],out[12],out[14],out[15]);
or or_D(D, out[1],out[4],out[7],out[10],out[15]);
or or_E(E, out[1],out[3],out[4],out[5],out[7],out[9]);
or or_F(F, out[1],out[2],out[3],out[7],out[13]);
or or_G(G, out[0],out[1],out[7],out[12]);
or or_DP(DP, 0);
assign {a0,a1,a2,a3} = ~decoder_enable;
//assign {A,B,C,D,E,F,G,DP} = out;

endmodule
