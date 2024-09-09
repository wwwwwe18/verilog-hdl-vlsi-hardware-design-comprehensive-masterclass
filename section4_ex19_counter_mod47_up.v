//*****************************************************
// Project		: Modulus counter
// File			: section4_ex19_counter_mod47_up
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Modulus counter
//*****************************************************

module counter_mod47_up(count,clk,rst,data);

input	[7:0]	data;
input			clk,rst;
output	[7:0]	count;

reg		[7:0]	count_temp;

always @(posedge clk)
	if(!rst | count_temp >= 8'd46)	// Self correcting
		count_temp <= 8'd0;
	else
		count_temp <= count_temp + 1;
	
assign count <= count_temp;

endmodule