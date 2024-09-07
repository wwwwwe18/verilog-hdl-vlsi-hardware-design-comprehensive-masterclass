//*****************************************************
// Project		: 4-bit comparator - behavioural
// File			: section3_ex20_comparator_4bit_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit comparator - behavioural
//*****************************************************

module comparator_4bit_bh(Eq,Gt,Sm,A,B);

input	[3:0]	A,B;
output	reg		Eq,Gt,Sm;

always @(*) begin
	Eq = (A == B);
	Gt = (A > B);
	Sm = (A < B);
end

endmodule