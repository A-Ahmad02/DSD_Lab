`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2023 10:28:31 PM
// Design Name: 
// Module Name: Counter_3bit
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


module Counter_3bit(input rst, clk, 
                    output reg [2:0] cnt
    );
	
//	logic [2:0] d;
//	always_ff @ (posedge clk or posedge rst)
//	begin
//	 if (rst)
//		cnt <= 0;
//	 else 
//		cnt <= d;
//	end
	
//	always_comb
//		d <= cnt+1;
	
//endmodule
    
    always@(posedge clk or posedge rst)
    begin
    if(rst)
        cnt <= 'd0;
     else 
        cnt <= cnt + 1;
    end
    
endmodule

