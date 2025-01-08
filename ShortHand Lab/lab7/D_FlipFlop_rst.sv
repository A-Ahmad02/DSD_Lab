`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2023 10:04:56 PM
// Design Name: 
// Module Name: D-FlipFlop
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


module D_FlipFlop_rst(  output logic q,
                    input logic clk, reset, enable, d, rst_val
                    );

always_ff @ (posedge clk or posedge reset)
begin
    if (reset)
        q <= rst_val;
    else begin
        if (enable)
            q <= d;
         else
            q <= q;
     end
end

endmodule
