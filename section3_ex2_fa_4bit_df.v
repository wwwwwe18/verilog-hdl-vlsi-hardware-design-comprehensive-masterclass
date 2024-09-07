//*****************************************************
// Project		: 4-bit full adder - dataflow
// File			: section3_ex2_fa_4bit_df
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit full adder - dataflow
//*****************************************************

module full_adder_4bit_df(s,cout,a,b,cin);

input	[3:0]	a,b;
input			cin;
output	[3:0]	s;
output			cout;

assign {cout,s} = a + b + cin;

endmodule