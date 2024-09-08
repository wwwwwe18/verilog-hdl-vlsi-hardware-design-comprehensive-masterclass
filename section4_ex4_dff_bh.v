//*****************************************************
// Project		: D-flip flop - behavioural
// File			: section4_ex4_dff_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: D-flip flop - behavioural
//*****************************************************

module dff_bh(q,d,clk);

input		d,clk;
output	reg	q;

always @(posedge clk)
	if(clk)
		q <= d;	// Non-blocking assignment operator

endmodule