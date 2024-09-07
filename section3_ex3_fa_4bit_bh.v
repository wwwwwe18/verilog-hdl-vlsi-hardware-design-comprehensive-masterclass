//*****************************************************
// Project		: 4-bit full adder - behavioural
// File			: section3_ex2_fa_4bit_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit full adder - behavioural
//*****************************************************

module full_adder_4bit_bh(s,cout,a,b,cin);

input		[3:0]	a,b;
input				cin;
output	reg	[3:0]	s;
output	reg			cout;

always @(a,b,cin)
begin
	{cout,s} = a + b + cin;
end

endmodule