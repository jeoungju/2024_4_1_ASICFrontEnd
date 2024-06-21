`timescale 1ps/1ps
`define T_CLK 10
module testbench ();


reg clk;
reg n_rst;
reg [15:0] A, B;
reg c_in;

wire [15:0] sum;
wire c_out;

 top u_top (
	 .clk(clk),
	 .n_rst(n_rst),
	.A(A),
	.B(B),
	.c_in(c_in),
	.sum(sum),
	.c_out(c_out)
);


always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end


initial begin
	A = 16'h0;
	B = 16'h0;
	c_in = 1'b0;
	#20;

	A = 16'd100;
	B = 16'd200;
	#30;
	c_in = 1'b1;
	#30;

	$finish;
end

initial begin

$fsdbDumpfile("test.fsdb");

$fsdbDumpvars(0);

end

/*
initial begin
	wait (n_rst == 1'b1);
	$display("%t : %b", $time, );
end
*/
endmodule
