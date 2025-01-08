`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 11:09:12 AM
// Design Name: 
// Module Name: DownClocking
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


module DownClocking(    input logic clock_in, rst,
                        output reg clock_out
                    );
// Using 17 T-FlipFlops in series 763Hz=(10^8Hz)/(2^17), so TimePeriod = 1.3ms 
wire [16:0] clk;

T_FlipFlop TFF0( .q(clk[0]) , .clk(clock_in) , .reset(rst) , .t(1'b1) );
  
for ( genvar i= 1; i < 17; i++) begin
  T_FlipFlop TFF1( .q(clk[i]) , .clk(clk[i-1]) , .reset(rst) , .t(1'b1) );
end


T_FlipFlop TFF16( .q(clock_out) , .clk(clk[16]) , .reset(rst) , .t(1'b1) );

endmodule
