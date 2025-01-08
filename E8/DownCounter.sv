`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 07:20:39 PM
// Design Name: 
// Module Name: DownCounter
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


module DownCounter(input rst, clk, load,
                    input reg [2:0] sel,
                    output logic shift, wr
    );
    logic [2:0] cnt;
    
   always @(posedge clk or posedge rst)
    begin
    if(rst)
        begin
        cnt <= 'd0;
        shift <= 'b0;
        end
     else if (load)
        begin
        cnt <= sel;
        shift <= 'b1;
        end
     else if (!cnt)
        shift <= 'b0;
     else 
        cnt <= cnt - 1;
        
//      if (cnt=='d1)
//        wr <= 'b1;
//     else 
//        wr <= 'b0;
    end

   always @(posedge clk)
    begin 
      if (cnt=='d1)
        wr <= 'b1;
     else 
        wr <= 'b0;
    end

//    always @(posedge clk or posedge rst)
//    begin
//      if (cnt=='d1)
//        wr <= 'b1;
//     else 
//        wr <= 'b0;
//    end

//    always @(posedge clk or posedge rst)
//    begin
//    if (!cnt)
//        shift <= 'b0;
//     else 
//        shift <= 'b1;
//    end
    
//    always @(posedge clk or posedge rst)
//    begin
//    if(rst)
//        cnt <= 'd0;
//     else if (load)
//        cnt <= sel;
//     else if (!cnt)
//        cnt <= 'b0;
//     else 
//        cnt <= cnt - 1;
//    end
endmodule
    