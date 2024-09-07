//*****************************************************
// Project		: 2:1 multiplexer - dataflow
// File			: section3_ex5_mux_2_1_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 2:1 multiplexer - dataflow
//*****************************************************

module mux_2_1_df(Y,I,S);

input	[1:0]	I;
input			S;
output			Y;

assign Y = S?I[1]:I[0];

endmodule