`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 03:41:52 PM
// Design Name: 
// Module Name: DLatch1bit
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


module DLatch1bit( input logic D,en,
                    output reg Q
                   );
    
    always@(D or en)begin
        if (en) begin  
            Q = D;
        end
    end
    
endmodule
