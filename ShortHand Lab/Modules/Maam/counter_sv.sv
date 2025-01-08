module counter_sv(clk,reset,q);
	input clk,reset;
	output logic [3:0] q;
	logic [3:0] d;
	
	always_ff @ (posedge clk or negedge reset)
	begin
	 if (!reset)
		q <= 0;
	 else 
		q <= d;
	end
	
	always_comb
		d <= q+1;
	
endmodule