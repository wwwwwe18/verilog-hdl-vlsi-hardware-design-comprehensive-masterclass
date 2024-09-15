//*****************************************************
// Project		: Positive edge triggered D-flip flop asynchronous active high reset - behavioural
// File			: section4_ex5_dff_pe_async_rsth_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: Positive edge triggered D-flip flop asynchronous active high reset - behavioural
//*****************************************************

module dff_pe_async_rsth_bh(q,d,clk,rst);

input		d,clk,rst;
output	reg	q;

always @(posedge clk or posedge rst)
	if(rst)
		q <= 1'b0;
	else
		q <= d;

endmodule