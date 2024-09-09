//*****************************************************
// Project		: 5-bit universal shift register
// File			: section4_ex14_usr
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: 5-bit universal shift register
//*****************************************************

module usr(PO,SO,PI,sel,clk,rst,SI);

input		[1:0]	sel;
input		[4:0]	PI;
input				clk,rst,SI;
output	reg	[4:0]	PO;
output				SO;

always @(posedge clk)
	if(rst)	// Sync
		PO <= 5'd0;
	else begin
		case(sel)
			2'b00:		PO <= PO;			// No change
			2'b01:		PO <= {PO[3:0],SI};	// R <- L
			2'b10:		PO <= {SI,PO[4:1]};	// R -> L
			2'b11:		PO <= PI;			// Parallel
			default:	PO <= 0;
		endcase
	end
	
assign SO = (sel == 2'b01) ? PO[4] : PO[0];

endmodule