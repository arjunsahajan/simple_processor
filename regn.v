module regn
# (parameter N = 8)
(
	input clk,	
	input load,
	input clear,
	input [N - 1: 0] D,
	
	output [N - 1: 0] Q
);

	reg [N - 1: 0] Q_reg;

	always @(posedge clk)
	begin
	  if (!clear)
			Q <= 0;
	  else if (!load)
			Q <= D;
	end

	assign Q = Q_reg;
	
endmodule
