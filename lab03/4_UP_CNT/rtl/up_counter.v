`timescale 1ps/1ps

module up_counter (
	input clk,
	input n_rst,
	output [3:0] counter
);

reg [3:0] counter_d;

always @ (posedge clk or negedge n_rst) 
	if (!n_rst) begin
		counter_d <= 4'h0;
	end
	else begin
		counter_d <= (counter_d == 4'hf) ? 4'h0 : counter_d + 4'h1;
	end

assign counter = counter_d;
	
endmodule
