//*****************************************************
// Project		: Basic counter - testbench
// File			: section4_ex16_counter_tb
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: Basic counter - testbench
//*****************************************************

`timescale 1ns / 100ps
module counter_up_basic_tb;
reg				clk,rst;
wire	[7:0]	count;

counter_up_basic c0(.count(count),.clk(clk),.rst(rst));

always #5 clk = ~clk;

initial begin
	clk = 0;
	rst = 1;
	
	#10 rst = 0;
	#20 rst = 1;
	#100 $stop;
end

endmodule