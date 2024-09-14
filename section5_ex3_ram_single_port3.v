//*****************************************************
// Project		: Single port RAM - v3
// File			: section5_ex3_ram_single_port3
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: Single port RAM - v3
//*****************************************************

module ram_single_port3(q,data,addr,we,clk);

input	[7:0]	data;
input	[5:0]	addr;
input			we,clk;
output	[7:0]	q;

reg		[7:0]	ram[63:0];
reg		[5:0]	addr_reg;

// New data read & addr registered
always @(posedge clk)
begin
	if(we)
		ram[addr] = data;
	
	addr_reg <= addr;
end

assign q = ram[addr_reg];

endmodule