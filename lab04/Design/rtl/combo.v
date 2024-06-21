`timescale 1ps/1ps

module combo (
	input [4:0] Cin1,
	input sel,
	input [4:0] Cin2,
	output [4:0] Cout
);

reg [4:0] cout_d;
/*
always @(posedge clk or negedge n_rst) 
	if (!n_rst) begin
		cout_d <= 5'b0000;
	end
	else begin
		if(sel == 1'b0) begin
			cout_d <= Cin1 + Cin2;
		end
		else begin
			cout_d <= Cin1 - Cin2;
		end
	end
*/
//assign Cout = cout_d;
assign Cout = (sel == 1'b0) ? Cin1 + Cin2 : Cin1 - Cin2;
endmodule
