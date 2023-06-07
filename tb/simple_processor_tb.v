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
	
		run	<= 1'b1;	DIN	<= 16'b0000_0000_0000_0000;	

// ********************************** //		
//		mv r0, #<+ve>
//		mv r1, #<+ve>
//		add r0, r1 

//		#20	run	<= 1'b0; DIN	<= 16'b0001_0000_0000_0001; // mv  r0, #1	
//		#20	run	<= 1'b1; 
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0001_0010_0000_0010; // mv  r1, #2	
//		#20	run	<= 1'b1;
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0100_0000_0000_0001; // add  r0, r1	
//		#20	run	<= 1'b1;
		
// ********************************** //
		
//		mv r0, #<+ve>
//		mv r1, #<+ve>
//		add r1, r0 
		
//		#20	run	<= 1'b0; DIN	<= 16'b0001_0000_0000_0001; // mv  r0, #1	
//		#20	run	<= 1'b1; 
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0001_0010_0000_0010; // mv  r1, #2	
//		#20	run	<= 1'b1;
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0100_0010_0000_0000; // add  r1, r0	
//		#20	run	<= 1'b1;
		
// ********************************** //
		
//		mv r0, #<-ve>
//		mv r1, #<+ve>
//		add r0, r1 

//		#20	run	<= 1'b0; DIN	<= 16'b0001_0001_1111_1111; // mv  r0, #-1	
//		#20	run	<= 1'b1; 
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0001_0010_0000_0010; // mv  r1, #2	
//		#20	run	<= 1'b1;
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0100_0000_0000_0001; // add  r0, r1	
//		#20	run	<= 1'b1;
		
// ********************************** //

// 	mv r0, #<+ve>
//		mv r1, #<-ve>
//		add r0, r1

//		#20	run	<= 1'b0; DIN	<= 16'b0001_0000_0000_0001; // mv  r0, #1	
//		#20	run	<= 1'b1; 
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0001_0011_1111_1110; // mv  r1, #-2	
//		#20	run	<= 1'b1;
//		
//		#20	run	<= 1'b0; DIN	<= 16'b0100_0000_0000_0001; // add  r0, r1	
//		#20	run	<= 1'b1;
		
// ********************************** //
	
	
//		mv r0, #<-ve>
//		mv r1, #<-ve>
//		add r0, r1

		#20	run	<= 1'b0; DIN	<= 16'b0001_0001_1111_1111; // mv  r0, #-1	
		#20	run	<= 1'b1; 
		
		#20	run	<= 1'b0; DIN	<= 16'b0001_0011_1111_1110; // mv  r1, #-2	
		#20	run	<= 1'b1;
		
		#20	run	<= 1'b0; DIN	<= 16'b0100_0000_0000_0001; // add  r0, r1	
		#20	run	<= 1'b1;
	
// ********************************** //
	end
endmodule
