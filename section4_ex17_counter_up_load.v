//*****************************************************
// Project		: Up counter with load option
// File			: section4_ex17_counter_up_load
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Up counter with load option
//*****************************************************

module counter_up_load(count,clk,load,rst,data);

input	[7:0]	data;
input			clk,rst,load;
output	[7:0]	count;

reg		[7:0]	count_temp;

always @(posedge clk)
	if(!rst)
		count_temp <= 8'd0;
	else if(load)
		count_temp <= data;
	else
		count_temp <= count_temp + 1;
	
assign count <= count_temp;

endmodule