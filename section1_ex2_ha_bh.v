//*****************************************************
// Project		: Half adder - behavioural
// File			: section1_ex2_ha_bh
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Half adder - behavioural
//*****************************************************

module HA_bh(s,c,a,b);

input		a,b;
output	reg	s,c;

always @(a,b)
begin
	s = a^b;
	c = a&b;
end

endmodule