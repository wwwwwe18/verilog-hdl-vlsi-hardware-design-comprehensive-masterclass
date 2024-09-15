//*****************************************************
// Project		: 3x8 decoder - dataflow
// File			: section3_ex13_decode_3_8_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 3x8 decoder - dataflow
//*****************************************************

module decode_3_8_df(Y,I,En);

input	[2:0]	I;
input			En;
output	[3:0]	Y;

assign Y = {En & I[2] & I[1] & I[0],
			En & I[2] & I[1] & ~I[0],
			En & I[2] & ~I[1] & I[0],
			En & I[2] & ~I[1] & ~I[0],
			En & ~I[2] & I[1] & I[0],
			En & ~I[2] & I[1] & ~I[0],
			En & ~I[2] & ~I[1] & I[0],
			En & ~I[2] & ~I[1] & ~I[0]};

endmodule