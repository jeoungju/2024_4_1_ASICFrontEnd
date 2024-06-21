`timescale 1ps/1ps
`define T_CLK 10
module testbench ();

wire [3:0] counter;

reg clk;
reg n_rst;

up_counter u_up_counter (
	.clk(clk),
	.n_rst(n_rst),
	.counter(counter)
);

always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end


initial begin
	wait (n_rst == 1'b1);
	#(`T_CLK * 20);
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
