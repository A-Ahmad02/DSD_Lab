`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 05:24:10 PM
// Design Name: 
// Module Name: Controller
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


module Controller(input rst,clk,valid_in,
                    input reg [2:0] sel,
                    output shift,valid_out,rst_mask,wr

    );
    
wire load, reload;
StateMachine_RMW SM(.reload(reload), .valid_out(valid_out), .rst(rst), .clk(clk), .valid_in(valid_in) , .Mod_end(wr));

Level_to_Pulse Lt(.load(load), .clk(clk), .rst(rst), .reload(reload));
Level_to_Pulse Lt2(.load(rst_mask), .clk(clk), .rst(rst), .reload(~reload));
DownCounter DC( .rst(rst), .clk(clk), .load(load), .sel(sel), .shift(shift), .wr(wr));

endmodule
