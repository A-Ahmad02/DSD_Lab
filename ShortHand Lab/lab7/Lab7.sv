`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 11:23:46 AM
// Design Name: 
// Module Name: Lab7
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


module Lab7(output logic [7:0] Seg, Anodes,
                input logic CLK,rst,dir
                );


logic [3:0] Q[15:0], d_in[15:0], out;
logic [2:0] sel;
logic clk, shift;
//logic [3:0] num[15:0] = {'d15,'d15,'d15,'d15,'d15,'d15,'d15,'d2,'d0,'d2,'d1,'d14,'d14,'d0,'d5,'d2};
//logic [3:0] num[15:0] = {4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,4'bxxxx,'d2,'d0,'d2,'d1,'d14,'d14,'d0,'d5,'d2};


DownClocking_100 DC1(.clock_in(CLK), .rst(rst), .clock_out(clk));
Counter_3bit C0(.rst(rst), .clk(clk), .cnt(sel));
Counter_Pulse_8bit C1(.rst(rst), .clk(clk), .shift(shift));

ShiftReg_7Seg_4bit SR(.Q(Q) , .dir(dir) , .clk(clk) ,.rst(rst), .shift(shift));

MUX8x1_4bit M0(.sel3(sel), .in0(Q[0]), .in1(Q[1]), .in2(Q[2]), .in3(Q[3]),.in4(Q[4]), .in5(Q[5]), .in6(Q[6]), .in7(Q[7]), .out(out));
Lab6 UUT(.out8_7Seg(Seg), .out8_Anodes(Anodes),.num(out), .sel(sel), .wr(clk), .CLK(CLK), .rst(rst));

endmodule


//MUX4x1_4bit M3(.sel2({rst,dir}), .in0(Q[15]), .in1(Q[1]), .in2(num[0]), .in3(num[0]), .out(d_in[0]));
//D_FlipFlop_4bit DFF1(.Q(Q[0]), .clk(clk) , .rst(rst), .en(shift), .D(d_in[0]));   

//for ( genvar j = 1; j < 15; j++) begin
//    MUX4x1_4bit M2(.sel2({rst,dir}), .in0(Q[j-1]), .in1(Q[j+1]), .in2(num[j]), .in3(num[j]), .out(d_in[j]));
//    D_FlipFlop_4bit DFF(.Q(Q[j]), .clk(clk) , .rst(rst), .en(shift), .D(d_in[j]));  
//end

//MUX4x1_4bit M4(.sel2({rst,dir}), .in0(Q[14]), .in1(Q[0]), .in2(num[15]), .in3(num[15]), .out(d_in[15]));
//D_FlipFlop_4bit DFF2(.Q(Q[15]), .clk(clk) , .rst(rst), .en(shift), .D(d_in[15]));   
