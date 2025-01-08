`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 12:41:53 PM
// Design Name: 
// Module Name: Lab6_tb
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


module Lab6_tb;
  
logic A,B,C,D,E,F,G,DP, a0,a1,a2,a3,a4,a5,a6,a7;
logic x,y,z, a,b,c,d, wr,clk,rst;
localparam p = 10000000;


Lab6 UUT(
.num({a,b,c,d}), 
.wr(wr), .CLK(clk), .rst(rst),
.sel({x,y,z}), 
.out8_7Seg({A,B,C,D,E,F,G,DP}),
.out8_Anodes({a0,a1,a2,a3,a4,a5,a6,a7})
);

initial
begin
    //initial value of clock
    rst = 1'b1;
    clk = 1'b0;
    #5;
    rst = 1'b0;
    //generating clock signal
    forever #5 clk = ~clk;
end

initial  //Driver
begin
$monitor("num=%b%b%b%b, sel=%b%b%b, ABCDEFG(DP)=%b%b%b%b%b%b%b%b, AN=%b%b%b%b%b%b%b%b ", a,b,c,d, x,y,z, A,B,C,D,E,F,G,DP, a0,a1,a2,a3,a4,a5,a6,a7);

    wr = 1;
    {x,y,z} = 0; //Check displaying all characters on Anode0
    {a,b,c,d} = 2;
    #p;
    
    {x,y,z} = 1; //Check displaying all characters on Anode0
    {a,b,c,d} = 5;
    #p;
    
    {x,y,z} = 2; //Check displaying all characters on Anode0
    {a,b,c,d} = 14;
    #p;
    
    {x,y,z} = 3; //Check displaying all characters on Anode0
    {a,b,c,d} = 14;
    #p;
    
    {x,y,z} = 4; //Check displaying all characters on Anode0
    {a,b,c,d} = 1;
    #p;
    
    {x,y,z} = 5; //Check displaying all characters on Anode0
    {a,b,c,d} = 2;
    #p;
    
    {x,y,z} = 6; //Check displaying all characters on Anode0
    {a,b,c,d} = 0;
    #p;
    
    {x,y,z} = 7; //Check displaying all characters on Anode0
    {a,b,c,d} = 2;
    #p;
//    for (int i=0; i<16; i=i+1) begin
//            {a,b,c,d} = i;
//            #p;
//     end 
     
    wr = 0;
//    for (int i=0; i<16; i=i+1) begin
//            {a,b,c,d} = i;
//            #p;
//     end 
     
//    {a,b,c,d} = 1; //Check displaying 1 on 7-segments
//    for (int i=0; i<8; i=i+1) begin
//            {x,y,z} = i;
//            #p;
//     end

end

endmodule