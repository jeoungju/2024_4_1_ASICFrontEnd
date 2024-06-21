`timescale 1ps/1ps
`define T_CLK 10
module testbench ();

reg clk;
reg n_rst;
reg din;
wire [3:0] dout;

srr_4 u_srr_4 (
	.clk(clk),
	.n_rst(n_rst),
	.din(din),
	.dout(dout)
);

always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end


initial begin
	din = 1'h0;
	#10;
	din = 1'b1;
	#(`T_CLK * 2);
	din = 1'b0;
	#(`T_CLK);
	din = 1'b1;
	#(`T_CLK * 1);

	#10;
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
