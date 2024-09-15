//*****************************************************
// Project		: Half adder - dataflow
// File			: section2_ex1_ha_df
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Half adder - dataflow
//*****************************************************

module HA(s,c,a,b);

input	a,b;
output	s,c;

assign	s = a^b;
assign	c = a&b;

endmodule