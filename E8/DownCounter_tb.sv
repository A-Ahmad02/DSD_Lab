`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2023 11:36:56 AM
// Design Name: 
// Module Name: DownCounter_tb
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


module DownCounter_tb;

logic rst,clk,wr,shift;
logic [2:0] sel;

DownCounter DC( 
.rst(rst), .clk(clk), .load(wr), 
.sel(sel), .shift(shift));


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
    sel <= 'd0; //Check displaying all characters on Anode0
    @(posedge clk);
    
    sel <= 'd1; //Check displaying all characters on Anode0
    @(posedge clk);
    
    sel <= 'd2; //Check displaying all characters on Anode0
    @(posedge clk);
    
    @(posedge clk);
    repeat(9) @(posedge clk);

    sel <= 'd7; //Check displaying all characters on Anode0
    @(posedge clk);
end

initial  //Moniter
begin
$monitor("sel<=%b, shift<=%b, wr<=%b", sel, shift,wr);
end

endmodule

