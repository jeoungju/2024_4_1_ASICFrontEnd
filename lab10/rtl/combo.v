`timescale 1ps/1ps

module combo (
	input [4:0] Cin1,
	input sel,
	input [4:0] Cin2,
	output [4:0] Cout
);


assign Cout = (sel == 1'b0) ? Cin1 + Cin2 : Cin1 - Cin2;
endmodule
