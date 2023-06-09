`timescale 1ns / 1ps

module test_mem_tb ();

	parameter CLOCK_PERIOD = 20;

	reg clk_addr;
	reg reset_n;
	
	wire [4: 0] addr;
	wire [15: 0] DIN;
	
	simple_processor uut
	(
		.clk_addr(clk_addr),
		.reset_n(reset_n),
		
		.addr(addr),
		.DIN(DIN)
	);
	
	initial 
	begin
		clk_addr <= 1'b0;
	end

	always @ (*)
	begin : Clock_Generator
		#((CLOCK_PERIOD) / 2) clk_addr <= ~clk_addr;
	end	
		
	initial 
	begin
		reset_n <= 1'b0;
		#20 reset_n <= 1'b1;
	end
	
endmodule
