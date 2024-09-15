//*****************************************************
// Project		: 8-bit twin register set
// File			: section4_ex12_reg_set
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: 8-bit twin register set
//*****************************************************

module reg_set(Q1,Q2,clk,rst,D1,D2);

input				clk,rst;
input		[7:0]	D1,D2;
output	reg	[7:0]	Q1,Q2;

always @(posedge clk)
	if(rst) begin
		Q1 <= 0;
		Q2 <= 0; end
	else begin
		Q1 <= D1;
		Q2 <= D2; end

endmodule