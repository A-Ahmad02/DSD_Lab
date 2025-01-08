`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2023 06:39:23 AM
// Design Name: 
// Module Name: T_FlipFlop
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


module T_FlipFlop(  output logic q,
                    input logic clk, reset, t
                    );

always_ff @ (posedge clk or posedge reset)
begin
    if (reset)
    q <= 1'b0;
    else
        begin
            if (t) // Toggle output when T=1
            q <= ~q;
            else            // Otherwise retain state
            q <= q;
        end
end

endmodule
