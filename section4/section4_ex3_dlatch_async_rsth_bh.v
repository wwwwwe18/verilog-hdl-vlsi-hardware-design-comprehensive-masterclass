//*****************************************************
// Project		: D-latch with asynchronous reset - behavioural
// File			: section4_ex3_dlatch_async_rsth_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: D-latch with asynchronous reset - behavioural
//*****************************************************

module dlatch_async_rsth_bh(q,d,en,rst);

input		en,d,rst;
output	reg	q;

always @(en,d,rst)
	if(rst)
		q = 1'b0;
	else if(en)
		q = d;

endmodule