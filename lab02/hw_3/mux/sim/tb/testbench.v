`timescale 1ps/1ps

module testbench ();

reg [1:0] a, b, c, d;
reg [1:0] sel;
wire [1:0] out;

mux u_mux (
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.sel(sel),
	.out(out)
);
/*a
regasasd clk;
reg n_rst;

always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end
*/

initial begin
	a = 2'h0;
	b = 2'h1;
	c = 2'h2;
	d = 2'h3;
	sel = 2'h0;
	#10;

        sel = 2'h1;
        #10;

        sel = 2'h2;
        #10;

        sel = 2'h3;
        #10;

	a = 2'h3;
        b = 2'h2;
        c = 2'h1;
        d = 2'h0;
        sel = 2'h0;
        #10;

        sel = 2'h1;
        #10;

        sel = 2'h2;
        #10;

        sel = 2'h3;
        #10;


	$finish;
end

initial begin

$fsdbDumpfile("wave.fsdb");

$fsdbDumpvars(0);

end
endmodule
