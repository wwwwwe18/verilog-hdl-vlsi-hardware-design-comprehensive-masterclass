//*****************************************************
// Project		: Half adder - structural
// File			: section2_ex3_ha_st
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Half adder - structural
//*****************************************************

module HA_st(s,c,a,b);

input	a,b;
output	s,c;

xor		xor1(s,a,b);
and		and1(c,a,b);

endmodule