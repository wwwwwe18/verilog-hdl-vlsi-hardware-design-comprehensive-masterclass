//*****************************************************
// Project		: Positive edge triggered D-flip flop asynchronous active low reset - behavioural
// File			: section4_ex7_dff_pe_async_rstl_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: Positive edge triggered D-flip flop asynchronous active low reset - behavioural
//*****************************************************

module dff_pe_async_rstl_bh(q,d,clk,rst);

input		d,clk,rst;
output	reg	q;

always @(posedge clk, negedge rst)
	if(!rst)
		q <= 1'b0;
	else
		q <= d;

endmodule