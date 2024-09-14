//*****************************************************
// Project		: True Dual port RAM - v1
// File			: section5_ex7_ram_true_dual_port1
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: True Dual port RAM - v1
//*****************************************************

module ram_true_dual_port1(q_a,q_b,data_a,data_b,addr_a,addr_b,we_a,we_b,clk);

input		[7:0]	data_a,data_b;
input		[5:0]	addr_a,addr_b;
input				we_a,we_b,clk;
output	reg	[7:0]	q_a,q_b;

reg			[7:0]	ram[63:0];

// Port a
always @(posedge clk)
begin
	if(we_a) begin	// W & R
		ram[addr_a] = data_a;
		q_a <= ram[data_a];		// New data
	end
	else			// R
		q_a <= ram[addr_a];
end

// Port b
always @(posedge clk)
begin
	if(we_b) begin	// W & R
		ram[addr_b] = data_b;
		q_b <= ram[data_b];		// New data
	end
	else			// R
		q_b <= ram[addr_b];
end

endmodule

/*
- we = 1 (both)
2W & 2R
2W & 1R
2W & 0R

- we = 1 (one)
1W & 1R
1W & 0R

- we = 0 (both)
0W & 2R
0W & 1R
0W & 0R
*/