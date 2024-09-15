//*****************************************************
// Project		: Full adder - dataflow
// File			: section2_ex7_fa_df
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - dataflow
//*****************************************************

module FA_df(s,c,a,b,cin);

input	a,b,cin;
output	s,c;

assign	s = a^b^cin;
assign	c = (a&b)|(b&cin)|(cin&a);

endmodule