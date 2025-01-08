`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 08:19:55 PM
// Design Name: 
// Module Name: Lab5_tb
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


module Lab5_tb;

logic a;
logic b;
logic c;
logic d;
logic en;

logic x;
logic y;

reg A;
reg B;
reg C;
reg D;
reg E;
reg F;
reg G;
reg DP;

logic a0;
logic a1;
logic a2;
logic a3;
    
Lab5 UUT(
.a(a),
.b(b),
.c(c),
.d(d),
.en(en),
.x(x),
.y(y),
.A(A),
.B(B),
.C(C),
.D(D),
.E(E),
.F(F),
.G(G), 
.DP(DP),
.a0(a0),
.a1(a1),
.a2(a2),
.a3(a3)
);

initial 
begin
$monitor("num=%b%b%b%b, sel=%b%b, ABCDEFG=%b%b%b%b%b%b%b, AN=%b%b%b%b ", a,b,c,d, x,y, A,B,C,D,E,F,G, a0,a1,a2,a3);
    
    en = 1'b1;
    {a,b,c,d} = 1; //Check displaying char 0 on all 7-segments
    for (int i=0; i<4; i=i+1) begin
            {x,y} = i;
            #5;
     end
    
    {x,y} = 0; //Check displaying all characters on Anode0
    #5;
    {a,b,c,d} = 5;

    {x,y} = 1; //Check displaying all characters on Anode0
    #5;
    {a,b,c,d} = 14;

    {x,y} = 2; //Check displaying all characters on Anode0
    #5;
    {a,b,c,d} = 1;

    {x,y} = 3; //Check displaying all characters on Anode0
    #5;
    {a,b,c,d} = 0;

    #5;
    en = 1'b0; 
     
    {a,b,c,d} = 0; //Check displaying char 0 on all 7-segments
    for (int i=0; i<4; i=i+1) begin
            {x,y} = i;
            #5;
     end
$stop;
end
endmodule
