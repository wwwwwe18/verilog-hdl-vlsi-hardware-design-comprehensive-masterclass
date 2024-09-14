//*****************************************************
// Project		: Single port RAM - v4
// File			: section5_ex4_ram_single_port4
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: Single port RAM - v4
//*****************************************************

module ram_single_port4(q,data,read_addr,write_addr,we,clk);

input	[7:0]	data;
input	[5:0]	read_addr,write_addr;
input			we,clk;
output	[7:0]	q;

reg		[7:0]	ram[63:0];
reg		[5:0]	read_addr_reg;

// New data read & addr registered
always @(posedge clk)
begin
	if(we)
		ram[write_addr] = data;
	
	read_addr_reg <= read_addr;
end

assign q = ram[read_addr_reg];

endmodule