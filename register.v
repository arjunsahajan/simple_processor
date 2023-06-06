module register 
# (parameter N = 8)
(
	input clk,	
	input load,
	input clear,
	input [N - 1: 0] D,
	
	output [N - 1: 0] Q
);

	reg [N - 1: 0] Q_reg, Q_nxt;

	always @(posedge clk)
	begin
	
		Q_reg <= Q_nxt;
	
	end
	
	always @(D, load, clear)
	begin
		
		if(!clear)
			Q_nxt = 8'd0;
		else if(!load)
			Q_nxt = D;
		else
			Q_nxt = Q_reg;
	
	end
	
	assign Q = Q_reg;

endmodule