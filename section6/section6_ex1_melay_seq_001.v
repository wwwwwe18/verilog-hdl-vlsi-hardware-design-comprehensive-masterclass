//*****************************************************
// Project		: Melay machine - sequence detector 001
// File			: section6_ex1_melay_seq_001
// Editor		: Wenmei Wang
// Date			: 14/09/2024
// Description	: Melay machine - sequence detector 001
//*****************************************************

module melay_seq_001(det,inp,clk,rst);

input					inp,clk,rst;
output		reg			det;

parameter				s0 = 2'b00,s1 = 2'b01,s2 = 2'b10;

reg				[1:0]	pr_state,nxt_state;

always @(posedge clk)
	if(rst)
		pr_state <= s0;
	else
		pr_state <= nxt_state;

always @(inp,pr_state)
	case(pr_state)
		s0: if(inp) nxt_state = s0;
			else nxt_state = s1;
		s1: if(inp) nxt_state = s0;
			else nxt_state = s2;
		s2: if(inp) nxt_state = s0;
			else nxt_state = s2;
		default: nxt_state = s0;
	endcase
	
always @(inp,pr_state)
	case(pr_state)
		s0: det = 0;
		s1: det = 0;
		s2: if(inp) det = 1;
			else det = 0;
		default: det = 0;
	endcase

endmodule