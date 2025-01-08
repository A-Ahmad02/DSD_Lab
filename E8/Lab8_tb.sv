`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 10:30:45 PM
// Design Name: 
// Module Name: Lab8_tb
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


module Lab8_tb;
  
logic [7:0] Seg;
logic [7:0]  Anodes;
logic [2:0] sel;
logic wr, clk, clk2, rst,num;


Lab8 UUT(
.bit_value(num), 
.valid_in(wr), .CLK(clk2), .rst(rst),
.bit_index(sel), 
.Seg(Seg),
.Anodes(Anodes)
);

initial // All initial blocks run in parallel
begin
    //initial value of clock
    clk2 = 1'b0;
    #5;
    //generating clock signal
    forever #5 clk2 = ~clk2;
end

initial 
begin
    //initial value of clock
    clk = 1'b0;
    #5000000;
    //generating Downclocked clock signal
    forever #5000000 clk = ~clk;
end

initial  //Driver
begin
    rst = 1'b1;
    @(posedge clk);
    rst = 1'b0;
    @(posedge clk);

    wr <= 1'b1;
    sel <= 'd7; //Check displaying all characters on Anode0
    num <= 'b0;
    @(posedge clk);
    
    sel <= 'd1; //Check displaying all characters on Anode0
    num <= 'b0;
    @(posedge clk);
    repeat(9) @(posedge clk);
    
//    sel <= 'd2; //Check displaying all characters on Anode0
//    num <= 'b0;
//    @(posedge clk);
    
//    sel <= 'd3; //Check displaying all characters on Anode0
//    num <= 'b0;
//    @(posedge clk);
    
//    sel <= 'd4; //Check displaying all characters on Anode0
//    num <= 'b0;
//    @(posedge clk);
    
//    sel <= 'd5; //Check displaying all characters on Anode0
//    num <= 'b1;
//    @(posedge clk);
    
//    sel <= 'd6; //Check displaying all characters on Anode0
//    num <= 'b1;
//    @(posedge clk);
    
    sel <= 'd7; //Check displaying all characters on Anode0
    num <= 'b1;
    @(posedge clk);

     
//    wr <= 1'b0;
    repeat(9) @(posedge clk);

end

initial  //Moniter
begin
$monitor("num<=%b, sel<=%b, ABCDEFG(DP)<=%b, AN<=%b ", num, sel, Seg, Anodes);
end

endmodule

