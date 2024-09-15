//*****************************************************
// Project		: 4-bit comparator - dataflow 1
// File			: section3_ex18_comparator_4bit_df1
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit comparator - dataflow 1
//*****************************************************

module comparator_4bit_df1(Eq,Gt,Sm,A,B);

input	[3:0]	A,B;
output			Eq,Gt,Sm;

assign Eq = &(A ~^ B);	// A == B
assign Gt = (A[3] & ~B[3]) | ((A[3] ~^ B[3]) & (A[2] & ~B[2]))
			| ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] & ~B[1]))
			| ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] & ~B[0]));
assign Sm = ~(Gt|Eq);

endmodule