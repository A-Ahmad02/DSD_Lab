`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 12:23:12 PM
// Design Name: 
// Module Name: Lab4b_inverted_tb
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


module Lab4b_inverted_tb;

logic a;
logic b;
logic c;
logic d;

logic x;
logic y;
logic z;

logic A;
logic B;
logic C;
logic D;
logic E;
logic F;
logic G;
logic DP;

logic a0;
logic a1;
logic a2;
logic a3;
logic a4;
logic a5;
logic a6;
logic a7;
    
Lab4b_inverted UUT(
.a(a),
.b(b),
.c(c),
.d(d),
.x(x),
.y(y),
.z(z),
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
.a3(a3),
.a4(a4),
.a5(a5),
.a6(a6),
.a7(a7)
);

initial 
begin
$monitor("num=%b%b%b%b, sel=%b%b%b, ABCDEFG=%b%b%b%b%b%b%b, AN=%b%b%b%b%b%b%b%b ", a,b,c,d, x,y,z, A,B,C,D,E,F,G, a0,a1,a2,a3,a4,a5,a6,a7);
    for (int i=0; i<16; i=i+1) begin
            {a,b,c,d} = i;
            for (int i=0; i<8; i=i+1) begin
                    {x,y,z} = i;
                    #5;
             end
     end 
$stop;
end

endmodule