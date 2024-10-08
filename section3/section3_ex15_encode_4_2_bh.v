//*****************************************************
// Project		: 4x2 encoder - behavioural
// File			: section3_ex15_encode_4_2_bh
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4x2 encoder - behavioural
//*****************************************************

module encode_4_2_df(Y,V,I);

input		[3:0]	I;
output	reg	[1:0]	Y;
output	reg			V;

always @(*) begin
	case(I)
		4'd1: {V,Y}=3'b100;
		4'd2: {V,Y}=3'b101;
		4'd4: {V,Y}=3'b110;
		4'd8: {V,Y}=3'b111;
		4'd0,4'd3,4'd5,4'd6,
		4'd7,4'd9,4'd10,4'd11,
		4'd12,4'd13,4'd14,4'd15: {V,Y}=3'b000;
		default: $display("error");
	endcase
end

endmodule