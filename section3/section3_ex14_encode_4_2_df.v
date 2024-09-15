//*****************************************************
// Project		: 4x2 encoder - dataflow
// File			: section3_ex14_encode_4_2_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4x2 encoder - dataflow
//*****************************************************

module encode_4_2_df(Y,V,I);

input	[3:0]	I;
output	[1:0]	Y;
output			V;

assign Y = {I[3]|I[2], I[3]|I[1]};
assign V = |I;

endmodule