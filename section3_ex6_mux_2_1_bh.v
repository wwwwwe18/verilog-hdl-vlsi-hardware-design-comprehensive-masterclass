//*****************************************************
// Project		: 2:1 multiplexer - behavioural
// File			: section3_ex6_mux_2_1_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 2:1 multiplexer - behavioural
//*****************************************************

module mux_2_1_bh(Y,I,S);

input	[1:0]	I;
input			S;
output	reg		Y;

always @(*)
	if(S)
		Y=I[1];
	else
		Y=I[0];

endmodule