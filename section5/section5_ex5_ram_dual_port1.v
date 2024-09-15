//*****************************************************
// Project		: Dual port RAM - v1
// File			: section5_ex5_ram_dual_port1
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: Dual port RAM - v1
//*****************************************************

module ram_dual_port1(q,data,read_addr,write_addr,we,read_clk,write_clk);

input		[7:0]	data;
input		[5:0]	read_addr,write_addr;
input				we,read_clk,write_clk;
output	reg	[7:0]	q;

reg			[7:0]	ram[63:0];

// Write port
always @(posedge write_clk)
begin
	if(we)
		ram[write_addr] = data;
end

// Read port
always @(posedge read_clk)
begin
	q <= ram[read_addr];
end

endmodule