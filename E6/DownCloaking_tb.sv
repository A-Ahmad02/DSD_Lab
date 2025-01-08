`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 11:36:49 AM
// Design Name: 
// Module Name: DownCloaking_tb
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


module DownCloaking_tb;

logic clk, CLK, rst;

DownClocking DC(.clock_in(clk), .rst(rst), .clock_out(CLK));

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

initial
begin
    $monitor("clock_in = %b \t clock_out = %b",clk,CLK);
end

endmodule
