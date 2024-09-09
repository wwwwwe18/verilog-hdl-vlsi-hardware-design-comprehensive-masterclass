//*****************************************************
// Project		: Frequency divider - by 2
// File			: section4_ex22_freq_div_by_2
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Frequency divider - by 2
//*****************************************************

module freq_div_by_2(clk_out,clk,rst);

input		clk,rst;
output	reg	clk_out;

always @(posedge clk)
	if(rst)
		clk_out <= 0;
	else
		clk_out <= ~clk_out;

endmodule