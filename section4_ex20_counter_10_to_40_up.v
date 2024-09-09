//*****************************************************
// Project		: Range up counter
// File			: section4_ex20_counter_10_to_40_up
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Range up counter
//*****************************************************

module counter_10_to_40_up(count,clk,rst,data);

input	[7:0]	data;
input			clk,rst;
output	[7:0]	count;

reg		[7:0]	count_temp;

always @(posedge clk)
	if(!rst | count_temp >= 8'd40 | count_temp < 8'd10)	// Self correcting
		count_temp <= 8'd10;
	else
		count_temp <= count_temp + 1;
	
assign count <= count_temp;

endmodule