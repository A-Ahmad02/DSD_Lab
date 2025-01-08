`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 07:46:12 AM
// Design Name: 
// Module Name: DownClocking_200
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


module DownClocking_50( input clock_in, rst,
                        output reg clock_out
                    );
// Using 21 T-FlipFlops in series 47.7Hz=(10^8Hz)/(2^21), so TimePeriod = 20.9ms 
wire [30:0] clk;

T_FlipFlop TFF0( .q(clk[0]) , .clk(clock_in) , .reset(rst) , .t(1'b1) );
  
for ( genvar i= 1; i < 31; i++) begin
  T_FlipFlop TFF( .q(clk[i]) , .clk(clk[i-1]) , .reset(rst) , .t(1'b1) );
end


T_FlipFlop TFF21( .q(clock_out) , .clk(clk[30]) , .reset(rst) , .t(1'b1) );

endmodule
