//*****************************************************
// Project		: 4x2 priority encoder - dataflow
// File			: section3_ex17_encode_4_2_priority_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4x2 priority encoder - dataflow
//*****************************************************

module encode_4_2_priority_df(Y,V,I);

input	[3:0]	I;
output	[1:0]	Y;
output			V;

assign {V,Y} = I[0]?3'b100:I[1]?3'b101:I[2]?3'b110:I[3]?3'b111:3'b000;

endmodule