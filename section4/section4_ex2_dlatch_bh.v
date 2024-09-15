//*****************************************************
// Project		: D-latch - behavioural
// File			: section4_ex2_dlatch_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: D-latch - behavioural
//*****************************************************

module dlatch_bh(q,d,en);

input		en,d;
output	reg	q;

always @(en,d)
	if(en)	q = d;

endmodule