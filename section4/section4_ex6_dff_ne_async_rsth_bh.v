//*****************************************************
// Project		: Negative edge triggered D-flip flop asynchronous active high reset - behavioural
// File			: section4_ex6_dff_ne_async_rsth_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: Negative edge triggered D-flip flop asynchronous active high reset - behavioural
//*****************************************************

module dff_ne_async_rsth_bh(q,d,clk,rst);

input		d,clk,rst;
output	reg	q;

always @(negedge clk or posedge rst)
	if(rst)
		q <= 1'b0;
	else
		q <= d;

endmodule