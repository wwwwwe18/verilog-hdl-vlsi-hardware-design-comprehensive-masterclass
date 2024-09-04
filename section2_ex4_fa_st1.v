//*****************************************************
// Project		: Full adder - structural 1
// File			: section2_ex4_fa_st1
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - structural 1
//*****************************************************

module FA_st(s,c,a,b,cin);

input	a,b,cin;
output	s,c;

wire 	N1,N2,N3,N4;

xor		xor1(N1,a,b);
xor		xor2(s,N1,c);

and		and1(N2,a,b);
and		and2(N3,b,cin);
and		and3(N4,cin,a);

or		or1(N2,N3,N4);

endmodule