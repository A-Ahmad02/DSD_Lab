`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2023 11:20:50 AM
// Design Name: 
// Module Name: Lab4Task1_tb
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


module Lab4Task1_tb;
logic a;
logic b;
logic c;
logic d;
logic R;
logic G;
logic B;
    
Lab4Task1 UUT(
.a1(a),
.a0(b),
.b1(c),
.b0(d),
.r(R),
.g(G),
.b(B)
);

initial 
begin
$monitor("A=%b%b, B=%b%b, R=%b, G=%b, B=%b", b,a, d,c, R,G,B);
    for (int i=0; i<16; i=i+1) begin
            {a,b,c,d} = i;
            #10;
     end
$stop;
end

endmodule
