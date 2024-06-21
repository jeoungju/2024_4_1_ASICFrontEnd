`timescale 1ns/100ps

module dff(

input clk,

input n_rst,

input d,

output q

);

reg q_ff;

always @(posedge clk or negedge n_rst)

 	if(!n_rst) begin

		q_ff <= 1'b0;
	end

	else begin

		q_ff <= d;
	end

assign q = q_ff;

endmodule
