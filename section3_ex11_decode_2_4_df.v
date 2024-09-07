//*****************************************************
// Project		: 2x4 decoder - dataflow
// File			: section3_ex11_decode_2_4_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 2x4 decoder - dataflow
//*****************************************************

module decode_2_4_df(Y,I,En);

input	[1:0]	I;
input			En;
output	[3:0]	Y;

assign Y = {En & I[1] & I[0],
			En & I[1] & ~I[0],
			En & ~I[1] & I[0],
			En & ~I[1] & ~I[0]};

endmodule