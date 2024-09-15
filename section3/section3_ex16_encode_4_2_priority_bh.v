//*****************************************************
// Project		: 4x2 priority encoder - behavioural
// File			: section3_ex16_encode_4_2_priority_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4x2 priority encoder - behavioural
//*****************************************************

module encode_4_2_priority_bh(Y,V,I);

input		[3:0]	I;
output	reg	[1:0]	Y;
output	reg			V;

always @(*) begin
	if(I[0])		{V,Y} = 3'b100;
	else if(I[1])	{V,Y} = 3'b101;
	else if(I[2])	{V,Y} = 3'b110;
	else if(I[3])	{V,Y} = 3'b111;
	else			{V,Y} = 3'b000;
end

endmodule