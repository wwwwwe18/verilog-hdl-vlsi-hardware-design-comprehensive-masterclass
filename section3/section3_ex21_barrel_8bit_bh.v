//*****************************************************
// Project		: 8-bit barrel shifter - behavioural
// File			: section3_ex21_barrel_8bit_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 8-bit barrel shifter - behavioural
//*****************************************************

module barrel_8bit_bh(Eq,Gt,Sm,A,B);

input		[7:0]	In;
input		[2:0]	n;
input				Lr;
output	reg	[7:0]	Out;

always @(*) begin
	if(Lr)
		Out = In << n;
	else
		Out = In >> n;
end

endmodule