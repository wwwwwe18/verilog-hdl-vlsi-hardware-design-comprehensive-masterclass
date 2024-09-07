//*****************************************************
// Project		: 4:1 multiplexer - dataflow 2
// File			: section3_ex8_mux_4_1_df2
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4:1 multiplexer - dataflow 2
//*****************************************************

module mux_4_1_df(Y,I,S);

input	[3:0]	I;
input	[1:0]	S;
output			Y;

assign Y = ~|S?I[0]:(&S?I[3]:(S[0]?I[1]:I[2]));

endmodule