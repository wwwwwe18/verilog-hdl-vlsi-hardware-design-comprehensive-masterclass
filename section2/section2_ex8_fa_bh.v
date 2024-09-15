//*****************************************************
// Project		: Full adder - behavioural
// File			: section2_ex8_fa_bh
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - behavioural
//*****************************************************

module FA_bh(s,c,a,b,cin);

input		a,b,cin;
output	reg	s,c;

always @(*)
begin
	s = a^b^cin;
	c = (a&b)|(b&cin)|(cin&a);
end

endmodule