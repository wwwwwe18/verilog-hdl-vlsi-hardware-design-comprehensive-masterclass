//*****************************************************
// Project		: Single port RAM - v2
// File			: section5_ex2_ram_single_port2
// Editor		: Wenmei Wang
// Date			: 12/09/2024
// Description	: Single port RAM - v2
//*****************************************************

module ram_single_port2(q,data,read_addr,write_addr,we,clk);

input		[7:0]	data;
input		[5:0]	read_addr,write_addr;
input				we,clk;
output	reg	[7:0]	q;

reg			[7:0]	ram[63:0];

// New data read
always @(posedge clk)
begin
	if(we)
		ram[write_addr] = data;
	
	q = ram[read_addr];
end

endmodule