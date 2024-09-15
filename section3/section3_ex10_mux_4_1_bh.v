//*****************************************************
// Project		: 4:1 multiplexer - behavioural
// File			: section3_ex10_mux_4_1_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4:1 multiplexer - behavioural
//*****************************************************

module mux_4_1_bh(Y,I,S);

input	[3:0]	I;
input	[1:0]	S;
output	reg		Y;

always @(*)
	case(S)
		2'd0: Y=I[0];
		2'd1: Y=I[1];
		2'd2: Y=I[2];
		2'd3: Y=I[3];
		default: $display("error");
	endcase

endmodule