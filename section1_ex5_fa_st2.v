//*****************************************************
// Project		: Full adder - structural 2
// File			: section1_ex5_fa_st2
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - structural 2
//*****************************************************

module FA_st(s,c,a,b,cin);

input	a,b,cin;
output	s,c;

wire 	N1,N2,N3;

HA_df	HA_df1(N1,N2,a,b);
HA_df	HA_df2(s,N3,N1,cin);

or		or1(c,N2,N3);

endmodule