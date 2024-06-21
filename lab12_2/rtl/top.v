`timescale 1ps/1ps

module top (
	input clk,
	input n_rst,
	input [15:0] A,
	input [15:0] B,
	input c_in,
	output [15:0] sum,
	output c_out
);

	reg [15:0] A_d, B_d;
	reg c_in_d;
	wire [15:0] sum_d;
	wire c_out_d;

	always @ (posedge clk or negedge n_rst) begin 
		if (!n_rst) begin
			A_d <= 16'h0;
		end
		else begin
			A_d <= A;
		end
	end
	always @ (posedge clk or negedge n_rst)
                if (!n_rst) begin
                        B_d <= 16'h0;
                end
                else begin
                        B_d <= B;
                end
	always @ (posedge clk or negedge n_rst)
                if (!n_rst) begin
                        c_in_d <= 1'h0;
                end
                else begin
                        c_in_d <= c_in;
                end
	
	full_adder_16bit u_full_adder_16bit (
		.A(A_d),
		.B(B_d),
		.c_in(c_in_d),
		.sum(sum_d),
		.c_out(c_out_d)
	);

	reg [15:0] sum_dd;
	reg c_out_dd;

	always @ (posedge clk or negedge n_rst) 
		if (!n_rst) begin
			sum_dd <= 16'h0;
		end
		else begin
			sum_dd <= sum_d;
		end
	
	always @ (posedge clk or negedge n_rst)
                if (!n_rst) begin
                        c_out_dd <= 1'h0;
                end
                else begin
                        c_out_dd <= c_out_d;
                end

assign sum = sum_dd;
assign c_out = c_out_dd;
endmodule
