//*****************************************************
// Project		: Full adder - testbench
// File			: section2_ex9_fa_bh_tb
// Editor		: Wenmei Wang
// Date			: 04/09/2024
// Description	: Full adder - testbench
//*****************************************************

`timescale	1ns / 100ps

module FA_bh_tb;

reg		a,b,cin;
wire	s,c;

FA_bh	FA1(s,c,a,b,cin);

initial			// Only once; cannot synth
begin
$monitor("time = %d \t a = %b \t b = %b \t cin = %b \t s = %b \t c = %b",$time,a,b,cin,s,c);
a = 0;			// {a,b,cin} = 0
b = 0;
cin = 0;
#10 a = 1;		// {a,b,cin} = 100 -> 10ns
#10 b = 1;		// {a,b,cin} = 110 -> 20ns
#10 cin = 1;	// {a,b,cin} = 111 -> 30ns
#10 $stop;
end

endmodule
