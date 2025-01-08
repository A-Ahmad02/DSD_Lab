module State_0Machine(   output reg [7:0] current,
                    input logic clk,rst,en,val, 
					input reg [1:0] sel,
                    input reg [7:0] next
                );
    
localparam S0 = 'd0;
localparam S1 = 'd1;
localparam S2 = 'd2;
localparam S3 = 'd3;
localparam S4 = 'd4;
localparam S5 = 'd5;
localparam S6 = 'd6;
localparam S7 = 'd7;
localparam S8 = 'd8;
localparam S9 = 'd9;
localparam S10 = 'd11;
localparam S11 = 'd12;
localparam S12 = 'd13;
localparam S13 = 'd14;
localparam S14 = 'd15;
localparam S15 = 'd16;

always_ff @(posedge clk) begin
    if(rst)
        c_state <= S0;
    else
        c_state <= n_state;
end

always_comb begin
    case(c_state)
        S0: begin if ({value,index} == 3'b0xx) n_state <= n_state;
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S1; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S2; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S4; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S8;
            end     

        S1: begin if (( val==1'b0 or sel==2'b01 ) or 3'b010 or 3'b011 or 3'b100) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S0; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S3; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S5; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S9;
            end     

        S2: begin if (( val==1'b0 or sel==2'b00 ) or 3'b010 or 3'b011 or 3'b101) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S0; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S3; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S6; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S10;
            end     			

        S3: begin if (( val==1'b0 or sel==2'b10 ) or 3'b011 or 3'b100 or 3'b101) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S2; 
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S1; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S3; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S7;
            end     			

        S4: begin if (( val==1'b0 or sel==2'b00 ) or 3'b001 or 3'b011 or 3'b110) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S0; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S5; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S6; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S12;
            end     			

        S5: begin if (( val==1'b0 or sel==2'b01 ) or 3'b011 or 3'b100 or 3'b110) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S4; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S1; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S7; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S13;
            end     			

        S6: begin if (( val==1'b0 or sel==2'b00 ) or 3'b011 or 3'b101 or 3'b110) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S4; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S2; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S7; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S14;
            end     			

        S7: begin if (( val==1'b0 or sel==2'b11 ) or 3'b100 or 3'b101 or 3'b110) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S6; 
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S5; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S3; 
				else if(( val==1'b1 or sel==2'b11 )): n_state <= S15;
            end     			

        S8: begin if (( val==1'b0 or sel==2'b00 ) or 3'b001 or 3'b010 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S0; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S9; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S10; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S12;
            end     			

        S9: begin if (( val==1'b0 or sel==2'b01 ) or 3'b010 or 3'b100 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S8; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S1; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S11; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S13;
            end  
			
        S10: begin if (( val==1'b0 or sel==2'b00 ) or 3'b010 or 3'b101 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S8; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S2; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S11; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S14;
            end     
			
        S11: begin if (( val==1'b1 or sel==2'b00 ) or 3'b010 or 3'b101 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S10;
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S9; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S3; 
				else if(( val==1'b1 or sel==2'b10 )): n_state <= S15;
            end     
			
        S12: begin if (( val==1'b0 or sel==2'b00 ) or 3'b001 or 3'b110 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S8; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S4; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S13; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S14;
            end     
			
        S13: begin if (( val==1'b0 or sel==2'b01 ) or 3'b100 or 3'b110 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S12; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S9; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S5; 
				else if(( val==1'b1 or sel==2'b01 )): n_state <= S15;
            end     
			
        S14: begin if (( val==1'b0 or sel==2'b00 ) or 3'b101 or 3'b110 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S12; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S10; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S6; 
				else if(( val==1'b1 or sel==2'b00 )): n_state <= S15;
            end     			
			
        S15: begin if (( val==1'b1 or sel==2'b00 ) or 3'b101 or 3'b110 or 3'b111) n_state <= n_state;
				else if(( val==1'b0 or sel==2'b00 )): n_state <= S14; 
				else if(( val==1'b0 or sel==2'b01 )): n_state <= S13; 
				else if(( val==1'b0 or sel==2'b10 )): n_state <= S11; 
				else if(( val==1'b0 or sel==2'b11 )): n_state <= S7;
            end     			
    endcase
end


endmodule
