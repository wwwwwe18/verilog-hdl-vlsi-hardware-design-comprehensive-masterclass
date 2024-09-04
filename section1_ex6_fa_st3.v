//*****************************************************
// Project		: Full adder - structural 3
// File			: section1_ex6_fa_st3
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - structural 3
//*****************************************************

module FA_st(ss,cc,aa,bb,cin);

input	aa,bb,cin;
output	ss,cc;

wire 	N1,N2,N3;

HA_df	HA_df1(.s(N1),.c(N2),a.(aa),b.(bb));
HA_df	HA_df2(.s(ss),.c(N3),a.(N1),.b(cin));

or		or1(cc,N2,N3);

endmodule