`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 04:07:07 PM
// Design Name: 
// Module Name: Lab8
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


module Lab8(output logic [7:0] Seg, 
            output logic [7:0] Anodes,
                input logic CLK,rst,valid_in, bit_value,
                input [2:0] bit_index
                );
wire clk, valid_out, shift, rst_mask, wr;
wire [7:0] D, Q;

DownClocking_100 DC1(.clock_in(CLK), .rst(rst), .clock_out(clk));

Controller Cr(.wr(wr), .rst_mask(rst_mask), .shift(shift), .valid_out(valid_out), .rst(rst), .clk(clk), .sel(bit_index), .valid_in(valid_in));
Datapath Dp(.wr(wr),  .rst_mask(rst_mask), .rst(rst), .clk(clk), .data(bit_value), .shift(shift), .old_byte(Q), .out_byte(D)  );

Reg_8bit R8( .Q(Q), .clk(clk), .rst(rst), .wr(rst_mask), .D(D));
Display_7Seg_2 D2( .out8_7Seg(Seg), .out2_Anodes(Anodes), .wr(1'b1), .clk(clk), .rst(rst), .num(Q));
//    rst | valid_out
endmodule
