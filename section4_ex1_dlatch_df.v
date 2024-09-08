//*****************************************************
// Project		: D-latch - dataflow
// File			: section4_ex1_dlatch_df
// Editor		: Wenmei Wang
// Date			: 08/09/2024
// Description	: D-latch - dataflow
//*****************************************************

module dlatch_df(q,d,en);

input	en,d;
output	q;

assign q = en?d:q;

endmodule