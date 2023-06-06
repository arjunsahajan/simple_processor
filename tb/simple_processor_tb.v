`timescale 1ns / 1ps

module simple_processor_tb ();

	parameter CLOCK_PERIOD = 20;

	reg clk_50MHz;
	reg run;
	reg reset_n;
	reg [15: 0] DIN;
	
	wire done;
	
	simple_processor uut 
	(
		.clk_50MHz(clk_50MHz),
		.run(run),
		.reset_n(reset_n),
		.DIN(DIN),
		
		.done(done)
	);
	
	initial 
	begin
		clk_50MHz <= 1'b0;
	end

	always @ (*)
	begin : Clock_Generator
		#((CLOCK_PERIOD) / 2) clk_50MHz <= ~clk_50MHz;
	end	
		
	initial 
	begin
		reset_n <= 1'b0;
		#20 reset_n <= 1'b1;
	end
	
	initial 
	begin
				run	<= 1'b1;	DIN	<= 16'b0000000000000000;	
		#20	run	<= 1'b0; DIN	<= 16'b0001000000011100; // mv  r0, #28	
		#20	run	<= 1'b1; 
		
//		#20	run	<= 1'b0; DIN	<= 16'b0000001000000000; // mv r1, r0
//		#20	run	<= 1'b1;
//		#20	run	<= 1'b0; DIN	<= 16'b0011001011111111; // mvt r1, #0xFF
//		#20	run	<= 1'b1;
//		#20	run	<= 1'b0; DIN	<= 16'b0101001011111111; // add r1, #0xFF
//		#20	run	<= 1'b1;
	end
	
endmodule
