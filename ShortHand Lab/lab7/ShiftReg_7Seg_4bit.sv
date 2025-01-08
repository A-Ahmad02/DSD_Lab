`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 10:17:08 AM
// Design Name: 
// Module Name: ShiftReg_7Seg_4bit
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


module ShiftReg_7Seg_4bit(  output [3:0] Q[15:0],
                            input logic dir,clk,rst,shift
                );
    
wire [3:0] d_in[15:0];
var [3:0] num[15:0] = {'d15,'d15,'d15,'d15,'d15,'d15,'d15,'d2,'d0,'d2,'d1,'d14,'d14,'d0,'d5,'d6};
//logic [3:0] num[15:0] = {4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,'d2,'d0,'d2,'d1,'d14,'d14,'d0,'d5,'d1};

MUX2x1_4bit M3(.sel1(dir), .in0(Q[15]), .in1(Q[1]),  .out(d_in[0]));
D_FlipFlop_4bit_rst DFF1(.Q(Q[0]), .clk(clk) , .rst(rst), .rst_val(num[0]), .en(shift), .D(d_in[0]));   

for ( genvar j = 1; j < 15; j++) begin
    MUX2x1_4bit M2(.sel1(dir), .in0(Q[j-1]), .in1(Q[j+1]), .out(d_in[j]));
    D_FlipFlop_4bit_rst DFF(.Q(Q[j]), .clk(clk) , .rst(rst), .rst_val(num[j]), .en(shift), .D(d_in[j]));  
end

MUX2x1_4bit M4(.sel1(dir), .in0(Q[14]), .in1(Q[0]), .out(d_in[15]));
D_FlipFlop_4bit_rst DFF2(.Q(Q[15]), .clk(clk) , .rst(rst), .rst_val(num[15]), .en(shift), .D(d_in[15]));   


endmodule

//module ShiftReg_7Seg_4bit(  output [3:0] Q[15:0],
//                            input [3:0] num[15:0],
//                            input logic dir,clk,rst,shift
//                );
    
//wire [3:0] d_in[15:0];
//reg reload;

//always@(negedge clk or posedge rst)
//begin
//    if (rst)
//    reload <= 1'b1;
//    else
////    @ (posedge clk);
//    reload <= 1'b0;
//end

//MUX4x1_4bit M3(.sel2({reload,dir}), .in0(Q[15]), .in1(Q[1]), .in2(num[0]), .in3(num[0]), .out(d_in[0]));
//D_FlipFlop_4bit DFF1(.Q(Q[0]), .clk(clk) , .rst(rst), .en(shift||reload), .D(d_in[0]));   

//for ( genvar j = 1; j < 15; j++) begin
//    MUX4x1_4bit M2(.sel2({reload,dir}), .in0(Q[j-1]), .in1(Q[j+1]), .in2(num[j]), .in3(num[j]), .out(d_in[j]));
//    D_FlipFlop_4bit DFF(.Q(Q[j]), .clk(clk) , .rst(rst), .en(shift || reload), .D(d_in[j]));  
//end

//MUX4x1_4bit M4(.sel2({reload,dir}), .in0(Q[14]), .in1(Q[0]), .in2(num[15]), .in3(num[15]), .out(d_in[15]));
//D_FlipFlop_4bit DFF2(.Q(Q[15]), .clk(clk) , .rst(rst), .en(shift || reload), .D(d_in[15]));   


//endmodule
