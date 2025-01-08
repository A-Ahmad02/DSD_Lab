`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 11:28:21 AM
// Design Name: 
// Module Name: Lab7_tb
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



module Lab7_tb;
  
logic [7:0] Seg7, Anodes;
logic clk,rst, dir;

Lab7 UUT(.CLK(clk), .rst(rst), .dir(dir), 
.Seg(Seg7),
.Anodes(Anodes)
);

initial
begin
    //initial value of clock
    clk = 1'b0;
    #5;
    //generating clock signal
    forever #5 clk = ~clk;
end

initial 
begin
    $monitor("ABCDEFG(DP)=%b, AN=%b ", Seg7, Anodes);
end

initial 
begin
    dir = 0;
    repeat(100) @(posedge clk);
    rst = 1'b1;
    repeat(100) @(posedge clk);
    rst = 1'b0;
    repeat(200000000) @(posedge clk);
    dir = 1;
    repeat(200000000) @(posedge clk);
    $stop;

end

endmodule
