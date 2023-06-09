module test_mem
(
	input clk,
	input reset_n,
	
	output [15: 0] DIN,
	output [4: 0] addr
);
	
	addr_cntr AD_CNT
	(
		.clk(clk),
		.reset_n(reset_n),
			
		.addr(addr)
	);
	
	inst_mem INST_MEM
	(
		.address(addr),
		.clock(clk),
		
		.q(DIN)
	);
	
endmodule

