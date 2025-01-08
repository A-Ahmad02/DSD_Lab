`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 10:28:24 PM
// Design Name: 
// Module Name: Counter_1bit
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


module Counter_1bit(input rst, clk, 
                    output reg cnt
    );
	
    always@(posedge clk or posedge rst)
    begin
    if(rst)
        cnt <= 'd0;
     else 
        cnt <= cnt + 1;
    end
    
endmodule

