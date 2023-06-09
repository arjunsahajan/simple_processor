`timescale 1ns / 1ps

module test_mem_tb ();

	parameter CLOCK_PERIOD = 20;

	reg clk;
	reg reset_n;
	
	wire [4: 0] addr;
	wire [15: 0] DIN;
	
	test_mem uut 
	(
		.clk(clk),
		.reset_n(reset_n),
		.addr(addr),
		
		.DIN(DIN)
	);
	
	initial 
	begin
		clk <= 1'b0;
	end

	always @ (*)
	begin : Clock_Generator
		#((CLOCK_PERIOD) / 2) clk <= ~clk;
	end	
		
	initial 
	begin
		reset_n <= 1'b0;
		#20 reset_n <= 1'b1;
	end
	
endmodule
