//*****************************************************
// Project		: 5-bit shift register (L -> R)
// File			: section4_ex13_sr_lr
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: 5-bit shift register (L -> R)
//*****************************************************

module sr_lr(SO,clk,rst,SI);

input			SI,clk,rst;
output			SO;

reg		[4:0]	SR;

always @(posedge clk, negedge rst)
	if(!rst)
		SR <= 5'd0;
	else
		SR <= {SR[3:0],SI};
		
assign SO = SR[4];

endmodule