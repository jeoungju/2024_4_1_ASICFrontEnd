`timescale 1ps/1ps

module my_design (
	input clk,
	input n_rst,
	input [4:0] data1,
	input [4:0] data2,
	input sel,
	input [4:0] Cin1,
	input [4:0] Cin2,
	output [4:0] out1,
	output [4:0] out2,
	output [4:0] out3,
	output [4:0] Cout
);

reg [4:0] R1, R2;

reg R3;

always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		R1 <= 5'h0;
	end
	else begin
		R1 <= (sel == 1'b0) ? data1 : data2;
	end


always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		R2 <= 5'h0;
	end
	else begin
		R2 <= (sel == 1'b0) ? data2 : data1;
	end


always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		R3 <= 1'b0;
	end
	else begin
		R3 <= sel;
	end

reg [4:0] R4;
always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		R4 <= 5'h0;
	end
	else begin
		R4 <= (R3 == 1'b0) ? R1 & R2 : R1 | R2;
	end

	
	

combo u_combo (
	.Cin1(Cin1),
	.Cin2(Cin2),
	.sel(sel),
	.Cout(Cout)
);

assign out1 = R1 - R2;
assign out2 = ~R4;
assign out3 = (R3 == 1'b1) ? 5'b1_1111 : 5'b0_0000;
endmodule
