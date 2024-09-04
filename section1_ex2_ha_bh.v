//*****************************************************
// Project		: Half adder - behavioral
// File			: section1_ex2_ha_bh
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Half adder - behavioral
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