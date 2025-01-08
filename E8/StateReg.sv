`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 04:36:48 PM
// Design Name: 
// Module Name: StateReg
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


module StateReg(   output reg [7:0] current,
                    input logic clk,rst,en,data,
					input reg [1:0] sel,
                    input reg [7:0] next
                );
    
localparam S0 = 1'h0;
localparam S1 = 1'h1;
localparam S2 = 1'h2;
localparam S3 = 1'h3;
localparam S4 = 1'h4;
localparam S5 = 1'h5;
localparam S6 = 1'h6;
localparam S7 = 1'h7;
localparam S8 = 1'h8;
localparam S9 = 1'h9;
localparam S10 = 1'hA;
localparam S11 = 1'hB;
localparam S12 = 1'hC;
localparam S13 = 1'hD;
localparam S14 = 1'hE;
localparam S15 = 1'hF;

always_ff @(posedge clk) begin
    if(rst)
        current <= S0;
    else
        current <= next;
end

always_comb begin
    case({data,sel,current})
        {3'b0xx,S0}: next <= S0;
        {3'b100,S0}: next <= S1; 
        {3'b101,S0}: next <= S2; 
        {3'b110,S0}: next <= S4; 
        {3'b111,S0}: next <= S8;
        
        {3'b000,S1}: next <= S0; 
        {3'b001,S1}: next <= S1;
        {3'b01x,S1}: next <= S1;
        {3'b100,S1}: next <= S1; 
        {3'b101,S1}: next <= S3; 
        {3'b110,S1}: next <= S5;  
        {3'b111,S1}: next <= S9; 
        
        {3'b000,S2}: next <= S2; 
        {3'b001,S2}: next <= S0;
        {3'b01x,S2}: next <= S2;
        {3'b100,S2}: next <= S3; 
        {3'b101,S2}: next <= S2; 
        {3'b110,S2}: next <= S6;  
        {3'b111,S2}: next <= S10;
        
        {3'b000,S3}: next <= S2; 
        {3'b001,S3}: next <= S1;
        {3'b01x,S3}: next <= S3;
        {3'b10x,S3}: next <= S3; 
        {3'b110,S3}: next <= S7;  
        {3'b111,S3}: next <= S11;
        
        {3'b00x,S4}: next <= S4; 
        {3'b010,S4}: next <= S0;
        {3'b011,S4}: next <= S4;
        {3'b100,S4}: next <= S5; 
        {3'b101,S4}: next <= S6; 
        {3'b110,S4}: next <= S4;  
        {3'b111,S4}: next <= S12;
        
        {3'b000,S5}: next <= S4; 
        {3'b010,S5}: next <= S1;
        {3'b0x1,S5}: next <= S5;
        {3'b1x0,S5}: next <= S5; 
        {3'b101,S5}: next <= S7;  
        {3'b111,S5}: next <= S13;
        
        {3'b000,S6}: next <= S6; 
        {3'b001,S6}: next <= S4;
        {3'b010,S6}: next <= S2;
        {3'b011,S6}: next <= S6;
        {3'b100,S6}: next <= S7; 
        {3'b101,S6}: next <= S6; 
        {3'b110,S6}: next <= S6;  
        {3'b111,S6}: next <= S14;
        
        {3'b000,S7}: next <= S6; 
        {3'b001,S7}: next <= S5;
        {3'b010,S7}: next <= S3;
        {3'b011,S7}: next <= S7;
        {3'b10x,S7}: next <= S7; 
        {3'b110,S7}: next <= S7;  
        {3'b111,S7}: next <= S15;
        
        {3'b00x,S8}: next <= S8;
        {3'b010,S8}: next <= S8;
        {3'b011,S8}: next <= S0;
        {3'b100,S8}: next <= S9; 
        {3'b101,S8}: next <= S10; 
        {3'b110,S8}: next <= S12;  
        {3'b111,S8}: next <= S8;
        
        {3'b000,S9}: next <= S8; 
        {3'b001,S9}: next <= S9;
        {3'b010,S9}: next <= S9;
        {3'b011,S9}: next <= S1;
        {3'b100,S9}: next <= S9; 
        {3'b101,S9}: next <= S11; 
        {3'b110,S9}: next <= S13;  
        {3'b111,S9}: next <= S9;
        
        {3'b0x0,S10}: next <= S10; 
        {3'b001,S10}: next <= S8;
        {3'b011,S10}: next <= S2;
        {3'b100,S10}: next <= S11; 
        {3'b1x1,S10}: next <= S10; 
        {3'b110,S10}: next <= S14;
        
        {3'b000,S11}: next <= S10; 
        {3'b001,S11}: next <= S9;
        {3'b010,S11}: next <= S11;
        {3'b011,S11}: next <= S3;
        {3'b10x,S11}: next <= S11;
        {3'b110,S11}: next <= S15;  
        {3'b111,S11}: next <= S11;
        
        {3'b00x,S12}: next <= S12; 
        {3'b010,S12}: next <= S8;
        {3'b011,S12}: next <= S4;
        {3'b100,S12}: next <= S13; 
        {3'b101,S12}: next <= S14; 
        {3'b11x,S12}: next <= S12;     
        
        {3'b000,S13}: next <= S12; 
        {3'b001,S13}: next <= S13;
        {3'b010,S13}: next <= S9;
        {3'b011,S13}: next <= S5;
        {3'b100,S13}: next <= S13; 
        {3'b101,S13}: next <= S15; 
        {3'b11x,S13}: next <= S13;
        
        {3'b000,S14}: next <= S14; 
        {3'b001,S14}: next <= S12;
        {3'b010,S14}: next <= S10;
        {3'b011,S14}: next <= S6;
        {3'b100,S14}: next <= S15; 
        {3'b101,S14}: next <= S14;  
        {3'b11x,S14}: next <= S14;
        
        {3'b000,S15}: next <= S14; 
        {3'b001,S15}: next <= S13;
        {3'b010,S15}: next <= S11;
        {3'b011,S15}: next <= S7;  
        {3'b1xx,S15}: next <= S15;
    endcase
end


endmodule
