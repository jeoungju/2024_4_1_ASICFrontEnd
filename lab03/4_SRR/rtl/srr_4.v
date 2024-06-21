`timescale 1ps/1ps

module srr_4 (
	input clk,
	input n_rst,
	input din,
	output [3:0] dout
);

reg [3:0] shift_data;

always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		shift_data[3] <= 1'b0;
		shift_data[2] <= 1'b0;
		shift_data[1] <= 1'b0;
		shift_data[0] <= 1'b0;
	end
	else begin
		shift_data[3] <= din;
		shift_data[2] <= shift_data[3];
		shift_data[1] <= shift_data[2];
		shift_data[0] <= shift_data[1];
	end

assign dout = shift_data;

endmodule
