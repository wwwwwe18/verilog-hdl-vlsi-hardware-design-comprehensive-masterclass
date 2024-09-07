//*****************************************************
// Project		: 4-bit full adder - testbench
// File			: section3_ex4_fa_4bit_bh_tb
// Editor		: Wenmei Wang
// Date			: 07/09/2024
// Description	: 4-bit full adder - testbench
//*****************************************************

`timescale	1ns / 100ps

module full_adder_4bit_bh_tb;

reg		[3:0]	a,b;
reg				cin;
wire	[3:0]	s;
wire			cout;

full_adder_4bit_bh	fa4_dut(s,cout,a,b,cin);

initial
$monitor("time = %d \t a = %b \t b = %b \t cin = %b \t s = %b \t cout = %b",$time,a,b,cin,s,cout);

initial begin
	a = 0;
	b = 0;
	cin = 0;
	repeat(16) begin
		#10 a = a + 1;
		repeat(16) begin
			#10 b = b + 1;
			repeat(2)
				#10 c = ~c;
		end
	end
end

endmodule