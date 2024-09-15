//*****************************************************
// Project		: Positive edge triggered D-flip flop synchronous active low reset & active high set - behavioural
// File			: section4_ex11_dff_pe_sync_rstl_seth_bh
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: Positive edge triggered D-flip flop synchronous active low reset & active high set - behavioural
//*****************************************************

module dff_pe_sync_rstl_seth_bh(q,d,clk,rst,set);

input		d,clk,rst,set;
output	reg	q;

always @(posedge clk)
	if(!rst)
		q <= 1'b0;
	else if(set)
		q <= 1'b1;
	else
		q <= d;

endmodule