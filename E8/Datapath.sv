`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 05:23:44 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath( input clk, data,shift,rst,rst_mask,wr,
                    input [7:0] old_byte,
                    output [7:0] out_byte
    );
wire [7:0] bit_mask, new_byte; 

ShiftReg_8bit SR(.Q(bit_mask), .clk(clk), .rst(rst | rst_mask), .shift(shift));

MUX2x1_8bit M1(.sel1(data), .in0(old_byte & ~bit_mask), .in1(old_byte | bit_mask), .out(new_byte) );
//MUX2x1_8bit M2(.sel1(wr), .in0(old_byte), .in1(new_byte), .out(out_byte));
Reg_8bit R8( .Q(out_byte), .clk(clk), .rst(rst), .wr(wr), .D(new_byte)); 
    
endmodule
