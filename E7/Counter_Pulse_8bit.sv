`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 11:31:54 AM
// Design Name: 
// Module Name: Counter_8bit
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


module Counter_Pulse_8bit(input rst, clk,
                    output logic shift
    );
    
    reg [5:0] cnt;
    always@(posedge clk or posedge rst)
    begin
    if(rst) begin
        cnt <= 1'b0;
        shift <= 1'b0;
        end
    else begin
        cnt <= cnt + 1;
        if(cnt=='d15) 
            shift <= 1'b1;
        else 
            shift <= 1'b0; 
     end
    end
    
endmodule
