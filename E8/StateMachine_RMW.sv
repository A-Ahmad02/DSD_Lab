`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 05:25:31 PM
// Design Name: 
// Module Name: StateMachine_RMW
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


module StateMachine_RMW(output reg valid_out, reload,
                    input logic clk,rst,valid_in,Mod_end
                );
    
localparam Read = 2'b00;
localparam Modify = 2'b01;
localparam Write = 2'b11;
reg [1:0] current,next;

always_ff @(posedge clk or posedge rst) begin
    if(rst) 
        current <= Read;
    else
        current <= next;
end

always_comb begin
    case(current)
    Read: begin  if(valid_in) next <= Modify;
                else next <= Read;
            end 
    Modify: begin if(Mod_end) next <= Write;
                else next <= Modify;
            end
    Write: begin if(valid_out) next <= Read;
                else next <= Write;
            end
    default: next <= Read;
    endcase
end


always_comb begin
    case(current)
    Read: valid_out <= 0;
    Modify: valid_out <= 0;
    Write: valid_out <= 1;
    default: valid_out <= 0;
    endcase
end

always_ff @(posedge clk or posedge rst) begin
    if(rst) 
        reload <= 'b0;
    else if(current == Modify)
        reload <= 'b1;
    else 
        reload <= 'b0;
end

endmodule

