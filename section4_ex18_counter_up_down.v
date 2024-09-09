//*****************************************************
// Project		: Up or down counter with load option
// File			: section4_ex18_counter_up_down
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Up or down counter with load option
//*****************************************************

module counter_up_down(count,u_d,load,clk,rst,data);

input	[7:0]	data;
input			clk,rst,load,u_d;
output	[7:0]	count;

reg		[7:0]	count_temp;

always @(posedge clk)
	if(!rst)
		count_temp <= 8'd0;
	else if(load)
		count_temp <= data;
	else if(u_d)
		count_temp <= count_temp + 1;
	else
		count_temp <= count_temp - 1;
	
assign count <= count_temp;

endmodule