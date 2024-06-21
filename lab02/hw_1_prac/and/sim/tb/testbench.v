`timescale 1ns/1ns

module testbench ();

reg a;
reg b;
wire c;

and_gate u_and_gate(
	.a(a),
	.b(b),
	.c(c)
);

initial begin
	a = 1'b0;
	b = 1'b0;
	#10;
	a = 1'b1;
        b = 1'b0;
        #10;
	a = 1'b0;
        b = 1'b1;
        #10;
	a = 1'b1;
        b = 1'b1;
        #10;

	$finish;

	
end

initial begin

$fsdbDumpfile("test.fsdb");

$fsdbDumpvars(0);

end

endmodule
