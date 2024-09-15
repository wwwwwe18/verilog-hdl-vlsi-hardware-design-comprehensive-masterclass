//*****************************************************
// Project		: Dual port RAM - v2
// File			: section5_ex6_ram_dual_port2
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: Dual port RAM - v2
//*****************************************************

module ram_dual_port2(q,data,read_addr,write_addr,we,read_clk,write_clk);

input		[7:0]	data;
input		[5:0]	read_addr,write_addr;
input				we,read_clk,write_clk;
output	reg	[7:0]	q;

reg			[7:0]	ram[63:0];
reg			[5:0]	read_addr_reg;

// Write port
always @(posedge write_clk)
begin
	if(we)
		ram[write_addr] = data;
end

// Read port
always @(posedge read_clk)
begin
	read_addr_reg <= read_addr;
	q <= ram[read_addr_reg];
end

endmodule