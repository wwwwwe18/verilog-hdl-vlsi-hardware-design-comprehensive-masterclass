//*****************************************************
// Project		: 4:1 multiplexer - dataflow 3
// File			: section3_ex9_mux_4_1_df3
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4:1 multiplexer - dataflow 3
//*****************************************************

module mux_4_1_df(Y,I,S);

input	[3:0]	I;
input	[1:0]	S;
output			Y;

assign Y = (S==2'd0)?I[0]:((S==2'd1)?I[1]:((S==2'd2)?I[2]:I[3]));

endmodule