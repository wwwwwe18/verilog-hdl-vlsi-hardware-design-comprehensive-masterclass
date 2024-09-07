//*****************************************************
// Project		: 4-bit comparator - dataflow 2
// File			: section3_ex19_comparator_4bit_df2
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit comparator - dataflow 2
//*****************************************************

module comparator_4bit_df2(Eq,Gt,Sm,A,B);

input	[3:0]	A,B;
output			Eq,Gt,Sm;

assign Eq = (A == B);
assign Gt = (A > B);
assign Sm = (A < B);

endmodule