`timescale 1ps/1ps
`define T_CLK 10
module testbench ();

reg d;
wire q;

reg clk;
reg n_rst;

d_not_ff u_d_not_ff(

.clk(clk),

.n_rst(n_rst),

.d(d),

.q(q)

);

always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end


initial begin
	d = 1'b0;
	wait (n_rst == 1'b1);
	#10;
       	//d = 1'b0;
        //#10;
	d = 1'b1;
	#10;
	d = 1'b0;
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
