//*****************************************************
// Project		: Positive edge triggered D-flip flop synchronous active low reset - behavioural
// File			: section4_ex10_dff_pe_sync_rstl_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: Positive edge triggered D-flip flop synchronous active low reset - behavioural
//*****************************************************

module dff_pe_sync_rstl_bh(q,d,clk,rst);

input		d,clk,rst;
output	reg	q;

always @(posedge clk)
	if(!rst)
		q <= 1'b0;
	else
		q <= d;

endmodule