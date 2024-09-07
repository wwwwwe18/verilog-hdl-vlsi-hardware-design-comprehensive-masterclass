//*****************************************************
// Project		: 4:1 multiplexer - dataflow 1
// File			: section3_ex7_mux_4_1_df1
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4:1 multiplexer - dataflow 1
//*****************************************************

module mux_4_1_df(Y,I,S);

input	[3:0]	I;
input	[1:0]	S;
output			Y;

assign Y = I[S];

endmodule